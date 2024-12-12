-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Sep  9 19:07:09 2024
-- Host        : DESKTOP-FEDBMRF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/danie/w5500StateMachine/w5500StateMachine.sim/sim_1/synth/func/xsim/transceive_unit_func_synth.vhd
-- Design      : top
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spi_master is
  port (
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    txrx_enable : out STD_LOGIC;
    tx_data : out STD_LOGIC_VECTOR ( 11 downto 0 );
    spi_busy : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC;
    idle_mode_IBUF : in STD_LOGIC;
    tx_mode_IBUF : in STD_LOGIC
  );
end spi_master;

architecture STRUCTURE of spi_master is
  signal OM0_n_0 : STD_LOGIC;
  signal \bsb[3]_i_1_n_0\ : STD_LOGIC;
  signal \bsb[4]_i_1_n_0\ : STD_LOGIC;
  signal masterstate : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \masterstate_next__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal masterstate_next_n_0 : STD_LOGIC;
  signal \masterstate_next_reg_n_0_[0]\ : STD_LOGIC;
  signal \masterstate_next_reg_n_0_[1]\ : STD_LOGIC;
  signal \masterstate_next_reg_n_0_[2]\ : STD_LOGIC;
  signal \masterstate_next_reg_n_0_[3]\ : STD_LOGIC;
  signal \offset_address[4]_i_1_n_0\ : STD_LOGIC;
  signal \offset_address__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal offset_address_n_0 : STD_LOGIC;
  signal prev_spi_busy : STD_LOGIC;
  signal rwb_n_0 : STD_LOGIC;
  signal \tx_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[22]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[24]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[25]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[26]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[28]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[29]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data[29]_i_2_n_0\ : STD_LOGIC;
  signal \tx_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \tx_data__0__0\ : STD_LOGIC_VECTOR ( 31 downto 21 );
  signal \tx_data__0_n_0\ : STD_LOGIC;
  signal \^txrx_enable\ : STD_LOGIC;
  signal txrx_enable_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bsb[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bsb[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \masterstate_next[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \masterstate_next[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \offset_address[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \offset_address[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \offset_address[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \offset_address[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \offset_address[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of rwb : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tx_data[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tx_data[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tx_data[21]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tx_data[22]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tx_data[23]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tx_data[24]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tx_data[25]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tx_data[26]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tx_data[28]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tx_data[29]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tx_data[31]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tx_data[8]_i_1\ : label is "soft_lutpair7";
begin
  txrx_enable <= \^txrx_enable\;
OM0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => masterstate(3),
      I1 => masterstate(2),
      I2 => masterstate(0),
      I3 => masterstate(1),
      O => OM0_n_0
    );
\bsb[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7737"
    )
        port map (
      I0 => masterstate(2),
      I1 => masterstate(3),
      I2 => masterstate(0),
      I3 => masterstate(1),
      O => \bsb[3]_i_1_n_0\
    );
\bsb[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5400"
    )
        port map (
      I0 => masterstate(1),
      I1 => masterstate(0),
      I2 => masterstate(2),
      I3 => masterstate(3),
      O => \bsb[4]_i_1_n_0\
    );
\bsb_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => offset_address_n_0,
      D => \bsb[3]_i_1_n_0\,
      Q => D(1),
      R => '0'
    );
\bsb_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => offset_address_n_0,
      D => \bsb[4]_i_1_n_0\,
      Q => D(2),
      R => '0'
    );
masterstate_next: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444F444F444444F"
    )
        port map (
      I0 => spi_busy,
      I1 => prev_spi_busy,
      I2 => masterstate(2),
      I3 => masterstate(3),
      I4 => masterstate(1),
      I5 => masterstate(0),
      O => masterstate_next_n_0
    );
\masterstate_next[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B2B7"
    )
        port map (
      I0 => masterstate(3),
      I1 => masterstate(0),
      I2 => masterstate(2),
      I3 => masterstate(1),
      O => \masterstate_next__0\(0)
    );
\masterstate_next[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1740174017409FE9"
    )
        port map (
      I0 => masterstate(3),
      I1 => masterstate(2),
      I2 => masterstate(1),
      I3 => masterstate(0),
      I4 => idle_mode_IBUF,
      I5 => tx_mode_IBUF,
      O => \masterstate_next__0\(1)
    );
\masterstate_next[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AC24FF56"
    )
        port map (
      I0 => masterstate(3),
      I1 => masterstate(2),
      I2 => masterstate(1),
      I3 => idle_mode_IBUF,
      I4 => masterstate(0),
      O => \masterstate_next__0\(2)
    );
\masterstate_next[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAB"
    )
        port map (
      I0 => masterstate(3),
      I1 => masterstate(1),
      I2 => masterstate(0),
      I3 => masterstate(2),
      O => \masterstate_next__0\(3)
    );
\masterstate_next_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => masterstate_next_n_0,
      D => \masterstate_next__0\(0),
      Q => \masterstate_next_reg_n_0_[0]\,
      S => OM0_n_0
    );
\masterstate_next_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => masterstate_next_n_0,
      D => \masterstate_next__0\(1),
      Q => \masterstate_next_reg_n_0_[1]\,
      R => OM0_n_0
    );
\masterstate_next_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => masterstate_next_n_0,
      D => \masterstate_next__0\(2),
      Q => \masterstate_next_reg_n_0_[2]\,
      R => OM0_n_0
    );
\masterstate_next_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => masterstate_next_n_0,
      D => \masterstate_next__0\(3),
      Q => \masterstate_next_reg_n_0_[3]\,
      R => OM0_n_0
    );
\masterstate_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \masterstate_next_reg_n_0_[0]\,
      Q => masterstate(0)
    );
\masterstate_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \masterstate_next_reg_n_0_[1]\,
      Q => masterstate(1)
    );
\masterstate_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \masterstate_next_reg_n_0_[2]\,
      Q => masterstate(2)
    );
\masterstate_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \masterstate_next_reg_n_0_[3]\,
      Q => masterstate(3)
    );
offset_address: unisim.vcomponents.LUT4
    generic map(
      INIT => X"777E"
    )
        port map (
      I0 => masterstate(3),
      I1 => masterstate(2),
      I2 => masterstate(1),
      I3 => masterstate(0),
      O => offset_address_n_0
    );
\offset_address[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5525"
    )
        port map (
      I0 => masterstate(3),
      I1 => masterstate(2),
      I2 => masterstate(1),
      I3 => masterstate(0),
      O => \offset_address__0\(0)
    );
\offset_address[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => masterstate(0),
      I1 => masterstate(1),
      I2 => masterstate(2),
      O => \offset_address__0\(1)
    );
\offset_address[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEDA"
    )
        port map (
      I0 => masterstate(3),
      I1 => masterstate(0),
      I2 => masterstate(1),
      I3 => masterstate(2),
      O => \offset_address__0\(2)
    );
\offset_address[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0042"
    )
        port map (
      I0 => masterstate(3),
      I1 => masterstate(0),
      I2 => masterstate(1),
      I3 => masterstate(2),
      O => \offset_address__0\(3)
    );
\offset_address[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => masterstate(2),
      I1 => masterstate(0),
      I2 => masterstate(1),
      I3 => masterstate(3),
      O => \offset_address[4]_i_1_n_0\
    );
\offset_address[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => masterstate(3),
      I1 => masterstate(0),
      I2 => masterstate(2),
      O => \offset_address__0\(5)
    );
\offset_address_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => offset_address_n_0,
      D => \offset_address__0\(0),
      Q => D(3),
      R => '0'
    );
\offset_address_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => offset_address_n_0,
      D => \offset_address__0\(1),
      Q => D(4),
      R => '0'
    );
\offset_address_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => offset_address_n_0,
      D => \offset_address__0\(2),
      Q => D(5),
      R => '0'
    );
\offset_address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => offset_address_n_0,
      D => \offset_address__0\(3),
      Q => D(6),
      R => '0'
    );
\offset_address_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => offset_address_n_0,
      D => \offset_address[4]_i_1_n_0\,
      Q => D(7),
      R => '0'
    );
\offset_address_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => offset_address_n_0,
      D => \offset_address__0\(5),
      Q => D(8),
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
rwb: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3777"
    )
        port map (
      I0 => masterstate(2),
      I1 => masterstate(3),
      I2 => masterstate(0),
      I3 => masterstate(1),
      O => rwb_n_0
    );
rwb_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => offset_address_n_0,
      D => rwb_n_0,
      Q => D(0),
      R => '0'
    );
\tx_data[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B00"
    )
        port map (
      I0 => masterstate(0),
      I1 => masterstate(3),
      I2 => masterstate(1),
      I3 => masterstate(2),
      O => \tx_data[0]_i_1_n_0\
    );
\tx_data[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => masterstate(3),
      I1 => masterstate(2),
      I2 => masterstate(1),
      I3 => masterstate(0),
      O => \tx_data[1]_i_1_n_0\
    );
\tx_data[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"063A"
    )
        port map (
      I0 => masterstate(2),
      I1 => masterstate(1),
      I2 => masterstate(3),
      I3 => masterstate(0),
      O => \tx_data__0__0\(21)
    );
\tx_data[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => masterstate(3),
      I1 => masterstate(2),
      I2 => masterstate(1),
      I3 => masterstate(0),
      O => \tx_data[22]_i_1_n_0\
    );
\tx_data[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0636"
    )
        port map (
      I0 => masterstate(2),
      I1 => masterstate(1),
      I2 => masterstate(3),
      I3 => masterstate(0),
      O => \tx_data__0__0\(23)
    );
\tx_data[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => masterstate(3),
      I1 => masterstate(1),
      I2 => masterstate(0),
      I3 => masterstate(2),
      O => \tx_data[24]_i_1_n_0\
    );
\tx_data[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0341"
    )
        port map (
      I0 => masterstate(3),
      I1 => masterstate(1),
      I2 => masterstate(2),
      I3 => masterstate(0),
      O => \tx_data[25]_i_1_n_0\
    );
\tx_data[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => masterstate(3),
      I1 => masterstate(0),
      I2 => masterstate(1),
      O => \tx_data[26]_i_1_n_0\
    );
\tx_data[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => masterstate(3),
      I1 => masterstate(1),
      I2 => masterstate(0),
      I3 => masterstate(2),
      O => \tx_data[28]_i_1_n_0\
    );
\tx_data[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => masterstate(2),
      I1 => masterstate(3),
      I2 => masterstate(1),
      O => \tx_data[29]_i_1_n_0\
    );
\tx_data[29]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => masterstate(1),
      I1 => masterstate(0),
      I2 => masterstate(3),
      O => \tx_data[29]_i_2_n_0\
    );
\tx_data[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0632"
    )
        port map (
      I0 => masterstate(2),
      I1 => masterstate(1),
      I2 => masterstate(3),
      I3 => masterstate(0),
      O => \tx_data__0__0\(31)
    );
\tx_data[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => masterstate(1),
      I1 => masterstate(0),
      I2 => masterstate(3),
      O => \tx_data[8]_i_1_n_0\
    );
\tx_data__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F5E"
    )
        port map (
      I0 => masterstate(2),
      I1 => masterstate(0),
      I2 => masterstate(3),
      I3 => masterstate(1),
      O => \tx_data__0_n_0\
    );
\tx_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_data__0_n_0\,
      D => \tx_data[0]_i_1_n_0\,
      Q => tx_data(0),
      R => \tx_data[29]_i_1_n_0\
    );
\tx_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_data__0_n_0\,
      D => \tx_data[1]_i_1_n_0\,
      Q => tx_data(1),
      R => \tx_data[29]_i_1_n_0\
    );
\tx_data_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_data__0_n_0\,
      D => \tx_data__0__0\(21),
      Q => tx_data(3),
      R => '0'
    );
\tx_data_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_data__0_n_0\,
      D => \tx_data[22]_i_1_n_0\,
      Q => tx_data(4),
      R => \tx_data[29]_i_1_n_0\
    );
\tx_data_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_data__0_n_0\,
      D => \tx_data__0__0\(23),
      Q => tx_data(5),
      R => '0'
    );
\tx_data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_data__0_n_0\,
      D => \tx_data[24]_i_1_n_0\,
      Q => tx_data(6),
      R => \tx_data[29]_i_1_n_0\
    );
\tx_data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_data__0_n_0\,
      D => \tx_data[25]_i_1_n_0\,
      Q => tx_data(7),
      R => \tx_data[29]_i_1_n_0\
    );
\tx_data_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_data__0_n_0\,
      D => \tx_data[26]_i_1_n_0\,
      Q => tx_data(8),
      R => \tx_data[29]_i_1_n_0\
    );
\tx_data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_data__0_n_0\,
      D => \tx_data[28]_i_1_n_0\,
      Q => tx_data(9),
      R => \tx_data[29]_i_1_n_0\
    );
\tx_data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_data__0_n_0\,
      D => \tx_data[29]_i_2_n_0\,
      Q => tx_data(10),
      R => \tx_data[29]_i_1_n_0\
    );
\tx_data_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_data__0_n_0\,
      D => \tx_data__0__0\(31),
      Q => tx_data(11),
      R => '0'
    );
\tx_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_data__0_n_0\,
      D => \tx_data[8]_i_1_n_0\,
      Q => tx_data(2),
      R => '0'
    );
txrx_enable_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333AAAAAAAAAAFAA"
    )
        port map (
      I0 => \^txrx_enable\,
      I1 => idle_mode_IBUF,
      I2 => masterstate(1),
      I3 => masterstate(0),
      I4 => masterstate(2),
      I5 => masterstate(3),
      O => txrx_enable_i_1_n_0
    );
txrx_enable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => txrx_enable_i_1_n_0,
      Q => \^txrx_enable\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity transceive_unit is
  port (
    sclk_OBUF : out STD_LOGIC;
    ss_OBUF : out STD_LOGIC;
    spi_busy : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \tx_buffer_reg[31]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_spistate_reg[2]_0\ : out STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rx_reg_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx_data : in STD_LOGIC_VECTOR ( 11 downto 0 );
    txrx_enable : in STD_LOGIC
  );
end transceive_unit;

architecture STRUCTURE of transceive_unit is
  signal \FSM_sequential_spistate_next[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_spistate_next[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_spistate_next[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_spistate_next[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_spistate_next[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_spistate_next[2]_i_5_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal bitcounter0 : STD_LOGIC;
  signal \bitcounter[0]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[1]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[2]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[2]_i_2_n_0\ : STD_LOGIC;
  signal \bitcounter[3]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[3]_i_2_n_0\ : STD_LOGIC;
  signal \bitcounter[4]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[4]_i_2_n_0\ : STD_LOGIC;
  signal \bitcounter[5]_i_2_n_0\ : STD_LOGIC;
  signal \bitcounter[5]_i_3_n_0\ : STD_LOGIC;
  signal \bitcounter[5]_i_4_n_0\ : STD_LOGIC;
  signal \bitcounter_reg_n_0_[0]\ : STD_LOGIC;
  signal \bitcounter_reg_n_0_[1]\ : STD_LOGIC;
  signal \bitcounter_reg_n_0_[2]\ : STD_LOGIC;
  signal \bitcounter_reg_n_0_[3]\ : STD_LOGIC;
  signal \bitcounter_reg_n_0_[4]\ : STD_LOGIC;
  signal \bitcounter_reg_n_0_[5]\ : STD_LOGIC;
  signal delay_counter : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \delay_counter[1]_i_2_n_0\ : STD_LOGIC;
  signal \delay_counter[2]_i_2_n_0\ : STD_LOGIC;
  signal \delay_counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \delay_counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \delay_counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \delay_counter[4]_i_4_n_0\ : STD_LOGIC;
  signal \delay_counter[6]_i_2_n_0\ : STD_LOGIC;
  signal \delay_counter[6]_i_3_n_0\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \delay_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal rx_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^sclk_obuf\ : STD_LOGIC;
  signal \^spi_busy\ : STD_LOGIC;
  signal spi_busy_i_1_n_0 : STD_LOGIC;
  signal spiclk0 : STD_LOGIC;
  signal spiclk_i_1_n_0 : STD_LOGIC;
  signal spiclklast : STD_LOGIC;
  signal spistate : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal spistate_next0 : STD_LOGIC;
  signal \spistate_next__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ss0 : STD_LOGIC;
  signal ss_i_2_n_0 : STD_LOGIC;
  signal ss_i_3_n_0 : STD_LOGIC;
  signal transmit_config_buffer : STD_LOGIC_VECTOR ( 13 downto 1 );
  signal \tx_buffer[31]_i_1_n_0\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[21]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[22]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[23]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[24]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[25]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[26]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[28]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[29]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[31]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal tx_reg : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \tx_reg__0\ : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \tx_reg_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[21]_i_2_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[29]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[30]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[31]_i_5_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[31]_i_6_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg_reg[9]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_spistate_next[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \FSM_sequential_spistate_next[2]_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FSM_sequential_spistate_next[2]_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_sequential_spistate_next[2]_i_5\ : label is "soft_lutpair12";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_spistate_reg[0]\ : label is "spi_idle:000,spi_send_cmd:001,spi_done:011,spi_read_data:100,spi_write_data:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_spistate_reg[1]\ : label is "spi_idle:000,spi_send_cmd:001,spi_done:011,spi_read_data:100,spi_write_data:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_spistate_reg[2]\ : label is "spi_idle:000,spi_send_cmd:001,spi_done:011,spi_read_data:100,spi_write_data:010";
  attribute SOFT_HLUTNM of \bitcounter[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \bitcounter[2]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \bitcounter[3]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \bitcounter[4]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \bitcounter[5]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \bitcounter[5]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \delay_counter[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \delay_counter[1]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \delay_counter[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \delay_counter[2]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \delay_counter[3]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \delay_counter[4]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \delay_counter[4]_i_4\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \delay_counter[5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \delay_counter[6]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \delay_counter[6]_i_3\ : label is "soft_lutpair33";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \rx_reg_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \rx_reg_reg[10]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg_reg[10]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \rx_reg_reg[11]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg_reg[11]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \rx_reg_reg[12]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg_reg[12]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \rx_reg_reg[13]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg_reg[13]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \rx_reg_reg[14]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg_reg[14]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \rx_reg_reg[15]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg_reg[15]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \rx_reg_reg[16]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg_reg[16]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \rx_reg_reg[17]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg_reg[17]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \rx_reg_reg[18]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg_reg[18]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \rx_reg_reg[19]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg_reg[19]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \rx_reg_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \rx_reg_reg[20]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg_reg[20]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \rx_reg_reg[21]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg_reg[21]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \rx_reg_reg[22]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg_reg[22]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \rx_reg_reg[23]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg_reg[23]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \rx_reg_reg[24]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg_reg[24]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \rx_reg_reg[25]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg_reg[25]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \rx_reg_reg[26]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg_reg[26]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \rx_reg_reg[27]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg_reg[27]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \rx_reg_reg[28]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg_reg[28]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \rx_reg_reg[29]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg_reg[29]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \rx_reg_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg_reg[2]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \rx_reg_reg[30]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg_reg[30]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \rx_reg_reg[31]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg_reg[31]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \rx_reg_reg[31]_i_2\ : label is "soft_lutpair19";
  attribute XILINX_LEGACY_PRIM of \rx_reg_reg[3]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg_reg[3]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \rx_reg_reg[4]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg_reg[4]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \rx_reg_reg[5]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg_reg[5]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \rx_reg_reg[6]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg_reg[6]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \rx_reg_reg[7]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg_reg[7]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \rx_reg_reg[8]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg_reg[8]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \rx_reg_reg[9]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \rx_reg_reg[9]\ : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of spi_busy_i_1 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of spiclk_i_2 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of ss_i_2 : label is "soft_lutpair33";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[0]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[0]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \tx_reg_reg[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \tx_reg_reg[0]_i_2\ : label is "soft_lutpair20";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[10]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[10]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[11]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[11]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \tx_reg_reg[11]_i_1\ : label is "soft_lutpair28";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[12]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[12]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \tx_reg_reg[12]_i_1\ : label is "soft_lutpair29";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[13]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[13]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \tx_reg_reg[13]_i_1\ : label is "soft_lutpair30";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[14]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[14]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[15]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[15]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[16]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[16]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[17]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[17]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[18]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[18]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[19]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[19]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[1]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[1]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \tx_reg_reg[1]_i_1\ : label is "soft_lutpair24";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[20]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[20]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[21]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[21]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \tx_reg_reg[21]_i_2\ : label is "soft_lutpair14";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[22]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[22]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \tx_reg_reg[22]_i_1\ : label is "soft_lutpair27";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[23]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[23]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \tx_reg_reg[23]_i_1\ : label is "soft_lutpair28";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[24]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[24]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \tx_reg_reg[24]_i_1\ : label is "soft_lutpair29";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[25]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[25]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \tx_reg_reg[25]_i_1\ : label is "soft_lutpair30";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[26]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[26]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \tx_reg_reg[26]_i_1\ : label is "soft_lutpair31";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[27]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[27]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \tx_reg_reg[27]_i_1\ : label is "soft_lutpair31";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[28]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[28]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[29]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[29]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[2]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[2]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \tx_reg_reg[2]_i_1\ : label is "soft_lutpair25";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[30]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[30]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \tx_reg_reg[30]_i_1\ : label is "soft_lutpair32";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[31]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[31]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \tx_reg_reg[31]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \tx_reg_reg[31]_i_5\ : label is "soft_lutpair20";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[3]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[3]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \tx_reg_reg[3]_i_1\ : label is "soft_lutpair24";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[4]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[4]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \tx_reg_reg[4]_i_1\ : label is "soft_lutpair26";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[5]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[5]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \tx_reg_reg[5]_i_1\ : label is "soft_lutpair25";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[6]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[6]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \tx_reg_reg[6]_i_1\ : label is "soft_lutpair26";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[7]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[7]\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \tx_reg_reg[7]_i_1\ : label is "soft_lutpair27";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[8]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[8]\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \tx_reg_reg[9]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \tx_reg_reg[9]\ : label is "VCC:GE";
begin
  Q(15 downto 0) <= \^q\(15 downto 0);
  sclk_OBUF <= \^sclk_obuf\;
  spi_busy <= \^spi_busy\;
\FSM_sequential_spistate_next[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F10"
    )
        port map (
      I0 => spistate(0),
      I1 => spistate(2),
      I2 => spistate_next0,
      I3 => \spistate_next__0\(0),
      O => \FSM_sequential_spistate_next[0]_i_1_n_0\
    );
\FSM_sequential_spistate_next[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0308FFFF03080000"
    )
        port map (
      I0 => D(0),
      I1 => spistate(0),
      I2 => spistate(2),
      I3 => spistate(1),
      I4 => spistate_next0,
      I5 => \spistate_next__0\(1),
      O => \FSM_sequential_spistate_next[1]_i_1_n_0\
    );
\FSM_sequential_spistate_next[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010FFFF00100000"
    )
        port map (
      I0 => spistate(1),
      I1 => spistate(2),
      I2 => spistate(0),
      I3 => D(0),
      I4 => spistate_next0,
      I5 => \spistate_next__0\(2),
      O => \FSM_sequential_spistate_next[2]_i_1_n_0\
    );
\FSM_sequential_spistate_next[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAEAEAEFFAEAE"
    )
        port map (
      I0 => \FSM_sequential_spistate_next[2]_i_3_n_0\,
      I1 => \FSM_sequential_spistate_next[2]_i_4_n_0\,
      I2 => \tx_reg_reg[31]_i_6_n_0\,
      I3 => \delay_counter[6]_i_2_n_0\,
      I4 => \FSM_sequential_spistate_next[2]_i_5_n_0\,
      I5 => \delay_counter[4]_i_3_n_0\,
      O => spistate_next0
    );
\FSM_sequential_spistate_next[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => reset_IBUF,
      I1 => spistate(0),
      I2 => spistate(2),
      I3 => spistate(1),
      O => \FSM_sequential_spistate_next[2]_i_3_n_0\
    );
\FSM_sequential_spistate_next[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0056"
    )
        port map (
      I0 => spistate(2),
      I1 => spistate(0),
      I2 => spistate(1),
      I3 => reset_IBUF,
      O => \FSM_sequential_spistate_next[2]_i_4_n_0\
    );
\FSM_sequential_spistate_next[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => reset_IBUF,
      I1 => txrx_enable,
      I2 => spistate(0),
      I3 => spistate(1),
      I4 => spistate(2),
      O => \FSM_sequential_spistate_next[2]_i_5_n_0\
    );
\FSM_sequential_spistate_next_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \FSM_sequential_spistate_next[0]_i_1_n_0\,
      Q => \spistate_next__0\(0),
      R => '0'
    );
\FSM_sequential_spistate_next_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \FSM_sequential_spistate_next[1]_i_1_n_0\,
      Q => \spistate_next__0\(1),
      R => '0'
    );
\FSM_sequential_spistate_next_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \FSM_sequential_spistate_next[2]_i_1_n_0\,
      Q => \spistate_next__0\(2),
      R => '0'
    );
\FSM_sequential_spistate_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \spistate_next__0\(0),
      Q => spistate(0)
    );
\FSM_sequential_spistate_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \spistate_next__0\(1),
      Q => spistate(1)
    );
\FSM_sequential_spistate_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \spistate_next__0\(2),
      Q => spistate(2)
    );
\bitcounter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000003F8"
    )
        port map (
      I0 => \^sclk_obuf\,
      I1 => spistate(0),
      I2 => spistate(1),
      I3 => spistate(2),
      I4 => \bitcounter_reg_n_0_[0]\,
      O => \bitcounter[0]_i_1_n_0\
    );
\bitcounter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0909099009000990"
    )
        port map (
      I0 => \bitcounter_reg_n_0_[0]\,
      I1 => \bitcounter_reg_n_0_[1]\,
      I2 => spistate(2),
      I3 => spistate(1),
      I4 => spistate(0),
      I5 => \^sclk_obuf\,
      O => \bitcounter[1]_i_1_n_0\
    );
\bitcounter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E100"
    )
        port map (
      I0 => \bitcounter_reg_n_0_[1]\,
      I1 => \bitcounter_reg_n_0_[0]\,
      I2 => \bitcounter_reg_n_0_[2]\,
      I3 => \bitcounter[2]_i_2_n_0\,
      O => \bitcounter[2]_i_1_n_0\
    );
\bitcounter[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5646"
    )
        port map (
      I0 => spistate(2),
      I1 => spistate(1),
      I2 => spistate(0),
      I3 => \^sclk_obuf\,
      O => \bitcounter[2]_i_2_n_0\
    );
\bitcounter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDD55555555D"
    )
        port map (
      I0 => \tx_reg_reg[21]_i_2_n_0\,
      I1 => \bitcounter[3]_i_2_n_0\,
      I2 => \bitcounter_reg_n_0_[2]\,
      I3 => \bitcounter_reg_n_0_[0]\,
      I4 => \bitcounter_reg_n_0_[1]\,
      I5 => \bitcounter_reg_n_0_[3]\,
      O => \bitcounter[3]_i_1_n_0\
    );
\bitcounter[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"03BB"
    )
        port map (
      I0 => \^sclk_obuf\,
      I1 => spistate(0),
      I2 => spistate(1),
      I3 => spistate(2),
      O => \bitcounter[3]_i_2_n_0\
    );
\bitcounter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03BB0003000303BB"
    )
        port map (
      I0 => \^sclk_obuf\,
      I1 => spistate(0),
      I2 => spistate(1),
      I3 => spistate(2),
      I4 => \bitcounter[4]_i_2_n_0\,
      I5 => \bitcounter_reg_n_0_[4]\,
      O => \bitcounter[4]_i_1_n_0\
    );
\bitcounter[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bitcounter_reg_n_0_[2]\,
      I1 => \bitcounter_reg_n_0_[0]\,
      I2 => \bitcounter_reg_n_0_[1]\,
      I3 => \bitcounter_reg_n_0_[3]\,
      O => \bitcounter[4]_i_2_n_0\
    );
\bitcounter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF0000F222"
    )
        port map (
      I0 => txrx_enable,
      I1 => \tx_reg_reg[21]_i_2_n_0\,
      I2 => \^sclk_obuf\,
      I3 => \bitcounter[5]_i_3_n_0\,
      I4 => reset_IBUF,
      I5 => \tx_reg_reg[31]_i_5_n_0\,
      O => bitcounter0
    );
\bitcounter[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33103C101033103C"
    )
        port map (
      I0 => \^sclk_obuf\,
      I1 => spistate(2),
      I2 => spistate(0),
      I3 => \bitcounter_reg_n_0_[5]\,
      I4 => spistate(1),
      I5 => \bitcounter[5]_i_4_n_0\,
      O => \bitcounter[5]_i_2_n_0\
    );
\bitcounter[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"16"
    )
        port map (
      I0 => spistate(1),
      I1 => spistate(2),
      I2 => spistate(0),
      O => \bitcounter[5]_i_3_n_0\
    );
\bitcounter[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \bitcounter_reg_n_0_[3]\,
      I1 => \bitcounter_reg_n_0_[1]\,
      I2 => \bitcounter_reg_n_0_[0]\,
      I3 => \bitcounter_reg_n_0_[2]\,
      I4 => \bitcounter_reg_n_0_[4]\,
      O => \bitcounter[5]_i_4_n_0\
    );
\bitcounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bitcounter0,
      D => \bitcounter[0]_i_1_n_0\,
      Q => \bitcounter_reg_n_0_[0]\,
      R => '0'
    );
\bitcounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bitcounter0,
      D => \bitcounter[1]_i_1_n_0\,
      Q => \bitcounter_reg_n_0_[1]\,
      R => '0'
    );
\bitcounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bitcounter0,
      D => \bitcounter[2]_i_1_n_0\,
      Q => \bitcounter_reg_n_0_[2]\,
      R => '0'
    );
\bitcounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bitcounter0,
      D => \bitcounter[3]_i_1_n_0\,
      Q => \bitcounter_reg_n_0_[3]\,
      R => '0'
    );
\bitcounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bitcounter0,
      D => \bitcounter[4]_i_1_n_0\,
      Q => \bitcounter_reg_n_0_[4]\,
      R => '0'
    );
\bitcounter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bitcounter0,
      D => \bitcounter[5]_i_2_n_0\,
      Q => \bitcounter_reg_n_0_[5]\,
      R => '0'
    );
\delay_counter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0057"
    )
        port map (
      I0 => spistate(2),
      I1 => spistate(0),
      I2 => spistate(1),
      I3 => \delay_counter_reg_n_0_[0]\,
      O => delay_counter(0)
    );
\delay_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C3C3C300C3C3C1"
    )
        port map (
      I0 => txrx_enable,
      I1 => \delay_counter_reg_n_0_[1]\,
      I2 => \delay_counter_reg_n_0_[0]\,
      I3 => spistate(2),
      I4 => \delay_counter[6]_i_3_n_0\,
      I5 => \delay_counter[1]_i_2_n_0\,
      O => delay_counter(1)
    );
\delay_counter[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \delay_counter_reg_n_0_[3]\,
      I1 => \delay_counter_reg_n_0_[6]\,
      I2 => \delay_counter_reg_n_0_[5]\,
      I3 => \delay_counter_reg_n_0_[4]\,
      I4 => \delay_counter_reg_n_0_[2]\,
      O => \delay_counter[1]_i_2_n_0\
    );
\delay_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0C008"
    )
        port map (
      I0 => \delay_counter[2]_i_2_n_0\,
      I1 => \delay_counter[4]_i_4_n_0\,
      I2 => \delay_counter_reg_n_0_[2]\,
      I3 => \delay_counter_reg_n_0_[0]\,
      I4 => \delay_counter_reg_n_0_[1]\,
      O => delay_counter(2)
    );
\delay_counter[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \delay_counter_reg_n_0_[4]\,
      I1 => \delay_counter_reg_n_0_[5]\,
      I2 => \delay_counter_reg_n_0_[6]\,
      I3 => \delay_counter_reg_n_0_[3]\,
      O => \delay_counter[2]_i_2_n_0\
    );
\delay_counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0000000000FE00"
    )
        port map (
      I0 => \delay_counter_reg_n_0_[6]\,
      I1 => \delay_counter_reg_n_0_[5]\,
      I2 => \delay_counter_reg_n_0_[4]\,
      I3 => \delay_counter[4]_i_4_n_0\,
      I4 => \delay_counter_reg_n_0_[3]\,
      I5 => \delay_counter[3]_i_2_n_0\,
      O => delay_counter(3)
    );
\delay_counter[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \delay_counter_reg_n_0_[1]\,
      I1 => \delay_counter_reg_n_0_[0]\,
      I2 => \delay_counter_reg_n_0_[2]\,
      O => \delay_counter[3]_i_2_n_0\
    );
\delay_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00FF00400040004"
    )
        port map (
      I0 => \tx_reg_reg[21]_i_2_n_0\,
      I1 => txrx_enable,
      I2 => \delay_counter_reg_n_0_[4]\,
      I3 => \delay_counter[4]_i_2_n_0\,
      I4 => \delay_counter[4]_i_3_n_0\,
      I5 => \delay_counter[4]_i_4_n_0\,
      O => delay_counter(4)
    );
\delay_counter[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \delay_counter_reg_n_0_[2]\,
      I1 => \delay_counter_reg_n_0_[0]\,
      I2 => \delay_counter_reg_n_0_[1]\,
      I3 => \delay_counter_reg_n_0_[3]\,
      O => \delay_counter[4]_i_2_n_0\
    );
\delay_counter[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \delay_counter_reg_n_0_[5]\,
      I1 => \delay_counter_reg_n_0_[6]\,
      O => \delay_counter[4]_i_3_n_0\
    );
\delay_counter[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => spistate(1),
      I1 => spistate(0),
      I2 => spistate(2),
      O => \delay_counter[4]_i_4_n_0\
    );
\delay_counter[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00099999"
    )
        port map (
      I0 => \delay_counter[6]_i_2_n_0\,
      I1 => \delay_counter_reg_n_0_[5]\,
      I2 => spistate(1),
      I3 => spistate(0),
      I4 => spistate(2),
      O => delay_counter(5)
    );
\delay_counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FCFCFC00030301"
    )
        port map (
      I0 => txrx_enable,
      I1 => \delay_counter[6]_i_2_n_0\,
      I2 => \delay_counter_reg_n_0_[5]\,
      I3 => spistate(2),
      I4 => \delay_counter[6]_i_3_n_0\,
      I5 => \delay_counter_reg_n_0_[6]\,
      O => delay_counter(6)
    );
\delay_counter[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \delay_counter_reg_n_0_[3]\,
      I1 => \delay_counter_reg_n_0_[1]\,
      I2 => \delay_counter_reg_n_0_[0]\,
      I3 => \delay_counter_reg_n_0_[2]\,
      I4 => \delay_counter_reg_n_0_[4]\,
      O => \delay_counter[6]_i_2_n_0\
    );
\delay_counter[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => spistate(0),
      I1 => spistate(1),
      O => \delay_counter[6]_i_3_n_0\
    );
\delay_counter_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => delay_counter(0),
      PRE => reset_IBUF,
      Q => \delay_counter_reg_n_0_[0]\
    );
\delay_counter_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => delay_counter(1),
      PRE => reset_IBUF,
      Q => \delay_counter_reg_n_0_[1]\
    );
\delay_counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => delay_counter(2),
      Q => \delay_counter_reg_n_0_[2]\
    );
\delay_counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => delay_counter(3),
      Q => \delay_counter_reg_n_0_[3]\
    );
\delay_counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => delay_counter(4),
      Q => \delay_counter_reg_n_0_[4]\
    );
\delay_counter_reg[5]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => delay_counter(5),
      PRE => reset_IBUF,
      Q => \delay_counter_reg_n_0_[5]\
    );
\delay_counter_reg[6]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => delay_counter(6),
      PRE => reset_IBUF,
      Q => \delay_counter_reg_n_0_[6]\
    );
\rx_reg_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \rx_reg_reg[1]_0\(0),
      G => E(0),
      GE => '1',
      Q => rx_data(0)
    );
\rx_reg_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_data(9),
      G => E(0),
      GE => '1',
      Q => rx_data(10)
    );
\rx_reg_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_data(10),
      G => E(0),
      GE => '1',
      Q => rx_data(11)
    );
\rx_reg_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_data(11),
      G => E(0),
      GE => '1',
      Q => rx_data(12)
    );
\rx_reg_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_data(12),
      G => E(0),
      GE => '1',
      Q => rx_data(13)
    );
\rx_reg_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_data(13),
      G => E(0),
      GE => '1',
      Q => rx_data(14)
    );
\rx_reg_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_data(14),
      G => E(0),
      GE => '1',
      Q => rx_data(15)
    );
\rx_reg_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_data(15),
      G => E(0),
      GE => '1',
      Q => \^q\(0)
    );
\rx_reg_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(0),
      G => E(0),
      GE => '1',
      Q => \^q\(1)
    );
\rx_reg_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(1),
      G => E(0),
      GE => '1',
      Q => \^q\(2)
    );
\rx_reg_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(2),
      G => E(0),
      GE => '1',
      Q => \^q\(3)
    );
\rx_reg_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_data(0),
      G => E(0),
      GE => '1',
      Q => rx_data(1)
    );
\rx_reg_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(3),
      G => E(0),
      GE => '1',
      Q => \^q\(4)
    );
\rx_reg_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(4),
      G => E(0),
      GE => '1',
      Q => \^q\(5)
    );
\rx_reg_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(5),
      G => E(0),
      GE => '1',
      Q => \^q\(6)
    );
\rx_reg_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(6),
      G => E(0),
      GE => '1',
      Q => \^q\(7)
    );
\rx_reg_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(7),
      G => E(0),
      GE => '1',
      Q => \^q\(8)
    );
\rx_reg_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(8),
      G => E(0),
      GE => '1',
      Q => \^q\(9)
    );
\rx_reg_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(9),
      G => E(0),
      GE => '1',
      Q => \^q\(10)
    );
\rx_reg_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(10),
      G => E(0),
      GE => '1',
      Q => \^q\(11)
    );
\rx_reg_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(11),
      G => E(0),
      GE => '1',
      Q => \^q\(12)
    );
\rx_reg_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(12),
      G => E(0),
      GE => '1',
      Q => \^q\(13)
    );
\rx_reg_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_data(1),
      G => E(0),
      GE => '1',
      Q => rx_data(2)
    );
\rx_reg_reg[30]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(13),
      G => E(0),
      GE => '1',
      Q => \^q\(14)
    );
\rx_reg_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(14),
      G => E(0),
      GE => '1',
      Q => \^q\(15)
    );
\rx_reg_reg[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => spistate(2),
      I1 => \^sclk_obuf\,
      I2 => spiclklast,
      I3 => spistate(1),
      I4 => spistate(0),
      O => \FSM_sequential_spistate_reg[2]_0\
    );
\rx_reg_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_data(2),
      G => E(0),
      GE => '1',
      Q => rx_data(3)
    );
\rx_reg_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_data(3),
      G => E(0),
      GE => '1',
      Q => rx_data(4)
    );
\rx_reg_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_data(4),
      G => E(0),
      GE => '1',
      Q => rx_data(5)
    );
\rx_reg_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_data(5),
      G => E(0),
      GE => '1',
      Q => rx_data(6)
    );
\rx_reg_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_data(6),
      G => E(0),
      GE => '1',
      Q => rx_data(7)
    );
\rx_reg_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_data(7),
      G => E(0),
      GE => '1',
      Q => rx_data(8)
    );
\rx_reg_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_data(8),
      G => E(0),
      GE => '1',
      Q => rx_data(9)
    );
spi_busy_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDE0002"
    )
        port map (
      I0 => spistate(0),
      I1 => reset_IBUF,
      I2 => spistate(1),
      I3 => spistate(2),
      I4 => \^spi_busy\,
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
spiclk_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF1E000000"
    )
        port map (
      I0 => spistate(1),
      I1 => spistate(0),
      I2 => spistate(2),
      I3 => \tx_reg_reg[31]_i_6_n_0\,
      I4 => spiclk0,
      I5 => \^sclk_obuf\,
      O => spiclk_i_1_n_0
    );
spiclk_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001716"
    )
        port map (
      I0 => spistate(2),
      I1 => spistate(0),
      I2 => spistate(1),
      I3 => txrx_enable,
      I4 => reset_IBUF,
      O => spiclk0
    );
spiclk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => spiclk_i_1_n_0,
      Q => \^sclk_obuf\,
      R => '0'
    );
spiclklast_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_IBUF,
      O => p_0_in
    );
spiclklast_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => \^sclk_obuf\,
      Q => spiclklast,
      R => '0'
    );
ss_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000014"
    )
        port map (
      I0 => \tx_reg_reg[31]_i_6_n_0\,
      I1 => spistate(2),
      I2 => spistate(1),
      I3 => spistate(0),
      I4 => reset_IBUF,
      I5 => ss_i_3_n_0,
      O => ss0
    );
ss_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => spistate(0),
      I1 => spistate(1),
      I2 => spistate(2),
      O => ss_i_2_n_0
    );
ss_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \delay_counter_reg_n_0_[5]\,
      I1 => \delay_counter_reg_n_0_[6]\,
      I2 => reset_IBUF,
      I3 => txrx_enable,
      I4 => \tx_reg_reg[21]_i_2_n_0\,
      I5 => \delay_counter[6]_i_2_n_0\,
      O => ss_i_3_n_0
    );
ss_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => ss0,
      D => ss_i_2_n_0,
      Q => ss_OBUF,
      R => '0'
    );
\transmit_config_buffer_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => D(5),
      Q => transmit_config_buffer(10),
      R => '0'
    );
\transmit_config_buffer_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => D(6),
      Q => transmit_config_buffer(11),
      R => '0'
    );
\transmit_config_buffer_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => D(7),
      Q => transmit_config_buffer(12),
      R => '0'
    );
\transmit_config_buffer_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => D(8),
      Q => transmit_config_buffer(13),
      R => '0'
    );
\transmit_config_buffer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => '1',
      Q => transmit_config_buffer(1),
      R => '0'
    );
\transmit_config_buffer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => D(0),
      Q => transmit_config_buffer(2),
      R => '0'
    );
\transmit_config_buffer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => D(1),
      Q => transmit_config_buffer(6),
      R => '0'
    );
\transmit_config_buffer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => D(2),
      Q => transmit_config_buffer(7),
      R => '0'
    );
\transmit_config_buffer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => D(3),
      Q => transmit_config_buffer(8),
      R => '0'
    );
\transmit_config_buffer_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => D(4),
      Q => transmit_config_buffer(9),
      R => '0'
    );
\tx_buffer[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E8"
    )
        port map (
      I0 => spistate(1),
      I1 => spistate(2),
      I2 => spistate(0),
      I3 => reset_IBUF,
      O => \tx_buffer[31]_i_1_n_0\
    );
\tx_buffer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => tx_data(0),
      Q => \tx_buffer_reg_n_0_[0]\,
      R => \tx_buffer[31]_i_1_n_0\
    );
\tx_buffer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => tx_data(1),
      Q => \tx_buffer_reg_n_0_[1]\,
      R => \tx_buffer[31]_i_1_n_0\
    );
\tx_buffer_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => tx_data(3),
      Q => \tx_buffer_reg_n_0_[21]\,
      R => \tx_buffer[31]_i_1_n_0\
    );
\tx_buffer_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => tx_data(4),
      Q => \tx_buffer_reg_n_0_[22]\,
      R => \tx_buffer[31]_i_1_n_0\
    );
\tx_buffer_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => tx_data(5),
      Q => \tx_buffer_reg_n_0_[23]\,
      R => \tx_buffer[31]_i_1_n_0\
    );
\tx_buffer_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => tx_data(6),
      Q => \tx_buffer_reg_n_0_[24]\,
      R => \tx_buffer[31]_i_1_n_0\
    );
\tx_buffer_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => tx_data(7),
      Q => \tx_buffer_reg_n_0_[25]\,
      R => \tx_buffer[31]_i_1_n_0\
    );
\tx_buffer_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => tx_data(8),
      Q => \tx_buffer_reg_n_0_[26]\,
      R => \tx_buffer[31]_i_1_n_0\
    );
\tx_buffer_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => tx_data(9),
      Q => \tx_buffer_reg_n_0_[28]\,
      R => \tx_buffer[31]_i_1_n_0\
    );
\tx_buffer_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => tx_data(10),
      Q => \tx_buffer_reg_n_0_[29]\,
      R => \tx_buffer[31]_i_1_n_0\
    );
\tx_buffer_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => tx_data(11),
      Q => \tx_buffer_reg_n_0_[31]\,
      R => \tx_buffer[31]_i_1_n_0\
    );
\tx_buffer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => p_0_in,
      D => tx_data(2),
      Q => \tx_buffer_reg_n_0_[8]\,
      R => \tx_buffer[31]_i_1_n_0\
    );
\tx_reg_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg__0\(7),
      D => \tx_reg_reg[0]_i_1_n_0\,
      G => \tx_reg_reg[0]_i_2_n_0\,
      GE => '1',
      Q => tx_reg(0)
    );
\tx_reg_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => spistate(0),
      I1 => spistate(1),
      I2 => spistate(2),
      I3 => \tx_buffer_reg_n_0_[0]\,
      O => \tx_reg_reg[0]_i_1_n_0\
    );
\tx_reg_reg[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0007"
    )
        port map (
      I0 => \tx_reg_reg[31]_i_6_n_0\,
      I1 => spistate(0),
      I2 => spistate(1),
      I3 => spistate(2),
      O => \tx_reg_reg[0]_i_2_n_0\
    );
\tx_reg_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg__0\(31),
      D => \tx_reg_reg[10]_i_1_n_0\,
      G => \tx_reg_reg[31]_i_2_n_0\,
      GE => '1',
      Q => tx_reg(10)
    );
\tx_reg_reg[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF010001000100"
    )
        port map (
      I0 => spistate(2),
      I1 => spistate(1),
      I2 => spistate(0),
      I3 => transmit_config_buffer(2),
      I4 => tx_reg(9),
      I5 => \tx_reg_reg[31]_i_4_n_0\,
      O => \tx_reg_reg[10]_i_1_n_0\
    );
\tx_reg_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg__0\(31),
      D => \tx_reg_reg[11]_i_1_n_0\,
      G => \tx_reg_reg[31]_i_2_n_0\,
      GE => '1',
      Q => tx_reg(11)
    );
\tx_reg_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \tx_reg_reg[31]_i_4_n_0\,
      I1 => tx_reg(10),
      O => \tx_reg_reg[11]_i_1_n_0\
    );
\tx_reg_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg__0\(31),
      D => \tx_reg_reg[12]_i_1_n_0\,
      G => \tx_reg_reg[31]_i_2_n_0\,
      GE => '1',
      Q => tx_reg(12)
    );
\tx_reg_reg[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \tx_reg_reg[31]_i_4_n_0\,
      I1 => tx_reg(11),
      O => \tx_reg_reg[12]_i_1_n_0\
    );
\tx_reg_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg__0\(31),
      D => \tx_reg_reg[13]_i_1_n_0\,
      G => \tx_reg_reg[31]_i_2_n_0\,
      GE => '1',
      Q => tx_reg(13)
    );
\tx_reg_reg[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \tx_reg_reg[31]_i_4_n_0\,
      I1 => tx_reg(12),
      O => \tx_reg_reg[13]_i_1_n_0\
    );
\tx_reg_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg__0\(31),
      D => \tx_reg_reg[14]_i_1_n_0\,
      G => \tx_reg_reg[31]_i_2_n_0\,
      GE => '1',
      Q => tx_reg(14)
    );
\tx_reg_reg[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF010001000100"
    )
        port map (
      I0 => spistate(2),
      I1 => spistate(1),
      I2 => spistate(0),
      I3 => transmit_config_buffer(6),
      I4 => tx_reg(13),
      I5 => \tx_reg_reg[31]_i_4_n_0\,
      O => \tx_reg_reg[14]_i_1_n_0\
    );
\tx_reg_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg__0\(31),
      D => \tx_reg_reg[15]_i_1_n_0\,
      G => \tx_reg_reg[31]_i_2_n_0\,
      GE => '1',
      Q => tx_reg(15)
    );
\tx_reg_reg[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF010001000100"
    )
        port map (
      I0 => spistate(2),
      I1 => spistate(1),
      I2 => spistate(0),
      I3 => transmit_config_buffer(7),
      I4 => tx_reg(14),
      I5 => \tx_reg_reg[31]_i_4_n_0\,
      O => \tx_reg_reg[15]_i_1_n_0\
    );
\tx_reg_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg__0\(31),
      D => \tx_reg_reg[16]_i_1_n_0\,
      G => \tx_reg_reg[31]_i_2_n_0\,
      GE => '1',
      Q => tx_reg(16)
    );
\tx_reg_reg[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF010001000100"
    )
        port map (
      I0 => spistate(2),
      I1 => spistate(1),
      I2 => spistate(0),
      I3 => transmit_config_buffer(8),
      I4 => tx_reg(15),
      I5 => \tx_reg_reg[31]_i_4_n_0\,
      O => \tx_reg_reg[16]_i_1_n_0\
    );
\tx_reg_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg__0\(31),
      D => \tx_reg_reg[17]_i_1_n_0\,
      G => \tx_reg_reg[31]_i_2_n_0\,
      GE => '1',
      Q => tx_reg(17)
    );
\tx_reg_reg[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \tx_reg_reg[31]_i_5_n_0\,
      I1 => \tx_buffer_reg_n_0_[26]\,
      I2 => transmit_config_buffer(9),
      I3 => \tx_reg_reg[21]_i_2_n_0\,
      I4 => tx_reg(16),
      I5 => \tx_reg_reg[31]_i_4_n_0\,
      O => \tx_reg_reg[17]_i_1_n_0\
    );
\tx_reg_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg__0\(31),
      D => \tx_reg_reg[18]_i_1_n_0\,
      G => \tx_reg_reg[31]_i_2_n_0\,
      GE => '1',
      Q => tx_reg(18)
    );
\tx_reg_reg[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \tx_reg_reg[31]_i_5_n_0\,
      I1 => \tx_buffer_reg_n_0_[28]\,
      I2 => transmit_config_buffer(10),
      I3 => \tx_reg_reg[21]_i_2_n_0\,
      I4 => tx_reg(17),
      I5 => \tx_reg_reg[31]_i_4_n_0\,
      O => \tx_reg_reg[18]_i_1_n_0\
    );
\tx_reg_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg__0\(31),
      D => \tx_reg_reg[19]_i_1_n_0\,
      G => \tx_reg_reg[31]_i_2_n_0\,
      GE => '1',
      Q => tx_reg(19)
    );
\tx_reg_reg[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \tx_reg_reg[31]_i_5_n_0\,
      I1 => \tx_buffer_reg_n_0_[21]\,
      I2 => transmit_config_buffer(11),
      I3 => \tx_reg_reg[21]_i_2_n_0\,
      I4 => tx_reg(18),
      I5 => \tx_reg_reg[31]_i_4_n_0\,
      O => \tx_reg_reg[19]_i_1_n_0\
    );
\tx_reg_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg__0\(7),
      D => \tx_reg_reg[1]_i_1_n_0\,
      G => \tx_reg_reg[31]_i_2_n_0\,
      GE => '1',
      Q => tx_reg(1)
    );
\tx_reg_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => tx_reg(0),
      I1 => \tx_reg_reg[31]_i_4_n_0\,
      I2 => \tx_buffer_reg_n_0_[1]\,
      I3 => \tx_reg_reg[31]_i_5_n_0\,
      O => \tx_reg_reg[1]_i_1_n_0\
    );
\tx_reg_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg__0\(31),
      D => \tx_reg_reg[20]_i_1_n_0\,
      G => \tx_reg_reg[31]_i_2_n_0\,
      GE => '1',
      Q => tx_reg(20)
    );
\tx_reg_reg[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \tx_reg_reg[31]_i_5_n_0\,
      I1 => \tx_buffer_reg_n_0_[22]\,
      I2 => transmit_config_buffer(12),
      I3 => \tx_reg_reg[21]_i_2_n_0\,
      I4 => tx_reg(19),
      I5 => \tx_reg_reg[31]_i_4_n_0\,
      O => \tx_reg_reg[20]_i_1_n_0\
    );
\tx_reg_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg__0\(31),
      D => \tx_reg_reg[21]_i_1_n_0\,
      G => \tx_reg_reg[31]_i_2_n_0\,
      GE => '1',
      Q => tx_reg(21)
    );
\tx_reg_reg[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \tx_reg_reg[31]_i_5_n_0\,
      I1 => \tx_buffer_reg_n_0_[21]\,
      I2 => transmit_config_buffer(13),
      I3 => \tx_reg_reg[21]_i_2_n_0\,
      I4 => tx_reg(20),
      I5 => \tx_reg_reg[31]_i_4_n_0\,
      O => \tx_reg_reg[21]_i_1_n_0\
    );
\tx_reg_reg[21]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => spistate(2),
      I1 => spistate(1),
      I2 => spistate(0),
      O => \tx_reg_reg[21]_i_2_n_0\
    );
\tx_reg_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg__0\(31),
      D => \tx_reg_reg[22]_i_1_n_0\,
      G => \tx_reg_reg[31]_i_2_n_0\,
      GE => '1',
      Q => tx_reg(22)
    );
\tx_reg_reg[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => tx_reg(21),
      I1 => \tx_reg_reg[31]_i_4_n_0\,
      I2 => \tx_buffer_reg_n_0_[22]\,
      I3 => \tx_reg_reg[31]_i_5_n_0\,
      O => \tx_reg_reg[22]_i_1_n_0\
    );
\tx_reg_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg__0\(31),
      D => \tx_reg_reg[23]_i_1_n_0\,
      G => \tx_reg_reg[31]_i_2_n_0\,
      GE => '1',
      Q => tx_reg(23)
    );
\tx_reg_reg[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => tx_reg(22),
      I1 => \tx_reg_reg[31]_i_4_n_0\,
      I2 => \tx_buffer_reg_n_0_[23]\,
      I3 => \tx_reg_reg[31]_i_5_n_0\,
      O => \tx_reg_reg[23]_i_1_n_0\
    );
\tx_reg_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg__0\(31),
      D => \tx_reg_reg[24]_i_1_n_0\,
      G => \tx_reg_reg[31]_i_2_n_0\,
      GE => '1',
      Q => tx_reg(24)
    );
\tx_reg_reg[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => tx_reg(23),
      I1 => \tx_reg_reg[31]_i_4_n_0\,
      I2 => \tx_buffer_reg_n_0_[24]\,
      I3 => \tx_reg_reg[31]_i_5_n_0\,
      O => \tx_reg_reg[24]_i_1_n_0\
    );
\tx_reg_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg__0\(31),
      D => \tx_reg_reg[25]_i_1_n_0\,
      G => \tx_reg_reg[31]_i_2_n_0\,
      GE => '1',
      Q => tx_reg(25)
    );
\tx_reg_reg[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => tx_reg(24),
      I1 => \tx_reg_reg[31]_i_4_n_0\,
      I2 => \tx_buffer_reg_n_0_[25]\,
      I3 => \tx_reg_reg[31]_i_5_n_0\,
      O => \tx_reg_reg[25]_i_1_n_0\
    );
\tx_reg_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg__0\(31),
      D => \tx_reg_reg[26]_i_1_n_0\,
      G => \tx_reg_reg[31]_i_2_n_0\,
      GE => '1',
      Q => tx_reg(26)
    );
\tx_reg_reg[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => tx_reg(25),
      I1 => \tx_reg_reg[31]_i_4_n_0\,
      I2 => \tx_buffer_reg_n_0_[26]\,
      I3 => \tx_reg_reg[31]_i_5_n_0\,
      O => \tx_reg_reg[26]_i_1_n_0\
    );
\tx_reg_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg__0\(31),
      D => \tx_reg_reg[27]_i_1_n_0\,
      G => \tx_reg_reg[31]_i_2_n_0\,
      GE => '1',
      Q => tx_reg(27)
    );
\tx_reg_reg[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \tx_reg_reg[31]_i_4_n_0\,
      I1 => tx_reg(26),
      O => \tx_reg_reg[27]_i_1_n_0\
    );
\tx_reg_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg__0\(31),
      D => \tx_reg_reg[28]_i_1_n_0\,
      G => \tx_reg_reg[31]_i_2_n_0\,
      GE => '1',
      Q => tx_reg(28)
    );
\tx_reg_reg[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => tx_reg(27),
      I1 => \tx_reg_reg[31]_i_4_n_0\,
      I2 => \tx_buffer_reg_n_0_[28]\,
      I3 => \tx_reg_reg[31]_i_5_n_0\,
      O => \tx_reg_reg[28]_i_1_n_0\
    );
\tx_reg_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg__0\(31),
      D => \tx_reg_reg[29]_i_1_n_0\,
      G => \tx_reg_reg[31]_i_2_n_0\,
      GE => '1',
      Q => tx_reg(29)
    );
\tx_reg_reg[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => tx_reg(28),
      I1 => \tx_reg_reg[31]_i_4_n_0\,
      I2 => \tx_buffer_reg_n_0_[29]\,
      I3 => \tx_reg_reg[31]_i_5_n_0\,
      O => \tx_reg_reg[29]_i_1_n_0\
    );
\tx_reg_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg__0\(7),
      D => \tx_reg_reg[2]_i_1_n_0\,
      G => \tx_reg_reg[31]_i_2_n_0\,
      GE => '1',
      Q => tx_reg(2)
    );
\tx_reg_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => tx_reg(1),
      I1 => \tx_reg_reg[31]_i_4_n_0\,
      I2 => \tx_buffer_reg_n_0_[8]\,
      I3 => \tx_reg_reg[31]_i_5_n_0\,
      O => \tx_reg_reg[2]_i_1_n_0\
    );
\tx_reg_reg[30]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg__0\(31),
      D => \tx_reg_reg[30]_i_1_n_0\,
      G => \tx_reg_reg[31]_i_2_n_0\,
      GE => '1',
      Q => tx_reg(30)
    );
\tx_reg_reg[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => tx_reg(29),
      I1 => \tx_reg_reg[31]_i_4_n_0\,
      I2 => \tx_buffer_reg_n_0_[31]\,
      I3 => \tx_reg_reg[31]_i_5_n_0\,
      O => \tx_reg_reg[30]_i_1_n_0\
    );
\tx_reg_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg__0\(31),
      D => \tx_reg_reg[31]_i_1_n_0\,
      G => \tx_reg_reg[31]_i_2_n_0\,
      GE => '1',
      Q => \tx_buffer_reg[31]_0\(0)
    );
\tx_reg_reg[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => tx_reg(30),
      I1 => \tx_reg_reg[31]_i_4_n_0\,
      I2 => \tx_buffer_reg_n_0_[31]\,
      I3 => \tx_reg_reg[31]_i_5_n_0\,
      O => \tx_reg_reg[31]_i_1_n_0\
    );
\tx_reg_reg[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444F444F444F"
    )
        port map (
      I0 => \^sclk_obuf\,
      I1 => spiclklast,
      I2 => spistate(2),
      I3 => spistate(1),
      I4 => spistate(0),
      I5 => \tx_reg_reg[31]_i_6_n_0\,
      O => \tx_reg_reg[31]_i_2_n_0\
    );
\tx_reg_reg[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => spistate(2),
      I1 => spistate(1),
      I2 => spistate(0),
      O => \tx_reg__0\(31)
    );
\tx_reg_reg[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => spistate(0),
      I1 => \tx_reg_reg[31]_i_6_n_0\,
      I2 => spistate(2),
      I3 => spistate(1),
      O => \tx_reg_reg[31]_i_4_n_0\
    );
\tx_reg_reg[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => spistate(1),
      I1 => spistate(2),
      I2 => spistate(0),
      I3 => \tx_reg_reg[31]_i_6_n_0\,
      O => \tx_reg_reg[31]_i_5_n_0\
    );
\tx_reg_reg[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \bitcounter_reg_n_0_[4]\,
      I1 => \bitcounter_reg_n_0_[2]\,
      I2 => \bitcounter_reg_n_0_[0]\,
      I3 => \bitcounter_reg_n_0_[1]\,
      I4 => \bitcounter_reg_n_0_[3]\,
      I5 => \bitcounter_reg_n_0_[5]\,
      O => \tx_reg_reg[31]_i_6_n_0\
    );
\tx_reg_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg__0\(7),
      D => \tx_reg_reg[3]_i_1_n_0\,
      G => \tx_reg_reg[31]_i_2_n_0\,
      GE => '1',
      Q => tx_reg(3)
    );
\tx_reg_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \tx_reg_reg[31]_i_4_n_0\,
      I1 => tx_reg(2),
      O => \tx_reg_reg[3]_i_1_n_0\
    );
\tx_reg_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg__0\(7),
      D => \tx_reg_reg[4]_i_1_n_0\,
      G => \tx_reg_reg[31]_i_2_n_0\,
      GE => '1',
      Q => tx_reg(4)
    );
\tx_reg_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \tx_reg_reg[31]_i_4_n_0\,
      I1 => tx_reg(3),
      O => \tx_reg_reg[4]_i_1_n_0\
    );
\tx_reg_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg__0\(7),
      D => \tx_reg_reg[5]_i_1_n_0\,
      G => \tx_reg_reg[31]_i_2_n_0\,
      GE => '1',
      Q => tx_reg(5)
    );
\tx_reg_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => tx_reg(4),
      I1 => \tx_reg_reg[31]_i_4_n_0\,
      I2 => \tx_buffer_reg_n_0_[8]\,
      I3 => \tx_reg_reg[31]_i_5_n_0\,
      O => \tx_reg_reg[5]_i_1_n_0\
    );
\tx_reg_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg__0\(7),
      D => \tx_reg_reg[6]_i_1_n_0\,
      G => \tx_reg_reg[31]_i_2_n_0\,
      GE => '1',
      Q => tx_reg(6)
    );
\tx_reg_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => tx_reg(5),
      I1 => \tx_reg_reg[31]_i_4_n_0\,
      I2 => \tx_buffer_reg_n_0_[8]\,
      I3 => \tx_reg_reg[31]_i_5_n_0\,
      O => \tx_reg_reg[6]_i_1_n_0\
    );
\tx_reg_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg__0\(7),
      D => \tx_reg_reg[7]_i_1_n_0\,
      G => \tx_reg_reg[31]_i_2_n_0\,
      GE => '1',
      Q => tx_reg(7)
    );
\tx_reg_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \tx_reg_reg[31]_i_4_n_0\,
      I1 => tx_reg(6),
      O => \tx_reg_reg[7]_i_1_n_0\
    );
\tx_reg_reg[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => spistate(1),
      I1 => spistate(0),
      O => \tx_reg__0\(7)
    );
\tx_reg_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg__0\(31),
      D => \tx_reg_reg[8]_i_1_n_0\,
      G => \tx_reg_reg[31]_i_2_n_0\,
      GE => '1',
      Q => tx_reg(8)
    );
\tx_reg_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \tx_reg_reg[31]_i_5_n_0\,
      I1 => \tx_buffer_reg_n_0_[8]\,
      I2 => transmit_config_buffer(1),
      I3 => \tx_reg_reg[21]_i_2_n_0\,
      I4 => tx_reg(7),
      I5 => \tx_reg_reg[31]_i_4_n_0\,
      O => \tx_reg_reg[8]_i_1_n_0\
    );
\tx_reg_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \tx_reg__0\(31),
      D => \tx_reg_reg[9]_i_1_n_0\,
      G => \tx_reg_reg[31]_i_2_n_0\,
      GE => '1',
      Q => tx_reg(9)
    );
\tx_reg_reg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF010001000100"
    )
        port map (
      I0 => spistate(2),
      I1 => spistate(1),
      I2 => spistate(0),
      I3 => transmit_config_buffer(1),
      I4 => tx_reg(8),
      I5 => \tx_reg_reg[31]_i_4_n_0\,
      O => \tx_reg_reg[9]_i_1_n_0\
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
    mosi : out STD_LOGIC;
    miso : in STD_LOGIC;
    sclk : out STD_LOGIC;
    ss : out STD_LOGIC;
    tx_mode : in STD_LOGIC;
    idle_mode : in STD_LOGIC;
    LED : out STD_LOGIC_VECTOR ( 15 downto 0 );
    RGBLEDOUT : out STD_LOGIC
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
    probe0 : in STD_LOGIC_VECTOR ( 0 to 1 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 5 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 8 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe11 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component u_ila_0_CV;
  signal LED_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal RGBLEDOUT_OBUF : STD_LOGIC;
  signal bsb : STD_LOGIC_VECTOR ( 4 downto 3 );
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal idle_mode_IBUF : STD_LOGIC;
  signal mosi_OBUF : STD_LOGIC;
  signal offset_address : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal reset_IBUF : STD_LOGIC;
  signal rwb : STD_LOGIC;
  signal rx_reg0 : STD_LOGIC;
  signal sclk_OBUF : STD_LOGIC;
  signal sl_iport0_o_0 : STD_LOGIC_VECTOR ( 36 downto 0 );
  signal sl_oport0_i_0 : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal spi_busy : STD_LOGIC;
  signal ss_OBUF : STD_LOGIC;
  signal tx_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tx_mode_IBUF : STD_LOGIC;
  signal txrx_enable : STD_LOGIC;
  signal txrx_unit_n_20 : STD_LOGIC;
  attribute DEBUG_CORE_INFO : string;
  attribute DEBUG_CORE_INFO of dbg_hub : label is "dbg_hub,labtools_xsdbm_v3_00_a,{C_BSCAN_MODE=false,C_BSCAN_MODE_WITH_CORE=false,C_CLK_INPUT_FREQ_HZ=300000000,C_ENABLE_CLK_DIVIDER=false,C_EN_BSCANID_VEC=false,C_NUM_BSCAN_MASTER_PORTS=0,C_TWO_PRIM_MODE=false,C_USER_SCAN_CHAIN=1,C_USE_EXT_BSCAN=false,C_XSDB_NUM_SLAVES=1,component_name=dbg_hub_CV}";
  attribute DEBUG_PORT_clk : string;
  attribute DEBUG_PORT_clk of dbg_hub : label is "";
  attribute IS_DEBUG_CORE : boolean;
  attribute IS_DEBUG_CORE of dbg_hub : label is std.standard.true;
  attribute DEBUG_CORE_INFO of u_ila_0 : label is "u_ila_0,labtools_ila_v6_00_a,{ALL_PROBE_SAME_MU=true,ALL_PROBE_SAME_MU_CNT=1,C_ADV_TRIGGER=false,C_DATA_DEPTH=1024,C_EN_STRG_QUAL=false,C_INPUT_PIPE_STAGES=0,C_NUM_OF_PROBES=12,C_PROBE0_TYPE=0,C_PROBE0_WIDTH=2,C_PROBE10_TYPE=0,C_PROBE10_WIDTH=1,C_PROBE11_TYPE=0,C_PROBE11_WIDTH=1,C_PROBE1_TYPE=0,C_PROBE1_WIDTH=6,C_PROBE2_TYPE=0,C_PROBE2_WIDTH=9,C_PROBE3_TYPE=0,C_PROBE3_WIDTH=1,C_PROBE4_TYPE=0,C_PROBE4_WIDTH=1,C_PROBE5_TYPE=0,C_PROBE5_WIDTH=1,C_PROBE6_TYPE=0,C_PROBE6_WIDTH=1,C_PROBE7_TYPE=0,C_PROBE7_WIDTH=1,C_PROBE8_TYPE=0,C_PROBE8_WIDTH=1,C_PROBE9_TYPE=0,C_PROBE9_WIDTH=1,C_TRIGIN_EN=0,C_TRIGOUT_EN=0,component_name=u_ila_0_CV}";
  attribute DEBUG_PORT_clk of u_ila_0 : label is "n:clk_IBUF_BUFG";
  attribute DEBUG_PORT_probe0 : string;
  attribute DEBUG_PORT_probe0 of u_ila_0 : label is "n:bsb[4],n:bsb[3]";
  attribute DEBUG_PORT_probe1 : string;
  attribute DEBUG_PORT_probe1 of u_ila_0 : label is "n:LED_OBUF[5],n:LED_OBUF[4],n:LED_OBUF[3],n:LED_OBUF[2],n:LED_OBUF[1],n:LED_OBUF[0]";
  attribute DEBUG_PORT_probe10 : string;
  attribute DEBUG_PORT_probe10 of u_ila_0 : label is "n:tx_mode_IBUF";
  attribute DEBUG_PORT_probe11 : string;
  attribute DEBUG_PORT_probe11 of u_ila_0 : label is "n:txrx_enable";
  attribute DEBUG_PORT_probe2 : string;
  attribute DEBUG_PORT_probe2 of u_ila_0 : label is "n:tx_data[31],n:tx_data[29],n:tx_data[28],n:tx_data[26],n:tx_data[25],n:tx_data[24],n:tx_data[23],n:tx_data[22],n:tx_data[21]";
  attribute DEBUG_PORT_probe3 : string;
  attribute DEBUG_PORT_probe3 of u_ila_0 : label is "n:idle_mode_IBUF";
  attribute DEBUG_PORT_probe4 : string;
  attribute DEBUG_PORT_probe4 of u_ila_0 : label is "n:reset_IBUF";
  attribute DEBUG_PORT_probe5 : string;
  attribute DEBUG_PORT_probe5 of u_ila_0 : label is "n:RGBLEDOUT_OBUF";
  attribute DEBUG_PORT_probe6 : string;
  attribute DEBUG_PORT_probe6 of u_ila_0 : label is "n:rwb";
  attribute DEBUG_PORT_probe7 : string;
  attribute DEBUG_PORT_probe7 of u_ila_0 : label is "n:sclk_OBUF";
  attribute DEBUG_PORT_probe8 : string;
  attribute DEBUG_PORT_probe8 of u_ila_0 : label is "n:spi_busy";
  attribute DEBUG_PORT_probe9 : string;
  attribute DEBUG_PORT_probe9 of u_ila_0 : label is "n:ss_OBUF";
  attribute IS_DEBUG_CORE of u_ila_0 : label is std.standard.true;
begin
\LED_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(0),
      O => LED(0)
    );
\LED_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(10),
      O => LED(10)
    );
\LED_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(11),
      O => LED(11)
    );
\LED_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(12),
      O => LED(12)
    );
\LED_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(13),
      O => LED(13)
    );
\LED_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(14),
      O => LED(14)
    );
\LED_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(15),
      O => LED(15)
    );
\LED_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(1),
      O => LED(1)
    );
\LED_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(2),
      O => LED(2)
    );
\LED_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(3),
      O => LED(3)
    );
\LED_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(4),
      O => LED(4)
    );
\LED_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(5),
      O => LED(5)
    );
\LED_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(6),
      O => LED(6)
    );
\LED_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(7),
      O => LED(7)
    );
\LED_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(8),
      O => LED(8)
    );
\LED_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(9),
      O => LED(9)
    );
RGBLEDOUT_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => RGBLEDOUT_OBUF,
      O => RGBLEDOUT
    );
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
dbg_hub: component dbg_hub_CV
     port map (
      clk => clk_IBUF_BUFG,
      sl_iport0_o(36 downto 0) => sl_iport0_o_0(36 downto 0),
      sl_oport0_i(16 downto 0) => sl_oport0_i_0(16 downto 0)
    );
idle_mode_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => idle_mode,
      O => idle_mode_IBUF
    );
miso_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => miso,
      O => RGBLEDOUT_OBUF
    );
mosi_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => mosi_OBUF,
      O => mosi
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
\rx_reg_reg[31]_i_1\: unisim.vcomponents.BUFG
     port map (
      I => txrx_unit_n_20,
      O => rx_reg0
    );
sclk_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => sclk_OBUF,
      O => sclk
    );
spi_m: entity work.spi_master
     port map (
      D(8 downto 3) => offset_address(5 downto 0),
      D(2 downto 1) => bsb(4 downto 3),
      D(0) => rwb,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      idle_mode_IBUF => idle_mode_IBUF,
      reset_IBUF => reset_IBUF,
      spi_busy => spi_busy,
      tx_data(11) => tx_data(31),
      tx_data(10 downto 9) => tx_data(29 downto 28),
      tx_data(8 downto 3) => tx_data(26 downto 21),
      tx_data(2) => tx_data(8),
      tx_data(1 downto 0) => tx_data(1 downto 0),
      tx_mode_IBUF => tx_mode_IBUF,
      txrx_enable => txrx_enable
    );
ss_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => ss_OBUF,
      O => ss
    );
tx_mode_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => tx_mode,
      O => tx_mode_IBUF
    );
txrx_unit: entity work.transceive_unit
     port map (
      D(8 downto 3) => offset_address(5 downto 0),
      D(2 downto 1) => bsb(4 downto 3),
      D(0) => rwb,
      E(0) => rx_reg0,
      \FSM_sequential_spistate_reg[2]_0\ => txrx_unit_n_20,
      Q(15 downto 0) => LED_OBUF(15 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      reset_IBUF => reset_IBUF,
      \rx_reg_reg[1]_0\(0) => RGBLEDOUT_OBUF,
      sclk_OBUF => sclk_OBUF,
      spi_busy => spi_busy,
      ss_OBUF => ss_OBUF,
      \tx_buffer_reg[31]_0\(0) => mosi_OBUF,
      tx_data(11) => tx_data(31),
      tx_data(10 downto 9) => tx_data(29 downto 28),
      tx_data(8 downto 3) => tx_data(26 downto 21),
      tx_data(2) => tx_data(8),
      tx_data(1 downto 0) => tx_data(1 downto 0),
      txrx_enable => txrx_enable
    );
u_ila_0: component u_ila_0_CV
     port map (
      SL_IPORT_I(36 downto 0) => sl_iport0_o_0(36 downto 0),
      SL_OPORT_O(16 downto 0) => sl_oport0_i_0(16 downto 0),
      clk => clk_IBUF_BUFG,
      probe0(0) => bsb(3),
      probe0(1) => bsb(4),
      probe1(0) => LED_OBUF(0),
      probe1(1) => LED_OBUF(1),
      probe1(2) => LED_OBUF(2),
      probe1(3) => LED_OBUF(3),
      probe1(4) => LED_OBUF(4),
      probe1(5) => LED_OBUF(5),
      probe10(0) => tx_mode_IBUF,
      probe11(0) => txrx_enable,
      probe2(0) => tx_data(21),
      probe2(1) => tx_data(22),
      probe2(2) => tx_data(23),
      probe2(3) => tx_data(24),
      probe2(4) => tx_data(25),
      probe2(5) => tx_data(26),
      probe2(6) => tx_data(28),
      probe2(7) => tx_data(29),
      probe2(8) => tx_data(31),
      probe3(0) => idle_mode_IBUF,
      probe4(0) => reset_IBUF,
      probe5(0) => RGBLEDOUT_OBUF,
      probe6(0) => rwb,
      probe7(0) => sclk_OBUF,
      probe8(0) => spi_busy,
      probe9(0) => ss_OBUF
    );
end STRUCTURE;
