----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.10.2024 07:41:45
-- Design Name: 
-- Module Name: fifo - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fifo is
  port (
    signal clk : in std_logic;
    signal reset : in std_logic;
    signal fifo_full : out std_logic;
    signal fifo_empty : out std_logic;
  
  );
end fifo;

architecture Behavioral of fifo is

begin

-- Simple handshake for transmitting data from external state machine to SPI Master via TX FIFO
process (clk)
begin
    if rising_edge(clk) then
        if reset = '1' then
            -- Reset logic
            tready_buffer <= '0';
        else
            -- If valid data is available from the state machine
            if TVALID = '1' and tready_buffer = '1' and tx_fifo_full = '0' then
                tx_mem(tx_write_ptr) <= tx_data;  -- Load data from AXI-Stream into FIFO -- handles the write to the txfifo
                tx_write_ptr <= (tx_write_ptr + 1) mod FIFO_DEPTH;  -- Schreibpointer um 1 erhöhen
                tx_count <= tx_count + 1;
            end if;
            
            if tx_fifo_read_en = '1' and prev_tx_fifo_read_en = '0' and tx_fifo_empty = '0' then --handles the read from the tx fifo
                tx_read_ptr <= (tx_read_ptr + 1) mod FIFO_DEPTH;  -- increment readpointer by 1
                tx_count <= tx_count - 1;
            end if;
            
            -- Control tready signal based on FIFO status
            if tx_fifo_full = '0' then
                tready_buffer <= '1';  -- FIFO is ready to accept more data
            else
                tready_buffer <= '0';  -- FIFO is full, stop accepting data
            end if;
        end if;
    end if;
end process;

-- Full- und Empty-Flags for rx and tx fifo's
    tx_fifo_full <= '1' when tx_count >= FIFO_DEPTH else '0';
    rx_fifo_full <= '1' when rx_count >= FIFO_DEPTH else '0';
    tx_fifo_empty <= '1' when tx_count = 0 else '0';
    rx_fifo_empty <= '1' when rx_count = 0 else '0';

end Behavioral;
