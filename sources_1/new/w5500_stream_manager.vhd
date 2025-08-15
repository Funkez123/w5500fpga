-- This stream manager handles data streams to and from the external data handler, streams coming to and from the FSM, such as streams going towards and coming from the spi data streamer.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity w5500_stream_manager is
  port (
    clk         : in std_logic;
    reset       : in std_logic;

    requested_streammanager_state : in std_logic_vector(1 downto 0);

    ext_pl_tdata  : in std_logic_vector(7 downto 0); -- data from the external data handler
    ext_pl_tvalid : in std_logic;
    ext_pl_tready : out std_logic;
    ext_pl_tlast  : in std_logic;

    ext_pl_rdata  : out std_logic_vector(7 downto 0); -- data for the external data handler
    ext_pl_rvalid : out std_logic;
    ext_pl_rlast  : out std_logic;
    ext_pl_rready : in std_logic;

    tx_payload_data  : out std_logic_vector(7 downto 0); -- data from the stream manager to the spi data streamer
    tx_payload_ready : in std_logic;  
    tx_payload_valid : out std_logic;
    tx_payload_last  : out std_logic;

    rx_payload_data  : in std_logic_vector(7 downto 0); -- data from the spi data streamer to the stream manager
    rx_payload_valid : in std_logic;
    rx_payload_ready : out std_logic; 
    rx_payload_last  : in std_logic;

    received_payload_buffer : out std_logic_vector(31 downto 0); --4*8 bit buffer, that can store up to 4 Bytes of data simultaneously, coming from the W5500

    spi_header_data : in std_logic_vector(23 downto 0); -- SPI Header data from the FSM
    spi_header_valid : out std_logic;

    spi_data_buffer : in std_logic_vector(31 downto 0); -- raw spi payload data from FSM
    spi_data_length : in integer range 0 to 4; -- amount of payload bytes to be transmitted
    payload_data_has_been_set : in std_logic;

    ptm_data_being_written_to_w5500 : out std_logic
    
  );
end w5500_stream_manager;

architecture Behavioral of w5500_stream_manager is

-- spi streamer axi streamer state

type fifo_data_stream_handler_state_type is (CONTROLLER_PHASE, TX_FIFO_PASSTHROUGH_MODE, RX_FIFO_PASSTHROUGH_MODE);
signal streammanager_state, streammanager_next_state: fifo_data_stream_handler_state_type;

signal prev_payload_data_has_been_set : std_logic := '0'; 

signal rx_shift_payload_buffer : std_logic_vector(31 downto 0) := (others => '0'); --4*8 bit buffer, that can store up to 4 Bytes of data simultaneously, coming from the W5500
signal tx_shift_payload_buffer : std_logic_vector(31 downto 0) := (others => '0'); --4*8 bit buffer, storing the payload data coming from the W5500 FSM, that's supposed to go to the W5500

signal pl_byte_length_buffer : integer range 0 to 4 := 0;

signal ext_pl_tlast_was_received : std_logic := '0';
signal prev_ext_pl_tlast : std_logic := '0';
begin

received_payload_buffer <= rx_shift_payload_buffer; -- whatever has been received (pointers, free buffer size, ...) should be passed to the FSM

process (clk, reset)
begin
    if(rising_edge(clk)) then
        streammanager_state <= streammanager_next_state;
        prev_payload_data_has_been_set <= payload_data_has_been_set;
    end if;
    
    if(requested_streammanager_state = "00") then
        streammanager_next_state <= CONTROLLER_PHASE;
    else
        if(requested_streammanager_state = "01") then
            streammanager_next_state <= TX_FIFO_PASSTHROUGH_MODE;
        else
            streammanager_next_state <= RX_FIFO_PASSTHROUGH_MODE;  
        end if;
    end if;
    
    if (reset = '1') then 
        --streammanager_state <= CONTROLLER_PHASE;       
        tx_payload_valid       <= '0';
        tx_payload_last        <= '0';
        ext_pl_tready       <= '0';
        ext_pl_rvalid       <= '0';
        ext_pl_rdata <= x"00";
        ext_pl_rlast <= '0';
        tx_payload_data <= x"00";
        rx_shift_payload_buffer <= x"00000000";
        tx_shift_payload_buffer <= x"00000000";
        prev_payload_data_has_been_set <= '0';
        rx_payload_ready    <= '0';
        spi_header_valid <= '0';
        ext_pl_tlast_was_received <= '0';
        ptm_data_being_written_to_w5500 <= '0';

        
    elsif streammanager_state = TX_FIFO_PASSTHROUGH_MODE then
        
        if(prev_ext_pl_tlast = '1' or ext_pl_tlast_was_received = '1') then
            tx_payload_data <= x"00";
            tx_payload_last <= '1';
            tx_payload_valid <= '0';
            ext_pl_tready <= '0';
            ext_pl_tlast_was_received <= '1';
        else
            tx_payload_data <= ext_pl_tdata;
            tx_payload_last <= ext_pl_tlast;
            tx_payload_valid <= ext_pl_tvalid;
            ext_pl_tready <= tx_payload_ready;
        end if;
        
        
        if(ext_pl_tvalid = '1' and tx_payload_ready = '1' and ext_pl_tlast_was_received = '0') then
            ptm_data_being_written_to_w5500 <= '1';
        else
            ptm_data_being_written_to_w5500 <= '0';
        end if;
            
        if ext_pl_tvalid = '1' and ext_pl_tlast = '0' then
            spi_header_valid <= '1';
        else
            spi_header_valid <= '0';
        end if;
        
        if(clk'event and clk = '1') then
            prev_ext_pl_tlast <= ext_pl_tlast;
        end if;
        
        ext_pl_rvalid <= '0';
        ext_pl_rlast <= '0';
        ext_pl_rdata <= x"00";

    elsif rising_edge(clk) then
        case streammanager_state is
            when CONTROLLER_PHASE =>
                if (pl_byte_length_buffer > 0) then
                    tx_payload_data  <= tx_shift_payload_buffer(31 downto 24);
                    tx_shift_payload_buffer <= tx_shift_payload_buffer(23 downto 0) & "00000000";
                    pl_byte_length_buffer   <= pl_byte_length_buffer - 1;
                    tx_payload_valid <= '1'; 
                    spi_header_valid <= '1';

                    if (pl_byte_length_buffer = 1) then
                        tx_payload_last <= '1';
                    else 
                        tx_payload_last <= '0';
                    end if;
                else
                    tx_payload_valid <= '0';
                    tx_payload_last  <= '0';
                    spi_header_valid <= '0';
                end if;

                if (prev_payload_data_has_been_set = '0' and payload_data_has_been_set = '1') then
                    pl_byte_length_buffer <= spi_data_length;
                    tx_shift_payload_buffer <= spi_data_buffer;
                end if;

                rx_payload_ready <= '1';
                if (rx_payload_valid = '1') then
                    rx_shift_payload_buffer <= rx_shift_payload_buffer(23 downto 0) & rx_payload_data;
                end if;

                ext_pl_tready <= '0';
                ext_pl_rvalid <= '0';
                ext_pl_tlast_was_received <= '0';
                ptm_data_being_written_to_w5500 <= '0';

            when RX_FIFO_PASSTHROUGH_MODE =>
                if (pl_byte_length_buffer > 0) then
                    pl_byte_length_buffer <= pl_byte_length_buffer - 1;
                    tx_payload_valid <= '1'; 
                    spi_header_valid <= '1';

                    if (pl_byte_length_buffer = 1) then
                        tx_payload_last <= '1';
                    else 
                        tx_payload_last <= '0';
                    end if;
                else
                    tx_payload_valid <= '0';
                    tx_payload_last  <= '0';
                    spi_header_valid <= '0';
                end if;

                if (prev_payload_data_has_been_set = '0' and payload_data_has_been_set = '1') then
                    pl_byte_length_buffer <= spi_data_length;
                end if;

                if (ext_pl_rready = '1') then
                    rx_payload_ready <= '1';
                else
                    rx_payload_ready <= '0';
                end if;

                ext_pl_rvalid <= rx_payload_valid;
                ext_pl_rdata  <= rx_payload_data;
                ext_pl_rlast  <= rx_payload_last;

                ext_pl_tready <= '0';
                ext_pl_tlast_was_received <= '0';
                ptm_data_being_written_to_w5500 <= '0';
                
            when others =>
                tx_payload_valid <= '0';
                tx_payload_last  <= '0';
                ext_pl_tready <= '0';
                ext_pl_rvalid <= '0';
                ext_pl_tlast_was_received <= '0';
                
        end case;
    end if;
end process;


end Behavioral;
