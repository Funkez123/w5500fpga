----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.12.2024 10:35:11
-- Design Name: 
-- Module Name: ext_data_handler - Behavioral
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
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ext_data_handler is
    port (
        clk         : in  STD_LOGIC;
        rst         : in  STD_LOGIC;
        tdata       : out STD_LOGIC_VECTOR(7 downto 0);
        tvalid      : out STD_LOGIC;
        tlast       : out STD_LOGIC;
        tready      : in  STD_LOGIC
    );
end ext_data_handler;

architecture Behavioral of ext_data_handler is

    constant INTERVAL   : integer := 10000; -- Interval between transmissions

    signal counter      : integer := 0;
    signal byte_index   : integer range 0 to 255 := 0;
    signal packet_count : integer := 0;  -- Track the number of packets sent
    signal sending      : boolean := false;

begin

    process(clk, rst)
begin
    if rising_edge(clk) then
        if rst = '1' then
            counter      <= 0;
            byte_index   <= 0;
            packet_count <= 0;
            sending      <= false;
            tdata        <= (others => '0');
            tvalid       <= '0';
            tlast        <= '0';
        else
            if(sending = true) then
            -- this just send's the byte index
            tvalid <= '1';
            tlast <= '1';
            tdata <= std_logic_vector(to_unsigned(byte_index,8));
                        
            if(tready = '1') then
                byte_index <= byte_index + 1;
                sending <= false;
            end if;            
        
        else --if sending = false
            tlast <= '0';
            tvalid <= '0';
            if(counter = INTERVAL - 1) then
                counter <= 0;
                sending <= true;
            else
                counter <= counter + 1; 
            end if;
        end if;
    end if;
    end if;
end process;

end Behavioral;
