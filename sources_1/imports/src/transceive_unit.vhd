----------------------------------------------------------------------------------
-- File: transceive_unit.vhd
-- Description: SPI Master Transceive Unit
-- Supports continuous byte-by-byte transmission from FIFO
-- Tracks transmission until tlast signal
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity transceive_unit is
    port (
        tdata:   in std_logic_vector (7 downto 0); 
        rdata:   out std_logic_vector (7 downto 0);
        mosi:    out std_logic;
        miso:    in std_logic := '0';
        sclk:    out std_logic;
        cs:      out std_logic;
        clk:     in std_logic;
        reset:   in std_logic := '0';
        spi_busy: out std_logic;
        tvalid:  in std_logic;
        tready:  out std_logic;
        tlast:   in std_logic := '0';
        rvalid:  out std_logic;
        rready:  in std_logic := '0';
        rlast:   out std_logic := '0'
    );
end entity transceive_unit;

architecture behavioral of transceive_unit is
    -- Retain original state type
    type spi_state is (wait_for_fifo_ready, spi_idle, spi_execute, spi_done);
    signal spistate, spistate_next: spi_state;

    -- Core signals maintained from original design
    signal clk_toggles : integer range 0 to 8*2 + 1;    
    signal sclk_buffer : std_logic;
    signal tx_phase : std_logic; 
    
    signal cs_buffer : std_logic;
    signal rdata_buffer : std_logic_vector(7 downto 0);
    signal tx_buffer : std_logic_vector(7 downto 0) := (others=>'0'); 
    
    -- Transmission tracking signals
    signal tx_payload_data : std_logic_vector(7 downto 0) := (others=>'0');
    signal tx_payload_valid : std_logic := '0';
    signal tx_payload_valid_buffer : std_logic := '0';
    signal tx_payload_ready : std_logic := '0';
    signal tx_payload_last : std_logic := '0';
    
    -- Reception tracking signals
    signal rx_buffer_data :  std_logic_vector(7 downto 0) := (others=>'0');
    signal rx_buffer_valid : std_logic := '0';
    signal rx_buffer_ready : std_logic := '1';
    signal rx_buffer_last : std_logic := '0';
    
    signal tready_int_buffer : std_logic := '0';
    signal rvalid_buffer : std_logic := '0';
    signal rlast_buffer : std_logic := '0';
    
    signal first_execute : std_logic := '1';
    
    component custom_fifo is 
        Port(
            s_axis_tdata : in std_logic_vector(7 downto 0);
            s_axis_tready: out std_logic;
            s_axis_tvalid : in std_logic;
            i_clk : in std_logic;
            s_axis_tlast : in std_logic;
            i_rst_sync : in std_logic;
            m_axis_tdata : out std_logic_vector(7 downto 0);
            m_axis_tready: in std_logic;
            m_axis_tvalid : out std_logic;
            m_axis_tlast : out std_logic
        );
    end component;
    
begin
    -- Output signal assignments
    cs <= cs_buffer;
    sclk <= sclk_buffer; 
    
    -- TX Payload FIFO: Stores data to be sent
    u_tx_payload_fifo : custom_fifo 
        port map (
            s_axis_tdata => tdata,
            s_axis_tready => tready_int_buffer,
            s_axis_tvalid => tvalid,
            s_axis_tlast => tlast,
            i_clk => clk,
            i_rst_sync => reset,
            m_axis_tdata => tx_payload_data,
            m_axis_tready => tx_payload_ready,
            m_axis_tvalid => tx_payload_valid,
            m_axis_tlast => tx_payload_last
        );
        
    tready <= tready_int_buffer;
    tx_payload_valid_buffer <= tx_payload_valid;
    
    -- RX Payload FIFO: Stores received data
    u_rx_payload_fifo : custom_fifo 
        port map (
            s_axis_tdata => rx_buffer_data,
            s_axis_tready => rx_buffer_ready, 
            s_axis_tvalid => rx_buffer_valid,
            s_axis_tlast => rx_buffer_last,
            i_clk => clk,
            i_rst_sync => reset,
            m_axis_tdata => rdata_buffer,
            m_axis_tready => rready, 
            m_axis_tvalid => rvalid_buffer,
            m_axis_tlast => rlast_buffer
        );
    
    rdata <= rdata_buffer;
    rvalid <= rvalid_buffer;
    rlast <= rlast_buffer;
    
    -- State Memory Process
    state_memory: process (clk, reset)
    begin
        if(reset = '1') then
            spistate <= spi_idle;
        elsif (rising_edge(clk)) then
            spistate <= spistate_next;
        end if;
    end process;
    
    -- Main State Machine Process
    state_machine: process (clk, reset, spistate)
    begin
        if reset = '1' then
        elsif rising_edge(clk) then
            case spistate is
                when wait_for_fifo_ready => 
                    cs_buffer <= '1';
                    spi_busy <= '0';
                    sclk_buffer <= '0';
                    tx_phase <= '0'; 
                
                    if tready_int_buffer = '1' then
                        spistate_next <= spi_idle;
                    else 
                        spistate_next <= wait_for_fifo_ready;				
                    end if;
                
                when spi_idle => 
                    cs_buffer <= '1';
                    spi_busy <= '0';
                    sclk_buffer <= '0';
                    tx_phase <= '0';
                    clk_toggles <= 0;

                    if tx_payload_valid_buffer = '1' then
                        spistate_next <= spi_execute;
                    else 
                        spistate_next <= spi_idle;				
                    end if;
                    
                    if(spistate_next = spi_execute) then
                        tx_buffer <= tx_payload_data;
                        tx_payload_ready <= '1';
                        first_execute <= '1';
                    end if;
                        
                when spi_execute =>
                    tx_payload_ready <= '0';
                    cs_buffer <= '0';
                    spi_busy <= '1';
                    tx_phase <= not tx_phase;
                    
                    -- Counter management
                    if(clk_toggles = 8*2 - 1) then  
                        clk_toggles <= 0;              
                    else
                        if(cs_buffer = '0' and spistate_next /= spi_done) then
                            clk_toggles <= clk_toggles + 1; 				   
                        end if;
                    end if;
                    
                    -- SCLK toggle
                    if(cs_buffer = '0' and spistate_next /= spi_done) then
                        sclk_buffer <= not sclk_buffer;
                    end if;
                    
                    -- Transmit data
                    if(tx_phase = '0' and clk_toggles < 14) then
                        mosi <= tx_buffer(8-1);
                        tx_buffer <= tx_buffer(8-2 downto 0) & '0';
                    else
                        if(tx_payload_valid_buffer = '1' and clk_toggles = 15) then
                            tx_buffer <= tx_payload_data(8-2 downto 0) & '0';
                            mosi <= tx_payload_data(8-1);
                            tx_payload_ready <= '1';                  
                        end if;                
                    end if;
                    
                    -- Receive data
                    if(tx_phase = '1' and clk_toggles < 8*2 - 1) then
                        rx_buffer_data <= rx_buffer_data(8-2 downto 0) & miso;
                        rx_buffer_valid <= '0';
                        rx_buffer_last <= '0';
                    else 
                        if(clk_toggles = 1 and first_execute = '0') then
                            rx_buffer_valid <= '1';
                        else
                            rx_buffer_valid <= '0';
                            rx_buffer_last <= '0';
                        end if;
                    end if;
                    
                    -- Transaction completion logic
                    if(clk_toggles = 15) then
                         if(tx_payload_valid_buffer = '0') then
                            spistate_next <= spi_done;
                         else
                            spistate_next <= spi_execute;
                            first_execute <= '0';
                         end if;
                         
                    else
                        if(spistate_next /= spi_done) then
                            spistate_next <= spi_execute;   
                        else
                            cs_buffer <= '1';
                        end if;
                    end if;
                
                when spi_done =>
                    cs_buffer <= '1';
                    tx_payload_ready <= '0';
                    mosi <= 'Z';
                    clk_toggles <= 0;
                    spistate_next <= spi_idle;
                    
                    if(spistate_next <= spi_idle) then
                        rx_buffer_valid <= '0';
                        rx_buffer_last <= '0';
                    else
                        rx_buffer_valid <= '1';
                        rx_buffer_last <= '1';
                    end if;                
                
                when others =>
                    spistate_next <= spi_idle;
            end case;
        end if;
    end process;

end architecture behavioral;