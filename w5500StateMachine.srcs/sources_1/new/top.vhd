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
		
		-- SPI Interface
		mosi: out std_logic;
		miso: in  std_logic := '0';
		sclk: out std_logic;
		cs:   out std_logic
	);

end top;

architecture Behavioral of top is

    component clk_wiz_0
        port(
            clk_in1: in std_logic;
            reset : in std_logic;
            clk_out1 : out std_logic
         );
    end component;
        

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
    
    component ext_data_handler
        port(
            clk         : in  STD_LOGIC;
            rst         : in  STD_LOGIC;
            tdata       : out STD_LOGIC_VECTOR(7 downto 0);
            tvalid      : out STD_LOGIC;
            tlast       : out STD_LOGIC;
            tready      : in  STD_LOGIC;
            rdata       : in  STD_LOGIC_VECTOR(7 downto 0);
            rlast       : in  STD_LOGIC;
            rvalid      : in  STD_LOGIC;
            rready      : out STD_LOGIC
        );
    end component;

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
	signal ext_pl_tvalid : std_logic := '1';
	signal ext_pl_tready : std_logic;
	signal ext_pl_tlast : std_logic:='0';
    
    signal ext_pl_rdata : std_logic_vector(7 downto 0);
	signal ext_pl_rvalid : std_logic;
	signal ext_pl_rready : std_logic := '1';
	signal ext_pl_rlast : std_logic;
		
    --- CLOCK WIZARD
    signal clk_out : std_logic;		


begin
    
    --clock wizard
    clk_wiz : clk_wiz_0
    port map(
        clk_in1 => clk,
        reset => reset,
        clk_out1 => clk_out
    );
    
    
    -- instantiate the w5500_state_machine
    spi_m : w5500_state_machine
        port map(
        clk => clk_out,
        reset => reset,
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
            clk => clk_out,
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

    extdatahandler : ext_data_handler
        port map(
            clk => clk_out,
            rst => reset,
            tdata => ext_pl_tdata,
            tvalid => ext_pl_tvalid,
            tlast => ext_pl_tlast,
            tready => ext_pl_tready,
            rdata => ext_pl_rdata,
            rvalid => ext_pl_rvalid,
            rlast => ext_pl_rlast,
            rready => ext_pl_rready   
        );

end Behavioral;
