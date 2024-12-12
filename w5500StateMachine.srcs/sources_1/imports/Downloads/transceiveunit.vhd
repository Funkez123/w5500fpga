library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity transceive_unit is
-- SPI-Mode 0
	generic (
		num_bits:   integer := 8 -- number of bits to transmit
	);
	port (
		tdata:   in std_logic_vector (num_bits-1 downto 0); -- payload
		rdata:   out std_logic_vector (num_bits-1 downto 0); -- receiving data
		mosi:      out std_logic;
		miso:      in std_logic := '0';
		sclk:      out std_logic;
		cs:        out std_logic;
		clk:       in std_logic;
		reset:     in std_logic := '0';
		spi_busy : out std_logic;
		tvalid:    in std_logic;
		tready :   out std_logic;
		tlast :    in std_logic := '0';
		rvalid :   out std_logic;
		rready :   in std_logic := '0';
		rlast : out std_logic := '0'
	);
end entity transceive_unit;


architecture behavioral of transceive_unit is

	signal delay_counter: integer range 0 to 128;

	type spi_state is (wait_for_fifo_ready, spi_idle, spi_execute, spi_done);
	signal spistate, spistate_next: spi_state;

	signal clk_toggles : integer range 0 to num_bits*2 + 1;    --clock toggle counter
	signal sclk_buffer : std_logic;

    signal tx_phase : std_logic; -- tx_phase of 1 means sclk rising edge, 0 means falling edge
	
	signal not_reset : std_logic;
	signal cs_buffer : std_logic;
	signal rdata_buffer : std_logic_vector((num_bits-1) downto 0);
    signal tx_buffer : std_logic_vector ((num_bits-1) downto 0) := (others=>'0'); 
    signal tx_current_payload : std_logic_vector ((num_bits-1) downto 0) := (others=>'0');
    signal tx_payload_valid : std_logic := '0';
    signal tx_payload_valid_buffer : std_logic := '0';
    signal tx_payload_ready : std_logic := '0';
    signal tx_payload_last : std_logic := '0';
    signal rx_buffer :  std_logic_vector ((num_bits -1) downto 0) := (others=>'0');
    signal rx_buffer_valid : std_logic := '0';
    signal rx_buffer_ready : std_logic := '1';
    signal rx_buffer_last : std_logic := '0';
    signal tready_int_buffer : std_logic := '0';
    
    signal rvalid_int_buffer : std_logic := '0';
    signal rlast_int_buffer : std_logic := '0';
    
    signal first_execute : std_logic := '1';
    
    component axis_data_fifo_8bit is 
        Port(
            s_axis_tdata : in std_logic_vector(7 downto 0);
            s_axis_tready: out std_logic;
            s_axis_tvalid : in std_logic;
            s_axis_aclk : in std_logic;
            s_axis_tlast : in std_logic;
            s_axis_aresetn : in std_logic;
            m_axis_tdata : out std_logic_vector(7 downto 0);
            m_axis_tready: in std_logic;
            m_axis_tvalid : out std_logic;
            m_axis_tlast : out std_logic
        );
    end component;
    
    
    begin
    
    u_tx_payload_fifo : axis_data_fifo_8bit -- fifo that stores the data that needs to be sent
        port map (
            s_axis_tdata => tdata,
            s_axis_tready => tready_int_buffer,
            s_axis_tvalid => tvalid,
            s_axis_tlast => tlast,
            s_axis_aclk => clk,
            s_axis_aresetn => not_reset,
            m_axis_tdata => tx_current_payload,
            m_axis_tready => tx_payload_ready,
            m_axis_tvalid => tx_payload_valid,
            m_axis_tlast => tx_payload_last
        );
    
        u_rx_payload_fifo : axis_data_fifo_8bit -- data that has been read while the execution state
        port map (
            s_axis_tdata => rx_buffer,
            s_axis_tready => rx_buffer_ready, 
            s_axis_tvalid => rx_buffer_valid,
            s_axis_tlast => rx_buffer_last,
            s_axis_aclk => clk,
            s_axis_aresetn => not_reset,
            m_axis_tdata => rdata_buffer,
            m_axis_tready => rready, 
            m_axis_tvalid => rvalid_int_buffer,
            m_axis_tlast => rlast_int_buffer
        );
    
    cs <= cs_buffer;
    sclk <= sclk_buffer; 
    rdata <= rdata_buffer;
    tready <= tready_int_buffer;
    tx_payload_valid_buffer <= tx_payload_valid;
    rvalid <= rvalid_int_buffer;
    rlast <= rlast_int_buffer;
    not_reset <= not reset; 
    
-- state memory
	process (clk, reset)
	begin
	   if(reset = '1') then
	       spistate <= spi_idle;
	   elsif (clk'event and clk='1')then
	       spistate <= spistate_next;
	   end if;
	end process;
    
   
------ State Machine -------
	process (clk, reset, spistate)
	begin
		if reset = '1' then

			
		elsif clk'event and clk = '1' then
			-- Zustandsabfrage
			case spistate is
			
			    when wait_for_fifo_ready => -- buffer state, to ensure we can only handle data when the fifo is ready
			    
			        cs_buffer <= '1';
			        spi_busy <= '0';
			        sclk_buffer <= '0';
			        tx_phase <= '0'; -- since we send on rising edge on SCLK (compare with cpha)
			    
				if tready_int_buffer = '1' then -- if the tx fifo is ready, then go to idle
					spistate_next <= spi_idle;
				else 
				    spistate_next <= wait_for_fifo_ready;				
				end if;
			
			
				-- Idle state
				when spi_idle => -- here the data gets configured for the transmission
			        cs_buffer <= '1';
			        spi_busy <= '0';
			        sclk_buffer <= '0';
			        tx_phase <= '0'; -- since we send on rising edge on SCLK (compare with cpha)
			    
				if tx_payload_valid_buffer = '1' then -- if the TX Payload FIFO is not empty, then go to execute state
					spistate_next <= spi_execute;
				else 
				    spistate_next <= spi_idle;				
				end if;
				
				if(spistate_next = spi_execute) then
				    tx_buffer <= tx_current_payload;
				    tx_payload_ready <= '1';
				    first_execute <= '1'; -- this is important not to read the Bit at clk_toggles = 0, but only after the first execute 
				end if;
					
			when spi_execute =>
			
			    tx_payload_ready <= '0';
                cs_buffer <= '0';
                spi_busy <= '1';
                tx_phase <= not tx_phase; -- this switches between TX Phase(rising edge on SCLK) and NOT TX_PHASE (falling edge on SCLK)
                
                -- counter
			    if(clk_toggles = num_bits*2 - 1) then  --reset counter
				    clk_toggles <= 0;              
                else
                    if(cs_buffer = '0' and spistate_next /= spi_done) then -- clk toggles can only happen when cs is low
				        clk_toggles <= clk_toggles + 1; 				--increment counter
				    end if;
                end if;
                
                -- toggle sclk
                if(cs_buffer = '0' and spistate_next /= spi_done) then
                    sclk_buffer <= not sclk_buffer; --toggle spi clock
                end if;
                
                -- transmit data: -- tx_phase = '0' means that data is basically written on the falling edge
                if(tx_phase = '0' and clk_toggles < 14) then
                    mosi <= tx_buffer(num_bits-1);
                    tx_buffer <= tx_buffer(num_bits-2 downto 0) & '0'; -- shift the data
                else -- for clk_toggles = 15 it's time to check if there is any more data to send
                    if(tx_payload_valid_buffer = '1' and clk_toggles = 15) then -- if there is more data to send
                        tx_buffer <= tx_current_payload(num_bits-2 downto 0) & '0'; -- this has to be shifted by one already, since mosi is written directly in the next line
                        mosi <= tx_current_payload(num_bits-1);
                        tx_payload_ready <= '1'; -- set ready for one clk to clear that Byte from the FIFO                  
                    end if;                
                end if;
                
                --receive data: tx_phase = '1' means data is read on the rising edge
                if(tx_phase = '1' and clk_toggles < num_bits*2 - 1) then -- num_bits*2 - 1 = 15, clk_toggles 16 (which is just 0 after 15) is the last time a bit of the current byte is read
                    rx_buffer <= rx_buffer(num_bits-2 downto 0) & miso;
                    rx_buffer_valid <= '0'; -- rx_buffer can't be valid on tx_phase
                    rx_buffer_last <= '0';
                else 
                    if(clk_toggles = 1 and first_execute = '0') then
                        rx_buffer_valid <= '1'; -- for one clk cycle on to write into the receive FIFO
                    else
                        rx_buffer_valid <= '0'; -- otherwise rx_buffer data is invalid
                        rx_buffer_last <= '0';
                    end if;
                end if;
                
                -- finish the transmisson or continue the execution
                
                if(clk_toggles = 15) then -- 15 = numbits*2 -1
                     if(tx_payload_valid_buffer = '0') then -- if fifo is empty, next state would be to idle
                        spistate_next <= spi_done;
                     else -- if the tx fifo is not empty, then continue executing spi transfer
                        spistate_next <= spi_execute;
                        first_execute <= '0';
                     end if;
                     
                else -- the transmission of individual 8 bits isn't done here
                    if(spistate_next /= spi_done) then
                        spistate_next <= spi_execute;   
                    else  -- if spistate_next = done then
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
                    rx_buffer_valid <= '1'; -- the last byte that has been received need's to be handles by the done state
                    rx_buffer_last <= '1'; -- when execute is done, the recently read byte is the last byte
                end if;                
            when others =>
                spistate_next <= spi_idle;
			end case;
		end if;
	end process;

end architecture behavioral;

