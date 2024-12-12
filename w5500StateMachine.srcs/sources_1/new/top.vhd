----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.09.2024 10:31:17
-- Design Name: 
-- Module Name: top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
    	port (
		clk:  in  std_logic;
		reset: in  std_logic := '0';
		idle_mode : in std_logic := '1';
		
		-- SPI Interface
		mosi: out std_logic;
		miso: in  std_logic := '0';
		sclk: out std_logic;
		cs:   out std_logic;
		
	    ------- ext payload data input 
	    --ext_pl_tdata : in std_logic_vector(7 downto 0);
	    --ext_pl_tvalid : in std_logic;
	    --ext_pl_tready : out std_logic;
	    --ext_pl_tlast : in std_logic;
	    
	    -- ext payload data output that has been read from w5500 registers
	    --ext_pl_rdata : out std_logic_vector(7 downto 0);
	    --ext_pl_rvalid : out std_logic;
	    --ext_pl_rready : in std_logic := '1';
	    --ext_pl_rlast : out std_logic;
	
		led : out std_logic
	);

end top;

architecture Behavioral of top is


    component transceive_unit
        port (
			clk:    in std_logic;
			reset:  in std_logic;
			mosi:  out std_logic;
			miso:   in std_logic;
			sclk:  out std_logic;
			cs:    out std_logic;
            tdata:   in std_logic_vector (7 downto 0); -- data to send
            TVALID:    in std_logic;
		    TREADY :   out std_logic;
		    tlast : in std_logic;
		    rdata:  out std_logic_vector (7 downto 0); -- data received
		    RVALID :   out std_logic;
		    RREADY :   in std_logic;
		    rlast : out std_logic;
		    spi_busy: out std_logic
		);
	end component;
	
	component w5500_state_machine
	   port(
        clk:    in std_logic;
		reset:  in std_logic;
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
        ext_pl_rready : in std_logic := '1';
		ext_pl_rvalid : out std_logic;
		ext_pl_rlast : out std_logic
        );                       
    end component;
    
--Inputs

    signal rwb: std_logic := '0';
    signal master_reset : std_logic := '0';

--Outputs

    signal spi_busy: std_logic;
    	
-- w5500 data signals
    signal tdata : std_logic_vector(7 downto 0) := (others => '0');
    signal rdata : std_logic_vector(7 downto 0) := (others => '0');
  
    signal TVALID : std_logic;
    signal RVALID : std_logic;
    signal TREADY : std_logic;
    signal RREADY : std_logic;
    signal rlast : std_logic;
    signal tlast : std_logic;
    
    -- these here are actually physical hardware IO signals, but since they can't be propery used yet they're just default internal signals
    signal ext_pl_tdata : std_logic_vector(7 downto 0);
	signal ext_pl_tvalid : std_logic;
	signal ext_pl_tready : std_logic;
	signal ext_pl_tlast : std_logic;
    
    signal ext_pl_rdata : std_logic_vector(7 downto 0);
	signal ext_pl_rvalid : std_logic;
	signal ext_pl_rready : std_logic;
	signal ext_pl_rlast : std_logic;
	
begin

    led <= idle_mode;
    
    -- instantiate the w5500_state_machine
    spi_m : w5500_state_machine
        port map(
        clk => clk,
        reset => reset,
        idle_mode => idle_mode,
        spi_busy => spi_busy,
        
        tdata => tdata,  
        tvalid => tvalid,
		tready => tready,
		tlast => tlast,
		        
		rdata => rdata,  
		rvalid => rvalid,
		rready => rready,
		rlast => rlast,
		
        ext_pl_tdata => ext_pl_tdata,
        ext_pl_tready => ext_pl_tready,
        ext_pl_tvalid => ext_pl_tvalid,
        ext_pl_tlast => ext_pl_tlast,
        
		ext_pl_rdata => ext_pl_rdata,
		ext_pl_rready => ext_pl_rready,
		ext_pl_rvalid => ext_pl_rvalid,
		ext_pl_rlast => ext_pl_rlast

		);
        
        
     txrx_unit : transceive_unit
        port map(
            clk => clk,
			reset => reset,
			mosi => mosi,
			miso => miso,
			sclk => sclk,
			cs => cs,    
            tdata => tdata,
		    rdata => rdata,
		    spi_busy => spi_busy,
		    TVALID => TVALID,
		    TREADY => TREADY,
		    tlast => tlast,
		    RVALID => RVALID,
		    RREADY => RREADY,
		    rlast => rlast
		    );

end Behavioral;
