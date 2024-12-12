library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pwm is
	generic (
		num_bits: natural := 8;
		div: natural := 1000
	);
	port (
		clk: in  STD_LOGIC;
		cmp_val: in  STD_LOGIC_VECTOR (num_bits-1 downto 0);
		pwm_pin: out STD_LOGIC
	);
end pwm;

architecture arch of pwm is

	signal div_counter: natural range 0 to div-1;
	signal clken: std_logic;
	signal counter: unsigned(num_bits-1 downto 0);

begin

	divider: process (clk) is
	begin
		if rising_edge(clk) then
			if div_counter < div-1 then
				div_counter <= div_counter + 1;
				clken <= '0';
			else
				div_counter <= 0;
				clken <= '1';
			end if;
		end if;
	end process divider;

	pwm_generator: process (clk) is
	begin
		if rising_edge(clk) and clken = '1' then
			counter <= counter + 1;
			if counter < unsigned(cmp_val) then
				pwm_pin <= '1';
			else
				pwm_pin <= '0';
			end if;
		end if;
	end process pwm_generator;

end arch;

