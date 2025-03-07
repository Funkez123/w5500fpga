LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity w5500_state_machine is

    port(
        clk:    in std_logic;
		reset:  in std_logic := '0';
        spi_busy: in std_logic := '0';
        
        tdata:   out std_logic_vector (7 downto 0); -- data to send
		tvalid:    out std_logic; -- axi stream from statemachine to spi master
		tready :   in std_logic; 
		tlast :    out std_logic;
		
		rdata:     in std_logic_vector (7 downto 0); -- data received
		rvalid :   in std_logic; -- axi stream from spi master to state machine
		rready :   out std_logic;
		rlast :    in std_logic;
		
		ext_pl_tdata:   in std_logic_vector (7 downto 0); -- payload data to send from external source
		ext_pl_tready : out std_logic;
		ext_pl_tvalid : in std_logic;
		ext_pl_tlast : in std_logic;
		
		ext_pl_rdata:  out std_logic_vector (7 downto 0); -- payload data that has been received from the w5500 provided for external source
        ext_pl_rready : in std_logic;
		ext_pl_rvalid : out std_logic;
		ext_pl_rlast : out std_logic
    );
     
end entity w5500_state_machine;

architecture behavioral of w5500_state_machine is

    --spi master states
	type W5500_state_type is (
	    RESET_STATE,
        RESET_W5500_CHIP_STATE,
        SET_TX_BUFFER_SIZE_TO_2KB,
        SET_GATEWAY_STATE,
        SET_SUBNET_STATE,
        SET_MAC_STATE_1,
        SET_MAC_STATE_2,
        SET_SOURCE_IPADDRESS,
        SET_UDP_MODE,
        OPEN_UDP_SOCKET,
        SET_SOURCE_SOCKET_PORT,
        SET_DEST_IP,
        SET_DEST_UDP_PORT,
        READ_TX_FREE_SIZE_REGISTER,
        WRITE_TX_DATA_TO_BUFFER,
        READ_TX_FREE_BUFFER_SIZE,
        GET_TX_WR_POINTER,
        UPDATE_TX_WRITE_POINTER_AFTER_WRITE,
        UPDATE_RX_READ_POINTER_AFTER_BUFFER_READ,
        REQUEST_RECEIVED_DATA_SIZE,
        CHECK_IF_TX_WR_POINTER_HAS_BEEN_UPDATED,
        WAIT_FOR_REQUESTED_DATA_SIZE,
        CHECK_IF_RECEIVED_DATA_IS_AVAILABLE_STATE,
        GET_RX_READ_POINTER_STATE,
        GET_UPDATED_TX_WR_POINTER_BEFORE_SEND,
        WAIT_FOR_EXT_DATA_HANDLER_TO_FINISH_READING_FROM_FIFO,
        CHECK_TX_READ_POINTER_AFTER_SUCCESSFUL_TRANSMISSION,
        ISSUE_READ_COMMAND_TO_UPDATE_RX_WRITE_POINTER,
        CHECK_INTERRUPT_REG_RETURNED_VALUE,
        CHECK_IF_UDP_SOCKET_IS_INITIALIZED,
        REQUEST_INTERRUPT_REG,
        WAIT_FOR_TX_WRITE_POINTER_TO_BE_RECEIVED,
        ISSUE_SEND_COMMAND,
        GET_SOCKET_STATUS_THROUGH_SN_SR,
        CHECK_IF_FREE_SIZE_IS_AVAILABLE,
        WAIT_FOR_INTERRUPT_REGISTER_TO_BE_RECEIVED,
        CLEAR_INTERRUPT_FLAGS_FROM_IR,
        CHECK_IF_EXT_TX_AXIS_HAS_DATA,
        READ_HEADER_AND_PAYLOAD_FROM_RX_BUFFER_STATE,
        WAIT_FOR_RX_READ_POINTER_TO_BE_RECEIVED
        );
        
	signal w5500state, w5500state_next: W5500_state_type;
    
    -- spi streamer axi streamer state
    type fifo_data_stream_handler_state_type is (CONTROLLER_PHASE, TX_FIFO_PASSTHROUGH_MODE, RX_FIFO_PASSTHROUGH_MODE);
	signal streammanager_state, streammanager_next_state: fifo_data_stream_handler_state_type;

    signal prev_spi_busy: std_logic := '0';
    
    signal raw_payload_buffer : std_logic_vector(31 downto 0) := (others => '0');    
    signal shift_payload_buffer : std_logic_vector(31 downto 0) := (others => '0'); -- buffer for second process
    signal payload_byte_length : integer range 0 to 1514; -- this has to be set every time the raw_payload_buffer is updated.
    signal byte_length_buffer : integer := 0; -- buffer for second process
    signal prev_payload_data_has_been_set : std_logic := '0'; 
    signal payload_data_has_been_set : std_logic := '0';

    --tx data payload signals
    signal payload_data : std_logic_vector(7 downto 0); 
    signal payload_ready : std_logic;
    signal payload_valid : std_logic;
    signal payload_last : std_logic := '0';
    
    signal rx_shift_payload_buffer : std_logic_vector(31 downto 0) := (others => '0'); -- buffer for second process
    
    --rx data payload signals
    signal rx_payload_data : std_logic_vector(7 downto 0); 
    signal rx_payload_ready : std_logic;
    signal rx_payload_valid : std_logic;
    signal rx_payload_last : std_logic := '0';
    
    
    signal spi_header : std_logic_vector(23 downto 0);
    signal spi_header_valid : std_logic;
    
    signal rready_int_buffer : std_logic := '0';
   
    signal rx_received_size_reg : std_logic_vector(15 downto 0);
    signal rx_pointer_reg : std_logic_vector(15 downto 0);
    
    --signal tx_write_pointer : std_logic_vector(13 downto 0); -- 14 Bits in size, w^14 = 16kb
    signal tx_write_pointer : std_logic_vector(15 downto 0); -- 14 Bits in size, w^14 = 16kb
   
   
    -- PASSTHROUGH MODE COUNTERS
    signal ptm_transmitted_byte_counter : integer range 0 to 512;
    signal ext_pl_tlast_was_received : std_logic := '0';
    
    
    -- "generics"
    constant source_ip_address : std_logic_vector(31 downto 0) := x"C0A80264"; --local ip address   192 168 2 100
    constant dest_ip_address : std_logic_vector(31 downto 0) := x"C0A8026B"; --destination ip address  192 168 2 XXX
    constant source_udp_port : std_logic_vector(15 downto 0) := x"00D9"; -- local udp port   217
    constant dest_udp_port : std_logic_vector(15 downto 0) := x"00D9"; --destination udp port   217
   
   
    component w5500_axi_data_streamer is
        Port (
            clk        : in  std_logic;
            reset        : in  std_logic;
            spi_header: in std_logic_vector(23 downto 0);   -- the first 24 bits to transmit before continuing with the payload
            spi_header_valid : in std_logic;
            
            tx_plready    : out std_logic; -- payload ready AXIStream ready
            tx_plvalid    : in std_logic;  --payload valid AXISTream valid
            tx_pldata : in  std_logic_vector(7 downto 0);  -- 32-bit payload to be sent (doesn't matter if from state machine or external)
            tx_pllast : in std_logic; -- payload last bit of axiStream
            
            rx_plready    : in std_logic; -- rx_payload ready
            rx_plvalid    : out std_logic;
            rx_pldata     : out std_logic_vector(7 downto 0);
            rx_pllast     : out std_logic;
            
            tready     : in  std_logic;                      -- FROM SPI Master (AXI Stream TREADY)
            tvalid     : out std_logic;                      -- To SPI Master (AXI Stream TVALID)
            tdata      : out std_logic_vector(7 downto 0);   -- To SPI Master (AXI Stream TDATA)
            tlast      : out std_logic;
            
            rready     : out std_logic;                      -- To SPI Master (AXI Stream RREADY)
            rvalid     : in std_logic;                       -- From SPI Master (AXI Stream RVALID)
            rdata      : in std_logic_vector(7 downto 0);    -- From SPI Master (AXI Stream RREADY)
            rlast      : in std_logic                    
        );
    end component;
    

begin
    
    u_w5500_axi_data_streamer: w5500_axi_data_streamer
        port map (
            clk          => clk,
            reset        => reset,
            spi_header => spi_header,   -- the first 24 bits to transmit before continuing with the payload
            spi_header_valid => spi_header_valid,
        
            tx_plready    => payload_ready, -- payload ready AXIStream ready
            tx_plvalid    => payload_valid,  --payload valid AXISTream valid
            tx_pldata  => payload_data,  -- 8 bit payload data AXIS tdata
            tx_pllast => payload_last, -- AXIStream last
        
            rx_plready => rx_payload_ready,
            rx_plvalid => rx_payload_valid,
            rx_pldata => rx_payload_data,
            rx_pllast => rx_payload_last,
        
            -- AXIS for communication with the SPI Master:
            tready     => tready,                      
            tvalid     => tvalid,                      
            tdata      => tdata,                       
            tlast      => tlast,
        
            rready     => rready_int_buffer,             
            rvalid     => rvalid,                       
            rdata      => rdata,                         
            rlast      => rlast                        
        );
     
    rready <= rready_int_buffer;
    
    -- state memory
	process (clk, reset)
	begin	
	   if(reset = '1') then
	       w5500state <= RESET_STATE;
	   elsif (clk'event and clk='1')then
	       w5500state <= w5500state_next;
	   end if;
	end process;
	
    ------ State Machine Transistion logic-------
	process (clk, reset, w5500state, spi_busy, spi_header, payload_valid)
	begin
	
	if clk'event and clk = '1' then
        case w5500state is
            when RESET_STATE =>
                if(payload_ready = '1') then --when the FIFOs in the W5500 Streamer are ready, then we can continue
                    w5500state_next <= RESET_W5500_CHIP_STATE;
                    streammanager_next_state <= CONTROLLER_PHASE;
                    rx_received_size_reg <= x"0000";
                    rx_pointer_reg <= x"0000";
                    tx_write_pointer <= "0000000000000000";
                end if;
            
            when RESET_W5500_CHIP_STATE =>
                 -- set the reset bit for the w5500
                if(spi_busy = '0' and prev_spi_busy = '1') then -- only change states when the spi transmission is done.
                    w5500state_next <= SET_TX_BUFFER_SIZE_TO_2KB;
                    payload_data_has_been_set <= '0';
                else
                    if(w5500state_next /= SET_TX_BUFFER_SIZE_TO_2KB) then -- this prevents setting data again when changing states
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 1;
                            spi_header <= x"0000" & "00000" & '1' & "00";  -- Mode Register 0x0000 -- + "00000" (BSB for common register) + '1' (write) + "00" for vdm
                            raw_payload_buffer <= x"80000000"; -- first byte is "10000000" which means the software reset bit is high          
                        end if;
                    end if;
                end if;
            
            when SET_TX_BUFFER_SIZE_TO_2KB =>
                 -- sets the TX Buffer size to 2 kilobytes in size
                if(spi_busy = '0' and prev_spi_busy = '1') then -- only change states when the spi transmission is done.
                    w5500state_next <= SET_GATEWAY_STATE;
                    payload_data_has_been_set <= '0';
                else
                    if(w5500state_next /= SET_GATEWAY_STATE) then -- this prevents setting data again when changing states
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 1;
                            spi_header <= x"001F" & "00001" & '1' & "00"; 
                            raw_payload_buffer <= x"02000000"; -- 16*1024 =    
                        end if;
                    end if;
                end if;
                
            when SET_GATEWAY_STATE =>
                 -- set the gateway
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= SET_SUBNET_STATE;
                    payload_data_has_been_set <= '0';
                else
                    if(w5500state_next /= SET_SUBNET_STATE) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 4;
                            spi_header <= x"0001" & "00000" & '1' & "00";  --gateway address register 0x0001 + CommonRegister BSB "00000" + write"1" + "00" VDM
                            raw_payload_buffer <= x"C0A80201"; -- 192 168 2 1 (gateway) of EASYBOX Router
                           
                        end if;
                    end if;
                end if;
            
            when SET_SUBNET_STATE =>
                 -- set SUBNET 
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= SET_MAC_STATE_1;
                    payload_data_has_been_set <= '0';
                else
                    if(w5500state_next /= SET_MAC_STATE_1) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 4;
                            spi_header <= x"0005" & "00000" & '1' & "00"; --subnet mask register 0x0005 + WriteCommand in VDM
                            raw_payload_buffer <= x"FFFFFF00"; -- 255 255 255 0
                        end if;
                    end if;
                    
                end if;
                
            when SET_MAC_STATE_1 => -- (6 Bytes) split into 4 Byte and 2 Byte packages in two states      D4:7F:39:AE:92:B1
                 -- set MAC ADDRESS of W5500 first 4 bytes
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= SET_MAC_STATE_2;
                    payload_data_has_been_set <= '0';
                else
                    if(w5500state_next /= SET_MAC_STATE_2) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 4;
                            spi_header <= x"0009" & "00000" & '1' & "00"; --source mac address register 0x0009 + WriteCommand 
                            raw_payload_buffer <= x"D47F39AE"; -- 0xD4, 0x7F, 0x39, 0xAE (4Bytes)
                        end if;
                    end if; 
                end if;
                
            when SET_MAC_STATE_2 => 
                 -- set MAC ADDRESS of W5500 second 2 Bytes
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= SET_SOURCE_IPADDRESS;
                    payload_data_has_been_set <= '0';
                else
                    if(w5500state_next /= SET_SOURCE_IPADDRESS) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 2;
                            spi_header <= x"000D" & "00000" & '1' & "00"; --source mac address register 0x0009 (plus 4 Byte offset = 0x000D)
                            raw_payload_buffer <= x"92B10000"; -- 0x92, 0xB1 (2 Bytes)
                        end if;
                    end if; 
                end if;
            
            --start UDP Socket 0 from here, Setting the Source IP is the first step
            
            when SET_SOURCE_IPADDRESS =>
                 -- set IPAddress of W5500 Chip  (4 Bytes)
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= SET_UDP_MODE;
                    payload_data_has_been_set <= '0';
                else
                    if(w5500state_next /= SET_UDP_MODE) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 4;
                            spi_header <= x"000F" & "00000" & '1' & "00"; --source ip address register + Write Command in VDM
                            raw_payload_buffer <= source_ip_address; 
                        end if;
                    end if; 
                end if;
            
            when SET_UDP_MODE =>
                 -- Example: Set Socket 0 to UDP Mode
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= SET_SOURCE_SOCKET_PORT;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= SET_SOURCE_SOCKET_PORT) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 1; -- Just one Byte to set Mode
                            spi_header <= x"0000" & "00001" & '1' & "00"; --Mode Register : 0x4000 + BSB for Socket 0 Register
                            raw_payload_buffer <= x"02000000"; -- first Byte is : "0000 0010" for UDP mode (PDF page 45), enables UDP Multicast and sets UDP mode
                        end if;
                    end if; 
                end if;
            
            when SET_SOURCE_SOCKET_PORT =>
                 -- sets the UDP source port
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= OPEN_UDP_SOCKET;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= OPEN_UDP_SOCKET) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 2; -- Two Bytes to set Socket Port for Socket 0
                            spi_header <= x"0004" & "00001" & '1' & "00"; --Socket Port register : 0x0004 + "00001" Socket 0 BSB + Write Command
                            raw_payload_buffer <= source_udp_port & x"0000"; --payload provided by source udp port signal 
                        end if;
                    end if; 
                end if; 
           
            when OPEN_UDP_SOCKET =>
                 -- Open Socket 0
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= CHECK_IF_EXT_TX_AXIS_HAS_DATA;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= CHECK_IF_EXT_TX_AXIS_HAS_DATA) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 1; -- Just one Byte to set Mode
                            spi_header <= x"0001" & "00001" & '1' & "00"; --Command Register : 0x0001 + "00001" Socket 0 BSB + Write Command
                            raw_payload_buffer <= x"01000000"; -- first Byte is "0x01" (PDF page 46) for Socket OPEN -> S0_SR should change to 0x02 for "open Socket status"
                        end if;
                    end if; 
                end if;
            
            ---^ here the INIT PIPELINE is finished
            
            --- now do the default routine:
            when GET_SOCKET_STATUS_THROUGH_SN_SR =>
                if(spi_busy = '0' and prev_spi_busy = '1') then -- if spi is done and the last packa   
                    w5500state_next <= CHECK_IF_UDP_SOCKET_IS_INITIALIZED;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= CHECK_IF_UDP_SOCKET_IS_INITIALIZED) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 1; -- Status is one byte in size
                            spi_header <= x"0003" & "00001" & '0' & "00"; --  
                            raw_payload_buffer <= x"00000000"; -- 0x0000 because we are just reading
                        end if;
                    end if; 
                end if;
                
            when CHECK_IF_UDP_SOCKET_IS_INITIALIZED =>    
                if(rx_payload_last = '1') then
                    if(rx_shift_payload_buffer(7 downto 0) = x"00") then --  if socket is closed, then just reopen it
                        w5500state_next <= OPEN_UDP_SOCKET;
                    else 
                        w5500state_next <= CHECK_IF_EXT_TX_AXIS_HAS_DATA; -- if socket is open, then continue
                    end if;
                end if;
            
            
            when CHECK_IF_EXT_TX_AXIS_HAS_DATA =>    
                if(ext_pl_tvalid = '1' and payload_ready = '1') then   -- if data on the external TX AXIstream is valid and the payload fifo is ready, then continue
                    w5500state_next <= READ_TX_FREE_BUFFER_SIZE; -- here starts the TX sending data pipeline
                else
                    w5500state_next <= REQUEST_RECEIVED_DATA_SIZE; -- if we can't send data now, we can check if we have received data
                end if;
            
            when REQUEST_RECEIVED_DATA_SIZE =>       
                if(spi_busy = '0' and prev_spi_busy = '1') then -- if spi is done and the last packa   
                    w5500state_next <= WAIT_FOR_REQUESTED_DATA_SIZE;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= WAIT_FOR_REQUESTED_DATA_SIZE) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 2; -- 2 Byte size variable
                            spi_header <= x"0026" & "00001" & '0' & "00"; --  
                            raw_payload_buffer <= x"00000000"; -- 0x0000 because we are just reading
                        end if;
                    end if; 
                end if;
            
            when WAIT_FOR_REQUESTED_DATA_SIZE =>
                if(rx_payload_last = '1') then
                    w5500state_next <= CHECK_IF_RECEIVED_DATA_IS_AVAILABLE_STATE;
                    rx_received_size_reg <= rx_shift_payload_buffer(15 downto 0);
                end if;   
                    
            when CHECK_IF_RECEIVED_DATA_IS_AVAILABLE_STATE =>      
                if(rx_received_size_reg = x"0000") then
                    w5500state_next <= CHECK_IF_EXT_TX_AXIS_HAS_DATA; -- if no data is received, then check if maybe the external module wants to send data instead
                else
                    w5500state_next <= GET_RX_READ_POINTER_STATE; -- else if we do have data, we can read it. We have to read as many bytes as rx_shift_payload_buffer(7 downto0) is in size
                end if;
                            
            when GET_RX_READ_POINTER_STATE =>  
            -- reads the RX Read Pointer for Socket 0  
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= WAIT_FOR_RX_READ_POINTER_TO_BE_RECEIVED;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= WAIT_FOR_RX_READ_POINTER_TO_BE_RECEIVED) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 2; -- Pointer is two bytes
                            spi_header <= x"0028" & "00001" & '0' & "00"; --0x28 and 29 are the Sn_RX_RD pointer register, '0' rwb because reading
                            raw_payload_buffer <= x"00000000"; -- just reading
                        end if;
                    end if; 
                end if;
                            
            when WAIT_FOR_RX_READ_POINTER_TO_BE_RECEIVED =>    
                if(rx_payload_last = '1') then
                    rx_pointer_reg <= rx_shift_payload_buffer(15 downto 0);
                    w5500state_next <= READ_HEADER_AND_PAYLOAD_FROM_RX_BUFFER_STATE; -- if no data is received, then check again
                    streammanager_next_state <= RX_FIFO_PASSTHROUGH_MODE;
                end if;
            
            when READ_HEADER_AND_PAYLOAD_FROM_RX_BUFFER_STATE =>   
            -- reads the data from the RX Buffer
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= WAIT_FOR_EXT_DATA_HANDLER_TO_FINISH_READING_FROM_FIFO;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= WAIT_FOR_EXT_DATA_HANDLER_TO_FINISH_READING_FROM_FIFO) then
                        if(payload_data_has_been_set = '0') then   
                            spi_header <= rx_pointer_reg & "00011" & '0' & "00"; -- pointer that has been read a state before + "BSB for Socket 0 RX Memory" + readCommand '0' + VDM                                
                            payload_byte_length <= to_integer(unsigned(rx_received_size_reg)); -- package length that has been read 2 states before 
                            payload_data_has_been_set <= '1';
                        end if;
                    end if; 
                end if;
                
            when WAIT_FOR_EXT_DATA_HANDLER_TO_FINISH_READING_FROM_FIFO =>
                if(rx_payload_last = '1') then --if RX FIFO is empty, then all the contents have been read
                    streammanager_next_state <= CONTROLLER_PHASE;
                    w5500state_next <= UPDATE_RX_READ_POINTER_AFTER_BUFFER_READ;
                end if;
            
            
            when UPDATE_RX_READ_POINTER_AFTER_BUFFER_READ => 
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= ISSUE_READ_COMMAND_TO_UPDATE_RX_WRITE_POINTER;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= ISSUE_READ_COMMAND_TO_UPDATE_RX_WRITE_POINTER) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 2; -- Pointer is two bytes
                            spi_header <= x"0028" & "00001" & '1' & "00"; -- write new pointer to 0x0028-29 of Socket 0
                            raw_payload_buffer <= std_logic_vector(unsigned(rx_pointer_reg)+unsigned(rx_received_size_reg)) & x"0000"; 
                        end if;
                    end if; 
                end if;
            
            when ISSUE_READ_COMMAND_TO_UPDATE_RX_WRITE_POINTER =>   
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= GET_SOCKET_STATUS_THROUGH_SN_SR;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= GET_SOCKET_STATUS_THROUGH_SN_SR) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 1; -- Command is only one byte
                            spi_header <= x"0001" & "00001" & '1' & "00"; -- Command register 0x0001, Socket 0 BSB and write
                            raw_payload_buffer <= x"40000000"; -- See Sn_CR , 0x40 completes the read process
                            rx_pointer_reg <= x"0000"; -- reset temporal variables
                            rx_received_size_reg <= x"0000";
                        end if;
                    end if; 
                end if;
            --^-- end of the RX Pipeline
            
            
            -- start of the TX Pipeline
            
            when READ_TX_FREE_BUFFER_SIZE =>  
            -- reads the value from the free buffer size register     
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= CHECK_IF_FREE_SIZE_IS_AVAILABLE;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= CHECK_IF_FREE_SIZE_IS_AVAILABLE) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 2; -- 2 Bytes to read
                            spi_header <= x"0020" & "00001" & '0' & "00"; -- Free Buffer Size register 0x0020, Socket 0 BSB and read
                            raw_payload_buffer <= x"00000000"; -- just reading
                        end if;
                    end if; 
                end if;

            when CHECK_IF_FREE_SIZE_IS_AVAILABLE =>
                if(rx_payload_last = '1') then
                    --if(to_integer(unsigned(rx_shift_payload_buffer(15 downto 0))) > 4) then
                    if(unsigned(rx_shift_payload_buffer(15 downto 0)) > 2020) then
                        w5500state_next <= SET_DEST_IP;
                    else 
                        w5500state_next <= READ_TX_FREE_BUFFER_SIZE;
                    end if;
                end if;

            when SET_DEST_IP =>
                 -- sets the UDP DEST IPADDRESS 
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= SET_DEST_UDP_PORT;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= SET_DEST_UDP_PORT) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 4; -- 4 Bytes to set Dest IP
                            spi_header <= x"000C" & "00001" & '1' & "00"; --DEST IP register : 0x000C + "00001" Socket 0 BSB + Write Command
                            raw_payload_buffer <= dest_ip_address; -- provided by dest_ip_signal
                        end if;
                    end if; 
                end if;
            
            when SET_DEST_UDP_PORT =>
                 -- sets the UDP DEST port
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= GET_TX_WR_POINTER;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= GET_TX_WR_POINTER) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 2; -- Two Bytes to set Socket Port for Socket 0
                            spi_header <= x"0010" & "00001" & '1' & "00"; --DEST port register : 0x0010 + "00001" Socket 0 BSB + Write Command
                            raw_payload_buffer <= dest_udp_port & x"0000"; -- (page 30)
                        end if;
                    end if; 
                end if;

            when GET_TX_WR_POINTER =>   
            -- reads the current value of the socket 0 tx buffer pointer             
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= WAIT_FOR_TX_WRITE_POINTER_TO_BE_RECEIVED;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= WAIT_FOR_TX_WRITE_POINTER_TO_BE_RECEIVED) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 2; -- Pointer is two bytes in length
                            spi_header <= x"0024" & "00001" & '0' & "00"; --  0x24 and 25 are the TX Write pointers for socket 0
                            raw_payload_buffer <= x"00000000"; -- 0x0000 because we are just reading
                        end if;
                    end if; 
                end if;
            
             when WAIT_FOR_TX_WRITE_POINTER_TO_BE_RECEIVED =>      
                if(rx_payload_last = '1') then
                    w5500state_next <= WRITE_TX_DATA_TO_BUFFER; -- if no data is received, then check again
                    tx_write_pointer <= rx_shift_payload_buffer(15 downto 0);
                    streammanager_next_state <= TX_FIFO_PASSTHROUGH_MODE;
                end if;
            
            -- now we need to set the spi_header and write into the 
            
            when WRITE_TX_DATA_TO_BUFFER =>   
            -- we let the external source write data into the Socket 0's TX Buffer, this state only set's the spi header and the PASSTHROUGH MODE      
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= UPDATE_TX_WRITE_POINTER_AFTER_WRITE;
                    streammanager_next_state <= CONTROLLER_PHASE;
                    payload_data_has_been_set <= '0';
                else
                    if(w5500state_next /= UPDATE_TX_WRITE_POINTER_AFTER_WRITE) then
                            spi_header <= tx_write_pointer & "00010" & '1' & "00"; -- offset address has been read into rx_shift_payload_buffer in the state before, write to Socket 0: TX-Buffer block
                            if(payload_valid = '1' and payload_ready = '1') then
                                ptm_transmitted_byte_counter <= ptm_transmitted_byte_counter + 1;  
                            end if;
                            -- we don't have a raw payload buffer since the external TX AXIStream writes into our "W5500 Data streamer TX Payload FIFO" directly
                            payload_data_has_been_set <= '1';
                    end if; 
                end if;
            
            when UPDATE_TX_WRITE_POINTER_AFTER_WRITE =>
            -- writes the new tx_pointer to the socket 0 bsb            
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= ISSUE_SEND_COMMAND;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= ISSUE_SEND_COMMAND) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 2; -- Pointer is two bytes in length
                            spi_header <= x"0024" & "00001" & '1' & "00"; --  0x0024 and 25 are the TX Pointer Registers + "00001" BSB for Socket 0, write command with '1' as rwb bit
                            raw_payload_buffer <= std_logic_vector((unsigned(tx_write_pointer)+ptm_transmitted_byte_counter)) & x"0000";   
                        end if;
                    end if; 
                end if;
            
            when ISSUE_SEND_COMMAND =>   
            -- allow transmission of that data             
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= REQUEST_INTERRUPT_REG;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= REQUEST_INTERRUPT_REG) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 1; -- Just one Byte to read status
                            spi_header <= x"0001" & "00001" & '1' & "00"; --  0x0001 for Socket Command Register + "00001" BSB for Socket 0, write command
                            raw_payload_buffer <= x"20000000"; -- 0x20, send command
                            tx_write_pointer <= "0000000000000000";
                            ptm_transmitted_byte_counter <= 0;
                        end if;
                    end if; 
                end if;
                                
            when REQUEST_INTERRUPT_REG => 
            -- page 46      
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= WAIT_FOR_INTERRUPT_REGISTER_TO_BE_RECEIVED;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= WAIT_FOR_INTERRUPT_REGISTER_TO_BE_RECEIVED) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 1; -- Just one Byte to read status
                            spi_header <= x"0002" & "00001" & '0' & "00";
                            raw_payload_buffer <= x"00000000"; -- 0x00, were not writing anything to mosi just reading
                        end if;
                    end if; 
                end if;
            
            when WAIT_FOR_INTERRUPT_REGISTER_TO_BE_RECEIVED =>         
                if(rx_payload_last = '1') then
                    w5500state_next <= CHECK_INTERRUPT_REG_RETURNED_VALUE; -- if no data is received, then check again
                end if;
                
            when CHECK_INTERRUPT_REG_RETURNED_VALUE =>      
            --page 48 of W5500 Datasheet
                if(rx_shift_payload_buffer(4) = '0') then -- check for the SEND_OK Bit in the Interrupt Register
                    if(rx_shift_payload_buffer(3) = '1') then -- if the TIMEOUT Bit is set, then
                        w5500state_next <= CLEAR_INTERRUPT_FLAGS_FROM_IR;   
                    else
                        w5500state_next <= REQUEST_INTERRUPT_REG; -- if the SEND_OK Bit and Timeout BIT aren't set, then transmission isn't done
                    end if;
                    
                else -- if SEND OK Bit is '1' then we can clear the interrupt flags and then go to the next package
                    w5500state_next <= CLEAR_INTERRUPT_FLAGS_FROM_IR;
                end if;
            
            when CLEAR_INTERRUPT_FLAGS_FROM_IR =>   
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= GET_SOCKET_STATUS_THROUGH_SN_SR;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= GET_SOCKET_STATUS_THROUGH_SN_SR) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 1; -- Just one Byte to read status
                            spi_header <= x"0003" & "00001" & '1' & "00"; 
                            raw_payload_buffer <= rx_shift_payload_buffer(7 downto 0) & x"000000"; -- We clear the Interrupt register FLAGS by writing back the ones that are '1', since we have read them in the last state, they are in rx_shift_
                        end if;
                    end if; 
                end if;

            when others => -- this is the same as the idle state               
        end case;
       
        prev_spi_busy <= spi_busy;
       
        --- end of the W5500 finite state machine ----
    end if;
    end process;
    
--- SPI DATA Streamer AXI stream manager ---
-- Switches control of PAYLOAD FIFO in the W5500 Data streamer. TX/RX Passthrough phase or controller phase

process (clk, reset)
begin 
    if (reset = '1') then
        streammanager_state <= CONTROLLER_PHASE;
        payload_valid       <= '0';
        payload_last        <= '0';
        ext_pl_tready       <= '0';
        ext_pl_rvalid       <= '0';
        
        ext_pl_rdata <= x"00";
        ext_pl_rlast <= '0';
        payload_data <= x"00";
        rx_shift_payload_buffer <= x"00000000";
        shift_payload_buffer <= x"00000000";
        prev_payload_data_has_been_set <= '0';
        rx_payload_ready    <= '0';
        byte_length_buffer <= 0;
        spi_header_valid <= '0';
        
    elsif (rising_edge(clk)) then
        streammanager_state <= streammanager_next_state;
        prev_payload_data_has_been_set <= payload_data_has_been_set;

        case streammanager_state is                     
            when CONTROLLER_PHASE =>
                if (byte_length_buffer > 0) then
                    payload_data  <= shift_payload_buffer(31 downto 24);
                    shift_payload_buffer <= shift_payload_buffer(23 downto 0) & "00000000";
                    byte_length_buffer   <= byte_length_buffer - 1;
                    payload_valid <= '1'; 
                    spi_header_valid <= '1';

                    if (byte_length_buffer = 1) then
                        payload_last <= '1';
                    else 
                        payload_last <= '0';
                    end if;
                else
                    payload_valid <= '0';
                    payload_last  <= '0';
                    spi_header_valid <= '0';
                end if;

                -- Synchronize buffer update
                if (prev_payload_data_has_been_set = '0' and payload_data_has_been_set = '1') then
                    byte_length_buffer <= payload_byte_length;
                    shift_payload_buffer <= raw_payload_buffer;
                end if;

                -- RX FIFO Handling
                rx_payload_ready <= '1';
                if (rx_payload_valid = '1') then
                    rx_shift_payload_buffer <= rx_shift_payload_buffer(23 downto 0) & rx_payload_data;
                end if;

                -- Disable AXI Stream Output
                ext_pl_tready <= '0';
                ext_pl_rvalid <= '0';

                ext_pl_tlast_was_received <= '0';

            when TX_FIFO_PASSTHROUGH_MODE =>

                ext_pl_tready <= payload_ready;

                if (ext_pl_tvalid = '1' and payload_ready = '1') then
                    if(ext_pl_tlast_was_received = '1') then
                        payload_valid <= '0';
                    else
                        payload_valid <= ext_pl_tvalid;
                        if(ext_pl_tlast = '1') then
                            ext_pl_tlast_was_received <= '1';
                        end if;
                    end if;
                else
                    payload_valid <= '0';
                end if;
                
                -- Pass through AXI stream signals
                payload_data  <= ext_pl_tdata;
                payload_last  <= ext_pl_tlast;

                if (payload_data_has_been_set = '1') then -- this basically set's the header valid bit for exactly one clk cycle
                    spi_header_valid <= '0';
                else
                    spi_header_valid <= '1';
                end if;

                ext_pl_rvalid <= '0';

            when RX_FIFO_PASSTHROUGH_MODE =>
                if (byte_length_buffer > 0) then
                    byte_length_buffer <= byte_length_buffer - 1;
                    payload_valid <= '1'; 
                    spi_header_valid <= '1';

                    if (byte_length_buffer = 1) then
                        payload_last <= '1';
                    else 
                        payload_last <= '0';
                    end if;
                else
                    payload_valid <= '0';
                    payload_last  <= '0';
                    spi_header_valid <= '0';
                end if;

                if (prev_payload_data_has_been_set = '0' and payload_data_has_been_set = '1') then
                    byte_length_buffer <= payload_byte_length;
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

            when others =>
                -- Default Safe State
                payload_valid <= '0';
                payload_last  <= '0';
                ext_pl_tready <= '0';
                ext_pl_rvalid <= '0';
                
                ext_pl_tlast_was_received <= '0';
        end case;
    end if;
end process;
    
end architecture behavioral;

