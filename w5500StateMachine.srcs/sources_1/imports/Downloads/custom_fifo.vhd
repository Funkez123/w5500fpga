library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity custom_fifo is
  generic (
    g_WIDTH : natural := 8;
    g_DEPTH : natural := 2048
  );
  port (
    i_clk          : in  std_logic;
    i_rst_sync     : in  std_logic; -- Active-High Synchronous Reset

    -- AXI Stream Slave Interface (Write Side)
    s_axis_tvalid  : in  std_logic;
    s_axis_tdata   : in  std_logic_vector(g_WIDTH-1 downto 0);
    s_axis_tlast   : in  std_logic;
    s_axis_tready  : out std_logic;

    -- AXI Stream Master Interface (Read Side)
    m_axis_tvalid  : out std_logic;
    m_axis_tdata   : out std_logic_vector(g_WIDTH-1 downto 0);
    m_axis_tlast   : out std_logic;
    m_axis_tready  : in  std_logic
  );
end custom_fifo;

architecture rtl of custom_fifo is

  -- FIFO Storage
  type t_DATA_ARRAY is array (0 to g_DEPTH-1) of std_logic_vector(g_WIDTH-1 downto 0);
  type t_LAST_ARRAY is array (0 to g_DEPTH-1) of std_logic;
  signal r_FIFO_DATA : t_DATA_ARRAY;
  signal r_FIFO_LAST : t_LAST_ARRAY;

  -- Pointers and Counter
  signal r_WR_INDEX   : integer range 0 to g_DEPTH-1 := 0;
  signal r_RD_INDEX   : integer range 0 to g_DEPTH-1 := 0;
  signal r_FIFO_COUNT : integer range 0 to g_DEPTH   := 0;

  -- Output Registers
  signal r_out_data  : std_logic_vector(g_WIDTH-1 downto 0) := (others => '0');
  signal r_out_last  : std_logic := '0';
  signal r_valid     : std_logic := '0';  -- drives m_axis_tvalid

  -- Internal Ready Signal
  signal s_axis_tready_int : std_logic;

begin

  -- AXIS Slave Interface: Accept data when not full
  s_axis_tready_int <= '1' when r_FIFO_COUNT < g_DEPTH else '0';
  s_axis_tready     <= s_axis_tready_int;

  -- AXIS Master Interface
  m_axis_tvalid <= r_valid;
  m_axis_tdata  <= r_out_data;
  m_axis_tlast  <= r_out_last;

  -- Main control process
  p_fifo : process(i_clk)
    variable v_write_en : boolean;
    variable v_read_en  : boolean;
    variable next_rd_index : integer range 0 to g_DEPTH-1;
  begin
    if rising_edge(i_clk) then
      if i_rst_sync = '1' then
        -- Reset everything
        r_WR_INDEX    <= 0;
        r_RD_INDEX    <= 0;
        r_FIFO_COUNT  <= 0;
        r_out_data    <= (others => '0');
        r_out_last    <= '0';
        r_valid       <= '0';

      else
        -- Determine whether to write/read
        v_write_en := (s_axis_tvalid = '1' and s_axis_tready_int = '1');
        v_read_en  := (r_valid = '1' and m_axis_tready = '1');

        -- Debug: Overflow
        if s_axis_tvalid = '1' and s_axis_tready_int = '0' then
          assert false report "FIFO Overflow: write attempted when full" severity error;
        end if;

        -- Debug: Underflow
        if v_read_en and r_FIFO_COUNT = 0 then
          assert false report "FIFO Underflow: read attempted when empty" severity error;
        end if;

        -- FIFO count management
        if v_write_en and not v_read_en then
          r_FIFO_COUNT <= r_FIFO_COUNT + 1;
        elsif not v_write_en and v_read_en then
          r_FIFO_COUNT <= r_FIFO_COUNT - 1;
        elsif v_write_en and v_read_en then
          r_FIFO_COUNT <= r_FIFO_COUNT;  -- No change
        end if;

        -- Write logic
        if v_write_en then
          r_FIFO_DATA(r_WR_INDEX) <= s_axis_tdata;
          r_FIFO_LAST(r_WR_INDEX) <= s_axis_tlast;
          if r_WR_INDEX = g_DEPTH - 1 then
            r_WR_INDEX <= 0;
          else
            r_WR_INDEX <= r_WR_INDEX + 1;
          end if;
        end if;

        -- Preload output if not valid and FIFO not empty
        if r_valid = '0' and r_FIFO_COUNT > 0 then
          r_out_data <= r_FIFO_DATA(r_RD_INDEX);
          r_out_last <= r_FIFO_LAST(r_RD_INDEX);
          r_valid    <= '1';
        end if;

        -- Read logic: advance pointer after data consumed
        if v_read_en then
          if r_FIFO_COUNT > 1 then
            -- FIFO will not be empty after read
            if r_RD_INDEX = g_DEPTH - 1 then
              next_rd_index := 0;
            else
              next_rd_index := r_RD_INDEX + 1;
            end if;
            r_RD_INDEX <= next_rd_index;
            r_out_data <= r_FIFO_DATA(next_rd_index);
            r_out_last <= r_FIFO_LAST(next_rd_index);
          else
            -- FIFO will be empty after read
            r_valid <= '0';
            if r_RD_INDEX = g_DEPTH - 1 then
              r_RD_INDEX <= 0;
            else
              r_RD_INDEX <= r_RD_INDEX + 1;
            end if;
          end if;
        end if;

      end if;
    end if;
  end process;

end rtl;
