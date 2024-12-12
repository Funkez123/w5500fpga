LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity w5500_state_machine is
    port(
        clk:    in std_logic;
		reset:  in std_logic := '0';
		idle_mode: in std_logic := '1';
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
	type W5500_state_type is (RESET_STATE, RESET_W5500_CHIP_STATE, SET_GATEWAY_STATE, SET_SUBNET_STATE, SET_MAC_STATE_1, SET_MAC_STATE_2, SET_LOCAL_IPADDRESS_STATE , SET_UDP_MODE_STATE ,OPEN_SOCKET_STATE, CHECK_SOCKET_STATUS_STATE, SOCKET_PORT_STATE, DEST_IP_STATE, DEST_PORT_STATE, IDLE_STATE, WRITE_TX_DATA_STATE, READ_TX_FREE_BUFFER_SIZE, READ_TX_POINTER_STATE,WRITE_NEW_TX_POINTER_STATE,UPDATE_RX_READ_POINTER_AFTER_READ_STATE,REQUEST_UPDATED_TX_WRITE_POINTER, CHECK_TX_READ_POINTER,REQUEST_COMMAND_REG_AFTER_TRANSMISSION_STATE,REQUEST_RECEIVED_DATA_SIZE,CHECK_IF_RECEIVED_DATA_IS_AVAILABLE_STATE, CHECK_IF_SOCKET_HAS_COMPLETED_TRANSMISSION_STATE,GET_RX_READ_POINTER_STATE,ISSUE_READ_COMMAND_TO_UPDATE_RX_WRITE_POINTER_STATE,CHECK_INTERRUPT_REG_RETURNED_VALUE,REQUEST_INTERRUPT_REG_AFTER_SOCKET_CHECK_STATE,CHECK_IF_MILLION_DATA_PACKETS_GAVE_BEEN_SENT_STATE,WAIT_FOR_TX_WRITE_POINTER_TO_BE_RECEIVED,WAIT_FOR_TX_READ_POINTER_TO_BE_RECEIVED, SEND_DATA_STATE,WAIT_FOR_INTERRUPT_REGISTER_TO_BE_RECEIVED,WAIT_FOR_COMMAND_REGISTER_TO_BE_RECEIVED, CLEAR_INTERRUPT_FLAGS_FROM_IR_STATE, RECEIVE_DATA_STATE);
	signal w5500state, w5500state_next: W5500_state_type;

    -- spi streamer axi streamer state
    type fifo_data_stream_handler_state_type is (RESET_STATE, INIT_STATE, PASSTHOUGH_MODE);
	signal streamhandler_state, streamhandler_state_next: fifo_data_stream_handler_state_type;

    signal prev_spi_busy: std_logic := '0';
    
    signal raw_payload_buffer : std_logic_vector(31 downto 0) := (others => '0');    
    signal shift_payload_buffer : std_logic_vector(31 downto 0) := (others => '0'); -- buffer for second process
    signal payload_byte_length : integer := 0; -- this has to be set every time the raw_payload_buffer is updated.
    signal byte_length_buffer : integer := 0; -- buffer for second process
    signal prev_payload_data_has_been_set : std_logic := '0'; 
    signal payload_data_has_been_set : std_logic := '0';

    --tx data payload signals
    signal payload_data : std_logic_vector(7 downto 0); 
    signal payload_ready : std_logic;
    signal payload_valid : std_logic;
    signal payload_last : std_logic := '0';
    
    signal raw_rx_payload_buffer : std_logic_vector(31 downto 0) := (others => '0');    
    signal rx_shift_payload_buffer : std_logic_vector(31 downto 0) := (others => '0'); -- buffer for second process
    
    --rx data payload signals
    signal rx_payload_data : std_logic_vector(7 downto 0); 
    signal rx_payload_ready : std_logic;
    signal rx_payload_valid : std_logic;
    signal rx_payload_last : std_logic := '0';
    
    
    signal conf_header : std_logic_vector(23 downto 0);
    signal conf_header_valid : std_logic;
    
    signal rready_int_buffer : std_logic := '0';
   
    -- PASSTHROUGH MODE COUNTERS
    signal ptm_transmitted_byte_counter : integer range 0 to 2048;
    signal ptm_received_byte_counter : integer range 0 to 2048;
   
    -- testing value million_package_counter
    signal million_package_counter : integer range 0 to 2048;
   
   
   
    component w5500_axi_data_streamer is
        Port (
            clk        : in  std_logic;
            reset        : in  std_logic;
            conf_header: in std_logic_vector(23 downto 0);   -- the first 24 bits to transmit before continuing with the payload
            conf_header_valid : in std_logic;
            
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
            clk        => clk,
            reset        => reset,
            conf_header => conf_header,   -- the first 24 bits to transmit before continuing with the payload
            conf_header_valid => conf_header_valid,
        
            tx_plready    => payload_ready, -- payload ready AXIStream ready
            tx_plvalid    => payload_valid,  --payload valid AXISTream valid
            tx_pldata  => payload_data,  -- 32-bit payload to be sent
            tx_pllast => payload_last,
        
            rx_plready => rx_payload_ready,
            rx_plvalid => rx_payload_valid,
            rx_pldata => rx_payload_data,
            rx_pllast => rx_payload_last,
        
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
	process (clk, reset, w5500state, spi_busy, conf_header, payload_valid)
	begin
	
	if clk'event and clk = '1' then
        case w5500state is
            when RESET_STATE =>
            if(payload_ready = '1') then
                w5500state_next <= RESET_W5500_CHIP_STATE;
            end if;
            
            when RESET_W5500_CHIP_STATE =>
                 -- set the reset bit for the w5500
                if(spi_busy = '0' and prev_spi_busy = '1') then -- only change states when the spi transmission is done.
                    w5500state_next <= SET_GATEWAY_STATE;
                    payload_data_has_been_set <= '0';
                else
                    if(w5500state_next /= SET_GATEWAY_STATE) then -- this prevents setting data again when changing states
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 1;
                            conf_header <= x"0000" & "00000" & '1' & "00";  -- Mode Register 0x0000 -- + "00000" (BSB for common register) + '1' (write) + "00" for vdm
                            raw_payload_buffer <= x"80000000"; -- first byte is "10000000" which means the software reset bit is high
                            
                            million_package_counter <= 0;
                            
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
                            conf_header <= x"0001" & "00000" & '1' & "00";  --gateway address register 0x0001 + CommonRegister BSB "00000" + write"1" + "00" VDM
                            raw_payload_buffer <= x"C0A80201"; -- 192 168 2 1 (gateway)
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
                            conf_header <= x"0005" & "00000" & '1' & "00"; --subnet mask register 0x0005 + WriteCommand in VDM
                            raw_payload_buffer <= x"FFFFFF00"; -- 255 255 255 0
                        end if;
                    end if;
                    
                end if;
                
            when SET_MAC_STATE_1 => -- (6 Bytes) split into 4 Byte and 2 Byte packages in two states
                 -- set MAC ADDRESS of W5500 first 4 bytes
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= SET_MAC_STATE_2;
                    payload_data_has_been_set <= '0';
                else
                    if(w5500state_next /= SET_MAC_STATE_2) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 4;
                            conf_header <= x"0009" & "00000" & '1' & "00"; --source mac address register 0x0009 + WriteCommand 
                            raw_payload_buffer <= x"DEADBEEF"; -- 0xDE, 0xAD, 0xBE, 0xEF (4Bytes)
                        end if;
                    end if; 
                end if;
                
            when SET_MAC_STATE_2 => 
                 -- set MAC ADDRESS of W5500 second 2 Bytes
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= SET_LOCAL_IPADDRESS_STATE;
                    payload_data_has_been_set <= '0';
                else
                    if(w5500state_next /= SET_LOCAL_IPADDRESS_STATE) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 2;
                            conf_header <= x"000D" & "00000" & '1' & "00"; --source mac address register 0x0009 (plus 4 Byte offset = 0x000D)
                            raw_payload_buffer <= x"FEED0000"; -- 0xFE, 0xED (2 Bytes)
                        end if;
                    end if; 

                end if;
            
            --start UDP Socket 0 from here, Setting the Source IP is the first step
            
            when SET_LOCAL_IPADDRESS_STATE =>
                 -- set IPAddress of W5500 Chip  (4 Bytes)
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= SET_UDP_MODE_STATE;
                    payload_data_has_been_set <= '0';
                else
                    if(w5500state_next /= SET_UDP_MODE_STATE) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 4;
                            conf_header <= x"000F" & "00000" & '1' & "00"; --source ip address register + Write Command in VDM
                            raw_payload_buffer <= x"C0A80264"; --- 192 168 2 100
                        end if;
                    end if; 
                end if;
            
            when SET_UDP_MODE_STATE =>
                 -- Example: Set Socket 0 to UDP Mode
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= SOCKET_PORT_STATE;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= SOCKET_PORT_STATE) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 1; -- Just one Byte to set Mode
                            conf_header <= x"0000" & "00001" & '1' & "00"; --Mode Register : 0x4000 + BSB for Socket 0 Register
                            raw_payload_buffer <= x"02000000"; -- first Byte is : "0000 0010" for UDP mode (PDF page 45), enables UDP Multicast and sets UDP mode
                        end if;
                    end if; 
                end if;
            
            when SOCKET_PORT_STATE =>
                 -- sets the UDP source port
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= OPEN_SOCKET_STATE;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= OPEN_SOCKET_STATE) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 2; -- Two Bytes to set Socket Port for Socket 0
                            conf_header <= x"0004" & "00001" & '1' & "00"; --Socket Port register : 0x0004 + "00001" Socket 0 BSB + Write Command
                            raw_payload_buffer <= x"00D90000"; -- 0x00D9 for port 217  (page 30)
                        end if;
                    end if; 
                end if; 
           
            when OPEN_SOCKET_STATE =>
                 -- Open Socket 0
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= CHECK_SOCKET_STATUS_STATE;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= CHECK_SOCKET_STATUS_STATE) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 1; -- Just one Byte to set Mode
                            conf_header <= x"0001" & "00001" & '1' & "00"; --Command Register : 0x0001 + "00001" Socket 0 BSB + Write Command
                            raw_payload_buffer <= x"01000000"; -- first Byte is "0x01" (PDF page 46) for Socket OPEN -> S0_SR should change to 0x02 for "open Socket status"
                        end if;
                    end if; 
                end if;
            
            when CHECK_SOCKET_STATUS_STATE =>
                 -- check status of Socket 0
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= DEST_PORT_STATE;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= DEST_PORT_STATE) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 1; -- Just one Byte to read status
                            conf_header <= x"0003" & "00001" & '0' & "00"; --  0x0003 for Socket Status Sn_SR + "00001" BSB for Socket 0, read => rwb = '0' + OM: 00 (VDM) ("00001000")
                            raw_payload_buffer <= x"00000000"; -- 0x00, were not writing anything to mosi just reading
                        end if;
                    end if; 
                end if;
                
            when DEST_PORT_STATE =>
                 -- sets the UDP DEST port
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= DEST_IP_STATE;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= DEST_IP_STATE) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 2; -- Two Bytes to set Socket Port for Socket 0
                            conf_header <= x"0010" & "00001" & '1' & "00"; --DEST port register : 0x0010 + "00001" Socket 0 BSB + Write Command
                            raw_payload_buffer <= x"00D90000"; -- (page 30)
                        end if;
                    end if; 
                end if;
                
            when DEST_IP_STATE =>
                 -- sets the UDP DEST IP 
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= CHECK_IF_MILLION_DATA_PACKETS_GAVE_BEEN_SENT_STATE;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= CHECK_IF_MILLION_DATA_PACKETS_GAVE_BEEN_SENT_STATE) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 4; -- 4 Bytes to set Dest IP
                            conf_header <= x"000C" & "00001" & '1' & "00"; --DEST IP register : 0x000C + "00001" Socket 0 BSB + Write Command
                            raw_payload_buffer <= x"C0A8026A"; -- 192 168 2 255 for broadcast
                        end if;
                    end if; 
                end if;
 
            ---^ here the INIT PIPELINE is finished
            
            --- now do the default routine:
            
            when CHECK_IF_MILLION_DATA_PACKETS_GAVE_BEEN_SENT_STATE =>         
                if(million_package_counter >= 100) then
                    w5500state_next <= IDLE_STATE; -- if yes, go idle
                else
                    w5500state_next <= READ_TX_FREE_BUFFER_SIZE; -- skip receiving part, go straight to sending
                end if;
            
            when REQUEST_RECEIVED_DATA_SIZE =>         
                if(spi_busy = '0' and prev_spi_busy = '1') then -- if spi is done and the last packa   
                    w5500state_next <= CHECK_IF_RECEIVED_DATA_IS_AVAILABLE_STATE;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= CHECK_IF_RECEIVED_DATA_IS_AVAILABLE_STATE) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 2; -- 2 Byte size variable
                            conf_header <= x"0026" & "00001" & '0' & "00"; --  
                            raw_payload_buffer <= x"00000000"; -- 0x0000 because we are just reading
                        end if;
                    end if; 
                end if;
            
             -- ONCE SOCKET HAS BEEN CHECKED; WE CAN CHECK FOR RECEIVED MESSAGES
            
            when CHECK_IF_RECEIVED_DATA_IS_AVAILABLE_STATE =>         
                if(rx_shift_payload_buffer(7 downto 0) = x"0000") then
                    w5500state_next <= REQUEST_RECEIVED_DATA_SIZE; -- if no data is received, then check again
                else
                    w5500state_next <= GET_RX_READ_POINTER_STATE; -- else we can respond to the server
                end if;
                
            -- at first mark the received data as read
            
            when GET_RX_READ_POINTER_STATE =>   
            -- reads the RX Read Pointer for Socket 0  
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= UPDATE_RX_READ_POINTER_AFTER_READ_STATE;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= UPDATE_RX_READ_POINTER_AFTER_READ_STATE) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 2; -- Pointer is two bytes
                            conf_header <= x"0028" & "00001" & '0' & "00"; -- Free Buffer Size register 0x0028, Socket 0 BSB and read
                            raw_payload_buffer <= x"00000000"; -- just reading
                        end if;
                    end if; 
                end if;
            
            when UPDATE_RX_READ_POINTER_AFTER_READ_STATE =>   
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= ISSUE_READ_COMMAND_TO_UPDATE_RX_WRITE_POINTER_STATE;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= ISSUE_READ_COMMAND_TO_UPDATE_RX_WRITE_POINTER_STATE) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 2; -- Pointer is two bytes
                            conf_header <= x"0028" & "00001" & '1' & "00"; -- write new pointer to 0x0028 of Socket 0
                            raw_payload_buffer <= std_logic_vector(unsigned(rx_shift_payload_buffer(15 downto 0))+unsigned(rx_shift_payload_buffer(23 downto 16))) & x"0000"; 
                        end if;
                    end if; 
                end if;
            
            when ISSUE_READ_COMMAND_TO_UPDATE_RX_WRITE_POINTER_STATE =>   
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= READ_TX_FREE_BUFFER_SIZE;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= READ_TX_FREE_BUFFER_SIZE) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 1; -- Command is only one byte
                            conf_header <= x"0001" & "00001" & '1' & "00"; -- Command register 0x0001, Socket 0 BSB and write
                            raw_payload_buffer <= x"40000000"; -- See Sn_CR , 0x40 completes the read process
                        end if;
                    end if; 
                end if;
            
            -- Read Socket 0 TX Free Buffer Size
            
            when READ_TX_FREE_BUFFER_SIZE =>   
            -- reads 2 Bytes to determine free buffer size          
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= READ_TX_POINTER_STATE;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= READ_TX_POINTER_STATE) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 2; -- 2 Bytes to read
                            conf_header <= x"0020" & "00001" & '0' & "00"; -- Free Buffer Size register 0x0020, Socket 0 BSB and read
                            raw_payload_buffer <= x"00000000"; -- just reading
                        end if;
                    end if; 
                end if;

            when READ_TX_POINTER_STATE =>   
            -- reads the current value of the socket 0 tx buffer pointer             
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= WAIT_FOR_TX_WRITE_POINTER_TO_BE_RECEIVED;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= WAIT_FOR_TX_WRITE_POINTER_TO_BE_RECEIVED) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 2; -- Pointer is two bytes in length
                            conf_header <= x"0024" & "00001" & '0' & "00"; --  0x0024 and 25 are the TX Pointer Registers + "00001" BSB for Socket 0, read command with '0' as rwb bit
                            raw_payload_buffer <= x"00000000"; -- 0x0000 because we are just reading
                        end if;
                    end if; 
                end if;
            
             when WAIT_FOR_TX_WRITE_POINTER_TO_BE_RECEIVED =>         
                if(rx_payload_last = '1') then
                    w5500state_next <= WRITE_TX_DATA_STATE; -- if no data is received, then check again
                end if;
            
            when WRITE_TX_DATA_STATE =>   
            -- write 4 Bytes to the TX Buffer of the W5500 Socket0 Register, rx_shift_payload_buffer should have been set from last state already        
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= WRITE_NEW_TX_POINTER_STATE;
                    payload_data_has_been_set <= '0';
                else
                    if(w5500state_next /= WRITE_NEW_TX_POINTER_STATE) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 4; -- 4 Bytes to send
                            conf_header <= rx_shift_payload_buffer(15 downto 0) & "00010" & '1' & "00"; -- offset address has been read into rx_shift_payload_buffer in the state before, write to Socket 0: TX-Buffer block
                            raw_payload_buffer <= std_logic_vector(to_unsigned(million_package_counter, 32));
                        end if;
                    end if; 
                end if;
            
            when WRITE_NEW_TX_POINTER_STATE =>   
            -- writes the new tx_pointer to the socket 0 bsb            
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= SEND_DATA_STATE;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= SEND_DATA_STATE) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 2; -- Pointer is two bytes in length
                            conf_header <= x"0024" & "00001" & '1' & "00"; --  0x0024 and 25 are the TX Pointer Registers + "00001" BSB for Socket 0, write command with '1' as rwb bit
                            --raw_payload_buffer <= std_logic_vector(unsigned(x"0000" & rx_shift_payload_buffer(15 downto 0))+16); 
                            raw_payload_buffer <= std_logic_vector(unsigned(rx_shift_payload_buffer(15 downto 0))+4) & x"0000"; 
                        end if;
                    end if; 
                end if;
            
            when SEND_DATA_STATE =>   
            -- allow transmission of that data             
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= REQUEST_UPDATED_TX_WRITE_POINTER;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= REQUEST_UPDATED_TX_WRITE_POINTER) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 1; -- Just one Byte to read status
                            conf_header <= x"0001" & "00001" & '1' & "00"; --  0x0001 for Socket Command Register + "00001" BSB for Socket 0, write command
                            raw_payload_buffer <= x"20000000"; -- 0x20, send command
                            million_package_counter <= million_package_counter +1;
                        end if;
                    end if; 
                end if;
                
                
            when REQUEST_UPDATED_TX_WRITE_POINTER => 
            -- reads the current value of the socket 0 tx buffer pointer             
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= CHECK_TX_READ_POINTER;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= CHECK_TX_READ_POINTER) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 2; -- Pointer is two bytes in length
                            conf_header <= x"0024" & "00001" & '0' & "00"; --  0x0024 and 25 are the TX Pointer Registers + "00001" BSB for Socket 0, read command with '0' as rwb bit
                            raw_payload_buffer <= x"00000000"; -- 0x0000 because we are just reading
                        end if;
                    end if; 
                end if;
                       
                       
            when CHECK_TX_READ_POINTER => 
            -- reads the current value of the socket 0 tx read pointer             
                if(spi_busy = '0' and prev_spi_busy = '1') then    
                    w5500state_next <= WAIT_FOR_TX_READ_POINTER_TO_BE_RECEIVED;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= WAIT_FOR_TX_READ_POINTER_TO_BE_RECEIVED) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 2; -- Pointer is two bytes in length
                            conf_header <= x"0022" & "00001" & '0' & "00"; --  0x0022 and 23 are the TX Pointer Registers + "00001" BSB for Socket 0, read command with '0' as rwb bit
                            raw_payload_buffer <= x"00000000"; -- 0x0000 because we are just reading
                        end if;
                    end if; 
                end if;

            when WAIT_FOR_TX_READ_POINTER_TO_BE_RECEIVED =>         
                if(rx_payload_last = '1') then
                    w5500state_next <= REQUEST_INTERRUPT_REG_AFTER_SOCKET_CHECK_STATE; -- if no data is received, then check again
                end if;

            when REQUEST_COMMAND_REG_AFTER_TRANSMISSION_STATE => 
            -- This register should have the value of 0x00 (transmission complete) otherwise we have to check the Interrupt register   
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= WAIT_FOR_COMMAND_REGISTER_TO_BE_RECEIVED;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= WAIT_FOR_COMMAND_REGISTER_TO_BE_RECEIVED) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 1; -- Just one Byte to read status
                            conf_header <= x"0001" & "00001" & '0' & "00"; --  0x0001 for Command Register Sn_CR + "00001" BSB for Socket 0, read => rwb = '0' + OM: 00 (VDM) ("00001000")
                            raw_payload_buffer <= x"00000000"; -- 0x00, were not writing anything to mosi just reading
                        end if;
                    end if; 
                end if;
            
            when WAIT_FOR_COMMAND_REGISTER_TO_BE_RECEIVED =>         
                if(rx_payload_last = '1') then
                    w5500state_next <= CHECK_IF_SOCKET_HAS_COMPLETED_TRANSMISSION_STATE; -- if no data is received, then check again
                end if;
            
            when CHECK_IF_SOCKET_HAS_COMPLETED_TRANSMISSION_STATE =>         
                if(rx_shift_payload_buffer(7 downto 0) = x"00") then
                    w5500state_next <= CHECK_IF_MILLION_DATA_PACKETS_GAVE_BEEN_SENT_STATE; -- if it's completeded, then continue
                else
                    w5500state_next <= REQUEST_INTERRUPT_REG_AFTER_SOCKET_CHECK_STATE; -- if Sn_SR is something else like 0x00 we have to find out if it was a timeout or send-command just need's some time
                end if;
                
            when REQUEST_INTERRUPT_REG_AFTER_SOCKET_CHECK_STATE => 
            -- page 46      
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= WAIT_FOR_INTERRUPT_REGISTER_TO_BE_RECEIVED;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= WAIT_FOR_INTERRUPT_REGISTER_TO_BE_RECEIVED) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 1; -- Just one Byte to read status
                            conf_header <= x"0003" & "00001" & '0' & "00";
                            raw_payload_buffer <= x"00000000"; -- 0x00, were not writing anything to mosi just reading
                        end if;
                    end if; 
                end if;
            
            when WAIT_FOR_INTERRUPT_REGISTER_TO_BE_RECEIVED =>         
                if(rx_payload_last = '1') then
                    w5500state_next <= CHECK_INTERRUPT_REG_RETURNED_VALUE; -- if no data is received, then check again
                end if;
                
            when CHECK_INTERRUPT_REG_RETURNED_VALUE =>        
            --page 48 
            
                if(rx_shift_payload_buffer(4) = '0') then -- check for the SEND_OK Bit in the Interrupt Register
                    if(rx_shift_payload_buffer(3) = '1') then -- if the TIMEOUT Bit is set, then
                        w5500state_next <= CLEAR_INTERRUPT_FLAGS_FROM_IR_STATE;   
                    else
                        w5500state_next <= REQUEST_INTERRUPT_REG_AFTER_SOCKET_CHECK_STATE; -- if the SEND_OK Bit and Timeout BIT aren't set, then transmission isn't done
                    end if;
                    
                else -- if SEND OK Bit is '1' then we can clear the interrupt flags and then go to the next package
                    w5500state_next <= CLEAR_INTERRUPT_FLAGS_FROM_IR_STATE;
                end if;
            
            when CLEAR_INTERRUPT_FLAGS_FROM_IR_STATE =>   
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= CHECK_IF_MILLION_DATA_PACKETS_GAVE_BEEN_SENT_STATE;
                    payload_data_has_been_set <= '0';
                else
                   if(w5500state_next /= CHECK_IF_MILLION_DATA_PACKETS_GAVE_BEEN_SENT_STATE) then
                        if(payload_data_has_been_set = '0') then
                            payload_data_has_been_set <= '1';
                            payload_byte_length <= 1; -- Just one Byte to read status
                            conf_header <= x"0003" & "00001" & '1' & "00"; 
                            raw_payload_buffer <= rx_shift_payload_buffer(7 downto 0) & x"000000"; -- We clear the Interrupt register FLAGS by writing back the ones that are '1', since we have read them in the last state, they are in rx_shift_
                        end if;
                    end if; 
                end if;
              
            when RECEIVE_DATA_STATE =>
                if(spi_busy = '0' and prev_spi_busy = '1') then
                    w5500state_next <= IDLE_STATE;
                    payload_data_has_been_set <= '0';
                end if;
           
            when IDLE_STATE =>
                if(idle_mode = '1') then
                    w5500state_next <= IDLE_STATE;
                    payload_data_has_been_set <= '0';
                else 
                    w5500state_next <= RESET_W5500_CHIP_STATE;
                    million_package_counter <= 0;
                    payload_data_has_been_set <= '0';
                end if;
                
            when others => -- this is the same as the idle state
               if(idle_mode = '1') then
                    w5500state_next <= IDLE_STATE;
                    payload_data_has_been_set <= '0';
                end if; 
        end case;
       
       prev_spi_busy <= spi_busy;
       
        --- end of the state machine ----
    end if;
    end process;
    
            --- SPI Streamer AXI stream handler ---
   -- This logic serves the purpose of writing data to the SPI-Streamer FIFO and chopping up multi-byte payloads into 8Bit data packages one at a time
   -- it also switches between initialization mode and external data throughput mode.        
            
    process (clk, reset)
    begin 
        
        if(reset='1') then
            streamhandler_state_next <= INIT_STATE;
        end if;
    
        if(clk'event and clk = '1') then
            streamhandler_state <= streamhandler_state_next;
            prev_payload_data_has_been_set <= payload_data_has_been_set; 
            case streamhandler_state is 
                when RESET_STATE =>
                    streamhandler_state_next <= INIT_STATE;
                when INIT_STATE => -- SPI Master takes care of writing to Payload FIFO
                    -- The SPI Master controlls the streamer by having the valid Signals high as long as data should be transmitted. 
                    -- The "meaningful" data is the payload, as long as there are payload bytes to transmit, the all valid signals should be high.
                
                    if(byte_length_buffer > 0) then
                        payload_data <= shift_payload_buffer(31 downto 24);
                        shift_payload_buffer <= shift_payload_buffer(23 downto 0) & "00000000";
                        byte_length_buffer <= byte_length_buffer - 1;
                        payload_valid <= '1'; 
                        conf_header_valid <= '1';
                    
                        if(byte_length_buffer = 1) then
                            payload_last <= '1';
                        else 
                            payload_last <= '0';
                        end if;
                    else
                        payload_valid <= '0';
                        payload_last <= '0';
                        conf_header_valid <= '0';
 
                    end if;
                
                    if(prev_payload_data_has_been_set = '0' and payload_data_has_been_set = '1') then -- this indicates a switch of states in the upper state machine
                        byte_length_buffer <= payload_byte_length;
                        shift_payload_buffer <= raw_payload_buffer;
                    end if;
                
                
                    -- receiving part of the state machine
                    -- it basically immediately reads the RXFIFO from the W5500 data streamer into rx_shift_payload_buffer, so that it's data can be accessed in the next state. This is useful to handle pointers read from the W5500 registers
                    rx_payload_ready <= '1';
                    if(rx_payload_valid = '1') then
                        rx_shift_payload_buffer <= rx_shift_payload_buffer(23 downto 0) & rx_payload_data;
                    end if; 
                
                when PASSTHOUGH_MODE => -- external source takes care of writing to Payload FIFO
                    -- it has to be counted how many bytes are writting into the TX FIFO or how many are read from the RX FIFO to handle the W5500 Memory POINTERS 
                
                    if(payload_ready='1' and ext_pl_tvalid = '1' and ptm_transmitted_byte_counter < 2048) then
                        ptm_transmitted_byte_counter <= ptm_transmitted_byte_counter + 1;
                    end if;
                
                
                    if(rx_payload_valid='1' and ext_pl_rready = '1' and ptm_received_byte_counter < 2048) then
                        ptm_received_byte_counter <= ptm_received_byte_counter + 1;
                    end if;
                
                
                    -- transmitting part of the Passthrough MODE 
                        payload_data <= ext_pl_tdata;
                        ext_pl_tready <= payload_ready;
                        payload_last <= ext_pl_tlast;
                        payload_valid <= ext_pl_tvalid;
                    
                    -- receiving part of the Passthrough MODE
                    -- external has to handle the data that has been received, literally a passthrough
                        ext_pl_rdata <= rx_payload_data;
                        ext_pl_rlast <= rx_payload_last;
                        ext_pl_rvalid <= rx_payload_valid;
                        rx_payload_ready <= ext_pl_rready;        
                            
                when others =>
                    streamhandler_state_next <= INIT_STATE;
            end case;
        end if;
        
    end process;
    
            
end architecture behavioral;

