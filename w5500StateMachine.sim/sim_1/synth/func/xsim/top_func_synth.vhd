-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Sat Dec 14 19:26:50 2024
-- Host        : DESKTOP-FEDBMRF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/danie/w5500StateMachine/w5500StateMachine.sim/sim_1/synth/func/xsim/top_func_synth.vhd
-- Design      : top
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_data_fifo_8bit_xpm_cdc_sync_rst is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of axis_data_fifo_8bit_xpm_cdc_sync_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of axis_data_fifo_8bit_xpm_cdc_sync_rst : entity is 4;
  attribute INIT : string;
  attribute INIT of axis_data_fifo_8bit_xpm_cdc_sync_rst : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of axis_data_fifo_8bit_xpm_cdc_sync_rst : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axis_data_fifo_8bit_xpm_cdc_sync_rst : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of axis_data_fifo_8bit_xpm_cdc_sync_rst : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of axis_data_fifo_8bit_xpm_cdc_sync_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of axis_data_fifo_8bit_xpm_cdc_sync_rst : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of axis_data_fifo_8bit_xpm_cdc_sync_rst : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of axis_data_fifo_8bit_xpm_cdc_sync_rst : entity is "SYNC_RST";
end axis_data_fifo_8bit_xpm_cdc_sync_rst;

architecture STRUCTURE of axis_data_fifo_8bit_xpm_cdc_sync_rst is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axis_data_fifo_8bit_xpm_counter_updn__parameterized0\ is
  port (
    leaving_empty0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ : out STD_LOGIC;
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : out STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\ : out STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_wr_en_i : in STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2\ : in STD_LOGIC;
    clr_full : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axis_data_fifo_8bit_xpm_counter_updn__parameterized0\ : entity is "xpm_counter_updn";
end \axis_data_fifo_8bit_xpm_counter_updn__parameterized0\;

architecture STRUCTURE of \axis_data_fifo_8bit_xpm_counter_updn__parameterized0\ is
  signal \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0\ : STD_LOGIC;
  signal going_full1 : STD_LOGIC;
  signal \^leaving_empty0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4\ : label is "soft_lutpair2";
begin
  \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ <= \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\;
  Q(3 downto 0) <= \^q\(3 downto 0);
  leaving_empty0 <= \^leaving_empty0\;
\count_value_i[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => \count_value_i_reg[0]_0\(1),
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__1_n_0\
    );
\count_value_i[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__1_n_0\
    );
\count_value_i[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__1_n_0\
    );
\count_value_i[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[0]_i_1__1_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[1]_i_1__1_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[2]_i_1__1_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      D => \count_value_i[3]_i_1__1_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_1\(0)
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000FFF0088"
    )
        port map (
      I0 => ram_wr_en_i,
      I1 => going_full1,
      I2 => \^leaving_empty0\,
      I3 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2\,
      I5 => clr_full,
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FABAFBBBFBBBFBBB"
    )
        port map (
      I0 => clr_full,
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2\,
      I2 => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\,
      I3 => \^leaving_empty0\,
      I4 => going_full1,
      I5 => ram_wr_en_i,
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\(3),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0\,
      O => \^leaving_empty0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\(3),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0\,
      O => going_full1
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\(0),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\(0),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0\
    );
\gen_sdpram.xpm_memory_base_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FD"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => ram_empty_i,
      O => \^fsm_sequential_gen_fwft.curr_fwft_state_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axis_data_fifo_8bit_xpm_counter_updn__parameterized0_0\ is
  port (
    ram_empty_i0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_pntr_flags_cc.ram_empty_i_reg\ : in STD_LOGIC;
    leaving_empty0 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i : in STD_LOGIC;
    \gen_pntr_flags_cc.ram_empty_i_reg_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_value_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axis_data_fifo_8bit_xpm_counter_updn__parameterized0_0\ : entity is "xpm_counter_updn";
end \axis_data_fifo_8bit_xpm_counter_updn__parameterized0_0\;

architecture STRUCTURE of \axis_data_fifo_8bit_xpm_counter_updn__parameterized0_0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\ : STD_LOGIC;
  signal going_empty1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1\ : label is "soft_lutpair4";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1_n_0\
    );
\count_value_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[3]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[3]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[3]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[3]_0\(0)
    );
\gen_pntr_flags_cc.ram_empty_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF0088"
    )
        port map (
      I0 => \gen_pntr_flags_cc.ram_empty_i_reg\,
      I1 => going_empty1,
      I2 => leaving_empty0,
      I3 => E(0),
      I4 => ram_empty_i,
      O => ram_empty_i0
    );
\gen_pntr_flags_cc.ram_empty_i_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.ram_empty_i_reg_0\(3),
      I2 => \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\,
      O => going_empty1
    );
\gen_pntr_flags_cc.ram_empty_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.ram_empty_i_reg_0\(0),
      I2 => \gen_pntr_flags_cc.ram_empty_i_reg_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.ram_empty_i_reg_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axis_data_fifo_8bit_xpm_counter_updn__parameterized1\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axis_data_fifo_8bit_xpm_counter_updn__parameterized1\ : entity is "xpm_counter_updn";
end \axis_data_fifo_8bit_xpm_counter_updn__parameterized1\;

architecture STRUCTURE of \axis_data_fifo_8bit_xpm_counter_updn__parameterized1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__2\ : label is "soft_lutpair3";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => \count_value_i_reg[1]_0\(1),
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__2_n_0\
    );
\count_value_i[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[1]_0\(1),
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__2_n_0\
    );
\count_value_i[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__2_n_0\
    );
\count_value_i[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__2_n_0\,
      Q => \^q\(0),
      S => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__2_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__2_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__2_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axis_data_fifo_8bit_xpm_counter_updn__parameterized1_1\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axis_data_fifo_8bit_xpm_counter_updn__parameterized1_1\ : entity is "xpm_counter_updn";
end \axis_data_fifo_8bit_xpm_counter_updn__parameterized1_1\;

architecture STRUCTURE of \axis_data_fifo_8bit_xpm_counter_updn__parameterized1_1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__0\ : label is "soft_lutpair6";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__0_n_0\
    );
\count_value_i[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__0_n_0\
    );
\count_value_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__0_n_0\
    );
\count_value_i[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__0_n_0\,
      Q => \^q\(0),
      S => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__0_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__0_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__0_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_data_fifo_8bit_xpm_fifo_reg_bit is
  port (
    rst_d1 : out STD_LOGIC;
    clr_full : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axis_data_fifo_8bit_xpm_fifo_reg_bit : entity is "xpm_fifo_reg_bit";
end axis_data_fifo_8bit_xpm_fifo_reg_bit;

architecture STRUCTURE of axis_data_fifo_8bit_xpm_fifo_reg_bit is
  signal \^rst_d1\ : STD_LOGIC;
begin
  rst_d1 <= \^rst_d1\;
d_out_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => Q(0),
      Q => \^rst_d1\,
      R => '0'
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rst,
      I1 => \^rst_d1\,
      I2 => Q(0),
      O => clr_full
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_data_fifo_8bit_xpm_fifo_rst is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[3]\ : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axis_data_fifo_8bit_xpm_fifo_rst : entity is "xpm_fifo_rst";
end axis_data_fifo_8bit_xpm_fifo_rst;

architecture STRUCTURE of axis_data_fifo_8bit_xpm_fifo_rst is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_rst_cc.fifo_wr_rst_cc\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \power_on_rst_reg_n_0_[0]\ : STD_LOGIC;
  signal rst_i : STD_LOGIC;
begin
  Q(0) <= \^q\(0);
\gen_rst_cc.fifo_wr_rst_cc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in,
      I1 => rst,
      O => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \gen_rst_cc.fifo_wr_rst_cc\(0),
      S => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_cc.fifo_wr_rst_cc\(0),
      Q => \gen_rst_cc.fifo_wr_rst_cc\(1),
      S => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_cc.fifo_wr_rst_cc\(1),
      Q => \^q\(0),
      S => rst_i
    );
\gen_sdpram.xpm_memory_base_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => wr_en,
      I1 => \count_value_i_reg[3]\,
      I2 => \^q\(0),
      I3 => rst_d1,
      O => E(0)
    );
\power_on_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \power_on_rst_reg_n_0_[0]\,
      R => '0'
    );
\power_on_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \power_on_rst_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_data_fifo_8bit_xpm_memory_base is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 13 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 13 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 13 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 13 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of axis_data_fifo_8bit_xpm_memory_base : entity is 4;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of axis_data_fifo_8bit_xpm_memory_base : entity is 4;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of axis_data_fifo_8bit_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of axis_data_fifo_8bit_xpm_memory_base : entity is 14;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of axis_data_fifo_8bit_xpm_memory_base : entity is 14;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of axis_data_fifo_8bit_xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of axis_data_fifo_8bit_xpm_memory_base : entity is 0;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of axis_data_fifo_8bit_xpm_memory_base : entity is "[7:0]";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of axis_data_fifo_8bit_xpm_memory_base : entity is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of axis_data_fifo_8bit_xpm_memory_base : entity is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of axis_data_fifo_8bit_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of axis_data_fifo_8bit_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of axis_data_fifo_8bit_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of axis_data_fifo_8bit_xpm_memory_base : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of axis_data_fifo_8bit_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of axis_data_fifo_8bit_xpm_memory_base : entity is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of axis_data_fifo_8bit_xpm_memory_base : entity is 224;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of axis_data_fifo_8bit_xpm_memory_base : entity is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of axis_data_fifo_8bit_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of axis_data_fifo_8bit_xpm_memory_base : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axis_data_fifo_8bit_xpm_memory_base : entity is "xpm_memory_base";
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of axis_data_fifo_8bit_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of axis_data_fifo_8bit_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of axis_data_fifo_8bit_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of axis_data_fifo_8bit_xpm_memory_base : entity is 16;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of axis_data_fifo_8bit_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of axis_data_fifo_8bit_xpm_memory_base : entity is "block";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of axis_data_fifo_8bit_xpm_memory_base : entity is 14;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of axis_data_fifo_8bit_xpm_memory_base : entity is 14;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of axis_data_fifo_8bit_xpm_memory_base : entity is 14;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of axis_data_fifo_8bit_xpm_memory_base : entity is 14;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of axis_data_fifo_8bit_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of axis_data_fifo_8bit_xpm_memory_base : entity is 14;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of axis_data_fifo_8bit_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of axis_data_fifo_8bit_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of axis_data_fifo_8bit_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of axis_data_fifo_8bit_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of axis_data_fifo_8bit_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of axis_data_fifo_8bit_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of axis_data_fifo_8bit_xpm_memory_base : entity is "no";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of axis_data_fifo_8bit_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of axis_data_fifo_8bit_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of axis_data_fifo_8bit_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of axis_data_fifo_8bit_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of axis_data_fifo_8bit_xpm_memory_base : entity is 4;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of axis_data_fifo_8bit_xpm_memory_base : entity is 4;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of axis_data_fifo_8bit_xpm_memory_base : entity is 4;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of axis_data_fifo_8bit_xpm_memory_base : entity is 4;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of axis_data_fifo_8bit_xpm_memory_base : entity is 14;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of axis_data_fifo_8bit_xpm_memory_base : entity is 14;
  attribute RAM_DECOMP : string;
  attribute RAM_DECOMP of axis_data_fifo_8bit_xpm_memory_base : entity is "auto";
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of axis_data_fifo_8bit_xpm_memory_base : entity is 14;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of axis_data_fifo_8bit_xpm_memory_base : entity is 14;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of axis_data_fifo_8bit_xpm_memory_base : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of axis_data_fifo_8bit_xpm_memory_base : entity is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of axis_data_fifo_8bit_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of axis_data_fifo_8bit_xpm_memory_base : entity is "";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of axis_data_fifo_8bit_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of axis_data_fifo_8bit_xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of axis_data_fifo_8bit_xpm_memory_base : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of axis_data_fifo_8bit_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of axis_data_fifo_8bit_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of axis_data_fifo_8bit_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of axis_data_fifo_8bit_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of axis_data_fifo_8bit_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of axis_data_fifo_8bit_xpm_memory_base : entity is 14;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of axis_data_fifo_8bit_xpm_memory_base : entity is 14;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of axis_data_fifo_8bit_xpm_memory_base : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of axis_data_fifo_8bit_xpm_memory_base : entity is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of axis_data_fifo_8bit_xpm_memory_base : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of axis_data_fifo_8bit_xpm_memory_base : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of axis_data_fifo_8bit_xpm_memory_base : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of axis_data_fifo_8bit_xpm_memory_base : entity is 16;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of axis_data_fifo_8bit_xpm_memory_base : entity is 16;
end axis_data_fifo_8bit_xpm_memory_base;

architecture STRUCTURE of axis_data_fifo_8bit_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \^doutb\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 9 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 1023;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "p0_d9";
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 8;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ : integer;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 1023;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "p0_d9";
  attribute \MEM.PORTB.DATA_LSB\ : integer;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ : integer;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 8;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "{SYNTH-4 {cell *THIS*} {string 4}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 224;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 8;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  douta(13) <= \<const0>\;
  douta(12) <= \<const0>\;
  douta(11) <= \<const0>\;
  douta(10) <= \<const0>\;
  douta(9) <= \<const0>\;
  douta(8) <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  doutb(13) <= \^doutb\(13);
  doutb(12) <= \<const0>\;
  doutb(11) <= \<const0>\;
  doutb(10) <= \<const0>\;
  doutb(9) <= \<const0>\;
  doutb(8) <= \<const0>\;
  doutb(7 downto 0) <= \^doutb\(7 downto 0);
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_wr_a.gen_word_narrow.mem_reg\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 8) => B"000000",
      ADDRARDADDR(7 downto 4) => addra(3 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 8) => B"000000",
      ADDRBWRADDR(7 downto 4) => addrb(3 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DIADI(15 downto 9) => B"0000000",
      DIADI(8) => dina(13),
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(15 downto 0) => B"0000000111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOADO_UNCONNECTED\(15 downto 0),
      DOBDO(15 downto 9) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOBDO_UNCONNECTED\(15 downto 9),
      DOBDO(8) => \^doutb\(13),
      DOBDO(7 downto 0) => \^doutb\(7 downto 0),
      DOPADOP(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => wea(0),
      ENBWREN => enb,
      REGCEAREGCE => '0',
      REGCEB => regceb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => rstb,
      WEA(1 downto 0) => B"11",
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_data_fifo_8bit_xpm_fifo_base is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 13 downto 0 );
    full : out STD_LOGIC;
    full_n : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 13 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of axis_data_fifo_8bit_xpm_fifo_base : entity is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of axis_data_fifo_8bit_xpm_fifo_base : entity is 3;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of axis_data_fifo_8bit_xpm_fifo_base : entity is 1;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of axis_data_fifo_8bit_xpm_fifo_base : entity is "";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of axis_data_fifo_8bit_xpm_fifo_base : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of axis_data_fifo_8bit_xpm_fifo_base : entity is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of axis_data_fifo_8bit_xpm_fifo_base : entity is "16'b0001000000000000";
  attribute EN_AE : string;
  attribute EN_AE of axis_data_fifo_8bit_xpm_fifo_base : entity is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of axis_data_fifo_8bit_xpm_fifo_base : entity is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of axis_data_fifo_8bit_xpm_fifo_base : entity is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of axis_data_fifo_8bit_xpm_fifo_base : entity is "1'b0";
  attribute EN_PE : string;
  attribute EN_PE of axis_data_fifo_8bit_xpm_fifo_base : entity is "1'b0";
  attribute EN_PF : string;
  attribute EN_PF of axis_data_fifo_8bit_xpm_fifo_base : entity is "1'b0";
  attribute EN_RDC : string;
  attribute EN_RDC of axis_data_fifo_8bit_xpm_fifo_base : entity is "1'b0";
  attribute EN_UF : string;
  attribute EN_UF of axis_data_fifo_8bit_xpm_fifo_base : entity is "1'b0";
  attribute EN_WACK : string;
  attribute EN_WACK of axis_data_fifo_8bit_xpm_fifo_base : entity is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of axis_data_fifo_8bit_xpm_fifo_base : entity is "1'b0";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of axis_data_fifo_8bit_xpm_fifo_base : entity is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of axis_data_fifo_8bit_xpm_fifo_base : entity is 2;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of axis_data_fifo_8bit_xpm_fifo_base : entity is 2;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of axis_data_fifo_8bit_xpm_fifo_base : entity is 16;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of axis_data_fifo_8bit_xpm_fifo_base : entity is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of axis_data_fifo_8bit_xpm_fifo_base : entity is 224;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of axis_data_fifo_8bit_xpm_fifo_base : entity is 16;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of axis_data_fifo_8bit_xpm_fifo_base : entity is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of axis_data_fifo_8bit_xpm_fifo_base : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axis_data_fifo_8bit_xpm_fifo_base : entity is "xpm_fifo_base";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of axis_data_fifo_8bit_xpm_fifo_base : entity is 3;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of axis_data_fifo_8bit_xpm_fifo_base : entity is 11;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of axis_data_fifo_8bit_xpm_fifo_base : entity is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of axis_data_fifo_8bit_xpm_fifo_base : entity is 9;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of axis_data_fifo_8bit_xpm_fifo_base : entity is 11;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of axis_data_fifo_8bit_xpm_fifo_base : entity is 5;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of axis_data_fifo_8bit_xpm_fifo_base : entity is 5;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of axis_data_fifo_8bit_xpm_fifo_base : entity is 11;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of axis_data_fifo_8bit_xpm_fifo_base : entity is 5;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of axis_data_fifo_8bit_xpm_fifo_base : entity is 5;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of axis_data_fifo_8bit_xpm_fifo_base : entity is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of axis_data_fifo_8bit_xpm_fifo_base : entity is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of axis_data_fifo_8bit_xpm_fifo_base : entity is 4;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of axis_data_fifo_8bit_xpm_fifo_base : entity is 14;
  attribute READ_MODE : integer;
  attribute READ_MODE of axis_data_fifo_8bit_xpm_fifo_base : entity is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of axis_data_fifo_8bit_xpm_fifo_base : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of axis_data_fifo_8bit_xpm_fifo_base : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of axis_data_fifo_8bit_xpm_fifo_base : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of axis_data_fifo_8bit_xpm_fifo_base : entity is 0;
  attribute USE_ADV_FEATURES : integer;
  attribute USE_ADV_FEATURES of axis_data_fifo_8bit_xpm_fifo_base : entity is 825241648;
  attribute VERSION : integer;
  attribute VERSION of axis_data_fifo_8bit_xpm_fifo_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of axis_data_fifo_8bit_xpm_fifo_base : entity is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of axis_data_fifo_8bit_xpm_fifo_base : entity is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of axis_data_fifo_8bit_xpm_fifo_base : entity is 14;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of axis_data_fifo_8bit_xpm_fifo_base : entity is 5;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of axis_data_fifo_8bit_xpm_fifo_base : entity is 5;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of axis_data_fifo_8bit_xpm_fifo_base : entity is 4;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of axis_data_fifo_8bit_xpm_fifo_base : entity is 4;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of axis_data_fifo_8bit_xpm_fifo_base : entity is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of axis_data_fifo_8bit_xpm_fifo_base : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of axis_data_fifo_8bit_xpm_fifo_base : entity is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of axis_data_fifo_8bit_xpm_fifo_base : entity is 3;
  attribute invalid : integer;
  attribute invalid of axis_data_fifo_8bit_xpm_fifo_base : entity is 0;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of axis_data_fifo_8bit_xpm_fifo_base : entity is "soft";
  attribute stage1_valid : integer;
  attribute stage1_valid of axis_data_fifo_8bit_xpm_fifo_base : entity is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of axis_data_fifo_8bit_xpm_fifo_base : entity is 1;
end axis_data_fifo_8bit_xpm_fifo_base;

architecture STRUCTURE of axis_data_fifo_8bit_xpm_fifo_base is
  signal \<const0>\ : STD_LOGIC;
  signal clr_full : STD_LOGIC;
  signal \count_value_i__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data_valid_fwft1 : STD_LOGIC;
  signal \^dout\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \gen_fwft.empty_fwft_i_reg_n_0\ : STD_LOGIC;
  signal \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\ : STD_LOGIC;
  signal \gen_fwft.ram_regout_en\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\ : STD_LOGIC;
  signal leaving_empty0 : STD_LOGIC;
  signal \next_fwft_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ram_empty_i : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal ram_wr_en_i : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rdp_inst_n_5 : STD_LOGIC;
  signal rdp_inst_n_6 : STD_LOGIC;
  signal rdp_inst_n_7 : STD_LOGIC;
  signal rdpp1_inst_n_0 : STD_LOGIC;
  signal rdpp1_inst_n_1 : STD_LOGIC;
  signal rdpp1_inst_n_2 : STD_LOGIC;
  signal rdpp1_inst_n_3 : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xpm_fifo_rst_inst_n_1 : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \NLW_gen_sdpram.xpm_memory_base_inst_doutb_UNCONNECTED\ : STD_LOGIC_VECTOR ( 12 downto 8 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\ : label is "soft_lutpair7";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 14;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 14;
  attribute CASCADE_HEIGHT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of \gen_sdpram.xpm_memory_base_inst\ : label is "[7:0]";
  attribute ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute KEEP_HIERARCHY of \gen_sdpram.xpm_memory_base_inst\ : label is "soft";
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE\ : boolean;
  attribute \MEM.ADDRESS_SPACE\ of \gen_sdpram.xpm_memory_base_inst\ : label is std.standard.true;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ : integer;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute \MEM.ADDRESS_SPACE_END\ : integer;
  attribute \MEM.ADDRESS_SPACE_END\ of \gen_sdpram.xpm_memory_base_inst\ : label is 1023;
  attribute \MEM.CORE_MEMORY_WIDTH\ : integer;
  attribute \MEM.CORE_MEMORY_WIDTH\ of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 224;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 16;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "block";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 14;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 14;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 14;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 14;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 14;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 14;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 14;
  attribute RAM_DECOMP : string;
  attribute RAM_DECOMP of \gen_sdpram.xpm_memory_base_inst\ : label is "auto";
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 14;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 14;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute SIM_ASSERT_CHK of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute VERSION of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 14;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 14;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 16;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 16;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  dbiterr <= \<const0>\;
  dout(13) <= \^dout\(13);
  dout(12) <= \<const0>\;
  dout(11) <= \<const0>\;
  dout(10) <= \<const0>\;
  dout(9) <= \<const0>\;
  dout(8) <= \<const0>\;
  dout(7 downto 0) <= \^dout\(7 downto 0);
  empty <= \<const0>\;
  full <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(4) <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(4) <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
  wr_rst_busy <= \<const0>\;
\FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A85"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => ram_empty_i,
      O => \next_fwft_state__0\(0)
    );
\FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3FF0"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => curr_fwft_state(0),
      O => \next_fwft_state__0\(1)
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \next_fwft_state__0\(0),
      Q => curr_fwft_state(0),
      R => xpm_fifo_rst_inst_n_1
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \next_fwft_state__0\(1),
      Q => curr_fwft_state(1),
      R => xpm_fifo_rst_inst_n_1
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_fwft.empty_fwft_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F380"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => \gen_fwft.empty_fwft_i_reg_n_0\,
      O => data_valid_fwft1
    );
\gen_fwft.empty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => data_valid_fwft1,
      Q => \gen_fwft.empty_fwft_i_reg_n_0\,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3575"
    )
        port map (
      I0 => \gen_fwft.empty_fwft_i_reg_n_0\,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => rd_en,
      O => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\,
      Q => data_valid,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rdp_inst_n_5,
      Q => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rdp_inst_n_7,
      Q => full_n,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.ram_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_i,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.axis_data_fifo_8bit_xpm_memory_base
     port map (
      addra(3 downto 0) => wr_pntr_ext(3 downto 0),
      addrb(3 downto 0) => rd_pntr_ext(3 downto 0),
      clka => wr_clk,
      clkb => '0',
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\,
      dina(13) => din(13),
      dina(12 downto 8) => B"00000",
      dina(7 downto 0) => din(7 downto 0),
      dinb(13 downto 0) => B"00000000000000",
      douta(13 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(13 downto 0),
      doutb(13) => \^dout\(13),
      doutb(12 downto 8) => \NLW_gen_sdpram.xpm_memory_base_inst_doutb_UNCONNECTED\(12 downto 8),
      doutb(7 downto 0) => \^dout\(7 downto 0),
      ena => '0',
      enb => rdp_inst_n_6,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => \gen_fwft.ram_regout_en\,
      rsta => '0',
      rstb => xpm_fifo_rst_inst_n_1,
      sbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\,
      sleep => sleep,
      wea(0) => ram_wr_en_i,
      web(0) => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => curr_fwft_state(1),
      I2 => rd_en,
      O => \gen_fwft.ram_regout_en\
    );
rdp_inst: entity work.\axis_data_fifo_8bit_xpm_counter_updn__parameterized0\
     port map (
      \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ => rdp_inst_n_6,
      Q(3 downto 0) => rd_pntr_ext(3 downto 0),
      clr_full => clr_full,
      \count_value_i_reg[0]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[0]_1\(0) => xpm_fifo_rst_inst_n_1,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ => rdp_inst_n_5,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\ => rdp_inst_n_7,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\(3 downto 0) => wr_pntr_ext(3 downto 0),
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg\(3 downto 0) => \count_value_i__0\(3 downto 0),
      leaving_empty0 => leaving_empty0,
      ram_empty_i => ram_empty_i,
      ram_wr_en_i => ram_wr_en_i,
      rd_en => rd_en,
      wr_clk => wr_clk
    );
rdpp1_inst: entity work.\axis_data_fifo_8bit_xpm_counter_updn__parameterized1\
     port map (
      E(0) => rdp_inst_n_6,
      Q(3) => rdpp1_inst_n_0,
      Q(2) => rdpp1_inst_n_1,
      Q(1) => rdpp1_inst_n_2,
      Q(0) => rdpp1_inst_n_3,
      \count_value_i_reg[0]_0\(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[1]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      rd_en => rd_en,
      wr_clk => wr_clk
    );
rst_d1_inst: entity work.axis_data_fifo_8bit_xpm_fifo_reg_bit
     port map (
      Q(0) => xpm_fifo_rst_inst_n_1,
      clr_full => clr_full,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk
    );
wrp_inst: entity work.\axis_data_fifo_8bit_xpm_counter_updn__parameterized0_0\
     port map (
      E(0) => ram_wr_en_i,
      Q(3 downto 0) => wr_pntr_ext(3 downto 0),
      \count_value_i_reg[3]_0\(0) => xpm_fifo_rst_inst_n_1,
      \gen_pntr_flags_cc.ram_empty_i_reg\ => rdp_inst_n_6,
      \gen_pntr_flags_cc.ram_empty_i_reg_0\(3) => rdpp1_inst_n_0,
      \gen_pntr_flags_cc.ram_empty_i_reg_0\(2) => rdpp1_inst_n_1,
      \gen_pntr_flags_cc.ram_empty_i_reg_0\(1) => rdpp1_inst_n_2,
      \gen_pntr_flags_cc.ram_empty_i_reg_0\(0) => rdpp1_inst_n_3,
      leaving_empty0 => leaving_empty0,
      ram_empty_i => ram_empty_i,
      ram_empty_i0 => ram_empty_i0,
      wr_clk => wr_clk
    );
wrpp1_inst: entity work.\axis_data_fifo_8bit_xpm_counter_updn__parameterized1_1\
     port map (
      E(0) => ram_wr_en_i,
      Q(3 downto 0) => \count_value_i__0\(3 downto 0),
      \count_value_i_reg[0]_0\(0) => xpm_fifo_rst_inst_n_1,
      wr_clk => wr_clk
    );
xpm_fifo_rst_inst: entity work.axis_data_fifo_8bit_xpm_fifo_rst
     port map (
      E(0) => ram_wr_en_i,
      Q(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[3]\ => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0\,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_data_fifo_8bit_xpm_fifo_axis is
  port (
    s_aresetn : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    prog_full_axis : out STD_LOGIC;
    wr_data_count_axis : out STD_LOGIC_VECTOR ( 4 downto 0 );
    almost_full_axis : out STD_LOGIC;
    prog_empty_axis : out STD_LOGIC;
    rd_data_count_axis : out STD_LOGIC_VECTOR ( 4 downto 0 );
    almost_empty_axis : out STD_LOGIC;
    injectsbiterr_axis : in STD_LOGIC;
    injectdbiterr_axis : in STD_LOGIC;
    sbiterr_axis : out STD_LOGIC;
    dbiterr_axis : out STD_LOGIC
  );
  attribute AXIS_DATA_WIDTH : integer;
  attribute AXIS_DATA_WIDTH of axis_data_fifo_8bit_xpm_fifo_axis : entity is 14;
  attribute AXIS_FINAL_DATA_WIDTH : integer;
  attribute AXIS_FINAL_DATA_WIDTH of axis_data_fifo_8bit_xpm_fifo_axis : entity is 14;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of axis_data_fifo_8bit_xpm_fifo_axis : entity is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of axis_data_fifo_8bit_xpm_fifo_axis : entity is 3;
  attribute CLOCKING_MODE : string;
  attribute CLOCKING_MODE of axis_data_fifo_8bit_xpm_fifo_axis : entity is "common_clock";
  attribute ECC_MODE : string;
  attribute ECC_MODE of axis_data_fifo_8bit_xpm_fifo_axis : entity is "no_ecc";
  attribute EN_ADV_FEATURE_AXIS : string;
  attribute EN_ADV_FEATURE_AXIS of axis_data_fifo_8bit_xpm_fifo_axis : entity is "16'b0001000000000000";
  attribute EN_ADV_FEATURE_AXIS_INT : string;
  attribute EN_ADV_FEATURE_AXIS_INT of axis_data_fifo_8bit_xpm_fifo_axis : entity is "16'b0001000000000000";
  attribute EN_ALMOST_EMPTY_INT : string;
  attribute EN_ALMOST_EMPTY_INT of axis_data_fifo_8bit_xpm_fifo_axis : entity is "1'b0";
  attribute EN_ALMOST_FULL_INT : string;
  attribute EN_ALMOST_FULL_INT of axis_data_fifo_8bit_xpm_fifo_axis : entity is "1'b0";
  attribute EN_DATA_VALID_INT : string;
  attribute EN_DATA_VALID_INT of axis_data_fifo_8bit_xpm_fifo_axis : entity is "1'b1";
  attribute FIFO_DEPTH : integer;
  attribute FIFO_DEPTH of axis_data_fifo_8bit_xpm_fifo_axis : entity is 16;
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of axis_data_fifo_8bit_xpm_fifo_axis : entity is "block";
  attribute LOG_DEPTH_AXIS : integer;
  attribute LOG_DEPTH_AXIS of axis_data_fifo_8bit_xpm_fifo_axis : entity is 4;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axis_data_fifo_8bit_xpm_fifo_axis : entity is "xpm_fifo_axis";
  attribute PACKET_FIFO : string;
  attribute PACKET_FIFO of axis_data_fifo_8bit_xpm_fifo_axis : entity is "false";
  attribute PKT_SIZE_LT8 : string;
  attribute PKT_SIZE_LT8 of axis_data_fifo_8bit_xpm_fifo_axis : entity is "1'b0";
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of axis_data_fifo_8bit_xpm_fifo_axis : entity is 5;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of axis_data_fifo_8bit_xpm_fifo_axis : entity is 11;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of axis_data_fifo_8bit_xpm_fifo_axis : entity is 1;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of axis_data_fifo_8bit_xpm_fifo_axis : entity is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of axis_data_fifo_8bit_xpm_fifo_axis : entity is 2;
  attribute P_PKT_MODE : integer;
  attribute P_PKT_MODE of axis_data_fifo_8bit_xpm_fifo_axis : entity is 0;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of axis_data_fifo_8bit_xpm_fifo_axis : entity is 5;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of axis_data_fifo_8bit_xpm_fifo_axis : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of axis_data_fifo_8bit_xpm_fifo_axis : entity is 0;
  attribute TDATA_OFFSET : integer;
  attribute TDATA_OFFSET of axis_data_fifo_8bit_xpm_fifo_axis : entity is 8;
  attribute TDATA_WIDTH : integer;
  attribute TDATA_WIDTH of axis_data_fifo_8bit_xpm_fifo_axis : entity is 8;
  attribute TDEST_OFFSET : integer;
  attribute TDEST_OFFSET of axis_data_fifo_8bit_xpm_fifo_axis : entity is 12;
  attribute TDEST_WIDTH : integer;
  attribute TDEST_WIDTH of axis_data_fifo_8bit_xpm_fifo_axis : entity is 1;
  attribute TID_OFFSET : integer;
  attribute TID_OFFSET of axis_data_fifo_8bit_xpm_fifo_axis : entity is 11;
  attribute TID_WIDTH : integer;
  attribute TID_WIDTH of axis_data_fifo_8bit_xpm_fifo_axis : entity is 1;
  attribute TKEEP_OFFSET : integer;
  attribute TKEEP_OFFSET of axis_data_fifo_8bit_xpm_fifo_axis : entity is 10;
  attribute TSTRB_OFFSET : integer;
  attribute TSTRB_OFFSET of axis_data_fifo_8bit_xpm_fifo_axis : entity is 9;
  attribute TUSER_MAX_WIDTH : integer;
  attribute TUSER_MAX_WIDTH of axis_data_fifo_8bit_xpm_fifo_axis : entity is 4083;
  attribute TUSER_OFFSET : integer;
  attribute TUSER_OFFSET of axis_data_fifo_8bit_xpm_fifo_axis : entity is 13;
  attribute TUSER_WIDTH : integer;
  attribute TUSER_WIDTH of axis_data_fifo_8bit_xpm_fifo_axis : entity is 1;
  attribute USE_ADV_FEATURES : integer;
  attribute USE_ADV_FEATURES of axis_data_fifo_8bit_xpm_fifo_axis : entity is 825241648;
  attribute USE_ADV_FEATURES_INT : integer;
  attribute USE_ADV_FEATURES_INT of axis_data_fifo_8bit_xpm_fifo_axis : entity is 825241648;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of axis_data_fifo_8bit_xpm_fifo_axis : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of axis_data_fifo_8bit_xpm_fifo_axis : entity is "TRUE";
  attribute dont_touch : string;
  attribute dont_touch of axis_data_fifo_8bit_xpm_fifo_axis : entity is "true";
end axis_data_fifo_8bit_xpm_fifo_axis;

architecture STRUCTURE of axis_data_fifo_8bit_xpm_fifo_axis is
  signal \<const0>\ : STD_LOGIC;
  signal \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal rst_axis : STD_LOGIC;
  signal xpm_fifo_base_inst_i_1_n_0 : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 12 downto 8 );
  signal NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 4;
  attribute INIT : string;
  attribute INIT of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 1;
  attribute SIM_ASSERT_CHK of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \gaxis_rst_sync.xpm_cdc_sync_rst_inst\ : label is "TRUE";
  attribute CASCADE_HEIGHT of xpm_fifo_base_inst : label is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of xpm_fifo_base_inst : label is 3;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of xpm_fifo_base_inst : label is 1;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of xpm_fifo_base_inst : label is "";
  attribute ECC_MODE_integer : integer;
  attribute ECC_MODE_integer of xpm_fifo_base_inst : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of xpm_fifo_base_inst : label is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of xpm_fifo_base_inst : label is "16'b0001000000000000";
  attribute EN_AE : string;
  attribute EN_AE of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_PE : string;
  attribute EN_PE of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_PF : string;
  attribute EN_PF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_RDC : string;
  attribute EN_RDC of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_UF : string;
  attribute EN_UF of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_WACK : string;
  attribute EN_WACK of xpm_fifo_base_inst : label is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of xpm_fifo_base_inst : label is "1'b0";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of xpm_fifo_base_inst : label is "1'b0";
  attribute FIFO_MEMORY_TYPE_integer : integer;
  attribute FIFO_MEMORY_TYPE_integer of xpm_fifo_base_inst : label is 2;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of xpm_fifo_base_inst : label is 2;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of xpm_fifo_base_inst : label is 16;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of xpm_fifo_base_inst : label is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of xpm_fifo_base_inst : label is 224;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of xpm_fifo_base_inst : label is 16;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of xpm_fifo_base_inst : label is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of xpm_fifo_base_inst : label is "1'b1";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of xpm_fifo_base_inst : label is "soft";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of xpm_fifo_base_inst : label is 3;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of xpm_fifo_base_inst : label is 11;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of xpm_fifo_base_inst : label is 9;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of xpm_fifo_base_inst : label is 11;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PROG_EMPTY_THRESH of xpm_fifo_base_inst : label is 5;
  attribute PROG_FULL_THRESH of xpm_fifo_base_inst : label is 11;
  attribute RD_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 5;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 5;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of xpm_fifo_base_inst : label is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of xpm_fifo_base_inst : label is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of xpm_fifo_base_inst : label is 4;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of xpm_fifo_base_inst : label is 14;
  attribute READ_MODE : integer;
  attribute READ_MODE of xpm_fifo_base_inst : label is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of xpm_fifo_base_inst : label is 1;
  attribute RELATED_CLOCKS of xpm_fifo_base_inst : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of xpm_fifo_base_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_fifo_base_inst : label is 0;
  attribute USE_ADV_FEATURES of xpm_fifo_base_inst : label is 825241648;
  attribute VERSION of xpm_fifo_base_inst : label is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of xpm_fifo_base_inst : label is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of xpm_fifo_base_inst : label is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of xpm_fifo_base_inst : label is 14;
  attribute WR_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 5;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 5;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of xpm_fifo_base_inst : label is 4;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of xpm_fifo_base_inst : label is 4;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of xpm_fifo_base_inst : label is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of xpm_fifo_base_inst : label is 4;
  attribute XPM_MODULE of xpm_fifo_base_inst : label is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of xpm_fifo_base_inst : label is 3;
  attribute invalid : integer;
  attribute invalid of xpm_fifo_base_inst : label is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of xpm_fifo_base_inst : label is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of xpm_fifo_base_inst : label is 1;
begin
  almost_empty_axis <= \<const0>\;
  almost_full_axis <= \<const0>\;
  dbiterr_axis <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
  m_axis_tvalid <= \^m_axis_tvalid\;
  prog_empty_axis <= \<const0>\;
  prog_full_axis <= \<const0>\;
  rd_data_count_axis(4) <= \<const0>\;
  rd_data_count_axis(3) <= \<const0>\;
  rd_data_count_axis(2) <= \<const0>\;
  rd_data_count_axis(1) <= \<const0>\;
  rd_data_count_axis(0) <= \<const0>\;
  sbiterr_axis <= \<const0>\;
  wr_data_count_axis(4) <= \<const0>\;
  wr_data_count_axis(3) <= \<const0>\;
  wr_data_count_axis(2) <= \<const0>\;
  wr_data_count_axis(1) <= \<const0>\;
  wr_data_count_axis(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gaxis_rst_sync.xpm_cdc_sync_rst_inst\: entity work.axis_data_fifo_8bit_xpm_cdc_sync_rst
     port map (
      dest_clk => s_aclk,
      dest_rst => rst_axis,
      src_rst => \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0\
    );
\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_aresetn,
      O => \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0\
    );
xpm_fifo_base_inst: entity work.axis_data_fifo_8bit_xpm_fifo_base
     port map (
      almost_empty => NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED,
      almost_full => NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED,
      data_valid => \^m_axis_tvalid\,
      dbiterr => NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED,
      din(13) => s_axis_tlast,
      din(12 downto 8) => B"00000",
      din(7 downto 0) => s_axis_tdata(7 downto 0),
      dout(13) => m_axis_tlast,
      dout(12 downto 8) => NLW_xpm_fifo_base_inst_dout_UNCONNECTED(12 downto 8),
      dout(7 downto 0) => m_axis_tdata(7 downto 0),
      empty => NLW_xpm_fifo_base_inst_empty_UNCONNECTED,
      full => NLW_xpm_fifo_base_inst_full_UNCONNECTED,
      full_n => s_axis_tready,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => NLW_xpm_fifo_base_inst_overflow_UNCONNECTED,
      prog_empty => NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED,
      prog_full => NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED,
      rd_clk => '0',
      rd_data_count(4 downto 0) => NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED(4 downto 0),
      rd_en => xpm_fifo_base_inst_i_1_n_0,
      rd_rst_busy => NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED,
      rst => rst_axis,
      sbiterr => NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED,
      sleep => '0',
      underflow => NLW_xpm_fifo_base_inst_underflow_UNCONNECTED,
      wr_ack => NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED,
      wr_clk => s_aclk,
      wr_data_count(4 downto 0) => NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED(4 downto 0),
      wr_en => s_axis_tvalid,
      wr_rst_busy => NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED
    );
xpm_fifo_base_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axis_tvalid\,
      I1 => m_axis_tready,
      O => xpm_fifo_base_inst_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top is
  port (
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclken : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    almost_full : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_aclken : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    almost_empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute C_ACLKEN_CONV_MODE : integer;
  attribute C_ACLKEN_CONV_MODE of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 0;
  attribute C_AXIS_SIGNAL_SET : integer;
  attribute C_AXIS_SIGNAL_SET of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 19;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 1;
  attribute C_ECC_MODE : integer;
  attribute C_ECC_MODE of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is "zynq";
  attribute C_FIFO_DEPTH : integer;
  attribute C_FIFO_DEPTH of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 16;
  attribute C_FIFO_MEMORY_TYPE : string;
  attribute C_FIFO_MEMORY_TYPE of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is "block";
  attribute C_FIFO_MODE : integer;
  attribute C_FIFO_MODE of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 1;
  attribute C_IS_ACLK_ASYNC : integer;
  attribute C_IS_ACLK_ASYNC of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 0;
  attribute C_PROG_EMPTY_THRESH : integer;
  attribute C_PROG_EMPTY_THRESH of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 5;
  attribute C_PROG_FULL_THRESH : integer;
  attribute C_PROG_FULL_THRESH of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 11;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 3;
  attribute C_USE_ADV_FEATURES : integer;
  attribute C_USE_ADV_FEATURES of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 825241648;
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 1;
  attribute LP_CDC_SYNC_STAGES : integer;
  attribute LP_CDC_SYNC_STAGES of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 3;
  attribute LP_CLOCKING_MODE : string;
  attribute LP_CLOCKING_MODE of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is "common_clock";
  attribute LP_ECC_MODE : string;
  attribute LP_ECC_MODE of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is "no_ecc";
  attribute LP_FIFO_DEPTH : integer;
  attribute LP_FIFO_DEPTH of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 16;
  attribute LP_FIFO_MEMORY_TYPE : string;
  attribute LP_FIFO_MEMORY_TYPE of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is "block";
  attribute LP_M_ACLKEN_CAN_TOGGLE : integer;
  attribute LP_M_ACLKEN_CAN_TOGGLE of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 0;
  attribute LP_PACKET_FIFO : string;
  attribute LP_PACKET_FIFO of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is "false";
  attribute LP_PROG_EMPTY_THRESH : integer;
  attribute LP_PROG_EMPTY_THRESH of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 5;
  attribute LP_PROG_FULL_THRESH : integer;
  attribute LP_PROG_FULL_THRESH of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 11;
  attribute LP_RD_DATA_COUNT_WIDTH : integer;
  attribute LP_RD_DATA_COUNT_WIDTH of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 5;
  attribute LP_RELATED_CLOCKS : integer;
  attribute LP_RELATED_CLOCKS of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 0;
  attribute LP_S_ACLKEN_CAN_TOGGLE : integer;
  attribute LP_S_ACLKEN_CAN_TOGGLE of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 0;
  attribute LP_TDATA_WIDTH : integer;
  attribute LP_TDATA_WIDTH of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 8;
  attribute LP_TDEST_WIDTH : integer;
  attribute LP_TDEST_WIDTH of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 1;
  attribute LP_TID_WIDTH : integer;
  attribute LP_TID_WIDTH of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 1;
  attribute LP_TUSER_WIDTH : integer;
  attribute LP_TUSER_WIDTH of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 1;
  attribute LP_USE_ADV_FEATURES : integer;
  attribute LP_USE_ADV_FEATURES of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 825241648;
  attribute LP_WR_DATA_COUNT_WIDTH : integer;
  attribute LP_WR_DATA_COUNT_WIDTH of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is 5;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top : entity is "axis_data_fifo_v2_0_11_top";
end axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top;

architecture STRUCTURE of axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top is
  signal \<const0>\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_16\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_17\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_18\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_19\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_20\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_21\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_22\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_23\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_24\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_25\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_26\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_27\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_28\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_29\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_30\ : STD_LOGIC;
  signal \gen_fifo.xpm_fifo_axis_inst_n_31\ : STD_LOGIC;
  signal \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tdest_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tid_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tkeep_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tstrb_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tuser_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute AXIS_DATA_WIDTH : integer;
  attribute AXIS_DATA_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 14;
  attribute AXIS_FINAL_DATA_WIDTH : integer;
  attribute AXIS_FINAL_DATA_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 14;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of \gen_fifo.xpm_fifo_axis_inst\ : label is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of \gen_fifo.xpm_fifo_axis_inst\ : label is 3;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_fifo.xpm_fifo_axis_inst\ : label is 0;
  attribute ECC_MODE : integer;
  attribute ECC_MODE of \gen_fifo.xpm_fifo_axis_inst\ : label is 0;
  attribute EN_ADV_FEATURE_AXIS : string;
  attribute EN_ADV_FEATURE_AXIS of \gen_fifo.xpm_fifo_axis_inst\ : label is "16'b0001000000000000";
  attribute EN_ADV_FEATURE_AXIS_INT : string;
  attribute EN_ADV_FEATURE_AXIS_INT of \gen_fifo.xpm_fifo_axis_inst\ : label is "16'b0001000000000000";
  attribute EN_ALMOST_EMPTY_INT : string;
  attribute EN_ALMOST_EMPTY_INT of \gen_fifo.xpm_fifo_axis_inst\ : label is "1'b0";
  attribute EN_ALMOST_FULL_INT : string;
  attribute EN_ALMOST_FULL_INT of \gen_fifo.xpm_fifo_axis_inst\ : label is "1'b0";
  attribute EN_DATA_VALID_INT : string;
  attribute EN_DATA_VALID_INT of \gen_fifo.xpm_fifo_axis_inst\ : label is "1'b1";
  attribute FIFO_DEPTH : integer;
  attribute FIFO_DEPTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 16;
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of \gen_fifo.xpm_fifo_axis_inst\ : label is 0;
  attribute LOG_DEPTH_AXIS : integer;
  attribute LOG_DEPTH_AXIS of \gen_fifo.xpm_fifo_axis_inst\ : label is 4;
  attribute PACKET_FIFO : string;
  attribute PACKET_FIFO of \gen_fifo.xpm_fifo_axis_inst\ : label is "false";
  attribute PKT_SIZE_LT8 : string;
  attribute PKT_SIZE_LT8 of \gen_fifo.xpm_fifo_axis_inst\ : label is "1'b0";
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of \gen_fifo.xpm_fifo_axis_inst\ : label is 5;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of \gen_fifo.xpm_fifo_axis_inst\ : label is 11;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of \gen_fifo.xpm_fifo_axis_inst\ : label is 1;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of \gen_fifo.xpm_fifo_axis_inst\ : label is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of \gen_fifo.xpm_fifo_axis_inst\ : label is 2;
  attribute P_PKT_MODE : integer;
  attribute P_PKT_MODE of \gen_fifo.xpm_fifo_axis_inst\ : label is 0;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 5;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of \gen_fifo.xpm_fifo_axis_inst\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \gen_fifo.xpm_fifo_axis_inst\ : label is 0;
  attribute TDATA_OFFSET : integer;
  attribute TDATA_OFFSET of \gen_fifo.xpm_fifo_axis_inst\ : label is 8;
  attribute TDATA_WIDTH : integer;
  attribute TDATA_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 8;
  attribute TDEST_OFFSET : integer;
  attribute TDEST_OFFSET of \gen_fifo.xpm_fifo_axis_inst\ : label is 12;
  attribute TDEST_WIDTH : integer;
  attribute TDEST_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 1;
  attribute TID_OFFSET : integer;
  attribute TID_OFFSET of \gen_fifo.xpm_fifo_axis_inst\ : label is 11;
  attribute TID_WIDTH : integer;
  attribute TID_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 1;
  attribute TKEEP_OFFSET : integer;
  attribute TKEEP_OFFSET of \gen_fifo.xpm_fifo_axis_inst\ : label is 10;
  attribute TSTRB_OFFSET : integer;
  attribute TSTRB_OFFSET of \gen_fifo.xpm_fifo_axis_inst\ : label is 9;
  attribute TUSER_MAX_WIDTH : integer;
  attribute TUSER_MAX_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 4083;
  attribute TUSER_OFFSET : integer;
  attribute TUSER_OFFSET of \gen_fifo.xpm_fifo_axis_inst\ : label is 13;
  attribute TUSER_WIDTH : integer;
  attribute TUSER_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 1;
  attribute USE_ADV_FEATURES : integer;
  attribute USE_ADV_FEATURES of \gen_fifo.xpm_fifo_axis_inst\ : label is 825241648;
  attribute USE_ADV_FEATURES_INT : integer;
  attribute USE_ADV_FEATURES_INT of \gen_fifo.xpm_fifo_axis_inst\ : label is 825241648;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of \gen_fifo.xpm_fifo_axis_inst\ : label is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \gen_fifo.xpm_fifo_axis_inst\ : label is "TRUE";
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  axis_rd_data_count(31) <= \<const0>\;
  axis_rd_data_count(30) <= \<const0>\;
  axis_rd_data_count(29) <= \<const0>\;
  axis_rd_data_count(28) <= \<const0>\;
  axis_rd_data_count(27) <= \<const0>\;
  axis_rd_data_count(26) <= \<const0>\;
  axis_rd_data_count(25) <= \<const0>\;
  axis_rd_data_count(24) <= \<const0>\;
  axis_rd_data_count(23) <= \<const0>\;
  axis_rd_data_count(22) <= \<const0>\;
  axis_rd_data_count(21) <= \<const0>\;
  axis_rd_data_count(20) <= \<const0>\;
  axis_rd_data_count(19) <= \<const0>\;
  axis_rd_data_count(18) <= \<const0>\;
  axis_rd_data_count(17) <= \<const0>\;
  axis_rd_data_count(16) <= \<const0>\;
  axis_rd_data_count(15) <= \<const0>\;
  axis_rd_data_count(14) <= \<const0>\;
  axis_rd_data_count(13) <= \<const0>\;
  axis_rd_data_count(12) <= \<const0>\;
  axis_rd_data_count(11) <= \<const0>\;
  axis_rd_data_count(10) <= \<const0>\;
  axis_rd_data_count(9) <= \<const0>\;
  axis_rd_data_count(8) <= \<const0>\;
  axis_rd_data_count(7) <= \<const0>\;
  axis_rd_data_count(6) <= \<const0>\;
  axis_rd_data_count(5) <= \<const0>\;
  axis_rd_data_count(4) <= \<const0>\;
  axis_rd_data_count(3) <= \<const0>\;
  axis_rd_data_count(2) <= \<const0>\;
  axis_rd_data_count(1) <= \<const0>\;
  axis_rd_data_count(0) <= \<const0>\;
  axis_wr_data_count(31) <= \<const0>\;
  axis_wr_data_count(30) <= \<const0>\;
  axis_wr_data_count(29) <= \<const0>\;
  axis_wr_data_count(28) <= \<const0>\;
  axis_wr_data_count(27) <= \<const0>\;
  axis_wr_data_count(26) <= \<const0>\;
  axis_wr_data_count(25) <= \<const0>\;
  axis_wr_data_count(24) <= \<const0>\;
  axis_wr_data_count(23) <= \<const0>\;
  axis_wr_data_count(22) <= \<const0>\;
  axis_wr_data_count(21) <= \<const0>\;
  axis_wr_data_count(20) <= \<const0>\;
  axis_wr_data_count(19) <= \<const0>\;
  axis_wr_data_count(18) <= \<const0>\;
  axis_wr_data_count(17) <= \<const0>\;
  axis_wr_data_count(16) <= \<const0>\;
  axis_wr_data_count(15) <= \<const0>\;
  axis_wr_data_count(14) <= \<const0>\;
  axis_wr_data_count(13) <= \<const0>\;
  axis_wr_data_count(12) <= \<const0>\;
  axis_wr_data_count(11) <= \<const0>\;
  axis_wr_data_count(10) <= \<const0>\;
  axis_wr_data_count(9) <= \<const0>\;
  axis_wr_data_count(8) <= \<const0>\;
  axis_wr_data_count(7) <= \<const0>\;
  axis_wr_data_count(6) <= \<const0>\;
  axis_wr_data_count(5) <= \<const0>\;
  axis_wr_data_count(4) <= \<const0>\;
  axis_wr_data_count(3) <= \<const0>\;
  axis_wr_data_count(2) <= \<const0>\;
  axis_wr_data_count(1) <= \<const0>\;
  axis_wr_data_count(0) <= \<const0>\;
  dbiterr <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_fifo.xpm_fifo_axis_inst\: entity work.axis_data_fifo_8bit_xpm_fifo_axis
     port map (
      almost_empty_axis => \gen_fifo.xpm_fifo_axis_inst_n_29\,
      almost_full_axis => \gen_fifo.xpm_fifo_axis_inst_n_22\,
      dbiterr_axis => \gen_fifo.xpm_fifo_axis_inst_n_31\,
      injectdbiterr_axis => '0',
      injectsbiterr_axis => '0',
      m_aclk => s_axis_aclk,
      m_axis_tdata(7 downto 0) => m_axis_tdata(7 downto 0),
      m_axis_tdest(0) => \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tdest_UNCONNECTED\(0),
      m_axis_tid(0) => \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tid_UNCONNECTED\(0),
      m_axis_tkeep(0) => \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tkeep_UNCONNECTED\(0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tstrb(0) => \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tstrb_UNCONNECTED\(0),
      m_axis_tuser(0) => \NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tuser_UNCONNECTED\(0),
      m_axis_tvalid => m_axis_tvalid,
      prog_empty_axis => \gen_fifo.xpm_fifo_axis_inst_n_23\,
      prog_full_axis => \gen_fifo.xpm_fifo_axis_inst_n_16\,
      rd_data_count_axis(4) => \gen_fifo.xpm_fifo_axis_inst_n_24\,
      rd_data_count_axis(3) => \gen_fifo.xpm_fifo_axis_inst_n_25\,
      rd_data_count_axis(2) => \gen_fifo.xpm_fifo_axis_inst_n_26\,
      rd_data_count_axis(1) => \gen_fifo.xpm_fifo_axis_inst_n_27\,
      rd_data_count_axis(0) => \gen_fifo.xpm_fifo_axis_inst_n_28\,
      s_aclk => s_axis_aclk,
      s_aresetn => s_axis_aresetn,
      s_axis_tdata(7 downto 0) => s_axis_tdata(7 downto 0),
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(0) => '0',
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(0) => '0',
      s_axis_tuser(0) => '0',
      s_axis_tvalid => s_axis_tvalid,
      sbiterr_axis => \gen_fifo.xpm_fifo_axis_inst_n_30\,
      wr_data_count_axis(4) => \gen_fifo.xpm_fifo_axis_inst_n_17\,
      wr_data_count_axis(3) => \gen_fifo.xpm_fifo_axis_inst_n_18\,
      wr_data_count_axis(2) => \gen_fifo.xpm_fifo_axis_inst_n_19\,
      wr_data_count_axis(1) => \gen_fifo.xpm_fifo_axis_inst_n_20\,
      wr_data_count_axis(0) => \gen_fifo.xpm_fifo_axis_inst_n_21\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_data_fifo_8bit is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of axis_data_fifo_8bit : entity is "axis_data_fifo_8bit,axis_data_fifo_v2_0_11_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of axis_data_fifo_8bit : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of axis_data_fifo_8bit : entity is "axis_data_fifo_v2_0_11_top,Vivado 2023.2";
end axis_data_fifo_8bit;

architecture STRUCTURE of axis_data_fifo_8bit is
  signal NLW_inst_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_ACLKEN_CONV_MODE : integer;
  attribute C_ACLKEN_CONV_MODE of inst : label is 0;
  attribute C_AXIS_SIGNAL_SET : integer;
  attribute C_AXIS_SIGNAL_SET of inst : label is 19;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of inst : label is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of inst : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of inst : label is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute C_ECC_MODE : integer;
  attribute C_ECC_MODE of inst : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "zynq";
  attribute C_FIFO_DEPTH : integer;
  attribute C_FIFO_DEPTH of inst : label is 16;
  attribute C_FIFO_MEMORY_TYPE : string;
  attribute C_FIFO_MEMORY_TYPE of inst : label is "block";
  attribute C_FIFO_MODE : integer;
  attribute C_FIFO_MODE of inst : label is 1;
  attribute C_IS_ACLK_ASYNC : integer;
  attribute C_IS_ACLK_ASYNC of inst : label is 0;
  attribute C_PROG_EMPTY_THRESH : integer;
  attribute C_PROG_EMPTY_THRESH of inst : label is 5;
  attribute C_PROG_FULL_THRESH : integer;
  attribute C_PROG_FULL_THRESH of inst : label is 11;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of inst : label is 3;
  attribute C_USE_ADV_FEATURES : integer;
  attribute C_USE_ADV_FEATURES of inst : label is 825241648;
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of inst : label is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of inst : label is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of inst : label is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of inst : label is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of inst : label is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of inst : label is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of inst : label is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of inst : label is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of inst : label is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of inst : label is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of inst : label is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of inst : label is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of inst : label is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of inst : label is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of inst : label is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of inst : label is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of inst : label is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of inst : label is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of inst : label is 1;
  attribute LP_CDC_SYNC_STAGES : integer;
  attribute LP_CDC_SYNC_STAGES of inst : label is 3;
  attribute LP_CLOCKING_MODE : string;
  attribute LP_CLOCKING_MODE of inst : label is "common_clock";
  attribute LP_ECC_MODE : string;
  attribute LP_ECC_MODE of inst : label is "no_ecc";
  attribute LP_FIFO_DEPTH : integer;
  attribute LP_FIFO_DEPTH of inst : label is 16;
  attribute LP_FIFO_MEMORY_TYPE : string;
  attribute LP_FIFO_MEMORY_TYPE of inst : label is "block";
  attribute LP_M_ACLKEN_CAN_TOGGLE : integer;
  attribute LP_M_ACLKEN_CAN_TOGGLE of inst : label is 0;
  attribute LP_PACKET_FIFO : string;
  attribute LP_PACKET_FIFO of inst : label is "false";
  attribute LP_PROG_EMPTY_THRESH : integer;
  attribute LP_PROG_EMPTY_THRESH of inst : label is 5;
  attribute LP_PROG_FULL_THRESH : integer;
  attribute LP_PROG_FULL_THRESH of inst : label is 11;
  attribute LP_RD_DATA_COUNT_WIDTH : integer;
  attribute LP_RD_DATA_COUNT_WIDTH of inst : label is 5;
  attribute LP_RELATED_CLOCKS : integer;
  attribute LP_RELATED_CLOCKS of inst : label is 0;
  attribute LP_S_ACLKEN_CAN_TOGGLE : integer;
  attribute LP_S_ACLKEN_CAN_TOGGLE of inst : label is 0;
  attribute LP_TDATA_WIDTH : integer;
  attribute LP_TDATA_WIDTH of inst : label is 8;
  attribute LP_TDEST_WIDTH : integer;
  attribute LP_TDEST_WIDTH of inst : label is 1;
  attribute LP_TID_WIDTH : integer;
  attribute LP_TID_WIDTH of inst : label is 1;
  attribute LP_TUSER_WIDTH : integer;
  attribute LP_TUSER_WIDTH of inst : label is 1;
  attribute LP_USE_ADV_FEATURES : integer;
  attribute LP_USE_ADV_FEATURES of inst : label is 825241648;
  attribute LP_WR_DATA_COUNT_WIDTH : integer;
  attribute LP_WR_DATA_COUNT_WIDTH of inst : label is 5;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m_axis_tlast : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of s_axis_aclk : signal is "xilinx.com:signal:clock:1.0 S_CLKIF CLK";
  attribute X_INTERFACE_PARAMETER of s_axis_aclk : signal is "XIL_INTERFACENAME S_CLKIF, ASSOCIATED_BUSIF S_AXIS, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 S_RSTIF RST";
  attribute X_INTERFACE_PARAMETER of s_axis_aresetn : signal is "XIL_INTERFACENAME S_RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS TLAST";
  attribute X_INTERFACE_PARAMETER of s_axis_tlast : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
begin
inst: entity work.axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top
     port map (
      almost_empty => NLW_inst_almost_empty_UNCONNECTED,
      almost_full => NLW_inst_almost_full_UNCONNECTED,
      axis_rd_data_count(31 downto 0) => NLW_inst_axis_rd_data_count_UNCONNECTED(31 downto 0),
      axis_wr_data_count(31 downto 0) => NLW_inst_axis_wr_data_count_UNCONNECTED(31 downto 0),
      dbiterr => NLW_inst_dbiterr_UNCONNECTED,
      injectdbiterr => '0',
      injectsbiterr => '0',
      m_axis_aclk => '0',
      m_axis_aclken => '1',
      m_axis_tdata(7 downto 0) => m_axis_tdata(7 downto 0),
      m_axis_tdest(0) => NLW_inst_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_inst_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(0) => NLW_inst_m_axis_tkeep_UNCONNECTED(0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tstrb(0) => NLW_inst_m_axis_tstrb_UNCONNECTED(0),
      m_axis_tuser(0) => NLW_inst_m_axis_tuser_UNCONNECTED(0),
      m_axis_tvalid => m_axis_tvalid,
      prog_empty => NLW_inst_prog_empty_UNCONNECTED,
      prog_full => NLW_inst_prog_full_UNCONNECTED,
      s_axis_aclk => s_axis_aclk,
      s_axis_aclken => '1',
      s_axis_aresetn => s_axis_aresetn,
      s_axis_tdata(7 downto 0) => s_axis_tdata(7 downto 0),
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(0) => '1',
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(0) => '1',
      s_axis_tuser(0) => '0',
      s_axis_tvalid => s_axis_tvalid,
      sbiterr => NLW_inst_sbiterr_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transceive_unit is
  port (
    s_axis_tready : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mosi_OBUF : out STD_LOGIC;
    spi_busy : out STD_LOGIC;
    sclk_OBUF : out STD_LOGIC;
    cs_OBUF : out STD_LOGIC;
    rlast_buffer_reg : out STD_LOGIC;
    \conf_header_reg[2]\ : out STD_LOGIC;
    reset : out STD_LOGIC;
    mosi_OBUFT_inst_i_1 : out STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    \FSM_sequential_state_reg[2]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_sequential_state_reg[2]_0\ : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_IBUF : in STD_LOGIC;
    mosi_TRI : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end transceive_unit;

architecture STRUCTURE of transceive_unit is
  signal clk_toggles : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \clk_toggles[0]_i_1_n_0\ : STD_LOGIC;
  signal \clk_toggles[1]_i_1_n_0\ : STD_LOGIC;
  signal \clk_toggles[2]_i_1_n_0\ : STD_LOGIC;
  signal \clk_toggles[3]_i_1_n_0\ : STD_LOGIC;
  signal \clk_toggles[4]_i_1_n_0\ : STD_LOGIC;
  signal \clk_toggles[4]_i_2_n_0\ : STD_LOGIC;
  signal \clk_toggles[4]_i_3_n_0\ : STD_LOGIC;
  signal \^cs_obuf\ : STD_LOGIC;
  signal cs_buffer1 : STD_LOGIC;
  signal cs_buffer_i_1_n_0 : STD_LOGIC;
  signal cs_buffer_i_2_n_0 : STD_LOGIC;
  signal first_execute_i_1_n_0 : STD_LOGIC;
  signal first_execute_i_2_n_0 : STD_LOGIC;
  signal first_execute_i_3_n_0 : STD_LOGIC;
  signal first_execute_reg_n_0 : STD_LOGIC;
  signal m_axis_tdata_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m_axis_tready_3 : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal m_axis_tvalid_1 : STD_LOGIC;
  signal mosi1 : STD_LOGIC;
  signal \^mosi_obuf\ : STD_LOGIC;
  signal mosi_tristate_oe_i_1_n_0 : STD_LOGIC;
  signal mosi_tristate_oe_i_2_n_0 : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal rlast : STD_LOGIC;
  signal \rx_buffer[7]_i_1_n_0\ : STD_LOGIC;
  signal \rx_buffer[7]_i_2_n_0\ : STD_LOGIC;
  signal rx_buffer_last_i_1_n_0 : STD_LOGIC;
  signal rx_buffer_last_reg_n_0 : STD_LOGIC;
  signal rx_buffer_valid07_out : STD_LOGIC;
  signal \rx_buffer_valid__0\ : STD_LOGIC;
  signal rx_buffer_valid_i_1_n_0 : STD_LOGIC;
  signal s_axis_tdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_axis_tready\ : STD_LOGIC;
  signal s_axis_tvalid_2 : STD_LOGIC;
  signal \^sclk_obuf\ : STD_LOGIC;
  signal sclk_buffer_i_1_n_0 : STD_LOGIC;
  signal \^spi_busy\ : STD_LOGIC;
  signal spi_busy_i_1_n_0 : STD_LOGIC;
  signal spistate : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal spistate_next : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \spistate_next[0]_i_1_n_0\ : STD_LOGIC;
  signal \spistate_next[0]_i_2_n_0\ : STD_LOGIC;
  signal \spistate_next[0]_i_3_n_0\ : STD_LOGIC;
  signal \spistate_next[1]_i_1_n_0\ : STD_LOGIC;
  signal \spistate_next[1]_i_2_n_0\ : STD_LOGIC;
  signal tx_buffer1 : STD_LOGIC;
  signal tx_buffer110_out : STD_LOGIC;
  signal \tx_buffer[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[1]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[2]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[3]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[4]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[5]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[6]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[7]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer[7]_i_2_n_0\ : STD_LOGIC;
  signal \tx_buffer[7]_i_5_n_0\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal tx_payload_ready_i_1_n_0 : STD_LOGIC;
  signal tx_payload_ready_i_2_n_0 : STD_LOGIC;
  signal tx_payload_ready_i_3_n_0 : STD_LOGIC;
  signal tx_phase_i_1_n_0 : STD_LOGIC;
  signal tx_phase_reg_n_0 : STD_LOGIC;
  signal NLW_u_rx_payload_fifo_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_u_tx_payload_fifo_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bytes_received[0]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \clk_toggles[0]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \clk_toggles[1]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \clk_toggles[2]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \clk_toggles[3]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \clk_toggles[4]_i_3\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \clk_toggles[4]_i_4\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \clk_toggles[4]_i_5\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of cs_buffer_i_2 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of first_execute_i_3 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of rlast_buffer_i_1 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of spi_busy_i_1 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \spistate_next[0]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \spistate_next[0]_i_3\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \tx_buffer[0]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \tx_buffer[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \tx_buffer[7]_i_4\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \tx_buffer[7]_i_5\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of tx_payload_ready_i_3 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of tx_phase_i_1 : label is "soft_lutpair44";
  attribute IMPORTED_FROM : string;
  attribute IMPORTED_FROM of u_rx_payload_fifo : label is "c:/Users/danie/w5500StateMachine/w5500StateMachine.gen/sources_1/ip/axis_data_fifo_8bit_2/axis_data_fifo_8bit.dcp";
  attribute IMPORTED_TYPE : string;
  attribute IMPORTED_TYPE of u_rx_payload_fifo : label is "CHECKPOINT";
  attribute IS_IMPORTED : boolean;
  attribute IS_IMPORTED of u_rx_payload_fifo : label is std.standard.true;
  attribute syn_black_box : string;
  attribute syn_black_box of u_rx_payload_fifo : label is "TRUE";
  attribute x_core_info : string;
  attribute x_core_info of u_rx_payload_fifo : label is "axis_data_fifo_v2_0_11_top,Vivado 2023.2";
  attribute IMPORTED_FROM of u_tx_payload_fifo : label is "c:/Users/danie/w5500StateMachine/w5500StateMachine.gen/sources_1/ip/axis_data_fifo_8bit_2/axis_data_fifo_8bit.dcp";
  attribute IMPORTED_TYPE of u_tx_payload_fifo : label is "CHECKPOINT";
  attribute IS_IMPORTED of u_tx_payload_fifo : label is std.standard.true;
  attribute syn_black_box of u_tx_payload_fifo : label is "TRUE";
  attribute x_core_info of u_tx_payload_fifo : label is "axis_data_fifo_v2_0_11_top,Vivado 2023.2";
begin
  cs_OBUF <= \^cs_obuf\;
  m_axis_tvalid <= \^m_axis_tvalid\;
  mosi_OBUF <= \^mosi_obuf\;
  s_axis_tready <= \^s_axis_tready\;
  sclk_OBUF <= \^sclk_obuf\;
  spi_busy <= \^spi_busy\;
\bytes_received[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => Q(0),
      I1 => rlast,
      I2 => \^m_axis_tvalid\,
      I3 => reset_IBUF,
      O => \conf_header_reg[2]\
    );
\bytes_received[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m_axis_tvalid\,
      I1 => reset_IBUF,
      O => reset
    );
\clk_toggles[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_toggles(0),
      O => \clk_toggles[0]_i_1_n_0\
    );
\clk_toggles[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => clk_toggles(0),
      I1 => clk_toggles(1),
      O => \clk_toggles[1]_i_1_n_0\
    );
\clk_toggles[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => clk_toggles(0),
      I1 => clk_toggles(1),
      I2 => clk_toggles(2),
      O => \clk_toggles[2]_i_1_n_0\
    );
\clk_toggles[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CCC"
    )
        port map (
      I0 => clk_toggles(0),
      I1 => clk_toggles(3),
      I2 => clk_toggles(1),
      I3 => clk_toggles(2),
      O => \clk_toggles[3]_i_1_n_0\
    );
\clk_toggles[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => spistate(0),
      I1 => spistate(1),
      I2 => reset_IBUF,
      O => \clk_toggles[4]_i_1_n_0\
    );
\clk_toggles[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEFE0000"
    )
        port map (
      I0 => spistate(0),
      I1 => tx_buffer1,
      I2 => cs_buffer1,
      I3 => \^cs_obuf\,
      I4 => spistate(1),
      I5 => reset_IBUF,
      O => \clk_toggles[4]_i_2_n_0\
    );
\clk_toggles[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF0000"
    )
        port map (
      I0 => clk_toggles(0),
      I1 => clk_toggles(3),
      I2 => clk_toggles(1),
      I3 => clk_toggles(2),
      I4 => clk_toggles(4),
      O => \clk_toggles[4]_i_3_n_0\
    );
\clk_toggles[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => clk_toggles(4),
      I1 => clk_toggles(1),
      I2 => clk_toggles(0),
      I3 => clk_toggles(3),
      I4 => clk_toggles(2),
      O => tx_buffer1
    );
\clk_toggles[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => spistate_next(0),
      I1 => spistate_next(1),
      O => cs_buffer1
    );
\clk_toggles_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \clk_toggles[4]_i_2_n_0\,
      D => \clk_toggles[0]_i_1_n_0\,
      Q => clk_toggles(0),
      R => \clk_toggles[4]_i_1_n_0\
    );
\clk_toggles_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \clk_toggles[4]_i_2_n_0\,
      D => \clk_toggles[1]_i_1_n_0\,
      Q => clk_toggles(1),
      R => \clk_toggles[4]_i_1_n_0\
    );
\clk_toggles_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \clk_toggles[4]_i_2_n_0\,
      D => \clk_toggles[2]_i_1_n_0\,
      Q => clk_toggles(2),
      R => \clk_toggles[4]_i_1_n_0\
    );
\clk_toggles_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \clk_toggles[4]_i_2_n_0\,
      D => \clk_toggles[3]_i_1_n_0\,
      Q => clk_toggles(3),
      R => \clk_toggles[4]_i_1_n_0\
    );
\clk_toggles_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \clk_toggles[4]_i_2_n_0\,
      D => \clk_toggles[4]_i_3_n_0\,
      Q => clk_toggles(4),
      R => \clk_toggles[4]_i_1_n_0\
    );
cs_buffer_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAACCFCAAAAFFFF"
    )
        port map (
      I0 => \^cs_obuf\,
      I1 => spistate(0),
      I2 => cs_buffer_i_2_n_0,
      I3 => cs_buffer1,
      I4 => reset_IBUF,
      I5 => spistate(1),
      O => cs_buffer_i_1_n_0
    );
cs_buffer_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => clk_toggles(4),
      I1 => clk_toggles(2),
      I2 => clk_toggles(1),
      I3 => clk_toggles(3),
      I4 => clk_toggles(0),
      O => cs_buffer_i_2_n_0
    );
cs_buffer_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => cs_buffer_i_1_n_0,
      Q => \^cs_obuf\,
      R => '0'
    );
first_execute_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF37F700003000"
    )
        port map (
      I0 => first_execute_i_2_n_0,
      I1 => spistate(1),
      I2 => spistate(0),
      I3 => first_execute_i_3_n_0,
      I4 => reset_IBUF,
      I5 => first_execute_reg_n_0,
      O => first_execute_i_1_n_0
    );
first_execute_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => m_axis_tvalid_1,
      I1 => clk_toggles(0),
      I2 => clk_toggles(4),
      I3 => clk_toggles(1),
      I4 => clk_toggles(3),
      I5 => clk_toggles(2),
      O => first_execute_i_2_n_0
    );
first_execute_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => spistate_next(0),
      I1 => spistate_next(1),
      I2 => spistate(1),
      O => first_execute_i_3_n_0
    );
first_execute_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => first_execute_i_1_n_0,
      Q => first_execute_reg_n_0,
      R => '0'
    );
mosi_OBUFT_inst_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACEAA"
    )
        port map (
      I0 => mosi_TRI,
      I1 => spistate(0),
      I2 => mosi1,
      I3 => spistate(1),
      I4 => reset_IBUF,
      O => mosi_OBUFT_inst_i_1
    );
mosi_tristate_oe_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_2_in,
      I1 => tx_buffer110_out,
      I2 => m_axis_tdata_0(7),
      I3 => mosi_tristate_oe_i_2_n_0,
      I4 => \^mosi_obuf\,
      O => mosi_tristate_oe_i_1_n_0
    );
mosi_tristate_oe_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFEA0000"
    )
        port map (
      I0 => spistate(0),
      I1 => m_axis_tvalid_1,
      I2 => tx_buffer1,
      I3 => tx_buffer110_out,
      I4 => spistate(1),
      I5 => reset_IBUF,
      O => mosi_tristate_oe_i_2_n_0
    );
mosi_tristate_oe_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => mosi_tristate_oe_i_1_n_0,
      Q => \^mosi_obuf\,
      R => '0'
    );
rlast_buffer_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCC0AAA"
    )
        port map (
      I0 => rlast,
      I1 => s_axis_tlast,
      I2 => Q(0),
      I3 => \^m_axis_tvalid\,
      I4 => reset_IBUF,
      O => rlast_buffer_reg
    );
\rx_buffer[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => spistate(1),
      I1 => \rx_buffer[7]_i_2_n_0\,
      I2 => spistate(0),
      I3 => reset_IBUF,
      O => \rx_buffer[7]_i_1_n_0\
    );
\rx_buffer[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222222222222222"
    )
        port map (
      I0 => tx_phase_reg_n_0,
      I1 => clk_toggles(4),
      I2 => clk_toggles(3),
      I3 => clk_toggles(2),
      I4 => clk_toggles(1),
      I5 => clk_toggles(0),
      O => \rx_buffer[7]_i_2_n_0\
    );
rx_buffer_last_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8FF00008800"
    )
        port map (
      I0 => spistate_next(1),
      I1 => spistate(0),
      I2 => \rx_buffer_valid__0\,
      I3 => spistate(1),
      I4 => reset_IBUF,
      I5 => rx_buffer_last_reg_n_0,
      O => rx_buffer_last_i_1_n_0
    );
rx_buffer_last_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => rx_buffer_last_i_1_n_0,
      Q => rx_buffer_last_reg_n_0,
      R => '0'
    );
\rx_buffer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \rx_buffer[7]_i_1_n_0\,
      D => D(0),
      Q => s_axis_tdata(0),
      R => '0'
    );
\rx_buffer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \rx_buffer[7]_i_1_n_0\,
      D => s_axis_tdata(0),
      Q => s_axis_tdata(1),
      R => '0'
    );
\rx_buffer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \rx_buffer[7]_i_1_n_0\,
      D => s_axis_tdata(1),
      Q => s_axis_tdata(2),
      R => '0'
    );
\rx_buffer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \rx_buffer[7]_i_1_n_0\,
      D => s_axis_tdata(2),
      Q => s_axis_tdata(3),
      R => '0'
    );
\rx_buffer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \rx_buffer[7]_i_1_n_0\,
      D => s_axis_tdata(3),
      Q => s_axis_tdata(4),
      R => '0'
    );
\rx_buffer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \rx_buffer[7]_i_1_n_0\,
      D => s_axis_tdata(4),
      Q => s_axis_tdata(5),
      R => '0'
    );
\rx_buffer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \rx_buffer[7]_i_1_n_0\,
      D => s_axis_tdata(5),
      Q => s_axis_tdata(6),
      R => '0'
    );
\rx_buffer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \rx_buffer[7]_i_1_n_0\,
      D => s_axis_tdata(6),
      Q => s_axis_tdata(7),
      R => '0'
    );
rx_buffer_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8FF0000B800"
    )
        port map (
      I0 => spistate_next(1),
      I1 => spistate(0),
      I2 => \rx_buffer_valid__0\,
      I3 => spistate(1),
      I4 => reset_IBUF,
      I5 => s_axis_tvalid_2,
      O => rx_buffer_valid_i_1_n_0
    );
rx_buffer_valid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0080AAAAAAAA"
    )
        port map (
      I0 => rx_buffer_valid07_out,
      I1 => clk_toggles(0),
      I2 => clk_toggles(1),
      I3 => \tx_buffer[7]_i_5_n_0\,
      I4 => clk_toggles(4),
      I5 => tx_phase_reg_n_0,
      O => \rx_buffer_valid__0\
    );
rx_buffer_valid_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => clk_toggles(4),
      I1 => clk_toggles(3),
      I2 => clk_toggles(1),
      I3 => clk_toggles(2),
      I4 => clk_toggles(0),
      I5 => first_execute_reg_n_0,
      O => rx_buffer_valid07_out
    );
rx_buffer_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => rx_buffer_valid_i_1_n_0,
      Q => s_axis_tvalid_2,
      R => '0'
    );
sclk_buffer_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEF0000001000"
    )
        port map (
      I0 => spistate(0),
      I1 => \^cs_obuf\,
      I2 => cs_buffer1,
      I3 => spistate(1),
      I4 => reset_IBUF,
      I5 => \^sclk_obuf\,
      O => sclk_buffer_i_1_n_0
    );
sclk_buffer_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => sclk_buffer_i_1_n_0,
      Q => \^sclk_obuf\,
      R => '0'
    );
spi_busy_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FA02"
    )
        port map (
      I0 => spistate(1),
      I1 => spistate(0),
      I2 => reset_IBUF,
      I3 => \^spi_busy\,
      O => spi_busy_i_1_n_0
    );
spi_busy_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => spi_busy_i_1_n_0,
      Q => \^spi_busy\,
      R => '0'
    );
\spistate_next[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \spistate_next[0]_i_2_n_0\,
      I1 => \spistate_next[1]_i_2_n_0\,
      I2 => spistate_next(0),
      O => \spistate_next[0]_i_1_n_0\
    );
\spistate_next[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A4AEA4AEA4AEA4FE"
    )
        port map (
      I0 => spistate(0),
      I1 => \^s_axis_tready\,
      I2 => spistate(1),
      I3 => m_axis_tvalid_1,
      I4 => clk_toggles(4),
      I5 => \spistate_next[0]_i_3_n_0\,
      O => \spistate_next[0]_i_2_n_0\
    );
\spistate_next[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => clk_toggles(2),
      I1 => clk_toggles(3),
      I2 => clk_toggles(0),
      I3 => clk_toggles(1),
      O => \spistate_next[0]_i_3_n_0\
    );
\spistate_next[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38FF3800"
    )
        port map (
      I0 => m_axis_tvalid_1,
      I1 => spistate(0),
      I2 => spistate(1),
      I3 => \spistate_next[1]_i_2_n_0\,
      I4 => spistate_next(1),
      O => \spistate_next[1]_i_1_n_0\
    );
\spistate_next[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFBFFFFF"
    )
        port map (
      I0 => tx_buffer1,
      I1 => spistate_next(0),
      I2 => spistate_next(1),
      I3 => spistate(0),
      I4 => spistate(1),
      I5 => reset_IBUF,
      O => \spistate_next[1]_i_2_n_0\
    );
\spistate_next_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \spistate_next[0]_i_1_n_0\,
      Q => spistate_next(0),
      R => '0'
    );
\spistate_next_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \spistate_next[1]_i_1_n_0\,
      Q => spistate_next(1),
      R => '0'
    );
\spistate_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => spistate_next(0),
      PRE => reset_IBUF,
      Q => spistate(0)
    );
\spistate_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => spistate_next(1),
      Q => spistate(1)
    );
\tx_buffer[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axis_tdata_0(0),
      I1 => spistate(1),
      O => \tx_buffer[0]_i_1_n_0\
    );
\tx_buffer[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[0]\,
      I1 => tx_buffer110_out,
      I2 => m_axis_tdata_0(0),
      I3 => spistate(1),
      I4 => m_axis_tdata_0(1),
      O => \tx_buffer[1]_i_1_n_0\
    );
\tx_buffer[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[1]\,
      I1 => tx_buffer110_out,
      I2 => m_axis_tdata_0(1),
      I3 => spistate(1),
      I4 => m_axis_tdata_0(2),
      O => \tx_buffer[2]_i_1_n_0\
    );
\tx_buffer[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[2]\,
      I1 => tx_buffer110_out,
      I2 => m_axis_tdata_0(2),
      I3 => spistate(1),
      I4 => m_axis_tdata_0(3),
      O => \tx_buffer[3]_i_1_n_0\
    );
\tx_buffer[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[3]\,
      I1 => tx_buffer110_out,
      I2 => m_axis_tdata_0(3),
      I3 => spistate(1),
      I4 => m_axis_tdata_0(4),
      O => \tx_buffer[4]_i_1_n_0\
    );
\tx_buffer[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[4]\,
      I1 => tx_buffer110_out,
      I2 => m_axis_tdata_0(4),
      I3 => spistate(1),
      I4 => m_axis_tdata_0(5),
      O => \tx_buffer[5]_i_1_n_0\
    );
\tx_buffer[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[5]\,
      I1 => tx_buffer110_out,
      I2 => m_axis_tdata_0(5),
      I3 => spistate(1),
      I4 => m_axis_tdata_0(6),
      O => \tx_buffer[6]_i_1_n_0\
    );
\tx_buffer[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008083808"
    )
        port map (
      I0 => mosi1,
      I1 => spistate(1),
      I2 => spistate(0),
      I3 => spistate_next(1),
      I4 => spistate_next(0),
      I5 => reset_IBUF,
      O => \tx_buffer[7]_i_1_n_0\
    );
\tx_buffer[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \tx_buffer_reg_n_0_[6]\,
      I1 => tx_buffer110_out,
      I2 => m_axis_tdata_0(6),
      I3 => spistate(1),
      I4 => m_axis_tdata_0(7),
      O => \tx_buffer[7]_i_2_n_0\
    );
\tx_buffer[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111310111110101"
    )
        port map (
      I0 => tx_phase_reg_n_0,
      I1 => clk_toggles(4),
      I2 => clk_toggles(1),
      I3 => clk_toggles(0),
      I4 => \tx_buffer[7]_i_5_n_0\,
      I5 => m_axis_tvalid_1,
      O => mosi1
    );
\tx_buffer[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000007F"
    )
        port map (
      I0 => clk_toggles(1),
      I1 => clk_toggles(2),
      I2 => clk_toggles(3),
      I3 => clk_toggles(4),
      I4 => tx_phase_reg_n_0,
      O => tx_buffer110_out
    );
\tx_buffer[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => clk_toggles(3),
      I1 => clk_toggles(2),
      O => \tx_buffer[7]_i_5_n_0\
    );
\tx_buffer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_buffer[7]_i_1_n_0\,
      D => \tx_buffer[0]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[0]\,
      R => '0'
    );
\tx_buffer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_buffer[7]_i_1_n_0\,
      D => \tx_buffer[1]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[1]\,
      R => '0'
    );
\tx_buffer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_buffer[7]_i_1_n_0\,
      D => \tx_buffer[2]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[2]\,
      R => '0'
    );
\tx_buffer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_buffer[7]_i_1_n_0\,
      D => \tx_buffer[3]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[3]\,
      R => '0'
    );
\tx_buffer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_buffer[7]_i_1_n_0\,
      D => \tx_buffer[4]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[4]\,
      R => '0'
    );
\tx_buffer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_buffer[7]_i_1_n_0\,
      D => \tx_buffer[5]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[5]\,
      R => '0'
    );
\tx_buffer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_buffer[7]_i_1_n_0\,
      D => \tx_buffer[6]_i_1_n_0\,
      Q => \tx_buffer_reg_n_0_[6]\,
      R => '0'
    );
\tx_buffer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_buffer[7]_i_1_n_0\,
      D => \tx_buffer[7]_i_2_n_0\,
      Q => p_2_in,
      R => '0'
    );
tx_payload_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555DFFFF555D0000"
    )
        port map (
      I0 => spistate(1),
      I1 => tx_payload_ready_i_2_n_0,
      I2 => tx_buffer110_out,
      I3 => spistate(0),
      I4 => tx_payload_ready_i_3_n_0,
      I5 => m_axis_tready_3,
      O => tx_payload_ready_i_1_n_0
    );
tx_payload_ready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => m_axis_tvalid_1,
      I1 => clk_toggles(2),
      I2 => clk_toggles(3),
      I3 => clk_toggles(0),
      I4 => clk_toggles(1),
      I5 => clk_toggles(4),
      O => tx_payload_ready_i_2_n_0
    );
tx_payload_ready_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF20"
    )
        port map (
      I0 => spistate(0),
      I1 => spistate_next(0),
      I2 => spistate_next(1),
      I3 => spistate(1),
      I4 => reset_IBUF,
      O => tx_payload_ready_i_3_n_0
    );
tx_payload_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => tx_payload_ready_i_1_n_0,
      Q => m_axis_tready_3,
      R => '0'
    );
tx_phase_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F802"
    )
        port map (
      I0 => spistate(1),
      I1 => spistate(0),
      I2 => reset_IBUF,
      I3 => tx_phase_reg_n_0,
      O => tx_phase_i_1_n_0
    );
tx_phase_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => tx_phase_i_1_n_0,
      Q => tx_phase_reg_n_0,
      R => '0'
    );
u_rx_payload_fifo: entity work.axis_data_fifo_8bit
     port map (
      m_axis_tdata(7 downto 0) => m_axis_tdata(7 downto 0),
      m_axis_tlast => rlast,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => \^m_axis_tvalid\,
      s_axis_aclk => clk_IBUF_BUFG,
      s_axis_aresetn => E(0),
      s_axis_tdata(7 downto 0) => s_axis_tdata(7 downto 0),
      s_axis_tlast => rx_buffer_last_reg_n_0,
      s_axis_tready => NLW_u_rx_payload_fifo_s_axis_tready_UNCONNECTED,
      s_axis_tvalid => s_axis_tvalid_2
    );
u_tx_payload_fifo: entity work.axis_data_fifo_8bit
     port map (
      m_axis_tdata(7 downto 0) => m_axis_tdata_0(7 downto 0),
      m_axis_tlast => NLW_u_tx_payload_fifo_m_axis_tlast_UNCONNECTED,
      m_axis_tready => m_axis_tready_3,
      m_axis_tvalid => m_axis_tvalid_1,
      s_axis_aclk => clk_IBUF_BUFG,
      s_axis_aresetn => E(0),
      s_axis_tdata(7 downto 0) => \FSM_sequential_state_reg[2]\(7 downto 0),
      s_axis_tlast => \FSM_sequential_state_reg[2]_0\,
      s_axis_tready => \^s_axis_tready\,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity w5500_axi_data_streamer is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rlast_buffer_reg_0 : out STD_LOGIC;
    tvalid_reg_0 : out STD_LOGIC;
    tlast_reg_0 : out STD_LOGIC;
    m_axis_tready : out STD_LOGIC;
    streamhandler_state_next_0 : out STD_LOGIC;
    idle_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    \streamhandler_state_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \tdata_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC;
    rlast_buffer_reg_1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axis_tvalid : in STD_LOGIC;
    \streamhandler_state_next[1]_i_2_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \streamhandler_state_next_reg[0]\ : in STD_LOGIC;
    led_OBUF : in STD_LOGIC;
    \w5500state_next_reg[0]\ : in STD_LOGIC;
    \w5500state_next_reg[0]_0\ : in STD_LOGIC;
    \w5500state_next_reg[0]_1\ : in STD_LOGIC;
    \rx_shift_payload_buffer_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    conf_header_valid : in STD_LOGIC;
    in3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    in4 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \streamhandler_state_next[1]_i_2_1\ : in STD_LOGIC;
    s_axis_tready : in STD_LOGIC;
    \rdata_buffer_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \bytes_received_reg[0]_0\ : in STD_LOGIC;
    \bytes_received_reg[0]_1\ : in STD_LOGIC
  );
end w5500_axi_data_streamer;

architecture STRUCTURE of w5500_axi_data_streamer is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \bytes_received[0]_i_4_n_0\ : STD_LOGIC;
  signal bytes_received_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \bytes_received_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \bytes_received_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \bytes_received_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \bytes_received_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \bytes_received_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \bytes_received_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \bytes_received_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \bytes_received_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \bytes_received_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \bytes_received_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \bytes_received_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \bytes_received_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \bytes_received_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \bytes_received_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \bytes_received_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \bytes_received_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \bytes_received_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \bytes_received_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \bytes_received_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \bytes_received_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \bytes_received_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \bytes_received_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \bytes_received_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \bytes_received_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \bytes_received_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \bytes_received_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \bytes_received_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \bytes_received_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \bytes_received_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \bytes_received_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \bytes_received_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \bytes_received_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \bytes_received_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \bytes_received_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \bytes_received_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \bytes_received_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \bytes_received_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \bytes_received_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \bytes_received_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \bytes_received_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \bytes_received_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \bytes_received_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \bytes_received_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \bytes_received_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \bytes_received_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \bytes_received_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \bytes_received_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \bytes_received_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \bytes_received_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \bytes_received_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \bytes_received_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \bytes_received_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \bytes_received_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \bytes_received_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \bytes_received_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \bytes_received_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \bytes_received_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \bytes_received_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \bytes_received_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \bytes_received_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \bytes_received_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \bytes_received_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \bytes_received_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal m_axis_tdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m_axis_tlast : STD_LOGIC;
  signal \^m_axis_tready\ : STD_LOGIC;
  signal m_axis_tready_1 : STD_LOGIC;
  signal m_axis_tvalid_0 : STD_LOGIC;
  signal payload_fifo_ready_i_1_n_0 : STD_LOGIC;
  signal payload_ready : STD_LOGIC;
  signal \^rlast_buffer_reg_0\ : STD_LOGIC;
  signal \rready1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rready1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rready1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \rready1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \rready1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \rready1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \rready1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \rready1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \rready1_carry__0_n_0\ : STD_LOGIC;
  signal \rready1_carry__0_n_1\ : STD_LOGIC;
  signal \rready1_carry__0_n_2\ : STD_LOGIC;
  signal \rready1_carry__0_n_3\ : STD_LOGIC;
  signal \rready1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \rready1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \rready1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \rready1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \rready1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \rready1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \rready1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \rready1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \rready1_carry__1_n_0\ : STD_LOGIC;
  signal \rready1_carry__1_n_1\ : STD_LOGIC;
  signal \rready1_carry__1_n_2\ : STD_LOGIC;
  signal \rready1_carry__1_n_3\ : STD_LOGIC;
  signal \rready1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \rready1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \rready1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \rready1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \rready1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \rready1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \rready1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \rready1_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \rready1_carry__2_n_0\ : STD_LOGIC;
  signal \rready1_carry__2_n_1\ : STD_LOGIC;
  signal \rready1_carry__2_n_2\ : STD_LOGIC;
  signal \rready1_carry__2_n_3\ : STD_LOGIC;
  signal rready1_carry_i_1_n_0 : STD_LOGIC;
  signal rready1_carry_i_2_n_0 : STD_LOGIC;
  signal rready1_carry_i_3_n_0 : STD_LOGIC;
  signal rready1_carry_i_4_n_0 : STD_LOGIC;
  signal rready1_carry_i_5_n_0 : STD_LOGIC;
  signal rready1_carry_i_6_n_0 : STD_LOGIC;
  signal rready1_carry_i_7_n_0 : STD_LOGIC;
  signal rready1_carry_i_8_n_0 : STD_LOGIC;
  signal rready1_carry_n_0 : STD_LOGIC;
  signal rready1_carry_n_1 : STD_LOGIC;
  signal rready1_carry_n_2 : STD_LOGIC;
  signal rready1_carry_n_3 : STD_LOGIC;
  signal rready_buffer : STD_LOGIC;
  signal rready_i_1_n_0 : STD_LOGIC;
  signal rvalid_buffer_i_1_n_0 : STD_LOGIC;
  signal rx_payload_valid : STD_LOGIC;
  signal rx_pllast : STD_LOGIC;
  signal s_axis_tdata_3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_axis_tvalid_2 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \streamhandler_state_next[1]_i_3_n_0\ : STD_LOGIC;
  signal \tdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \tdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \tdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \tdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \tdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \tdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \tdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \tdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \tdata[7]_i_2_n_0\ : STD_LOGIC;
  signal tlast_i_1_n_0 : STD_LOGIC;
  signal \^tlast_reg_0\ : STD_LOGIC;
  signal tvalid_i_1_n_0 : STD_LOGIC;
  signal \^tvalid_reg_0\ : STD_LOGIC;
  signal \NLW_bytes_received_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_rready1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rready1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rready1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rready1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "fifo_init_state:000,idle:001,conf_byte_0:010,conf_byte_1:011,conf_byte_2:100,payload_stream:101,done_state:110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "fifo_init_state:000,idle:001,conf_byte_0:010,conf_byte_1:011,conf_byte_2:100,payload_stream:101,done_state:110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "fifo_init_state:000,idle:001,conf_byte_0:010,conf_byte_1:011,conf_byte_2:100,payload_stream:101,done_state:110";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \bytes_received_reg[0]_i_3\ : label is 11;
  attribute ADDER_THRESHOLD of \bytes_received_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \bytes_received_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \bytes_received_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \bytes_received_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \bytes_received_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \bytes_received_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \bytes_received_reg[8]_i_1\ : label is 11;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of rready1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \rready1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \rready1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \rready1_carry__2\ : label is 11;
  attribute IMPORTED_FROM : string;
  attribute IMPORTED_FROM of u_payload_fifo : label is "c:/Users/danie/w5500StateMachine/w5500StateMachine.gen/sources_1/ip/axis_data_fifo_8bit_2/axis_data_fifo_8bit.dcp";
  attribute IMPORTED_TYPE : string;
  attribute IMPORTED_TYPE of u_payload_fifo : label is "CHECKPOINT";
  attribute IS_IMPORTED : boolean;
  attribute IS_IMPORTED of u_payload_fifo : label is std.standard.true;
  attribute syn_black_box : string;
  attribute syn_black_box of u_payload_fifo : label is "TRUE";
  attribute x_core_info : string;
  attribute x_core_info of u_payload_fifo : label is "axis_data_fifo_v2_0_11_top,Vivado 2023.2";
  attribute IMPORTED_FROM of u_rx_fifo : label is "c:/Users/danie/w5500StateMachine/w5500StateMachine.gen/sources_1/ip/axis_data_fifo_8bit_2/axis_data_fifo_8bit.dcp";
  attribute IMPORTED_TYPE of u_rx_fifo : label is "CHECKPOINT";
  attribute IS_IMPORTED of u_rx_fifo : label is std.standard.true;
  attribute syn_black_box of u_rx_fifo : label is "TRUE";
  attribute x_core_info of u_rx_fifo : label is "axis_data_fifo_v2_0_11_top,Vivado 2023.2";
begin
  E(0) <= \^e\(0);
  m_axis_tready <= \^m_axis_tready\;
  rlast_buffer_reg_0 <= \^rlast_buffer_reg_0\;
  tlast_reg_0 <= \^tlast_reg_0\;
  tvalid_reg_0 <= \^tvalid_reg_0\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"009F44DFFF60FF60"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => s_axis_tready,
      I3 => \FSM_sequential_state[2]_i_2_n_0\,
      I4 => m_axis_tlast,
      I5 => state(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55CA118A22AA22AA"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => s_axis_tready,
      I3 => \FSM_sequential_state[2]_i_2_n_0\,
      I4 => m_axis_tlast,
      I5 => state(0),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66EC44CC"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => s_axis_tready,
      I3 => \FSM_sequential_state[2]_i_2_n_0\,
      I4 => state(0),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF00FF0008F0000"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => conf_header_valid,
      I2 => state(0),
      I3 => state(1),
      I4 => payload_ready,
      I5 => state(2),
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2)
    );
\bytes_received[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bytes_received_reg(0),
      O => \bytes_received[0]_i_4_n_0\
    );
\bytes_received_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \bytes_received_reg[0]_1\,
      D => \bytes_received_reg[0]_i_3_n_7\,
      Q => bytes_received_reg(0),
      R => \bytes_received_reg[0]_0\
    );
\bytes_received_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \bytes_received_reg[0]_i_3_n_0\,
      CO(2) => \bytes_received_reg[0]_i_3_n_1\,
      CO(1) => \bytes_received_reg[0]_i_3_n_2\,
      CO(0) => \bytes_received_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \bytes_received_reg[0]_i_3_n_4\,
      O(2) => \bytes_received_reg[0]_i_3_n_5\,
      O(1) => \bytes_received_reg[0]_i_3_n_6\,
      O(0) => \bytes_received_reg[0]_i_3_n_7\,
      S(3 downto 1) => bytes_received_reg(3 downto 1),
      S(0) => \bytes_received[0]_i_4_n_0\
    );
\bytes_received_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \bytes_received_reg[0]_1\,
      D => \bytes_received_reg[8]_i_1_n_5\,
      Q => bytes_received_reg(10),
      R => \bytes_received_reg[0]_0\
    );
\bytes_received_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \bytes_received_reg[0]_1\,
      D => \bytes_received_reg[8]_i_1_n_4\,
      Q => bytes_received_reg(11),
      R => \bytes_received_reg[0]_0\
    );
\bytes_received_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \bytes_received_reg[0]_1\,
      D => \bytes_received_reg[12]_i_1_n_7\,
      Q => bytes_received_reg(12),
      R => \bytes_received_reg[0]_0\
    );
\bytes_received_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bytes_received_reg[8]_i_1_n_0\,
      CO(3) => \bytes_received_reg[12]_i_1_n_0\,
      CO(2) => \bytes_received_reg[12]_i_1_n_1\,
      CO(1) => \bytes_received_reg[12]_i_1_n_2\,
      CO(0) => \bytes_received_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bytes_received_reg[12]_i_1_n_4\,
      O(2) => \bytes_received_reg[12]_i_1_n_5\,
      O(1) => \bytes_received_reg[12]_i_1_n_6\,
      O(0) => \bytes_received_reg[12]_i_1_n_7\,
      S(3 downto 0) => bytes_received_reg(15 downto 12)
    );
\bytes_received_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \bytes_received_reg[0]_1\,
      D => \bytes_received_reg[12]_i_1_n_6\,
      Q => bytes_received_reg(13),
      R => \bytes_received_reg[0]_0\
    );
\bytes_received_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \bytes_received_reg[0]_1\,
      D => \bytes_received_reg[12]_i_1_n_5\,
      Q => bytes_received_reg(14),
      R => \bytes_received_reg[0]_0\
    );
\bytes_received_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \bytes_received_reg[0]_1\,
      D => \bytes_received_reg[12]_i_1_n_4\,
      Q => bytes_received_reg(15),
      R => \bytes_received_reg[0]_0\
    );
\bytes_received_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \bytes_received_reg[0]_1\,
      D => \bytes_received_reg[16]_i_1_n_7\,
      Q => bytes_received_reg(16),
      R => \bytes_received_reg[0]_0\
    );
\bytes_received_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bytes_received_reg[12]_i_1_n_0\,
      CO(3) => \bytes_received_reg[16]_i_1_n_0\,
      CO(2) => \bytes_received_reg[16]_i_1_n_1\,
      CO(1) => \bytes_received_reg[16]_i_1_n_2\,
      CO(0) => \bytes_received_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bytes_received_reg[16]_i_1_n_4\,
      O(2) => \bytes_received_reg[16]_i_1_n_5\,
      O(1) => \bytes_received_reg[16]_i_1_n_6\,
      O(0) => \bytes_received_reg[16]_i_1_n_7\,
      S(3 downto 0) => bytes_received_reg(19 downto 16)
    );
\bytes_received_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \bytes_received_reg[0]_1\,
      D => \bytes_received_reg[16]_i_1_n_6\,
      Q => bytes_received_reg(17),
      R => \bytes_received_reg[0]_0\
    );
\bytes_received_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \bytes_received_reg[0]_1\,
      D => \bytes_received_reg[16]_i_1_n_5\,
      Q => bytes_received_reg(18),
      R => \bytes_received_reg[0]_0\
    );
\bytes_received_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \bytes_received_reg[0]_1\,
      D => \bytes_received_reg[16]_i_1_n_4\,
      Q => bytes_received_reg(19),
      R => \bytes_received_reg[0]_0\
    );
\bytes_received_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \bytes_received_reg[0]_1\,
      D => \bytes_received_reg[0]_i_3_n_6\,
      Q => bytes_received_reg(1),
      R => \bytes_received_reg[0]_0\
    );
\bytes_received_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \bytes_received_reg[0]_1\,
      D => \bytes_received_reg[20]_i_1_n_7\,
      Q => bytes_received_reg(20),
      R => \bytes_received_reg[0]_0\
    );
\bytes_received_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bytes_received_reg[16]_i_1_n_0\,
      CO(3) => \bytes_received_reg[20]_i_1_n_0\,
      CO(2) => \bytes_received_reg[20]_i_1_n_1\,
      CO(1) => \bytes_received_reg[20]_i_1_n_2\,
      CO(0) => \bytes_received_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bytes_received_reg[20]_i_1_n_4\,
      O(2) => \bytes_received_reg[20]_i_1_n_5\,
      O(1) => \bytes_received_reg[20]_i_1_n_6\,
      O(0) => \bytes_received_reg[20]_i_1_n_7\,
      S(3 downto 0) => bytes_received_reg(23 downto 20)
    );
\bytes_received_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \bytes_received_reg[0]_1\,
      D => \bytes_received_reg[20]_i_1_n_6\,
      Q => bytes_received_reg(21),
      R => \bytes_received_reg[0]_0\
    );
\bytes_received_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \bytes_received_reg[0]_1\,
      D => \bytes_received_reg[20]_i_1_n_5\,
      Q => bytes_received_reg(22),
      R => \bytes_received_reg[0]_0\
    );
\bytes_received_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \bytes_received_reg[0]_1\,
      D => \bytes_received_reg[20]_i_1_n_4\,
      Q => bytes_received_reg(23),
      R => \bytes_received_reg[0]_0\
    );
\bytes_received_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \bytes_received_reg[0]_1\,
      D => \bytes_received_reg[24]_i_1_n_7\,
      Q => bytes_received_reg(24),
      R => \bytes_received_reg[0]_0\
    );
\bytes_received_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bytes_received_reg[20]_i_1_n_0\,
      CO(3) => \bytes_received_reg[24]_i_1_n_0\,
      CO(2) => \bytes_received_reg[24]_i_1_n_1\,
      CO(1) => \bytes_received_reg[24]_i_1_n_2\,
      CO(0) => \bytes_received_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bytes_received_reg[24]_i_1_n_4\,
      O(2) => \bytes_received_reg[24]_i_1_n_5\,
      O(1) => \bytes_received_reg[24]_i_1_n_6\,
      O(0) => \bytes_received_reg[24]_i_1_n_7\,
      S(3 downto 0) => bytes_received_reg(27 downto 24)
    );
\bytes_received_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \bytes_received_reg[0]_1\,
      D => \bytes_received_reg[24]_i_1_n_6\,
      Q => bytes_received_reg(25),
      R => \bytes_received_reg[0]_0\
    );
\bytes_received_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \bytes_received_reg[0]_1\,
      D => \bytes_received_reg[24]_i_1_n_5\,
      Q => bytes_received_reg(26),
      R => \bytes_received_reg[0]_0\
    );
\bytes_received_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \bytes_received_reg[0]_1\,
      D => \bytes_received_reg[24]_i_1_n_4\,
      Q => bytes_received_reg(27),
      R => \bytes_received_reg[0]_0\
    );
\bytes_received_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \bytes_received_reg[0]_1\,
      D => \bytes_received_reg[28]_i_1_n_7\,
      Q => bytes_received_reg(28),
      R => \bytes_received_reg[0]_0\
    );
\bytes_received_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bytes_received_reg[24]_i_1_n_0\,
      CO(3) => \NLW_bytes_received_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \bytes_received_reg[28]_i_1_n_1\,
      CO(1) => \bytes_received_reg[28]_i_1_n_2\,
      CO(0) => \bytes_received_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bytes_received_reg[28]_i_1_n_4\,
      O(2) => \bytes_received_reg[28]_i_1_n_5\,
      O(1) => \bytes_received_reg[28]_i_1_n_6\,
      O(0) => \bytes_received_reg[28]_i_1_n_7\,
      S(3 downto 0) => bytes_received_reg(31 downto 28)
    );
\bytes_received_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \bytes_received_reg[0]_1\,
      D => \bytes_received_reg[28]_i_1_n_6\,
      Q => bytes_received_reg(29),
      R => \bytes_received_reg[0]_0\
    );
\bytes_received_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \bytes_received_reg[0]_1\,
      D => \bytes_received_reg[0]_i_3_n_5\,
      Q => bytes_received_reg(2),
      R => \bytes_received_reg[0]_0\
    );
\bytes_received_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \bytes_received_reg[0]_1\,
      D => \bytes_received_reg[28]_i_1_n_5\,
      Q => bytes_received_reg(30),
      R => \bytes_received_reg[0]_0\
    );
\bytes_received_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \bytes_received_reg[0]_1\,
      D => \bytes_received_reg[28]_i_1_n_4\,
      Q => bytes_received_reg(31),
      R => \bytes_received_reg[0]_0\
    );
\bytes_received_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \bytes_received_reg[0]_1\,
      D => \bytes_received_reg[0]_i_3_n_4\,
      Q => bytes_received_reg(3),
      R => \bytes_received_reg[0]_0\
    );
\bytes_received_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \bytes_received_reg[0]_1\,
      D => \bytes_received_reg[4]_i_1_n_7\,
      Q => bytes_received_reg(4),
      R => \bytes_received_reg[0]_0\
    );
\bytes_received_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bytes_received_reg[0]_i_3_n_0\,
      CO(3) => \bytes_received_reg[4]_i_1_n_0\,
      CO(2) => \bytes_received_reg[4]_i_1_n_1\,
      CO(1) => \bytes_received_reg[4]_i_1_n_2\,
      CO(0) => \bytes_received_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bytes_received_reg[4]_i_1_n_4\,
      O(2) => \bytes_received_reg[4]_i_1_n_5\,
      O(1) => \bytes_received_reg[4]_i_1_n_6\,
      O(0) => \bytes_received_reg[4]_i_1_n_7\,
      S(3 downto 0) => bytes_received_reg(7 downto 4)
    );
\bytes_received_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \bytes_received_reg[0]_1\,
      D => \bytes_received_reg[4]_i_1_n_6\,
      Q => bytes_received_reg(5),
      R => \bytes_received_reg[0]_0\
    );
\bytes_received_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \bytes_received_reg[0]_1\,
      D => \bytes_received_reg[4]_i_1_n_5\,
      Q => bytes_received_reg(6),
      R => \bytes_received_reg[0]_0\
    );
\bytes_received_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \bytes_received_reg[0]_1\,
      D => \bytes_received_reg[4]_i_1_n_4\,
      Q => bytes_received_reg(7),
      R => \bytes_received_reg[0]_0\
    );
\bytes_received_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \bytes_received_reg[0]_1\,
      D => \bytes_received_reg[8]_i_1_n_7\,
      Q => bytes_received_reg(8),
      R => \bytes_received_reg[0]_0\
    );
\bytes_received_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bytes_received_reg[4]_i_1_n_0\,
      CO(3) => \bytes_received_reg[8]_i_1_n_0\,
      CO(2) => \bytes_received_reg[8]_i_1_n_1\,
      CO(1) => \bytes_received_reg[8]_i_1_n_2\,
      CO(0) => \bytes_received_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \bytes_received_reg[8]_i_1_n_4\,
      O(2) => \bytes_received_reg[8]_i_1_n_5\,
      O(1) => \bytes_received_reg[8]_i_1_n_6\,
      O(0) => \bytes_received_reg[8]_i_1_n_7\,
      S(3 downto 0) => bytes_received_reg(11 downto 8)
    );
\bytes_received_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \bytes_received_reg[0]_1\,
      D => \bytes_received_reg[8]_i_1_n_6\,
      Q => bytes_received_reg(9),
      R => \bytes_received_reg[0]_0\
    );
payload_fifo_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCCCB00000008"
    )
        port map (
      I0 => s_axis_tready,
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => reset_IBUF,
      I5 => m_axis_tready_1,
      O => payload_fifo_ready_i_1_n_0
    );
payload_fifo_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => payload_fifo_ready_i_1_n_0,
      Q => m_axis_tready_1,
      R => '0'
    );
\rdata_buffer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^e\(0),
      D => \rdata_buffer_reg[7]_0\(0),
      Q => s_axis_tdata_3(0),
      R => '0'
    );
\rdata_buffer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^e\(0),
      D => \rdata_buffer_reg[7]_0\(1),
      Q => s_axis_tdata_3(1),
      R => '0'
    );
\rdata_buffer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^e\(0),
      D => \rdata_buffer_reg[7]_0\(2),
      Q => s_axis_tdata_3(2),
      R => '0'
    );
\rdata_buffer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^e\(0),
      D => \rdata_buffer_reg[7]_0\(3),
      Q => s_axis_tdata_3(3),
      R => '0'
    );
\rdata_buffer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^e\(0),
      D => \rdata_buffer_reg[7]_0\(4),
      Q => s_axis_tdata_3(4),
      R => '0'
    );
\rdata_buffer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^e\(0),
      D => \rdata_buffer_reg[7]_0\(5),
      Q => s_axis_tdata_3(5),
      R => '0'
    );
\rdata_buffer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^e\(0),
      D => \rdata_buffer_reg[7]_0\(6),
      Q => s_axis_tdata_3(6),
      R => '0'
    );
\rdata_buffer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \^e\(0),
      D => \rdata_buffer_reg[7]_0\(7),
      Q => s_axis_tdata_3(7),
      R => '0'
    );
rlast_buffer_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => rlast_buffer_reg_1,
      Q => \^rlast_buffer_reg_0\,
      R => '0'
    );
rready1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rready1_carry_n_0,
      CO(2) => rready1_carry_n_1,
      CO(1) => rready1_carry_n_2,
      CO(0) => rready1_carry_n_3,
      CYINIT => '0',
      DI(3) => rready1_carry_i_1_n_0,
      DI(2) => rready1_carry_i_2_n_0,
      DI(1) => rready1_carry_i_3_n_0,
      DI(0) => rready1_carry_i_4_n_0,
      O(3 downto 0) => NLW_rready1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => rready1_carry_i_5_n_0,
      S(2) => rready1_carry_i_6_n_0,
      S(1) => rready1_carry_i_7_n_0,
      S(0) => rready1_carry_i_8_n_0
    );
\rready1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rready1_carry_n_0,
      CO(3) => \rready1_carry__0_n_0\,
      CO(2) => \rready1_carry__0_n_1\,
      CO(1) => \rready1_carry__0_n_2\,
      CO(0) => \rready1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \rready1_carry__0_i_1_n_0\,
      DI(2) => \rready1_carry__0_i_2_n_0\,
      DI(1) => \rready1_carry__0_i_3_n_0\,
      DI(0) => \rready1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_rready1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \rready1_carry__0_i_5_n_0\,
      S(2) => \rready1_carry__0_i_6_n_0\,
      S(1) => \rready1_carry__0_i_7_n_0\,
      S(0) => \rready1_carry__0_i_8_n_0\
    );
\rready1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bytes_received_reg(14),
      I1 => bytes_received_reg(15),
      O => \rready1_carry__0_i_1_n_0\
    );
\rready1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bytes_received_reg(12),
      I1 => bytes_received_reg(13),
      O => \rready1_carry__0_i_2_n_0\
    );
\rready1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bytes_received_reg(10),
      I1 => bytes_received_reg(11),
      O => \rready1_carry__0_i_3_n_0\
    );
\rready1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bytes_received_reg(8),
      I1 => bytes_received_reg(9),
      O => \rready1_carry__0_i_4_n_0\
    );
\rready1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bytes_received_reg(14),
      I1 => bytes_received_reg(15),
      O => \rready1_carry__0_i_5_n_0\
    );
\rready1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bytes_received_reg(12),
      I1 => bytes_received_reg(13),
      O => \rready1_carry__0_i_6_n_0\
    );
\rready1_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bytes_received_reg(10),
      I1 => bytes_received_reg(11),
      O => \rready1_carry__0_i_7_n_0\
    );
\rready1_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bytes_received_reg(8),
      I1 => bytes_received_reg(9),
      O => \rready1_carry__0_i_8_n_0\
    );
\rready1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rready1_carry__0_n_0\,
      CO(3) => \rready1_carry__1_n_0\,
      CO(2) => \rready1_carry__1_n_1\,
      CO(1) => \rready1_carry__1_n_2\,
      CO(0) => \rready1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \rready1_carry__1_i_1_n_0\,
      DI(2) => \rready1_carry__1_i_2_n_0\,
      DI(1) => \rready1_carry__1_i_3_n_0\,
      DI(0) => \rready1_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_rready1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \rready1_carry__1_i_5_n_0\,
      S(2) => \rready1_carry__1_i_6_n_0\,
      S(1) => \rready1_carry__1_i_7_n_0\,
      S(0) => \rready1_carry__1_i_8_n_0\
    );
\rready1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bytes_received_reg(22),
      I1 => bytes_received_reg(23),
      O => \rready1_carry__1_i_1_n_0\
    );
\rready1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bytes_received_reg(20),
      I1 => bytes_received_reg(21),
      O => \rready1_carry__1_i_2_n_0\
    );
\rready1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bytes_received_reg(18),
      I1 => bytes_received_reg(19),
      O => \rready1_carry__1_i_3_n_0\
    );
\rready1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bytes_received_reg(16),
      I1 => bytes_received_reg(17),
      O => \rready1_carry__1_i_4_n_0\
    );
\rready1_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bytes_received_reg(22),
      I1 => bytes_received_reg(23),
      O => \rready1_carry__1_i_5_n_0\
    );
\rready1_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bytes_received_reg(20),
      I1 => bytes_received_reg(21),
      O => \rready1_carry__1_i_6_n_0\
    );
\rready1_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bytes_received_reg(18),
      I1 => bytes_received_reg(19),
      O => \rready1_carry__1_i_7_n_0\
    );
\rready1_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bytes_received_reg(16),
      I1 => bytes_received_reg(17),
      O => \rready1_carry__1_i_8_n_0\
    );
\rready1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \rready1_carry__1_n_0\,
      CO(3) => \rready1_carry__2_n_0\,
      CO(2) => \rready1_carry__2_n_1\,
      CO(1) => \rready1_carry__2_n_2\,
      CO(0) => \rready1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \rready1_carry__2_i_1_n_0\,
      DI(2) => \rready1_carry__2_i_2_n_0\,
      DI(1) => \rready1_carry__2_i_3_n_0\,
      DI(0) => \rready1_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_rready1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \rready1_carry__2_i_5_n_0\,
      S(2) => \rready1_carry__2_i_6_n_0\,
      S(1) => \rready1_carry__2_i_7_n_0\,
      S(0) => \rready1_carry__2_i_8_n_0\
    );
\rready1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bytes_received_reg(30),
      I1 => bytes_received_reg(31),
      O => \rready1_carry__2_i_1_n_0\
    );
\rready1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bytes_received_reg(28),
      I1 => bytes_received_reg(29),
      O => \rready1_carry__2_i_2_n_0\
    );
\rready1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bytes_received_reg(26),
      I1 => bytes_received_reg(27),
      O => \rready1_carry__2_i_3_n_0\
    );
\rready1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bytes_received_reg(24),
      I1 => bytes_received_reg(25),
      O => \rready1_carry__2_i_4_n_0\
    );
\rready1_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bytes_received_reg(30),
      I1 => bytes_received_reg(31),
      O => \rready1_carry__2_i_5_n_0\
    );
\rready1_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bytes_received_reg(28),
      I1 => bytes_received_reg(29),
      O => \rready1_carry__2_i_6_n_0\
    );
\rready1_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bytes_received_reg(26),
      I1 => bytes_received_reg(27),
      O => \rready1_carry__2_i_7_n_0\
    );
\rready1_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bytes_received_reg(24),
      I1 => bytes_received_reg(25),
      O => \rready1_carry__2_i_8_n_0\
    );
rready1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bytes_received_reg(6),
      I1 => bytes_received_reg(7),
      O => rready1_carry_i_1_n_0
    );
rready1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bytes_received_reg(4),
      I1 => bytes_received_reg(5),
      O => rready1_carry_i_2_n_0
    );
rready1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bytes_received_reg(2),
      I1 => bytes_received_reg(3),
      O => rready1_carry_i_3_n_0
    );
rready1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bytes_received_reg(0),
      I1 => bytes_received_reg(1),
      O => rready1_carry_i_4_n_0
    );
rready1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bytes_received_reg(6),
      I1 => bytes_received_reg(7),
      O => rready1_carry_i_5_n_0
    );
rready1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bytes_received_reg(4),
      I1 => bytes_received_reg(5),
      O => rready1_carry_i_6_n_0
    );
rready1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bytes_received_reg(2),
      I1 => bytes_received_reg(3),
      O => rready1_carry_i_7_n_0
    );
rready1_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bytes_received_reg(1),
      I1 => bytes_received_reg(0),
      O => rready1_carry_i_8_n_0
    );
rready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCFAFFAAAA"
    )
        port map (
      I0 => rready_buffer,
      I1 => \^m_axis_tready\,
      I2 => Q(0),
      I3 => \rready1_carry__2_n_0\,
      I4 => m_axis_tvalid,
      I5 => reset_IBUF,
      O => rready_i_1_n_0
    );
rready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => rready_i_1_n_0,
      Q => \^m_axis_tready\,
      R => '0'
    );
rvalid_buffer_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0CAC0C0"
    )
        port map (
      I0 => \rready1_carry__2_n_0\,
      I1 => s_axis_tvalid_2,
      I2 => reset_IBUF,
      I3 => Q(0),
      I4 => m_axis_tvalid,
      O => rvalid_buffer_i_1_n_0
    );
rvalid_buffer_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => rvalid_buffer_i_1_n_0,
      Q => s_axis_tvalid_2,
      R => '0'
    );
\rx_shift_payload_buffer[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => rx_payload_valid,
      I1 => \rx_shift_payload_buffer_reg[0]\(0),
      I2 => \rx_shift_payload_buffer_reg[0]\(1),
      O => \streamhandler_state_reg[0]\(0)
    );
\streamhandler_state_next[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01010151"
    )
        port map (
      I0 => \streamhandler_state_next[1]_i_2_0\(0),
      I1 => \streamhandler_state_next[1]_i_3_n_0\,
      I2 => \streamhandler_state_next[1]_i_2_0\(1),
      I3 => \streamhandler_state_next_reg[0]\,
      I4 => \streamhandler_state_next[1]_i_2_0\(4),
      O => streamhandler_state_next_0
    );
\streamhandler_state_next[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7F7F7FFFFFFF7FF"
    )
        port map (
      I0 => \streamhandler_state_next[1]_i_2_0\(4),
      I1 => \streamhandler_state_next[1]_i_2_0\(3),
      I2 => \streamhandler_state_next[1]_i_2_0\(5),
      I3 => \streamhandler_state_next[1]_i_2_1\,
      I4 => \streamhandler_state_next[1]_i_2_0\(2),
      I5 => rx_pllast,
      O => \streamhandler_state_next[1]_i_3_n_0\
    );
\tdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => m_axis_tdata(0),
      I1 => state(2),
      I2 => Q(3),
      I3 => state(0),
      I4 => in3(0),
      O => \tdata[0]_i_1_n_0\
    );
\tdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => m_axis_tdata(1),
      I1 => state(2),
      I2 => Q(4),
      I3 => state(0),
      I4 => in3(1),
      O => \tdata[1]_i_1_n_0\
    );
\tdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => m_axis_tdata(2),
      I1 => Q(0),
      I2 => state(2),
      I3 => Q(5),
      I4 => state(0),
      I5 => in3(2),
      O => \tdata[2]_i_1_n_0\
    );
\tdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => m_axis_tdata(3),
      I1 => Q(1),
      I2 => state(2),
      I3 => Q(6),
      I4 => state(0),
      I5 => in3(3),
      O => \tdata[3]_i_1_n_0\
    );
\tdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => m_axis_tdata(4),
      I1 => Q(2),
      I2 => state(2),
      I3 => Q(7),
      I4 => state(0),
      I5 => in3(4),
      O => \tdata[4]_i_1_n_0\
    );
\tdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => m_axis_tdata(5),
      I1 => state(2),
      I2 => Q(8),
      I3 => state(0),
      I4 => in3(5),
      O => \tdata[5]_i_1_n_0\
    );
\tdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => m_axis_tdata(6),
      I1 => state(2),
      I2 => in4(0),
      I3 => state(0),
      I4 => in3(6),
      O => \tdata[6]_i_1_n_0\
    );
\tdata[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      O => \tdata[7]_i_1_n_0\
    );
\tdata[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => m_axis_tdata(7),
      I1 => state(2),
      I2 => in4(1),
      I3 => state(0),
      I4 => in3(7),
      O => \tdata[7]_i_2_n_0\
    );
\tdata_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tdata[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \tdata[0]_i_1_n_0\,
      Q => \tdata_reg[7]_0\(0)
    );
\tdata_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tdata[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \tdata[1]_i_1_n_0\,
      Q => \tdata_reg[7]_0\(1)
    );
\tdata_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tdata[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \tdata[2]_i_1_n_0\,
      Q => \tdata_reg[7]_0\(2)
    );
\tdata_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tdata[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \tdata[3]_i_1_n_0\,
      Q => \tdata_reg[7]_0\(3)
    );
\tdata_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tdata[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \tdata[4]_i_1_n_0\,
      Q => \tdata_reg[7]_0\(4)
    );
\tdata_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tdata[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \tdata[5]_i_1_n_0\,
      Q => \tdata_reg[7]_0\(5)
    );
\tdata_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tdata[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \tdata[6]_i_1_n_0\,
      Q => \tdata_reg[7]_0\(6)
    );
\tdata_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tdata[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \tdata[7]_i_2_n_0\,
      Q => \tdata_reg[7]_0\(7)
    );
tlast_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF83F00000800"
    )
        port map (
      I0 => m_axis_tlast,
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => reset_IBUF,
      I5 => \^tlast_reg_0\,
      O => tlast_i_1_n_0
    );
tlast_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => tlast_i_1_n_0,
      Q => \^tlast_reg_0\,
      R => '0'
    );
tvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFB30FB0"
    )
        port map (
      I0 => m_axis_tvalid_0,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => \^tvalid_reg_0\,
      O => tvalid_i_1_n_0
    );
tvalid_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => tvalid_i_1_n_0,
      Q => \^tvalid_reg_0\
    );
u_payload_fifo: entity work.axis_data_fifo_8bit
     port map (
      m_axis_tdata(7 downto 0) => m_axis_tdata(7 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready_1,
      m_axis_tvalid => m_axis_tvalid_0,
      s_axis_aclk => clk_IBUF_BUFG,
      s_axis_aresetn => \^e\(0),
      s_axis_tdata(7 downto 0) => s_axis_tdata(7 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => payload_ready,
      s_axis_tvalid => s_axis_tvalid
    );
u_payload_fifo_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_IBUF,
      O => \^e\(0)
    );
u_rx_fifo: entity work.axis_data_fifo_8bit
     port map (
      m_axis_tdata(7 downto 0) => D(7 downto 0),
      m_axis_tlast => rx_pllast,
      m_axis_tready => '1',
      m_axis_tvalid => rx_payload_valid,
      s_axis_aclk => clk_IBUF_BUFG,
      s_axis_aresetn => \^e\(0),
      s_axis_tdata(7 downto 0) => s_axis_tdata_3(7 downto 0),
      s_axis_tlast => \^rlast_buffer_reg_0\,
      s_axis_tready => rready_buffer,
      s_axis_tvalid => s_axis_tvalid_2
    );
\w5500state_next[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => led_OBUF,
      I1 => rx_pllast,
      I2 => \w5500state_next_reg[0]\,
      I3 => \w5500state_next_reg[0]_0\,
      I4 => \w5500state_next_reg[0]_1\,
      I5 => payload_ready,
      O => idle_mode(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity w5500_state_machine is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tlast : out STD_LOGIC;
    s_axis_tvalid : out STD_LOGIC;
    tlast_reg : out STD_LOGIC;
    m_axis_tready : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \tdata_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    spi_busy : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC;
    rlast_buffer_reg : in STD_LOGIC;
    m_axis_tvalid : in STD_LOGIC;
    led_OBUF : in STD_LOGIC;
    s_axis_tready : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \bytes_received_reg[0]\ : in STD_LOGIC;
    \bytes_received_reg[0]_0\ : in STD_LOGIC;
    \u_ila_0_payload_data[0]\ : out STD_LOGIC;
    \u_ila_0_payload_data[1]\ : out STD_LOGIC;
    \u_ila_0_payload_data[2]\ : out STD_LOGIC;
    \u_ila_0_payload_data[3]\ : out STD_LOGIC;
    \u_ila_0_payload_data[4]\ : out STD_LOGIC;
    \u_ila_0_payload_data[5]\ : out STD_LOGIC;
    \u_ila_0_payload_data[6]\ : out STD_LOGIC;
    \u_ila_0_payload_data[7]\ : out STD_LOGIC
  );
end w5500_state_machine;

architecture STRUCTURE of w5500_state_machine is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \byte_length_buffer[0]_i_10_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[0]_i_1_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[0]_i_3_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[0]_i_4_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[0]_i_5_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[0]_i_6_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[0]_i_7_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[0]_i_8_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[0]_i_9_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[12]_i_2_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[12]_i_3_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[12]_i_4_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[12]_i_5_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[12]_i_6_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[12]_i_7_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[12]_i_8_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[12]_i_9_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[16]_i_2_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[16]_i_3_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[16]_i_4_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[16]_i_5_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[16]_i_6_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[16]_i_7_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[16]_i_8_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[16]_i_9_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[20]_i_2_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[20]_i_3_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[20]_i_4_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[20]_i_5_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[20]_i_6_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[20]_i_7_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[20]_i_8_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[20]_i_9_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[24]_i_2_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[24]_i_3_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[24]_i_4_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[24]_i_5_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[24]_i_6_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[24]_i_7_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[24]_i_8_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[24]_i_9_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[28]_i_2_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[28]_i_3_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[28]_i_4_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[28]_i_5_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[28]_i_6_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[28]_i_7_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[28]_i_8_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[4]_i_2_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[4]_i_3_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[4]_i_4_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[4]_i_5_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[4]_i_6_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[4]_i_7_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[4]_i_8_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[4]_i_9_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[8]_i_2_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[8]_i_3_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[8]_i_4_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[8]_i_5_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[8]_i_6_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[8]_i_7_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[8]_i_8_n_0\ : STD_LOGIC;
  signal \byte_length_buffer[8]_i_9_n_0\ : STD_LOGIC;
  signal byte_length_buffer_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \byte_length_buffer_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \byte_length_buffer_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \byte_length_buffer_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \byte_length_buffer_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \byte_length_buffer_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \byte_length_buffer_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \byte_length_buffer_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \byte_length_buffer_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \byte_length_buffer_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \byte_length_buffer_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \byte_length_buffer_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \byte_length_buffer_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \byte_length_buffer_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \byte_length_buffer_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \byte_length_buffer_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \byte_length_buffer_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \byte_length_buffer_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \byte_length_buffer_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \byte_length_buffer_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \byte_length_buffer_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \byte_length_buffer_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \byte_length_buffer_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \byte_length_buffer_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \byte_length_buffer_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \byte_length_buffer_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \byte_length_buffer_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \byte_length_buffer_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \byte_length_buffer_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \byte_length_buffer_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \byte_length_buffer_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \byte_length_buffer_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \byte_length_buffer_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \byte_length_buffer_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \byte_length_buffer_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \byte_length_buffer_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \byte_length_buffer_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \byte_length_buffer_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \byte_length_buffer_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \byte_length_buffer_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \byte_length_buffer_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \byte_length_buffer_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \byte_length_buffer_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \byte_length_buffer_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \byte_length_buffer_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \byte_length_buffer_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \byte_length_buffer_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \byte_length_buffer_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \byte_length_buffer_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \byte_length_buffer_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \byte_length_buffer_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \byte_length_buffer_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \byte_length_buffer_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \byte_length_buffer_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \byte_length_buffer_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \byte_length_buffer_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \byte_length_buffer_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \byte_length_buffer_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \byte_length_buffer_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \byte_length_buffer_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \byte_length_buffer_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \byte_length_buffer_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \byte_length_buffer_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \byte_length_buffer_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal conf_header : STD_LOGIC;
  signal conf_header0_in : STD_LOGIC_VECTOR ( 13 downto 2 );
  signal \conf_header[10]_i_2_n_0\ : STD_LOGIC;
  signal \conf_header[11]_i_2_n_0\ : STD_LOGIC;
  signal \conf_header[12]_i_2_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_10_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_11_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_12_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_13_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_14_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_15_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_16_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_17_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_18_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_20_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_21_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_22_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_23_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_24_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_25_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_26_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_27_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_28_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_29_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_30_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_31_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_32_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_33_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_34_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_35_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_37_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_38_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_39_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_40_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_41_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_42_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_43_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_45_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_46_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_47_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_48_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_49_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_4_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_5_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_6_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_7_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_8_n_0\ : STD_LOGIC;
  signal \conf_header[13]_i_9_n_0\ : STD_LOGIC;
  signal \conf_header[14]_i_1_n_0\ : STD_LOGIC;
  signal \conf_header[15]_i_1_n_0\ : STD_LOGIC;
  signal \conf_header[16]_i_1_n_0\ : STD_LOGIC;
  signal \conf_header[17]_i_1_n_0\ : STD_LOGIC;
  signal \conf_header[18]_i_1_n_0\ : STD_LOGIC;
  signal \conf_header[19]_i_1_n_0\ : STD_LOGIC;
  signal \conf_header[20]_i_1_n_0\ : STD_LOGIC;
  signal \conf_header[21]_i_1_n_0\ : STD_LOGIC;
  signal \conf_header[22]_i_1_n_0\ : STD_LOGIC;
  signal \conf_header[23]_i_1_n_0\ : STD_LOGIC;
  signal \conf_header[23]_i_2_n_0\ : STD_LOGIC;
  signal \conf_header[4]_i_1_n_0\ : STD_LOGIC;
  signal \conf_header[8]_i_2_n_0\ : STD_LOGIC;
  signal \conf_header[8]_i_3_n_0\ : STD_LOGIC;
  signal \conf_header[9]_i_2_n_0\ : STD_LOGIC;
  signal \conf_header_reg[13]_i_19_n_0\ : STD_LOGIC;
  signal \conf_header_reg[13]_i_3_n_0\ : STD_LOGIC;
  signal \conf_header_reg_n_0_[3]\ : STD_LOGIC;
  signal \conf_header_reg_n_0_[4]\ : STD_LOGIC;
  signal conf_header_valid : STD_LOGIC;
  signal conf_header_valid_i_1_n_0 : STD_LOGIC;
  signal data3 : STD_LOGIC_VECTOR ( 31 downto 29 );
  signal in3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal in4 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal payload_byte_length : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal payload_byte_length1 : STD_LOGIC;
  signal \payload_byte_length[0]_i_1_n_0\ : STD_LOGIC;
  signal \payload_byte_length[0]_i_2_n_0\ : STD_LOGIC;
  signal \payload_byte_length[0]_i_3_n_0\ : STD_LOGIC;
  signal \payload_byte_length[1]_i_1_n_0\ : STD_LOGIC;
  signal \payload_byte_length[1]_i_2_n_0\ : STD_LOGIC;
  signal \payload_byte_length[1]_i_3_n_0\ : STD_LOGIC;
  signal \payload_byte_length[2]_i_10_n_0\ : STD_LOGIC;
  signal \payload_byte_length[2]_i_11_n_0\ : STD_LOGIC;
  signal \payload_byte_length[2]_i_12_n_0\ : STD_LOGIC;
  signal \payload_byte_length[2]_i_13_n_0\ : STD_LOGIC;
  signal \payload_byte_length[2]_i_1_n_0\ : STD_LOGIC;
  signal \payload_byte_length[2]_i_2_n_0\ : STD_LOGIC;
  signal \payload_byte_length[2]_i_3_n_0\ : STD_LOGIC;
  signal \payload_byte_length[2]_i_4_n_0\ : STD_LOGIC;
  signal \payload_byte_length[2]_i_5_n_0\ : STD_LOGIC;
  signal \payload_byte_length[2]_i_6_n_0\ : STD_LOGIC;
  signal \payload_byte_length[2]_i_7_n_0\ : STD_LOGIC;
  signal \payload_byte_length[2]_i_9_n_0\ : STD_LOGIC;
  signal \payload_byte_length[3]_i_1_n_0\ : STD_LOGIC;
  signal \payload_byte_length[4]_i_1_n_0\ : STD_LOGIC;
  signal \payload_byte_length[5]_i_1_n_0\ : STD_LOGIC;
  signal \payload_byte_length[6]_i_1_n_0\ : STD_LOGIC;
  signal \payload_byte_length[7]_i_1_n_0\ : STD_LOGIC;
  signal \payload_byte_length[7]_i_3_n_0\ : STD_LOGIC;
  signal \payload_byte_length[7]_i_4_n_0\ : STD_LOGIC;
  signal \payload_byte_length[7]_i_5_n_0\ : STD_LOGIC;
  signal payload_byte_length_1 : STD_LOGIC;
  signal \payload_byte_length_reg[2]_i_8_n_0\ : STD_LOGIC;
  signal payload_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal payload_data0 : STD_LOGIC;
  signal \payload_data0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \payload_data0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \payload_data0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \payload_data0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \payload_data0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \payload_data0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \payload_data0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \payload_data0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \payload_data0_carry__0_n_0\ : STD_LOGIC;
  signal \payload_data0_carry__0_n_1\ : STD_LOGIC;
  signal \payload_data0_carry__0_n_2\ : STD_LOGIC;
  signal \payload_data0_carry__0_n_3\ : STD_LOGIC;
  signal \payload_data0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \payload_data0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \payload_data0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \payload_data0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \payload_data0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \payload_data0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \payload_data0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \payload_data0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \payload_data0_carry__1_n_0\ : STD_LOGIC;
  signal \payload_data0_carry__1_n_1\ : STD_LOGIC;
  signal \payload_data0_carry__1_n_2\ : STD_LOGIC;
  signal \payload_data0_carry__1_n_3\ : STD_LOGIC;
  signal \payload_data0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \payload_data0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \payload_data0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \payload_data0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \payload_data0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \payload_data0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \payload_data0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \payload_data0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \payload_data0_carry__2_n_1\ : STD_LOGIC;
  signal \payload_data0_carry__2_n_2\ : STD_LOGIC;
  signal \payload_data0_carry__2_n_3\ : STD_LOGIC;
  signal payload_data0_carry_i_1_n_0 : STD_LOGIC;
  signal payload_data0_carry_i_2_n_0 : STD_LOGIC;
  signal payload_data0_carry_i_3_n_0 : STD_LOGIC;
  signal payload_data0_carry_i_4_n_0 : STD_LOGIC;
  signal payload_data0_carry_i_5_n_0 : STD_LOGIC;
  signal payload_data0_carry_i_6_n_0 : STD_LOGIC;
  signal payload_data0_carry_i_7_n_0 : STD_LOGIC;
  signal payload_data0_carry_i_8_n_0 : STD_LOGIC;
  signal payload_data0_carry_n_0 : STD_LOGIC;
  signal payload_data0_carry_n_1 : STD_LOGIC;
  signal payload_data0_carry_n_2 : STD_LOGIC;
  signal payload_data0_carry_n_3 : STD_LOGIC;
  signal \payload_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \payload_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \payload_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \payload_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \payload_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \payload_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \payload_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \payload_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \payload_data[7]_i_2_n_0\ : STD_LOGIC;
  signal \payload_data[7]_i_3_n_0\ : STD_LOGIC;
  signal payload_data_has_been_set : STD_LOGIC;
  signal payload_data_has_been_set0 : STD_LOGIC;
  signal payload_data_has_been_set_i_10_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_12_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_13_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_14_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_15_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_16_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_17_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_18_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_19_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_1_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_20_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_21_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_22_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_23_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_24_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_25_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_26_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_29_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_2_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_30_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_31_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_33_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_34_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_35_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_36_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_37_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_39_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_40_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_41_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_42_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_43_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_44_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_45_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_46_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_47_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_48_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_49_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_50_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_51_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_52_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_53_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_54_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_5_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_8_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_i_9_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_reg_i_11_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_reg_i_27_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_reg_i_28_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_reg_i_32_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_reg_i_38_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_reg_i_3_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_reg_i_6_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_reg_i_7_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_reg_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_reg_rep_n_0 : STD_LOGIC;
  signal payload_data_has_been_set_rep_i_1_n_0 : STD_LOGIC;
  signal payload_last_i_1_n_0 : STD_LOGIC;
  signal payload_last_i_2_n_0 : STD_LOGIC;
  signal payload_last_i_3_n_0 : STD_LOGIC;
  signal payload_last_i_4_n_0 : STD_LOGIC;
  signal payload_last_i_5_n_0 : STD_LOGIC;
  signal payload_last_i_6_n_0 : STD_LOGIC;
  signal payload_last_i_7_n_0 : STD_LOGIC;
  signal payload_last_i_8_n_0 : STD_LOGIC;
  signal payload_last_i_9_n_0 : STD_LOGIC;
  signal payload_last_reg_n_0 : STD_LOGIC;
  signal payload_valid : STD_LOGIC;
  signal payload_valid_i_1_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal prev_payload_data_has_been_set : STD_LOGIC;
  signal prev_spi_busy : STD_LOGIC;
  signal \ptm_transmitted_byte_counter0_carry__0_n_0\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter0_carry__0_n_1\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter0_carry__0_n_3\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter0_carry__0_n_4\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter0_carry__0_n_5\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter0_carry__0_n_6\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter0_carry__0_n_7\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter0_carry__1_n_2\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter0_carry__1_n_3\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter0_carry__1_n_5\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter0_carry__1_n_6\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter0_carry__1_n_7\ : STD_LOGIC;
  signal ptm_transmitted_byte_counter0_carry_n_0 : STD_LOGIC;
  signal ptm_transmitted_byte_counter0_carry_n_1 : STD_LOGIC;
  signal ptm_transmitted_byte_counter0_carry_n_2 : STD_LOGIC;
  signal ptm_transmitted_byte_counter0_carry_n_3 : STD_LOGIC;
  signal ptm_transmitted_byte_counter0_carry_n_4 : STD_LOGIC;
  signal ptm_transmitted_byte_counter0_carry_n_5 : STD_LOGIC;
  signal ptm_transmitted_byte_counter0_carry_n_6 : STD_LOGIC;
  signal ptm_transmitted_byte_counter0_carry_n_7 : STD_LOGIC;
  signal \ptm_transmitted_byte_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter[11]_i_1_n_0\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter[11]_i_2_n_0\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter[11]_i_3_n_0\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter[11]_i_4_n_0\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter[9]_i_1_n_0\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \ptm_transmitted_byte_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal raw_payload_buffer : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal raw_payload_buffer0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \raw_payload_buffer[0]_i_1_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[14]_i_1_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[15]_i_1_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[16]_i_1_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[16]_i_3_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[16]_i_4_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[17]_i_1_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[17]_i_3_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[17]_i_4_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[18]_i_1_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[18]_i_3_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[18]_i_4_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[19]_i_10_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[19]_i_11_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[19]_i_12_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[19]_i_13_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[19]_i_14_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[19]_i_1_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[19]_i_3_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[19]_i_4_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[19]_i_7_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[19]_i_8_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[19]_i_9_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[20]_i_1_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[20]_i_3_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[20]_i_4_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[21]_i_1_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[21]_i_3_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[21]_i_4_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[22]_i_1_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[22]_i_3_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[22]_i_4_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[23]_i_1_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[23]_i_3_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[23]_i_4_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[24]_i_1_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[24]_i_2_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[24]_i_3_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[24]_i_4_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[24]_i_5_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[24]_i_6_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[25]_i_1_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[25]_i_2_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[25]_i_3_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[25]_i_4_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[25]_i_5_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[25]_i_6_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[26]_i_1_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[26]_i_2_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[26]_i_3_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[27]_i_10_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[27]_i_12_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[27]_i_13_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[27]_i_14_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[27]_i_15_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[27]_i_16_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[27]_i_17_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[27]_i_18_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[27]_i_19_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[27]_i_1_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[27]_i_2_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[27]_i_3_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[27]_i_7_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[27]_i_8_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[27]_i_9_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[28]_i_1_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[28]_i_2_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[28]_i_3_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[28]_i_4_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[29]_i_1_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[29]_i_2_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[29]_i_3_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[29]_i_4_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[29]_i_5_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[2]_i_1_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[30]_i_1_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[30]_i_2_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[30]_i_3_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[30]_i_4_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[30]_i_5_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[31]_i_10_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[31]_i_11_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[31]_i_12_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[31]_i_13_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[31]_i_14_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[31]_i_15_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[31]_i_2_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[31]_i_4_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[31]_i_6_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[31]_i_7_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[31]_i_8_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[31]_i_9_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[3]_i_1_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[4]_i_1_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[6]_i_1_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[7]_i_1_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer[9]_i_1_n_0\ : STD_LOGIC;
  signal raw_payload_buffer_2 : STD_LOGIC;
  signal \raw_payload_buffer_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[17]_i_2_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[18]_i_2_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[19]_i_5_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[19]_i_5_n_1\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[19]_i_5_n_2\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[19]_i_5_n_3\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[19]_i_6_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[19]_i_6_n_1\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[19]_i_6_n_2\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[19]_i_6_n_3\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[21]_i_2_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[22]_i_2_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[27]_i_11_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[27]_i_11_n_1\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[27]_i_11_n_2\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[27]_i_11_n_3\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[27]_i_4_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[27]_i_4_n_1\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[27]_i_4_n_2\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[27]_i_4_n_3\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[27]_i_5_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[27]_i_5_n_1\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[27]_i_5_n_2\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[27]_i_5_n_3\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[27]_i_6_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[27]_i_6_n_1\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[27]_i_6_n_2\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[27]_i_6_n_3\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[30]_i_6_n_1\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[30]_i_6_n_2\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[30]_i_6_n_3\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[30]_i_7_n_1\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[30]_i_7_n_2\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[30]_i_7_n_3\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \raw_payload_buffer_reg[31]_i_5_n_0\ : STD_LOGIC;
  signal rx_payload_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rx_shift_payload_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \rx_shift_payload_buffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \rx_shift_payload_buffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \rx_shift_payload_buffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \rx_shift_payload_buffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \rx_shift_payload_buffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \rx_shift_payload_buffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \rx_shift_payload_buffer_reg_n_0_[16]\ : STD_LOGIC;
  signal \rx_shift_payload_buffer_reg_n_0_[17]\ : STD_LOGIC;
  signal \rx_shift_payload_buffer_reg_n_0_[18]\ : STD_LOGIC;
  signal \rx_shift_payload_buffer_reg_n_0_[19]\ : STD_LOGIC;
  signal \rx_shift_payload_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \rx_shift_payload_buffer_reg_n_0_[20]\ : STD_LOGIC;
  signal \rx_shift_payload_buffer_reg_n_0_[21]\ : STD_LOGIC;
  signal \rx_shift_payload_buffer_reg_n_0_[22]\ : STD_LOGIC;
  signal \rx_shift_payload_buffer_reg_n_0_[23]\ : STD_LOGIC;
  signal \rx_shift_payload_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \rx_shift_payload_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \rx_shift_payload_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \rx_shift_payload_buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \rx_shift_payload_buffer_reg_n_0_[9]\ : STD_LOGIC;
  signal shift_payload_buffer : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \shift_payload_buffer[31]_i_1_n_0\ : STD_LOGIC;
  signal \shift_payload_buffer[7]_i_1_n_0\ : STD_LOGIC;
  signal streamhandler_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal streamhandler_state_next : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \streamhandler_state_next[0]_i_1_n_0\ : STD_LOGIC;
  signal \streamhandler_state_next[1]_i_1_n_0\ : STD_LOGIC;
  signal \streamhandler_state_next[1]_i_4_n_0\ : STD_LOGIC;
  signal streamhandler_state_next_0 : STD_LOGIC;
  signal u_w5500_axi_data_streamer_n_14 : STD_LOGIC;
  signal u_w5500_axi_data_streamer_n_15 : STD_LOGIC;
  signal w5500state : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \w5500state_next[0]_i_1_n_0\ : STD_LOGIC;
  signal \w5500state_next[0]_i_2_n_0\ : STD_LOGIC;
  signal \w5500state_next[0]_i_3_n_0\ : STD_LOGIC;
  signal \w5500state_next[1]_i_1_n_0\ : STD_LOGIC;
  signal \w5500state_next[1]_i_2_n_0\ : STD_LOGIC;
  signal \w5500state_next[1]_i_3_n_0\ : STD_LOGIC;
  signal \w5500state_next[2]_i_1_n_0\ : STD_LOGIC;
  signal \w5500state_next[2]_i_2_n_0\ : STD_LOGIC;
  signal \w5500state_next[3]_i_1_n_0\ : STD_LOGIC;
  signal \w5500state_next[3]_i_2_n_0\ : STD_LOGIC;
  signal \w5500state_next[3]_i_3_n_0\ : STD_LOGIC;
  signal \w5500state_next[3]_i_4_n_0\ : STD_LOGIC;
  signal \w5500state_next[3]_i_5_n_0\ : STD_LOGIC;
  signal \w5500state_next[3]_i_6_n_0\ : STD_LOGIC;
  signal \w5500state_next[3]_i_7_n_0\ : STD_LOGIC;
  signal \w5500state_next[4]_i_2_n_0\ : STD_LOGIC;
  signal \w5500state_next[4]_i_3_n_0\ : STD_LOGIC;
  signal \w5500state_next[4]_i_4_n_0\ : STD_LOGIC;
  signal \w5500state_next[4]_i_5_n_0\ : STD_LOGIC;
  signal \w5500state_next[5]_i_3_n_0\ : STD_LOGIC;
  signal \w5500state_next[5]_i_4_n_0\ : STD_LOGIC;
  signal \w5500state_next[5]_i_5_n_0\ : STD_LOGIC;
  signal \w5500state_next[5]_i_6_n_0\ : STD_LOGIC;
  signal \w5500state_next[5]_i_7_n_0\ : STD_LOGIC;
  signal \w5500state_next[5]_i_8_n_0\ : STD_LOGIC;
  signal \w5500state_next[5]_i_9_n_0\ : STD_LOGIC;
  signal \w5500state_next_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \w5500state_next_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \w5500state_next_reg_n_0_[0]\ : STD_LOGIC;
  signal \w5500state_next_reg_n_0_[1]\ : STD_LOGIC;
  signal \w5500state_next_reg_n_0_[2]\ : STD_LOGIC;
  signal \w5500state_next_reg_n_0_[3]\ : STD_LOGIC;
  signal \w5500state_next_reg_n_0_[4]\ : STD_LOGIC;
  signal \w5500state_next_reg_n_0_[5]\ : STD_LOGIC;
  signal \NLW_byte_length_buffer_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_payload_data0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_payload_data0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_payload_data0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_payload_data0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ptm_transmitted_byte_counter0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_ptm_transmitted_byte_counter0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_raw_payload_buffer_reg[30]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_raw_payload_buffer_reg[30]_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \byte_length_buffer_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \byte_length_buffer_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \byte_length_buffer_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \byte_length_buffer_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \byte_length_buffer_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \byte_length_buffer_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \byte_length_buffer_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \byte_length_buffer_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \conf_header[12]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \conf_header[13]_i_22\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \conf_header[13]_i_23\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \conf_header[13]_i_25\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \conf_header[13]_i_27\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \conf_header[13]_i_28\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \conf_header[13]_i_47\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of conf_header_valid_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \payload_byte_length[0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \payload_byte_length[1]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \payload_byte_length[2]_i_12\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \payload_byte_length[2]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \payload_byte_length[2]_i_5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \payload_byte_length[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \payload_byte_length[4]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \payload_byte_length[5]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \payload_byte_length[6]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \payload_byte_length[7]_i_3\ : label is "soft_lutpair32";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of payload_data0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \payload_data0_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \payload_data0_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \payload_data0_carry__2\ : label is 11;
  attribute SOFT_HLUTNM of \payload_data[0]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \payload_data[1]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \payload_data[2]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \payload_data[3]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \payload_data[4]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \payload_data[5]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \payload_data[6]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \payload_data[7]_i_3\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of payload_data_has_been_set_i_14 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of payload_data_has_been_set_i_2 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of payload_data_has_been_set_i_26 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of payload_data_has_been_set_i_36 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of payload_data_has_been_set_i_41 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of payload_data_has_been_set_i_42 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of payload_data_has_been_set_i_52 : label is "soft_lutpair28";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of payload_data_has_been_set_reg : label is "payload_data_has_been_set_reg";
  attribute ORIG_CELL_NAME of payload_data_has_been_set_reg_rep : label is "payload_data_has_been_set_reg";
  attribute SOFT_HLUTNM of payload_valid_i_1 : label is "soft_lutpair15";
  attribute ADDER_THRESHOLD of ptm_transmitted_byte_counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \ptm_transmitted_byte_counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \ptm_transmitted_byte_counter0_carry__1\ : label is 35;
  attribute SOFT_HLUTNM of \ptm_transmitted_byte_counter[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \ptm_transmitted_byte_counter[10]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \ptm_transmitted_byte_counter[11]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \ptm_transmitted_byte_counter[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \ptm_transmitted_byte_counter[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \ptm_transmitted_byte_counter[3]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \ptm_transmitted_byte_counter[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \ptm_transmitted_byte_counter[5]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \ptm_transmitted_byte_counter[6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \ptm_transmitted_byte_counter[7]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \ptm_transmitted_byte_counter[8]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \ptm_transmitted_byte_counter[9]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \raw_payload_buffer[24]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \raw_payload_buffer[24]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \raw_payload_buffer[24]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \raw_payload_buffer[24]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \raw_payload_buffer[24]_i_6\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \raw_payload_buffer[25]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \raw_payload_buffer[25]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \raw_payload_buffer[25]_i_5\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \raw_payload_buffer[25]_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \raw_payload_buffer[29]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \raw_payload_buffer[29]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \raw_payload_buffer[29]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \raw_payload_buffer[29]_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \raw_payload_buffer[31]_i_14\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \raw_payload_buffer[31]_i_15\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \raw_payload_buffer[31]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \raw_payload_buffer[31]_i_6\ : label is "soft_lutpair11";
  attribute ADDER_THRESHOLD of \raw_payload_buffer_reg[19]_i_5\ : label is 35;
  attribute ADDER_THRESHOLD of \raw_payload_buffer_reg[19]_i_6\ : label is 35;
  attribute ADDER_THRESHOLD of \raw_payload_buffer_reg[27]_i_11\ : label is 35;
  attribute ADDER_THRESHOLD of \raw_payload_buffer_reg[27]_i_4\ : label is 35;
  attribute ADDER_THRESHOLD of \raw_payload_buffer_reg[27]_i_5\ : label is 35;
  attribute ADDER_THRESHOLD of \raw_payload_buffer_reg[27]_i_6\ : label is 35;
  attribute ADDER_THRESHOLD of \raw_payload_buffer_reg[30]_i_6\ : label is 35;
  attribute ADDER_THRESHOLD of \raw_payload_buffer_reg[30]_i_7\ : label is 35;
  attribute SOFT_HLUTNM of \shift_payload_buffer[10]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \shift_payload_buffer[11]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \shift_payload_buffer[12]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \shift_payload_buffer[13]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \shift_payload_buffer[14]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \shift_payload_buffer[15]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \shift_payload_buffer[8]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \shift_payload_buffer[9]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \w5500state_next[1]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \w5500state_next[5]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \w5500state_next[5]_i_9\ : label is "soft_lutpair8";
begin
  Q(0) <= \^q\(0);
  \u_ila_0_payload_data[0]\ <= payload_data(0);
  \u_ila_0_payload_data[1]\ <= payload_data(1);
  \u_ila_0_payload_data[2]\ <= payload_data(2);
  \u_ila_0_payload_data[3]\ <= payload_data(3);
  \u_ila_0_payload_data[4]\ <= payload_data(4);
  \u_ila_0_payload_data[5]\ <= payload_data(5);
  \u_ila_0_payload_data[6]\ <= payload_data(6);
  \u_ila_0_payload_data[7]\ <= payload_data(7);
\byte_length_buffer[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => payload_data0,
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => streamhandler_state(0),
      O => \byte_length_buffer[0]_i_1_n_0\
    );
\byte_length_buffer[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5C55"
    )
        port map (
      I0 => byte_length_buffer_reg(0),
      I1 => payload_byte_length(0),
      I2 => prev_payload_data_has_been_set,
      I3 => payload_data_has_been_set_reg_n_0,
      O => \byte_length_buffer[0]_i_10_n_0\
    );
\byte_length_buffer[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => payload_byte_length(3),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => byte_length_buffer_reg(3),
      O => \byte_length_buffer[0]_i_3_n_0\
    );
\byte_length_buffer[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => payload_byte_length(2),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => byte_length_buffer_reg(2),
      O => \byte_length_buffer[0]_i_4_n_0\
    );
\byte_length_buffer[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => payload_byte_length(1),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => byte_length_buffer_reg(1),
      O => \byte_length_buffer[0]_i_5_n_0\
    );
\byte_length_buffer[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => payload_byte_length(0),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => byte_length_buffer_reg(0),
      O => \byte_length_buffer[0]_i_6_n_0\
    );
\byte_length_buffer[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5C55"
    )
        port map (
      I0 => byte_length_buffer_reg(3),
      I1 => payload_byte_length(3),
      I2 => prev_payload_data_has_been_set,
      I3 => payload_data_has_been_set_reg_n_0,
      O => \byte_length_buffer[0]_i_7_n_0\
    );
\byte_length_buffer[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5C55"
    )
        port map (
      I0 => byte_length_buffer_reg(2),
      I1 => payload_byte_length(2),
      I2 => prev_payload_data_has_been_set,
      I3 => payload_data_has_been_set_reg_n_0,
      O => \byte_length_buffer[0]_i_8_n_0\
    );
\byte_length_buffer[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5C55"
    )
        port map (
      I0 => byte_length_buffer_reg(1),
      I1 => payload_byte_length(1),
      I2 => prev_payload_data_has_been_set,
      I3 => payload_data_has_been_set_reg_n_0,
      O => \byte_length_buffer[0]_i_9_n_0\
    );
\byte_length_buffer[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => byte_length_buffer_reg(15),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[12]_i_2_n_0\
    );
\byte_length_buffer[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => byte_length_buffer_reg(14),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[12]_i_3_n_0\
    );
\byte_length_buffer[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => byte_length_buffer_reg(13),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[12]_i_4_n_0\
    );
\byte_length_buffer[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => byte_length_buffer_reg(12),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[12]_i_5_n_0\
    );
\byte_length_buffer[12]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => byte_length_buffer_reg(15),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[12]_i_6_n_0\
    );
\byte_length_buffer[12]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => byte_length_buffer_reg(14),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[12]_i_7_n_0\
    );
\byte_length_buffer[12]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => byte_length_buffer_reg(13),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[12]_i_8_n_0\
    );
\byte_length_buffer[12]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => byte_length_buffer_reg(12),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[12]_i_9_n_0\
    );
\byte_length_buffer[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => byte_length_buffer_reg(19),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[16]_i_2_n_0\
    );
\byte_length_buffer[16]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => byte_length_buffer_reg(18),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[16]_i_3_n_0\
    );
\byte_length_buffer[16]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => byte_length_buffer_reg(17),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[16]_i_4_n_0\
    );
\byte_length_buffer[16]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => byte_length_buffer_reg(16),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[16]_i_5_n_0\
    );
\byte_length_buffer[16]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => byte_length_buffer_reg(19),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[16]_i_6_n_0\
    );
\byte_length_buffer[16]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => byte_length_buffer_reg(18),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[16]_i_7_n_0\
    );
\byte_length_buffer[16]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => byte_length_buffer_reg(17),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[16]_i_8_n_0\
    );
\byte_length_buffer[16]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => byte_length_buffer_reg(16),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[16]_i_9_n_0\
    );
\byte_length_buffer[20]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => byte_length_buffer_reg(23),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[20]_i_2_n_0\
    );
\byte_length_buffer[20]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => byte_length_buffer_reg(22),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[20]_i_3_n_0\
    );
\byte_length_buffer[20]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => byte_length_buffer_reg(21),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[20]_i_4_n_0\
    );
\byte_length_buffer[20]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => byte_length_buffer_reg(20),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[20]_i_5_n_0\
    );
\byte_length_buffer[20]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => byte_length_buffer_reg(23),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[20]_i_6_n_0\
    );
\byte_length_buffer[20]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => byte_length_buffer_reg(22),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[20]_i_7_n_0\
    );
\byte_length_buffer[20]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => byte_length_buffer_reg(21),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[20]_i_8_n_0\
    );
\byte_length_buffer[20]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => byte_length_buffer_reg(20),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[20]_i_9_n_0\
    );
\byte_length_buffer[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => byte_length_buffer_reg(27),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[24]_i_2_n_0\
    );
\byte_length_buffer[24]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => byte_length_buffer_reg(26),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[24]_i_3_n_0\
    );
\byte_length_buffer[24]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => byte_length_buffer_reg(25),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[24]_i_4_n_0\
    );
\byte_length_buffer[24]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => byte_length_buffer_reg(24),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[24]_i_5_n_0\
    );
\byte_length_buffer[24]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => byte_length_buffer_reg(27),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[24]_i_6_n_0\
    );
\byte_length_buffer[24]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => byte_length_buffer_reg(26),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[24]_i_7_n_0\
    );
\byte_length_buffer[24]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => byte_length_buffer_reg(25),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[24]_i_8_n_0\
    );
\byte_length_buffer[24]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => byte_length_buffer_reg(24),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[24]_i_9_n_0\
    );
\byte_length_buffer[28]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => byte_length_buffer_reg(30),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[28]_i_2_n_0\
    );
\byte_length_buffer[28]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => byte_length_buffer_reg(29),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[28]_i_3_n_0\
    );
\byte_length_buffer[28]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => byte_length_buffer_reg(28),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[28]_i_4_n_0\
    );
\byte_length_buffer[28]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => byte_length_buffer_reg(31),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[28]_i_5_n_0\
    );
\byte_length_buffer[28]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => byte_length_buffer_reg(30),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_n_0,
      O => \byte_length_buffer[28]_i_6_n_0\
    );
\byte_length_buffer[28]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => byte_length_buffer_reg(29),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[28]_i_7_n_0\
    );
\byte_length_buffer[28]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => byte_length_buffer_reg(28),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[28]_i_8_n_0\
    );
\byte_length_buffer[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => payload_byte_length(7),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => byte_length_buffer_reg(7),
      O => \byte_length_buffer[4]_i_2_n_0\
    );
\byte_length_buffer[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => payload_byte_length(6),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => byte_length_buffer_reg(6),
      O => \byte_length_buffer[4]_i_3_n_0\
    );
\byte_length_buffer[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => payload_byte_length(5),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => byte_length_buffer_reg(5),
      O => \byte_length_buffer[4]_i_4_n_0\
    );
\byte_length_buffer[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => payload_byte_length(4),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => byte_length_buffer_reg(4),
      O => \byte_length_buffer[4]_i_5_n_0\
    );
\byte_length_buffer[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5C55"
    )
        port map (
      I0 => byte_length_buffer_reg(7),
      I1 => payload_byte_length(7),
      I2 => prev_payload_data_has_been_set,
      I3 => payload_data_has_been_set_reg_n_0,
      O => \byte_length_buffer[4]_i_6_n_0\
    );
\byte_length_buffer[4]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5C55"
    )
        port map (
      I0 => byte_length_buffer_reg(6),
      I1 => payload_byte_length(6),
      I2 => prev_payload_data_has_been_set,
      I3 => payload_data_has_been_set_reg_n_0,
      O => \byte_length_buffer[4]_i_7_n_0\
    );
\byte_length_buffer[4]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5C55"
    )
        port map (
      I0 => byte_length_buffer_reg(5),
      I1 => payload_byte_length(5),
      I2 => prev_payload_data_has_been_set,
      I3 => payload_data_has_been_set_reg_n_0,
      O => \byte_length_buffer[4]_i_8_n_0\
    );
\byte_length_buffer[4]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5C55"
    )
        port map (
      I0 => byte_length_buffer_reg(4),
      I1 => payload_byte_length(4),
      I2 => prev_payload_data_has_been_set,
      I3 => payload_data_has_been_set_reg_n_0,
      O => \byte_length_buffer[4]_i_9_n_0\
    );
\byte_length_buffer[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => byte_length_buffer_reg(11),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[8]_i_2_n_0\
    );
\byte_length_buffer[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => byte_length_buffer_reg(10),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[8]_i_3_n_0\
    );
\byte_length_buffer[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => byte_length_buffer_reg(9),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[8]_i_4_n_0\
    );
\byte_length_buffer[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => byte_length_buffer_reg(8),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[8]_i_5_n_0\
    );
\byte_length_buffer[8]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => byte_length_buffer_reg(11),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[8]_i_6_n_0\
    );
\byte_length_buffer[8]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => byte_length_buffer_reg(10),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[8]_i_7_n_0\
    );
\byte_length_buffer[8]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => byte_length_buffer_reg(9),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[8]_i_8_n_0\
    );
\byte_length_buffer[8]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => byte_length_buffer_reg(8),
      I1 => prev_payload_data_has_been_set,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      O => \byte_length_buffer[8]_i_9_n_0\
    );
\byte_length_buffer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \byte_length_buffer[0]_i_1_n_0\,
      D => \byte_length_buffer_reg[0]_i_2_n_7\,
      Q => byte_length_buffer_reg(0),
      R => '0'
    );
\byte_length_buffer_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \byte_length_buffer_reg[0]_i_2_n_0\,
      CO(2) => \byte_length_buffer_reg[0]_i_2_n_1\,
      CO(1) => \byte_length_buffer_reg[0]_i_2_n_2\,
      CO(0) => \byte_length_buffer_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \byte_length_buffer[0]_i_3_n_0\,
      DI(2) => \byte_length_buffer[0]_i_4_n_0\,
      DI(1) => \byte_length_buffer[0]_i_5_n_0\,
      DI(0) => \byte_length_buffer[0]_i_6_n_0\,
      O(3) => \byte_length_buffer_reg[0]_i_2_n_4\,
      O(2) => \byte_length_buffer_reg[0]_i_2_n_5\,
      O(1) => \byte_length_buffer_reg[0]_i_2_n_6\,
      O(0) => \byte_length_buffer_reg[0]_i_2_n_7\,
      S(3) => \byte_length_buffer[0]_i_7_n_0\,
      S(2) => \byte_length_buffer[0]_i_8_n_0\,
      S(1) => \byte_length_buffer[0]_i_9_n_0\,
      S(0) => \byte_length_buffer[0]_i_10_n_0\
    );
\byte_length_buffer_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \byte_length_buffer[0]_i_1_n_0\,
      D => \byte_length_buffer_reg[8]_i_1_n_5\,
      Q => byte_length_buffer_reg(10),
      R => '0'
    );
\byte_length_buffer_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \byte_length_buffer[0]_i_1_n_0\,
      D => \byte_length_buffer_reg[8]_i_1_n_4\,
      Q => byte_length_buffer_reg(11),
      R => '0'
    );
\byte_length_buffer_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \byte_length_buffer[0]_i_1_n_0\,
      D => \byte_length_buffer_reg[12]_i_1_n_7\,
      Q => byte_length_buffer_reg(12),
      R => '0'
    );
\byte_length_buffer_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_length_buffer_reg[8]_i_1_n_0\,
      CO(3) => \byte_length_buffer_reg[12]_i_1_n_0\,
      CO(2) => \byte_length_buffer_reg[12]_i_1_n_1\,
      CO(1) => \byte_length_buffer_reg[12]_i_1_n_2\,
      CO(0) => \byte_length_buffer_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \byte_length_buffer[12]_i_2_n_0\,
      DI(2) => \byte_length_buffer[12]_i_3_n_0\,
      DI(1) => \byte_length_buffer[12]_i_4_n_0\,
      DI(0) => \byte_length_buffer[12]_i_5_n_0\,
      O(3) => \byte_length_buffer_reg[12]_i_1_n_4\,
      O(2) => \byte_length_buffer_reg[12]_i_1_n_5\,
      O(1) => \byte_length_buffer_reg[12]_i_1_n_6\,
      O(0) => \byte_length_buffer_reg[12]_i_1_n_7\,
      S(3) => \byte_length_buffer[12]_i_6_n_0\,
      S(2) => \byte_length_buffer[12]_i_7_n_0\,
      S(1) => \byte_length_buffer[12]_i_8_n_0\,
      S(0) => \byte_length_buffer[12]_i_9_n_0\
    );
\byte_length_buffer_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \byte_length_buffer[0]_i_1_n_0\,
      D => \byte_length_buffer_reg[12]_i_1_n_6\,
      Q => byte_length_buffer_reg(13),
      R => '0'
    );
\byte_length_buffer_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \byte_length_buffer[0]_i_1_n_0\,
      D => \byte_length_buffer_reg[12]_i_1_n_5\,
      Q => byte_length_buffer_reg(14),
      R => '0'
    );
\byte_length_buffer_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \byte_length_buffer[0]_i_1_n_0\,
      D => \byte_length_buffer_reg[12]_i_1_n_4\,
      Q => byte_length_buffer_reg(15),
      R => '0'
    );
\byte_length_buffer_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \byte_length_buffer[0]_i_1_n_0\,
      D => \byte_length_buffer_reg[16]_i_1_n_7\,
      Q => byte_length_buffer_reg(16),
      R => '0'
    );
\byte_length_buffer_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_length_buffer_reg[12]_i_1_n_0\,
      CO(3) => \byte_length_buffer_reg[16]_i_1_n_0\,
      CO(2) => \byte_length_buffer_reg[16]_i_1_n_1\,
      CO(1) => \byte_length_buffer_reg[16]_i_1_n_2\,
      CO(0) => \byte_length_buffer_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \byte_length_buffer[16]_i_2_n_0\,
      DI(2) => \byte_length_buffer[16]_i_3_n_0\,
      DI(1) => \byte_length_buffer[16]_i_4_n_0\,
      DI(0) => \byte_length_buffer[16]_i_5_n_0\,
      O(3) => \byte_length_buffer_reg[16]_i_1_n_4\,
      O(2) => \byte_length_buffer_reg[16]_i_1_n_5\,
      O(1) => \byte_length_buffer_reg[16]_i_1_n_6\,
      O(0) => \byte_length_buffer_reg[16]_i_1_n_7\,
      S(3) => \byte_length_buffer[16]_i_6_n_0\,
      S(2) => \byte_length_buffer[16]_i_7_n_0\,
      S(1) => \byte_length_buffer[16]_i_8_n_0\,
      S(0) => \byte_length_buffer[16]_i_9_n_0\
    );
\byte_length_buffer_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \byte_length_buffer[0]_i_1_n_0\,
      D => \byte_length_buffer_reg[16]_i_1_n_6\,
      Q => byte_length_buffer_reg(17),
      R => '0'
    );
\byte_length_buffer_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \byte_length_buffer[0]_i_1_n_0\,
      D => \byte_length_buffer_reg[16]_i_1_n_5\,
      Q => byte_length_buffer_reg(18),
      R => '0'
    );
\byte_length_buffer_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \byte_length_buffer[0]_i_1_n_0\,
      D => \byte_length_buffer_reg[16]_i_1_n_4\,
      Q => byte_length_buffer_reg(19),
      R => '0'
    );
\byte_length_buffer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \byte_length_buffer[0]_i_1_n_0\,
      D => \byte_length_buffer_reg[0]_i_2_n_6\,
      Q => byte_length_buffer_reg(1),
      R => '0'
    );
\byte_length_buffer_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \byte_length_buffer[0]_i_1_n_0\,
      D => \byte_length_buffer_reg[20]_i_1_n_7\,
      Q => byte_length_buffer_reg(20),
      R => '0'
    );
\byte_length_buffer_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_length_buffer_reg[16]_i_1_n_0\,
      CO(3) => \byte_length_buffer_reg[20]_i_1_n_0\,
      CO(2) => \byte_length_buffer_reg[20]_i_1_n_1\,
      CO(1) => \byte_length_buffer_reg[20]_i_1_n_2\,
      CO(0) => \byte_length_buffer_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \byte_length_buffer[20]_i_2_n_0\,
      DI(2) => \byte_length_buffer[20]_i_3_n_0\,
      DI(1) => \byte_length_buffer[20]_i_4_n_0\,
      DI(0) => \byte_length_buffer[20]_i_5_n_0\,
      O(3) => \byte_length_buffer_reg[20]_i_1_n_4\,
      O(2) => \byte_length_buffer_reg[20]_i_1_n_5\,
      O(1) => \byte_length_buffer_reg[20]_i_1_n_6\,
      O(0) => \byte_length_buffer_reg[20]_i_1_n_7\,
      S(3) => \byte_length_buffer[20]_i_6_n_0\,
      S(2) => \byte_length_buffer[20]_i_7_n_0\,
      S(1) => \byte_length_buffer[20]_i_8_n_0\,
      S(0) => \byte_length_buffer[20]_i_9_n_0\
    );
\byte_length_buffer_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \byte_length_buffer[0]_i_1_n_0\,
      D => \byte_length_buffer_reg[20]_i_1_n_6\,
      Q => byte_length_buffer_reg(21),
      R => '0'
    );
\byte_length_buffer_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \byte_length_buffer[0]_i_1_n_0\,
      D => \byte_length_buffer_reg[20]_i_1_n_5\,
      Q => byte_length_buffer_reg(22),
      R => '0'
    );
\byte_length_buffer_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \byte_length_buffer[0]_i_1_n_0\,
      D => \byte_length_buffer_reg[20]_i_1_n_4\,
      Q => byte_length_buffer_reg(23),
      R => '0'
    );
\byte_length_buffer_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \byte_length_buffer[0]_i_1_n_0\,
      D => \byte_length_buffer_reg[24]_i_1_n_7\,
      Q => byte_length_buffer_reg(24),
      R => '0'
    );
\byte_length_buffer_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_length_buffer_reg[20]_i_1_n_0\,
      CO(3) => \byte_length_buffer_reg[24]_i_1_n_0\,
      CO(2) => \byte_length_buffer_reg[24]_i_1_n_1\,
      CO(1) => \byte_length_buffer_reg[24]_i_1_n_2\,
      CO(0) => \byte_length_buffer_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \byte_length_buffer[24]_i_2_n_0\,
      DI(2) => \byte_length_buffer[24]_i_3_n_0\,
      DI(1) => \byte_length_buffer[24]_i_4_n_0\,
      DI(0) => \byte_length_buffer[24]_i_5_n_0\,
      O(3) => \byte_length_buffer_reg[24]_i_1_n_4\,
      O(2) => \byte_length_buffer_reg[24]_i_1_n_5\,
      O(1) => \byte_length_buffer_reg[24]_i_1_n_6\,
      O(0) => \byte_length_buffer_reg[24]_i_1_n_7\,
      S(3) => \byte_length_buffer[24]_i_6_n_0\,
      S(2) => \byte_length_buffer[24]_i_7_n_0\,
      S(1) => \byte_length_buffer[24]_i_8_n_0\,
      S(0) => \byte_length_buffer[24]_i_9_n_0\
    );
\byte_length_buffer_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \byte_length_buffer[0]_i_1_n_0\,
      D => \byte_length_buffer_reg[24]_i_1_n_6\,
      Q => byte_length_buffer_reg(25),
      R => '0'
    );
\byte_length_buffer_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \byte_length_buffer[0]_i_1_n_0\,
      D => \byte_length_buffer_reg[24]_i_1_n_5\,
      Q => byte_length_buffer_reg(26),
      R => '0'
    );
\byte_length_buffer_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \byte_length_buffer[0]_i_1_n_0\,
      D => \byte_length_buffer_reg[24]_i_1_n_4\,
      Q => byte_length_buffer_reg(27),
      R => '0'
    );
\byte_length_buffer_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \byte_length_buffer[0]_i_1_n_0\,
      D => \byte_length_buffer_reg[28]_i_1_n_7\,
      Q => byte_length_buffer_reg(28),
      R => '0'
    );
\byte_length_buffer_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_length_buffer_reg[24]_i_1_n_0\,
      CO(3) => \NLW_byte_length_buffer_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \byte_length_buffer_reg[28]_i_1_n_1\,
      CO(1) => \byte_length_buffer_reg[28]_i_1_n_2\,
      CO(0) => \byte_length_buffer_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \byte_length_buffer[28]_i_2_n_0\,
      DI(1) => \byte_length_buffer[28]_i_3_n_0\,
      DI(0) => \byte_length_buffer[28]_i_4_n_0\,
      O(3) => \byte_length_buffer_reg[28]_i_1_n_4\,
      O(2) => \byte_length_buffer_reg[28]_i_1_n_5\,
      O(1) => \byte_length_buffer_reg[28]_i_1_n_6\,
      O(0) => \byte_length_buffer_reg[28]_i_1_n_7\,
      S(3) => \byte_length_buffer[28]_i_5_n_0\,
      S(2) => \byte_length_buffer[28]_i_6_n_0\,
      S(1) => \byte_length_buffer[28]_i_7_n_0\,
      S(0) => \byte_length_buffer[28]_i_8_n_0\
    );
\byte_length_buffer_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \byte_length_buffer[0]_i_1_n_0\,
      D => \byte_length_buffer_reg[28]_i_1_n_6\,
      Q => byte_length_buffer_reg(29),
      R => '0'
    );
\byte_length_buffer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \byte_length_buffer[0]_i_1_n_0\,
      D => \byte_length_buffer_reg[0]_i_2_n_5\,
      Q => byte_length_buffer_reg(2),
      R => '0'
    );
\byte_length_buffer_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \byte_length_buffer[0]_i_1_n_0\,
      D => \byte_length_buffer_reg[28]_i_1_n_5\,
      Q => byte_length_buffer_reg(30),
      R => '0'
    );
\byte_length_buffer_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \byte_length_buffer[0]_i_1_n_0\,
      D => \byte_length_buffer_reg[28]_i_1_n_4\,
      Q => byte_length_buffer_reg(31),
      R => '0'
    );
\byte_length_buffer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \byte_length_buffer[0]_i_1_n_0\,
      D => \byte_length_buffer_reg[0]_i_2_n_4\,
      Q => byte_length_buffer_reg(3),
      R => '0'
    );
\byte_length_buffer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \byte_length_buffer[0]_i_1_n_0\,
      D => \byte_length_buffer_reg[4]_i_1_n_7\,
      Q => byte_length_buffer_reg(4),
      R => '0'
    );
\byte_length_buffer_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_length_buffer_reg[0]_i_2_n_0\,
      CO(3) => \byte_length_buffer_reg[4]_i_1_n_0\,
      CO(2) => \byte_length_buffer_reg[4]_i_1_n_1\,
      CO(1) => \byte_length_buffer_reg[4]_i_1_n_2\,
      CO(0) => \byte_length_buffer_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \byte_length_buffer[4]_i_2_n_0\,
      DI(2) => \byte_length_buffer[4]_i_3_n_0\,
      DI(1) => \byte_length_buffer[4]_i_4_n_0\,
      DI(0) => \byte_length_buffer[4]_i_5_n_0\,
      O(3) => \byte_length_buffer_reg[4]_i_1_n_4\,
      O(2) => \byte_length_buffer_reg[4]_i_1_n_5\,
      O(1) => \byte_length_buffer_reg[4]_i_1_n_6\,
      O(0) => \byte_length_buffer_reg[4]_i_1_n_7\,
      S(3) => \byte_length_buffer[4]_i_6_n_0\,
      S(2) => \byte_length_buffer[4]_i_7_n_0\,
      S(1) => \byte_length_buffer[4]_i_8_n_0\,
      S(0) => \byte_length_buffer[4]_i_9_n_0\
    );
\byte_length_buffer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \byte_length_buffer[0]_i_1_n_0\,
      D => \byte_length_buffer_reg[4]_i_1_n_6\,
      Q => byte_length_buffer_reg(5),
      R => '0'
    );
\byte_length_buffer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \byte_length_buffer[0]_i_1_n_0\,
      D => \byte_length_buffer_reg[4]_i_1_n_5\,
      Q => byte_length_buffer_reg(6),
      R => '0'
    );
\byte_length_buffer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \byte_length_buffer[0]_i_1_n_0\,
      D => \byte_length_buffer_reg[4]_i_1_n_4\,
      Q => byte_length_buffer_reg(7),
      R => '0'
    );
\byte_length_buffer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \byte_length_buffer[0]_i_1_n_0\,
      D => \byte_length_buffer_reg[8]_i_1_n_7\,
      Q => byte_length_buffer_reg(8),
      R => '0'
    );
\byte_length_buffer_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_length_buffer_reg[4]_i_1_n_0\,
      CO(3) => \byte_length_buffer_reg[8]_i_1_n_0\,
      CO(2) => \byte_length_buffer_reg[8]_i_1_n_1\,
      CO(1) => \byte_length_buffer_reg[8]_i_1_n_2\,
      CO(0) => \byte_length_buffer_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \byte_length_buffer[8]_i_2_n_0\,
      DI(2) => \byte_length_buffer[8]_i_3_n_0\,
      DI(1) => \byte_length_buffer[8]_i_4_n_0\,
      DI(0) => \byte_length_buffer[8]_i_5_n_0\,
      O(3) => \byte_length_buffer_reg[8]_i_1_n_4\,
      O(2) => \byte_length_buffer_reg[8]_i_1_n_5\,
      O(1) => \byte_length_buffer_reg[8]_i_1_n_6\,
      O(0) => \byte_length_buffer_reg[8]_i_1_n_7\,
      S(3) => \byte_length_buffer[8]_i_6_n_0\,
      S(2) => \byte_length_buffer[8]_i_7_n_0\,
      S(1) => \byte_length_buffer[8]_i_8_n_0\,
      S(0) => \byte_length_buffer[8]_i_9_n_0\
    );
\byte_length_buffer_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \byte_length_buffer[0]_i_1_n_0\,
      D => \byte_length_buffer_reg[8]_i_1_n_6\,
      Q => byte_length_buffer_reg(9),
      R => '0'
    );
\conf_header[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF454044004540"
    )
        port map (
      I0 => w5500state(3),
      I1 => w5500state(0),
      I2 => w5500state(2),
      I3 => w5500state(4),
      I4 => w5500state(1),
      I5 => \conf_header[10]_i_2_n_0\,
      O => conf_header0_in(10)
    );
\conf_header[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000F000CFF0FF8"
    )
        port map (
      I0 => w5500state(5),
      I1 => \rx_shift_payload_buffer_reg_n_0_[2]\,
      I2 => w5500state(0),
      I3 => w5500state(2),
      I4 => w5500state(3),
      I5 => w5500state(4),
      O => \conf_header[10]_i_2_n_0\
    );
\conf_header[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF310801083108"
    )
        port map (
      I0 => w5500state(3),
      I1 => w5500state(4),
      I2 => w5500state(0),
      I3 => w5500state(2),
      I4 => w5500state(1),
      I5 => \conf_header[11]_i_2_n_0\,
      O => conf_header0_in(11)
    );
\conf_header[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000F0F0F00C8C8"
    )
        port map (
      I0 => w5500state(5),
      I1 => \rx_shift_payload_buffer_reg_n_0_[3]\,
      I2 => w5500state(2),
      I3 => w5500state(3),
      I4 => w5500state(0),
      I5 => w5500state(4),
      O => \conf_header[11]_i_2_n_0\
    );
\conf_header[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC0088800C000800"
    )
        port map (
      I0 => w5500state(5),
      I1 => \conf_header[12]_i_2_n_0\,
      I2 => w5500state(1),
      I3 => w5500state(2),
      I4 => w5500state(3),
      I5 => \rx_shift_payload_buffer_reg_n_0_[4]\,
      O => conf_header0_in(12)
    );
\conf_header[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => w5500state(0),
      I1 => w5500state(4),
      O => \conf_header[12]_i_2_n_0\
    );
\conf_header[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \conf_header_reg[13]_i_3_n_0\,
      I1 => w5500state(0),
      I2 => \conf_header[13]_i_4_n_0\,
      I3 => w5500state(1),
      I4 => \conf_header[13]_i_5_n_0\,
      O => conf_header
    );
\conf_header[13]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0800000B080B08"
    )
        port map (
      I0 => \ptm_transmitted_byte_counter[11]_i_4_n_0\,
      I1 => w5500state(4),
      I2 => payload_data_has_been_set_reg_rep_n_0,
      I3 => \conf_header[13]_i_21_n_0\,
      I4 => spi_busy,
      I5 => prev_spi_busy,
      O => \conf_header[13]_i_10_n_0\
    );
\conf_header[13]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003033BB00300088"
    )
        port map (
      I0 => \conf_header[13]_i_22_n_0\,
      I1 => w5500state(3),
      I2 => \conf_header[13]_i_23_n_0\,
      I3 => w5500state(5),
      I4 => w5500state(4),
      I5 => \conf_header[13]_i_24_n_0\,
      O => \conf_header[13]_i_11_n_0\
    );
\conf_header[13]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \conf_header[13]_i_25_n_0\,
      I1 => w5500state(3),
      I2 => \conf_header[13]_i_26_n_0\,
      I3 => w5500state(4),
      I4 => \conf_header[13]_i_27_n_0\,
      I5 => \conf_header[13]_i_28_n_0\,
      O => \conf_header[13]_i_12_n_0\
    );
\conf_header[13]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0800000B080B08"
    )
        port map (
      I0 => \conf_header[13]_i_29_n_0\,
      I1 => w5500state(4),
      I2 => payload_data_has_been_set_reg_rep_n_0,
      I3 => \conf_header[13]_i_30_n_0\,
      I4 => spi_busy,
      I5 => prev_spi_busy,
      O => \conf_header[13]_i_13_n_0\
    );
\conf_header[13]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000380008"
    )
        port map (
      I0 => \conf_header[13]_i_31_n_0\,
      I1 => w5500state(4),
      I2 => w5500state(5),
      I3 => \conf_header[13]_i_28_n_0\,
      I4 => \conf_header[13]_i_32_n_0\,
      I5 => payload_data_has_been_set_reg_rep_n_0,
      O => \conf_header[13]_i_14_n_0\
    );
\conf_header[13]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0800000B080B08"
    )
        port map (
      I0 => \conf_header[13]_i_33_n_0\,
      I1 => w5500state(4),
      I2 => payload_data_has_been_set_reg_n_0,
      I3 => \conf_header[13]_i_34_n_0\,
      I4 => spi_busy,
      I5 => prev_spi_busy,
      O => \conf_header[13]_i_15_n_0\
    );
\conf_header[13]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0800000B080B08"
    )
        port map (
      I0 => \conf_header[13]_i_35_n_0\,
      I1 => w5500state(4),
      I2 => payload_data_has_been_set_reg_n_0,
      I3 => payload_data_has_been_set0,
      I4 => spi_busy,
      I5 => prev_spi_busy,
      O => \conf_header[13]_i_16_n_0\
    );
\conf_header[13]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0800000B080B08"
    )
        port map (
      I0 => \conf_header[13]_i_32_n_0\,
      I1 => w5500state(4),
      I2 => payload_data_has_been_set_reg_n_0,
      I3 => \conf_header[13]_i_37_n_0\,
      I4 => spi_busy,
      I5 => prev_spi_busy,
      O => \conf_header[13]_i_17_n_0\
    );
\conf_header[13]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0800000B080B08"
    )
        port map (
      I0 => \conf_header[13]_i_38_n_0\,
      I1 => w5500state(3),
      I2 => payload_data_has_been_set_reg_n_0,
      I3 => \conf_header[13]_i_39_n_0\,
      I4 => spi_busy,
      I5 => prev_spi_busy,
      O => \conf_header[13]_i_18_n_0\
    );
\conf_header[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAAEEEEE"
    )
        port map (
      I0 => \conf_header[13]_i_6_n_0\,
      I1 => w5500state(4),
      I2 => w5500state(0),
      I3 => w5500state(2),
      I4 => w5500state(3),
      O => conf_header0_in(13)
    );
\conf_header[13]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF7FFFFFFFF"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[0]\,
      I1 => \w5500state_next_reg_n_0_[2]\,
      I2 => \w5500state_next_reg_n_0_[3]\,
      I3 => \w5500state_next_reg_n_0_[5]\,
      I4 => \w5500state_next_reg_n_0_[4]\,
      I5 => \w5500state_next_reg_n_0_[1]\,
      O => \conf_header[13]_i_20_n_0\
    );
\conf_header[13]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[0]\,
      I1 => \w5500state_next_reg_n_0_[4]\,
      I2 => \w5500state_next_reg_n_0_[1]\,
      I3 => \w5500state_next_reg_n_0_[3]\,
      I4 => \w5500state_next_reg_n_0_[5]\,
      I5 => \w5500state_next_reg_n_0_[2]\,
      O => \conf_header[13]_i_21_n_0\
    );
\conf_header[13]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => payload_data_has_been_set_reg_rep_n_0,
      I1 => \conf_header[13]_i_42_n_0\,
      I2 => spi_busy,
      I3 => prev_spi_busy,
      O => \conf_header[13]_i_22_n_0\
    );
\conf_header[13]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => payload_data_has_been_set_reg_rep_n_0,
      I1 => \conf_header[13]_i_43_n_0\,
      I2 => spi_busy,
      I3 => prev_spi_busy,
      O => \conf_header[13]_i_23_n_0\
    );
\conf_header[13]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0800000B080B08"
    )
        port map (
      I0 => payload_byte_length1,
      I1 => w5500state(5),
      I2 => payload_data_has_been_set_reg_rep_n_0,
      I3 => \conf_header[13]_i_45_n_0\,
      I4 => spi_busy,
      I5 => prev_spi_busy,
      O => \conf_header[13]_i_24_n_0\
    );
\conf_header[13]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \conf_header[13]_i_46_n_0\,
      I1 => payload_data_has_been_set_reg_rep_n_0,
      O => \conf_header[13]_i_25_n_0\
    );
\conf_header[13]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEFFFFFF"
    )
        port map (
      I0 => \conf_header[13]_i_47_n_0\,
      I1 => \w5500state_next_reg_n_0_[1]\,
      I2 => \w5500state_next_reg_n_0_[5]\,
      I3 => \w5500state_next_reg_n_0_[4]\,
      I4 => \w5500state_next_reg_n_0_[0]\,
      I5 => payload_data_has_been_set_reg_rep_n_0,
      O => \conf_header[13]_i_26_n_0\
    );
\conf_header[13]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \conf_header[13]_i_48_n_0\,
      I1 => payload_data_has_been_set_reg_rep_n_0,
      O => \conf_header[13]_i_27_n_0\
    );
\conf_header[13]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => prev_spi_busy,
      I1 => spi_busy,
      O => \conf_header[13]_i_28_n_0\
    );
\conf_header[13]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[5]\,
      I1 => \w5500state_next_reg_n_0_[1]\,
      I2 => \w5500state_next_reg_n_0_[3]\,
      I3 => \w5500state_next_reg_n_0_[0]\,
      I4 => \w5500state_next_reg_n_0_[4]\,
      I5 => \w5500state_next_reg_n_0_[2]\,
      O => \conf_header[13]_i_29_n_0\
    );
\conf_header[13]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[0]\,
      I1 => \w5500state_next_reg_n_0_[3]\,
      I2 => \w5500state_next_reg_n_0_[1]\,
      I3 => \w5500state_next_reg_n_0_[5]\,
      I4 => \w5500state_next_reg_n_0_[4]\,
      I5 => \w5500state_next_reg_n_0_[2]\,
      O => \conf_header[13]_i_30_n_0\
    );
\conf_header[13]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF7FFFFFFFF"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[2]\,
      I1 => \w5500state_next_reg_n_0_[4]\,
      I2 => \w5500state_next_reg_n_0_[1]\,
      I3 => \w5500state_next_reg_n_0_[0]\,
      I4 => \w5500state_next_reg_n_0_[5]\,
      I5 => \w5500state_next_reg_n_0_[3]\,
      O => \conf_header[13]_i_31_n_0\
    );
\conf_header[13]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[5]\,
      I1 => \w5500state_next_reg_n_0_[0]\,
      I2 => \w5500state_next_reg_n_0_[1]\,
      I3 => \w5500state_next_reg_n_0_[3]\,
      I4 => \w5500state_next_reg_n_0_[4]\,
      I5 => \w5500state_next_reg_n_0_[2]\,
      O => \conf_header[13]_i_32_n_0\
    );
\conf_header[13]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF7FFFFFFFF"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[2]\,
      I1 => \w5500state_next_reg_n_0_[4]\,
      I2 => \w5500state_next_reg_n_0_[3]\,
      I3 => \w5500state_next_reg_n_0_[0]\,
      I4 => \w5500state_next_reg_n_0_[5]\,
      I5 => \w5500state_next_reg_n_0_[1]\,
      O => \conf_header[13]_i_33_n_0\
    );
\conf_header[13]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[1]\,
      I1 => \w5500state_next_reg_n_0_[2]\,
      I2 => \w5500state_next_reg_n_0_[5]\,
      I3 => \w5500state_next_reg_n_0_[0]\,
      I4 => \w5500state_next_reg_n_0_[4]\,
      I5 => \w5500state_next_reg_n_0_[3]\,
      O => \conf_header[13]_i_34_n_0\
    );
\conf_header[13]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFFFFFFFFFFF"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[1]\,
      I1 => \w5500state_next_reg_n_0_[4]\,
      I2 => \w5500state_next_reg_n_0_[5]\,
      I3 => \w5500state_next_reg_n_0_[0]\,
      I4 => \w5500state_next_reg_n_0_[3]\,
      I5 => \w5500state_next_reg_n_0_[2]\,
      O => \conf_header[13]_i_35_n_0\
    );
\conf_header[13]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[1]\,
      I1 => \w5500state_next_reg_n_0_[4]\,
      I2 => \w5500state_next_reg_n_0_[5]\,
      I3 => \w5500state_next_reg_n_0_[0]\,
      I4 => \w5500state_next_reg_n_0_[3]\,
      I5 => \w5500state_next_reg_n_0_[2]\,
      O => payload_data_has_been_set0
    );
\conf_header[13]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[2]\,
      I1 => \w5500state_next_reg_n_0_[3]\,
      I2 => \w5500state_next_reg_n_0_[1]\,
      I3 => \w5500state_next_reg_n_0_[0]\,
      I4 => \w5500state_next_reg_n_0_[4]\,
      I5 => \w5500state_next_reg_n_0_[5]\,
      O => \conf_header[13]_i_37_n_0\
    );
\conf_header[13]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[4]\,
      I1 => \w5500state_next_reg_n_0_[5]\,
      I2 => \w5500state_next_reg_n_0_[1]\,
      I3 => \w5500state_next_reg_n_0_[0]\,
      I4 => \w5500state_next_reg_n_0_[3]\,
      I5 => \w5500state_next_reg_n_0_[2]\,
      O => \conf_header[13]_i_38_n_0\
    );
\conf_header[13]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[1]\,
      I1 => \w5500state_next_reg_n_0_[3]\,
      I2 => \w5500state_next_reg_n_0_[5]\,
      I3 => \w5500state_next_reg_n_0_[0]\,
      I4 => \w5500state_next_reg_n_0_[4]\,
      I5 => \w5500state_next_reg_n_0_[2]\,
      O => \conf_header[13]_i_39_n_0\
    );
\conf_header[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \conf_header[13]_i_9_n_0\,
      I1 => w5500state(3),
      I2 => \conf_header[13]_i_10_n_0\,
      I3 => w5500state(5),
      I4 => w5500state(2),
      I5 => \conf_header[13]_i_11_n_0\,
      O => \conf_header[13]_i_4_n_0\
    );
\conf_header[13]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0800000B080B08"
    )
        port map (
      I0 => payload_data_has_been_set_i_43_n_0,
      I1 => w5500state(4),
      I2 => payload_data_has_been_set_reg_n_0,
      I3 => payload_data_has_been_set_i_48_n_0,
      I4 => spi_busy,
      I5 => prev_spi_busy,
      O => \conf_header[13]_i_40_n_0\
    );
\conf_header[13]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0800000B080B08"
    )
        port map (
      I0 => \conf_header[13]_i_49_n_0\,
      I1 => w5500state(4),
      I2 => payload_data_has_been_set_reg_n_0,
      I3 => \conf_header[13]_i_32_n_0\,
      I4 => spi_busy,
      I5 => prev_spi_busy,
      O => \conf_header[13]_i_41_n_0\
    );
\conf_header[13]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[3]\,
      I1 => \w5500state_next_reg_n_0_[4]\,
      I2 => \w5500state_next_reg_n_0_[1]\,
      I3 => \w5500state_next_reg_n_0_[0]\,
      I4 => \w5500state_next_reg_n_0_[5]\,
      I5 => \w5500state_next_reg_n_0_[2]\,
      O => \conf_header[13]_i_42_n_0\
    );
\conf_header[13]_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF7FFFFFFFF"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[0]\,
      I1 => \w5500state_next_reg_n_0_[4]\,
      I2 => \w5500state_next_reg_n_0_[1]\,
      I3 => \w5500state_next_reg_n_0_[2]\,
      I4 => \w5500state_next_reg_n_0_[5]\,
      I5 => \w5500state_next_reg_n_0_[3]\,
      O => \conf_header[13]_i_43_n_0\
    );
\conf_header[13]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[1]\,
      I1 => \w5500state_next_reg_n_0_[4]\,
      I2 => \w5500state_next_reg_n_0_[3]\,
      I3 => \w5500state_next_reg_n_0_[0]\,
      I4 => \w5500state_next_reg_n_0_[5]\,
      I5 => \w5500state_next_reg_n_0_[2]\,
      O => payload_byte_length1
    );
\conf_header[13]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[0]\,
      I1 => \w5500state_next_reg_n_0_[1]\,
      I2 => \w5500state_next_reg_n_0_[3]\,
      I3 => \w5500state_next_reg_n_0_[5]\,
      I4 => \w5500state_next_reg_n_0_[4]\,
      I5 => \w5500state_next_reg_n_0_[2]\,
      O => \conf_header[13]_i_45_n_0\
    );
\conf_header[13]_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF7FFFFFFFF"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[0]\,
      I1 => \w5500state_next_reg_n_0_[1]\,
      I2 => \w5500state_next_reg_n_0_[2]\,
      I3 => \w5500state_next_reg_n_0_[5]\,
      I4 => \w5500state_next_reg_n_0_[4]\,
      I5 => \w5500state_next_reg_n_0_[3]\,
      O => \conf_header[13]_i_46_n_0\
    );
\conf_header[13]_i_47\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[3]\,
      I1 => \w5500state_next_reg_n_0_[2]\,
      O => \conf_header[13]_i_47_n_0\
    );
\conf_header[13]_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[0]\,
      I1 => \w5500state_next_reg_n_0_[2]\,
      I2 => \w5500state_next_reg_n_0_[1]\,
      I3 => \w5500state_next_reg_n_0_[5]\,
      I4 => \w5500state_next_reg_n_0_[4]\,
      I5 => \w5500state_next_reg_n_0_[3]\,
      O => \conf_header[13]_i_48_n_0\
    );
\conf_header[13]_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[0]\,
      I1 => \w5500state_next_reg_n_0_[4]\,
      I2 => \w5500state_next_reg_n_0_[5]\,
      I3 => \w5500state_next_reg_n_0_[1]\,
      I4 => \w5500state_next_reg_n_0_[3]\,
      I5 => \w5500state_next_reg_n_0_[2]\,
      O => \conf_header[13]_i_49_n_0\
    );
\conf_header[13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B833BB00B80088"
    )
        port map (
      I0 => \conf_header[13]_i_12_n_0\,
      I1 => w5500state(2),
      I2 => \conf_header[13]_i_13_n_0\,
      I3 => w5500state(5),
      I4 => w5500state(3),
      I5 => \conf_header[13]_i_14_n_0\,
      O => \conf_header[13]_i_5_n_0\
    );
\conf_header[13]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220202000000000"
    )
        port map (
      I0 => w5500state(1),
      I1 => w5500state(4),
      I2 => w5500state(5),
      I3 => w5500state(3),
      I4 => w5500state(2),
      I5 => data3(29),
      O => \conf_header[13]_i_6_n_0\
    );
\conf_header[13]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033B800B8"
    )
        port map (
      I0 => \conf_header[13]_i_15_n_0\,
      I1 => w5500state(2),
      I2 => \conf_header[13]_i_16_n_0\,
      I3 => w5500state(3),
      I4 => \conf_header[13]_i_17_n_0\,
      I5 => w5500state(5),
      O => \conf_header[13]_i_7_n_0\
    );
\conf_header[13]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004F40"
    )
        port map (
      I0 => w5500state(4),
      I1 => \conf_header[13]_i_18_n_0\,
      I2 => w5500state(2),
      I3 => \conf_header_reg[13]_i_19_n_0\,
      I4 => w5500state(5),
      O => \conf_header[13]_i_8_n_0\
    );
\conf_header[13]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000D0"
    )
        port map (
      I0 => prev_spi_busy,
      I1 => spi_busy,
      I2 => \conf_header[13]_i_20_n_0\,
      I3 => payload_data_has_been_set_reg_rep_n_0,
      I4 => w5500state(4),
      O => \conf_header[13]_i_9_n_0\
    );
\conf_header[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220202000000000"
    )
        port map (
      I0 => w5500state(1),
      I1 => w5500state(0),
      I2 => w5500state(5),
      I3 => w5500state(3),
      I4 => w5500state(2),
      I5 => data3(30),
      O => \conf_header[14]_i_1_n_0\
    );
\conf_header[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220202000000000"
    )
        port map (
      I0 => w5500state(1),
      I1 => w5500state(0),
      I2 => w5500state(5),
      I3 => w5500state(3),
      I4 => w5500state(2),
      I5 => data3(31),
      O => \conf_header[15]_i_1_n_0\
    );
\conf_header[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220202000000000"
    )
        port map (
      I0 => w5500state(1),
      I1 => w5500state(0),
      I2 => w5500state(5),
      I3 => w5500state(3),
      I4 => w5500state(2),
      I5 => \rx_shift_payload_buffer_reg_n_0_[8]\,
      O => \conf_header[16]_i_1_n_0\
    );
\conf_header[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220202000000000"
    )
        port map (
      I0 => w5500state(1),
      I1 => w5500state(0),
      I2 => w5500state(5),
      I3 => w5500state(3),
      I4 => w5500state(2),
      I5 => \rx_shift_payload_buffer_reg_n_0_[9]\,
      O => \conf_header[17]_i_1_n_0\
    );
\conf_header[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220202000000000"
    )
        port map (
      I0 => w5500state(1),
      I1 => w5500state(0),
      I2 => w5500state(5),
      I3 => w5500state(3),
      I4 => w5500state(2),
      I5 => \rx_shift_payload_buffer_reg_n_0_[10]\,
      O => \conf_header[18]_i_1_n_0\
    );
\conf_header[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220202000000000"
    )
        port map (
      I0 => w5500state(1),
      I1 => w5500state(0),
      I2 => w5500state(5),
      I3 => w5500state(3),
      I4 => w5500state(2),
      I5 => \rx_shift_payload_buffer_reg_n_0_[11]\,
      O => \conf_header[19]_i_1_n_0\
    );
\conf_header[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220202000000000"
    )
        port map (
      I0 => w5500state(1),
      I1 => w5500state(0),
      I2 => w5500state(5),
      I3 => w5500state(3),
      I4 => w5500state(2),
      I5 => \rx_shift_payload_buffer_reg_n_0_[12]\,
      O => \conf_header[20]_i_1_n_0\
    );
\conf_header[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220202000000000"
    )
        port map (
      I0 => w5500state(1),
      I1 => w5500state(0),
      I2 => w5500state(5),
      I3 => w5500state(3),
      I4 => w5500state(2),
      I5 => \rx_shift_payload_buffer_reg_n_0_[13]\,
      O => \conf_header[21]_i_1_n_0\
    );
\conf_header[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220202000000000"
    )
        port map (
      I0 => w5500state(1),
      I1 => w5500state(0),
      I2 => w5500state(5),
      I3 => w5500state(3),
      I4 => w5500state(2),
      I5 => \rx_shift_payload_buffer_reg_n_0_[14]\,
      O => \conf_header[22]_i_1_n_0\
    );
\conf_header[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => w5500state(4),
      I1 => \conf_header[13]_i_5_n_0\,
      I2 => w5500state(1),
      I3 => \conf_header[13]_i_4_n_0\,
      I4 => w5500state(0),
      I5 => \conf_header_reg[13]_i_3_n_0\,
      O => \conf_header[23]_i_1_n_0\
    );
\conf_header[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220202000000000"
    )
        port map (
      I0 => w5500state(1),
      I1 => w5500state(0),
      I2 => w5500state(5),
      I3 => w5500state(3),
      I4 => w5500state(2),
      I5 => \rx_shift_payload_buffer_reg_n_0_[15]\,
      O => \conf_header[23]_i_2_n_0\
    );
\conf_header[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"550F03F5FF0FF30F"
    )
        port map (
      I0 => w5500state(3),
      I1 => w5500state(5),
      I2 => w5500state(4),
      I3 => w5500state(1),
      I4 => w5500state(2),
      I5 => w5500state(0),
      O => conf_header0_in(2)
    );
\conf_header[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FBF3FFF7F8F0"
    )
        port map (
      I0 => w5500state(1),
      I1 => w5500state(2),
      I2 => w5500state(4),
      I3 => w5500state(0),
      I4 => w5500state(3),
      I5 => w5500state(5),
      O => conf_header0_in(3)
    );
\conf_header[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1110101000000000"
    )
        port map (
      I0 => w5500state(4),
      I1 => w5500state(0),
      I2 => w5500state(5),
      I3 => w5500state(3),
      I4 => w5500state(2),
      I5 => w5500state(1),
      O => \conf_header[4]_i_1_n_0\
    );
\conf_header[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \conf_header[8]_i_2_n_0\,
      I1 => w5500state(5),
      I2 => w5500state(1),
      I3 => \conf_header[8]_i_3_n_0\,
      O => conf_header0_in(8)
    );
\conf_header[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000440400000000"
    )
        port map (
      I0 => w5500state(4),
      I1 => \rx_shift_payload_buffer_reg_n_0_[0]\,
      I2 => w5500state(3),
      I3 => w5500state(2),
      I4 => w5500state(0),
      I5 => w5500state(1),
      O => \conf_header[8]_i_2_n_0\
    );
\conf_header[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0445011044011110"
    )
        port map (
      I0 => w5500state(5),
      I1 => w5500state(4),
      I2 => w5500state(1),
      I3 => w5500state(2),
      I4 => w5500state(3),
      I5 => w5500state(0),
      O => \conf_header[8]_i_3_n_0\
    );
\conf_header[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABEEABAAFFAAAAEB"
    )
        port map (
      I0 => \conf_header[9]_i_2_n_0\,
      I1 => w5500state(3),
      I2 => w5500state(0),
      I3 => w5500state(2),
      I4 => w5500state(4),
      I5 => w5500state(1),
      O => conf_header0_in(9)
    );
\conf_header[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000540000000000"
    )
        port map (
      I0 => w5500state(4),
      I1 => w5500state(5),
      I2 => w5500state(2),
      I3 => \rx_shift_payload_buffer_reg_n_0_[1]\,
      I4 => w5500state(0),
      I5 => w5500state(1),
      O => \conf_header[9]_i_2_n_0\
    );
\conf_header_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => conf_header,
      D => conf_header0_in(10),
      Q => in4(2),
      R => '0'
    );
\conf_header_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => conf_header,
      D => conf_header0_in(11),
      Q => in4(3),
      R => '0'
    );
\conf_header_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => conf_header,
      D => conf_header0_in(12),
      Q => in4(4),
      R => '0'
    );
\conf_header_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => conf_header,
      D => conf_header0_in(13),
      Q => in4(5),
      R => '0'
    );
\conf_header_reg[13]_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => \conf_header[13]_i_40_n_0\,
      I1 => \conf_header[13]_i_41_n_0\,
      O => \conf_header_reg[13]_i_19_n_0\,
      S => w5500state(3)
    );
\conf_header_reg[13]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \conf_header[13]_i_7_n_0\,
      I1 => \conf_header[13]_i_8_n_0\,
      O => \conf_header_reg[13]_i_3_n_0\,
      S => w5500state(1)
    );
\conf_header_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => conf_header,
      D => \conf_header[14]_i_1_n_0\,
      Q => in4(6),
      R => \conf_header[23]_i_1_n_0\
    );
\conf_header_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => conf_header,
      D => \conf_header[15]_i_1_n_0\,
      Q => in4(7),
      R => \conf_header[23]_i_1_n_0\
    );
\conf_header_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => conf_header,
      D => \conf_header[16]_i_1_n_0\,
      Q => in3(0),
      R => \conf_header[23]_i_1_n_0\
    );
\conf_header_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => conf_header,
      D => \conf_header[17]_i_1_n_0\,
      Q => in3(1),
      R => \conf_header[23]_i_1_n_0\
    );
\conf_header_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => conf_header,
      D => \conf_header[18]_i_1_n_0\,
      Q => in3(2),
      R => \conf_header[23]_i_1_n_0\
    );
\conf_header_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => conf_header,
      D => \conf_header[19]_i_1_n_0\,
      Q => in3(3),
      R => \conf_header[23]_i_1_n_0\
    );
\conf_header_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => conf_header,
      D => \conf_header[20]_i_1_n_0\,
      Q => in3(4),
      R => \conf_header[23]_i_1_n_0\
    );
\conf_header_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => conf_header,
      D => \conf_header[21]_i_1_n_0\,
      Q => in3(5),
      R => \conf_header[23]_i_1_n_0\
    );
\conf_header_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => conf_header,
      D => \conf_header[22]_i_1_n_0\,
      Q => in3(6),
      R => \conf_header[23]_i_1_n_0\
    );
\conf_header_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => conf_header,
      D => \conf_header[23]_i_2_n_0\,
      Q => in3(7),
      R => \conf_header[23]_i_1_n_0\
    );
\conf_header_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => conf_header,
      D => conf_header0_in(2),
      Q => \^q\(0),
      R => '0'
    );
\conf_header_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => conf_header,
      D => conf_header0_in(3),
      Q => \conf_header_reg_n_0_[3]\,
      R => '0'
    );
\conf_header_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => conf_header,
      D => \conf_header[4]_i_1_n_0\,
      Q => \conf_header_reg_n_0_[4]\,
      R => '0'
    );
\conf_header_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => conf_header,
      D => conf_header0_in(8),
      Q => in4(0),
      R => '0'
    );
\conf_header_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => conf_header,
      D => conf_header0_in(9),
      Q => in4(1),
      R => '0'
    );
conf_header_valid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => conf_header_valid,
      I1 => streamhandler_state(0),
      I2 => payload_data0,
      O => conf_header_valid_i_1_n_0
    );
conf_header_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => conf_header_valid_i_1_n_0,
      Q => conf_header_valid,
      R => '0'
    );
\payload_byte_length[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF44CFFFC044C000"
    )
        port map (
      I0 => \payload_byte_length[0]_i_2_n_0\,
      I1 => \payload_byte_length[0]_i_3_n_0\,
      I2 => \conf_header_reg[13]_i_3_n_0\,
      I3 => w5500state(0),
      I4 => \payload_byte_length[2]_i_3_n_0\,
      I5 => payload_byte_length(0),
      O => \payload_byte_length[0]_i_1_n_0\
    );
\payload_byte_length[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => w5500state(2),
      I1 => w5500state(4),
      O => \payload_byte_length[0]_i_2_n_0\
    );
\payload_byte_length[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8FFFF8F88888F"
    )
        port map (
      I0 => \rx_shift_payload_buffer_reg_n_0_[16]\,
      I1 => w5500state(5),
      I2 => w5500state(4),
      I3 => w5500state(2),
      I4 => w5500state(1),
      I5 => w5500state(3),
      O => \payload_byte_length[0]_i_3_n_0\
    );
\payload_byte_length[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABF8A80"
    )
        port map (
      I0 => \payload_byte_length[1]_i_2_n_0\,
      I1 => \conf_header_reg[13]_i_3_n_0\,
      I2 => w5500state(0),
      I3 => \payload_byte_length[2]_i_3_n_0\,
      I4 => payload_byte_length(1),
      O => \payload_byte_length[1]_i_1_n_0\
    );
\payload_byte_length[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF5878"
    )
        port map (
      I0 => w5500state(3),
      I1 => w5500state(2),
      I2 => w5500state(4),
      I3 => w5500state(0),
      I4 => \payload_byte_length[1]_i_3_n_0\,
      O => \payload_byte_length[1]_i_2_n_0\
    );
\payload_byte_length[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00000000F800"
    )
        port map (
      I0 => w5500state(5),
      I1 => \rx_shift_payload_buffer_reg_n_0_[17]\,
      I2 => w5500state(3),
      I3 => w5500state(1),
      I4 => w5500state(0),
      I5 => w5500state(2),
      O => \payload_byte_length[1]_i_3_n_0\
    );
\payload_byte_length[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABF8A80"
    )
        port map (
      I0 => \payload_byte_length[2]_i_2_n_0\,
      I1 => \conf_header_reg[13]_i_3_n_0\,
      I2 => w5500state(0),
      I3 => \payload_byte_length[2]_i_3_n_0\,
      I4 => payload_byte_length(2),
      O => \payload_byte_length[2]_i_1_n_0\
    );
\payload_byte_length[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0800000B080B08"
    )
        port map (
      I0 => \payload_byte_length[2]_i_13_n_0\,
      I1 => w5500state(4),
      I2 => payload_data_has_been_set_reg_rep_n_0,
      I3 => \conf_header[13]_i_48_n_0\,
      I4 => spi_busy,
      I5 => prev_spi_busy,
      O => \payload_byte_length[2]_i_10_n_0\
    );
\payload_byte_length[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => \conf_header[13]_i_28_n_0\,
      I1 => \conf_header[13]_i_30_n_0\,
      I2 => payload_data_has_been_set_reg_rep_n_0,
      I3 => w5500state(4),
      I4 => \conf_header[13]_i_29_n_0\,
      I5 => w5500state(5),
      O => \payload_byte_length[2]_i_11_n_0\
    );
\payload_byte_length[2]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[3]\,
      I1 => \w5500state_next_reg_n_0_[5]\,
      O => \payload_byte_length[2]_i_12_n_0\
    );
\payload_byte_length[2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFFFFFFFFFFF"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[0]\,
      I1 => \w5500state_next_reg_n_0_[4]\,
      I2 => \w5500state_next_reg_n_0_[5]\,
      I3 => \w5500state_next_reg_n_0_[1]\,
      I4 => \w5500state_next_reg_n_0_[3]\,
      I5 => \w5500state_next_reg_n_0_[2]\,
      O => \payload_byte_length[2]_i_13_n_0\
    );
\payload_byte_length[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D0D0D0000000D00"
    )
        port map (
      I0 => w5500state(5),
      I1 => \rx_shift_payload_buffer_reg_n_0_[18]\,
      I2 => w5500state(4),
      I3 => \payload_byte_length[2]_i_4_n_0\,
      I4 => w5500state(0),
      I5 => \payload_byte_length[2]_i_5_n_0\,
      O => \payload_byte_length[2]_i_2_n_0\
    );
\payload_byte_length[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \payload_byte_length[2]_i_6_n_0\,
      I1 => \conf_header[13]_i_11_n_0\,
      I2 => w5500state(1),
      I3 => \payload_byte_length[2]_i_7_n_0\,
      I4 => w5500state(2),
      I5 => \payload_byte_length_reg[2]_i_8_n_0\,
      O => \payload_byte_length[2]_i_3_n_0\
    );
\payload_byte_length[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => w5500state(2),
      I1 => w5500state(1),
      I2 => w5500state(3),
      O => \payload_byte_length[2]_i_4_n_0\
    );
\payload_byte_length[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => w5500state(1),
      I1 => w5500state(2),
      O => \payload_byte_length[2]_i_5_n_0\
    );
\payload_byte_length[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000044444744"
    )
        port map (
      I0 => \ptm_transmitted_byte_counter[11]_i_3_n_0\,
      I1 => w5500state(3),
      I2 => \conf_header[13]_i_28_n_0\,
      I3 => \payload_byte_length[2]_i_9_n_0\,
      I4 => w5500state(4),
      I5 => w5500state(5),
      O => \payload_byte_length[2]_i_6_n_0\
    );
\payload_byte_length[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022222E22"
    )
        port map (
      I0 => \payload_byte_length[2]_i_10_n_0\,
      I1 => w5500state(3),
      I2 => w5500state(4),
      I3 => \conf_header[13]_i_25_n_0\,
      I4 => \conf_header[13]_i_28_n_0\,
      I5 => w5500state(5),
      O => \payload_byte_length[2]_i_7_n_0\
    );
\payload_byte_length[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FDFFFFFF"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[1]\,
      I1 => \w5500state_next_reg_n_0_[4]\,
      I2 => \payload_byte_length[2]_i_12_n_0\,
      I3 => \w5500state_next_reg_n_0_[2]\,
      I4 => \w5500state_next_reg_n_0_[0]\,
      I5 => payload_data_has_been_set_reg_rep_n_0,
      O => \payload_byte_length[2]_i_9_n_0\
    );
\payload_byte_length[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_payload_buffer_reg_n_0_[19]\,
      I1 => w5500state(1),
      O => \payload_byte_length[3]_i_1_n_0\
    );
\payload_byte_length[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_payload_buffer_reg_n_0_[20]\,
      I1 => w5500state(1),
      O => \payload_byte_length[4]_i_1_n_0\
    );
\payload_byte_length[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_payload_buffer_reg_n_0_[21]\,
      I1 => w5500state(1),
      O => \payload_byte_length[5]_i_1_n_0\
    );
\payload_byte_length[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_payload_buffer_reg_n_0_[22]\,
      I1 => w5500state(1),
      O => \payload_byte_length[6]_i_1_n_0\
    );
\payload_byte_length[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \conf_header[13]_i_5_n_0\,
      I1 => w5500state(1),
      I2 => \payload_byte_length[7]_i_4_n_0\,
      I3 => w5500state(0),
      I4 => \conf_header_reg[13]_i_3_n_0\,
      I5 => w5500state(5),
      O => \payload_byte_length[7]_i_1_n_0\
    );
\payload_byte_length[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \conf_header_reg[13]_i_3_n_0\,
      I1 => w5500state(0),
      I2 => \payload_byte_length[7]_i_4_n_0\,
      I3 => w5500state(1),
      I4 => \conf_header[13]_i_5_n_0\,
      O => payload_byte_length_1
    );
\payload_byte_length[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rx_shift_payload_buffer_reg_n_0_[23]\,
      I1 => w5500state(1),
      O => \payload_byte_length[7]_i_3_n_0\
    );
\payload_byte_length[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F10FFFF1F100000"
    )
        port map (
      I0 => w5500state(5),
      I1 => \ptm_transmitted_byte_counter[11]_i_3_n_0\,
      I2 => w5500state(3),
      I3 => \payload_byte_length[7]_i_5_n_0\,
      I4 => w5500state(2),
      I5 => \conf_header[13]_i_11_n_0\,
      O => \payload_byte_length[7]_i_4_n_0\
    );
\payload_byte_length[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000D0"
    )
        port map (
      I0 => prev_spi_busy,
      I1 => spi_busy,
      I2 => \conf_header[13]_i_20_n_0\,
      I3 => payload_data_has_been_set_reg_rep_n_0,
      I4 => w5500state(4),
      I5 => w5500state(5),
      O => \payload_byte_length[7]_i_5_n_0\
    );
\payload_byte_length_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \payload_byte_length[0]_i_1_n_0\,
      Q => payload_byte_length(0),
      R => '0'
    );
\payload_byte_length_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \payload_byte_length[1]_i_1_n_0\,
      Q => payload_byte_length(1),
      R => '0'
    );
\payload_byte_length_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \payload_byte_length[2]_i_1_n_0\,
      Q => payload_byte_length(2),
      R => '0'
    );
\payload_byte_length_reg[2]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \conf_header[13]_i_14_n_0\,
      I1 => \payload_byte_length[2]_i_11_n_0\,
      O => \payload_byte_length_reg[2]_i_8_n_0\,
      S => w5500state(3)
    );
\payload_byte_length_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => payload_byte_length_1,
      D => \payload_byte_length[3]_i_1_n_0\,
      Q => payload_byte_length(3),
      R => \payload_byte_length[7]_i_1_n_0\
    );
\payload_byte_length_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => payload_byte_length_1,
      D => \payload_byte_length[4]_i_1_n_0\,
      Q => payload_byte_length(4),
      R => \payload_byte_length[7]_i_1_n_0\
    );
\payload_byte_length_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => payload_byte_length_1,
      D => \payload_byte_length[5]_i_1_n_0\,
      Q => payload_byte_length(5),
      R => \payload_byte_length[7]_i_1_n_0\
    );
\payload_byte_length_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => payload_byte_length_1,
      D => \payload_byte_length[6]_i_1_n_0\,
      Q => payload_byte_length(6),
      R => \payload_byte_length[7]_i_1_n_0\
    );
\payload_byte_length_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => payload_byte_length_1,
      D => \payload_byte_length[7]_i_3_n_0\,
      Q => payload_byte_length(7),
      R => \payload_byte_length[7]_i_1_n_0\
    );
payload_data0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => payload_data0_carry_n_0,
      CO(2) => payload_data0_carry_n_1,
      CO(1) => payload_data0_carry_n_2,
      CO(0) => payload_data0_carry_n_3,
      CYINIT => '0',
      DI(3) => payload_data0_carry_i_1_n_0,
      DI(2) => payload_data0_carry_i_2_n_0,
      DI(1) => payload_data0_carry_i_3_n_0,
      DI(0) => payload_data0_carry_i_4_n_0,
      O(3 downto 0) => NLW_payload_data0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => payload_data0_carry_i_5_n_0,
      S(2) => payload_data0_carry_i_6_n_0,
      S(1) => payload_data0_carry_i_7_n_0,
      S(0) => payload_data0_carry_i_8_n_0
    );
\payload_data0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => payload_data0_carry_n_0,
      CO(3) => \payload_data0_carry__0_n_0\,
      CO(2) => \payload_data0_carry__0_n_1\,
      CO(1) => \payload_data0_carry__0_n_2\,
      CO(0) => \payload_data0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \payload_data0_carry__0_i_1_n_0\,
      DI(2) => \payload_data0_carry__0_i_2_n_0\,
      DI(1) => \payload_data0_carry__0_i_3_n_0\,
      DI(0) => \payload_data0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_payload_data0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \payload_data0_carry__0_i_5_n_0\,
      S(2) => \payload_data0_carry__0_i_6_n_0\,
      S(1) => \payload_data0_carry__0_i_7_n_0\,
      S(0) => \payload_data0_carry__0_i_8_n_0\
    );
\payload_data0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => byte_length_buffer_reg(14),
      I1 => byte_length_buffer_reg(15),
      O => \payload_data0_carry__0_i_1_n_0\
    );
\payload_data0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => byte_length_buffer_reg(12),
      I1 => byte_length_buffer_reg(13),
      O => \payload_data0_carry__0_i_2_n_0\
    );
\payload_data0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => byte_length_buffer_reg(10),
      I1 => byte_length_buffer_reg(11),
      O => \payload_data0_carry__0_i_3_n_0\
    );
\payload_data0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => byte_length_buffer_reg(8),
      I1 => byte_length_buffer_reg(9),
      O => \payload_data0_carry__0_i_4_n_0\
    );
\payload_data0_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => byte_length_buffer_reg(14),
      I1 => byte_length_buffer_reg(15),
      O => \payload_data0_carry__0_i_5_n_0\
    );
\payload_data0_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => byte_length_buffer_reg(12),
      I1 => byte_length_buffer_reg(13),
      O => \payload_data0_carry__0_i_6_n_0\
    );
\payload_data0_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => byte_length_buffer_reg(10),
      I1 => byte_length_buffer_reg(11),
      O => \payload_data0_carry__0_i_7_n_0\
    );
\payload_data0_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => byte_length_buffer_reg(8),
      I1 => byte_length_buffer_reg(9),
      O => \payload_data0_carry__0_i_8_n_0\
    );
\payload_data0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \payload_data0_carry__0_n_0\,
      CO(3) => \payload_data0_carry__1_n_0\,
      CO(2) => \payload_data0_carry__1_n_1\,
      CO(1) => \payload_data0_carry__1_n_2\,
      CO(0) => \payload_data0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \payload_data0_carry__1_i_1_n_0\,
      DI(2) => \payload_data0_carry__1_i_2_n_0\,
      DI(1) => \payload_data0_carry__1_i_3_n_0\,
      DI(0) => \payload_data0_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_payload_data0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \payload_data0_carry__1_i_5_n_0\,
      S(2) => \payload_data0_carry__1_i_6_n_0\,
      S(1) => \payload_data0_carry__1_i_7_n_0\,
      S(0) => \payload_data0_carry__1_i_8_n_0\
    );
\payload_data0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => byte_length_buffer_reg(22),
      I1 => byte_length_buffer_reg(23),
      O => \payload_data0_carry__1_i_1_n_0\
    );
\payload_data0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => byte_length_buffer_reg(20),
      I1 => byte_length_buffer_reg(21),
      O => \payload_data0_carry__1_i_2_n_0\
    );
\payload_data0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => byte_length_buffer_reg(18),
      I1 => byte_length_buffer_reg(19),
      O => \payload_data0_carry__1_i_3_n_0\
    );
\payload_data0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => byte_length_buffer_reg(16),
      I1 => byte_length_buffer_reg(17),
      O => \payload_data0_carry__1_i_4_n_0\
    );
\payload_data0_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => byte_length_buffer_reg(22),
      I1 => byte_length_buffer_reg(23),
      O => \payload_data0_carry__1_i_5_n_0\
    );
\payload_data0_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => byte_length_buffer_reg(20),
      I1 => byte_length_buffer_reg(21),
      O => \payload_data0_carry__1_i_6_n_0\
    );
\payload_data0_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => byte_length_buffer_reg(18),
      I1 => byte_length_buffer_reg(19),
      O => \payload_data0_carry__1_i_7_n_0\
    );
\payload_data0_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => byte_length_buffer_reg(16),
      I1 => byte_length_buffer_reg(17),
      O => \payload_data0_carry__1_i_8_n_0\
    );
\payload_data0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \payload_data0_carry__1_n_0\,
      CO(3) => payload_data0,
      CO(2) => \payload_data0_carry__2_n_1\,
      CO(1) => \payload_data0_carry__2_n_2\,
      CO(0) => \payload_data0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \payload_data0_carry__2_i_1_n_0\,
      DI(2) => \payload_data0_carry__2_i_2_n_0\,
      DI(1) => \payload_data0_carry__2_i_3_n_0\,
      DI(0) => \payload_data0_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_payload_data0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \payload_data0_carry__2_i_5_n_0\,
      S(2) => \payload_data0_carry__2_i_6_n_0\,
      S(1) => \payload_data0_carry__2_i_7_n_0\,
      S(0) => \payload_data0_carry__2_i_8_n_0\
    );
\payload_data0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => byte_length_buffer_reg(30),
      I1 => byte_length_buffer_reg(31),
      O => \payload_data0_carry__2_i_1_n_0\
    );
\payload_data0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => byte_length_buffer_reg(28),
      I1 => byte_length_buffer_reg(29),
      O => \payload_data0_carry__2_i_2_n_0\
    );
\payload_data0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => byte_length_buffer_reg(26),
      I1 => byte_length_buffer_reg(27),
      O => \payload_data0_carry__2_i_3_n_0\
    );
\payload_data0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => byte_length_buffer_reg(24),
      I1 => byte_length_buffer_reg(25),
      O => \payload_data0_carry__2_i_4_n_0\
    );
\payload_data0_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => byte_length_buffer_reg(31),
      I1 => byte_length_buffer_reg(30),
      O => \payload_data0_carry__2_i_5_n_0\
    );
\payload_data0_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => byte_length_buffer_reg(28),
      I1 => byte_length_buffer_reg(29),
      O => \payload_data0_carry__2_i_6_n_0\
    );
\payload_data0_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => byte_length_buffer_reg(26),
      I1 => byte_length_buffer_reg(27),
      O => \payload_data0_carry__2_i_7_n_0\
    );
\payload_data0_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => byte_length_buffer_reg(24),
      I1 => byte_length_buffer_reg(25),
      O => \payload_data0_carry__2_i_8_n_0\
    );
payload_data0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => byte_length_buffer_reg(6),
      I1 => byte_length_buffer_reg(7),
      O => payload_data0_carry_i_1_n_0
    );
payload_data0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => byte_length_buffer_reg(4),
      I1 => byte_length_buffer_reg(5),
      O => payload_data0_carry_i_2_n_0
    );
payload_data0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => byte_length_buffer_reg(2),
      I1 => byte_length_buffer_reg(3),
      O => payload_data0_carry_i_3_n_0
    );
payload_data0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => byte_length_buffer_reg(0),
      I1 => byte_length_buffer_reg(1),
      O => payload_data0_carry_i_4_n_0
    );
payload_data0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => byte_length_buffer_reg(6),
      I1 => byte_length_buffer_reg(7),
      O => payload_data0_carry_i_5_n_0
    );
payload_data0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => byte_length_buffer_reg(4),
      I1 => byte_length_buffer_reg(5),
      O => payload_data0_carry_i_6_n_0
    );
payload_data0_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => byte_length_buffer_reg(2),
      I1 => byte_length_buffer_reg(3),
      O => payload_data0_carry_i_7_n_0
    );
payload_data0_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => byte_length_buffer_reg(0),
      I1 => byte_length_buffer_reg(1),
      O => payload_data0_carry_i_8_n_0
    );
\payload_data[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => shift_payload_buffer(24),
      I1 => streamhandler_state(0),
      O => \payload_data[0]_i_1_n_0\
    );
\payload_data[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => shift_payload_buffer(25),
      I1 => streamhandler_state(0),
      O => \payload_data[1]_i_1_n_0\
    );
\payload_data[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => shift_payload_buffer(26),
      I1 => streamhandler_state(0),
      O => \payload_data[2]_i_1_n_0\
    );
\payload_data[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => shift_payload_buffer(27),
      I1 => streamhandler_state(0),
      O => \payload_data[3]_i_1_n_0\
    );
\payload_data[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => shift_payload_buffer(28),
      I1 => streamhandler_state(0),
      O => \payload_data[4]_i_1_n_0\
    );
\payload_data[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => shift_payload_buffer(29),
      I1 => streamhandler_state(0),
      O => \payload_data[5]_i_1_n_0\
    );
\payload_data[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => shift_payload_buffer(30),
      I1 => streamhandler_state(0),
      O => \payload_data[6]_i_1_n_0\
    );
\payload_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => payload_data0,
      I1 => streamhandler_state(0),
      I2 => streamhandler_state(1),
      O => \payload_data[7]_i_1_n_0\
    );
\payload_data[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => streamhandler_state(1),
      I1 => streamhandler_state(0),
      I2 => payload_data0,
      O => \payload_data[7]_i_2_n_0\
    );
\payload_data[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => shift_payload_buffer(31),
      I1 => streamhandler_state(0),
      O => \payload_data[7]_i_3_n_0\
    );
payload_data_has_been_set_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => payload_data_has_been_set_i_2_n_0,
      I1 => w5500state(5),
      I2 => payload_data_has_been_set_reg_i_3_n_0,
      I3 => payload_data_has_been_set,
      I4 => payload_data_has_been_set_reg_n_0,
      O => payload_data_has_been_set_i_1_n_0
    );
payload_data_has_been_set_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFEBEAEAABAFE8A8"
    )
        port map (
      I0 => w5500state(5),
      I1 => w5500state(2),
      I2 => w5500state(3),
      I3 => w5500state(0),
      I4 => w5500state(4),
      I5 => w5500state(1),
      O => payload_data_has_been_set_i_10_n_0
    );
payload_data_has_been_set_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBFEEC8ABBFAE8A"
    )
        port map (
      I0 => w5500state(5),
      I1 => w5500state(2),
      I2 => w5500state(1),
      I3 => w5500state(4),
      I4 => w5500state(3),
      I5 => w5500state(0),
      O => payload_data_has_been_set_i_12_n_0
    );
payload_data_has_been_set_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => payload_data_has_been_set_i_29_n_0,
      I1 => payload_data_has_been_set_i_30_n_0,
      I2 => payload_data_has_been_set_i_24_n_0,
      I3 => payload_data_has_been_set_i_19_n_0,
      I4 => payload_data_has_been_set_i_31_n_0,
      O => payload_data_has_been_set_i_13_n_0
    );
payload_data_has_been_set_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[4]\,
      I1 => \w5500state_next_reg_n_0_[2]\,
      O => payload_data_has_been_set_i_14_n_0
    );
payload_data_has_been_set_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFACA0AC"
    )
        port map (
      I0 => payload_data_has_been_set_reg_i_32_n_0,
      I1 => payload_data_has_been_set_i_33_n_0,
      I2 => w5500state(3),
      I3 => w5500state(1),
      I4 => payload_data_has_been_set_i_34_n_0,
      O => payload_data_has_been_set_i_15_n_0
    );
payload_data_has_been_set_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => payload_data_has_been_set_i_35_n_0,
      I1 => w5500state(3),
      I2 => payload_data_has_been_set_i_36_n_0,
      I3 => w5500state(1),
      I4 => payload_data_has_been_set_i_37_n_0,
      O => payload_data_has_been_set_i_16_n_0
    );
payload_data_has_been_set_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFAAC0AA"
    )
        port map (
      I0 => payload_data_has_been_set_reg_i_38_n_0,
      I1 => payload_data_has_been_set_i_39_n_0,
      I2 => w5500state(1),
      I3 => w5500state(3),
      I4 => payload_data_has_been_set_i_40_n_0,
      O => payload_data_has_been_set_i_17_n_0
    );
payload_data_has_been_set_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AFC00000A0C0"
    )
        port map (
      I0 => \conf_header[13]_i_33_n_0\,
      I1 => \payload_byte_length[2]_i_13_n_0\,
      I2 => payload_data_has_been_set_i_41_n_0,
      I3 => payload_data_has_been_set_i_42_n_0,
      I4 => \conf_header[13]_i_28_n_0\,
      I5 => \ptm_transmitted_byte_counter[11]_i_4_n_0\,
      O => payload_data_has_been_set_i_18_n_0
    );
payload_data_has_been_set_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFE8AEFDEAADBBB8"
    )
        port map (
      I0 => w5500state(5),
      I1 => w5500state(2),
      I2 => w5500state(3),
      I3 => w5500state(4),
      I4 => w5500state(1),
      I5 => w5500state(0),
      O => payload_data_has_been_set_i_19_n_0
    );
payload_data_has_been_set_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => w5500state(2),
      I1 => w5500state(3),
      I2 => payload_data_has_been_set_i_5_n_0,
      I3 => w5500state(1),
      I4 => w5500state(4),
      O => payload_data_has_been_set_i_2_n_0
    );
payload_data_has_been_set_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FBFFFFFF"
    )
        port map (
      I0 => \conf_header[13]_i_47_n_0\,
      I1 => \w5500state_next_reg_n_0_[1]\,
      I2 => \w5500state_next_reg_n_0_[5]\,
      I3 => \w5500state_next_reg_n_0_[4]\,
      I4 => \w5500state_next_reg_n_0_[0]\,
      I5 => payload_data_has_been_set_reg_rep_n_0,
      O => payload_data_has_been_set_i_20_n_0
    );
payload_data_has_been_set_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBEEAAAFFFFFFE27"
    )
        port map (
      I0 => w5500state(5),
      I1 => w5500state(1),
      I2 => w5500state(0),
      I3 => w5500state(3),
      I4 => w5500state(4),
      I5 => w5500state(2),
      O => payload_data_has_been_set_i_21_n_0
    );
payload_data_has_been_set_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00BFBB0F008F88"
    )
        port map (
      I0 => payload_data_has_been_set_i_43_n_0,
      I1 => payload_data_has_been_set_i_21_n_0,
      I2 => spi_busy,
      I3 => prev_spi_busy,
      I4 => payload_data_has_been_set_reg_rep_n_0,
      I5 => \ptm_transmitted_byte_counter[11]_i_4_n_0\,
      O => payload_data_has_been_set_i_22_n_0
    );
payload_data_has_been_set_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00BFBB0F008F88"
    )
        port map (
      I0 => \conf_header[13]_i_35_n_0\,
      I1 => payload_data_has_been_set_i_21_n_0,
      I2 => spi_busy,
      I3 => prev_spi_busy,
      I4 => payload_data_has_been_set_reg_rep_n_0,
      I5 => \conf_header[13]_i_21_n_0\,
      O => payload_data_has_been_set_i_23_n_0
    );
payload_data_has_been_set_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000432A00015878"
    )
        port map (
      I0 => w5500state(0),
      I1 => w5500state(1),
      I2 => w5500state(2),
      I3 => w5500state(3),
      I4 => w5500state(5),
      I5 => w5500state(4),
      O => payload_data_has_been_set_i_24_n_0
    );
payload_data_has_been_set_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00BFBB0F008F88"
    )
        port map (
      I0 => \conf_header[13]_i_31_n_0\,
      I1 => payload_data_has_been_set_i_21_n_0,
      I2 => spi_busy,
      I3 => prev_spi_busy,
      I4 => payload_data_has_been_set_reg_rep_n_0,
      I5 => \conf_header[13]_i_38_n_0\,
      O => payload_data_has_been_set_i_25_n_0
    );
payload_data_has_been_set_i_26: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4040FF40"
    )
        port map (
      I0 => payload_data_has_been_set_reg_rep_n_0,
      I1 => \conf_header[13]_i_43_n_0\,
      I2 => payload_data_has_been_set_i_21_n_0,
      I3 => prev_spi_busy,
      I4 => spi_busy,
      O => payload_data_has_been_set_i_26_n_0
    );
payload_data_has_been_set_i_29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00BFBB0F008F88"
    )
        port map (
      I0 => \conf_header[13]_i_48_n_0\,
      I1 => payload_data_has_been_set_i_21_n_0,
      I2 => spi_busy,
      I3 => prev_spi_busy,
      I4 => payload_data_has_been_set_reg_rep_n_0,
      I5 => payload_data_has_been_set_i_48_n_0,
      O => payload_data_has_been_set_i_29_n_0
    );
payload_data_has_been_set_i_30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00BFBB0F008F88"
    )
        port map (
      I0 => \conf_header[13]_i_20_n_0\,
      I1 => payload_data_has_been_set_i_21_n_0,
      I2 => spi_busy,
      I3 => prev_spi_busy,
      I4 => payload_data_has_been_set_reg_rep_n_0,
      I5 => \conf_header[13]_i_34_n_0\,
      O => payload_data_has_been_set_i_30_n_0
    );
payload_data_has_been_set_i_31: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00BFBB0F008F88"
    )
        port map (
      I0 => \conf_header[13]_i_45_n_0\,
      I1 => payload_data_has_been_set_i_49_n_0,
      I2 => spi_busy,
      I3 => prev_spi_busy,
      I4 => payload_data_has_been_set_reg_rep_n_0,
      I5 => payload_data_has_been_set0,
      O => payload_data_has_been_set_i_31_n_0
    );
payload_data_has_been_set_i_33: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFEFFFF"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[2]\,
      I1 => \w5500state_next_reg_n_0_[3]\,
      I2 => payload_data_has_been_set_i_52_n_0,
      I3 => \w5500state_next_reg_n_0_[4]\,
      I4 => \w5500state_next_reg_n_0_[1]\,
      I5 => \conf_header[13]_i_28_n_0\,
      O => payload_data_has_been_set_i_33_n_0
    );
payload_data_has_been_set_i_34: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000ABBBA888"
    )
        port map (
      I0 => payload_data_has_been_set_i_48_n_0,
      I1 => w5500state(3),
      I2 => w5500state(0),
      I3 => w5500state(1),
      I4 => \conf_header[13]_i_45_n_0\,
      I5 => \conf_header[13]_i_28_n_0\,
      O => payload_data_has_been_set_i_34_n_0
    );
payload_data_has_been_set_i_35: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A000A000CF00C0"
    )
        port map (
      I0 => \conf_header[13]_i_38_n_0\,
      I1 => \conf_header[13]_i_21_n_0\,
      I2 => w5500state(1),
      I3 => \conf_header[13]_i_28_n_0\,
      I4 => \conf_header[13]_i_46_n_0\,
      I5 => w5500state(0),
      O => payload_data_has_been_set_i_35_n_0
    );
payload_data_has_been_set_i_36: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B800B8B8"
    )
        port map (
      I0 => \conf_header[13]_i_39_n_0\,
      I1 => w5500state(0),
      I2 => \conf_header[13]_i_20_n_0\,
      I3 => spi_busy,
      I4 => prev_spi_busy,
      O => payload_data_has_been_set_i_36_n_0
    );
payload_data_has_been_set_i_37: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B800B8B8"
    )
        port map (
      I0 => \conf_header[13]_i_34_n_0\,
      I1 => w5500state(0),
      I2 => \conf_header[13]_i_48_n_0\,
      I3 => spi_busy,
      I4 => prev_spi_busy,
      O => payload_data_has_been_set_i_37_n_0
    );
payload_data_has_been_set_i_39: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FBFFFFFF"
    )
        port map (
      I0 => \conf_header[13]_i_47_n_0\,
      I1 => \w5500state_next_reg_n_0_[1]\,
      I2 => \w5500state_next_reg_n_0_[5]\,
      I3 => \w5500state_next_reg_n_0_[4]\,
      I4 => \w5500state_next_reg_n_0_[0]\,
      I5 => \conf_header[13]_i_28_n_0\,
      O => payload_data_has_been_set_i_39_n_0
    );
payload_data_has_been_set_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => payload_data_has_been_set_i_8_n_0,
      I1 => payload_data_has_been_set_i_9_n_0,
      I2 => payload_data_has_been_set_i_10_n_0,
      I3 => payload_data_has_been_set_reg_i_11_n_0,
      I4 => payload_data_has_been_set_i_12_n_0,
      I5 => payload_data_has_been_set_i_13_n_0,
      O => payload_data_has_been_set
    );
payload_data_has_been_set_i_40: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EFAA20AA"
    )
        port map (
      I0 => \conf_header[13]_i_32_n_0\,
      I1 => w5500state(1),
      I2 => w5500state(0),
      I3 => w5500state(3),
      I4 => \conf_header[13]_i_29_n_0\,
      I5 => \conf_header[13]_i_28_n_0\,
      O => payload_data_has_been_set_i_40_n_0
    );
payload_data_has_been_set_i_41: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => w5500state(1),
      I1 => w5500state(3),
      O => payload_data_has_been_set_i_41_n_0
    );
payload_data_has_been_set_i_42: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => w5500state(3),
      I1 => w5500state(1),
      I2 => w5500state(0),
      O => payload_data_has_been_set_i_42_n_0
    );
payload_data_has_been_set_i_43: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[2]\,
      I1 => \w5500state_next_reg_n_0_[4]\,
      I2 => \w5500state_next_reg_n_0_[1]\,
      I3 => \w5500state_next_reg_n_0_[0]\,
      I4 => \w5500state_next_reg_n_0_[5]\,
      I5 => \w5500state_next_reg_n_0_[3]\,
      O => payload_data_has_been_set_i_43_n_0
    );
payload_data_has_been_set_i_44: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00BFBB0F008F88"
    )
        port map (
      I0 => \conf_header[13]_i_42_n_0\,
      I1 => payload_data_has_been_set_i_21_n_0,
      I2 => spi_busy,
      I3 => prev_spi_busy,
      I4 => payload_data_has_been_set_reg_rep_n_0,
      I5 => \conf_header[13]_i_39_n_0\,
      O => payload_data_has_been_set_i_44_n_0
    );
payload_data_has_been_set_i_45: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00BFBB0F008F88"
    )
        port map (
      I0 => \conf_header[13]_i_37_n_0\,
      I1 => payload_data_has_been_set_i_21_n_0,
      I2 => spi_busy,
      I3 => prev_spi_busy,
      I4 => payload_data_has_been_set_reg_rep_n_0,
      I5 => \conf_header[13]_i_30_n_0\,
      O => payload_data_has_been_set_i_45_n_0
    );
payload_data_has_been_set_i_46: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00BFBB0F008F88"
    )
        port map (
      I0 => \conf_header[13]_i_32_n_0\,
      I1 => payload_data_has_been_set_i_21_n_0,
      I2 => spi_busy,
      I3 => prev_spi_busy,
      I4 => payload_data_has_been_set_reg_rep_n_0,
      I5 => \conf_header[13]_i_46_n_0\,
      O => payload_data_has_been_set_i_46_n_0
    );
payload_data_has_been_set_i_47: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00BFBB0F008F88"
    )
        port map (
      I0 => \conf_header[13]_i_29_n_0\,
      I1 => payload_data_has_been_set_i_21_n_0,
      I2 => spi_busy,
      I3 => prev_spi_busy,
      I4 => payload_data_has_been_set_reg_rep_n_0,
      I5 => \conf_header[13]_i_33_n_0\,
      O => payload_data_has_been_set_i_47_n_0
    );
payload_data_has_been_set_i_48: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[2]\,
      I1 => \w5500state_next_reg_n_0_[4]\,
      I2 => \w5500state_next_reg_n_0_[1]\,
      I3 => \w5500state_next_reg_n_0_[0]\,
      I4 => \w5500state_next_reg_n_0_[3]\,
      I5 => \w5500state_next_reg_n_0_[5]\,
      O => payload_data_has_been_set_i_48_n_0
    );
payload_data_has_been_set_i_49: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFB9BFBCEAEDBBEE"
    )
        port map (
      I0 => w5500state(5),
      I1 => w5500state(2),
      I2 => w5500state(3),
      I3 => w5500state(4),
      I4 => w5500state(1),
      I5 => w5500state(0),
      O => payload_data_has_been_set_i_49_n_0
    );
payload_data_has_been_set_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEFFFFFF"
    )
        port map (
      I0 => payload_data_has_been_set_i_14_n_0,
      I1 => \w5500state_next_reg_n_0_[3]\,
      I2 => \w5500state_next_reg_n_0_[1]\,
      I3 => \w5500state_next_reg_n_0_[0]\,
      I4 => \w5500state_next_reg_n_0_[5]\,
      I5 => \conf_header[13]_i_28_n_0\,
      O => payload_data_has_been_set_i_5_n_0
    );
payload_data_has_been_set_i_50: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B800B8B8"
    )
        port map (
      I0 => \conf_header[13]_i_37_n_0\,
      I1 => w5500state(0),
      I2 => \conf_header[13]_i_30_n_0\,
      I3 => spi_busy,
      I4 => prev_spi_busy,
      O => payload_data_has_been_set_i_50_n_0
    );
payload_data_has_been_set_i_51: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B800B8B8"
    )
        port map (
      I0 => \conf_header[13]_i_32_n_0\,
      I1 => w5500state(0),
      I2 => \conf_header[13]_i_42_n_0\,
      I3 => spi_busy,
      I4 => prev_spi_busy,
      O => payload_data_has_been_set_i_51_n_0
    );
payload_data_has_been_set_i_52: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[5]\,
      I1 => \w5500state_next_reg_n_0_[0]\,
      O => payload_data_has_been_set_i_52_n_0
    );
payload_data_has_been_set_i_53: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B800B8B8"
    )
        port map (
      I0 => \conf_header[13]_i_35_n_0\,
      I1 => w5500state(0),
      I2 => \conf_header[13]_i_31_n_0\,
      I3 => spi_busy,
      I4 => prev_spi_busy,
      O => payload_data_has_been_set_i_53_n_0
    );
payload_data_has_been_set_i_54: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B800B8B8"
    )
        port map (
      I0 => payload_data_has_been_set_i_43_n_0,
      I1 => w5500state(0),
      I2 => \conf_header[13]_i_43_n_0\,
      I3 => spi_busy,
      I4 => prev_spi_busy,
      O => payload_data_has_been_set_i_54_n_0
    );
payload_data_has_been_set_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFFB8FFBBFFB8CC"
    )
        port map (
      I0 => led_OBUF,
      I1 => payload_data_has_been_set_i_19_n_0,
      I2 => payload_data_has_been_set_i_20_n_0,
      I3 => payload_data_has_been_set_i_21_n_0,
      I4 => \conf_header[13]_i_28_n_0\,
      I5 => \conf_header[13]_i_26_n_0\,
      O => payload_data_has_been_set_i_8_n_0
    );
payload_data_has_been_set_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => payload_data_has_been_set_i_22_n_0,
      I1 => payload_data_has_been_set_i_23_n_0,
      I2 => payload_data_has_been_set_i_24_n_0,
      I3 => payload_data_has_been_set_i_25_n_0,
      I4 => payload_data_has_been_set_i_19_n_0,
      I5 => payload_data_has_been_set_i_26_n_0,
      O => payload_data_has_been_set_i_9_n_0
    );
payload_data_has_been_set_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => payload_data_has_been_set_i_1_n_0,
      Q => payload_data_has_been_set_reg_n_0,
      R => '0'
    );
payload_data_has_been_set_reg_i_11: unisim.vcomponents.MUXF8
     port map (
      I0 => payload_data_has_been_set_reg_i_27_n_0,
      I1 => payload_data_has_been_set_reg_i_28_n_0,
      O => payload_data_has_been_set_reg_i_11_n_0,
      S => payload_data_has_been_set_i_24_n_0
    );
payload_data_has_been_set_reg_i_27: unisim.vcomponents.MUXF7
     port map (
      I0 => payload_data_has_been_set_i_44_n_0,
      I1 => payload_data_has_been_set_i_45_n_0,
      O => payload_data_has_been_set_reg_i_27_n_0,
      S => payload_data_has_been_set_i_19_n_0
    );
payload_data_has_been_set_reg_i_28: unisim.vcomponents.MUXF7
     port map (
      I0 => payload_data_has_been_set_i_46_n_0,
      I1 => payload_data_has_been_set_i_47_n_0,
      O => payload_data_has_been_set_reg_i_28_n_0,
      S => payload_data_has_been_set_i_19_n_0
    );
payload_data_has_been_set_reg_i_3: unisim.vcomponents.MUXF8
     port map (
      I0 => payload_data_has_been_set_reg_i_6_n_0,
      I1 => payload_data_has_been_set_reg_i_7_n_0,
      O => payload_data_has_been_set_reg_i_3_n_0,
      S => w5500state(4)
    );
payload_data_has_been_set_reg_i_32: unisim.vcomponents.MUXF7
     port map (
      I0 => payload_data_has_been_set_i_50_n_0,
      I1 => payload_data_has_been_set_i_51_n_0,
      O => payload_data_has_been_set_reg_i_32_n_0,
      S => w5500state(1)
    );
payload_data_has_been_set_reg_i_38: unisim.vcomponents.MUXF7
     port map (
      I0 => payload_data_has_been_set_i_53_n_0,
      I1 => payload_data_has_been_set_i_54_n_0,
      O => payload_data_has_been_set_reg_i_38_n_0,
      S => w5500state(1)
    );
payload_data_has_been_set_reg_i_6: unisim.vcomponents.MUXF7
     port map (
      I0 => payload_data_has_been_set_i_15_n_0,
      I1 => payload_data_has_been_set_i_16_n_0,
      O => payload_data_has_been_set_reg_i_6_n_0,
      S => w5500state(2)
    );
payload_data_has_been_set_reg_i_7: unisim.vcomponents.MUXF7
     port map (
      I0 => payload_data_has_been_set_i_17_n_0,
      I1 => payload_data_has_been_set_i_18_n_0,
      O => payload_data_has_been_set_reg_i_7_n_0,
      S => w5500state(2)
    );
payload_data_has_been_set_reg_rep: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => payload_data_has_been_set_rep_i_1_n_0,
      Q => payload_data_has_been_set_reg_rep_n_0,
      R => '0'
    );
payload_data_has_been_set_rep_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => payload_data_has_been_set_i_2_n_0,
      I1 => w5500state(5),
      I2 => payload_data_has_been_set_reg_i_3_n_0,
      I3 => payload_data_has_been_set,
      I4 => payload_data_has_been_set_reg_n_0,
      O => payload_data_has_been_set_rep_i_1_n_0
    );
\payload_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \payload_data[7]_i_2_n_0\,
      D => \payload_data[0]_i_1_n_0\,
      Q => payload_data(0),
      R => \payload_data[7]_i_1_n_0\
    );
\payload_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \payload_data[7]_i_2_n_0\,
      D => \payload_data[1]_i_1_n_0\,
      Q => payload_data(1),
      R => \payload_data[7]_i_1_n_0\
    );
\payload_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \payload_data[7]_i_2_n_0\,
      D => \payload_data[2]_i_1_n_0\,
      Q => payload_data(2),
      R => \payload_data[7]_i_1_n_0\
    );
\payload_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \payload_data[7]_i_2_n_0\,
      D => \payload_data[3]_i_1_n_0\,
      Q => payload_data(3),
      R => \payload_data[7]_i_1_n_0\
    );
\payload_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \payload_data[7]_i_2_n_0\,
      D => \payload_data[4]_i_1_n_0\,
      Q => payload_data(4),
      R => \payload_data[7]_i_1_n_0\
    );
\payload_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \payload_data[7]_i_2_n_0\,
      D => \payload_data[5]_i_1_n_0\,
      Q => payload_data(5),
      R => \payload_data[7]_i_1_n_0\
    );
\payload_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \payload_data[7]_i_2_n_0\,
      D => \payload_data[6]_i_1_n_0\,
      Q => payload_data(6),
      R => \payload_data[7]_i_1_n_0\
    );
\payload_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \payload_data[7]_i_2_n_0\,
      D => \payload_data[7]_i_3_n_0\,
      Q => payload_data(7),
      R => \payload_data[7]_i_1_n_0\
    );
payload_last_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF02000200020002"
    )
        port map (
      I0 => payload_data0,
      I1 => payload_last_i_2_n_0,
      I2 => payload_last_i_3_n_0,
      I3 => streamhandler_state(0),
      I4 => streamhandler_state(1),
      I5 => payload_last_reg_n_0,
      O => payload_last_i_1_n_0
    );
payload_last_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => payload_last_i_4_n_0,
      I1 => byte_length_buffer_reg(31),
      I2 => byte_length_buffer_reg(30),
      I3 => byte_length_buffer_reg(28),
      I4 => byte_length_buffer_reg(29),
      I5 => payload_last_i_5_n_0,
      O => payload_last_i_2_n_0
    );
payload_last_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => payload_last_i_6_n_0,
      I1 => byte_length_buffer_reg(14),
      I2 => byte_length_buffer_reg(15),
      I3 => byte_length_buffer_reg(12),
      I4 => byte_length_buffer_reg(13),
      I5 => payload_last_i_7_n_0,
      O => payload_last_i_3_n_0
    );
payload_last_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => byte_length_buffer_reg(26),
      I1 => byte_length_buffer_reg(27),
      I2 => byte_length_buffer_reg(24),
      I3 => byte_length_buffer_reg(25),
      O => payload_last_i_4_n_0
    );
payload_last_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => byte_length_buffer_reg(21),
      I1 => byte_length_buffer_reg(20),
      I2 => byte_length_buffer_reg(23),
      I3 => byte_length_buffer_reg(22),
      I4 => payload_last_i_8_n_0,
      O => payload_last_i_5_n_0
    );
payload_last_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => byte_length_buffer_reg(10),
      I1 => byte_length_buffer_reg(11),
      I2 => byte_length_buffer_reg(8),
      I3 => byte_length_buffer_reg(9),
      O => payload_last_i_6_n_0
    );
payload_last_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => byte_length_buffer_reg(5),
      I1 => byte_length_buffer_reg(4),
      I2 => byte_length_buffer_reg(7),
      I3 => byte_length_buffer_reg(6),
      I4 => payload_last_i_9_n_0,
      O => payload_last_i_7_n_0
    );
payload_last_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => byte_length_buffer_reg(18),
      I1 => byte_length_buffer_reg(19),
      I2 => byte_length_buffer_reg(16),
      I3 => byte_length_buffer_reg(17),
      O => payload_last_i_8_n_0
    );
payload_last_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => byte_length_buffer_reg(2),
      I1 => byte_length_buffer_reg(3),
      I2 => byte_length_buffer_reg(0),
      I3 => byte_length_buffer_reg(1),
      O => payload_last_i_9_n_0
    );
payload_last_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => payload_last_i_1_n_0,
      Q => payload_last_reg_n_0,
      R => '0'
    );
payload_valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E222"
    )
        port map (
      I0 => payload_data0,
      I1 => streamhandler_state(0),
      I2 => streamhandler_state(1),
      I3 => payload_valid,
      O => payload_valid_i_1_n_0
    );
payload_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => payload_valid_i_1_n_0,
      Q => payload_valid,
      R => '0'
    );
prev_payload_data_has_been_set_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => payload_data_has_been_set_reg_n_0,
      Q => prev_payload_data_has_been_set,
      R => '0'
    );
prev_spi_busy_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => spi_busy,
      Q => prev_spi_busy,
      R => '0'
    );
ptm_transmitted_byte_counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ptm_transmitted_byte_counter0_carry_n_0,
      CO(2) => ptm_transmitted_byte_counter0_carry_n_1,
      CO(1) => ptm_transmitted_byte_counter0_carry_n_2,
      CO(0) => ptm_transmitted_byte_counter0_carry_n_3,
      CYINIT => \ptm_transmitted_byte_counter_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => ptm_transmitted_byte_counter0_carry_n_4,
      O(2) => ptm_transmitted_byte_counter0_carry_n_5,
      O(1) => ptm_transmitted_byte_counter0_carry_n_6,
      O(0) => ptm_transmitted_byte_counter0_carry_n_7,
      S(3) => \ptm_transmitted_byte_counter_reg_n_0_[4]\,
      S(2) => \ptm_transmitted_byte_counter_reg_n_0_[3]\,
      S(1) => \ptm_transmitted_byte_counter_reg_n_0_[2]\,
      S(0) => \ptm_transmitted_byte_counter_reg_n_0_[1]\
    );
\ptm_transmitted_byte_counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ptm_transmitted_byte_counter0_carry_n_0,
      CO(3) => \ptm_transmitted_byte_counter0_carry__0_n_0\,
      CO(2) => \ptm_transmitted_byte_counter0_carry__0_n_1\,
      CO(1) => \ptm_transmitted_byte_counter0_carry__0_n_2\,
      CO(0) => \ptm_transmitted_byte_counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ptm_transmitted_byte_counter0_carry__0_n_4\,
      O(2) => \ptm_transmitted_byte_counter0_carry__0_n_5\,
      O(1) => \ptm_transmitted_byte_counter0_carry__0_n_6\,
      O(0) => \ptm_transmitted_byte_counter0_carry__0_n_7\,
      S(3) => \ptm_transmitted_byte_counter_reg_n_0_[8]\,
      S(2) => \ptm_transmitted_byte_counter_reg_n_0_[7]\,
      S(1) => \ptm_transmitted_byte_counter_reg_n_0_[6]\,
      S(0) => \ptm_transmitted_byte_counter_reg_n_0_[5]\
    );
\ptm_transmitted_byte_counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ptm_transmitted_byte_counter0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_ptm_transmitted_byte_counter0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \ptm_transmitted_byte_counter0_carry__1_n_2\,
      CO(0) => \ptm_transmitted_byte_counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_ptm_transmitted_byte_counter0_carry__1_O_UNCONNECTED\(3),
      O(2) => \ptm_transmitted_byte_counter0_carry__1_n_5\,
      O(1) => \ptm_transmitted_byte_counter0_carry__1_n_6\,
      O(0) => \ptm_transmitted_byte_counter0_carry__1_n_7\,
      S(3) => '0',
      S(2) => \ptm_transmitted_byte_counter_reg_n_0_[11]\,
      S(1) => \ptm_transmitted_byte_counter_reg_n_0_[10]\,
      S(0) => \ptm_transmitted_byte_counter_reg_n_0_[9]\
    );
\ptm_transmitted_byte_counter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => payload_data_has_been_set_reg_rep_n_0,
      I1 => w5500state(4),
      I2 => \ptm_transmitted_byte_counter_reg_n_0_[0]\,
      O => \ptm_transmitted_byte_counter[0]_i_1_n_0\
    );
\ptm_transmitted_byte_counter[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_data_has_been_set_reg_rep_n_0,
      I1 => w5500state(4),
      I2 => \ptm_transmitted_byte_counter0_carry__1_n_6\,
      O => \ptm_transmitted_byte_counter[10]_i_1_n_0\
    );
\ptm_transmitted_byte_counter[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => w5500state(3),
      I1 => w5500state(0),
      I2 => w5500state(2),
      I3 => w5500state(1),
      I4 => w5500state(5),
      I5 => \ptm_transmitted_byte_counter[11]_i_3_n_0\,
      O => \ptm_transmitted_byte_counter[11]_i_1_n_0\
    );
\ptm_transmitted_byte_counter[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_data_has_been_set_reg_rep_n_0,
      I1 => w5500state(4),
      I2 => \ptm_transmitted_byte_counter0_carry__1_n_5\,
      O => \ptm_transmitted_byte_counter[11]_i_2_n_0\
    );
\ptm_transmitted_byte_counter[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2FFFFF"
    )
        port map (
      I0 => prev_spi_busy,
      I1 => spi_busy,
      I2 => \ptm_transmitted_byte_counter[11]_i_4_n_0\,
      I3 => payload_data_has_been_set_reg_rep_n_0,
      I4 => w5500state(4),
      O => \ptm_transmitted_byte_counter[11]_i_3_n_0\
    );
\ptm_transmitted_byte_counter[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF7FFFFFFFF"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[1]\,
      I1 => \w5500state_next_reg_n_0_[4]\,
      I2 => \w5500state_next_reg_n_0_[2]\,
      I3 => \w5500state_next_reg_n_0_[3]\,
      I4 => \w5500state_next_reg_n_0_[5]\,
      I5 => \w5500state_next_reg_n_0_[0]\,
      O => \ptm_transmitted_byte_counter[11]_i_4_n_0\
    );
\ptm_transmitted_byte_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_data_has_been_set_reg_rep_n_0,
      I1 => w5500state(4),
      I2 => ptm_transmitted_byte_counter0_carry_n_7,
      O => \ptm_transmitted_byte_counter[1]_i_1_n_0\
    );
\ptm_transmitted_byte_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_data_has_been_set_reg_rep_n_0,
      I1 => w5500state(4),
      I2 => ptm_transmitted_byte_counter0_carry_n_6,
      O => \ptm_transmitted_byte_counter[2]_i_1_n_0\
    );
\ptm_transmitted_byte_counter[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_data_has_been_set_reg_rep_n_0,
      I1 => w5500state(4),
      I2 => ptm_transmitted_byte_counter0_carry_n_5,
      O => \ptm_transmitted_byte_counter[3]_i_1_n_0\
    );
\ptm_transmitted_byte_counter[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_data_has_been_set_reg_rep_n_0,
      I1 => w5500state(4),
      I2 => ptm_transmitted_byte_counter0_carry_n_4,
      O => \ptm_transmitted_byte_counter[4]_i_1_n_0\
    );
\ptm_transmitted_byte_counter[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_data_has_been_set_reg_rep_n_0,
      I1 => w5500state(4),
      I2 => \ptm_transmitted_byte_counter0_carry__0_n_7\,
      O => \ptm_transmitted_byte_counter[5]_i_1_n_0\
    );
\ptm_transmitted_byte_counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_data_has_been_set_reg_rep_n_0,
      I1 => w5500state(4),
      I2 => \ptm_transmitted_byte_counter0_carry__0_n_6\,
      O => \ptm_transmitted_byte_counter[6]_i_1_n_0\
    );
\ptm_transmitted_byte_counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_data_has_been_set_reg_rep_n_0,
      I1 => w5500state(4),
      I2 => \ptm_transmitted_byte_counter0_carry__0_n_5\,
      O => \ptm_transmitted_byte_counter[7]_i_1_n_0\
    );
\ptm_transmitted_byte_counter[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_data_has_been_set_reg_rep_n_0,
      I1 => w5500state(4),
      I2 => \ptm_transmitted_byte_counter0_carry__0_n_4\,
      O => \ptm_transmitted_byte_counter[8]_i_1_n_0\
    );
\ptm_transmitted_byte_counter[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_data_has_been_set_reg_rep_n_0,
      I1 => w5500state(4),
      I2 => \ptm_transmitted_byte_counter0_carry__1_n_7\,
      O => \ptm_transmitted_byte_counter[9]_i_1_n_0\
    );
\ptm_transmitted_byte_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \ptm_transmitted_byte_counter[11]_i_1_n_0\,
      D => \ptm_transmitted_byte_counter[0]_i_1_n_0\,
      Q => \ptm_transmitted_byte_counter_reg_n_0_[0]\,
      R => '0'
    );
\ptm_transmitted_byte_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \ptm_transmitted_byte_counter[11]_i_1_n_0\,
      D => \ptm_transmitted_byte_counter[10]_i_1_n_0\,
      Q => \ptm_transmitted_byte_counter_reg_n_0_[10]\,
      R => '0'
    );
\ptm_transmitted_byte_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \ptm_transmitted_byte_counter[11]_i_1_n_0\,
      D => \ptm_transmitted_byte_counter[11]_i_2_n_0\,
      Q => \ptm_transmitted_byte_counter_reg_n_0_[11]\,
      R => '0'
    );
\ptm_transmitted_byte_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \ptm_transmitted_byte_counter[11]_i_1_n_0\,
      D => \ptm_transmitted_byte_counter[1]_i_1_n_0\,
      Q => \ptm_transmitted_byte_counter_reg_n_0_[1]\,
      R => '0'
    );
\ptm_transmitted_byte_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \ptm_transmitted_byte_counter[11]_i_1_n_0\,
      D => \ptm_transmitted_byte_counter[2]_i_1_n_0\,
      Q => \ptm_transmitted_byte_counter_reg_n_0_[2]\,
      R => '0'
    );
\ptm_transmitted_byte_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \ptm_transmitted_byte_counter[11]_i_1_n_0\,
      D => \ptm_transmitted_byte_counter[3]_i_1_n_0\,
      Q => \ptm_transmitted_byte_counter_reg_n_0_[3]\,
      R => '0'
    );
\ptm_transmitted_byte_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \ptm_transmitted_byte_counter[11]_i_1_n_0\,
      D => \ptm_transmitted_byte_counter[4]_i_1_n_0\,
      Q => \ptm_transmitted_byte_counter_reg_n_0_[4]\,
      R => '0'
    );
\ptm_transmitted_byte_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \ptm_transmitted_byte_counter[11]_i_1_n_0\,
      D => \ptm_transmitted_byte_counter[5]_i_1_n_0\,
      Q => \ptm_transmitted_byte_counter_reg_n_0_[5]\,
      R => '0'
    );
\ptm_transmitted_byte_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \ptm_transmitted_byte_counter[11]_i_1_n_0\,
      D => \ptm_transmitted_byte_counter[6]_i_1_n_0\,
      Q => \ptm_transmitted_byte_counter_reg_n_0_[6]\,
      R => '0'
    );
\ptm_transmitted_byte_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \ptm_transmitted_byte_counter[11]_i_1_n_0\,
      D => \ptm_transmitted_byte_counter[7]_i_1_n_0\,
      Q => \ptm_transmitted_byte_counter_reg_n_0_[7]\,
      R => '0'
    );
\ptm_transmitted_byte_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \ptm_transmitted_byte_counter[11]_i_1_n_0\,
      D => \ptm_transmitted_byte_counter[8]_i_1_n_0\,
      Q => \ptm_transmitted_byte_counter_reg_n_0_[8]\,
      R => '0'
    );
\ptm_transmitted_byte_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \ptm_transmitted_byte_counter[11]_i_1_n_0\,
      D => \ptm_transmitted_byte_counter[9]_i_1_n_0\,
      Q => \ptm_transmitted_byte_counter_reg_n_0_[9]\,
      R => '0'
    );
\raw_payload_buffer[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F081AFC200010002"
    )
        port map (
      I0 => w5500state(2),
      I1 => w5500state(3),
      I2 => w5500state(0),
      I3 => w5500state(4),
      I4 => w5500state(1),
      I5 => payload_data_has_been_set_reg_n_0,
      O => \raw_payload_buffer[0]_i_1_n_0\
    );
\raw_payload_buffer[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F090AFC000100000"
    )
        port map (
      I0 => w5500state(2),
      I1 => w5500state(3),
      I2 => w5500state(0),
      I3 => w5500state(4),
      I4 => w5500state(1),
      I5 => payload_data_has_been_set_reg_n_0,
      O => \raw_payload_buffer[14]_i_1_n_0\
    );
\raw_payload_buffer[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F090AFC200100002"
    )
        port map (
      I0 => w5500state(2),
      I1 => w5500state(3),
      I2 => w5500state(0),
      I3 => w5500state(4),
      I4 => w5500state(1),
      I5 => payload_data_has_been_set_reg_n_0,
      O => \raw_payload_buffer[15]_i_1_n_0\
    );
\raw_payload_buffer[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2C008C0C"
    )
        port map (
      I0 => w5500state(3),
      I1 => w5500state(2),
      I2 => w5500state(1),
      I3 => payload_data_has_been_set_reg_n_0,
      I4 => w5500state(4),
      I5 => \raw_payload_buffer_reg[16]_i_2_n_0\,
      O => \raw_payload_buffer[16]_i_1_n_0\
    );
\raw_payload_buffer[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5540554044400040"
    )
        port map (
      I0 => w5500state(2),
      I1 => w5500state(4),
      I2 => payload_data_has_been_set_reg_n_0,
      I3 => w5500state(1),
      I4 => raw_payload_buffer0(0),
      I5 => w5500state(3),
      O => \raw_payload_buffer[16]_i_3_n_0\
    );
\raw_payload_buffer[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011322200001022"
    )
        port map (
      I0 => w5500state(1),
      I1 => w5500state(2),
      I2 => plusOp(0),
      I3 => w5500state(4),
      I4 => w5500state(3),
      I5 => payload_data_has_been_set_reg_n_0,
      O => \raw_payload_buffer[16]_i_4_n_0\
    );
\raw_payload_buffer[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF62800000"
    )
        port map (
      I0 => w5500state(2),
      I1 => w5500state(3),
      I2 => w5500state(1),
      I3 => w5500state(4),
      I4 => payload_data_has_been_set_reg_n_0,
      I5 => \raw_payload_buffer_reg[17]_i_2_n_0\,
      O => \raw_payload_buffer[17]_i_1_n_0\
    );
\raw_payload_buffer[17]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => w5500state(2),
      I1 => w5500state(4),
      I2 => payload_data_has_been_set_reg_n_0,
      I3 => w5500state(1),
      I4 => raw_payload_buffer0(1),
      O => \raw_payload_buffer[17]_i_3_n_0\
    );
\raw_payload_buffer[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011322200001022"
    )
        port map (
      I0 => w5500state(1),
      I1 => w5500state(2),
      I2 => plusOp(1),
      I3 => w5500state(4),
      I4 => w5500state(3),
      I5 => payload_data_has_been_set_reg_n_0,
      O => \raw_payload_buffer[17]_i_4_n_0\
    );
\raw_payload_buffer[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40800D00"
    )
        port map (
      I0 => w5500state(4),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => w5500state(1),
      I3 => w5500state(2),
      I4 => w5500state(3),
      I5 => \raw_payload_buffer_reg[18]_i_2_n_0\,
      O => \raw_payload_buffer[18]_i_1_n_0\
    );
\raw_payload_buffer[18]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => w5500state(2),
      I1 => w5500state(4),
      I2 => payload_data_has_been_set_reg_n_0,
      I3 => w5500state(1),
      I4 => raw_payload_buffer0(2),
      O => \raw_payload_buffer[18]_i_3_n_0\
    );
\raw_payload_buffer[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011322200001022"
    )
        port map (
      I0 => w5500state(1),
      I1 => w5500state(2),
      I2 => plusOp(2),
      I3 => w5500state(4),
      I4 => w5500state(3),
      I5 => payload_data_has_been_set_reg_n_0,
      O => \raw_payload_buffer[18]_i_4_n_0\
    );
\raw_payload_buffer[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF511144C4"
    )
        port map (
      I0 => w5500state(4),
      I1 => w5500state(2),
      I2 => payload_data_has_been_set_reg_n_0,
      I3 => w5500state(3),
      I4 => w5500state(1),
      I5 => \raw_payload_buffer_reg[19]_i_2_n_0\,
      O => \raw_payload_buffer[19]_i_1_n_0\
    );
\raw_payload_buffer[19]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rx_shift_payload_buffer_reg_n_0_[0]\,
      I1 => \rx_shift_payload_buffer_reg_n_0_[16]\,
      O => \raw_payload_buffer[19]_i_10_n_0\
    );
\raw_payload_buffer[19]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rx_shift_payload_buffer_reg_n_0_[3]\,
      I1 => \ptm_transmitted_byte_counter_reg_n_0_[3]\,
      O => \raw_payload_buffer[19]_i_11_n_0\
    );
\raw_payload_buffer[19]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rx_shift_payload_buffer_reg_n_0_[2]\,
      I1 => \ptm_transmitted_byte_counter_reg_n_0_[2]\,
      O => \raw_payload_buffer[19]_i_12_n_0\
    );
\raw_payload_buffer[19]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rx_shift_payload_buffer_reg_n_0_[1]\,
      I1 => \ptm_transmitted_byte_counter_reg_n_0_[1]\,
      O => \raw_payload_buffer[19]_i_13_n_0\
    );
\raw_payload_buffer[19]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rx_shift_payload_buffer_reg_n_0_[0]\,
      I1 => \ptm_transmitted_byte_counter_reg_n_0_[0]\,
      O => \raw_payload_buffer[19]_i_14_n_0\
    );
\raw_payload_buffer[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08080808F8F8F808"
    )
        port map (
      I0 => w5500state(4),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => w5500state(1),
      I3 => raw_payload_buffer0(3),
      I4 => w5500state(2),
      I5 => w5500state(3),
      O => \raw_payload_buffer[19]_i_3_n_0\
    );
\raw_payload_buffer[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4455544400001000"
    )
        port map (
      I0 => w5500state(2),
      I1 => w5500state(1),
      I2 => plusOp(3),
      I3 => w5500state(4),
      I4 => w5500state(3),
      I5 => payload_data_has_been_set_reg_n_0,
      O => \raw_payload_buffer[19]_i_4_n_0\
    );
\raw_payload_buffer[19]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rx_shift_payload_buffer_reg_n_0_[3]\,
      I1 => \rx_shift_payload_buffer_reg_n_0_[19]\,
      O => \raw_payload_buffer[19]_i_7_n_0\
    );
\raw_payload_buffer[19]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rx_shift_payload_buffer_reg_n_0_[2]\,
      I1 => \rx_shift_payload_buffer_reg_n_0_[18]\,
      O => \raw_payload_buffer[19]_i_8_n_0\
    );
\raw_payload_buffer[19]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rx_shift_payload_buffer_reg_n_0_[1]\,
      I1 => \rx_shift_payload_buffer_reg_n_0_[17]\,
      O => \raw_payload_buffer[19]_i_9_n_0\
    );
\raw_payload_buffer[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF484A8000"
    )
        port map (
      I0 => w5500state(3),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => w5500state(4),
      I3 => w5500state(1),
      I4 => w5500state(2),
      I5 => \raw_payload_buffer_reg[20]_i_2_n_0\,
      O => \raw_payload_buffer[20]_i_1_n_0\
    );
\raw_payload_buffer[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5540554044400040"
    )
        port map (
      I0 => w5500state(2),
      I1 => w5500state(4),
      I2 => payload_data_has_been_set_reg_n_0,
      I3 => w5500state(1),
      I4 => raw_payload_buffer0(4),
      I5 => w5500state(3),
      O => \raw_payload_buffer[20]_i_3_n_0\
    );
\raw_payload_buffer[20]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011322200001022"
    )
        port map (
      I0 => w5500state(1),
      I1 => w5500state(2),
      I2 => plusOp(4),
      I3 => w5500state(4),
      I4 => w5500state(3),
      I5 => payload_data_has_been_set_reg_n_0,
      O => \raw_payload_buffer[20]_i_4_n_0\
    );
\raw_payload_buffer[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF20800B30"
    )
        port map (
      I0 => payload_data_has_been_set_reg_n_0,
      I1 => w5500state(4),
      I2 => w5500state(1),
      I3 => w5500state(2),
      I4 => w5500state(3),
      I5 => \raw_payload_buffer_reg[21]_i_2_n_0\,
      O => \raw_payload_buffer[21]_i_1_n_0\
    );
\raw_payload_buffer[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B80000FFB800"
    )
        port map (
      I0 => raw_payload_buffer0(5),
      I1 => w5500state(1),
      I2 => payload_data_has_been_set_reg_n_0,
      I3 => w5500state(4),
      I4 => w5500state(2),
      I5 => w5500state(3),
      O => \raw_payload_buffer[21]_i_3_n_0\
    );
\raw_payload_buffer[21]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0504050440504000"
    )
        port map (
      I0 => w5500state(2),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => w5500state(4),
      I3 => w5500state(1),
      I4 => plusOp(5),
      I5 => w5500state(3),
      O => \raw_payload_buffer[21]_i_4_n_0\
    );
\raw_payload_buffer[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF484A8000"
    )
        port map (
      I0 => w5500state(3),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => w5500state(4),
      I3 => w5500state(1),
      I4 => w5500state(2),
      I5 => \raw_payload_buffer_reg[22]_i_2_n_0\,
      O => \raw_payload_buffer[22]_i_1_n_0\
    );
\raw_payload_buffer[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5540554044400040"
    )
        port map (
      I0 => w5500state(2),
      I1 => w5500state(4),
      I2 => payload_data_has_been_set_reg_n_0,
      I3 => w5500state(1),
      I4 => raw_payload_buffer0(6),
      I5 => w5500state(3),
      O => \raw_payload_buffer[22]_i_3_n_0\
    );
\raw_payload_buffer[22]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0505050005EA054A"
    )
        port map (
      I0 => w5500state(1),
      I1 => plusOp(6),
      I2 => w5500state(4),
      I3 => w5500state(2),
      I4 => payload_data_has_been_set_reg_n_0,
      I5 => w5500state(3),
      O => \raw_payload_buffer[22]_i_4_n_0\
    );
\raw_payload_buffer[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF511144C4"
    )
        port map (
      I0 => w5500state(4),
      I1 => w5500state(2),
      I2 => payload_data_has_been_set_reg_n_0,
      I3 => w5500state(3),
      I4 => w5500state(1),
      I5 => \raw_payload_buffer_reg[23]_i_2_n_0\,
      O => \raw_payload_buffer[23]_i_1_n_0\
    );
\raw_payload_buffer[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08080808F8F8F808"
    )
        port map (
      I0 => w5500state(4),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => w5500state(1),
      I3 => raw_payload_buffer0(7),
      I4 => w5500state(2),
      I5 => w5500state(3),
      O => \raw_payload_buffer[23]_i_3_n_0\
    );
\raw_payload_buffer[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4455544400001000"
    )
        port map (
      I0 => w5500state(2),
      I1 => w5500state(1),
      I2 => plusOp(7),
      I3 => w5500state(4),
      I4 => w5500state(3),
      I5 => payload_data_has_been_set_reg_n_0,
      O => \raw_payload_buffer[23]_i_4_n_0\
    );
\raw_payload_buffer[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFEAE"
    )
        port map (
      I0 => \raw_payload_buffer[24]_i_2_n_0\,
      I1 => \raw_payload_buffer[24]_i_3_n_0\,
      I2 => w5500state(4),
      I3 => \raw_payload_buffer[24]_i_4_n_0\,
      I4 => \raw_payload_buffer[24]_i_5_n_0\,
      O => \raw_payload_buffer[24]_i_1_n_0\
    );
\raw_payload_buffer[24]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C100"
    )
        port map (
      I0 => w5500state(1),
      I1 => w5500state(2),
      I2 => w5500state(0),
      I3 => \raw_payload_buffer[24]_i_6_n_0\,
      O => \raw_payload_buffer[24]_i_2_n_0\
    );
\raw_payload_buffer[24]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04055000"
    )
        port map (
      I0 => w5500state(2),
      I1 => payload_data_has_been_set_reg_rep_n_0,
      I2 => w5500state(1),
      I3 => w5500state(0),
      I4 => w5500state(3),
      O => \raw_payload_buffer[24]_i_3_n_0\
    );
\raw_payload_buffer[24]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FE00040"
    )
        port map (
      I0 => w5500state(0),
      I1 => raw_payload_buffer0(8),
      I2 => w5500state(1),
      I3 => w5500state(2),
      I4 => payload_data_has_been_set_reg_rep_n_0,
      O => \raw_payload_buffer[24]_i_4_n_0\
    );
\raw_payload_buffer[24]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => w5500state(0),
      I1 => w5500state(2),
      I2 => plusOp(8),
      I3 => w5500state(1),
      I4 => w5500state(3),
      O => \raw_payload_buffer[24]_i_5_n_0\
    );
\raw_payload_buffer[24]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB3000"
    )
        port map (
      I0 => w5500state(3),
      I1 => w5500state(2),
      I2 => \rx_shift_payload_buffer_reg_n_0_[0]\,
      I3 => w5500state(5),
      I4 => payload_data_has_been_set_reg_rep_n_0,
      O => \raw_payload_buffer[24]_i_6_n_0\
    );
\raw_payload_buffer[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEFEAEAE"
    )
        port map (
      I0 => \raw_payload_buffer[25]_i_2_n_0\,
      I1 => \raw_payload_buffer[25]_i_3_n_0\,
      I2 => w5500state(4),
      I3 => w5500state(2),
      I4 => \raw_payload_buffer[25]_i_4_n_0\,
      O => \raw_payload_buffer[25]_i_1_n_0\
    );
\raw_payload_buffer[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8F8000000F8"
    )
        port map (
      I0 => w5500state(5),
      I1 => \rx_shift_payload_buffer_reg_n_0_[1]\,
      I2 => \raw_payload_buffer[25]_i_5_n_0\,
      I3 => w5500state(1),
      I4 => \raw_payload_buffer[25]_i_6_n_0\,
      I5 => w5500state(0),
      O => \raw_payload_buffer[25]_i_2_n_0\
    );
\raw_payload_buffer[25]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30B33080"
    )
        port map (
      I0 => payload_data_has_been_set_reg_rep_n_0,
      I1 => w5500state(3),
      I2 => w5500state(0),
      I3 => w5500state(1),
      I4 => w5500state(2),
      O => \raw_payload_buffer[25]_i_3_n_0\
    );
\raw_payload_buffer[25]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF02F2F0F002020"
    )
        port map (
      I0 => plusOp(9),
      I1 => w5500state(3),
      I2 => w5500state(0),
      I3 => raw_payload_buffer0(9),
      I4 => w5500state(1),
      I5 => payload_data_has_been_set_reg_rep_n_0,
      O => \raw_payload_buffer[25]_i_4_n_0\
    );
\raw_payload_buffer[25]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => w5500state(2),
      I1 => payload_data_has_been_set_reg_rep_n_0,
      O => \raw_payload_buffer[25]_i_5_n_0\
    );
\raw_payload_buffer[25]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => w5500state(2),
      I1 => w5500state(3),
      O => \raw_payload_buffer[25]_i_6_n_0\
    );
\raw_payload_buffer[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F4FFF444F444F4"
    )
        port map (
      I0 => \raw_payload_buffer[26]_i_2_n_0\,
      I1 => \w5500state_next[1]_i_2_n_0\,
      I2 => \raw_payload_buffer[28]_i_3_n_0\,
      I3 => w5500state(4),
      I4 => w5500state(2),
      I5 => \raw_payload_buffer[26]_i_3_n_0\,
      O => \raw_payload_buffer[26]_i_1_n_0\
    );
\raw_payload_buffer[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0777FFFFFFFF0777"
    )
        port map (
      I0 => w5500state(5),
      I1 => \rx_shift_payload_buffer_reg_n_0_[2]\,
      I2 => w5500state(2),
      I3 => payload_data_has_been_set_reg_n_0,
      I4 => w5500state(3),
      I5 => w5500state(1),
      O => \raw_payload_buffer[26]_i_2_n_0\
    );
\raw_payload_buffer[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF02F2F0F002020"
    )
        port map (
      I0 => plusOp(10),
      I1 => w5500state(3),
      I2 => w5500state(0),
      I3 => raw_payload_buffer0(10),
      I4 => w5500state(1),
      I5 => payload_data_has_been_set_reg_n_0,
      O => \raw_payload_buffer[26]_i_3_n_0\
    );
\raw_payload_buffer[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F4FFF444F444F4"
    )
        port map (
      I0 => \raw_payload_buffer[27]_i_2_n_0\,
      I1 => \w5500state_next[1]_i_2_n_0\,
      I2 => \raw_payload_buffer[28]_i_3_n_0\,
      I3 => w5500state(4),
      I4 => w5500state(2),
      I5 => \raw_payload_buffer[27]_i_3_n_0\,
      O => \raw_payload_buffer[27]_i_1_n_0\
    );
\raw_payload_buffer[27]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rx_shift_payload_buffer_reg_n_0_[8]\,
      I1 => \ptm_transmitted_byte_counter_reg_n_0_[8]\,
      O => \raw_payload_buffer[27]_i_10_n_0\
    );
\raw_payload_buffer[27]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data3(31),
      I1 => \ptm_transmitted_byte_counter_reg_n_0_[7]\,
      O => \raw_payload_buffer[27]_i_12_n_0\
    );
\raw_payload_buffer[27]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data3(30),
      I1 => \ptm_transmitted_byte_counter_reg_n_0_[6]\,
      O => \raw_payload_buffer[27]_i_13_n_0\
    );
\raw_payload_buffer[27]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data3(29),
      I1 => \ptm_transmitted_byte_counter_reg_n_0_[5]\,
      O => \raw_payload_buffer[27]_i_14_n_0\
    );
\raw_payload_buffer[27]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rx_shift_payload_buffer_reg_n_0_[4]\,
      I1 => \ptm_transmitted_byte_counter_reg_n_0_[4]\,
      O => \raw_payload_buffer[27]_i_15_n_0\
    );
\raw_payload_buffer[27]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data3(31),
      I1 => \rx_shift_payload_buffer_reg_n_0_[23]\,
      O => \raw_payload_buffer[27]_i_16_n_0\
    );
\raw_payload_buffer[27]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data3(30),
      I1 => \rx_shift_payload_buffer_reg_n_0_[22]\,
      O => \raw_payload_buffer[27]_i_17_n_0\
    );
\raw_payload_buffer[27]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data3(29),
      I1 => \rx_shift_payload_buffer_reg_n_0_[21]\,
      O => \raw_payload_buffer[27]_i_18_n_0\
    );
\raw_payload_buffer[27]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rx_shift_payload_buffer_reg_n_0_[4]\,
      I1 => \rx_shift_payload_buffer_reg_n_0_[20]\,
      O => \raw_payload_buffer[27]_i_19_n_0\
    );
\raw_payload_buffer[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0777FFFFFFFF0777"
    )
        port map (
      I0 => w5500state(5),
      I1 => \rx_shift_payload_buffer_reg_n_0_[3]\,
      I2 => w5500state(2),
      I3 => payload_data_has_been_set_reg_n_0,
      I4 => w5500state(3),
      I5 => w5500state(1),
      O => \raw_payload_buffer[27]_i_2_n_0\
    );
\raw_payload_buffer[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF02F2F0F002020"
    )
        port map (
      I0 => plusOp(11),
      I1 => w5500state(3),
      I2 => w5500state(0),
      I3 => raw_payload_buffer0(11),
      I4 => w5500state(1),
      I5 => payload_data_has_been_set_reg_n_0,
      O => \raw_payload_buffer[27]_i_3_n_0\
    );
\raw_payload_buffer[27]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rx_shift_payload_buffer_reg_n_0_[11]\,
      I1 => \ptm_transmitted_byte_counter_reg_n_0_[11]\,
      O => \raw_payload_buffer[27]_i_7_n_0\
    );
\raw_payload_buffer[27]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rx_shift_payload_buffer_reg_n_0_[10]\,
      I1 => \ptm_transmitted_byte_counter_reg_n_0_[10]\,
      O => \raw_payload_buffer[27]_i_8_n_0\
    );
\raw_payload_buffer[27]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rx_shift_payload_buffer_reg_n_0_[9]\,
      I1 => \ptm_transmitted_byte_counter_reg_n_0_[9]\,
      O => \raw_payload_buffer[27]_i_9_n_0\
    );
\raw_payload_buffer[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F4FFF444F444F4"
    )
        port map (
      I0 => \raw_payload_buffer[28]_i_2_n_0\,
      I1 => \w5500state_next[1]_i_2_n_0\,
      I2 => \raw_payload_buffer[28]_i_3_n_0\,
      I3 => w5500state(4),
      I4 => w5500state(2),
      I5 => \raw_payload_buffer[28]_i_4_n_0\,
      O => \raw_payload_buffer[28]_i_1_n_0\
    );
\raw_payload_buffer[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0777FFFFFFFF0777"
    )
        port map (
      I0 => w5500state(5),
      I1 => \rx_shift_payload_buffer_reg_n_0_[4]\,
      I2 => w5500state(2),
      I3 => payload_data_has_been_set_reg_n_0,
      I4 => w5500state(3),
      I5 => w5500state(1),
      O => \raw_payload_buffer[28]_i_2_n_0\
    );
\raw_payload_buffer[28]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B33080"
    )
        port map (
      I0 => payload_data_has_been_set_reg_n_0,
      I1 => w5500state(3),
      I2 => w5500state(0),
      I3 => w5500state(1),
      I4 => w5500state(2),
      O => \raw_payload_buffer[28]_i_3_n_0\
    );
\raw_payload_buffer[28]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF02F2F0F002020"
    )
        port map (
      I0 => plusOp(12),
      I1 => w5500state(3),
      I2 => w5500state(0),
      I3 => raw_payload_buffer0(12),
      I4 => w5500state(1),
      I5 => payload_data_has_been_set_reg_n_0,
      O => \raw_payload_buffer[28]_i_4_n_0\
    );
\raw_payload_buffer[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAEAEAFFEA"
    )
        port map (
      I0 => \raw_payload_buffer[29]_i_2_n_0\,
      I1 => w5500state(5),
      I2 => data3(29),
      I3 => \raw_payload_buffer[29]_i_3_n_0\,
      I4 => w5500state(4),
      I5 => \raw_payload_buffer[29]_i_4_n_0\,
      O => \raw_payload_buffer[29]_i_1_n_0\
    );
\raw_payload_buffer[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C800080"
    )
        port map (
      I0 => w5500state(3),
      I1 => w5500state(2),
      I2 => w5500state(1),
      I3 => w5500state(0),
      I4 => payload_data_has_been_set_reg_rep_n_0,
      O => \raw_payload_buffer[29]_i_2_n_0\
    );
\raw_payload_buffer[29]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0022AA80"
    )
        port map (
      I0 => w5500state(0),
      I1 => w5500state(3),
      I2 => payload_data_has_been_set_reg_rep_n_0,
      I3 => w5500state(2),
      I4 => w5500state(1),
      O => \raw_payload_buffer[29]_i_3_n_0\
    );
\raw_payload_buffer[29]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \raw_payload_buffer[29]_i_5_n_0\,
      I1 => w5500state(0),
      I2 => raw_payload_buffer0(13),
      I3 => w5500state(1),
      I4 => payload_data_has_been_set_reg_rep_n_0,
      O => \raw_payload_buffer[29]_i_4_n_0\
    );
\raw_payload_buffer[29]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F404"
    )
        port map (
      I0 => w5500state(3),
      I1 => plusOp(13),
      I2 => w5500state(1),
      I3 => payload_data_has_been_set_reg_rep_n_0,
      I4 => w5500state(2),
      O => \raw_payload_buffer[29]_i_5_n_0\
    );
\raw_payload_buffer[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBC80C2E00000022"
    )
        port map (
      I0 => w5500state(2),
      I1 => w5500state(4),
      I2 => w5500state(1),
      I3 => w5500state(3),
      I4 => w5500state(0),
      I5 => payload_data_has_been_set_reg_n_0,
      O => \raw_payload_buffer[2]_i_1_n_0\
    );
\raw_payload_buffer[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => \raw_payload_buffer[30]_i_2_n_0\,
      I1 => \raw_payload_buffer[30]_i_3_n_0\,
      I2 => w5500state(0),
      I3 => \raw_payload_buffer[30]_i_4_n_0\,
      O => \raw_payload_buffer[30]_i_1_n_0\
    );
\raw_payload_buffer[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0CC08000"
    )
        port map (
      I0 => w5500state(1),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => w5500state(2),
      I3 => w5500state(3),
      I4 => w5500state(4),
      I5 => \raw_payload_buffer[30]_i_5_n_0\,
      O => \raw_payload_buffer[30]_i_2_n_0\
    );
\raw_payload_buffer[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CFC0AAAA"
    )
        port map (
      I0 => w5500state(2),
      I1 => raw_payload_buffer0(14),
      I2 => w5500state(1),
      I3 => payload_data_has_been_set_reg_n_0,
      I4 => w5500state(4),
      I5 => w5500state(3),
      O => \raw_payload_buffer[30]_i_3_n_0\
    );
\raw_payload_buffer[30]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4554455445504050"
    )
        port map (
      I0 => w5500state(2),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => w5500state(1),
      I3 => w5500state(4),
      I4 => plusOp(14),
      I5 => w5500state(3),
      O => \raw_payload_buffer[30]_i_4_n_0\
    );
\raw_payload_buffer[30]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000F666"
    )
        port map (
      I0 => w5500state(1),
      I1 => w5500state(2),
      I2 => w5500state(5),
      I3 => data3(30),
      I4 => w5500state(4),
      I5 => w5500state(3),
      O => \raw_payload_buffer[30]_i_5_n_0\
    );
\raw_payload_buffer[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => \conf_header_reg[13]_i_3_n_0\,
      I1 => w5500state(0),
      I2 => \raw_payload_buffer_reg[31]_i_3_n_0\,
      I3 => w5500state(5),
      I4 => w5500state(1),
      I5 => \conf_header[13]_i_5_n_0\,
      O => raw_payload_buffer_2
    );
\raw_payload_buffer[31]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0504050445554500"
    )
        port map (
      I0 => w5500state(2),
      I1 => payload_data_has_been_set_reg_rep_n_0,
      I2 => w5500state(4),
      I3 => w5500state(1),
      I4 => plusOp(15),
      I5 => w5500state(3),
      O => \raw_payload_buffer[31]_i_10_n_0\
    );
\raw_payload_buffer[31]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFEFFFF"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[2]\,
      I1 => \w5500state_next_reg_n_0_[5]\,
      I2 => \raw_payload_buffer[31]_i_14_n_0\,
      I3 => \w5500state_next_reg_n_0_[4]\,
      I4 => \w5500state_next_reg_n_0_[3]\,
      I5 => payload_data_has_been_set_reg_n_0,
      O => \raw_payload_buffer[31]_i_11_n_0\
    );
\raw_payload_buffer[31]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFD"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[3]\,
      I1 => \w5500state_next_reg_n_0_[5]\,
      I2 => \w5500state_next_reg_n_0_[2]\,
      I3 => \w5500state_next_reg_n_0_[1]\,
      I4 => \raw_payload_buffer[31]_i_15_n_0\,
      I5 => payload_data_has_been_set_reg_n_0,
      O => \raw_payload_buffer[31]_i_12_n_0\
    );
\raw_payload_buffer[31]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEFFFFFF"
    )
        port map (
      I0 => payload_data_has_been_set_i_14_n_0,
      I1 => \w5500state_next_reg_n_0_[5]\,
      I2 => \w5500state_next_reg_n_0_[3]\,
      I3 => \w5500state_next_reg_n_0_[1]\,
      I4 => \w5500state_next_reg_n_0_[0]\,
      I5 => payload_data_has_been_set_reg_n_0,
      O => \raw_payload_buffer[31]_i_13_n_0\
    );
\raw_payload_buffer[31]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[1]\,
      I1 => \w5500state_next_reg_n_0_[0]\,
      O => \raw_payload_buffer[31]_i_14_n_0\
    );
\raw_payload_buffer[31]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \w5500state_next_reg_n_0_[4]\,
      I1 => \w5500state_next_reg_n_0_[0]\,
      O => \raw_payload_buffer[31]_i_15_n_0\
    );
\raw_payload_buffer[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0045"
    )
        port map (
      I0 => w5500state(3),
      I1 => data3(31),
      I2 => w5500state(5),
      I3 => \raw_payload_buffer[31]_i_4_n_0\,
      I4 => \raw_payload_buffer_reg[31]_i_5_n_0\,
      I5 => \raw_payload_buffer[31]_i_6_n_0\,
      O => \raw_payload_buffer[31]_i_2_n_0\
    );
\raw_payload_buffer[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => w5500state(4),
      I1 => w5500state(1),
      O => \raw_payload_buffer[31]_i_4_n_0\
    );
\raw_payload_buffer[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"48A40004"
    )
        port map (
      I0 => w5500state(2),
      I1 => w5500state(1),
      I2 => w5500state(4),
      I3 => w5500state(3),
      I4 => payload_data_has_been_set_reg_rep_n_0,
      O => \raw_payload_buffer[31]_i_6_n_0\
    );
\raw_payload_buffer[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \raw_payload_buffer[31]_i_11_n_0\,
      I1 => w5500state(3),
      I2 => \raw_payload_buffer[31]_i_12_n_0\,
      I3 => w5500state(4),
      I4 => \raw_payload_buffer[31]_i_13_n_0\,
      I5 => \conf_header[13]_i_28_n_0\,
      O => \raw_payload_buffer[31]_i_7_n_0\
    );
\raw_payload_buffer[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080800000300"
    )
        port map (
      I0 => \ptm_transmitted_byte_counter[11]_i_4_n_0\,
      I1 => w5500state(3),
      I2 => \conf_header[13]_i_28_n_0\,
      I3 => \conf_header[13]_i_20_n_0\,
      I4 => payload_data_has_been_set_reg_n_0,
      I5 => w5500state(4),
      O => \raw_payload_buffer[31]_i_8_n_0\
    );
\raw_payload_buffer[31]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B80000FFB800"
    )
        port map (
      I0 => raw_payload_buffer0(15),
      I1 => w5500state(1),
      I2 => payload_data_has_been_set_reg_rep_n_0,
      I3 => w5500state(4),
      I4 => w5500state(2),
      I5 => w5500state(3),
      O => \raw_payload_buffer[31]_i_9_n_0\
    );
\raw_payload_buffer[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0303204000002"
    )
        port map (
      I0 => w5500state(2),
      I1 => w5500state(1),
      I2 => w5500state(4),
      I3 => w5500state(3),
      I4 => w5500state(0),
      I5 => payload_data_has_been_set_reg_n_0,
      O => \raw_payload_buffer[3]_i_1_n_0\
    );
\raw_payload_buffer[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A88AA08000A000A0"
    )
        port map (
      I0 => payload_data_has_been_set_reg_n_0,
      I1 => w5500state(2),
      I2 => w5500state(4),
      I3 => w5500state(1),
      I4 => w5500state(3),
      I5 => w5500state(0),
      O => \raw_payload_buffer[4]_i_1_n_0\
    );
\raw_payload_buffer[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0303A0400000A"
    )
        port map (
      I0 => w5500state(2),
      I1 => w5500state(1),
      I2 => w5500state(4),
      I3 => w5500state(3),
      I4 => w5500state(0),
      I5 => payload_data_has_been_set_reg_n_0,
      O => \raw_payload_buffer[6]_i_1_n_0\
    );
\raw_payload_buffer[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F080AFC200000002"
    )
        port map (
      I0 => w5500state(2),
      I1 => w5500state(3),
      I2 => w5500state(0),
      I3 => w5500state(4),
      I4 => w5500state(1),
      I5 => payload_data_has_been_set_reg_n_0,
      O => \raw_payload_buffer[7]_i_1_n_0\
    );
\raw_payload_buffer[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA20A02F8E208C2C"
    )
        port map (
      I0 => payload_data_has_been_set_reg_n_0,
      I1 => w5500state(1),
      I2 => w5500state(4),
      I3 => w5500state(0),
      I4 => w5500state(3),
      I5 => w5500state(2),
      O => \raw_payload_buffer[9]_i_1_n_0\
    );
\raw_payload_buffer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => raw_payload_buffer_2,
      D => \raw_payload_buffer[0]_i_1_n_0\,
      Q => raw_payload_buffer(0),
      R => '0'
    );
\raw_payload_buffer_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => raw_payload_buffer_2,
      D => \raw_payload_buffer[14]_i_1_n_0\,
      Q => raw_payload_buffer(14),
      R => '0'
    );
\raw_payload_buffer_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => raw_payload_buffer_2,
      D => \raw_payload_buffer[15]_i_1_n_0\,
      Q => raw_payload_buffer(15),
      R => '0'
    );
\raw_payload_buffer_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => raw_payload_buffer_2,
      D => \raw_payload_buffer[16]_i_1_n_0\,
      Q => raw_payload_buffer(16),
      R => '0'
    );
\raw_payload_buffer_reg[16]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \raw_payload_buffer[16]_i_3_n_0\,
      I1 => \raw_payload_buffer[16]_i_4_n_0\,
      O => \raw_payload_buffer_reg[16]_i_2_n_0\,
      S => w5500state(0)
    );
\raw_payload_buffer_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => raw_payload_buffer_2,
      D => \raw_payload_buffer[17]_i_1_n_0\,
      Q => raw_payload_buffer(17),
      R => '0'
    );
\raw_payload_buffer_reg[17]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \raw_payload_buffer[17]_i_3_n_0\,
      I1 => \raw_payload_buffer[17]_i_4_n_0\,
      O => \raw_payload_buffer_reg[17]_i_2_n_0\,
      S => w5500state(0)
    );
\raw_payload_buffer_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => raw_payload_buffer_2,
      D => \raw_payload_buffer[18]_i_1_n_0\,
      Q => raw_payload_buffer(18),
      R => '0'
    );
\raw_payload_buffer_reg[18]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \raw_payload_buffer[18]_i_3_n_0\,
      I1 => \raw_payload_buffer[18]_i_4_n_0\,
      O => \raw_payload_buffer_reg[18]_i_2_n_0\,
      S => w5500state(0)
    );
\raw_payload_buffer_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => raw_payload_buffer_2,
      D => \raw_payload_buffer[19]_i_1_n_0\,
      Q => raw_payload_buffer(19),
      R => '0'
    );
\raw_payload_buffer_reg[19]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \raw_payload_buffer[19]_i_3_n_0\,
      I1 => \raw_payload_buffer[19]_i_4_n_0\,
      O => \raw_payload_buffer_reg[19]_i_2_n_0\,
      S => w5500state(0)
    );
\raw_payload_buffer_reg[19]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \raw_payload_buffer_reg[19]_i_5_n_0\,
      CO(2) => \raw_payload_buffer_reg[19]_i_5_n_1\,
      CO(1) => \raw_payload_buffer_reg[19]_i_5_n_2\,
      CO(0) => \raw_payload_buffer_reg[19]_i_5_n_3\,
      CYINIT => '0',
      DI(3) => \rx_shift_payload_buffer_reg_n_0_[3]\,
      DI(2) => \rx_shift_payload_buffer_reg_n_0_[2]\,
      DI(1) => \rx_shift_payload_buffer_reg_n_0_[1]\,
      DI(0) => \rx_shift_payload_buffer_reg_n_0_[0]\,
      O(3 downto 0) => raw_payload_buffer0(3 downto 0),
      S(3) => \raw_payload_buffer[19]_i_7_n_0\,
      S(2) => \raw_payload_buffer[19]_i_8_n_0\,
      S(1) => \raw_payload_buffer[19]_i_9_n_0\,
      S(0) => \raw_payload_buffer[19]_i_10_n_0\
    );
\raw_payload_buffer_reg[19]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \raw_payload_buffer_reg[19]_i_6_n_0\,
      CO(2) => \raw_payload_buffer_reg[19]_i_6_n_1\,
      CO(1) => \raw_payload_buffer_reg[19]_i_6_n_2\,
      CO(0) => \raw_payload_buffer_reg[19]_i_6_n_3\,
      CYINIT => '0',
      DI(3) => \rx_shift_payload_buffer_reg_n_0_[3]\,
      DI(2) => \rx_shift_payload_buffer_reg_n_0_[2]\,
      DI(1) => \rx_shift_payload_buffer_reg_n_0_[1]\,
      DI(0) => \rx_shift_payload_buffer_reg_n_0_[0]\,
      O(3 downto 0) => plusOp(3 downto 0),
      S(3) => \raw_payload_buffer[19]_i_11_n_0\,
      S(2) => \raw_payload_buffer[19]_i_12_n_0\,
      S(1) => \raw_payload_buffer[19]_i_13_n_0\,
      S(0) => \raw_payload_buffer[19]_i_14_n_0\
    );
\raw_payload_buffer_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => raw_payload_buffer_2,
      D => \raw_payload_buffer[20]_i_1_n_0\,
      Q => raw_payload_buffer(20),
      R => '0'
    );
\raw_payload_buffer_reg[20]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \raw_payload_buffer[20]_i_3_n_0\,
      I1 => \raw_payload_buffer[20]_i_4_n_0\,
      O => \raw_payload_buffer_reg[20]_i_2_n_0\,
      S => w5500state(0)
    );
\raw_payload_buffer_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => raw_payload_buffer_2,
      D => \raw_payload_buffer[21]_i_1_n_0\,
      Q => raw_payload_buffer(21),
      R => '0'
    );
\raw_payload_buffer_reg[21]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \raw_payload_buffer[21]_i_3_n_0\,
      I1 => \raw_payload_buffer[21]_i_4_n_0\,
      O => \raw_payload_buffer_reg[21]_i_2_n_0\,
      S => w5500state(0)
    );
\raw_payload_buffer_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => raw_payload_buffer_2,
      D => \raw_payload_buffer[22]_i_1_n_0\,
      Q => raw_payload_buffer(22),
      R => '0'
    );
\raw_payload_buffer_reg[22]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \raw_payload_buffer[22]_i_3_n_0\,
      I1 => \raw_payload_buffer[22]_i_4_n_0\,
      O => \raw_payload_buffer_reg[22]_i_2_n_0\,
      S => w5500state(0)
    );
\raw_payload_buffer_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => raw_payload_buffer_2,
      D => \raw_payload_buffer[23]_i_1_n_0\,
      Q => raw_payload_buffer(23),
      R => '0'
    );
\raw_payload_buffer_reg[23]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \raw_payload_buffer[23]_i_3_n_0\,
      I1 => \raw_payload_buffer[23]_i_4_n_0\,
      O => \raw_payload_buffer_reg[23]_i_2_n_0\,
      S => w5500state(0)
    );
\raw_payload_buffer_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => raw_payload_buffer_2,
      D => \raw_payload_buffer[24]_i_1_n_0\,
      Q => raw_payload_buffer(24),
      R => '0'
    );
\raw_payload_buffer_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => raw_payload_buffer_2,
      D => \raw_payload_buffer[25]_i_1_n_0\,
      Q => raw_payload_buffer(25),
      R => '0'
    );
\raw_payload_buffer_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => raw_payload_buffer_2,
      D => \raw_payload_buffer[26]_i_1_n_0\,
      Q => raw_payload_buffer(26),
      R => '0'
    );
\raw_payload_buffer_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => raw_payload_buffer_2,
      D => \raw_payload_buffer[27]_i_1_n_0\,
      Q => raw_payload_buffer(27),
      R => '0'
    );
\raw_payload_buffer_reg[27]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \raw_payload_buffer_reg[19]_i_5_n_0\,
      CO(3) => \raw_payload_buffer_reg[27]_i_11_n_0\,
      CO(2) => \raw_payload_buffer_reg[27]_i_11_n_1\,
      CO(1) => \raw_payload_buffer_reg[27]_i_11_n_2\,
      CO(0) => \raw_payload_buffer_reg[27]_i_11_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => data3(31 downto 29),
      DI(0) => \rx_shift_payload_buffer_reg_n_0_[4]\,
      O(3 downto 0) => raw_payload_buffer0(7 downto 4),
      S(3) => \raw_payload_buffer[27]_i_16_n_0\,
      S(2) => \raw_payload_buffer[27]_i_17_n_0\,
      S(1) => \raw_payload_buffer[27]_i_18_n_0\,
      S(0) => \raw_payload_buffer[27]_i_19_n_0\
    );
\raw_payload_buffer_reg[27]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \raw_payload_buffer_reg[27]_i_6_n_0\,
      CO(3) => \raw_payload_buffer_reg[27]_i_4_n_0\,
      CO(2) => \raw_payload_buffer_reg[27]_i_4_n_1\,
      CO(1) => \raw_payload_buffer_reg[27]_i_4_n_2\,
      CO(0) => \raw_payload_buffer_reg[27]_i_4_n_3\,
      CYINIT => '0',
      DI(3) => \rx_shift_payload_buffer_reg_n_0_[11]\,
      DI(2) => \rx_shift_payload_buffer_reg_n_0_[10]\,
      DI(1) => \rx_shift_payload_buffer_reg_n_0_[9]\,
      DI(0) => \rx_shift_payload_buffer_reg_n_0_[8]\,
      O(3 downto 0) => plusOp(11 downto 8),
      S(3) => \raw_payload_buffer[27]_i_7_n_0\,
      S(2) => \raw_payload_buffer[27]_i_8_n_0\,
      S(1) => \raw_payload_buffer[27]_i_9_n_0\,
      S(0) => \raw_payload_buffer[27]_i_10_n_0\
    );
\raw_payload_buffer_reg[27]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \raw_payload_buffer_reg[27]_i_11_n_0\,
      CO(3) => \raw_payload_buffer_reg[27]_i_5_n_0\,
      CO(2) => \raw_payload_buffer_reg[27]_i_5_n_1\,
      CO(1) => \raw_payload_buffer_reg[27]_i_5_n_2\,
      CO(0) => \raw_payload_buffer_reg[27]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => raw_payload_buffer0(11 downto 8),
      S(3) => \rx_shift_payload_buffer_reg_n_0_[11]\,
      S(2) => \rx_shift_payload_buffer_reg_n_0_[10]\,
      S(1) => \rx_shift_payload_buffer_reg_n_0_[9]\,
      S(0) => \rx_shift_payload_buffer_reg_n_0_[8]\
    );
\raw_payload_buffer_reg[27]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \raw_payload_buffer_reg[19]_i_6_n_0\,
      CO(3) => \raw_payload_buffer_reg[27]_i_6_n_0\,
      CO(2) => \raw_payload_buffer_reg[27]_i_6_n_1\,
      CO(1) => \raw_payload_buffer_reg[27]_i_6_n_2\,
      CO(0) => \raw_payload_buffer_reg[27]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => data3(31 downto 29),
      DI(0) => \rx_shift_payload_buffer_reg_n_0_[4]\,
      O(3 downto 0) => plusOp(7 downto 4),
      S(3) => \raw_payload_buffer[27]_i_12_n_0\,
      S(2) => \raw_payload_buffer[27]_i_13_n_0\,
      S(1) => \raw_payload_buffer[27]_i_14_n_0\,
      S(0) => \raw_payload_buffer[27]_i_15_n_0\
    );
\raw_payload_buffer_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => raw_payload_buffer_2,
      D => \raw_payload_buffer[28]_i_1_n_0\,
      Q => raw_payload_buffer(28),
      R => '0'
    );
\raw_payload_buffer_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => raw_payload_buffer_2,
      D => \raw_payload_buffer[29]_i_1_n_0\,
      Q => raw_payload_buffer(29),
      R => '0'
    );
\raw_payload_buffer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => raw_payload_buffer_2,
      D => \raw_payload_buffer[2]_i_1_n_0\,
      Q => raw_payload_buffer(2),
      R => '0'
    );
\raw_payload_buffer_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => raw_payload_buffer_2,
      D => \raw_payload_buffer[30]_i_1_n_0\,
      Q => raw_payload_buffer(30),
      R => '0'
    );
\raw_payload_buffer_reg[30]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \raw_payload_buffer_reg[27]_i_5_n_0\,
      CO(3) => \NLW_raw_payload_buffer_reg[30]_i_6_CO_UNCONNECTED\(3),
      CO(2) => \raw_payload_buffer_reg[30]_i_6_n_1\,
      CO(1) => \raw_payload_buffer_reg[30]_i_6_n_2\,
      CO(0) => \raw_payload_buffer_reg[30]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => raw_payload_buffer0(15 downto 12),
      S(3) => \rx_shift_payload_buffer_reg_n_0_[15]\,
      S(2) => \rx_shift_payload_buffer_reg_n_0_[14]\,
      S(1) => \rx_shift_payload_buffer_reg_n_0_[13]\,
      S(0) => \rx_shift_payload_buffer_reg_n_0_[12]\
    );
\raw_payload_buffer_reg[30]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \raw_payload_buffer_reg[27]_i_4_n_0\,
      CO(3) => \NLW_raw_payload_buffer_reg[30]_i_7_CO_UNCONNECTED\(3),
      CO(2) => \raw_payload_buffer_reg[30]_i_7_n_1\,
      CO(1) => \raw_payload_buffer_reg[30]_i_7_n_2\,
      CO(0) => \raw_payload_buffer_reg[30]_i_7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(15 downto 12),
      S(3) => \rx_shift_payload_buffer_reg_n_0_[15]\,
      S(2) => \rx_shift_payload_buffer_reg_n_0_[14]\,
      S(1) => \rx_shift_payload_buffer_reg_n_0_[13]\,
      S(0) => \rx_shift_payload_buffer_reg_n_0_[12]\
    );
\raw_payload_buffer_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => raw_payload_buffer_2,
      D => \raw_payload_buffer[31]_i_2_n_0\,
      Q => raw_payload_buffer(31),
      R => '0'
    );
\raw_payload_buffer_reg[31]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \raw_payload_buffer[31]_i_7_n_0\,
      I1 => \raw_payload_buffer[31]_i_8_n_0\,
      O => \raw_payload_buffer_reg[31]_i_3_n_0\,
      S => w5500state(2)
    );
\raw_payload_buffer_reg[31]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \raw_payload_buffer[31]_i_9_n_0\,
      I1 => \raw_payload_buffer[31]_i_10_n_0\,
      O => \raw_payload_buffer_reg[31]_i_5_n_0\,
      S => w5500state(0)
    );
\raw_payload_buffer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => raw_payload_buffer_2,
      D => \raw_payload_buffer[3]_i_1_n_0\,
      Q => raw_payload_buffer(3),
      R => '0'
    );
\raw_payload_buffer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => raw_payload_buffer_2,
      D => \raw_payload_buffer[4]_i_1_n_0\,
      Q => raw_payload_buffer(4),
      R => '0'
    );
\raw_payload_buffer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => raw_payload_buffer_2,
      D => \raw_payload_buffer[6]_i_1_n_0\,
      Q => raw_payload_buffer(6),
      R => '0'
    );
\raw_payload_buffer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => raw_payload_buffer_2,
      D => \raw_payload_buffer[7]_i_1_n_0\,
      Q => raw_payload_buffer(7),
      R => '0'
    );
\raw_payload_buffer_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => raw_payload_buffer_2,
      D => \raw_payload_buffer[9]_i_1_n_0\,
      Q => raw_payload_buffer(9),
      R => '0'
    );
\rx_shift_payload_buffer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_w5500_axi_data_streamer_n_15,
      D => rx_payload_data(0),
      Q => \rx_shift_payload_buffer_reg_n_0_[0]\,
      R => '0'
    );
\rx_shift_payload_buffer_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_w5500_axi_data_streamer_n_15,
      D => \rx_shift_payload_buffer_reg_n_0_[2]\,
      Q => \rx_shift_payload_buffer_reg_n_0_[10]\,
      R => '0'
    );
\rx_shift_payload_buffer_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_w5500_axi_data_streamer_n_15,
      D => \rx_shift_payload_buffer_reg_n_0_[3]\,
      Q => \rx_shift_payload_buffer_reg_n_0_[11]\,
      R => '0'
    );
\rx_shift_payload_buffer_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_w5500_axi_data_streamer_n_15,
      D => \rx_shift_payload_buffer_reg_n_0_[4]\,
      Q => \rx_shift_payload_buffer_reg_n_0_[12]\,
      R => '0'
    );
\rx_shift_payload_buffer_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_w5500_axi_data_streamer_n_15,
      D => data3(29),
      Q => \rx_shift_payload_buffer_reg_n_0_[13]\,
      R => '0'
    );
\rx_shift_payload_buffer_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_w5500_axi_data_streamer_n_15,
      D => data3(30),
      Q => \rx_shift_payload_buffer_reg_n_0_[14]\,
      R => '0'
    );
\rx_shift_payload_buffer_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_w5500_axi_data_streamer_n_15,
      D => data3(31),
      Q => \rx_shift_payload_buffer_reg_n_0_[15]\,
      R => '0'
    );
\rx_shift_payload_buffer_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_w5500_axi_data_streamer_n_15,
      D => \rx_shift_payload_buffer_reg_n_0_[8]\,
      Q => \rx_shift_payload_buffer_reg_n_0_[16]\,
      R => '0'
    );
\rx_shift_payload_buffer_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_w5500_axi_data_streamer_n_15,
      D => \rx_shift_payload_buffer_reg_n_0_[9]\,
      Q => \rx_shift_payload_buffer_reg_n_0_[17]\,
      R => '0'
    );
\rx_shift_payload_buffer_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_w5500_axi_data_streamer_n_15,
      D => \rx_shift_payload_buffer_reg_n_0_[10]\,
      Q => \rx_shift_payload_buffer_reg_n_0_[18]\,
      R => '0'
    );
\rx_shift_payload_buffer_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_w5500_axi_data_streamer_n_15,
      D => \rx_shift_payload_buffer_reg_n_0_[11]\,
      Q => \rx_shift_payload_buffer_reg_n_0_[19]\,
      R => '0'
    );
\rx_shift_payload_buffer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_w5500_axi_data_streamer_n_15,
      D => rx_payload_data(1),
      Q => \rx_shift_payload_buffer_reg_n_0_[1]\,
      R => '0'
    );
\rx_shift_payload_buffer_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_w5500_axi_data_streamer_n_15,
      D => \rx_shift_payload_buffer_reg_n_0_[12]\,
      Q => \rx_shift_payload_buffer_reg_n_0_[20]\,
      R => '0'
    );
\rx_shift_payload_buffer_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_w5500_axi_data_streamer_n_15,
      D => \rx_shift_payload_buffer_reg_n_0_[13]\,
      Q => \rx_shift_payload_buffer_reg_n_0_[21]\,
      R => '0'
    );
\rx_shift_payload_buffer_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_w5500_axi_data_streamer_n_15,
      D => \rx_shift_payload_buffer_reg_n_0_[14]\,
      Q => \rx_shift_payload_buffer_reg_n_0_[22]\,
      R => '0'
    );
\rx_shift_payload_buffer_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_w5500_axi_data_streamer_n_15,
      D => \rx_shift_payload_buffer_reg_n_0_[15]\,
      Q => \rx_shift_payload_buffer_reg_n_0_[23]\,
      R => '0'
    );
\rx_shift_payload_buffer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_w5500_axi_data_streamer_n_15,
      D => rx_payload_data(2),
      Q => \rx_shift_payload_buffer_reg_n_0_[2]\,
      R => '0'
    );
\rx_shift_payload_buffer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_w5500_axi_data_streamer_n_15,
      D => rx_payload_data(3),
      Q => \rx_shift_payload_buffer_reg_n_0_[3]\,
      R => '0'
    );
\rx_shift_payload_buffer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_w5500_axi_data_streamer_n_15,
      D => rx_payload_data(4),
      Q => \rx_shift_payload_buffer_reg_n_0_[4]\,
      R => '0'
    );
\rx_shift_payload_buffer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_w5500_axi_data_streamer_n_15,
      D => rx_payload_data(5),
      Q => data3(29),
      R => '0'
    );
\rx_shift_payload_buffer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_w5500_axi_data_streamer_n_15,
      D => rx_payload_data(6),
      Q => data3(30),
      R => '0'
    );
\rx_shift_payload_buffer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_w5500_axi_data_streamer_n_15,
      D => rx_payload_data(7),
      Q => data3(31),
      R => '0'
    );
\rx_shift_payload_buffer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_w5500_axi_data_streamer_n_15,
      D => \rx_shift_payload_buffer_reg_n_0_[0]\,
      Q => \rx_shift_payload_buffer_reg_n_0_[8]\,
      R => '0'
    );
\rx_shift_payload_buffer_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_w5500_axi_data_streamer_n_15,
      D => \rx_shift_payload_buffer_reg_n_0_[1]\,
      Q => \rx_shift_payload_buffer_reg_n_0_[9]\,
      R => '0'
    );
\shift_payload_buffer[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => raw_payload_buffer(15),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => shift_payload_buffer(2),
      O => p_1_in(10)
    );
\shift_payload_buffer[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => raw_payload_buffer(15),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => shift_payload_buffer(3),
      O => p_1_in(11)
    );
\shift_payload_buffer[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => raw_payload_buffer(15),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => shift_payload_buffer(4),
      O => p_1_in(12)
    );
\shift_payload_buffer[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => raw_payload_buffer(15),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => shift_payload_buffer(6),
      O => p_1_in(13)
    );
\shift_payload_buffer[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => raw_payload_buffer(14),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => shift_payload_buffer(6),
      O => p_1_in(14)
    );
\shift_payload_buffer[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => raw_payload_buffer(15),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => shift_payload_buffer(7),
      O => p_1_in(15)
    );
\shift_payload_buffer[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => raw_payload_buffer(16),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => shift_payload_buffer(8),
      O => p_1_in(16)
    );
\shift_payload_buffer[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => raw_payload_buffer(17),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => shift_payload_buffer(9),
      O => p_1_in(17)
    );
\shift_payload_buffer[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => raw_payload_buffer(18),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => shift_payload_buffer(10),
      O => p_1_in(18)
    );
\shift_payload_buffer[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => raw_payload_buffer(19),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => shift_payload_buffer(11),
      O => p_1_in(19)
    );
\shift_payload_buffer[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => raw_payload_buffer(20),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => shift_payload_buffer(12),
      O => p_1_in(20)
    );
\shift_payload_buffer[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => raw_payload_buffer(21),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => shift_payload_buffer(13),
      O => p_1_in(21)
    );
\shift_payload_buffer[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => raw_payload_buffer(22),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => shift_payload_buffer(14),
      O => p_1_in(22)
    );
\shift_payload_buffer[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => raw_payload_buffer(23),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => shift_payload_buffer(15),
      O => p_1_in(23)
    );
\shift_payload_buffer[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => raw_payload_buffer(24),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => shift_payload_buffer(16),
      O => p_1_in(24)
    );
\shift_payload_buffer[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => raw_payload_buffer(25),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => shift_payload_buffer(17),
      O => p_1_in(25)
    );
\shift_payload_buffer[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => raw_payload_buffer(26),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => shift_payload_buffer(18),
      O => p_1_in(26)
    );
\shift_payload_buffer[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => raw_payload_buffer(27),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => shift_payload_buffer(19),
      O => p_1_in(27)
    );
\shift_payload_buffer[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => raw_payload_buffer(28),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => shift_payload_buffer(20),
      O => p_1_in(28)
    );
\shift_payload_buffer[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => raw_payload_buffer(29),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => shift_payload_buffer(21),
      O => p_1_in(29)
    );
\shift_payload_buffer[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => raw_payload_buffer(30),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => shift_payload_buffer(22),
      O => p_1_in(30)
    );
\shift_payload_buffer[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000AE"
    )
        port map (
      I0 => payload_data0,
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => streamhandler_state(0),
      I4 => streamhandler_state(1),
      O => \shift_payload_buffer[31]_i_1_n_0\
    );
\shift_payload_buffer[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => raw_payload_buffer(31),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => shift_payload_buffer(23),
      O => p_1_in(31)
    );
\shift_payload_buffer[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10001010"
    )
        port map (
      I0 => streamhandler_state(1),
      I1 => streamhandler_state(0),
      I2 => payload_data0,
      I3 => prev_payload_data_has_been_set,
      I4 => payload_data_has_been_set_reg_n_0,
      O => \shift_payload_buffer[7]_i_1_n_0\
    );
\shift_payload_buffer[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => raw_payload_buffer(14),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => shift_payload_buffer(0),
      O => p_1_in(8)
    );
\shift_payload_buffer[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => raw_payload_buffer(9),
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => prev_payload_data_has_been_set,
      I3 => shift_payload_buffer(3),
      O => p_1_in(9)
    );
\shift_payload_buffer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \shift_payload_buffer[31]_i_1_n_0\,
      D => raw_payload_buffer(0),
      Q => shift_payload_buffer(0),
      R => \shift_payload_buffer[7]_i_1_n_0\
    );
\shift_payload_buffer_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \shift_payload_buffer[31]_i_1_n_0\,
      D => p_1_in(10),
      Q => shift_payload_buffer(10),
      R => '0'
    );
\shift_payload_buffer_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \shift_payload_buffer[31]_i_1_n_0\,
      D => p_1_in(11),
      Q => shift_payload_buffer(11),
      R => '0'
    );
\shift_payload_buffer_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \shift_payload_buffer[31]_i_1_n_0\,
      D => p_1_in(12),
      Q => shift_payload_buffer(12),
      R => '0'
    );
\shift_payload_buffer_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \shift_payload_buffer[31]_i_1_n_0\,
      D => p_1_in(13),
      Q => shift_payload_buffer(13),
      R => '0'
    );
\shift_payload_buffer_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \shift_payload_buffer[31]_i_1_n_0\,
      D => p_1_in(14),
      Q => shift_payload_buffer(14),
      R => '0'
    );
\shift_payload_buffer_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \shift_payload_buffer[31]_i_1_n_0\,
      D => p_1_in(15),
      Q => shift_payload_buffer(15),
      R => '0'
    );
\shift_payload_buffer_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \shift_payload_buffer[31]_i_1_n_0\,
      D => p_1_in(16),
      Q => shift_payload_buffer(16),
      R => '0'
    );
\shift_payload_buffer_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \shift_payload_buffer[31]_i_1_n_0\,
      D => p_1_in(17),
      Q => shift_payload_buffer(17),
      R => '0'
    );
\shift_payload_buffer_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \shift_payload_buffer[31]_i_1_n_0\,
      D => p_1_in(18),
      Q => shift_payload_buffer(18),
      R => '0'
    );
\shift_payload_buffer_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \shift_payload_buffer[31]_i_1_n_0\,
      D => p_1_in(19),
      Q => shift_payload_buffer(19),
      R => '0'
    );
\shift_payload_buffer_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \shift_payload_buffer[31]_i_1_n_0\,
      D => p_1_in(20),
      Q => shift_payload_buffer(20),
      R => '0'
    );
\shift_payload_buffer_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \shift_payload_buffer[31]_i_1_n_0\,
      D => p_1_in(21),
      Q => shift_payload_buffer(21),
      R => '0'
    );
\shift_payload_buffer_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \shift_payload_buffer[31]_i_1_n_0\,
      D => p_1_in(22),
      Q => shift_payload_buffer(22),
      R => '0'
    );
\shift_payload_buffer_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \shift_payload_buffer[31]_i_1_n_0\,
      D => p_1_in(23),
      Q => shift_payload_buffer(23),
      R => '0'
    );
\shift_payload_buffer_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \shift_payload_buffer[31]_i_1_n_0\,
      D => p_1_in(24),
      Q => shift_payload_buffer(24),
      R => '0'
    );
\shift_payload_buffer_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \shift_payload_buffer[31]_i_1_n_0\,
      D => p_1_in(25),
      Q => shift_payload_buffer(25),
      R => '0'
    );
\shift_payload_buffer_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \shift_payload_buffer[31]_i_1_n_0\,
      D => p_1_in(26),
      Q => shift_payload_buffer(26),
      R => '0'
    );
\shift_payload_buffer_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \shift_payload_buffer[31]_i_1_n_0\,
      D => p_1_in(27),
      Q => shift_payload_buffer(27),
      R => '0'
    );
\shift_payload_buffer_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \shift_payload_buffer[31]_i_1_n_0\,
      D => p_1_in(28),
      Q => shift_payload_buffer(28),
      R => '0'
    );
\shift_payload_buffer_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \shift_payload_buffer[31]_i_1_n_0\,
      D => p_1_in(29),
      Q => shift_payload_buffer(29),
      R => '0'
    );
\shift_payload_buffer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \shift_payload_buffer[31]_i_1_n_0\,
      D => raw_payload_buffer(2),
      Q => shift_payload_buffer(2),
      R => \shift_payload_buffer[7]_i_1_n_0\
    );
\shift_payload_buffer_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \shift_payload_buffer[31]_i_1_n_0\,
      D => p_1_in(30),
      Q => shift_payload_buffer(30),
      R => '0'
    );
\shift_payload_buffer_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \shift_payload_buffer[31]_i_1_n_0\,
      D => p_1_in(31),
      Q => shift_payload_buffer(31),
      R => '0'
    );
\shift_payload_buffer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \shift_payload_buffer[31]_i_1_n_0\,
      D => raw_payload_buffer(3),
      Q => shift_payload_buffer(3),
      R => \shift_payload_buffer[7]_i_1_n_0\
    );
\shift_payload_buffer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \shift_payload_buffer[31]_i_1_n_0\,
      D => raw_payload_buffer(4),
      Q => shift_payload_buffer(4),
      R => \shift_payload_buffer[7]_i_1_n_0\
    );
\shift_payload_buffer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \shift_payload_buffer[31]_i_1_n_0\,
      D => raw_payload_buffer(6),
      Q => shift_payload_buffer(6),
      R => \shift_payload_buffer[7]_i_1_n_0\
    );
\shift_payload_buffer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \shift_payload_buffer[31]_i_1_n_0\,
      D => raw_payload_buffer(7),
      Q => shift_payload_buffer(7),
      R => \shift_payload_buffer[7]_i_1_n_0\
    );
\shift_payload_buffer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \shift_payload_buffer[31]_i_1_n_0\,
      D => p_1_in(8),
      Q => shift_payload_buffer(8),
      R => '0'
    );
\shift_payload_buffer_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \shift_payload_buffer[31]_i_1_n_0\,
      D => p_1_in(9),
      Q => shift_payload_buffer(9),
      R => '0'
    );
\streamhandler_state_next[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA2FFFFAAA20000"
    )
        port map (
      I0 => w5500state(2),
      I1 => prev_spi_busy,
      I2 => spi_busy,
      I3 => w5500state(4),
      I4 => streamhandler_state_next_0,
      I5 => streamhandler_state_next(0),
      O => \streamhandler_state_next[0]_i_1_n_0\
    );
\streamhandler_state_next[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F10"
    )
        port map (
      I0 => w5500state(2),
      I1 => w5500state(5),
      I2 => streamhandler_state_next_0,
      I3 => streamhandler_state_next(1),
      O => \streamhandler_state_next[1]_i_1_n_0\
    );
\streamhandler_state_next[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0DFFFF0FFFFF"
    )
        port map (
      I0 => \conf_header[13]_i_21_n_0\,
      I1 => payload_data_has_been_set_reg_n_0,
      I2 => \conf_header[13]_i_28_n_0\,
      I3 => w5500state(3),
      I4 => w5500state(5),
      I5 => w5500state(2),
      O => \streamhandler_state_next[1]_i_4_n_0\
    );
\streamhandler_state_next_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \streamhandler_state_next[0]_i_1_n_0\,
      Q => streamhandler_state_next(0),
      R => '0'
    );
\streamhandler_state_next_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \streamhandler_state_next[1]_i_1_n_0\,
      Q => streamhandler_state_next(1),
      R => '0'
    );
\streamhandler_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => streamhandler_state_next(0),
      Q => streamhandler_state(0),
      R => '0'
    );
\streamhandler_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => streamhandler_state_next(1),
      Q => streamhandler_state(1),
      R => '0'
    );
u_w5500_axi_data_streamer: entity work.w5500_axi_data_streamer
     port map (
      D(7 downto 0) => rx_payload_data(7 downto 0),
      E(0) => E(0),
      Q(8 downto 3) => in4(5 downto 0),
      Q(2) => \conf_header_reg_n_0_[4]\,
      Q(1) => \conf_header_reg_n_0_[3]\,
      Q(0) => \^q\(0),
      \bytes_received_reg[0]_0\ => \bytes_received_reg[0]\,
      \bytes_received_reg[0]_1\ => \bytes_received_reg[0]_0\,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      conf_header_valid => conf_header_valid,
      idle_mode(0) => u_w5500_axi_data_streamer_n_14,
      in3(7 downto 0) => in3(7 downto 0),
      in4(1 downto 0) => in4(7 downto 6),
      led_OBUF => led_OBUF,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      \rdata_buffer_reg[7]_0\(7 downto 0) => D(7 downto 0),
      reset_IBUF => reset_IBUF,
      rlast_buffer_reg_0 => s_axis_tlast,
      rlast_buffer_reg_1 => rlast_buffer_reg,
      \rx_shift_payload_buffer_reg[0]\(1 downto 0) => streamhandler_state(1 downto 0),
      s_axis_tdata(7 downto 0) => payload_data(7 downto 0),
      s_axis_tlast => payload_last_reg_n_0,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => payload_valid,
      \streamhandler_state_next[1]_i_2_0\(5 downto 0) => w5500state(5 downto 0),
      \streamhandler_state_next[1]_i_2_1\ => \conf_header[13]_i_28_n_0\,
      streamhandler_state_next_0 => streamhandler_state_next_0,
      \streamhandler_state_next_reg[0]\ => \streamhandler_state_next[1]_i_4_n_0\,
      \streamhandler_state_reg[0]\(0) => u_w5500_axi_data_streamer_n_15,
      \tdata_reg[7]_0\(7 downto 0) => \tdata_reg[7]\(7 downto 0),
      tlast_reg_0 => tlast_reg,
      tvalid_reg_0 => s_axis_tvalid,
      \w5500state_next_reg[0]\ => \w5500state_next[5]_i_3_n_0\,
      \w5500state_next_reg[0]_0\ => \w5500state_next[5]_i_4_n_0\,
      \w5500state_next_reg[0]_1\ => \w5500state_next[5]_i_5_n_0\
    );
\w5500state_next[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFE0000"
    )
        port map (
      I0 => w5500state(3),
      I1 => \w5500state_next[1]_i_2_n_0\,
      I2 => w5500state(4),
      I3 => w5500state(2),
      I4 => w5500state(5),
      I5 => \w5500state_next[0]_i_2_n_0\,
      O => \w5500state_next[0]_i_1_n_0\
    );
\w5500state_next[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB88888B8BBBBBB"
    )
        port map (
      I0 => \w5500state_next[0]_i_3_n_0\,
      I1 => w5500state(4),
      I2 => w5500state(2),
      I3 => w5500state(1),
      I4 => w5500state(3),
      I5 => w5500state(0),
      O => \w5500state_next[0]_i_2_n_0\
    );
\w5500state_next[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3044FF00FC7700CC"
    )
        port map (
      I0 => \w5500state_next[4]_i_5_n_0\,
      I1 => w5500state(2),
      I2 => \w5500state_next[3]_i_6_n_0\,
      I3 => w5500state(3),
      I4 => w5500state(1),
      I5 => w5500state(0),
      O => \w5500state_next[0]_i_3_n_0\
    );
\w5500state_next[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFF00010000"
    )
        port map (
      I0 => \w5500state_next[1]_i_2_n_0\,
      I1 => w5500state(4),
      I2 => w5500state(2),
      I3 => w5500state(3),
      I4 => w5500state(5),
      I5 => \w5500state_next[1]_i_3_n_0\,
      O => \w5500state_next[1]_i_1_n_0\
    );
\w5500state_next[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => w5500state(0),
      I1 => w5500state(1),
      O => \w5500state_next[1]_i_2_n_0\
    );
\w5500state_next[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8C8C0FC3033FF00"
    )
        port map (
      I0 => \w5500state_next[3]_i_6_n_0\,
      I1 => w5500state(4),
      I2 => w5500state(2),
      I3 => w5500state(0),
      I4 => w5500state(1),
      I5 => w5500state(3),
      O => \w5500state_next[1]_i_3_n_0\
    );
\w5500state_next[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFE0000"
    )
        port map (
      I0 => w5500state(0),
      I1 => w5500state(3),
      I2 => w5500state(4),
      I3 => w5500state(2),
      I4 => w5500state(5),
      I5 => \w5500state_next[2]_i_2_n_0\,
      O => \w5500state_next[2]_i_1_n_0\
    );
\w5500state_next[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0AAF005045FAA0FA"
    )
        port map (
      I0 => w5500state(4),
      I1 => led_OBUF,
      I2 => w5500state(2),
      I3 => w5500state(3),
      I4 => w5500state(0),
      I5 => w5500state(1),
      O => \w5500state_next[2]_i_2_n_0\
    );
\w5500state_next[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \w5500state_next[3]_i_2_n_0\,
      I1 => w5500state(5),
      I2 => \w5500state_next[3]_i_3_n_0\,
      I3 => w5500state(4),
      I4 => \w5500state_next[3]_i_4_n_0\,
      O => \w5500state_next[3]_i_1_n_0\
    );
\w5500state_next[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF8"
    )
        port map (
      I0 => w5500state(1),
      I1 => w5500state(0),
      I2 => w5500state(3),
      I3 => w5500state(4),
      I4 => w5500state(2),
      O => \w5500state_next[3]_i_2_n_0\
    );
\w5500state_next[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC88CC3330BBCCFF"
    )
        port map (
      I0 => \w5500state_next[3]_i_5_n_0\,
      I1 => w5500state(2),
      I2 => \w5500state_next[3]_i_6_n_0\,
      I3 => w5500state(3),
      I4 => w5500state(1),
      I5 => w5500state(0),
      O => \w5500state_next[3]_i_3_n_0\
    );
\w5500state_next[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C30B0F0"
    )
        port map (
      I0 => led_OBUF,
      I1 => w5500state(2),
      I2 => w5500state(3),
      I3 => w5500state(0),
      I4 => w5500state(1),
      O => \w5500state_next[3]_i_4_n_0\
    );
\w5500state_next[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => w5500state(0),
      I1 => \w5500state_next[3]_i_7_n_0\,
      I2 => data3(31),
      I3 => data3(30),
      I4 => \rx_shift_payload_buffer_reg_n_0_[4]\,
      I5 => data3(29),
      O => \w5500state_next[3]_i_5_n_0\
    );
\w5500state_next[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => w5500state(0),
      I1 => \rx_shift_payload_buffer_reg_n_0_[4]\,
      I2 => \rx_shift_payload_buffer_reg_n_0_[3]\,
      O => \w5500state_next[3]_i_6_n_0\
    );
\w5500state_next[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rx_shift_payload_buffer_reg_n_0_[2]\,
      I1 => \rx_shift_payload_buffer_reg_n_0_[3]\,
      I2 => \rx_shift_payload_buffer_reg_n_0_[0]\,
      I3 => \rx_shift_payload_buffer_reg_n_0_[1]\,
      O => \w5500state_next[3]_i_7_n_0\
    );
\w5500state_next[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => \w5500state_next[4]_i_4_n_0\,
      I1 => w5500state(4),
      I2 => w5500state(2),
      I3 => w5500state(3),
      I4 => w5500state(1),
      O => \w5500state_next[4]_i_2_n_0\
    );
\w5500state_next[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010100"
    )
        port map (
      I0 => w5500state(4),
      I1 => w5500state(2),
      I2 => w5500state(3),
      I3 => w5500state(1),
      I4 => w5500state(0),
      O => \w5500state_next[4]_i_3_n_0\
    );
\w5500state_next[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0A0A0CFCFFFFF"
    )
        port map (
      I0 => w5500state(0),
      I1 => \w5500state_next[4]_i_5_n_0\,
      I2 => w5500state(2),
      I3 => \w5500state_next[3]_i_6_n_0\,
      I4 => w5500state(1),
      I5 => w5500state(3),
      O => \w5500state_next[4]_i_4_n_0\
    );
\w5500state_next[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => \w5500state_next[3]_i_7_n_0\,
      I1 => data3(31),
      I2 => data3(30),
      I3 => \rx_shift_payload_buffer_reg_n_0_[4]\,
      I4 => data3(29),
      I5 => w5500state(0),
      O => \w5500state_next[4]_i_5_n_0\
    );
\w5500state_next[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAAAAAAAAAAA00"
    )
        port map (
      I0 => w5500state(5),
      I1 => w5500state(0),
      I2 => w5500state(1),
      I3 => w5500state(3),
      I4 => w5500state(4),
      I5 => w5500state(2),
      O => \w5500state_next[5]_i_3_n_0\
    );
\w5500state_next[5]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \w5500state_next[5]_i_8_n_0\,
      I1 => spi_busy,
      I2 => prev_spi_busy,
      O => \w5500state_next[5]_i_4_n_0\
    );
\w5500state_next[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAFFFFFFFFFFFFFE"
    )
        port map (
      I0 => w5500state(5),
      I1 => w5500state(0),
      I2 => w5500state(1),
      I3 => w5500state(3),
      I4 => w5500state(4),
      I5 => w5500state(2),
      O => \w5500state_next[5]_i_5_n_0\
    );
\w5500state_next[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8888888"
    )
        port map (
      I0 => \w5500state_next[5]_i_9_n_0\,
      I1 => w5500state(4),
      I2 => w5500state(1),
      I3 => w5500state(0),
      I4 => w5500state(3),
      I5 => w5500state(2),
      O => \w5500state_next[5]_i_6_n_0\
    );
\w5500state_next[5]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => w5500state(4),
      I1 => w5500state(2),
      I2 => w5500state(3),
      I3 => w5500state(0),
      I4 => w5500state(1),
      O => \w5500state_next[5]_i_7_n_0\
    );
\w5500state_next[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFC18000881"
    )
        port map (
      I0 => w5500state(1),
      I1 => w5500state(4),
      I2 => w5500state(3),
      I3 => w5500state(2),
      I4 => w5500state(0),
      I5 => w5500state(5),
      O => \w5500state_next[5]_i_8_n_0\
    );
\w5500state_next[5]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04303430"
    )
        port map (
      I0 => \w5500state_next[3]_i_5_n_0\,
      I1 => w5500state(2),
      I2 => w5500state(3),
      I3 => w5500state(1),
      I4 => \w5500state_next[3]_i_6_n_0\,
      O => \w5500state_next[5]_i_9_n_0\
    );
\w5500state_next_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_w5500_axi_data_streamer_n_14,
      D => \w5500state_next[0]_i_1_n_0\,
      Q => \w5500state_next_reg_n_0_[0]\,
      R => '0'
    );
\w5500state_next_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_w5500_axi_data_streamer_n_14,
      D => \w5500state_next[1]_i_1_n_0\,
      Q => \w5500state_next_reg_n_0_[1]\,
      R => '0'
    );
\w5500state_next_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_w5500_axi_data_streamer_n_14,
      D => \w5500state_next[2]_i_1_n_0\,
      Q => \w5500state_next_reg_n_0_[2]\,
      R => '0'
    );
\w5500state_next_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_w5500_axi_data_streamer_n_14,
      D => \w5500state_next[3]_i_1_n_0\,
      Q => \w5500state_next_reg_n_0_[3]\,
      R => '0'
    );
\w5500state_next_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_w5500_axi_data_streamer_n_14,
      D => \w5500state_next_reg[4]_i_1_n_0\,
      Q => \w5500state_next_reg_n_0_[4]\,
      R => '0'
    );
\w5500state_next_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \w5500state_next[4]_i_2_n_0\,
      I1 => \w5500state_next[4]_i_3_n_0\,
      O => \w5500state_next_reg[4]_i_1_n_0\,
      S => w5500state(5)
    );
\w5500state_next_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => u_w5500_axi_data_streamer_n_14,
      D => \w5500state_next_reg[5]_i_2_n_0\,
      Q => \w5500state_next_reg_n_0_[5]\,
      R => '0'
    );
\w5500state_next_reg[5]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \w5500state_next[5]_i_6_n_0\,
      I1 => \w5500state_next[5]_i_7_n_0\,
      O => \w5500state_next_reg[5]_i_2_n_0\,
      S => w5500state(5)
    );
\w5500state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \w5500state_next_reg_n_0_[0]\,
      Q => w5500state(0)
    );
\w5500state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \w5500state_next_reg_n_0_[1]\,
      Q => w5500state(1)
    );
\w5500state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \w5500state_next_reg_n_0_[2]\,
      Q => w5500state(2)
    );
\w5500state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \w5500state_next_reg_n_0_[3]\,
      Q => w5500state(3)
    );
\w5500state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \w5500state_next_reg_n_0_[4]\,
      Q => w5500state(4)
    );
\w5500state_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \w5500state_next_reg_n_0_[5]\,
      Q => w5500state(5)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    idle_mode : in STD_LOGIC;
    mosi : out STD_LOGIC;
    miso : in STD_LOGIC;
    sclk : out STD_LOGIC;
    cs : out STD_LOGIC;
    led : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top : entity is true;
end top;

architecture STRUCTURE of top is
  component dbg_hub_CV is
  port (
    clk : in STD_LOGIC;
    sl_iport0_o : out STD_LOGIC_VECTOR ( 36 downto 0 );
    sl_oport0_i : in STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  end component dbg_hub_CV;
  component u_ila_0_CV is
  port (
    clk : in STD_LOGIC;
    SL_IPORT_I : in STD_LOGIC_VECTOR ( 36 downto 0 );
    SL_OPORT_O : out STD_LOGIC_VECTOR ( 16 downto 0 );
    probe0 : in STD_LOGIC_VECTOR ( 0 to 7 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 7 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 7 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component u_ila_0_CV;
  signal RREADY : STD_LOGIC;
  signal RVALID : STD_LOGIC;
  signal TREADY : STD_LOGIC;
  signal TVALID : STD_LOGIC;
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal cs_OBUF : STD_LOGIC;
  signal led_OBUF : STD_LOGIC;
  signal miso_IBUF : STD_LOGIC;
  signal mosi_OBUF : STD_LOGIC;
  signal mosi_TRI : STD_LOGIC;
  signal rdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reset_IBUF : STD_LOGIC;
  signal s_axis_aresetn : STD_LOGIC;
  signal sclk_OBUF : STD_LOGIC;
  signal sl_iport0_o_0 : STD_LOGIC_VECTOR ( 36 downto 0 );
  signal sl_oport0_i_0 : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal spi_busy : STD_LOGIC;
  signal spi_m_n_5 : STD_LOGIC;
  signal tdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tlast : STD_LOGIC;
  signal txrx_unit_n_14 : STD_LOGIC;
  signal txrx_unit_n_15 : STD_LOGIC;
  signal txrx_unit_n_16 : STD_LOGIC;
  signal txrx_unit_n_17 : STD_LOGIC;
  signal \u_ila_0_payload_data[0]\ : STD_LOGIC;
  signal \u_ila_0_payload_data[1]\ : STD_LOGIC;
  signal \u_ila_0_payload_data[2]\ : STD_LOGIC;
  signal \u_ila_0_payload_data[3]\ : STD_LOGIC;
  signal \u_ila_0_payload_data[4]\ : STD_LOGIC;
  signal \u_ila_0_payload_data[5]\ : STD_LOGIC;
  signal \u_ila_0_payload_data[6]\ : STD_LOGIC;
  signal \u_ila_0_payload_data[7]\ : STD_LOGIC;
  signal \u_w5500_axi_data_streamer/s_axis_tlast\ : STD_LOGIC;
  attribute DEBUG_CORE_INFO : string;
  attribute DEBUG_CORE_INFO of dbg_hub : label is "dbg_hub,labtools_xsdbm_v3_00_a,{C_BSCAN_MODE=false,C_BSCAN_MODE_WITH_CORE=false,C_CLK_INPUT_FREQ_HZ=300000000,C_ENABLE_CLK_DIVIDER=false,C_EN_BSCANID_VEC=false,C_NUM_BSCAN_MASTER_PORTS=0,C_TWO_PRIM_MODE=false,C_USER_SCAN_CHAIN=1,C_USE_EXT_BSCAN=false,C_XSDB_NUM_SLAVES=1,component_name=dbg_hub_CV}";
  attribute DEBUG_PORT_clk : string;
  attribute DEBUG_PORT_clk of dbg_hub : label is "";
  attribute IS_DEBUG_CORE : boolean;
  attribute IS_DEBUG_CORE of dbg_hub : label is std.standard.true;
  attribute DEBUG_CORE_INFO of u_ila_0 : label is "u_ila_0,labtools_ila_v6_00_a,{ALL_PROBE_SAME_MU=true,ALL_PROBE_SAME_MU_CNT=2,C_ADV_TRIGGER=false,C_DATA_DEPTH=1024,C_EN_STRG_QUAL=true,C_INPUT_PIPE_STAGES=0,C_NUM_OF_PROBES=5,C_PROBE0_TYPE=0,C_PROBE0_WIDTH=8,C_PROBE1_TYPE=0,C_PROBE1_WIDTH=8,C_PROBE2_TYPE=0,C_PROBE2_WIDTH=8,C_PROBE3_TYPE=0,C_PROBE3_WIDTH=1,C_PROBE4_TYPE=0,C_PROBE4_WIDTH=1,C_TRIGIN_EN=0,C_TRIGOUT_EN=0,component_name=u_ila_0_CV}";
  attribute DEBUG_PORT_clk of u_ila_0 : label is "n:clk_IBUF_BUFG";
  attribute DEBUG_PORT_probe0 : string;
  attribute DEBUG_PORT_probe0 of u_ila_0 : label is "n:spi_m/payload_data[7],n:spi_m/payload_data[6],n:spi_m/payload_data[5],n:spi_m/payload_data[4],n:spi_m/payload_data[3],n:spi_m/payload_data[2],n:spi_m/payload_data[1],n:spi_m/payload_data[0]";
  attribute DEBUG_PORT_probe1 : string;
  attribute DEBUG_PORT_probe1 of u_ila_0 : label is "n:tdata[7],n:tdata[6],n:tdata[5],n:tdata[4],n:tdata[3],n:tdata[2],n:tdata[1],n:tdata[0]";
  attribute DEBUG_PORT_probe2 : string;
  attribute DEBUG_PORT_probe2 of u_ila_0 : label is "n:rdata[7],n:rdata[6],n:rdata[5],n:rdata[4],n:rdata[3],n:rdata[2],n:rdata[1],n:rdata[0]";
  attribute DEBUG_PORT_probe3 : string;
  attribute DEBUG_PORT_probe3 of u_ila_0 : label is "n:sclk_OBUF";
  attribute DEBUG_PORT_probe4 : string;
  attribute DEBUG_PORT_probe4 of u_ila_0 : label is "n:cs_OBUF";
  attribute IS_DEBUG_CORE of u_ila_0 : label is std.standard.true;
begin
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
cs_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => cs_OBUF,
      O => cs
    );
dbg_hub: component dbg_hub_CV
     port map (
      clk => clk_IBUF_BUFG,
      sl_iport0_o(36 downto 0) => sl_iport0_o_0(36 downto 0),
      sl_oport0_i(16 downto 0) => sl_oport0_i_0(16 downto 0)
    );
idle_mode_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => idle_mode,
      O => led_OBUF
    );
led_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF,
      O => led
    );
miso_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => miso,
      O => miso_IBUF
    );
mosi_OBUFT_inst: unisim.vcomponents.OBUFT
     port map (
      I => mosi_OBUF,
      O => mosi,
      T => mosi_TRI
    );
mosi_OBUFT_inst_i_1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => txrx_unit_n_17,
      Q => mosi_TRI,
      R => '0'
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
sclk_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => sclk_OBUF,
      O => sclk
    );
spi_m: entity work.w5500_state_machine
     port map (
      D(7 downto 0) => rdata(7 downto 0),
      E(0) => s_axis_aresetn,
      Q(0) => spi_m_n_5,
      \bytes_received_reg[0]\ => txrx_unit_n_15,
      \bytes_received_reg[0]_0\ => txrx_unit_n_16,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      led_OBUF => led_OBUF,
      m_axis_tready => RREADY,
      m_axis_tvalid => RVALID,
      reset_IBUF => reset_IBUF,
      rlast_buffer_reg => txrx_unit_n_14,
      s_axis_tlast => \u_w5500_axi_data_streamer/s_axis_tlast\,
      s_axis_tready => TREADY,
      s_axis_tvalid => TVALID,
      spi_busy => spi_busy,
      \tdata_reg[7]\(7 downto 0) => tdata(7 downto 0),
      tlast_reg => tlast,
      \u_ila_0_payload_data[0]\ => \u_ila_0_payload_data[0]\,
      \u_ila_0_payload_data[1]\ => \u_ila_0_payload_data[1]\,
      \u_ila_0_payload_data[2]\ => \u_ila_0_payload_data[2]\,
      \u_ila_0_payload_data[3]\ => \u_ila_0_payload_data[3]\,
      \u_ila_0_payload_data[4]\ => \u_ila_0_payload_data[4]\,
      \u_ila_0_payload_data[5]\ => \u_ila_0_payload_data[5]\,
      \u_ila_0_payload_data[6]\ => \u_ila_0_payload_data[6]\,
      \u_ila_0_payload_data[7]\ => \u_ila_0_payload_data[7]\
    );
txrx_unit: entity work.transceive_unit
     port map (
      D(0) => miso_IBUF,
      E(0) => s_axis_aresetn,
      \FSM_sequential_state_reg[2]\(7 downto 0) => tdata(7 downto 0),
      \FSM_sequential_state_reg[2]_0\ => tlast,
      Q(0) => spi_m_n_5,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \conf_header_reg[2]\ => txrx_unit_n_15,
      cs_OBUF => cs_OBUF,
      m_axis_tdata(7 downto 0) => rdata(7 downto 0),
      m_axis_tready => RREADY,
      m_axis_tvalid => RVALID,
      mosi_OBUF => mosi_OBUF,
      mosi_OBUFT_inst_i_1 => txrx_unit_n_17,
      mosi_TRI => mosi_TRI,
      reset => txrx_unit_n_16,
      reset_IBUF => reset_IBUF,
      rlast_buffer_reg => txrx_unit_n_14,
      s_axis_tlast => \u_w5500_axi_data_streamer/s_axis_tlast\,
      s_axis_tready => TREADY,
      s_axis_tvalid => TVALID,
      sclk_OBUF => sclk_OBUF,
      spi_busy => spi_busy
    );
u_ila_0: component u_ila_0_CV
     port map (
      SL_IPORT_I(36 downto 0) => sl_iport0_o_0(36 downto 0),
      SL_OPORT_O(16 downto 0) => sl_oport0_i_0(16 downto 0),
      clk => clk_IBUF_BUFG,
      probe0(0) => \u_ila_0_payload_data[0]\,
      probe0(1) => \u_ila_0_payload_data[1]\,
      probe0(2) => \u_ila_0_payload_data[2]\,
      probe0(3) => \u_ila_0_payload_data[3]\,
      probe0(4) => \u_ila_0_payload_data[4]\,
      probe0(5) => \u_ila_0_payload_data[5]\,
      probe0(6) => \u_ila_0_payload_data[6]\,
      probe0(7) => \u_ila_0_payload_data[7]\,
      probe1(0) => tdata(0),
      probe1(1) => tdata(1),
      probe1(2) => tdata(2),
      probe1(3) => tdata(3),
      probe1(4) => tdata(4),
      probe1(5) => tdata(5),
      probe1(6) => tdata(6),
      probe1(7) => tdata(7),
      probe2(0) => rdata(0),
      probe2(1) => rdata(1),
      probe2(2) => rdata(2),
      probe2(3) => rdata(3),
      probe2(4) => rdata(4),
      probe2(5) => rdata(5),
      probe2(6) => rdata(6),
      probe2(7) => rdata(7),
      probe3(0) => sclk_OBUF,
      probe4(0) => cs_OBUF
    );
end STRUCTURE;
