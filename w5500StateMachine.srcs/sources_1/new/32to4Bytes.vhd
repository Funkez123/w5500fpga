library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity shift_through_data is
    Port (
        clk        : in  std_logic;
        rst        : in  std_logic;
        data_in    : in  std_logic_vector(31 downto 0);  -- 32-bit input data
        tx_data    : out std_logic_vector(7 downto 0);   -- 8-bit output data
        load_data  : in  std_logic;                      -- Signal to load new 32-bit data
        next_byte  : in  std_logic;                      -- Signal to shift to the next byte
        done       : out std_logic                       -- Signal to indicate all bytes transmitted
    );
end shift_through_data;

architecture Behavioral of shift_through_data is
    signal byte_index : integer range 0 to 3 := 0;       -- Tracks the current 8-bit segment
    signal data_reg   : std_logic_vector(31 downto 0) := (others => '0');  -- Internal register to hold data
begin

    -- Output the most significant 8 bits based on the current byte index
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                byte_index <= 0;
                data_reg <= (others => '0');
                tx_data <= (others => '0');
                done <= '0';
            else
                if load_data = '1' then
                    -- Load the new 32-bit data when load_data is asserted
                    data_reg <= data_in;
                    byte_index <= 0;
                    done <= '0';
                elsif next_byte = '1' then
                    -- Move to the next byte when next_byte is asserted
                    if byte_index < 3 then
                        byte_index <= byte_index + 1;
                    else
                        byte_index <= 0;  -- Reset index after sending all 4 bytes
                        done <= '1';      -- Indicate that all bytes have been transmitted
                    end if;
                end if;
                
                -- Select the current 8-bit segment based on byte_index
                case byte_index is
                    when 0 =>
                        tx_data <= data_reg(31 downto 24);  -- Most significant byte
                    when 1 =>
                        tx_data <= data_reg(23 downto 16);
                    when 2 =>
                        tx_data <= data_reg(15 downto 8);
                    when 3 =>
                        tx_data <= data_reg(7 downto 0);    -- Least significant byte
                    when others =>
                        tx_data <= (others => '0');
                end case;
            end if;
        end if;
    end process;

end Behavioral;
