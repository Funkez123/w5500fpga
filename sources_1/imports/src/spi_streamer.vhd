library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity w5500_axi_data_streamer is
    Port (
        clk              : in  std_logic;
        reset            : in  std_logic := '0';
        -- from w5500 state machine
        spi_header       : in  std_logic_vector(23 downto 0);
        spi_header_valid : in  std_logic;
        
        -- TX AXI-Stream from state machine
        tx_plready       : out std_logic;
        tx_plvalid       : in  std_logic;
        tx_pldata        : in  std_logic_vector(7 downto 0);
        tx_pllast        : in  std_logic;
        
        -- RX AXI-Stream to state machine
        rx_plready       : in  std_logic;
        rx_plvalid       : out std_logic;
        rx_pldata        : out std_logic_vector(7 downto 0);
        rx_pllast        : out std_logic;
        
        -- TX AXI-Stream to SPI Master
        tready           : in  std_logic;
        tvalid           : out std_logic; -- Cannot be read internally
        tdata            : out std_logic_vector(7 downto 0);
        tlast            : out std_logic;
        
        -- RX AXI-Stream from SPI Master
        rready           : out std_logic;
        rvalid           : in  std_logic;
        rdata            : in  std_logic_vector(7 downto 0);
        rlast            : in  std_logic := '0'
    );
end w5500_axi_data_streamer;

architecture Behavioral of w5500_axi_data_streamer is
    -- State type declaration
    type state_type is (FIFO_INIT_STATE, IDLE, SPI_HEADER_BYTE_0, SPI_HEADER_BYTE_1, SPI_HEADER_BYTE_2, PAYLOAD_STREAM, DONE_STATE);
    signal state : state_type := FIFO_INIT_STATE;

    -- Internal signals for the TX path and payload FIFO
    signal payload_fifo_output_buffer : std_logic_vector(7 downto 0);
    signal payload_fifo_ready         : std_logic := '0';
    signal payload_fifo_valid         : std_logic := '0';
    signal payload_fifo_tlast_buffer  : std_logic := '0';
    signal tx_plready_buffer          : std_logic := '0';
    
    -- **** NEW: Internal signals to replace reading from 'out' ports ****
    signal tvalid_internal            : std_logic := '0';
    signal tlast_internal             : std_logic := '0';

    -- Internal signals for the RX path and FIFO
    signal rready_to_fifo             : std_logic;
    signal rvalid_to_fifo             : std_logic := '0';
    signal rdata_to_fifo              : std_logic_vector(7 downto 0);
    signal rlast_to_fifo              : std_logic := '0';
    signal rready_internal            : std_logic;
    
    signal bytes_received             : integer range 0 to 4 := 0;
    
    component custom_fifo is
         port (
            i_rst_sync     : in  std_logic;
            i_clk          : in  std_logic;
            s_axis_tvalid  : in  std_logic;
            s_axis_tdata   : in  std_logic_vector(7 downto 0);
            s_axis_tlast   : in  std_logic;
            s_axis_tready  : out std_logic;
            m_axis_tvalid  : out std_logic;
            m_axis_tdata   : out std_logic_vector(7 downto 0);
            m_axis_tlast   : out std_logic;
            m_axis_tready  : in  std_logic
         );
    end component;

begin

    -- Assign output ports from internal signals
    tx_plready <= tx_plready_buffer;
    rready     <= rready_internal;
    
    -- **** CONNECT: Connect internal signals to the output ports ****
    tvalid     <= tvalid_internal;
    tlast      <= tlast_internal;
    
    -- FIFO Instantiations (unchanged)
    u_payload_fifo : custom_fifo
        port map (
            i_clk         => clk, i_rst_sync    => reset,
            s_axis_tdata  => tx_pldata, s_axis_tvalid => tx_plvalid,
            s_axis_tlast  => tx_pllast, s_axis_tready => tx_plready_buffer,
            m_axis_tdata  => payload_fifo_output_buffer, m_axis_tvalid => payload_fifo_valid,
            m_axis_tlast  => payload_fifo_tlast_buffer, m_axis_tready => payload_fifo_ready
        );
    u_rx_fifo : custom_fifo
        port map (
            i_clk         => clk, i_rst_sync    => reset,
            s_axis_tdata  => rdata_to_fifo, s_axis_tvalid => rvalid_to_fifo,
            s_axis_tlast  => rlast_to_fifo, s_axis_tready => rready_to_fifo,
            m_axis_tdata  => rx_pldata, m_axis_tvalid => rx_plvalid,
            m_axis_tlast  => rx_pllast, m_axis_tready => rx_plready
        );

    -- Main TX State Machine Process
    process(clk, reset)
    begin
        if reset = '1' then
            state <= FIFO_INIT_STATE;
        elsif rising_edge(clk) then
            case state is
                when FIFO_INIT_STATE =>
                    if tx_plready_buffer = '1' then
                        state <= IDLE;
                    end if;
            
                when IDLE =>
                    if spi_header_valid = '1' and tx_plvalid = '1' and tx_plready_buffer = '1' then
                        state <= SPI_HEADER_BYTE_0;
                    end if;

                -- **** CHANGED: Now reads from the internal signal 'tvalid_internal' ****
                when SPI_HEADER_BYTE_0 =>
                    if tvalid_internal = '1' and tready = '1' then
                        state <= SPI_HEADER_BYTE_1;
                    end if;

                when SPI_HEADER_BYTE_1 =>
                    if tvalid_internal = '1' and tready = '1' then
                        state <= SPI_HEADER_BYTE_2;
                    end if;

                when SPI_HEADER_BYTE_2 =>
                    if tvalid_internal = '1' and tready = '1' then
                        state <= PAYLOAD_STREAM;
                    end if;
                    
                when PAYLOAD_STREAM =>
                    if payload_fifo_valid = '1' and payload_fifo_ready = '1' and payload_fifo_tlast_buffer = '1' then
                        state <= DONE_STATE;
                    end if;
                    
                when DONE_STATE =>
                    state <= IDLE;
                    
                when others =>
                    state <= IDLE;
            end case;
        end if;
    end process;
    
    -- Combinatorial process to drive TX outputs based on state
    -- **** CHANGED: Now drives internal signals tvalid_internal and tlast_internal ****
    process(state, spi_header, payload_fifo_output_buffer, payload_fifo_valid, payload_fifo_tlast_buffer, tready)
    begin
        -- Default assignments
        tdata             <= (others => '0');
        tvalid_internal   <= '0';
        tlast_internal    <= '0';
        payload_fifo_ready<= '0';
        
        case state is
            when SPI_HEADER_BYTE_0 =>
                tdata             <= spi_header(23 downto 16);
                tvalid_internal   <= '1';
            when SPI_HEADER_BYTE_1 =>
                tdata             <= spi_header(15 downto 8);
                tvalid_internal   <= '1';
            when SPI_HEADER_BYTE_2 =>
                tdata             <= spi_header(7 downto 0);
                tvalid_internal   <= '1';
            when PAYLOAD_STREAM =>
                tdata             <= payload_fifo_output_buffer;
                tvalid_internal   <= payload_fifo_valid;
                tlast_internal    <= payload_fifo_tlast_buffer;
                payload_fifo_ready<= tready;
            when others =>
                -- Keep default values for IDLE, FIFO_INIT, DONE
        end case;
    end process;
    
    
    -- RX Data Handling Process (unchanged from previous correction)
    process (clk, reset) 
    begin
        if reset = '1' then
            bytes_received  <= 0;
            rvalid_to_fifo  <= '0';
            rlast_to_fifo   <= '0';
            rdata_to_fifo   <= (others => '0');
            rready_internal <= '0';
        elsif rising_edge(clk) then
            rdata_to_fifo <= rdata;
            
            if rvalid = '1' and rready_internal = '1' then
                if spi_header(2) = '1' then
                    bytes_received <= 0;
                else
                    if rlast = '1' then
                        bytes_received <= 0;
                    elsif bytes_received < 3 then
                        bytes_received <= bytes_received + 1;
                    end if;
                end if;
            end if;

            if spi_header(2) = '1' then
                rvalid_to_fifo <= '0';
                rlast_to_fifo  <= '0';
            else
                if (bytes_received >= 3) and (rvalid = '1') then
                    rvalid_to_fifo <= '1';
                    rlast_to_fifo  <= rlast;
                else
                    rvalid_to_fifo <= '0';
                    rlast_to_fifo  <= '0';
                end if;
            end if;

            if (spi_header(2) = '1') or (bytes_received < 3) then
                rready_internal <= '1';
            else
                rready_internal <= rready_to_fifo;
            end if;
        end if;
    end process;

end Behavioral;