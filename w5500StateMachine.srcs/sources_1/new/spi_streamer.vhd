library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity w5500_axi_data_streamer is
    Port (
        clk        : in  std_logic;
        reset        : in  std_logic := '0';
        -- from w5500 state machine (the header that need's to be SPI transmitted before the payload data)
        spi_header: in std_logic_vector(23 downto 0);   -- the first 24 bits to transmit before continuing with the payload
        spi_header_valid : in std_logic;
        
        -- from w5500 state machine (The payload data that the statemachine wants to send via SPI)
        tx_plready    : out std_logic; -- payload ready AXIStream ready
        tx_plvalid    : in std_logic;  --payload valid AXISTream valid
        tx_pldata : in  std_logic_vector(7 downto 0);  -- 8-bit payload to be sent (from state machine or external)
        tx_pllast     : in std_logic; -- payload last bit for AXIStream
        
        -- to w5500 state machine (The payload data that has been received from the W5500 Chip after the header transmission)
        rx_plready    : in std_logic; -- rx_payload ready
        rx_plvalid    : out std_logic;
        rx_pldata     : out std_logic_vector(7 downto 0);
        rx_pllast     : out std_logic;
        
        -- to txrx unit
        tready     : in  std_logic;                      -- FROM SPI Master (AXI Stream TREADY)
        tvalid     : out std_logic;                      -- To SPI Master (AXI Stream TVALID)
        tdata      : out std_logic_vector(7 downto 0);   -- To SPI Master (AXI Stream TDATA)
        tlast      : out std_logic;
        
        -- to txrx unit
        rready     : out std_logic;                      -- TO TXRX Unit (AXI Stream RREADY)
        rvalid     : in std_logic;                       -- TO TXRX Unit (AXI Stream RVALID)
        rdata      : in std_logic_vector(7 downto 0);    -- From TXRX Unit (AXI Stream DATA)
        rlast      : in std_logic := '0'                      -- From TXRX Unit (AXI Stream DATA)
        
        
    );
end w5500_axi_data_streamer;

architecture Behavioral of w5500_axi_data_streamer is
    -- State type declaration
    type state_type is (FIFO_INIT_STATE, IDLE, SPI_HEADER_BYTE_0, SPI_HEADER_BYTE_1, SPI_HEADER_BYTE_2, PAYLOAD_STREAM, DONE_STATE);
    signal state : state_type := FIFO_INIT_STATE;

    -- Internal signals

    signal payload_fifo_output_buffer : std_logic_vector(7 downto 0);
    signal payload_fifo_ready : std_logic := '0';
    signal payload_fifo_valid : std_logic := '0';
    signal payload_fifo_tlast_buffer : std_logic := '0';
    signal tx_plready_buffer : std_logic := '0';
    
    signal rready_buffer : std_logic := '0'; -- this is the internal buffer between rready and the fifo, that can be set to '0' during the spi_header_byte states
    signal rdata_buffer : std_logic_vector(7 downto 0);
    signal rvalid_buffer : std_logic := '0'; -- we need to have controll, over rvalid and rlast, since we only want the Axi stream RX-FIFO to actually handle data after the spi-Header has been skipped
    signal rlast_buffer : std_logic := '0';
    
    signal bytes_received : integer := 0;
    
    signal not_reset : std_logic := '1';

    component axis_data_fifo_8bit is 
        Port(
            s_axis_tdata : in std_logic_vector(7 downto 0);
            s_axis_tready: out std_logic;
            s_axis_tvalid : in std_logic;
            s_axis_tlast : in std_logic;
            s_axis_aclk : in std_logic;
            s_axis_aresetn : in std_logic;
            m_axis_tdata : out std_logic_vector(7 downto 0);
            m_axis_tready: in std_logic;
            m_axis_tvalid : out std_logic;
            m_axis_tlast : out std_logic
        );
    end component;

begin

    tx_plready <= tx_plready_buffer;
    
    not_reset <= not reset; -- needed because payload fifo has negated reset
    
    u_payload_fifo : axis_data_fifo_8bit
        port map (
            s_axis_tdata => tx_pldata,
            s_axis_tready => tx_plready_buffer,
            s_axis_tvalid => tx_plvalid,
            s_axis_tlast => tx_pllast,
            s_axis_aclk => clk,
            s_axis_aresetn => not_reset,
            m_axis_tdata => payload_fifo_output_buffer,
            m_axis_tready => payload_fifo_ready,
            m_axis_tvalid => payload_fifo_valid,
            m_axis_tlast => payload_fifo_tlast_buffer 
        );
        
    u_rx_fifo : axis_data_fifo_8bit
        port map (
            s_axis_tdata => rdata_buffer,
            s_axis_tready => rready_buffer,
            s_axis_tvalid => rvalid_buffer,
            s_axis_tlast => rlast_buffer,
            s_axis_aclk => clk,
            s_axis_aresetn => not_reset,
            m_axis_tdata => rx_pldata,
            m_axis_tready => rx_plready,
            m_axis_tvalid => rx_plvalid,
            m_axis_tlast => rx_pllast 
        );

    -- State Machine Process
    process(clk, reset)
    begin
        if reset = '1' then
            state <= FIFO_INIT_STATE;
            tvalid <= '0';
            tdata <= (others => '0');
            payload_fifo_ready <= '0';
            tlast <= '0';
        elsif rising_edge(clk) then
            case state is
                when FIFO_INIT_STATE =>
                    if tx_plready_buffer = '1' then -- the streamer is ready, when the payload fifo is ready
                        state <= IDLE;
                    end if;
            
                when IDLE =>
                    tvalid <= '0';
                    tlast <= '0';
                    payload_fifo_ready <= '0';
                    if spi_header_valid = '1' and tx_plvalid = '1' and tx_plready_buffer = '1' then
                        state <= SPI_HEADER_BYTE_0;
                    end if;

                -- Transmitting Byte 0 (Most Significant Byte)
                when SPI_HEADER_BYTE_0 =>
                    tdata <= spi_header(23 downto 16);  -- Send MSB first
                    tvalid <= '1';
                    payload_fifo_ready <= '0';
                    if tready = '1' then
                        state <= SPI_HEADER_BYTE_1;
                    end if;

                -- Transmitting Byte 1
                when SPI_HEADER_BYTE_1 =>
                    tdata <= spi_header(15 downto 8);
                    tvalid <= '1';
                    payload_fifo_ready <= '0';
                    if tready = '1' then
                        state <= SPI_HEADER_BYTE_2;
                    end if;

                -- Transmitting Byte 2
                when SPI_HEADER_BYTE_2 =>
                    tdata <= spi_header(7 downto 0);
                    tvalid <= '1';
                    payload_fifo_ready <= '0';
                    if tready = '1' then
                        state <= PAYLOAD_STREAM;    -- once the spi_header was transmitted, we can switch to payload streaming
                        payload_fifo_ready <= tready; -- this is set one state earlier, so it doesn't have that one clk-cycle delay
                    end if;
                    
                -- transmitting payload data and receiving data
                when PAYLOAD_STREAM => -- it's enough when the tx_payload fifo decides how long data has to be received
                    tdata <= payload_fifo_output_buffer;
                    tvalid <= payload_fifo_valid;
                    tlast <= payload_fifo_tlast_buffer;
                     
                    if payload_fifo_tlast_buffer = '1'  then -- if tlast is set, then switch to done state
                        state <= DONE_STATE;
                    else 
                        state <= PAYLOAD_STREAM; -- otherwise continue fifo stream
                    end if;
                    
                -- Transmission done
                when DONE_STATE =>
                    tvalid <= '0';
                    tlast <= '0';
                    state <= IDLE;
                when others =>
                    state <= IDLE;
            end case;
        end if;
    end process;
    
    
    --receiving process, only when RWB Bit has been set to read!
    process (clk, reset, rlast, rvalid) 
    begin
        if reset = '1' then
            
        elsif rising_edge(clk) then
            -- the receiving part of the SPI Streamer: only receive in Payload stream state:
            -- the first three Bytes are header bytes, aka irrelevant
            
            if(rvalid = '1') then
                --if it's a transmit message then acknoledge, but ignore rx axi stream
                if(spi_header(2)='1')then -- rwb bit where 1 = write, and 0 = read
                    rready <= '1';
                    rvalid_buffer <= '0';
                    rlast_buffer <= '0';
                    rdata_buffer <= rdata;
                    
                    bytes_received <= 0;
                else --if it's a message that requests data, then handle it by writing the rx payload data to the rx payload fifo
                    
                    if(rlast = '1') then
                        bytes_received <= 0;
                    else
                        bytes_received <= bytes_received + 1;
                    end if;
                    
                    if(bytes_received > 2) then
                        rvalid_buffer <= rvalid;
                        rlast_buffer <= rlast;                
                        rready <= rready_buffer;
                        rdata_buffer <= rdata;
                    else
                        rready <= '1'; -- this makes the first three bytes seem as read.
                        rvalid_buffer <= '0'; -- but the value isn't valid, so nothing is written into the RX FIFO
                        rdata_buffer <= rdata;
                        rlast_buffer <= rlast;
                    end if;
                end if;
            else
                rvalid_buffer <= '0'; -- if the data on rdata isn't valid, then the data written to the fifo also can't be valid
                rdata_buffer <= rdata;
                rlast_buffer <= rlast;
                rready <= rready_buffer; -- we can still signal if we are ready
            end if;
                
        end if;
    end process;

end Behavioral;
