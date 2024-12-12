// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Oct 27 12:57:37 2024
// Host        : DESKTOP-FEDBMRF running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/danie/w5500StateMachine/w5500StateMachine.sim/sim_1/synth/timing/xsim/spi_master_time_synth.v
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM32M_UNIQ_BASE_
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD284
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD285
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD288
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD289
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD292
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32X1D_UNIQ_BASE_
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

module RAM32X1D_HD283
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

module RAM32X1D_HD286
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

module RAM32X1D_HD287
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

module RAM32X1D_HD290
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

module RAM32X1D_HD291
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

module dbg_hub_CV
   (clk,
    sl_iport0_o,
    sl_oport0_i);
  input clk;
  output [36:0]sl_iport0_o;
  input [16:0]sl_oport0_i;


endmodule

module u_ila_0_CV
   (clk,
    SL_IPORT_I,
    SL_OPORT_O,
    probe0,
    probe1,
    probe2,
    probe3,
    probe4,
    probe5,
    probe6,
    probe7);
  input clk;
  input [36:0]SL_IPORT_I;
  output [16:0]SL_OPORT_O;
  input [0:7]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;
  input [0:0]probe6;
  input [0:0]probe7;


endmodule

(* CHECK_LICENSE_TYPE = "axis_data_fifo_8bit,axis_data_fifo_v2_0_11_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_data_fifo_v2_0_11_top,Vivado 2023.2" *) 
module axis_data_fifo_8bit
   (s_axis_aresetn,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_CLKIF, ASSOCIATED_BUSIF S_AXIS, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input s_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [7:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [7:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tlast;

  wire [7:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [7:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire NLW_inst_almost_empty_UNCONNECTED;
  wire NLW_inst_almost_full_UNCONNECTED;
  wire NLW_inst_dbiterr_UNCONNECTED;
  wire NLW_inst_prog_empty_UNCONNECTED;
  wire NLW_inst_prog_full_UNCONNECTED;
  wire NLW_inst_sbiterr_UNCONNECTED;
  wire [31:0]NLW_inst_axis_rd_data_count_UNCONNECTED;
  wire [31:0]NLW_inst_axis_wr_data_count_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tuser_UNCONNECTED;

  (* C_ACLKEN_CONV_MODE = "0" *) 
  (* C_AXIS_SIGNAL_SET = "19" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "1" *) 
  (* C_ECC_MODE = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FIFO_DEPTH = "16" *) 
  (* C_FIFO_MEMORY_TYPE = "auto" *) 
  (* C_FIFO_MODE = "1" *) 
  (* C_IS_ACLK_ASYNC = "0" *) 
  (* C_PROG_EMPTY_THRESH = "5" *) 
  (* C_PROG_FULL_THRESH = "11" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_USE_ADV_FEATURES = "825241648" *) 
  (* G_INDX_SS_TDATA = "1" *) 
  (* G_INDX_SS_TDEST = "6" *) 
  (* G_INDX_SS_TID = "5" *) 
  (* G_INDX_SS_TKEEP = "3" *) 
  (* G_INDX_SS_TLAST = "4" *) 
  (* G_INDX_SS_TREADY = "0" *) 
  (* G_INDX_SS_TSTRB = "2" *) 
  (* G_INDX_SS_TUSER = "7" *) 
  (* G_MASK_SS_TDATA = "2" *) 
  (* G_MASK_SS_TDEST = "64" *) 
  (* G_MASK_SS_TID = "32" *) 
  (* G_MASK_SS_TKEEP = "8" *) 
  (* G_MASK_SS_TLAST = "16" *) 
  (* G_MASK_SS_TREADY = "1" *) 
  (* G_MASK_SS_TSTRB = "4" *) 
  (* G_MASK_SS_TUSER = "128" *) 
  (* G_TASK_SEVERITY_ERR = "2" *) 
  (* G_TASK_SEVERITY_INFO = "0" *) 
  (* G_TASK_SEVERITY_WARNING = "1" *) 
  (* LP_CDC_SYNC_STAGES = "3" *) 
  (* LP_CLOCKING_MODE = "common_clock" *) 
  (* LP_ECC_MODE = "no_ecc" *) 
  (* LP_FIFO_DEPTH = "16" *) 
  (* LP_FIFO_MEMORY_TYPE = "auto" *) 
  (* LP_M_ACLKEN_CAN_TOGGLE = "0" *) 
  (* LP_PACKET_FIFO = "false" *) 
  (* LP_PROG_EMPTY_THRESH = "5" *) 
  (* LP_PROG_FULL_THRESH = "11" *) 
  (* LP_RD_DATA_COUNT_WIDTH = "5" *) 
  (* LP_RELATED_CLOCKS = "0" *) 
  (* LP_S_ACLKEN_CAN_TOGGLE = "0" *) 
  (* LP_TDATA_WIDTH = "8" *) 
  (* LP_TDEST_WIDTH = "1" *) 
  (* LP_TID_WIDTH = "1" *) 
  (* LP_TUSER_WIDTH = "1" *) 
  (* LP_USE_ADV_FEATURES = "825241648" *) 
  (* LP_WR_DATA_COUNT_WIDTH = "5" *) 
  axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top inst
       (.almost_empty(NLW_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_inst_almost_full_UNCONNECTED),
        .axis_rd_data_count(NLW_inst_axis_rd_data_count_UNCONNECTED[31:0]),
        .axis_wr_data_count(NLW_inst_axis_wr_data_count_UNCONNECTED[31:0]),
        .dbiterr(NLW_inst_dbiterr_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .m_axis_aclk(1'b0),
        .m_axis_aclken(1'b1),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(NLW_inst_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_inst_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_inst_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_inst_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_inst_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(m_axis_tvalid),
        .prog_empty(NLW_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_inst_prog_full_UNCONNECTED),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aclken(1'b1),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b1),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(1'b1),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(s_axis_tvalid),
        .sbiterr(NLW_inst_sbiterr_UNCONNECTED));
endmodule

(* CHECK_LICENSE_TYPE = "axis_data_fifo_8bit,axis_data_fifo_v2_0_11_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_data_fifo_v2_0_11_top,Vivado 2023.2" *) 
module axis_data_fifo_8bit_HD259
   (s_axis_aresetn,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tlast,
    s_axis_tdata,
    m_axis_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_CLKIF, ASSOCIATED_BUSIF S_AXIS, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input s_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [7:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [7:0]m_axis_tdata;

  wire [7:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [7:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire NLW_inst_almost_empty_UNCONNECTED;
  wire NLW_inst_almost_full_UNCONNECTED;
  wire NLW_inst_dbiterr_UNCONNECTED;
  wire NLW_inst_prog_empty_UNCONNECTED;
  wire NLW_inst_prog_full_UNCONNECTED;
  wire NLW_inst_sbiterr_UNCONNECTED;
  wire [31:0]NLW_inst_axis_rd_data_count_UNCONNECTED;
  wire [31:0]NLW_inst_axis_wr_data_count_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tuser_UNCONNECTED;

  (* C_ACLKEN_CONV_MODE = "0" *) 
  (* C_AXIS_SIGNAL_SET = "19" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "1" *) 
  (* C_ECC_MODE = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FIFO_DEPTH = "16" *) 
  (* C_FIFO_MEMORY_TYPE = "auto" *) 
  (* C_FIFO_MODE = "1" *) 
  (* C_IS_ACLK_ASYNC = "0" *) 
  (* C_PROG_EMPTY_THRESH = "5" *) 
  (* C_PROG_FULL_THRESH = "11" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_USE_ADV_FEATURES = "825241648" *) 
  (* G_INDX_SS_TDATA = "1" *) 
  (* G_INDX_SS_TDEST = "6" *) 
  (* G_INDX_SS_TID = "5" *) 
  (* G_INDX_SS_TKEEP = "3" *) 
  (* G_INDX_SS_TLAST = "4" *) 
  (* G_INDX_SS_TREADY = "0" *) 
  (* G_INDX_SS_TSTRB = "2" *) 
  (* G_INDX_SS_TUSER = "7" *) 
  (* G_MASK_SS_TDATA = "2" *) 
  (* G_MASK_SS_TDEST = "64" *) 
  (* G_MASK_SS_TID = "32" *) 
  (* G_MASK_SS_TKEEP = "8" *) 
  (* G_MASK_SS_TLAST = "16" *) 
  (* G_MASK_SS_TREADY = "1" *) 
  (* G_MASK_SS_TSTRB = "4" *) 
  (* G_MASK_SS_TUSER = "128" *) 
  (* G_TASK_SEVERITY_ERR = "2" *) 
  (* G_TASK_SEVERITY_INFO = "0" *) 
  (* G_TASK_SEVERITY_WARNING = "1" *) 
  (* LP_CDC_SYNC_STAGES = "3" *) 
  (* LP_CLOCKING_MODE = "common_clock" *) 
  (* LP_ECC_MODE = "no_ecc" *) 
  (* LP_FIFO_DEPTH = "16" *) 
  (* LP_FIFO_MEMORY_TYPE = "auto" *) 
  (* LP_M_ACLKEN_CAN_TOGGLE = "0" *) 
  (* LP_PACKET_FIFO = "false" *) 
  (* LP_PROG_EMPTY_THRESH = "5" *) 
  (* LP_PROG_FULL_THRESH = "11" *) 
  (* LP_RD_DATA_COUNT_WIDTH = "5" *) 
  (* LP_RELATED_CLOCKS = "0" *) 
  (* LP_S_ACLKEN_CAN_TOGGLE = "0" *) 
  (* LP_TDATA_WIDTH = "8" *) 
  (* LP_TDEST_WIDTH = "1" *) 
  (* LP_TID_WIDTH = "1" *) 
  (* LP_TUSER_WIDTH = "1" *) 
  (* LP_USE_ADV_FEATURES = "825241648" *) 
  (* LP_WR_DATA_COUNT_WIDTH = "5" *) 
  axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top_HD260 inst
       (.almost_empty(NLW_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_inst_almost_full_UNCONNECTED),
        .axis_rd_data_count(NLW_inst_axis_rd_data_count_UNCONNECTED[31:0]),
        .axis_wr_data_count(NLW_inst_axis_wr_data_count_UNCONNECTED[31:0]),
        .dbiterr(NLW_inst_dbiterr_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .m_axis_aclk(1'b0),
        .m_axis_aclken(1'b1),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(NLW_inst_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_inst_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_inst_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_inst_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_inst_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(m_axis_tvalid),
        .prog_empty(NLW_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_inst_prog_full_UNCONNECTED),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aclken(1'b1),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b1),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(1'b1),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(s_axis_tvalid),
        .sbiterr(NLW_inst_sbiterr_UNCONNECTED));
endmodule

(* CHECK_LICENSE_TYPE = "axis_data_fifo_8bit,axis_data_fifo_v2_0_11_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_data_fifo_v2_0_11_top,Vivado 2023.2" *) 
module axis_data_fifo_8bit_HD271
   (s_axis_aresetn,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tlast,
    s_axis_tdata,
    m_axis_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_CLKIF, ASSOCIATED_BUSIF S_AXIS, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input s_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [7:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [7:0]m_axis_tdata;

  wire [7:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [7:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire NLW_inst_almost_empty_UNCONNECTED;
  wire NLW_inst_almost_full_UNCONNECTED;
  wire NLW_inst_dbiterr_UNCONNECTED;
  wire NLW_inst_prog_empty_UNCONNECTED;
  wire NLW_inst_prog_full_UNCONNECTED;
  wire NLW_inst_sbiterr_UNCONNECTED;
  wire [31:0]NLW_inst_axis_rd_data_count_UNCONNECTED;
  wire [31:0]NLW_inst_axis_wr_data_count_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tuser_UNCONNECTED;

  (* C_ACLKEN_CONV_MODE = "0" *) 
  (* C_AXIS_SIGNAL_SET = "19" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "1" *) 
  (* C_ECC_MODE = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FIFO_DEPTH = "16" *) 
  (* C_FIFO_MEMORY_TYPE = "auto" *) 
  (* C_FIFO_MODE = "1" *) 
  (* C_IS_ACLK_ASYNC = "0" *) 
  (* C_PROG_EMPTY_THRESH = "5" *) 
  (* C_PROG_FULL_THRESH = "11" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_USE_ADV_FEATURES = "825241648" *) 
  (* G_INDX_SS_TDATA = "1" *) 
  (* G_INDX_SS_TDEST = "6" *) 
  (* G_INDX_SS_TID = "5" *) 
  (* G_INDX_SS_TKEEP = "3" *) 
  (* G_INDX_SS_TLAST = "4" *) 
  (* G_INDX_SS_TREADY = "0" *) 
  (* G_INDX_SS_TSTRB = "2" *) 
  (* G_INDX_SS_TUSER = "7" *) 
  (* G_MASK_SS_TDATA = "2" *) 
  (* G_MASK_SS_TDEST = "64" *) 
  (* G_MASK_SS_TID = "32" *) 
  (* G_MASK_SS_TKEEP = "8" *) 
  (* G_MASK_SS_TLAST = "16" *) 
  (* G_MASK_SS_TREADY = "1" *) 
  (* G_MASK_SS_TSTRB = "4" *) 
  (* G_MASK_SS_TUSER = "128" *) 
  (* G_TASK_SEVERITY_ERR = "2" *) 
  (* G_TASK_SEVERITY_INFO = "0" *) 
  (* G_TASK_SEVERITY_WARNING = "1" *) 
  (* LP_CDC_SYNC_STAGES = "3" *) 
  (* LP_CLOCKING_MODE = "common_clock" *) 
  (* LP_ECC_MODE = "no_ecc" *) 
  (* LP_FIFO_DEPTH = "16" *) 
  (* LP_FIFO_MEMORY_TYPE = "auto" *) 
  (* LP_M_ACLKEN_CAN_TOGGLE = "0" *) 
  (* LP_PACKET_FIFO = "false" *) 
  (* LP_PROG_EMPTY_THRESH = "5" *) 
  (* LP_PROG_FULL_THRESH = "11" *) 
  (* LP_RD_DATA_COUNT_WIDTH = "5" *) 
  (* LP_RELATED_CLOCKS = "0" *) 
  (* LP_S_ACLKEN_CAN_TOGGLE = "0" *) 
  (* LP_TDATA_WIDTH = "8" *) 
  (* LP_TDEST_WIDTH = "1" *) 
  (* LP_TID_WIDTH = "1" *) 
  (* LP_TUSER_WIDTH = "1" *) 
  (* LP_USE_ADV_FEATURES = "825241648" *) 
  (* LP_WR_DATA_COUNT_WIDTH = "5" *) 
  axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top_HD272 inst
       (.almost_empty(NLW_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_inst_almost_full_UNCONNECTED),
        .axis_rd_data_count(NLW_inst_axis_rd_data_count_UNCONNECTED[31:0]),
        .axis_wr_data_count(NLW_inst_axis_wr_data_count_UNCONNECTED[31:0]),
        .dbiterr(NLW_inst_dbiterr_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .m_axis_aclk(1'b0),
        .m_axis_aclken(1'b1),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(NLW_inst_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_inst_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_inst_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_inst_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_inst_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(m_axis_tvalid),
        .prog_empty(NLW_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_inst_prog_full_UNCONNECTED),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aclken(1'b1),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b1),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(1'b1),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(s_axis_tvalid),
        .sbiterr(NLW_inst_sbiterr_UNCONNECTED));
endmodule

(* C_ACLKEN_CONV_MODE = "0" *) (* C_AXIS_SIGNAL_SET = "19" *) (* C_AXIS_TDATA_WIDTH = "8" *) 
(* C_AXIS_TDEST_WIDTH = "1" *) (* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TUSER_WIDTH = "1" *) 
(* C_ECC_MODE = "0" *) (* C_FAMILY = "artix7" *) (* C_FIFO_DEPTH = "16" *) 
(* C_FIFO_MEMORY_TYPE = "auto" *) (* C_FIFO_MODE = "1" *) (* C_IS_ACLK_ASYNC = "0" *) 
(* C_PROG_EMPTY_THRESH = "5" *) (* C_PROG_FULL_THRESH = "11" *) (* C_SYNCHRONIZER_STAGE = "3" *) 
(* C_USE_ADV_FEATURES = "825241648" *) (* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TDEST = "6" *) 
(* G_INDX_SS_TID = "5" *) (* G_INDX_SS_TKEEP = "3" *) (* G_INDX_SS_TLAST = "4" *) 
(* G_INDX_SS_TREADY = "0" *) (* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TUSER = "7" *) 
(* G_MASK_SS_TDATA = "2" *) (* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TID = "32" *) 
(* G_MASK_SS_TKEEP = "8" *) (* G_MASK_SS_TLAST = "16" *) (* G_MASK_SS_TREADY = "1" *) 
(* G_MASK_SS_TSTRB = "4" *) (* G_MASK_SS_TUSER = "128" *) (* G_TASK_SEVERITY_ERR = "2" *) 
(* G_TASK_SEVERITY_INFO = "0" *) (* G_TASK_SEVERITY_WARNING = "1" *) (* LP_CDC_SYNC_STAGES = "3" *) 
(* LP_CLOCKING_MODE = "common_clock" *) (* LP_ECC_MODE = "no_ecc" *) (* LP_FIFO_DEPTH = "16" *) 
(* LP_FIFO_MEMORY_TYPE = "auto" *) (* LP_M_ACLKEN_CAN_TOGGLE = "0" *) (* LP_PACKET_FIFO = "false" *) 
(* LP_PROG_EMPTY_THRESH = "5" *) (* LP_PROG_FULL_THRESH = "11" *) (* LP_RD_DATA_COUNT_WIDTH = "5" *) 
(* LP_RELATED_CLOCKS = "0" *) (* LP_S_ACLKEN_CAN_TOGGLE = "0" *) (* LP_TDATA_WIDTH = "8" *) 
(* LP_TDEST_WIDTH = "1" *) (* LP_TID_WIDTH = "1" *) (* LP_TUSER_WIDTH = "1" *) 
(* LP_USE_ADV_FEATURES = "825241648" *) (* LP_WR_DATA_COUNT_WIDTH = "5" *) (* ORIG_REF_NAME = "axis_data_fifo_v2_0_11_top" *) 
module axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top
   (s_axis_aclk,
    s_axis_aresetn,
    s_axis_aclken,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    almost_full,
    prog_full,
    axis_wr_data_count,
    injectsbiterr,
    injectdbiterr,
    m_axis_aclk,
    m_axis_aclken,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    almost_empty,
    prog_empty,
    axis_rd_data_count,
    sbiterr,
    dbiterr);
  input s_axis_aclk;
  input s_axis_aresetn;
  input s_axis_aclken;
  input s_axis_tvalid;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output almost_full;
  output prog_full;
  output [31:0]axis_wr_data_count;
  input injectsbiterr;
  input injectdbiterr;
  input m_axis_aclk;
  input m_axis_aclken;
  output m_axis_tvalid;
  input m_axis_tready;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  output almost_empty;
  output prog_empty;
  output [31:0]axis_rd_data_count;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_16 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_17 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_18 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_19 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_20 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_21 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_22 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_23 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_24 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_25 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_26 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_27 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_28 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_29 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_30 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_31 ;
  wire [7:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [7:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [0:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tdest_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tid_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tkeep_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tstrb_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tuser_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axis_rd_data_count[31] = \<const0> ;
  assign axis_rd_data_count[30] = \<const0> ;
  assign axis_rd_data_count[29] = \<const0> ;
  assign axis_rd_data_count[28] = \<const0> ;
  assign axis_rd_data_count[27] = \<const0> ;
  assign axis_rd_data_count[26] = \<const0> ;
  assign axis_rd_data_count[25] = \<const0> ;
  assign axis_rd_data_count[24] = \<const0> ;
  assign axis_rd_data_count[23] = \<const0> ;
  assign axis_rd_data_count[22] = \<const0> ;
  assign axis_rd_data_count[21] = \<const0> ;
  assign axis_rd_data_count[20] = \<const0> ;
  assign axis_rd_data_count[19] = \<const0> ;
  assign axis_rd_data_count[18] = \<const0> ;
  assign axis_rd_data_count[17] = \<const0> ;
  assign axis_rd_data_count[16] = \<const0> ;
  assign axis_rd_data_count[15] = \<const0> ;
  assign axis_rd_data_count[14] = \<const0> ;
  assign axis_rd_data_count[13] = \<const0> ;
  assign axis_rd_data_count[12] = \<const0> ;
  assign axis_rd_data_count[11] = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_wr_data_count[31] = \<const0> ;
  assign axis_wr_data_count[30] = \<const0> ;
  assign axis_wr_data_count[29] = \<const0> ;
  assign axis_wr_data_count[28] = \<const0> ;
  assign axis_wr_data_count[27] = \<const0> ;
  assign axis_wr_data_count[26] = \<const0> ;
  assign axis_wr_data_count[25] = \<const0> ;
  assign axis_wr_data_count[24] = \<const0> ;
  assign axis_wr_data_count[23] = \<const0> ;
  assign axis_wr_data_count[22] = \<const0> ;
  assign axis_wr_data_count[21] = \<const0> ;
  assign axis_wr_data_count[20] = \<const0> ;
  assign axis_wr_data_count[19] = \<const0> ;
  assign axis_wr_data_count[18] = \<const0> ;
  assign axis_wr_data_count[17] = \<const0> ;
  assign axis_wr_data_count[16] = \<const0> ;
  assign axis_wr_data_count[15] = \<const0> ;
  assign axis_wr_data_count[14] = \<const0> ;
  assign axis_wr_data_count[13] = \<const0> ;
  assign axis_wr_data_count[12] = \<const0> ;
  assign axis_wr_data_count[11] = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* AXIS_DATA_WIDTH = "14" *) 
  (* AXIS_FINAL_DATA_WIDTH = "14" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_SYNC_STAGES = "3" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* EN_ADV_FEATURE_AXIS = "16'b0001000000000000" *) 
  (* EN_ADV_FEATURE_AXIS_INT = "16'b0001000000000000" *) 
  (* EN_ALMOST_EMPTY_INT = "1'b0" *) 
  (* EN_ALMOST_FULL_INT = "1'b0" *) 
  (* EN_DATA_VALID_INT = "1'b1" *) 
  (* FIFO_DEPTH = "16" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* LOG_DEPTH_AXIS = "4" *) 
  (* PACKET_FIFO = "false" *) 
  (* PKT_SIZE_LT8 = "1'b0" *) 
  (* PROG_EMPTY_THRESH = "5" *) 
  (* PROG_FULL_THRESH = "11" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_PKT_MODE = "0" *) 
  (* RD_DATA_COUNT_WIDTH = "5" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* TDATA_OFFSET = "8" *) 
  (* TDATA_WIDTH = "8" *) 
  (* TDEST_OFFSET = "12" *) 
  (* TDEST_WIDTH = "1" *) 
  (* TID_OFFSET = "11" *) 
  (* TID_WIDTH = "1" *) 
  (* TKEEP_OFFSET = "10" *) 
  (* TSTRB_OFFSET = "9" *) 
  (* TUSER_MAX_WIDTH = "4083" *) 
  (* TUSER_OFFSET = "13" *) 
  (* TUSER_WIDTH = "1" *) 
  (* USE_ADV_FEATURES = "825241648" *) 
  (* USE_ADV_FEATURES_INT = "825241648" *) 
  (* WR_DATA_COUNT_WIDTH = "5" *) 
  (* XPM_MODULE = "TRUE" *) 
  axis_data_fifo_8bit_xpm_fifo_axis \gen_fifo.xpm_fifo_axis_inst 
       (.almost_empty_axis(\gen_fifo.xpm_fifo_axis_inst_n_29 ),
        .almost_full_axis(\gen_fifo.xpm_fifo_axis_inst_n_22 ),
        .dbiterr_axis(\gen_fifo.xpm_fifo_axis_inst_n_31 ),
        .injectdbiterr_axis(1'b0),
        .injectsbiterr_axis(1'b0),
        .m_aclk(s_axis_aclk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tdest_UNCONNECTED [0]),
        .m_axis_tid(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tid_UNCONNECTED [0]),
        .m_axis_tkeep(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tkeep_UNCONNECTED [0]),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tstrb_UNCONNECTED [0]),
        .m_axis_tuser(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tuser_UNCONNECTED [0]),
        .m_axis_tvalid(m_axis_tvalid),
        .prog_empty_axis(\gen_fifo.xpm_fifo_axis_inst_n_23 ),
        .prog_full_axis(\gen_fifo.xpm_fifo_axis_inst_n_16 ),
        .rd_data_count_axis({\gen_fifo.xpm_fifo_axis_inst_n_24 ,\gen_fifo.xpm_fifo_axis_inst_n_25 ,\gen_fifo.xpm_fifo_axis_inst_n_26 ,\gen_fifo.xpm_fifo_axis_inst_n_27 ,\gen_fifo.xpm_fifo_axis_inst_n_28 }),
        .s_aclk(s_axis_aclk),
        .s_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(s_axis_tvalid),
        .sbiterr_axis(\gen_fifo.xpm_fifo_axis_inst_n_30 ),
        .wr_data_count_axis({\gen_fifo.xpm_fifo_axis_inst_n_17 ,\gen_fifo.xpm_fifo_axis_inst_n_18 ,\gen_fifo.xpm_fifo_axis_inst_n_19 ,\gen_fifo.xpm_fifo_axis_inst_n_20 ,\gen_fifo.xpm_fifo_axis_inst_n_21 }));
endmodule

(* C_ACLKEN_CONV_MODE = "0" *) (* C_AXIS_SIGNAL_SET = "19" *) (* C_AXIS_TDATA_WIDTH = "8" *) 
(* C_AXIS_TDEST_WIDTH = "1" *) (* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TUSER_WIDTH = "1" *) 
(* C_ECC_MODE = "0" *) (* C_FAMILY = "artix7" *) (* C_FIFO_DEPTH = "16" *) 
(* C_FIFO_MEMORY_TYPE = "auto" *) (* C_FIFO_MODE = "1" *) (* C_IS_ACLK_ASYNC = "0" *) 
(* C_PROG_EMPTY_THRESH = "5" *) (* C_PROG_FULL_THRESH = "11" *) (* C_SYNCHRONIZER_STAGE = "3" *) 
(* C_USE_ADV_FEATURES = "825241648" *) (* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TDEST = "6" *) 
(* G_INDX_SS_TID = "5" *) (* G_INDX_SS_TKEEP = "3" *) (* G_INDX_SS_TLAST = "4" *) 
(* G_INDX_SS_TREADY = "0" *) (* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TUSER = "7" *) 
(* G_MASK_SS_TDATA = "2" *) (* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TID = "32" *) 
(* G_MASK_SS_TKEEP = "8" *) (* G_MASK_SS_TLAST = "16" *) (* G_MASK_SS_TREADY = "1" *) 
(* G_MASK_SS_TSTRB = "4" *) (* G_MASK_SS_TUSER = "128" *) (* G_TASK_SEVERITY_ERR = "2" *) 
(* G_TASK_SEVERITY_INFO = "0" *) (* G_TASK_SEVERITY_WARNING = "1" *) (* LP_CDC_SYNC_STAGES = "3" *) 
(* LP_CLOCKING_MODE = "common_clock" *) (* LP_ECC_MODE = "no_ecc" *) (* LP_FIFO_DEPTH = "16" *) 
(* LP_FIFO_MEMORY_TYPE = "auto" *) (* LP_M_ACLKEN_CAN_TOGGLE = "0" *) (* LP_PACKET_FIFO = "false" *) 
(* LP_PROG_EMPTY_THRESH = "5" *) (* LP_PROG_FULL_THRESH = "11" *) (* LP_RD_DATA_COUNT_WIDTH = "5" *) 
(* LP_RELATED_CLOCKS = "0" *) (* LP_S_ACLKEN_CAN_TOGGLE = "0" *) (* LP_TDATA_WIDTH = "8" *) 
(* LP_TDEST_WIDTH = "1" *) (* LP_TID_WIDTH = "1" *) (* LP_TUSER_WIDTH = "1" *) 
(* LP_USE_ADV_FEATURES = "825241648" *) (* LP_WR_DATA_COUNT_WIDTH = "5" *) (* ORIG_REF_NAME = "axis_data_fifo_v2_0_11_top" *) 
module axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top_HD260
   (s_axis_aclk,
    s_axis_aresetn,
    s_axis_aclken,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tlast,
    almost_full,
    prog_full,
    injectsbiterr,
    injectdbiterr,
    m_axis_aclk,
    m_axis_aclken,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tlast,
    almost_empty,
    prog_empty,
    sbiterr,
    dbiterr,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    axis_wr_data_count,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axis_rd_data_count);
  input s_axis_aclk;
  input s_axis_aresetn;
  input s_axis_aclken;
  input s_axis_tvalid;
  output s_axis_tready;
  input s_axis_tlast;
  output almost_full;
  output prog_full;
  input injectsbiterr;
  input injectdbiterr;
  input m_axis_aclk;
  input m_axis_aclken;
  output m_axis_tvalid;
  input m_axis_tready;
  output m_axis_tlast;
  output almost_empty;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output [31:0]axis_wr_data_count;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  output [31:0]axis_rd_data_count;

  wire \<const0> ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_16 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_17 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_18 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_19 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_20 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_21 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_22 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_23 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_24 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_25 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_26 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_27 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_28 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_29 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_30 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_31 ;
  wire [7:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [7:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [0:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tdest_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tid_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tkeep_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tstrb_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tuser_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axis_rd_data_count[31] = \<const0> ;
  assign axis_rd_data_count[30] = \<const0> ;
  assign axis_rd_data_count[29] = \<const0> ;
  assign axis_rd_data_count[28] = \<const0> ;
  assign axis_rd_data_count[27] = \<const0> ;
  assign axis_rd_data_count[26] = \<const0> ;
  assign axis_rd_data_count[25] = \<const0> ;
  assign axis_rd_data_count[24] = \<const0> ;
  assign axis_rd_data_count[23] = \<const0> ;
  assign axis_rd_data_count[22] = \<const0> ;
  assign axis_rd_data_count[21] = \<const0> ;
  assign axis_rd_data_count[20] = \<const0> ;
  assign axis_rd_data_count[19] = \<const0> ;
  assign axis_rd_data_count[18] = \<const0> ;
  assign axis_rd_data_count[17] = \<const0> ;
  assign axis_rd_data_count[16] = \<const0> ;
  assign axis_rd_data_count[15] = \<const0> ;
  assign axis_rd_data_count[14] = \<const0> ;
  assign axis_rd_data_count[13] = \<const0> ;
  assign axis_rd_data_count[12] = \<const0> ;
  assign axis_rd_data_count[11] = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_wr_data_count[31] = \<const0> ;
  assign axis_wr_data_count[30] = \<const0> ;
  assign axis_wr_data_count[29] = \<const0> ;
  assign axis_wr_data_count[28] = \<const0> ;
  assign axis_wr_data_count[27] = \<const0> ;
  assign axis_wr_data_count[26] = \<const0> ;
  assign axis_wr_data_count[25] = \<const0> ;
  assign axis_wr_data_count[24] = \<const0> ;
  assign axis_wr_data_count[23] = \<const0> ;
  assign axis_wr_data_count[22] = \<const0> ;
  assign axis_wr_data_count[21] = \<const0> ;
  assign axis_wr_data_count[20] = \<const0> ;
  assign axis_wr_data_count[19] = \<const0> ;
  assign axis_wr_data_count[18] = \<const0> ;
  assign axis_wr_data_count[17] = \<const0> ;
  assign axis_wr_data_count[16] = \<const0> ;
  assign axis_wr_data_count[15] = \<const0> ;
  assign axis_wr_data_count[14] = \<const0> ;
  assign axis_wr_data_count[13] = \<const0> ;
  assign axis_wr_data_count[12] = \<const0> ;
  assign axis_wr_data_count[11] = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* AXIS_DATA_WIDTH = "14" *) 
  (* AXIS_FINAL_DATA_WIDTH = "14" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_SYNC_STAGES = "3" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* EN_ADV_FEATURE_AXIS = "16'b0001000000000000" *) 
  (* EN_ADV_FEATURE_AXIS_INT = "16'b0001000000000000" *) 
  (* EN_ALMOST_EMPTY_INT = "1'b0" *) 
  (* EN_ALMOST_FULL_INT = "1'b0" *) 
  (* EN_DATA_VALID_INT = "1'b1" *) 
  (* FIFO_DEPTH = "16" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* LOG_DEPTH_AXIS = "4" *) 
  (* PACKET_FIFO = "false" *) 
  (* PKT_SIZE_LT8 = "1'b0" *) 
  (* PROG_EMPTY_THRESH = "5" *) 
  (* PROG_FULL_THRESH = "11" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_PKT_MODE = "0" *) 
  (* RD_DATA_COUNT_WIDTH = "5" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* TDATA_OFFSET = "8" *) 
  (* TDATA_WIDTH = "8" *) 
  (* TDEST_OFFSET = "12" *) 
  (* TDEST_WIDTH = "1" *) 
  (* TID_OFFSET = "11" *) 
  (* TID_WIDTH = "1" *) 
  (* TKEEP_OFFSET = "10" *) 
  (* TSTRB_OFFSET = "9" *) 
  (* TUSER_MAX_WIDTH = "4083" *) 
  (* TUSER_OFFSET = "13" *) 
  (* TUSER_WIDTH = "1" *) 
  (* USE_ADV_FEATURES = "825241648" *) 
  (* USE_ADV_FEATURES_INT = "825241648" *) 
  (* WR_DATA_COUNT_WIDTH = "5" *) 
  (* XPM_MODULE = "TRUE" *) 
  axis_data_fifo_8bit_xpm_fifo_axis_HD261 \gen_fifo.xpm_fifo_axis_inst 
       (.almost_empty_axis(\gen_fifo.xpm_fifo_axis_inst_n_29 ),
        .almost_full_axis(\gen_fifo.xpm_fifo_axis_inst_n_22 ),
        .dbiterr_axis(\gen_fifo.xpm_fifo_axis_inst_n_31 ),
        .injectdbiterr_axis(1'b0),
        .injectsbiterr_axis(1'b0),
        .m_aclk(s_axis_aclk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tdest_UNCONNECTED [0]),
        .m_axis_tid(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tid_UNCONNECTED [0]),
        .m_axis_tkeep(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tkeep_UNCONNECTED [0]),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tstrb_UNCONNECTED [0]),
        .m_axis_tuser(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tuser_UNCONNECTED [0]),
        .m_axis_tvalid(m_axis_tvalid),
        .prog_empty_axis(\gen_fifo.xpm_fifo_axis_inst_n_23 ),
        .prog_full_axis(\gen_fifo.xpm_fifo_axis_inst_n_16 ),
        .rd_data_count_axis({\gen_fifo.xpm_fifo_axis_inst_n_24 ,\gen_fifo.xpm_fifo_axis_inst_n_25 ,\gen_fifo.xpm_fifo_axis_inst_n_26 ,\gen_fifo.xpm_fifo_axis_inst_n_27 ,\gen_fifo.xpm_fifo_axis_inst_n_28 }),
        .s_aclk(s_axis_aclk),
        .s_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(s_axis_tvalid),
        .sbiterr_axis(\gen_fifo.xpm_fifo_axis_inst_n_30 ),
        .wr_data_count_axis({\gen_fifo.xpm_fifo_axis_inst_n_17 ,\gen_fifo.xpm_fifo_axis_inst_n_18 ,\gen_fifo.xpm_fifo_axis_inst_n_19 ,\gen_fifo.xpm_fifo_axis_inst_n_20 ,\gen_fifo.xpm_fifo_axis_inst_n_21 }));
endmodule

(* C_ACLKEN_CONV_MODE = "0" *) (* C_AXIS_SIGNAL_SET = "19" *) (* C_AXIS_TDATA_WIDTH = "8" *) 
(* C_AXIS_TDEST_WIDTH = "1" *) (* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TUSER_WIDTH = "1" *) 
(* C_ECC_MODE = "0" *) (* C_FAMILY = "artix7" *) (* C_FIFO_DEPTH = "16" *) 
(* C_FIFO_MEMORY_TYPE = "auto" *) (* C_FIFO_MODE = "1" *) (* C_IS_ACLK_ASYNC = "0" *) 
(* C_PROG_EMPTY_THRESH = "5" *) (* C_PROG_FULL_THRESH = "11" *) (* C_SYNCHRONIZER_STAGE = "3" *) 
(* C_USE_ADV_FEATURES = "825241648" *) (* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TDEST = "6" *) 
(* G_INDX_SS_TID = "5" *) (* G_INDX_SS_TKEEP = "3" *) (* G_INDX_SS_TLAST = "4" *) 
(* G_INDX_SS_TREADY = "0" *) (* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TUSER = "7" *) 
(* G_MASK_SS_TDATA = "2" *) (* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TID = "32" *) 
(* G_MASK_SS_TKEEP = "8" *) (* G_MASK_SS_TLAST = "16" *) (* G_MASK_SS_TREADY = "1" *) 
(* G_MASK_SS_TSTRB = "4" *) (* G_MASK_SS_TUSER = "128" *) (* G_TASK_SEVERITY_ERR = "2" *) 
(* G_TASK_SEVERITY_INFO = "0" *) (* G_TASK_SEVERITY_WARNING = "1" *) (* LP_CDC_SYNC_STAGES = "3" *) 
(* LP_CLOCKING_MODE = "common_clock" *) (* LP_ECC_MODE = "no_ecc" *) (* LP_FIFO_DEPTH = "16" *) 
(* LP_FIFO_MEMORY_TYPE = "auto" *) (* LP_M_ACLKEN_CAN_TOGGLE = "0" *) (* LP_PACKET_FIFO = "false" *) 
(* LP_PROG_EMPTY_THRESH = "5" *) (* LP_PROG_FULL_THRESH = "11" *) (* LP_RD_DATA_COUNT_WIDTH = "5" *) 
(* LP_RELATED_CLOCKS = "0" *) (* LP_S_ACLKEN_CAN_TOGGLE = "0" *) (* LP_TDATA_WIDTH = "8" *) 
(* LP_TDEST_WIDTH = "1" *) (* LP_TID_WIDTH = "1" *) (* LP_TUSER_WIDTH = "1" *) 
(* LP_USE_ADV_FEATURES = "825241648" *) (* LP_WR_DATA_COUNT_WIDTH = "5" *) (* ORIG_REF_NAME = "axis_data_fifo_v2_0_11_top" *) 
module axis_data_fifo_8bit_axis_data_fifo_v2_0_11_top_HD272
   (s_axis_aclk,
    s_axis_aresetn,
    s_axis_aclken,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tlast,
    almost_full,
    prog_full,
    injectsbiterr,
    injectdbiterr,
    m_axis_aclk,
    m_axis_aclken,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tlast,
    almost_empty,
    prog_empty,
    sbiterr,
    dbiterr,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    axis_wr_data_count,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axis_rd_data_count);
  input s_axis_aclk;
  input s_axis_aresetn;
  input s_axis_aclken;
  input s_axis_tvalid;
  output s_axis_tready;
  input s_axis_tlast;
  output almost_full;
  output prog_full;
  input injectsbiterr;
  input injectdbiterr;
  input m_axis_aclk;
  input m_axis_aclken;
  output m_axis_tvalid;
  input m_axis_tready;
  output m_axis_tlast;
  output almost_empty;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output [31:0]axis_wr_data_count;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  output [31:0]axis_rd_data_count;

  wire \<const0> ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_16 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_17 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_18 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_19 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_20 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_21 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_22 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_23 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_24 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_25 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_26 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_27 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_28 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_29 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_30 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_31 ;
  wire [7:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [7:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [0:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tdest_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tid_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tkeep_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tstrb_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tuser_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axis_rd_data_count[31] = \<const0> ;
  assign axis_rd_data_count[30] = \<const0> ;
  assign axis_rd_data_count[29] = \<const0> ;
  assign axis_rd_data_count[28] = \<const0> ;
  assign axis_rd_data_count[27] = \<const0> ;
  assign axis_rd_data_count[26] = \<const0> ;
  assign axis_rd_data_count[25] = \<const0> ;
  assign axis_rd_data_count[24] = \<const0> ;
  assign axis_rd_data_count[23] = \<const0> ;
  assign axis_rd_data_count[22] = \<const0> ;
  assign axis_rd_data_count[21] = \<const0> ;
  assign axis_rd_data_count[20] = \<const0> ;
  assign axis_rd_data_count[19] = \<const0> ;
  assign axis_rd_data_count[18] = \<const0> ;
  assign axis_rd_data_count[17] = \<const0> ;
  assign axis_rd_data_count[16] = \<const0> ;
  assign axis_rd_data_count[15] = \<const0> ;
  assign axis_rd_data_count[14] = \<const0> ;
  assign axis_rd_data_count[13] = \<const0> ;
  assign axis_rd_data_count[12] = \<const0> ;
  assign axis_rd_data_count[11] = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_wr_data_count[31] = \<const0> ;
  assign axis_wr_data_count[30] = \<const0> ;
  assign axis_wr_data_count[29] = \<const0> ;
  assign axis_wr_data_count[28] = \<const0> ;
  assign axis_wr_data_count[27] = \<const0> ;
  assign axis_wr_data_count[26] = \<const0> ;
  assign axis_wr_data_count[25] = \<const0> ;
  assign axis_wr_data_count[24] = \<const0> ;
  assign axis_wr_data_count[23] = \<const0> ;
  assign axis_wr_data_count[22] = \<const0> ;
  assign axis_wr_data_count[21] = \<const0> ;
  assign axis_wr_data_count[20] = \<const0> ;
  assign axis_wr_data_count[19] = \<const0> ;
  assign axis_wr_data_count[18] = \<const0> ;
  assign axis_wr_data_count[17] = \<const0> ;
  assign axis_wr_data_count[16] = \<const0> ;
  assign axis_wr_data_count[15] = \<const0> ;
  assign axis_wr_data_count[14] = \<const0> ;
  assign axis_wr_data_count[13] = \<const0> ;
  assign axis_wr_data_count[12] = \<const0> ;
  assign axis_wr_data_count[11] = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* AXIS_DATA_WIDTH = "14" *) 
  (* AXIS_FINAL_DATA_WIDTH = "14" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_SYNC_STAGES = "3" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* EN_ADV_FEATURE_AXIS = "16'b0001000000000000" *) 
  (* EN_ADV_FEATURE_AXIS_INT = "16'b0001000000000000" *) 
  (* EN_ALMOST_EMPTY_INT = "1'b0" *) 
  (* EN_ALMOST_FULL_INT = "1'b0" *) 
  (* EN_DATA_VALID_INT = "1'b1" *) 
  (* FIFO_DEPTH = "16" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* LOG_DEPTH_AXIS = "4" *) 
  (* PACKET_FIFO = "false" *) 
  (* PKT_SIZE_LT8 = "1'b0" *) 
  (* PROG_EMPTY_THRESH = "5" *) 
  (* PROG_FULL_THRESH = "11" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_PKT_MODE = "0" *) 
  (* RD_DATA_COUNT_WIDTH = "5" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* TDATA_OFFSET = "8" *) 
  (* TDATA_WIDTH = "8" *) 
  (* TDEST_OFFSET = "12" *) 
  (* TDEST_WIDTH = "1" *) 
  (* TID_OFFSET = "11" *) 
  (* TID_WIDTH = "1" *) 
  (* TKEEP_OFFSET = "10" *) 
  (* TSTRB_OFFSET = "9" *) 
  (* TUSER_MAX_WIDTH = "4083" *) 
  (* TUSER_OFFSET = "13" *) 
  (* TUSER_WIDTH = "1" *) 
  (* USE_ADV_FEATURES = "825241648" *) 
  (* USE_ADV_FEATURES_INT = "825241648" *) 
  (* WR_DATA_COUNT_WIDTH = "5" *) 
  (* XPM_MODULE = "TRUE" *) 
  axis_data_fifo_8bit_xpm_fifo_axis_HD273 \gen_fifo.xpm_fifo_axis_inst 
       (.almost_empty_axis(\gen_fifo.xpm_fifo_axis_inst_n_29 ),
        .almost_full_axis(\gen_fifo.xpm_fifo_axis_inst_n_22 ),
        .dbiterr_axis(\gen_fifo.xpm_fifo_axis_inst_n_31 ),
        .injectdbiterr_axis(1'b0),
        .injectsbiterr_axis(1'b0),
        .m_aclk(s_axis_aclk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tdest_UNCONNECTED [0]),
        .m_axis_tid(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tid_UNCONNECTED [0]),
        .m_axis_tkeep(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tkeep_UNCONNECTED [0]),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tstrb_UNCONNECTED [0]),
        .m_axis_tuser(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tuser_UNCONNECTED [0]),
        .m_axis_tvalid(m_axis_tvalid),
        .prog_empty_axis(\gen_fifo.xpm_fifo_axis_inst_n_23 ),
        .prog_full_axis(\gen_fifo.xpm_fifo_axis_inst_n_16 ),
        .rd_data_count_axis({\gen_fifo.xpm_fifo_axis_inst_n_24 ,\gen_fifo.xpm_fifo_axis_inst_n_25 ,\gen_fifo.xpm_fifo_axis_inst_n_26 ,\gen_fifo.xpm_fifo_axis_inst_n_27 ,\gen_fifo.xpm_fifo_axis_inst_n_28 }),
        .s_aclk(s_axis_aclk),
        .s_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(s_axis_tvalid),
        .sbiterr_axis(\gen_fifo.xpm_fifo_axis_inst_n_30 ),
        .wr_data_count_axis({\gen_fifo.xpm_fifo_axis_inst_n_17 ,\gen_fifo.xpm_fifo_axis_inst_n_18 ,\gen_fifo.xpm_fifo_axis_inst_n_19 ,\gen_fifo.xpm_fifo_axis_inst_n_20 ,\gen_fifo.xpm_fifo_axis_inst_n_21 }));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "4" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module axis_data_fifo_8bit_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [3:0]syncstages_ff;

  assign dest_rst = syncstages_ff[3];
  initial assign \syncstages_ff_reg[0] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  initial assign \syncstages_ff_reg[1] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  initial assign \syncstages_ff_reg[2] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  initial assign \syncstages_ff_reg[3] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "4" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module axis_data_fifo_8bit_xpm_cdc_sync_rst_HD262
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [3:0]syncstages_ff;

  assign dest_rst = syncstages_ff[3];
  initial assign \syncstages_ff_reg[0] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  initial assign \syncstages_ff_reg[1] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  initial assign \syncstages_ff_reg[2] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  initial assign \syncstages_ff_reg[3] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "4" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module axis_data_fifo_8bit_xpm_cdc_sync_rst_HD274
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [3:0]syncstages_ff;

  assign dest_rst = syncstages_ff[3];
  initial assign \syncstages_ff_reg[0] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  initial assign \syncstages_ff_reg[1] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  initial assign \syncstages_ff_reg[2] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  initial assign \syncstages_ff_reg[3] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module axis_data_fifo_8bit_xpm_counter_updn__parameterized0
   (leaving_empty0,
    Q,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_wr_en_i,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ,
    clr_full,
    ram_empty_i,
    \count_value_i_reg[0]_1 ,
    wr_clk);
  output leaving_empty0;
  output [3:0]Q;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  output \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  input [3:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  input [3:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_wr_en_i;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ;
  input clr_full;
  input ram_empty_i;
  input [0:0]\count_value_i_reg[0]_1 ;
  input wr_clk;

  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [3:0]Q;
  wire clr_full;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire [3:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ;
  wire [3:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ;
  wire going_full1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_wr_en_i;
  wire rd_en;
  wire wr_clk;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__1 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__1 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h000000000FFF0088)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(ram_wr_en_i),
        .I1(going_full1),
        .I2(leaving_empty0),
        .I3(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ),
        .I5(clr_full),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'hFABAFBBBFBBBFBBB)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_1 
       (.I0(clr_full),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ),
        .I2(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I3(leaving_empty0),
        .I4(going_full1),
        .I5(ram_wr_en_i),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h90)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ),
        .O(leaving_empty0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h90)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ),
        .O(going_full1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module axis_data_fifo_8bit_xpm_counter_updn__parameterized0_0
   (ram_empty_i0,
    Q,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    leaving_empty0,
    E,
    ram_empty_i,
    \gen_pntr_flags_cc.ram_empty_i_reg_0 ,
    \count_value_i_reg[3]_0 ,
    wr_clk);
  output ram_empty_i0;
  output [3:0]Q;
  input \gen_pntr_flags_cc.ram_empty_i_reg ;
  input leaving_empty0;
  input [0:0]E;
  input ram_empty_i;
  input [3:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  input [0:0]\count_value_i_reg[3]_0 ;
  input wr_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire [0:0]\count_value_i_reg[3]_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg ;
  wire [3:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  wire going_empty1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire wr_clk;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[3]_0 ));
  LUT5 #(
    .INIT(32'h0FFF0088)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg ),
        .I1(going_empty1),
        .I2(leaving_empty0),
        .I3(E),
        .I4(ram_empty_i),
        .O(ram_empty_i0));
  LUT3 #(
    .INIT(8'h90)) 
    \gen_pntr_flags_cc.ram_empty_i_i_2 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ),
        .O(going_empty1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module axis_data_fifo_8bit_xpm_counter_updn__parameterized0_0_HD268
   (ram_empty_i0,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    leaving_empty0,
    ram_empty_i,
    wr_clk,
    Q,
    E,
    \gen_pntr_flags_cc.ram_empty_i_reg_0 ,
    \count_value_i_reg[3]_0 );
  output ram_empty_i0;
  input \gen_pntr_flags_cc.ram_empty_i_reg ;
  input leaving_empty0;
  input ram_empty_i;
  input wr_clk;
  output [3:0]Q;
  input [0:0]E;
  input [3:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  input [0:0]\count_value_i_reg[3]_0 ;

  wire [0:0]E;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire [0:0]\count_value_i_reg[3]_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg ;
  wire [3:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  wire going_empty1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire wr_clk;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[3]_0 ));
  LUT5 #(
    .INIT(32'h0FFF0088)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg ),
        .I1(going_empty1),
        .I2(leaving_empty0),
        .I3(E),
        .I4(ram_empty_i),
        .O(ram_empty_i0));
  LUT3 #(
    .INIT(8'h90)) 
    \gen_pntr_flags_cc.ram_empty_i_i_2 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ),
        .O(going_empty1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module axis_data_fifo_8bit_xpm_counter_updn__parameterized0_0_HD280
   (ram_empty_i0,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    leaving_empty0,
    ram_empty_i,
    wr_clk,
    Q,
    E,
    \gen_pntr_flags_cc.ram_empty_i_reg_0 ,
    \count_value_i_reg[3]_0 );
  output ram_empty_i0;
  input \gen_pntr_flags_cc.ram_empty_i_reg ;
  input leaving_empty0;
  input ram_empty_i;
  input wr_clk;
  output [3:0]Q;
  input [0:0]E;
  input [3:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  input [0:0]\count_value_i_reg[3]_0 ;

  wire [0:0]E;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire [0:0]\count_value_i_reg[3]_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg ;
  wire [3:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  wire going_empty1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire wr_clk;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[3]_0 ));
  LUT5 #(
    .INIT(32'h0FFF0088)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg ),
        .I1(going_empty1),
        .I2(leaving_empty0),
        .I3(E),
        .I4(ram_empty_i),
        .O(ram_empty_i0));
  LUT3 #(
    .INIT(8'h90)) 
    \gen_pntr_flags_cc.ram_empty_i_i_2 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ),
        .O(going_empty1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module axis_data_fifo_8bit_xpm_counter_updn__parameterized0_HD265
   (leaving_empty0,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ,
    rd_en,
    ram_wr_en_i,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ,
    clr_full,
    ram_empty_i,
    wr_clk,
    Q,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ,
    \count_value_i_reg[0]_0 ,
    \count_value_i_reg[0]_1 );
  output leaving_empty0;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  output \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  input rd_en;
  input ram_wr_en_i;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ;
  input clr_full;
  input ram_empty_i;
  input wr_clk;
  output [3:0]Q;
  input [3:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  input [3:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input [0:0]\count_value_i_reg[0]_1 ;

  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [3:0]Q;
  wire clr_full;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire [3:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ;
  wire [3:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ;
  wire going_full1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_wr_en_i;
  wire rd_en;
  wire wr_clk;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__1 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__1 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h000000000FFF0088)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(ram_wr_en_i),
        .I1(going_full1),
        .I2(leaving_empty0),
        .I3(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ),
        .I5(clr_full),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'hFABAFBBBFBBBFBBB)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_1 
       (.I0(clr_full),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ),
        .I2(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I3(leaving_empty0),
        .I4(going_full1),
        .I5(ram_wr_en_i),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h90)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ),
        .O(leaving_empty0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h90)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ),
        .O(going_full1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module axis_data_fifo_8bit_xpm_counter_updn__parameterized0_HD277
   (leaving_empty0,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ,
    rd_en,
    ram_wr_en_i,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ,
    clr_full,
    ram_empty_i,
    wr_clk,
    Q,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ,
    \count_value_i_reg[0]_0 ,
    \count_value_i_reg[0]_1 );
  output leaving_empty0;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  output \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  input rd_en;
  input ram_wr_en_i;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ;
  input clr_full;
  input ram_empty_i;
  input wr_clk;
  output [3:0]Q;
  input [3:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  input [3:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input [0:0]\count_value_i_reg[0]_1 ;

  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [3:0]Q;
  wire clr_full;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire [3:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ;
  wire [3:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ;
  wire going_full1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_wr_en_i;
  wire rd_en;
  wire wr_clk;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__1 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__1 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h000000000FFF0088)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(ram_wr_en_i),
        .I1(going_full1),
        .I2(leaving_empty0),
        .I3(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ),
        .I5(clr_full),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'hFABAFBBBFBBBFBBB)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_1 
       (.I0(clr_full),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ),
        .I2(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I3(leaving_empty0),
        .I4(going_full1),
        .I5(ram_wr_en_i),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h90)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ),
        .O(leaving_empty0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h90)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ),
        .O(going_full1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module axis_data_fifo_8bit_xpm_counter_updn__parameterized1
   (Q,
    \count_value_i_reg[1]_0 ,
    rd_en,
    \count_value_i_reg[0]_0 ,
    E,
    wr_clk);
  output [3:0]Q;
  input [1:0]\count_value_i_reg[1]_0 ;
  input rd_en;
  input [0:0]\count_value_i_reg[0]_0 ;
  input [0:0]E;
  input wr_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire rd_en;
  wire wr_clk;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__2 
       (.I0(\count_value_i_reg[1]_0 [1]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module axis_data_fifo_8bit_xpm_counter_updn__parameterized1_1
   (Q,
    \count_value_i_reg[0]_0 ,
    E,
    wr_clk);
  output [3:0]Q;
  input [0:0]\count_value_i_reg[0]_0 ;
  input [0:0]E;
  input wr_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire wr_clk;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module axis_data_fifo_8bit_xpm_counter_updn__parameterized1_1_HD269
   (wr_clk,
    Q,
    \count_value_i_reg[0]_0 ,
    E);
  input wr_clk;
  output [3:0]Q;
  input [0:0]\count_value_i_reg[0]_0 ;
  input [0:0]E;

  wire [0:0]E;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire wr_clk;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module axis_data_fifo_8bit_xpm_counter_updn__parameterized1_1_HD281
   (wr_clk,
    Q,
    \count_value_i_reg[0]_0 ,
    E);
  input wr_clk;
  output [3:0]Q;
  input [0:0]\count_value_i_reg[0]_0 ;
  input [0:0]E;

  wire [0:0]E;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire wr_clk;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module axis_data_fifo_8bit_xpm_counter_updn__parameterized1_HD266
   (rd_en,
    wr_clk,
    Q,
    \count_value_i_reg[1]_0 ,
    \count_value_i_reg[0]_0 ,
    E);
  input rd_en;
  input wr_clk;
  output [3:0]Q;
  input [1:0]\count_value_i_reg[1]_0 ;
  input [0:0]\count_value_i_reg[0]_0 ;
  input [0:0]E;

  wire [0:0]E;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire rd_en;
  wire wr_clk;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__2 
       (.I0(\count_value_i_reg[1]_0 [1]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module axis_data_fifo_8bit_xpm_counter_updn__parameterized1_HD278
   (rd_en,
    wr_clk,
    Q,
    \count_value_i_reg[1]_0 ,
    \count_value_i_reg[0]_0 ,
    E);
  input rd_en;
  input wr_clk;
  output [3:0]Q;
  input [1:0]\count_value_i_reg[1]_0 ;
  input [0:0]\count_value_i_reg[0]_0 ;
  input [0:0]E;

  wire [0:0]E;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire rd_en;
  wire wr_clk;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__2 
       (.I0(\count_value_i_reg[1]_0 [1]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
endmodule

(* AXIS_DATA_WIDTH = "14" *) (* AXIS_FINAL_DATA_WIDTH = "14" *) (* CASCADE_HEIGHT = "0" *) 
(* CDC_SYNC_STAGES = "3" *) (* CLOCKING_MODE = "common_clock" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_AXIS = "16'b0001000000000000" *) (* EN_ADV_FEATURE_AXIS_INT = "16'b0001000000000000" *) (* EN_ALMOST_EMPTY_INT = "1'b0" *) 
(* EN_ALMOST_FULL_INT = "1'b0" *) (* EN_DATA_VALID_INT = "1'b1" *) (* FIFO_DEPTH = "16" *) 
(* FIFO_MEMORY_TYPE = "auto" *) (* LOG_DEPTH_AXIS = "4" *) (* ORIG_REF_NAME = "xpm_fifo_axis" *) 
(* PACKET_FIFO = "false" *) (* PKT_SIZE_LT8 = "1'b0" *) (* PROG_EMPTY_THRESH = "5" *) 
(* PROG_FULL_THRESH = "11" *) (* P_COMMON_CLOCK = "1" *) (* P_ECC_MODE = "0" *) 
(* P_FIFO_MEMORY_TYPE = "0" *) (* P_PKT_MODE = "0" *) (* RD_DATA_COUNT_WIDTH = "5" *) 
(* RELATED_CLOCKS = "0" *) (* SIM_ASSERT_CHK = "0" *) (* TDATA_OFFSET = "8" *) 
(* TDATA_WIDTH = "8" *) (* TDEST_OFFSET = "12" *) (* TDEST_WIDTH = "1" *) 
(* TID_OFFSET = "11" *) (* TID_WIDTH = "1" *) (* TKEEP_OFFSET = "10" *) 
(* TSTRB_OFFSET = "9" *) (* TUSER_MAX_WIDTH = "4083" *) (* TUSER_OFFSET = "13" *) 
(* TUSER_WIDTH = "1" *) (* USE_ADV_FEATURES = "825241648" *) (* USE_ADV_FEATURES_INT = "825241648" *) 
(* WR_DATA_COUNT_WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) (* dont_touch = "true" *) 
module axis_data_fifo_8bit_xpm_fifo_axis
   (s_aresetn,
    s_aclk,
    m_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    prog_full_axis,
    wr_data_count_axis,
    almost_full_axis,
    prog_empty_axis,
    rd_data_count_axis,
    almost_empty_axis,
    injectsbiterr_axis,
    injectdbiterr_axis,
    sbiterr_axis,
    dbiterr_axis);
  input s_aresetn;
  input s_aclk;
  input m_aclk;
  input s_axis_tvalid;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  output prog_full_axis;
  output [4:0]wr_data_count_axis;
  output almost_full_axis;
  output prog_empty_axis;
  output [4:0]rd_data_count_axis;
  output almost_empty_axis;
  input injectsbiterr_axis;
  input injectdbiterr_axis;
  output sbiterr_axis;
  output dbiterr_axis;

  wire \<const0> ;
  wire \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ;
  wire [7:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [0:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [0:0]m_axis_tstrb;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire rst_axis;
  wire s_aclk;
  wire s_aresetn;
  wire [7:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [0:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [0:0]s_axis_tstrb;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire xpm_fifo_base_inst_i_1_n_0;
  wire NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED;

  assign almost_empty_axis = \<const0> ;
  assign almost_full_axis = \<const0> ;
  assign dbiterr_axis = \<const0> ;
  assign prog_empty_axis = \<const0> ;
  assign prog_full_axis = \<const0> ;
  assign rd_data_count_axis[4] = \<const0> ;
  assign rd_data_count_axis[3] = \<const0> ;
  assign rd_data_count_axis[2] = \<const0> ;
  assign rd_data_count_axis[1] = \<const0> ;
  assign rd_data_count_axis[0] = \<const0> ;
  assign sbiterr_axis = \<const0> ;
  assign wr_data_count_axis[4] = \<const0> ;
  assign wr_data_count_axis[3] = \<const0> ;
  assign wr_data_count_axis[2] = \<const0> ;
  assign wr_data_count_axis[1] = \<const0> ;
  assign wr_data_count_axis[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  axis_data_fifo_8bit_xpm_cdc_sync_rst \gaxis_rst_sync.xpm_cdc_sync_rst_inst 
       (.dest_clk(s_aclk),
        .dest_rst(rst_axis),
        .src_rst(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1 
       (.I0(s_aresetn),
        .O(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "3" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0001000000000000" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b1" *) 
  (* EN_OF = "1'b0" *) 
  (* EN_PE = "1'b0" *) 
  (* EN_PF = "1'b0" *) 
  (* EN_RDC = "1'b0" *) 
  (* EN_UF = "1'b0" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b0" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "16" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "224" *) 
  (* FIFO_WRITE_DEPTH = "16" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* PE_THRESH_ADJ = "3" *) 
  (* PE_THRESH_MAX = "11" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "9" *) 
  (* PF_THRESH_MAX = "11" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "5" *) 
  (* PROG_FULL_THRESH = "11" *) 
  (* RD_DATA_COUNT_WIDTH = "5" *) 
  (* RD_DC_WIDTH_EXT = "5" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "4" *) 
  (* READ_DATA_WIDTH = "14" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "825241648" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "14" *) 
  (* WR_DATA_COUNT_WIDTH = "5" *) 
  (* WR_DC_WIDTH_EXT = "5" *) 
  (* WR_DEPTH_LOG = "4" *) 
  (* WR_PNTR_WIDTH = "4" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "4" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  axis_data_fifo_8bit_xpm_fifo_base xpm_fifo_base_inst
       (.almost_empty(NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED),
        .data_valid(m_axis_tvalid),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din({s_axis_tlast,s_axis_tuser,s_axis_tdest,s_axis_tid,s_axis_tkeep,s_axis_tstrb,s_axis_tdata}),
        .dout({m_axis_tlast,m_axis_tuser,m_axis_tdest,m_axis_tid,m_axis_tkeep,m_axis_tstrb,m_axis_tdata}),
        .empty(NLW_xpm_fifo_base_inst_empty_UNCONNECTED),
        .full(NLW_xpm_fifo_base_inst_full_UNCONNECTED),
        .full_n(s_axis_tready),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_base_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED),
        .rd_clk(1'b0),
        .rd_data_count(NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED[4:0]),
        .rd_en(xpm_fifo_base_inst_i_1_n_0),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst_axis),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(NLW_xpm_fifo_base_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(s_aclk),
        .wr_data_count(NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED[4:0]),
        .wr_en(s_axis_tvalid),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    xpm_fifo_base_inst_i_1
       (.I0(m_axis_tvalid),
        .I1(m_axis_tready),
        .O(xpm_fifo_base_inst_i_1_n_0));
endmodule

(* AXIS_DATA_WIDTH = "14" *) (* AXIS_FINAL_DATA_WIDTH = "14" *) (* CASCADE_HEIGHT = "0" *) 
(* CDC_SYNC_STAGES = "3" *) (* CLOCKING_MODE = "common_clock" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_AXIS = "16'b0001000000000000" *) (* EN_ADV_FEATURE_AXIS_INT = "16'b0001000000000000" *) (* EN_ALMOST_EMPTY_INT = "1'b0" *) 
(* EN_ALMOST_FULL_INT = "1'b0" *) (* EN_DATA_VALID_INT = "1'b1" *) (* FIFO_DEPTH = "16" *) 
(* FIFO_MEMORY_TYPE = "auto" *) (* LOG_DEPTH_AXIS = "4" *) (* ORIG_REF_NAME = "xpm_fifo_axis" *) 
(* PACKET_FIFO = "false" *) (* PKT_SIZE_LT8 = "1'b0" *) (* PROG_EMPTY_THRESH = "5" *) 
(* PROG_FULL_THRESH = "11" *) (* P_COMMON_CLOCK = "1" *) (* P_ECC_MODE = "0" *) 
(* P_FIFO_MEMORY_TYPE = "0" *) (* P_PKT_MODE = "0" *) (* RD_DATA_COUNT_WIDTH = "5" *) 
(* RELATED_CLOCKS = "0" *) (* SIM_ASSERT_CHK = "0" *) (* TDATA_OFFSET = "8" *) 
(* TDATA_WIDTH = "8" *) (* TDEST_OFFSET = "12" *) (* TDEST_WIDTH = "1" *) 
(* TID_OFFSET = "11" *) (* TID_WIDTH = "1" *) (* TKEEP_OFFSET = "10" *) 
(* TSTRB_OFFSET = "9" *) (* TUSER_MAX_WIDTH = "4083" *) (* TUSER_OFFSET = "13" *) 
(* TUSER_WIDTH = "1" *) (* USE_ADV_FEATURES = "825241648" *) (* USE_ADV_FEATURES_INT = "825241648" *) 
(* WR_DATA_COUNT_WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) (* dont_touch = "true" *) 
module axis_data_fifo_8bit_xpm_fifo_axis_HD261
   (s_aresetn,
    s_aclk,
    m_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tlast,
    prog_full_axis,
    almost_full_axis,
    prog_empty_axis,
    almost_empty_axis,
    injectsbiterr_axis,
    injectdbiterr_axis,
    sbiterr_axis,
    dbiterr_axis,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    wr_data_count_axis,
    rd_data_count_axis);
  input s_aresetn;
  input s_aclk;
  input m_aclk;
  input s_axis_tvalid;
  output s_axis_tready;
  input s_axis_tlast;
  output m_axis_tvalid;
  input m_axis_tready;
  output m_axis_tlast;
  output prog_full_axis;
  output almost_full_axis;
  output prog_empty_axis;
  output almost_empty_axis;
  input injectsbiterr_axis;
  input injectdbiterr_axis;
  output sbiterr_axis;
  output dbiterr_axis;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  output [4:0]wr_data_count_axis;
  output [4:0]rd_data_count_axis;

  wire \<const0> ;
  wire \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ;
  wire [7:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [0:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [0:0]m_axis_tstrb;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire rst_axis;
  wire s_aclk;
  wire s_aresetn;
  wire [7:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [0:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [0:0]s_axis_tstrb;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire xpm_fifo_base_inst_i_1_n_0;
  wire NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED;

  assign almost_empty_axis = \<const0> ;
  assign almost_full_axis = \<const0> ;
  assign dbiterr_axis = \<const0> ;
  assign prog_empty_axis = \<const0> ;
  assign prog_full_axis = \<const0> ;
  assign rd_data_count_axis[4] = \<const0> ;
  assign rd_data_count_axis[3] = \<const0> ;
  assign rd_data_count_axis[2] = \<const0> ;
  assign rd_data_count_axis[1] = \<const0> ;
  assign rd_data_count_axis[0] = \<const0> ;
  assign sbiterr_axis = \<const0> ;
  assign wr_data_count_axis[4] = \<const0> ;
  assign wr_data_count_axis[3] = \<const0> ;
  assign wr_data_count_axis[2] = \<const0> ;
  assign wr_data_count_axis[1] = \<const0> ;
  assign wr_data_count_axis[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  axis_data_fifo_8bit_xpm_cdc_sync_rst_HD262 \gaxis_rst_sync.xpm_cdc_sync_rst_inst 
       (.dest_clk(s_aclk),
        .dest_rst(rst_axis),
        .src_rst(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1 
       (.I0(s_aresetn),
        .O(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "3" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0001000000000000" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b1" *) 
  (* EN_OF = "1'b0" *) 
  (* EN_PE = "1'b0" *) 
  (* EN_PF = "1'b0" *) 
  (* EN_RDC = "1'b0" *) 
  (* EN_UF = "1'b0" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b0" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "16" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "224" *) 
  (* FIFO_WRITE_DEPTH = "16" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* PE_THRESH_ADJ = "3" *) 
  (* PE_THRESH_MAX = "11" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "9" *) 
  (* PF_THRESH_MAX = "11" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "5" *) 
  (* PROG_FULL_THRESH = "11" *) 
  (* RD_DATA_COUNT_WIDTH = "5" *) 
  (* RD_DC_WIDTH_EXT = "5" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "4" *) 
  (* READ_DATA_WIDTH = "14" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "825241648" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "14" *) 
  (* WR_DATA_COUNT_WIDTH = "5" *) 
  (* WR_DC_WIDTH_EXT = "5" *) 
  (* WR_DEPTH_LOG = "4" *) 
  (* WR_PNTR_WIDTH = "4" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "4" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  axis_data_fifo_8bit_xpm_fifo_base_HD263 xpm_fifo_base_inst
       (.almost_empty(NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED),
        .data_valid(m_axis_tvalid),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din({s_axis_tlast,s_axis_tuser,s_axis_tdest,s_axis_tid,s_axis_tkeep,s_axis_tstrb,s_axis_tdata}),
        .dout({m_axis_tlast,m_axis_tuser,m_axis_tdest,m_axis_tid,m_axis_tkeep,m_axis_tstrb,m_axis_tdata}),
        .empty(NLW_xpm_fifo_base_inst_empty_UNCONNECTED),
        .full(NLW_xpm_fifo_base_inst_full_UNCONNECTED),
        .full_n(s_axis_tready),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_base_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED),
        .rd_clk(1'b0),
        .rd_data_count(NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED[4:0]),
        .rd_en(xpm_fifo_base_inst_i_1_n_0),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst_axis),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(NLW_xpm_fifo_base_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(s_aclk),
        .wr_data_count(NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED[4:0]),
        .wr_en(s_axis_tvalid),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    xpm_fifo_base_inst_i_1
       (.I0(m_axis_tvalid),
        .I1(m_axis_tready),
        .O(xpm_fifo_base_inst_i_1_n_0));
endmodule

(* AXIS_DATA_WIDTH = "14" *) (* AXIS_FINAL_DATA_WIDTH = "14" *) (* CASCADE_HEIGHT = "0" *) 
(* CDC_SYNC_STAGES = "3" *) (* CLOCKING_MODE = "common_clock" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_AXIS = "16'b0001000000000000" *) (* EN_ADV_FEATURE_AXIS_INT = "16'b0001000000000000" *) (* EN_ALMOST_EMPTY_INT = "1'b0" *) 
(* EN_ALMOST_FULL_INT = "1'b0" *) (* EN_DATA_VALID_INT = "1'b1" *) (* FIFO_DEPTH = "16" *) 
(* FIFO_MEMORY_TYPE = "auto" *) (* LOG_DEPTH_AXIS = "4" *) (* ORIG_REF_NAME = "xpm_fifo_axis" *) 
(* PACKET_FIFO = "false" *) (* PKT_SIZE_LT8 = "1'b0" *) (* PROG_EMPTY_THRESH = "5" *) 
(* PROG_FULL_THRESH = "11" *) (* P_COMMON_CLOCK = "1" *) (* P_ECC_MODE = "0" *) 
(* P_FIFO_MEMORY_TYPE = "0" *) (* P_PKT_MODE = "0" *) (* RD_DATA_COUNT_WIDTH = "5" *) 
(* RELATED_CLOCKS = "0" *) (* SIM_ASSERT_CHK = "0" *) (* TDATA_OFFSET = "8" *) 
(* TDATA_WIDTH = "8" *) (* TDEST_OFFSET = "12" *) (* TDEST_WIDTH = "1" *) 
(* TID_OFFSET = "11" *) (* TID_WIDTH = "1" *) (* TKEEP_OFFSET = "10" *) 
(* TSTRB_OFFSET = "9" *) (* TUSER_MAX_WIDTH = "4083" *) (* TUSER_OFFSET = "13" *) 
(* TUSER_WIDTH = "1" *) (* USE_ADV_FEATURES = "825241648" *) (* USE_ADV_FEATURES_INT = "825241648" *) 
(* WR_DATA_COUNT_WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) (* dont_touch = "true" *) 
module axis_data_fifo_8bit_xpm_fifo_axis_HD273
   (s_aresetn,
    s_aclk,
    m_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tlast,
    prog_full_axis,
    almost_full_axis,
    prog_empty_axis,
    almost_empty_axis,
    injectsbiterr_axis,
    injectdbiterr_axis,
    sbiterr_axis,
    dbiterr_axis,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    wr_data_count_axis,
    rd_data_count_axis);
  input s_aresetn;
  input s_aclk;
  input m_aclk;
  input s_axis_tvalid;
  output s_axis_tready;
  input s_axis_tlast;
  output m_axis_tvalid;
  input m_axis_tready;
  output m_axis_tlast;
  output prog_full_axis;
  output almost_full_axis;
  output prog_empty_axis;
  output almost_empty_axis;
  input injectsbiterr_axis;
  input injectdbiterr_axis;
  output sbiterr_axis;
  output dbiterr_axis;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  output [4:0]wr_data_count_axis;
  output [4:0]rd_data_count_axis;

  wire \<const0> ;
  wire \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ;
  wire [7:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [0:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [0:0]m_axis_tstrb;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire rst_axis;
  wire s_aclk;
  wire s_aresetn;
  wire [7:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [0:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [0:0]s_axis_tstrb;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire xpm_fifo_base_inst_i_1_n_0;
  wire NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED;

  assign almost_empty_axis = \<const0> ;
  assign almost_full_axis = \<const0> ;
  assign dbiterr_axis = \<const0> ;
  assign prog_empty_axis = \<const0> ;
  assign prog_full_axis = \<const0> ;
  assign rd_data_count_axis[4] = \<const0> ;
  assign rd_data_count_axis[3] = \<const0> ;
  assign rd_data_count_axis[2] = \<const0> ;
  assign rd_data_count_axis[1] = \<const0> ;
  assign rd_data_count_axis[0] = \<const0> ;
  assign sbiterr_axis = \<const0> ;
  assign wr_data_count_axis[4] = \<const0> ;
  assign wr_data_count_axis[3] = \<const0> ;
  assign wr_data_count_axis[2] = \<const0> ;
  assign wr_data_count_axis[1] = \<const0> ;
  assign wr_data_count_axis[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  axis_data_fifo_8bit_xpm_cdc_sync_rst_HD274 \gaxis_rst_sync.xpm_cdc_sync_rst_inst 
       (.dest_clk(s_aclk),
        .dest_rst(rst_axis),
        .src_rst(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1 
       (.I0(s_aresetn),
        .O(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "3" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0001000000000000" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b1" *) 
  (* EN_OF = "1'b0" *) 
  (* EN_PE = "1'b0" *) 
  (* EN_PF = "1'b0" *) 
  (* EN_RDC = "1'b0" *) 
  (* EN_UF = "1'b0" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b0" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "16" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "224" *) 
  (* FIFO_WRITE_DEPTH = "16" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* PE_THRESH_ADJ = "3" *) 
  (* PE_THRESH_MAX = "11" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "9" *) 
  (* PF_THRESH_MAX = "11" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "5" *) 
  (* PROG_FULL_THRESH = "11" *) 
  (* RD_DATA_COUNT_WIDTH = "5" *) 
  (* RD_DC_WIDTH_EXT = "5" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "4" *) 
  (* READ_DATA_WIDTH = "14" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "825241648" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "14" *) 
  (* WR_DATA_COUNT_WIDTH = "5" *) 
  (* WR_DC_WIDTH_EXT = "5" *) 
  (* WR_DEPTH_LOG = "4" *) 
  (* WR_PNTR_WIDTH = "4" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "4" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  axis_data_fifo_8bit_xpm_fifo_base_HD275 xpm_fifo_base_inst
       (.almost_empty(NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED),
        .data_valid(m_axis_tvalid),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din({s_axis_tlast,s_axis_tuser,s_axis_tdest,s_axis_tid,s_axis_tkeep,s_axis_tstrb,s_axis_tdata}),
        .dout({m_axis_tlast,m_axis_tuser,m_axis_tdest,m_axis_tid,m_axis_tkeep,m_axis_tstrb,m_axis_tdata}),
        .empty(NLW_xpm_fifo_base_inst_empty_UNCONNECTED),
        .full(NLW_xpm_fifo_base_inst_full_UNCONNECTED),
        .full_n(s_axis_tready),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_base_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED),
        .rd_clk(1'b0),
        .rd_data_count(NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED[4:0]),
        .rd_en(xpm_fifo_base_inst_i_1_n_0),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst_axis),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(NLW_xpm_fifo_base_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(s_aclk),
        .wr_data_count(NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED[4:0]),
        .wr_en(s_axis_tvalid),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    xpm_fifo_base_inst_i_1
       (.I0(m_axis_tvalid),
        .I1(m_axis_tready),
        .O(xpm_fifo_base_inst_i_1_n_0));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "3" *) (* COMMON_CLOCK = "1" *) 
(* DOUT_RESET_VALUE = "" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0001000000000000" *) (* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) 
(* EN_DVLD = "1'b1" *) (* EN_OF = "1'b0" *) (* EN_PE = "1'b0" *) 
(* EN_PF = "1'b0" *) (* EN_RDC = "1'b0" *) (* EN_UF = "1'b0" *) 
(* EN_WACK = "1'b0" *) (* EN_WDC = "1'b0" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) 
(* FIFO_MEMORY_TYPE = "0" *) (* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "16" *) 
(* FIFO_READ_LATENCY = "0" *) (* FIFO_SIZE = "224" *) (* FIFO_WRITE_DEPTH = "16" *) 
(* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_fifo_base" *) 
(* PE_THRESH_ADJ = "3" *) (* PE_THRESH_MAX = "11" *) (* PE_THRESH_MIN = "5" *) 
(* PF_THRESH_ADJ = "9" *) (* PF_THRESH_MAX = "11" *) (* PF_THRESH_MIN = "5" *) 
(* PROG_EMPTY_THRESH = "5" *) (* PROG_FULL_THRESH = "11" *) (* RD_DATA_COUNT_WIDTH = "5" *) 
(* RD_DC_WIDTH_EXT = "5" *) (* RD_LATENCY = "2" *) (* RD_MODE = "1" *) 
(* RD_PNTR_WIDTH = "4" *) (* READ_DATA_WIDTH = "14" *) (* READ_MODE = "1" *) 
(* READ_MODE_LL = "1" *) (* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "825241648" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "14" *) 
(* WR_DATA_COUNT_WIDTH = "5" *) (* WR_DC_WIDTH_EXT = "5" *) (* WR_DEPTH_LOG = "4" *) 
(* WR_PNTR_WIDTH = "4" *) (* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "4" *) 
(* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) (* invalid = "0" *) 
(* keep_hierarchy = "soft" *) (* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module axis_data_fifo_8bit_xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [13:0]din;
  output full;
  output full_n;
  output prog_full;
  output [4:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [13:0]dout;
  output empty;
  output prog_empty;
  output [4:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire clr_full;
  wire [3:0]count_value_i__0;
  wire [1:0]curr_fwft_state;
  wire data_valid;
  wire data_valid_fwft1;
  wire [13:0]din;
  wire [13:0]dout;
  wire full_n;
  wire \gen_fwft.empty_fwft_i_reg_n_0 ;
  wire \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ;
  wire leaving_empty0;
  wire [1:0]next_fwft_state__0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_i;
  wire rd_en;
  wire [3:0]rd_pntr_ext;
  wire rdp_inst_n_5;
  wire rdp_inst_n_6;
  wire rdp_inst_n_7;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rst;
  wire rst_d1;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire [3:0]wr_pntr_ext;
  wire xpm_fifo_rst_inst_n_1;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [13:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign dbiterr = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h3FF0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_1));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_1));
  GND GND
       (.G(\<const0> ));
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .O(data_valid_fwft1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(data_valid_fwft1),
        .Q(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_1));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h3575)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_i_1 
       (.I0(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(rd_en),
        .O(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ),
        .Q(data_valid),
        .R(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_5),
        .Q(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_7),
        .Q(full_n),
        .R(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_1));
  (* ADDR_WIDTH_A = "4" *) 
  (* ADDR_WIDTH_B = "4" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "14" *) 
  (* BYTE_WRITE_WIDTH_B = "14" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_BIT_RANGE = "[7:0]" *) 
  (* ECC_MODE = "0" *) 
  (* ECC_TYPE = "NONE" *) 
  (* IGNORE_INIT_SYNTH = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "224" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "16" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "14" *) 
  (* P_MIN_WIDTH_DATA_A = "14" *) 
  (* P_MIN_WIDTH_DATA_B = "14" *) 
  (* P_MIN_WIDTH_DATA_ECC = "14" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "14" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "4" *) 
  (* P_WIDTH_ADDR_READ_B = "4" *) 
  (* P_WIDTH_ADDR_WRITE_A = "4" *) 
  (* P_WIDTH_ADDR_WRITE_B = "4" *) 
  (* P_WIDTH_COL_WRITE_A = "14" *) 
  (* P_WIDTH_COL_WRITE_B = "14" *) 
  (* RAM_DECOMP = "auto" *) 
  (* READ_DATA_WIDTH_A = "14" *) 
  (* READ_DATA_WIDTH_B = "14" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "14" *) 
  (* WRITE_DATA_WIDTH_B = "14" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "16" *) 
  (* rstb_loop_iter = "16" *) 
  axis_data_fifo_8bit_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [13:0]),
        .doutb(dout),
        .ena(1'b0),
        .enb(rdp_inst_n_6),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(xpm_fifo_rst_inst_n_1),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(ram_wr_en_i),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  axis_data_fifo_8bit_xpm_counter_updn__parameterized0 rdp_inst
       (.\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdp_inst_n_6),
        .Q(rd_pntr_ext),
        .clr_full(clr_full),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (rdp_inst_n_5),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 (rdp_inst_n_7),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 (wr_pntr_ext),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg (count_value_i__0),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_i(ram_wr_en_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  axis_data_fifo_8bit_xpm_counter_updn__parameterized1 rdpp1_inst
       (.E(rdp_inst_n_6),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3}),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  axis_data_fifo_8bit_xpm_fifo_reg_bit rst_d1_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .clr_full(clr_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk));
  axis_data_fifo_8bit_xpm_counter_updn__parameterized0_0 wrp_inst
       (.E(ram_wr_en_i),
        .Q(wr_pntr_ext),
        .\count_value_i_reg[3]_0 (xpm_fifo_rst_inst_n_1),
        .\gen_pntr_flags_cc.ram_empty_i_reg (rdp_inst_n_6),
        .\gen_pntr_flags_cc.ram_empty_i_reg_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3}),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .wr_clk(wr_clk));
  axis_data_fifo_8bit_xpm_counter_updn__parameterized1_1 wrpp1_inst
       (.E(ram_wr_en_i),
        .Q(count_value_i__0),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .wr_clk(wr_clk));
  axis_data_fifo_8bit_xpm_fifo_rst xpm_fifo_rst_inst
       (.E(ram_wr_en_i),
        .Q(xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[3] (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "3" *) (* COMMON_CLOCK = "1" *) 
(* DOUT_RESET_VALUE = "" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0001000000000000" *) (* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) 
(* EN_DVLD = "1'b1" *) (* EN_OF = "1'b0" *) (* EN_PE = "1'b0" *) 
(* EN_PF = "1'b0" *) (* EN_RDC = "1'b0" *) (* EN_UF = "1'b0" *) 
(* EN_WACK = "1'b0" *) (* EN_WDC = "1'b0" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) 
(* FIFO_MEMORY_TYPE = "0" *) (* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "16" *) 
(* FIFO_READ_LATENCY = "0" *) (* FIFO_SIZE = "224" *) (* FIFO_WRITE_DEPTH = "16" *) 
(* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_fifo_base" *) 
(* PE_THRESH_ADJ = "3" *) (* PE_THRESH_MAX = "11" *) (* PE_THRESH_MIN = "5" *) 
(* PF_THRESH_ADJ = "9" *) (* PF_THRESH_MAX = "11" *) (* PF_THRESH_MIN = "5" *) 
(* PROG_EMPTY_THRESH = "5" *) (* PROG_FULL_THRESH = "11" *) (* RD_DATA_COUNT_WIDTH = "5" *) 
(* RD_DC_WIDTH_EXT = "5" *) (* RD_LATENCY = "2" *) (* RD_MODE = "1" *) 
(* RD_PNTR_WIDTH = "4" *) (* READ_DATA_WIDTH = "14" *) (* READ_MODE = "1" *) 
(* READ_MODE_LL = "1" *) (* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "825241648" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "14" *) 
(* WR_DATA_COUNT_WIDTH = "5" *) (* WR_DC_WIDTH_EXT = "5" *) (* WR_DEPTH_LOG = "4" *) 
(* WR_PNTR_WIDTH = "4" *) (* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "4" *) 
(* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) (* invalid = "0" *) 
(* keep_hierarchy = "soft" *) (* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module axis_data_fifo_8bit_xpm_fifo_base_HD263
   (sleep,
    rst,
    wr_clk,
    wr_en,
    full,
    full_n,
    prog_full,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    empty,
    prog_empty,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr,
    din,
    wr_data_count,
    dout,
    rd_data_count);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  output full;
  output full_n;
  output prog_full;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output empty;
  output prog_empty;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;
  input [13:0]din;
  output [4:0]wr_data_count;
  output [13:0]dout;
  output [4:0]rd_data_count;

  wire \<const0> ;
  wire clr_full;
  wire [3:0]count_value_i__0;
  wire [1:0]curr_fwft_state;
  wire data_valid;
  wire data_valid_fwft1;
  wire [13:0]din;
  wire [13:0]dout;
  wire full_n;
  wire \gen_fwft.empty_fwft_i_reg_n_0 ;
  wire \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ;
  wire leaving_empty0;
  wire [1:0]next_fwft_state__0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_i;
  wire rd_en;
  wire [3:0]rd_pntr_ext;
  wire rdp_inst_n_5;
  wire rdp_inst_n_6;
  wire rdp_inst_n_7;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rst;
  wire rst_d1;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire [3:0]wr_pntr_ext;
  wire xpm_fifo_rst_inst_n_1;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [13:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign dbiterr = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h3FF0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_1));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_1));
  GND GND
       (.G(\<const0> ));
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .O(data_valid_fwft1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(data_valid_fwft1),
        .Q(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_1));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h3575)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_i_1 
       (.I0(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(rd_en),
        .O(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ),
        .Q(data_valid),
        .R(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_5),
        .Q(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_7),
        .Q(full_n),
        .R(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_1));
  (* ADDR_WIDTH_A = "4" *) 
  (* ADDR_WIDTH_B = "4" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "14" *) 
  (* BYTE_WRITE_WIDTH_B = "14" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_BIT_RANGE = "[7:0]" *) 
  (* ECC_MODE = "0" *) 
  (* ECC_TYPE = "NONE" *) 
  (* IGNORE_INIT_SYNTH = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "224" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "16" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "14" *) 
  (* P_MIN_WIDTH_DATA_A = "14" *) 
  (* P_MIN_WIDTH_DATA_B = "14" *) 
  (* P_MIN_WIDTH_DATA_ECC = "14" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "14" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "4" *) 
  (* P_WIDTH_ADDR_READ_B = "4" *) 
  (* P_WIDTH_ADDR_WRITE_A = "4" *) 
  (* P_WIDTH_ADDR_WRITE_B = "4" *) 
  (* P_WIDTH_COL_WRITE_A = "14" *) 
  (* P_WIDTH_COL_WRITE_B = "14" *) 
  (* RAM_DECOMP = "auto" *) 
  (* READ_DATA_WIDTH_A = "14" *) 
  (* READ_DATA_WIDTH_B = "14" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "14" *) 
  (* WRITE_DATA_WIDTH_B = "14" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "16" *) 
  (* rstb_loop_iter = "16" *) 
  axis_data_fifo_8bit_xpm_memory_base_HD264 \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [13:0]),
        .doutb(dout),
        .ena(1'b0),
        .enb(rdp_inst_n_6),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(xpm_fifo_rst_inst_n_1),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(ram_wr_en_i),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  axis_data_fifo_8bit_xpm_counter_updn__parameterized0_HD265 rdp_inst
       (.\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdp_inst_n_6),
        .Q(rd_pntr_ext),
        .clr_full(clr_full),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (rdp_inst_n_5),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 (rdp_inst_n_7),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 (wr_pntr_ext),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg (count_value_i__0),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_i(ram_wr_en_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  axis_data_fifo_8bit_xpm_counter_updn__parameterized1_HD266 rdpp1_inst
       (.E(rdp_inst_n_6),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3}),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  axis_data_fifo_8bit_xpm_fifo_reg_bit_HD267 rst_d1_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .clr_full(clr_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk));
  axis_data_fifo_8bit_xpm_counter_updn__parameterized0_0_HD268 wrp_inst
       (.E(ram_wr_en_i),
        .Q(wr_pntr_ext),
        .\count_value_i_reg[3]_0 (xpm_fifo_rst_inst_n_1),
        .\gen_pntr_flags_cc.ram_empty_i_reg (rdp_inst_n_6),
        .\gen_pntr_flags_cc.ram_empty_i_reg_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3}),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .wr_clk(wr_clk));
  axis_data_fifo_8bit_xpm_counter_updn__parameterized1_1_HD269 wrpp1_inst
       (.E(ram_wr_en_i),
        .Q(count_value_i__0),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .wr_clk(wr_clk));
  axis_data_fifo_8bit_xpm_fifo_rst_HD270 xpm_fifo_rst_inst
       (.E(ram_wr_en_i),
        .Q(xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[3] (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "3" *) (* COMMON_CLOCK = "1" *) 
(* DOUT_RESET_VALUE = "" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0001000000000000" *) (* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) 
(* EN_DVLD = "1'b1" *) (* EN_OF = "1'b0" *) (* EN_PE = "1'b0" *) 
(* EN_PF = "1'b0" *) (* EN_RDC = "1'b0" *) (* EN_UF = "1'b0" *) 
(* EN_WACK = "1'b0" *) (* EN_WDC = "1'b0" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) 
(* FIFO_MEMORY_TYPE = "0" *) (* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "16" *) 
(* FIFO_READ_LATENCY = "0" *) (* FIFO_SIZE = "224" *) (* FIFO_WRITE_DEPTH = "16" *) 
(* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_fifo_base" *) 
(* PE_THRESH_ADJ = "3" *) (* PE_THRESH_MAX = "11" *) (* PE_THRESH_MIN = "5" *) 
(* PF_THRESH_ADJ = "9" *) (* PF_THRESH_MAX = "11" *) (* PF_THRESH_MIN = "5" *) 
(* PROG_EMPTY_THRESH = "5" *) (* PROG_FULL_THRESH = "11" *) (* RD_DATA_COUNT_WIDTH = "5" *) 
(* RD_DC_WIDTH_EXT = "5" *) (* RD_LATENCY = "2" *) (* RD_MODE = "1" *) 
(* RD_PNTR_WIDTH = "4" *) (* READ_DATA_WIDTH = "14" *) (* READ_MODE = "1" *) 
(* READ_MODE_LL = "1" *) (* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "825241648" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "14" *) 
(* WR_DATA_COUNT_WIDTH = "5" *) (* WR_DC_WIDTH_EXT = "5" *) (* WR_DEPTH_LOG = "4" *) 
(* WR_PNTR_WIDTH = "4" *) (* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "4" *) 
(* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) (* invalid = "0" *) 
(* keep_hierarchy = "soft" *) (* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module axis_data_fifo_8bit_xpm_fifo_base_HD275
   (sleep,
    rst,
    wr_clk,
    wr_en,
    full,
    full_n,
    prog_full,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    empty,
    prog_empty,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr,
    din,
    wr_data_count,
    dout,
    rd_data_count);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  output full;
  output full_n;
  output prog_full;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output empty;
  output prog_empty;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;
  input [13:0]din;
  output [4:0]wr_data_count;
  output [13:0]dout;
  output [4:0]rd_data_count;

  wire \<const0> ;
  wire clr_full;
  wire [3:0]count_value_i__0;
  wire [1:0]curr_fwft_state;
  wire data_valid;
  wire data_valid_fwft1;
  wire [13:0]din;
  wire [13:0]dout;
  wire full_n;
  wire \gen_fwft.empty_fwft_i_reg_n_0 ;
  wire \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ;
  wire leaving_empty0;
  wire [1:0]next_fwft_state__0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_i;
  wire rd_en;
  wire [3:0]rd_pntr_ext;
  wire rdp_inst_n_5;
  wire rdp_inst_n_6;
  wire rdp_inst_n_7;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rst;
  wire rst_d1;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire [3:0]wr_pntr_ext;
  wire xpm_fifo_rst_inst_n_1;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [13:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign dbiterr = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h3FF0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_1));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_1));
  GND GND
       (.G(\<const0> ));
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .O(data_valid_fwft1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(data_valid_fwft1),
        .Q(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_1));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h3575)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_i_1 
       (.I0(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(rd_en),
        .O(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ),
        .Q(data_valid),
        .R(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_5),
        .Q(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_7),
        .Q(full_n),
        .R(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_1));
  (* ADDR_WIDTH_A = "4" *) 
  (* ADDR_WIDTH_B = "4" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "14" *) 
  (* BYTE_WRITE_WIDTH_B = "14" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_BIT_RANGE = "[7:0]" *) 
  (* ECC_MODE = "0" *) 
  (* ECC_TYPE = "NONE" *) 
  (* IGNORE_INIT_SYNTH = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "224" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "16" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "14" *) 
  (* P_MIN_WIDTH_DATA_A = "14" *) 
  (* P_MIN_WIDTH_DATA_B = "14" *) 
  (* P_MIN_WIDTH_DATA_ECC = "14" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "14" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "4" *) 
  (* P_WIDTH_ADDR_READ_B = "4" *) 
  (* P_WIDTH_ADDR_WRITE_A = "4" *) 
  (* P_WIDTH_ADDR_WRITE_B = "4" *) 
  (* P_WIDTH_COL_WRITE_A = "14" *) 
  (* P_WIDTH_COL_WRITE_B = "14" *) 
  (* RAM_DECOMP = "auto" *) 
  (* READ_DATA_WIDTH_A = "14" *) 
  (* READ_DATA_WIDTH_B = "14" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "14" *) 
  (* WRITE_DATA_WIDTH_B = "14" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "16" *) 
  (* rstb_loop_iter = "16" *) 
  axis_data_fifo_8bit_xpm_memory_base_HD276 \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [13:0]),
        .doutb(dout),
        .ena(1'b0),
        .enb(rdp_inst_n_6),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(xpm_fifo_rst_inst_n_1),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(ram_wr_en_i),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  axis_data_fifo_8bit_xpm_counter_updn__parameterized0_HD277 rdp_inst
       (.\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdp_inst_n_6),
        .Q(rd_pntr_ext),
        .clr_full(clr_full),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (rdp_inst_n_5),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 (rdp_inst_n_7),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 (wr_pntr_ext),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg (count_value_i__0),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_i(ram_wr_en_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  axis_data_fifo_8bit_xpm_counter_updn__parameterized1_HD278 rdpp1_inst
       (.E(rdp_inst_n_6),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3}),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  axis_data_fifo_8bit_xpm_fifo_reg_bit_HD279 rst_d1_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .clr_full(clr_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk));
  axis_data_fifo_8bit_xpm_counter_updn__parameterized0_0_HD280 wrp_inst
       (.E(ram_wr_en_i),
        .Q(wr_pntr_ext),
        .\count_value_i_reg[3]_0 (xpm_fifo_rst_inst_n_1),
        .\gen_pntr_flags_cc.ram_empty_i_reg (rdp_inst_n_6),
        .\gen_pntr_flags_cc.ram_empty_i_reg_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3}),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .wr_clk(wr_clk));
  axis_data_fifo_8bit_xpm_counter_updn__parameterized1_1_HD281 wrpp1_inst
       (.E(ram_wr_en_i),
        .Q(count_value_i__0),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .wr_clk(wr_clk));
  axis_data_fifo_8bit_xpm_fifo_rst_HD282 xpm_fifo_rst_inst
       (.E(ram_wr_en_i),
        .Q(xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[3] (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module axis_data_fifo_8bit_xpm_fifo_reg_bit
   (rst_d1,
    clr_full,
    Q,
    wr_clk,
    rst);
  output rst_d1;
  output clr_full;
  input [0:0]Q;
  input wr_clk;
  input rst;

  wire [0:0]Q;
  wire clr_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;

  FDRE #(
    .INIT(1'b0)) 
    d_out_int_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(Q),
        .Q(rst_d1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_2 
       (.I0(rst),
        .I1(rst_d1),
        .I2(Q),
        .O(clr_full));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module axis_data_fifo_8bit_xpm_fifo_reg_bit_HD267
   (rst_d1,
    clr_full,
    wr_clk,
    rst,
    Q);
  output rst_d1;
  output clr_full;
  input wr_clk;
  input rst;
  input [0:0]Q;

  wire [0:0]Q;
  wire clr_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;

  FDRE #(
    .INIT(1'b0)) 
    d_out_int_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(Q),
        .Q(rst_d1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_2 
       (.I0(rst),
        .I1(rst_d1),
        .I2(Q),
        .O(clr_full));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module axis_data_fifo_8bit_xpm_fifo_reg_bit_HD279
   (rst_d1,
    clr_full,
    wr_clk,
    rst,
    Q);
  output rst_d1;
  output clr_full;
  input wr_clk;
  input rst;
  input [0:0]Q;

  wire [0:0]Q;
  wire clr_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;

  FDRE #(
    .INIT(1'b0)) 
    d_out_int_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(Q),
        .Q(rst_d1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_2 
       (.I0(rst),
        .I1(rst_d1),
        .I2(Q),
        .O(clr_full));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module axis_data_fifo_8bit_xpm_fifo_rst
   (E,
    Q,
    rst,
    wr_en,
    \count_value_i_reg[3] ,
    rst_d1,
    wr_clk);
  output [0:0]E;
  output [0:0]Q;
  input rst;
  input wr_en;
  input \count_value_i_reg[3] ;
  input rst_d1;
  input wr_clk;

  wire [0:0]E;
  wire [0:0]Q;
  wire \count_value_i_reg[3] ;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire wr_clk;
  wire wr_en;

  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_cc.fifo_wr_rst_cc[2]_i_1 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .Q(Q),
        .S(rst_i));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[3] ),
        .I2(Q),
        .I3(rst_d1),
        .O(E));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module axis_data_fifo_8bit_xpm_fifo_rst_HD270
   (rst,
    wr_en,
    \count_value_i_reg[3] ,
    rst_d1,
    wr_clk,
    E,
    Q);
  input rst;
  input wr_en;
  input \count_value_i_reg[3] ;
  input rst_d1;
  input wr_clk;
  output [0:0]E;
  output [0:0]Q;

  wire [0:0]E;
  wire [0:0]Q;
  wire \count_value_i_reg[3] ;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire wr_clk;
  wire wr_en;

  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_cc.fifo_wr_rst_cc[2]_i_1 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .Q(Q),
        .S(rst_i));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[3] ),
        .I2(Q),
        .I3(rst_d1),
        .O(E));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module axis_data_fifo_8bit_xpm_fifo_rst_HD282
   (rst,
    wr_en,
    \count_value_i_reg[3] ,
    rst_d1,
    wr_clk,
    E,
    Q);
  input rst;
  input wr_en;
  input \count_value_i_reg[3] ;
  input rst_d1;
  input wr_clk;
  output [0:0]E;
  output [0:0]Q;

  wire [0:0]E;
  wire [0:0]Q;
  wire \count_value_i_reg[3] ;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire wr_clk;
  wire wr_en;

  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_cc.fifo_wr_rst_cc[2]_i_1 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .Q(Q),
        .S(rst_i));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[3] ),
        .I2(Q),
        .I3(rst_d1),
        .O(E));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ADDR_WIDTH_A = "4" *) (* ADDR_WIDTH_B = "4" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "14" *) (* BYTE_WRITE_WIDTH_B = "14" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "0" *) (* MEMORY_SIZE = "224" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "0" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "16" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) 
(* P_MIN_WIDTH_DATA = "14" *) (* P_MIN_WIDTH_DATA_A = "14" *) (* P_MIN_WIDTH_DATA_B = "14" *) 
(* P_MIN_WIDTH_DATA_ECC = "14" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "14" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "4" *) 
(* P_WIDTH_ADDR_READ_B = "4" *) (* P_WIDTH_ADDR_WRITE_A = "4" *) (* P_WIDTH_ADDR_WRITE_B = "4" *) 
(* P_WIDTH_COL_WRITE_A = "14" *) (* P_WIDTH_COL_WRITE_B = "14" *) (* RAM_DECOMP = "auto" *) 
(* READ_DATA_WIDTH_A = "14" *) (* READ_DATA_WIDTH_B = "14" *) (* READ_LATENCY_A = "2" *) 
(* READ_LATENCY_B = "2" *) (* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "" *) 
(* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) 
(* VERSION = "0" *) (* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "14" *) 
(* WRITE_DATA_WIDTH_B = "14" *) (* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) 
(* WRITE_PROTECT = "1" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
(* rsta_loop_iter = "16" *) (* rstb_loop_iter = "16" *) 
module axis_data_fifo_8bit_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [3:0]addra;
  input [13:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [13:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [3:0]addrb;
  input [13:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [13:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire [13:0]dina;
  wire [13:0]doutb;
  wire enb;
  wire [13:0]\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg ;
  wire [13:0]\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 ;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_12_13_SPO_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_12_13__0_SPO_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_11_DOD_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][0] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [0]),
        .Q(doutb[0]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][10] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [10]),
        .Q(doutb[10]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][11] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [11]),
        .Q(doutb[11]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][12] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [12]),
        .Q(doutb[12]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][13] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [13]),
        .Q(doutb[13]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][1] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [1]),
        .Q(doutb[1]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][2] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [2]),
        .Q(doutb[2]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][3] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [3]),
        .Q(doutb[3]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][4] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [4]),
        .Q(doutb[4]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [5]),
        .Q(doutb[5]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [6]),
        .Q(doutb[6]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][7] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [7]),
        .Q(doutb[7]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][8] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [8]),
        .Q(doutb[8]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][9] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [9]),
        .Q(doutb[9]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[0] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [0]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [0]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[10] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [10]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [10]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[11] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [11]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [11]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[12] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [12]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [12]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[13] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [13]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [13]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[1] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [1]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [1]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[2] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [2]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [2]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[3] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [3]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [3]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[4] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [4]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [4]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[5] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [5]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [5]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[6] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [6]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [6]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[7] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [7]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [7]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[8] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [8]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [8]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[9] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [9]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [9]),
        .R(1'b0));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "224" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_UNIQ_BASE_ \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addra}),
        .DIA(dina[1:0]),
        .DIB(dina[3:2]),
        .DIC(dina[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [1:0]),
        .DOB(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [3:2]),
        .DOC(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [5:4]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(wea));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "224" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem_reg_0_15_12_13" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "13" *) 
  RAM32X1D_UNIQ_BASE_ \gen_wr_a.gen_word_narrow.mem_reg_0_15_12_13 
       (.A0(addra[0]),
        .A1(addra[1]),
        .A2(addra[2]),
        .A3(addra[3]),
        .A4(1'b0),
        .D(dina[12]),
        .DPO(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [12]),
        .DPRA0(addrb[0]),
        .DPRA1(addrb[1]),
        .DPRA2(addrb[2]),
        .DPRA3(addrb[3]),
        .DPRA4(1'b0),
        .SPO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_12_13_SPO_UNCONNECTED ),
        .WCLK(clka),
        .WE(wea));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "224" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem_reg_0_15_12_13" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "13" *) 
  RAM32X1D_HD283 \gen_wr_a.gen_word_narrow.mem_reg_0_15_12_13__0 
       (.A0(addra[0]),
        .A1(addra[1]),
        .A2(addra[2]),
        .A3(addra[3]),
        .A4(1'b0),
        .D(dina[13]),
        .DPO(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [13]),
        .DPRA0(addrb[0]),
        .DPRA1(addrb[1]),
        .DPRA2(addrb[2]),
        .DPRA3(addrb[3]),
        .DPRA4(1'b0),
        .SPO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_12_13__0_SPO_UNCONNECTED ),
        .WCLK(clka),
        .WE(wea));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "224" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem_reg_0_15_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M_HD284 \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_11 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addra}),
        .DIA(dina[7:6]),
        .DIB(dina[9:8]),
        .DIC(dina[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [7:6]),
        .DOB(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [9:8]),
        .DOC(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [11:10]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_11_DOD_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(wea));
endmodule

(* ADDR_WIDTH_A = "4" *) (* ADDR_WIDTH_B = "4" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "14" *) (* BYTE_WRITE_WIDTH_B = "14" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "0" *) (* MEMORY_SIZE = "224" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "0" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "16" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) 
(* P_MIN_WIDTH_DATA = "14" *) (* P_MIN_WIDTH_DATA_A = "14" *) (* P_MIN_WIDTH_DATA_B = "14" *) 
(* P_MIN_WIDTH_DATA_ECC = "14" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "14" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "4" *) 
(* P_WIDTH_ADDR_READ_B = "4" *) (* P_WIDTH_ADDR_WRITE_A = "4" *) (* P_WIDTH_ADDR_WRITE_B = "4" *) 
(* P_WIDTH_COL_WRITE_A = "14" *) (* P_WIDTH_COL_WRITE_B = "14" *) (* RAM_DECOMP = "auto" *) 
(* READ_DATA_WIDTH_A = "14" *) (* READ_DATA_WIDTH_B = "14" *) (* READ_LATENCY_A = "2" *) 
(* READ_LATENCY_B = "2" *) (* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "" *) 
(* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) 
(* VERSION = "0" *) (* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "14" *) 
(* WRITE_DATA_WIDTH_B = "14" *) (* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) 
(* WRITE_PROTECT = "1" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
(* rsta_loop_iter = "16" *) (* rstb_loop_iter = "16" *) 
module axis_data_fifo_8bit_xpm_memory_base_HD264
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    injectsbiterra,
    injectdbiterra,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    injectsbiterrb,
    injectdbiterrb,
    sbiterrb,
    dbiterrb,
    wea,
    addra,
    dina,
    douta,
    web,
    addrb,
    dinb,
    doutb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input injectsbiterra;
  input injectdbiterra;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input injectsbiterrb;
  input injectdbiterrb;
  output sbiterrb;
  output dbiterrb;
  input [0:0]wea;
  input [3:0]addra;
  input [13:0]dina;
  output [13:0]douta;
  input [0:0]web;
  input [3:0]addrb;
  input [13:0]dinb;
  output [13:0]doutb;

  wire \<const0> ;
  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire [13:0]dina;
  wire [13:0]doutb;
  wire enb;
  wire [13:0]\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg ;
  wire [13:0]\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 ;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_12_13_SPO_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_12_13__0_SPO_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_11_DOD_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][0] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [0]),
        .Q(doutb[0]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][10] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [10]),
        .Q(doutb[10]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][11] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [11]),
        .Q(doutb[11]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][12] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [12]),
        .Q(doutb[12]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][13] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [13]),
        .Q(doutb[13]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][1] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [1]),
        .Q(doutb[1]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][2] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [2]),
        .Q(doutb[2]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][3] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [3]),
        .Q(doutb[3]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][4] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [4]),
        .Q(doutb[4]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [5]),
        .Q(doutb[5]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [6]),
        .Q(doutb[6]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][7] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [7]),
        .Q(doutb[7]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][8] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [8]),
        .Q(doutb[8]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][9] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [9]),
        .Q(doutb[9]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[0] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [0]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [0]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[10] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [10]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [10]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[11] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [11]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [11]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[12] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [12]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [12]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[13] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [13]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [13]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[1] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [1]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [1]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[2] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [2]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [2]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[3] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [3]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [3]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[4] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [4]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [4]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[5] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [5]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [5]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[6] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [6]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [6]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[7] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [7]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [7]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[8] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [8]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [8]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[9] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [9]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [9]),
        .R(1'b0));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "224" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_HD285 \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addra}),
        .DIA(dina[1:0]),
        .DIB(dina[3:2]),
        .DIC(dina[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [1:0]),
        .DOB(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [3:2]),
        .DOC(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [5:4]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(wea));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "224" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem_reg_0_15_12_13" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "13" *) 
  RAM32X1D_HD286 \gen_wr_a.gen_word_narrow.mem_reg_0_15_12_13 
       (.A0(addra[0]),
        .A1(addra[1]),
        .A2(addra[2]),
        .A3(addra[3]),
        .A4(1'b0),
        .D(dina[12]),
        .DPO(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [12]),
        .DPRA0(addrb[0]),
        .DPRA1(addrb[1]),
        .DPRA2(addrb[2]),
        .DPRA3(addrb[3]),
        .DPRA4(1'b0),
        .SPO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_12_13_SPO_UNCONNECTED ),
        .WCLK(clka),
        .WE(wea));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "224" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem_reg_0_15_12_13" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "13" *) 
  RAM32X1D_HD287 \gen_wr_a.gen_word_narrow.mem_reg_0_15_12_13__0 
       (.A0(addra[0]),
        .A1(addra[1]),
        .A2(addra[2]),
        .A3(addra[3]),
        .A4(1'b0),
        .D(dina[13]),
        .DPO(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [13]),
        .DPRA0(addrb[0]),
        .DPRA1(addrb[1]),
        .DPRA2(addrb[2]),
        .DPRA3(addrb[3]),
        .DPRA4(1'b0),
        .SPO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_12_13__0_SPO_UNCONNECTED ),
        .WCLK(clka),
        .WE(wea));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "224" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem_reg_0_15_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M_HD288 \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_11 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addra}),
        .DIA(dina[7:6]),
        .DIB(dina[9:8]),
        .DIC(dina[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [7:6]),
        .DOB(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [9:8]),
        .DOC(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [11:10]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_11_DOD_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(wea));
endmodule

(* ADDR_WIDTH_A = "4" *) (* ADDR_WIDTH_B = "4" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "14" *) (* BYTE_WRITE_WIDTH_B = "14" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "0" *) (* MEMORY_SIZE = "224" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "0" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "16" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) 
(* P_MIN_WIDTH_DATA = "14" *) (* P_MIN_WIDTH_DATA_A = "14" *) (* P_MIN_WIDTH_DATA_B = "14" *) 
(* P_MIN_WIDTH_DATA_ECC = "14" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "14" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "4" *) 
(* P_WIDTH_ADDR_READ_B = "4" *) (* P_WIDTH_ADDR_WRITE_A = "4" *) (* P_WIDTH_ADDR_WRITE_B = "4" *) 
(* P_WIDTH_COL_WRITE_A = "14" *) (* P_WIDTH_COL_WRITE_B = "14" *) (* RAM_DECOMP = "auto" *) 
(* READ_DATA_WIDTH_A = "14" *) (* READ_DATA_WIDTH_B = "14" *) (* READ_LATENCY_A = "2" *) 
(* READ_LATENCY_B = "2" *) (* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "" *) 
(* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) 
(* VERSION = "0" *) (* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "14" *) 
(* WRITE_DATA_WIDTH_B = "14" *) (* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) 
(* WRITE_PROTECT = "1" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
(* rsta_loop_iter = "16" *) (* rstb_loop_iter = "16" *) 
module axis_data_fifo_8bit_xpm_memory_base_HD276
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    injectsbiterra,
    injectdbiterra,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    injectsbiterrb,
    injectdbiterrb,
    sbiterrb,
    dbiterrb,
    wea,
    addra,
    dina,
    douta,
    web,
    addrb,
    dinb,
    doutb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input injectsbiterra;
  input injectdbiterra;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input injectsbiterrb;
  input injectdbiterrb;
  output sbiterrb;
  output dbiterrb;
  input [0:0]wea;
  input [3:0]addra;
  input [13:0]dina;
  output [13:0]douta;
  input [0:0]web;
  input [3:0]addrb;
  input [13:0]dinb;
  output [13:0]doutb;

  wire \<const0> ;
  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire [13:0]dina;
  wire [13:0]doutb;
  wire enb;
  wire [13:0]\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg ;
  wire [13:0]\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 ;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_12_13_SPO_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_12_13__0_SPO_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_11_DOD_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][0] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [0]),
        .Q(doutb[0]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][10] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [10]),
        .Q(doutb[10]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][11] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [11]),
        .Q(doutb[11]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][12] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [12]),
        .Q(doutb[12]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][13] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [13]),
        .Q(doutb[13]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][1] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [1]),
        .Q(doutb[1]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][2] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [2]),
        .Q(doutb[2]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][3] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [3]),
        .Q(doutb[3]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][4] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [4]),
        .Q(doutb[4]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [5]),
        .Q(doutb[5]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [6]),
        .Q(doutb[6]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][7] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [7]),
        .Q(doutb[7]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][8] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [8]),
        .Q(doutb[8]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][9] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [9]),
        .Q(doutb[9]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[0] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [0]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [0]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[10] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [10]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [10]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[11] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [11]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [11]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[12] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [12]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [12]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[13] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [13]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [13]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[1] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [1]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [1]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[2] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [2]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [2]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[3] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [3]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [3]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[4] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [4]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [4]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[5] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [5]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [5]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[6] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [6]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [6]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[7] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [7]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [7]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[8] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [8]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [8]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg[9] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [9]),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg [9]),
        .R(1'b0));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "224" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_HD289 \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addra}),
        .DIA(dina[1:0]),
        .DIB(dina[3:2]),
        .DIC(dina[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [1:0]),
        .DOB(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [3:2]),
        .DOC(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [5:4]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_5_DOD_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(wea));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "224" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem_reg_0_15_12_13" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "13" *) 
  RAM32X1D_HD290 \gen_wr_a.gen_word_narrow.mem_reg_0_15_12_13 
       (.A0(addra[0]),
        .A1(addra[1]),
        .A2(addra[2]),
        .A3(addra[3]),
        .A4(1'b0),
        .D(dina[12]),
        .DPO(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [12]),
        .DPRA0(addrb[0]),
        .DPRA1(addrb[1]),
        .DPRA2(addrb[2]),
        .DPRA3(addrb[3]),
        .DPRA4(1'b0),
        .SPO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_12_13_SPO_UNCONNECTED ),
        .WCLK(clka),
        .WE(wea));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "224" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem_reg_0_15_12_13" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "13" *) 
  RAM32X1D_HD291 \gen_wr_a.gen_word_narrow.mem_reg_0_15_12_13__0 
       (.A0(addra[0]),
        .A1(addra[1]),
        .A2(addra[2]),
        .A3(addra[3]),
        .A4(1'b0),
        .D(dina[13]),
        .DPO(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [13]),
        .DPRA0(addrb[0]),
        .DPRA1(addrb[1]),
        .DPRA2(addrb[2]),
        .DPRA3(addrb[3]),
        .DPRA4(1'b0),
        .SPO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_12_13__0_SPO_UNCONNECTED ),
        .WCLK(clka),
        .WE(wea));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "224" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem_reg_0_15_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M_HD292 \gen_wr_a.gen_word_narrow.mem_reg_0_15_6_11 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addra}),
        .DIA(dina[7:6]),
        .DIB(dina[9:8]),
        .DIC(dina[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [7:6]),
        .DOB(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [9:8]),
        .DOC(\gen_rd_b.gen_rd_b_synth_template.gen_nc_narrow_pipe.doutb_reg_reg0 [11:10]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_6_11_DOD_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(wea));
endmodule

module spi_master
   (s_axis_tvalid,
    s_axis_tlast,
    Q,
    s_axis_aresetn,
    clk_IBUF_BUFG,
    spi_busy,
    reset_IBUF,
    s_axis_tready,
    led_OBUF);
  output s_axis_tvalid;
  output s_axis_tlast;
  output [7:0]Q;
  input s_axis_aresetn;
  input clk_IBUF_BUFG;
  input spi_busy;
  input reset_IBUF;
  input s_axis_tready;
  input led_OBUF;

  wire [7:0]Q;
  wire \byte_length_buffer[0]_i_2_n_0 ;
  wire \byte_length_buffer[0]_i_3_n_0 ;
  wire \byte_length_buffer[0]_i_4_n_0 ;
  wire \byte_length_buffer[0]_i_5_n_0 ;
  wire \byte_length_buffer[0]_i_6_n_0 ;
  wire \byte_length_buffer[0]_i_7_n_0 ;
  wire \byte_length_buffer[0]_i_8_n_0 ;
  wire \byte_length_buffer[0]_i_9_n_0 ;
  wire \byte_length_buffer[12]_i_2_n_0 ;
  wire \byte_length_buffer[12]_i_3_n_0 ;
  wire \byte_length_buffer[12]_i_4_n_0 ;
  wire \byte_length_buffer[12]_i_5_n_0 ;
  wire \byte_length_buffer[12]_i_6_n_0 ;
  wire \byte_length_buffer[12]_i_7_n_0 ;
  wire \byte_length_buffer[12]_i_8_n_0 ;
  wire \byte_length_buffer[12]_i_9_n_0 ;
  wire \byte_length_buffer[16]_i_2_n_0 ;
  wire \byte_length_buffer[16]_i_3_n_0 ;
  wire \byte_length_buffer[16]_i_4_n_0 ;
  wire \byte_length_buffer[16]_i_5_n_0 ;
  wire \byte_length_buffer[16]_i_6_n_0 ;
  wire \byte_length_buffer[16]_i_7_n_0 ;
  wire \byte_length_buffer[16]_i_8_n_0 ;
  wire \byte_length_buffer[16]_i_9_n_0 ;
  wire \byte_length_buffer[20]_i_2_n_0 ;
  wire \byte_length_buffer[20]_i_3_n_0 ;
  wire \byte_length_buffer[20]_i_4_n_0 ;
  wire \byte_length_buffer[20]_i_5_n_0 ;
  wire \byte_length_buffer[20]_i_6_n_0 ;
  wire \byte_length_buffer[20]_i_7_n_0 ;
  wire \byte_length_buffer[20]_i_8_n_0 ;
  wire \byte_length_buffer[20]_i_9_n_0 ;
  wire \byte_length_buffer[24]_i_2_n_0 ;
  wire \byte_length_buffer[24]_i_3_n_0 ;
  wire \byte_length_buffer[24]_i_4_n_0 ;
  wire \byte_length_buffer[24]_i_5_n_0 ;
  wire \byte_length_buffer[24]_i_6_n_0 ;
  wire \byte_length_buffer[24]_i_7_n_0 ;
  wire \byte_length_buffer[24]_i_8_n_0 ;
  wire \byte_length_buffer[24]_i_9_n_0 ;
  wire \byte_length_buffer[28]_i_2_n_0 ;
  wire \byte_length_buffer[28]_i_3_n_0 ;
  wire \byte_length_buffer[28]_i_4_n_0 ;
  wire \byte_length_buffer[28]_i_5_n_0 ;
  wire \byte_length_buffer[28]_i_6_n_0 ;
  wire \byte_length_buffer[28]_i_7_n_0 ;
  wire \byte_length_buffer[28]_i_8_n_0 ;
  wire \byte_length_buffer[4]_i_2_n_0 ;
  wire \byte_length_buffer[4]_i_3_n_0 ;
  wire \byte_length_buffer[4]_i_4_n_0 ;
  wire \byte_length_buffer[4]_i_5_n_0 ;
  wire \byte_length_buffer[4]_i_6_n_0 ;
  wire \byte_length_buffer[4]_i_7_n_0 ;
  wire \byte_length_buffer[4]_i_8_n_0 ;
  wire \byte_length_buffer[4]_i_9_n_0 ;
  wire \byte_length_buffer[8]_i_2_n_0 ;
  wire \byte_length_buffer[8]_i_3_n_0 ;
  wire \byte_length_buffer[8]_i_4_n_0 ;
  wire \byte_length_buffer[8]_i_5_n_0 ;
  wire \byte_length_buffer[8]_i_6_n_0 ;
  wire \byte_length_buffer[8]_i_7_n_0 ;
  wire \byte_length_buffer[8]_i_8_n_0 ;
  wire \byte_length_buffer[8]_i_9_n_0 ;
  wire [31:0]byte_length_buffer_reg;
  wire \byte_length_buffer_reg[0]_i_1_n_0 ;
  wire \byte_length_buffer_reg[0]_i_1_n_1 ;
  wire \byte_length_buffer_reg[0]_i_1_n_2 ;
  wire \byte_length_buffer_reg[0]_i_1_n_3 ;
  wire \byte_length_buffer_reg[0]_i_1_n_4 ;
  wire \byte_length_buffer_reg[0]_i_1_n_5 ;
  wire \byte_length_buffer_reg[0]_i_1_n_6 ;
  wire \byte_length_buffer_reg[0]_i_1_n_7 ;
  wire \byte_length_buffer_reg[12]_i_1_n_0 ;
  wire \byte_length_buffer_reg[12]_i_1_n_1 ;
  wire \byte_length_buffer_reg[12]_i_1_n_2 ;
  wire \byte_length_buffer_reg[12]_i_1_n_3 ;
  wire \byte_length_buffer_reg[12]_i_1_n_4 ;
  wire \byte_length_buffer_reg[12]_i_1_n_5 ;
  wire \byte_length_buffer_reg[12]_i_1_n_6 ;
  wire \byte_length_buffer_reg[12]_i_1_n_7 ;
  wire \byte_length_buffer_reg[16]_i_1_n_0 ;
  wire \byte_length_buffer_reg[16]_i_1_n_1 ;
  wire \byte_length_buffer_reg[16]_i_1_n_2 ;
  wire \byte_length_buffer_reg[16]_i_1_n_3 ;
  wire \byte_length_buffer_reg[16]_i_1_n_4 ;
  wire \byte_length_buffer_reg[16]_i_1_n_5 ;
  wire \byte_length_buffer_reg[16]_i_1_n_6 ;
  wire \byte_length_buffer_reg[16]_i_1_n_7 ;
  wire \byte_length_buffer_reg[20]_i_1_n_0 ;
  wire \byte_length_buffer_reg[20]_i_1_n_1 ;
  wire \byte_length_buffer_reg[20]_i_1_n_2 ;
  wire \byte_length_buffer_reg[20]_i_1_n_3 ;
  wire \byte_length_buffer_reg[20]_i_1_n_4 ;
  wire \byte_length_buffer_reg[20]_i_1_n_5 ;
  wire \byte_length_buffer_reg[20]_i_1_n_6 ;
  wire \byte_length_buffer_reg[20]_i_1_n_7 ;
  wire \byte_length_buffer_reg[24]_i_1_n_0 ;
  wire \byte_length_buffer_reg[24]_i_1_n_1 ;
  wire \byte_length_buffer_reg[24]_i_1_n_2 ;
  wire \byte_length_buffer_reg[24]_i_1_n_3 ;
  wire \byte_length_buffer_reg[24]_i_1_n_4 ;
  wire \byte_length_buffer_reg[24]_i_1_n_5 ;
  wire \byte_length_buffer_reg[24]_i_1_n_6 ;
  wire \byte_length_buffer_reg[24]_i_1_n_7 ;
  wire \byte_length_buffer_reg[28]_i_1_n_1 ;
  wire \byte_length_buffer_reg[28]_i_1_n_2 ;
  wire \byte_length_buffer_reg[28]_i_1_n_3 ;
  wire \byte_length_buffer_reg[28]_i_1_n_4 ;
  wire \byte_length_buffer_reg[28]_i_1_n_5 ;
  wire \byte_length_buffer_reg[28]_i_1_n_6 ;
  wire \byte_length_buffer_reg[28]_i_1_n_7 ;
  wire \byte_length_buffer_reg[4]_i_1_n_0 ;
  wire \byte_length_buffer_reg[4]_i_1_n_1 ;
  wire \byte_length_buffer_reg[4]_i_1_n_2 ;
  wire \byte_length_buffer_reg[4]_i_1_n_3 ;
  wire \byte_length_buffer_reg[4]_i_1_n_4 ;
  wire \byte_length_buffer_reg[4]_i_1_n_5 ;
  wire \byte_length_buffer_reg[4]_i_1_n_6 ;
  wire \byte_length_buffer_reg[4]_i_1_n_7 ;
  wire \byte_length_buffer_reg[8]_i_1_n_0 ;
  wire \byte_length_buffer_reg[8]_i_1_n_1 ;
  wire \byte_length_buffer_reg[8]_i_1_n_2 ;
  wire \byte_length_buffer_reg[8]_i_1_n_3 ;
  wire \byte_length_buffer_reg[8]_i_1_n_4 ;
  wire \byte_length_buffer_reg[8]_i_1_n_5 ;
  wire \byte_length_buffer_reg[8]_i_1_n_6 ;
  wire \byte_length_buffer_reg[8]_i_1_n_7 ;
  wire clk_IBUF_BUFG;
  wire conf_header;
  wire \conf_header[10]_i_1_n_0 ;
  wire \conf_header[11]_i_1_n_0 ;
  wire \conf_header[22]_i_1_n_0 ;
  wire \conf_header[23]_i_10_n_0 ;
  wire \conf_header[23]_i_11_n_0 ;
  wire \conf_header[23]_i_12_n_0 ;
  wire \conf_header[23]_i_2_n_0 ;
  wire \conf_header[23]_i_3_n_0 ;
  wire \conf_header[23]_i_4_n_0 ;
  wire \conf_header[23]_i_5_n_0 ;
  wire \conf_header[23]_i_6_n_0 ;
  wire \conf_header[23]_i_7_n_0 ;
  wire \conf_header[23]_i_8_n_0 ;
  wire \conf_header[23]_i_9_n_0 ;
  wire \conf_header[7]_i_1_n_0 ;
  wire \conf_header[8]_i_1_n_0 ;
  wire \conf_header[9]_i_1_n_0 ;
  wire \conf_header_reg_n_0_[7] ;
  wire conf_header_valid;
  wire [7:6]in3;
  wire [3:0]in4;
  wire led_OBUF;
  wire [3:0]masterstate;
  wire masterstate_next;
  wire \masterstate_next[0]_i_1_n_0 ;
  wire \masterstate_next[1]_i_1_n_0 ;
  wire \masterstate_next[2]_i_1_n_0 ;
  wire \masterstate_next[3]_i_2_n_0 ;
  wire \masterstate_next_reg_n_0_[0] ;
  wire \masterstate_next_reg_n_0_[1] ;
  wire \masterstate_next_reg_n_0_[2] ;
  wire \masterstate_next_reg_n_0_[3] ;
  wire [1:1]p_0_in;
  wire [7:0]p_1_in;
  wire [2:0]payload_byte_length;
  wire \payload_byte_length[1]_i_1_n_0 ;
  wire \payload_byte_length_reg_n_0_[0] ;
  wire \payload_byte_length_reg_n_0_[1] ;
  wire \payload_byte_length_reg_n_0_[2] ;
  wire [7:0]payload_data;
  wire payload_data0;
  wire payload_data0_carry__0_i_1_n_0;
  wire payload_data0_carry__0_i_2_n_0;
  wire payload_data0_carry__0_i_3_n_0;
  wire payload_data0_carry__0_i_4_n_0;
  wire payload_data0_carry__0_i_5_n_0;
  wire payload_data0_carry__0_i_6_n_0;
  wire payload_data0_carry__0_i_7_n_0;
  wire payload_data0_carry__0_i_8_n_0;
  wire payload_data0_carry__0_n_0;
  wire payload_data0_carry__0_n_1;
  wire payload_data0_carry__0_n_2;
  wire payload_data0_carry__0_n_3;
  wire payload_data0_carry__1_i_1_n_0;
  wire payload_data0_carry__1_i_2_n_0;
  wire payload_data0_carry__1_i_3_n_0;
  wire payload_data0_carry__1_i_4_n_0;
  wire payload_data0_carry__1_i_5_n_0;
  wire payload_data0_carry__1_i_6_n_0;
  wire payload_data0_carry__1_i_7_n_0;
  wire payload_data0_carry__1_i_8_n_0;
  wire payload_data0_carry__1_n_0;
  wire payload_data0_carry__1_n_1;
  wire payload_data0_carry__1_n_2;
  wire payload_data0_carry__1_n_3;
  wire payload_data0_carry__2_i_1_n_0;
  wire payload_data0_carry__2_i_2_n_0;
  wire payload_data0_carry__2_i_3_n_0;
  wire payload_data0_carry__2_i_4_n_0;
  wire payload_data0_carry__2_i_5_n_0;
  wire payload_data0_carry__2_i_6_n_0;
  wire payload_data0_carry__2_i_7_n_0;
  wire payload_data0_carry__2_i_8_n_0;
  wire payload_data0_carry__2_n_1;
  wire payload_data0_carry__2_n_2;
  wire payload_data0_carry__2_n_3;
  wire payload_data0_carry_i_1_n_0;
  wire payload_data0_carry_i_2_n_0;
  wire payload_data0_carry_i_3_n_0;
  wire payload_data0_carry_i_4_n_0;
  wire payload_data0_carry_i_5_n_0;
  wire payload_data0_carry_i_6_n_0;
  wire payload_data0_carry_i_7_n_0;
  wire payload_data0_carry_i_8_n_0;
  wire payload_data0_carry_n_0;
  wire payload_data0_carry_n_1;
  wire payload_data0_carry_n_2;
  wire payload_data0_carry_n_3;
  wire \payload_data[7]_i_1_n_0 ;
  wire payload_data_has_been_set_i_1_n_0;
  wire payload_data_has_been_set_i_2_n_0;
  wire payload_data_has_been_set_i_3_n_0;
  wire payload_data_has_been_set_i_4_n_0;
  wire payload_data_has_been_set_i_5_n_0;
  wire payload_data_has_been_set_i_6_n_0;
  wire payload_data_has_been_set_i_7_n_0;
  wire payload_data_has_been_set_i_8_n_0;
  wire payload_data_has_been_set_reg_n_0;
  wire payload_last_i_10_n_0;
  wire payload_last_i_11_n_0;
  wire payload_last_i_12_n_0;
  wire payload_last_i_1_n_0;
  wire payload_last_i_2_n_0;
  wire payload_last_i_3_n_0;
  wire payload_last_i_4_n_0;
  wire payload_last_i_5_n_0;
  wire payload_last_i_6_n_0;
  wire payload_last_i_7_n_0;
  wire payload_last_i_8_n_0;
  wire payload_last_i_9_n_0;
  wire payload_last_reg_n_0;
  wire payload_valid_i_1_n_0;
  wire prev_payload_data_has_been_set;
  wire [31:0]raw_payload_buffer;
  wire \raw_payload_buffer[30]_i_1_n_0 ;
  wire \raw_payload_buffer[8]_i_1_n_0 ;
  wire [31:0]raw_payload_buffer_0;
  wire reset_IBUF;
  wire s_axis_aresetn;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire \shift_payload_buffer[12]_i_1_n_0 ;
  wire \shift_payload_buffer[13]_i_1_n_0 ;
  wire \shift_payload_buffer[14]_i_1_n_0 ;
  wire \shift_payload_buffer[15]_i_1_n_0 ;
  wire \shift_payload_buffer[16]_i_1_n_0 ;
  wire \shift_payload_buffer[17]_i_1_n_0 ;
  wire \shift_payload_buffer[18]_i_1_n_0 ;
  wire \shift_payload_buffer[20]_i_1_n_0 ;
  wire \shift_payload_buffer[21]_i_1_n_0 ;
  wire \shift_payload_buffer[22]_i_1_n_0 ;
  wire \shift_payload_buffer[23]_i_1_n_0 ;
  wire \shift_payload_buffer[24]_i_1_n_0 ;
  wire \shift_payload_buffer[25]_i_1_n_0 ;
  wire \shift_payload_buffer[26]_i_1_n_0 ;
  wire \shift_payload_buffer[27]_i_1_n_0 ;
  wire \shift_payload_buffer[28]_i_1_n_0 ;
  wire \shift_payload_buffer[29]_i_1_n_0 ;
  wire \shift_payload_buffer[30]_i_1_n_0 ;
  wire \shift_payload_buffer[31]_i_1_n_0 ;
  wire \shift_payload_buffer[31]_i_2_n_0 ;
  wire \shift_payload_buffer[8]_i_1_n_0 ;
  wire \shift_payload_buffer[9]_i_1_n_0 ;
  wire \shift_payload_buffer_reg_n_0_[0] ;
  wire \shift_payload_buffer_reg_n_0_[12] ;
  wire \shift_payload_buffer_reg_n_0_[13] ;
  wire \shift_payload_buffer_reg_n_0_[14] ;
  wire \shift_payload_buffer_reg_n_0_[15] ;
  wire \shift_payload_buffer_reg_n_0_[16] ;
  wire \shift_payload_buffer_reg_n_0_[17] ;
  wire \shift_payload_buffer_reg_n_0_[18] ;
  wire \shift_payload_buffer_reg_n_0_[20] ;
  wire \shift_payload_buffer_reg_n_0_[21] ;
  wire \shift_payload_buffer_reg_n_0_[22] ;
  wire \shift_payload_buffer_reg_n_0_[23] ;
  wire \shift_payload_buffer_reg_n_0_[6] ;
  wire \shift_payload_buffer_reg_n_0_[7] ;
  wire \shift_payload_buffer_reg_n_0_[8] ;
  wire \shift_payload_buffer_reg_n_0_[9] ;
  wire spi_busy;
  wire [0:0]streamhandler_state;
  wire [0:0]streamhandler_state_next;
  wire \streamhandler_state_next[0]_i_1_n_0 ;
  wire [3:3]\NLW_byte_length_buffer_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_payload_data0_carry_O_UNCONNECTED;
  wire [3:0]NLW_payload_data0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_payload_data0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_payload_data0_carry__2_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'h8A)) 
    \byte_length_buffer[0]_i_2 
       (.I0(byte_length_buffer_reg[3]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \byte_length_buffer[0]_i_3 
       (.I0(\payload_byte_length_reg_n_0_[2] ),
        .I1(payload_data_has_been_set_reg_n_0),
        .I2(prev_payload_data_has_been_set),
        .I3(byte_length_buffer_reg[2]),
        .O(\byte_length_buffer[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \byte_length_buffer[0]_i_4 
       (.I0(\payload_byte_length_reg_n_0_[1] ),
        .I1(payload_data_has_been_set_reg_n_0),
        .I2(prev_payload_data_has_been_set),
        .I3(byte_length_buffer_reg[1]),
        .O(\byte_length_buffer[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \byte_length_buffer[0]_i_5 
       (.I0(\payload_byte_length_reg_n_0_[0] ),
        .I1(payload_data_has_been_set_reg_n_0),
        .I2(prev_payload_data_has_been_set),
        .I3(byte_length_buffer_reg[0]),
        .O(\byte_length_buffer[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \byte_length_buffer[0]_i_6 
       (.I0(byte_length_buffer_reg[3]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h5C55)) 
    \byte_length_buffer[0]_i_7 
       (.I0(byte_length_buffer_reg[2]),
        .I1(\payload_byte_length_reg_n_0_[2] ),
        .I2(prev_payload_data_has_been_set),
        .I3(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h5C55)) 
    \byte_length_buffer[0]_i_8 
       (.I0(byte_length_buffer_reg[1]),
        .I1(\payload_byte_length_reg_n_0_[1] ),
        .I2(prev_payload_data_has_been_set),
        .I3(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h5C55)) 
    \byte_length_buffer[0]_i_9 
       (.I0(byte_length_buffer_reg[0]),
        .I1(\payload_byte_length_reg_n_0_[0] ),
        .I2(prev_payload_data_has_been_set),
        .I3(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[0]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \byte_length_buffer[12]_i_2 
       (.I0(byte_length_buffer_reg[15]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \byte_length_buffer[12]_i_3 
       (.I0(byte_length_buffer_reg[14]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \byte_length_buffer[12]_i_4 
       (.I0(byte_length_buffer_reg[13]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \byte_length_buffer[12]_i_5 
       (.I0(byte_length_buffer_reg[12]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \byte_length_buffer[12]_i_6 
       (.I0(byte_length_buffer_reg[15]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[12]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \byte_length_buffer[12]_i_7 
       (.I0(byte_length_buffer_reg[14]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[12]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \byte_length_buffer[12]_i_8 
       (.I0(byte_length_buffer_reg[13]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[12]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \byte_length_buffer[12]_i_9 
       (.I0(byte_length_buffer_reg[12]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[12]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \byte_length_buffer[16]_i_2 
       (.I0(byte_length_buffer_reg[19]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[16]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \byte_length_buffer[16]_i_3 
       (.I0(byte_length_buffer_reg[18]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[16]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \byte_length_buffer[16]_i_4 
       (.I0(byte_length_buffer_reg[17]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[16]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \byte_length_buffer[16]_i_5 
       (.I0(byte_length_buffer_reg[16]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \byte_length_buffer[16]_i_6 
       (.I0(byte_length_buffer_reg[19]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[16]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \byte_length_buffer[16]_i_7 
       (.I0(byte_length_buffer_reg[18]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[16]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \byte_length_buffer[16]_i_8 
       (.I0(byte_length_buffer_reg[17]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[16]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \byte_length_buffer[16]_i_9 
       (.I0(byte_length_buffer_reg[16]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[16]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \byte_length_buffer[20]_i_2 
       (.I0(byte_length_buffer_reg[23]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[20]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \byte_length_buffer[20]_i_3 
       (.I0(byte_length_buffer_reg[22]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[20]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \byte_length_buffer[20]_i_4 
       (.I0(byte_length_buffer_reg[21]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[20]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \byte_length_buffer[20]_i_5 
       (.I0(byte_length_buffer_reg[20]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[20]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \byte_length_buffer[20]_i_6 
       (.I0(byte_length_buffer_reg[23]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[20]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \byte_length_buffer[20]_i_7 
       (.I0(byte_length_buffer_reg[22]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[20]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \byte_length_buffer[20]_i_8 
       (.I0(byte_length_buffer_reg[21]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[20]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \byte_length_buffer[20]_i_9 
       (.I0(byte_length_buffer_reg[20]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[20]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \byte_length_buffer[24]_i_2 
       (.I0(byte_length_buffer_reg[27]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[24]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \byte_length_buffer[24]_i_3 
       (.I0(byte_length_buffer_reg[26]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[24]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \byte_length_buffer[24]_i_4 
       (.I0(byte_length_buffer_reg[25]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[24]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \byte_length_buffer[24]_i_5 
       (.I0(byte_length_buffer_reg[24]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[24]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \byte_length_buffer[24]_i_6 
       (.I0(byte_length_buffer_reg[27]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[24]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \byte_length_buffer[24]_i_7 
       (.I0(byte_length_buffer_reg[26]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[24]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \byte_length_buffer[24]_i_8 
       (.I0(byte_length_buffer_reg[25]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[24]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \byte_length_buffer[24]_i_9 
       (.I0(byte_length_buffer_reg[24]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[24]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \byte_length_buffer[28]_i_2 
       (.I0(byte_length_buffer_reg[30]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[28]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \byte_length_buffer[28]_i_3 
       (.I0(byte_length_buffer_reg[29]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[28]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \byte_length_buffer[28]_i_4 
       (.I0(byte_length_buffer_reg[28]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[28]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \byte_length_buffer[28]_i_5 
       (.I0(byte_length_buffer_reg[31]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[28]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \byte_length_buffer[28]_i_6 
       (.I0(byte_length_buffer_reg[30]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[28]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \byte_length_buffer[28]_i_7 
       (.I0(byte_length_buffer_reg[29]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[28]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \byte_length_buffer[28]_i_8 
       (.I0(byte_length_buffer_reg[28]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[28]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \byte_length_buffer[4]_i_2 
       (.I0(byte_length_buffer_reg[7]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \byte_length_buffer[4]_i_3 
       (.I0(byte_length_buffer_reg[6]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \byte_length_buffer[4]_i_4 
       (.I0(byte_length_buffer_reg[5]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \byte_length_buffer[4]_i_5 
       (.I0(byte_length_buffer_reg[4]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \byte_length_buffer[4]_i_6 
       (.I0(byte_length_buffer_reg[7]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[4]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \byte_length_buffer[4]_i_7 
       (.I0(byte_length_buffer_reg[6]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[4]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \byte_length_buffer[4]_i_8 
       (.I0(byte_length_buffer_reg[5]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[4]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \byte_length_buffer[4]_i_9 
       (.I0(byte_length_buffer_reg[4]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[4]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \byte_length_buffer[8]_i_2 
       (.I0(byte_length_buffer_reg[11]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \byte_length_buffer[8]_i_3 
       (.I0(byte_length_buffer_reg[10]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \byte_length_buffer[8]_i_4 
       (.I0(byte_length_buffer_reg[9]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \byte_length_buffer[8]_i_5 
       (.I0(byte_length_buffer_reg[8]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \byte_length_buffer[8]_i_6 
       (.I0(byte_length_buffer_reg[11]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[8]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \byte_length_buffer[8]_i_7 
       (.I0(byte_length_buffer_reg[10]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[8]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \byte_length_buffer[8]_i_8 
       (.I0(byte_length_buffer_reg[9]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[8]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \byte_length_buffer[8]_i_9 
       (.I0(byte_length_buffer_reg[8]),
        .I1(prev_payload_data_has_been_set),
        .I2(payload_data_has_been_set_reg_n_0),
        .O(\byte_length_buffer[8]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \byte_length_buffer_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\byte_length_buffer_reg[0]_i_1_n_7 ),
        .Q(byte_length_buffer_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \byte_length_buffer_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\byte_length_buffer_reg[0]_i_1_n_0 ,\byte_length_buffer_reg[0]_i_1_n_1 ,\byte_length_buffer_reg[0]_i_1_n_2 ,\byte_length_buffer_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\byte_length_buffer[0]_i_2_n_0 ,\byte_length_buffer[0]_i_3_n_0 ,\byte_length_buffer[0]_i_4_n_0 ,\byte_length_buffer[0]_i_5_n_0 }),
        .O({\byte_length_buffer_reg[0]_i_1_n_4 ,\byte_length_buffer_reg[0]_i_1_n_5 ,\byte_length_buffer_reg[0]_i_1_n_6 ,\byte_length_buffer_reg[0]_i_1_n_7 }),
        .S({\byte_length_buffer[0]_i_6_n_0 ,\byte_length_buffer[0]_i_7_n_0 ,\byte_length_buffer[0]_i_8_n_0 ,\byte_length_buffer[0]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \byte_length_buffer_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\byte_length_buffer_reg[8]_i_1_n_5 ),
        .Q(byte_length_buffer_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_length_buffer_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\byte_length_buffer_reg[8]_i_1_n_4 ),
        .Q(byte_length_buffer_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_length_buffer_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\byte_length_buffer_reg[12]_i_1_n_7 ),
        .Q(byte_length_buffer_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \byte_length_buffer_reg[12]_i_1 
       (.CI(\byte_length_buffer_reg[8]_i_1_n_0 ),
        .CO({\byte_length_buffer_reg[12]_i_1_n_0 ,\byte_length_buffer_reg[12]_i_1_n_1 ,\byte_length_buffer_reg[12]_i_1_n_2 ,\byte_length_buffer_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\byte_length_buffer[12]_i_2_n_0 ,\byte_length_buffer[12]_i_3_n_0 ,\byte_length_buffer[12]_i_4_n_0 ,\byte_length_buffer[12]_i_5_n_0 }),
        .O({\byte_length_buffer_reg[12]_i_1_n_4 ,\byte_length_buffer_reg[12]_i_1_n_5 ,\byte_length_buffer_reg[12]_i_1_n_6 ,\byte_length_buffer_reg[12]_i_1_n_7 }),
        .S({\byte_length_buffer[12]_i_6_n_0 ,\byte_length_buffer[12]_i_7_n_0 ,\byte_length_buffer[12]_i_8_n_0 ,\byte_length_buffer[12]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \byte_length_buffer_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\byte_length_buffer_reg[12]_i_1_n_6 ),
        .Q(byte_length_buffer_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_length_buffer_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\byte_length_buffer_reg[12]_i_1_n_5 ),
        .Q(byte_length_buffer_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_length_buffer_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\byte_length_buffer_reg[12]_i_1_n_4 ),
        .Q(byte_length_buffer_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_length_buffer_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\byte_length_buffer_reg[16]_i_1_n_7 ),
        .Q(byte_length_buffer_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \byte_length_buffer_reg[16]_i_1 
       (.CI(\byte_length_buffer_reg[12]_i_1_n_0 ),
        .CO({\byte_length_buffer_reg[16]_i_1_n_0 ,\byte_length_buffer_reg[16]_i_1_n_1 ,\byte_length_buffer_reg[16]_i_1_n_2 ,\byte_length_buffer_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\byte_length_buffer[16]_i_2_n_0 ,\byte_length_buffer[16]_i_3_n_0 ,\byte_length_buffer[16]_i_4_n_0 ,\byte_length_buffer[16]_i_5_n_0 }),
        .O({\byte_length_buffer_reg[16]_i_1_n_4 ,\byte_length_buffer_reg[16]_i_1_n_5 ,\byte_length_buffer_reg[16]_i_1_n_6 ,\byte_length_buffer_reg[16]_i_1_n_7 }),
        .S({\byte_length_buffer[16]_i_6_n_0 ,\byte_length_buffer[16]_i_7_n_0 ,\byte_length_buffer[16]_i_8_n_0 ,\byte_length_buffer[16]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \byte_length_buffer_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\byte_length_buffer_reg[16]_i_1_n_6 ),
        .Q(byte_length_buffer_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_length_buffer_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\byte_length_buffer_reg[16]_i_1_n_5 ),
        .Q(byte_length_buffer_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_length_buffer_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\byte_length_buffer_reg[16]_i_1_n_4 ),
        .Q(byte_length_buffer_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_length_buffer_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\byte_length_buffer_reg[0]_i_1_n_6 ),
        .Q(byte_length_buffer_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_length_buffer_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\byte_length_buffer_reg[20]_i_1_n_7 ),
        .Q(byte_length_buffer_reg[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \byte_length_buffer_reg[20]_i_1 
       (.CI(\byte_length_buffer_reg[16]_i_1_n_0 ),
        .CO({\byte_length_buffer_reg[20]_i_1_n_0 ,\byte_length_buffer_reg[20]_i_1_n_1 ,\byte_length_buffer_reg[20]_i_1_n_2 ,\byte_length_buffer_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\byte_length_buffer[20]_i_2_n_0 ,\byte_length_buffer[20]_i_3_n_0 ,\byte_length_buffer[20]_i_4_n_0 ,\byte_length_buffer[20]_i_5_n_0 }),
        .O({\byte_length_buffer_reg[20]_i_1_n_4 ,\byte_length_buffer_reg[20]_i_1_n_5 ,\byte_length_buffer_reg[20]_i_1_n_6 ,\byte_length_buffer_reg[20]_i_1_n_7 }),
        .S({\byte_length_buffer[20]_i_6_n_0 ,\byte_length_buffer[20]_i_7_n_0 ,\byte_length_buffer[20]_i_8_n_0 ,\byte_length_buffer[20]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \byte_length_buffer_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\byte_length_buffer_reg[20]_i_1_n_6 ),
        .Q(byte_length_buffer_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_length_buffer_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\byte_length_buffer_reg[20]_i_1_n_5 ),
        .Q(byte_length_buffer_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_length_buffer_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\byte_length_buffer_reg[20]_i_1_n_4 ),
        .Q(byte_length_buffer_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_length_buffer_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\byte_length_buffer_reg[24]_i_1_n_7 ),
        .Q(byte_length_buffer_reg[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \byte_length_buffer_reg[24]_i_1 
       (.CI(\byte_length_buffer_reg[20]_i_1_n_0 ),
        .CO({\byte_length_buffer_reg[24]_i_1_n_0 ,\byte_length_buffer_reg[24]_i_1_n_1 ,\byte_length_buffer_reg[24]_i_1_n_2 ,\byte_length_buffer_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\byte_length_buffer[24]_i_2_n_0 ,\byte_length_buffer[24]_i_3_n_0 ,\byte_length_buffer[24]_i_4_n_0 ,\byte_length_buffer[24]_i_5_n_0 }),
        .O({\byte_length_buffer_reg[24]_i_1_n_4 ,\byte_length_buffer_reg[24]_i_1_n_5 ,\byte_length_buffer_reg[24]_i_1_n_6 ,\byte_length_buffer_reg[24]_i_1_n_7 }),
        .S({\byte_length_buffer[24]_i_6_n_0 ,\byte_length_buffer[24]_i_7_n_0 ,\byte_length_buffer[24]_i_8_n_0 ,\byte_length_buffer[24]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \byte_length_buffer_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\byte_length_buffer_reg[24]_i_1_n_6 ),
        .Q(byte_length_buffer_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_length_buffer_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\byte_length_buffer_reg[24]_i_1_n_5 ),
        .Q(byte_length_buffer_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_length_buffer_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\byte_length_buffer_reg[24]_i_1_n_4 ),
        .Q(byte_length_buffer_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_length_buffer_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\byte_length_buffer_reg[28]_i_1_n_7 ),
        .Q(byte_length_buffer_reg[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \byte_length_buffer_reg[28]_i_1 
       (.CI(\byte_length_buffer_reg[24]_i_1_n_0 ),
        .CO({\NLW_byte_length_buffer_reg[28]_i_1_CO_UNCONNECTED [3],\byte_length_buffer_reg[28]_i_1_n_1 ,\byte_length_buffer_reg[28]_i_1_n_2 ,\byte_length_buffer_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\byte_length_buffer[28]_i_2_n_0 ,\byte_length_buffer[28]_i_3_n_0 ,\byte_length_buffer[28]_i_4_n_0 }),
        .O({\byte_length_buffer_reg[28]_i_1_n_4 ,\byte_length_buffer_reg[28]_i_1_n_5 ,\byte_length_buffer_reg[28]_i_1_n_6 ,\byte_length_buffer_reg[28]_i_1_n_7 }),
        .S({\byte_length_buffer[28]_i_5_n_0 ,\byte_length_buffer[28]_i_6_n_0 ,\byte_length_buffer[28]_i_7_n_0 ,\byte_length_buffer[28]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \byte_length_buffer_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\byte_length_buffer_reg[28]_i_1_n_6 ),
        .Q(byte_length_buffer_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_length_buffer_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\byte_length_buffer_reg[0]_i_1_n_5 ),
        .Q(byte_length_buffer_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_length_buffer_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\byte_length_buffer_reg[28]_i_1_n_5 ),
        .Q(byte_length_buffer_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_length_buffer_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\byte_length_buffer_reg[28]_i_1_n_4 ),
        .Q(byte_length_buffer_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_length_buffer_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\byte_length_buffer_reg[0]_i_1_n_4 ),
        .Q(byte_length_buffer_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_length_buffer_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\byte_length_buffer_reg[4]_i_1_n_7 ),
        .Q(byte_length_buffer_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \byte_length_buffer_reg[4]_i_1 
       (.CI(\byte_length_buffer_reg[0]_i_1_n_0 ),
        .CO({\byte_length_buffer_reg[4]_i_1_n_0 ,\byte_length_buffer_reg[4]_i_1_n_1 ,\byte_length_buffer_reg[4]_i_1_n_2 ,\byte_length_buffer_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\byte_length_buffer[4]_i_2_n_0 ,\byte_length_buffer[4]_i_3_n_0 ,\byte_length_buffer[4]_i_4_n_0 ,\byte_length_buffer[4]_i_5_n_0 }),
        .O({\byte_length_buffer_reg[4]_i_1_n_4 ,\byte_length_buffer_reg[4]_i_1_n_5 ,\byte_length_buffer_reg[4]_i_1_n_6 ,\byte_length_buffer_reg[4]_i_1_n_7 }),
        .S({\byte_length_buffer[4]_i_6_n_0 ,\byte_length_buffer[4]_i_7_n_0 ,\byte_length_buffer[4]_i_8_n_0 ,\byte_length_buffer[4]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \byte_length_buffer_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\byte_length_buffer_reg[4]_i_1_n_6 ),
        .Q(byte_length_buffer_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_length_buffer_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\byte_length_buffer_reg[4]_i_1_n_5 ),
        .Q(byte_length_buffer_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_length_buffer_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\byte_length_buffer_reg[4]_i_1_n_4 ),
        .Q(byte_length_buffer_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_length_buffer_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\byte_length_buffer_reg[8]_i_1_n_7 ),
        .Q(byte_length_buffer_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \byte_length_buffer_reg[8]_i_1 
       (.CI(\byte_length_buffer_reg[4]_i_1_n_0 ),
        .CO({\byte_length_buffer_reg[8]_i_1_n_0 ,\byte_length_buffer_reg[8]_i_1_n_1 ,\byte_length_buffer_reg[8]_i_1_n_2 ,\byte_length_buffer_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\byte_length_buffer[8]_i_2_n_0 ,\byte_length_buffer[8]_i_3_n_0 ,\byte_length_buffer[8]_i_4_n_0 ,\byte_length_buffer[8]_i_5_n_0 }),
        .O({\byte_length_buffer_reg[8]_i_1_n_4 ,\byte_length_buffer_reg[8]_i_1_n_5 ,\byte_length_buffer_reg[8]_i_1_n_6 ,\byte_length_buffer_reg[8]_i_1_n_7 }),
        .S({\byte_length_buffer[8]_i_6_n_0 ,\byte_length_buffer[8]_i_7_n_0 ,\byte_length_buffer[8]_i_8_n_0 ,\byte_length_buffer[8]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \byte_length_buffer_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\byte_length_buffer_reg[8]_i_1_n_6 ),
        .Q(byte_length_buffer_reg[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0AE0)) 
    \conf_header[10]_i_1 
       (.I0(masterstate[1]),
        .I1(payload_data_has_been_set_reg_n_0),
        .I2(masterstate[0]),
        .I3(masterstate[2]),
        .O(\conf_header[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h70737070)) 
    \conf_header[11]_i_1 
       (.I0(masterstate[0]),
        .I1(masterstate[1]),
        .I2(masterstate[2]),
        .I3(masterstate[3]),
        .I4(payload_data_has_been_set_reg_n_0),
        .O(\conf_header[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hCCAA30AA)) 
    \conf_header[22]_i_1 
       (.I0(masterstate[3]),
        .I1(masterstate[1]),
        .I2(payload_data_has_been_set_reg_n_0),
        .I3(masterstate[0]),
        .I4(masterstate[2]),
        .O(\conf_header[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000A0C0A000A000A)) 
    \conf_header[23]_i_1 
       (.I0(\conf_header[23]_i_3_n_0 ),
        .I1(\conf_header[23]_i_4_n_0 ),
        .I2(\conf_header[23]_i_5_n_0 ),
        .I3(masterstate[3]),
        .I4(masterstate[2]),
        .I5(\conf_header[23]_i_6_n_0 ),
        .O(conf_header));
  LUT6 #(
    .INIT(64'hFFFFFFF7DBFFEFFF)) 
    \conf_header[23]_i_10 
       (.I0(masterstate[1]),
        .I1(masterstate[0]),
        .I2(\masterstate_next_reg_n_0_[0] ),
        .I3(\masterstate_next_reg_n_0_[2] ),
        .I4(\masterstate_next_reg_n_0_[1] ),
        .I5(\masterstate_next_reg_n_0_[3] ),
        .O(\conf_header[23]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \conf_header[23]_i_11 
       (.I0(\masterstate_next_reg_n_0_[3] ),
        .I1(\masterstate_next_reg_n_0_[1] ),
        .I2(\masterstate_next_reg_n_0_[0] ),
        .I3(\masterstate_next_reg_n_0_[2] ),
        .O(\conf_header[23]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \conf_header[23]_i_12 
       (.I0(\masterstate_next_reg_n_0_[3] ),
        .I1(\masterstate_next_reg_n_0_[1] ),
        .I2(\masterstate_next_reg_n_0_[2] ),
        .I3(\masterstate_next_reg_n_0_[0] ),
        .O(\conf_header[23]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \conf_header[23]_i_2 
       (.I0(masterstate[3]),
        .I1(masterstate[2]),
        .I2(masterstate[1]),
        .I3(payload_data_has_been_set_reg_n_0),
        .O(\conf_header[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFAAAAAAAEAE)) 
    \conf_header[23]_i_3 
       (.I0(\conf_header[23]_i_7_n_0 ),
        .I1(\conf_header[23]_i_8_n_0 ),
        .I2(\conf_header[23]_i_9_n_0 ),
        .I3(\conf_header[23]_i_10_n_0 ),
        .I4(payload_data_has_been_set_reg_n_0),
        .I5(masterstate[2]),
        .O(\conf_header[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \conf_header[23]_i_4 
       (.I0(masterstate[1]),
        .I1(masterstate[0]),
        .O(\conf_header[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \conf_header[23]_i_5 
       (.I0(p_0_in),
        .I1(spi_busy),
        .O(\conf_header[23]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h55554555)) 
    \conf_header[23]_i_6 
       (.I0(payload_data_has_been_set_reg_n_0),
        .I1(\masterstate_next_reg_n_0_[2] ),
        .I2(\masterstate_next_reg_n_0_[0] ),
        .I3(\masterstate_next_reg_n_0_[3] ),
        .I4(\masterstate_next_reg_n_0_[1] ),
        .O(\conf_header[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0030001000000010)) 
    \conf_header[23]_i_7 
       (.I0(\conf_header[23]_i_11_n_0 ),
        .I1(payload_data_has_been_set_reg_n_0),
        .I2(masterstate[1]),
        .I3(masterstate[2]),
        .I4(masterstate[0]),
        .I5(\conf_header[23]_i_12_n_0 ),
        .O(\conf_header[23]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \conf_header[23]_i_8 
       (.I0(masterstate[0]),
        .I1(masterstate[1]),
        .O(\conf_header[23]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \conf_header[23]_i_9 
       (.I0(\masterstate_next_reg_n_0_[3] ),
        .I1(\masterstate_next_reg_n_0_[1] ),
        .I2(\masterstate_next_reg_n_0_[2] ),
        .I3(\masterstate_next_reg_n_0_[0] ),
        .O(\conf_header[23]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \conf_header[7]_i_1 
       (.I0(payload_data_has_been_set_reg_n_0),
        .I1(masterstate[2]),
        .I2(masterstate[0]),
        .I3(masterstate[1]),
        .O(\conf_header[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h77FB)) 
    \conf_header[8]_i_1 
       (.I0(masterstate[2]),
        .I1(masterstate[0]),
        .I2(payload_data_has_been_set_reg_n_0),
        .I3(masterstate[1]),
        .O(\conf_header[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00F00202)) 
    \conf_header[9]_i_1 
       (.I0(payload_data_has_been_set_reg_n_0),
        .I1(masterstate[3]),
        .I2(masterstate[2]),
        .I3(masterstate[0]),
        .I4(masterstate[1]),
        .O(\conf_header[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \conf_header_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(conf_header),
        .D(\conf_header[10]_i_1_n_0 ),
        .Q(in4[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \conf_header_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(conf_header),
        .D(\conf_header[11]_i_1_n_0 ),
        .Q(in4[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \conf_header_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(conf_header),
        .D(\conf_header[22]_i_1_n_0 ),
        .Q(in3[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \conf_header_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(conf_header),
        .D(\conf_header[23]_i_2_n_0 ),
        .Q(in3[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \conf_header_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(conf_header),
        .D(\conf_header[7]_i_1_n_0 ),
        .Q(\conf_header_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \conf_header_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(conf_header),
        .D(\conf_header[8]_i_1_n_0 ),
        .Q(in4[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \conf_header_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(conf_header),
        .D(\conf_header[9]_i_1_n_0 ),
        .Q(in4[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \masterstate_next[0]_i_1 
       (.I0(masterstate[3]),
        .I1(masterstate[0]),
        .O(\masterstate_next[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \masterstate_next[1]_i_1 
       (.I0(masterstate[3]),
        .I1(masterstate[0]),
        .I2(masterstate[1]),
        .O(\masterstate_next[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \masterstate_next[2]_i_1 
       (.I0(masterstate[2]),
        .I1(masterstate[1]),
        .I2(masterstate[0]),
        .I3(masterstate[3]),
        .O(\masterstate_next[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFAAAAA8A)) 
    \masterstate_next[3]_i_2 
       (.I0(masterstate[3]),
        .I1(led_OBUF),
        .I2(masterstate[0]),
        .I3(masterstate[2]),
        .I4(masterstate[1]),
        .O(\masterstate_next[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \masterstate_next_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(masterstate_next),
        .D(\masterstate_next[0]_i_1_n_0 ),
        .Q(\masterstate_next_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \masterstate_next_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(masterstate_next),
        .D(\masterstate_next[1]_i_1_n_0 ),
        .Q(\masterstate_next_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \masterstate_next_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(masterstate_next),
        .D(\masterstate_next[2]_i_1_n_0 ),
        .Q(\masterstate_next_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \masterstate_next_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(masterstate_next),
        .D(\masterstate_next[3]_i_2_n_0 ),
        .Q(\masterstate_next_reg_n_0_[3] ),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \masterstate_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\masterstate_next_reg_n_0_[0] ),
        .Q(masterstate[0]));
  FDCE #(
    .INIT(1'b0)) 
    \masterstate_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\masterstate_next_reg_n_0_[1] ),
        .Q(masterstate[1]));
  FDCE #(
    .INIT(1'b0)) 
    \masterstate_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\masterstate_next_reg_n_0_[2] ),
        .Q(masterstate[2]));
  FDCE #(
    .INIT(1'b0)) 
    \masterstate_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\masterstate_next_reg_n_0_[3] ),
        .Q(masterstate[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h83)) 
    \payload_byte_length[0]_i_1 
       (.I0(masterstate[0]),
        .I1(masterstate[1]),
        .I2(masterstate[2]),
        .O(payload_byte_length[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \payload_byte_length[1]_i_1 
       (.I0(masterstate[1]),
        .I1(masterstate[0]),
        .I2(masterstate[2]),
        .O(\payload_byte_length[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h5C)) 
    \payload_byte_length[2]_i_1 
       (.I0(masterstate[0]),
        .I1(masterstate[1]),
        .I2(masterstate[2]),
        .O(payload_byte_length[2]));
  FDRE #(
    .INIT(1'b0)) 
    \payload_byte_length_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(conf_header),
        .D(payload_byte_length[0]),
        .Q(\payload_byte_length_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \payload_byte_length_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(conf_header),
        .D(\payload_byte_length[1]_i_1_n_0 ),
        .Q(\payload_byte_length_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \payload_byte_length_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(conf_header),
        .D(payload_byte_length[2]),
        .Q(\payload_byte_length_reg_n_0_[2] ),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 payload_data0_carry
       (.CI(1'b0),
        .CO({payload_data0_carry_n_0,payload_data0_carry_n_1,payload_data0_carry_n_2,payload_data0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({payload_data0_carry_i_1_n_0,payload_data0_carry_i_2_n_0,payload_data0_carry_i_3_n_0,payload_data0_carry_i_4_n_0}),
        .O(NLW_payload_data0_carry_O_UNCONNECTED[3:0]),
        .S({payload_data0_carry_i_5_n_0,payload_data0_carry_i_6_n_0,payload_data0_carry_i_7_n_0,payload_data0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 payload_data0_carry__0
       (.CI(payload_data0_carry_n_0),
        .CO({payload_data0_carry__0_n_0,payload_data0_carry__0_n_1,payload_data0_carry__0_n_2,payload_data0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({payload_data0_carry__0_i_1_n_0,payload_data0_carry__0_i_2_n_0,payload_data0_carry__0_i_3_n_0,payload_data0_carry__0_i_4_n_0}),
        .O(NLW_payload_data0_carry__0_O_UNCONNECTED[3:0]),
        .S({payload_data0_carry__0_i_5_n_0,payload_data0_carry__0_i_6_n_0,payload_data0_carry__0_i_7_n_0,payload_data0_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    payload_data0_carry__0_i_1
       (.I0(byte_length_buffer_reg[15]),
        .I1(byte_length_buffer_reg[14]),
        .O(payload_data0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    payload_data0_carry__0_i_2
       (.I0(byte_length_buffer_reg[13]),
        .I1(byte_length_buffer_reg[12]),
        .O(payload_data0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    payload_data0_carry__0_i_3
       (.I0(byte_length_buffer_reg[11]),
        .I1(byte_length_buffer_reg[10]),
        .O(payload_data0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    payload_data0_carry__0_i_4
       (.I0(byte_length_buffer_reg[8]),
        .I1(byte_length_buffer_reg[9]),
        .O(payload_data0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    payload_data0_carry__0_i_5
       (.I0(byte_length_buffer_reg[14]),
        .I1(byte_length_buffer_reg[15]),
        .O(payload_data0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    payload_data0_carry__0_i_6
       (.I0(byte_length_buffer_reg[12]),
        .I1(byte_length_buffer_reg[13]),
        .O(payload_data0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    payload_data0_carry__0_i_7
       (.I0(byte_length_buffer_reg[10]),
        .I1(byte_length_buffer_reg[11]),
        .O(payload_data0_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    payload_data0_carry__0_i_8
       (.I0(byte_length_buffer_reg[9]),
        .I1(byte_length_buffer_reg[8]),
        .O(payload_data0_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 payload_data0_carry__1
       (.CI(payload_data0_carry__0_n_0),
        .CO({payload_data0_carry__1_n_0,payload_data0_carry__1_n_1,payload_data0_carry__1_n_2,payload_data0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({payload_data0_carry__1_i_1_n_0,payload_data0_carry__1_i_2_n_0,payload_data0_carry__1_i_3_n_0,payload_data0_carry__1_i_4_n_0}),
        .O(NLW_payload_data0_carry__1_O_UNCONNECTED[3:0]),
        .S({payload_data0_carry__1_i_5_n_0,payload_data0_carry__1_i_6_n_0,payload_data0_carry__1_i_7_n_0,payload_data0_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    payload_data0_carry__1_i_1
       (.I0(byte_length_buffer_reg[22]),
        .I1(byte_length_buffer_reg[23]),
        .O(payload_data0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    payload_data0_carry__1_i_2
       (.I0(byte_length_buffer_reg[20]),
        .I1(byte_length_buffer_reg[21]),
        .O(payload_data0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    payload_data0_carry__1_i_3
       (.I0(byte_length_buffer_reg[18]),
        .I1(byte_length_buffer_reg[19]),
        .O(payload_data0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    payload_data0_carry__1_i_4
       (.I0(byte_length_buffer_reg[17]),
        .I1(byte_length_buffer_reg[16]),
        .O(payload_data0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    payload_data0_carry__1_i_5
       (.I0(byte_length_buffer_reg[23]),
        .I1(byte_length_buffer_reg[22]),
        .O(payload_data0_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    payload_data0_carry__1_i_6
       (.I0(byte_length_buffer_reg[21]),
        .I1(byte_length_buffer_reg[20]),
        .O(payload_data0_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    payload_data0_carry__1_i_7
       (.I0(byte_length_buffer_reg[19]),
        .I1(byte_length_buffer_reg[18]),
        .O(payload_data0_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    payload_data0_carry__1_i_8
       (.I0(byte_length_buffer_reg[16]),
        .I1(byte_length_buffer_reg[17]),
        .O(payload_data0_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 payload_data0_carry__2
       (.CI(payload_data0_carry__1_n_0),
        .CO({payload_data0,payload_data0_carry__2_n_1,payload_data0_carry__2_n_2,payload_data0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({payload_data0_carry__2_i_1_n_0,payload_data0_carry__2_i_2_n_0,payload_data0_carry__2_i_3_n_0,payload_data0_carry__2_i_4_n_0}),
        .O(NLW_payload_data0_carry__2_O_UNCONNECTED[3:0]),
        .S({payload_data0_carry__2_i_5_n_0,payload_data0_carry__2_i_6_n_0,payload_data0_carry__2_i_7_n_0,payload_data0_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    payload_data0_carry__2_i_1
       (.I0(byte_length_buffer_reg[30]),
        .I1(byte_length_buffer_reg[31]),
        .O(payload_data0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    payload_data0_carry__2_i_2
       (.I0(byte_length_buffer_reg[28]),
        .I1(byte_length_buffer_reg[29]),
        .O(payload_data0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    payload_data0_carry__2_i_3
       (.I0(byte_length_buffer_reg[26]),
        .I1(byte_length_buffer_reg[27]),
        .O(payload_data0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    payload_data0_carry__2_i_4
       (.I0(byte_length_buffer_reg[24]),
        .I1(byte_length_buffer_reg[25]),
        .O(payload_data0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    payload_data0_carry__2_i_5
       (.I0(byte_length_buffer_reg[31]),
        .I1(byte_length_buffer_reg[30]),
        .O(payload_data0_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    payload_data0_carry__2_i_6
       (.I0(byte_length_buffer_reg[29]),
        .I1(byte_length_buffer_reg[28]),
        .O(payload_data0_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    payload_data0_carry__2_i_7
       (.I0(byte_length_buffer_reg[27]),
        .I1(byte_length_buffer_reg[26]),
        .O(payload_data0_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    payload_data0_carry__2_i_8
       (.I0(byte_length_buffer_reg[25]),
        .I1(byte_length_buffer_reg[24]),
        .O(payload_data0_carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    payload_data0_carry_i_1
       (.I0(byte_length_buffer_reg[6]),
        .I1(byte_length_buffer_reg[7]),
        .O(payload_data0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    payload_data0_carry_i_2
       (.I0(byte_length_buffer_reg[5]),
        .I1(byte_length_buffer_reg[4]),
        .O(payload_data0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    payload_data0_carry_i_3
       (.I0(byte_length_buffer_reg[2]),
        .I1(byte_length_buffer_reg[3]),
        .O(payload_data0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    payload_data0_carry_i_4
       (.I0(byte_length_buffer_reg[0]),
        .I1(byte_length_buffer_reg[1]),
        .O(payload_data0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    payload_data0_carry_i_5
       (.I0(byte_length_buffer_reg[7]),
        .I1(byte_length_buffer_reg[6]),
        .O(payload_data0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    payload_data0_carry_i_6
       (.I0(byte_length_buffer_reg[4]),
        .I1(byte_length_buffer_reg[5]),
        .O(payload_data0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    payload_data0_carry_i_7
       (.I0(byte_length_buffer_reg[3]),
        .I1(byte_length_buffer_reg[2]),
        .O(payload_data0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    payload_data0_carry_i_8
       (.I0(byte_length_buffer_reg[1]),
        .I1(byte_length_buffer_reg[0]),
        .O(payload_data0_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \payload_data[7]_i_1 
       (.I0(payload_data0),
        .I1(streamhandler_state),
        .O(\payload_data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBABABABF8A8A8A80)) 
    payload_data_has_been_set_i_1
       (.I0(payload_data_has_been_set_i_2_n_0),
        .I1(payload_data_has_been_set_i_3_n_0),
        .I2(masterstate[3]),
        .I3(\conf_header[23]_i_3_n_0 ),
        .I4(payload_data_has_been_set_i_4_n_0),
        .I5(payload_data_has_been_set_reg_n_0),
        .O(payload_data_has_been_set_i_1_n_0));
  LUT6 #(
    .INIT(64'h0011000F00110000)) 
    payload_data_has_been_set_i_2
       (.I0(payload_data_has_been_set_i_5_n_0),
        .I1(masterstate[2]),
        .I2(payload_data_has_been_set_i_6_n_0),
        .I3(\conf_header[23]_i_5_n_0 ),
        .I4(masterstate[3]),
        .I5(payload_data_has_been_set_i_7_n_0),
        .O(payload_data_has_been_set_i_2_n_0));
  LUT6 #(
    .INIT(64'hF0FF000FF0FE000E)) 
    payload_data_has_been_set_i_3
       (.I0(\conf_header[23]_i_6_n_0 ),
        .I1(\conf_header[23]_i_5_n_0 ),
        .I2(masterstate[2]),
        .I3(masterstate[1]),
        .I4(led_OBUF),
        .I5(masterstate[0]),
        .O(payload_data_has_been_set_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h44444440)) 
    payload_data_has_been_set_i_4
       (.I0(spi_busy),
        .I1(p_0_in),
        .I2(masterstate[0]),
        .I3(masterstate[2]),
        .I4(masterstate[1]),
        .O(payload_data_has_been_set_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAAAABAAA)) 
    payload_data_has_been_set_i_5
       (.I0(masterstate[0]),
        .I1(\masterstate_next_reg_n_0_[2] ),
        .I2(\masterstate_next_reg_n_0_[0] ),
        .I3(\masterstate_next_reg_n_0_[3] ),
        .I4(\masterstate_next_reg_n_0_[1] ),
        .O(payload_data_has_been_set_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000010000002100)) 
    payload_data_has_been_set_i_6
       (.I0(masterstate[1]),
        .I1(\masterstate_next_reg_n_0_[2] ),
        .I2(\masterstate_next_reg_n_0_[0] ),
        .I3(payload_data_has_been_set_i_8_n_0),
        .I4(masterstate[2]),
        .I5(masterstate[0]),
        .O(payload_data_has_been_set_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAAAAFF3F)) 
    payload_data_has_been_set_i_7
       (.I0(\conf_header[23]_i_10_n_0 ),
        .I1(masterstate[0]),
        .I2(masterstate[1]),
        .I3(\conf_header[23]_i_12_n_0 ),
        .I4(masterstate[2]),
        .O(payload_data_has_been_set_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    payload_data_has_been_set_i_8
       (.I0(\masterstate_next_reg_n_0_[1] ),
        .I1(\masterstate_next_reg_n_0_[3] ),
        .O(payload_data_has_been_set_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    payload_data_has_been_set_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(payload_data_has_been_set_i_1_n_0),
        .Q(payload_data_has_been_set_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \payload_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\payload_data[7]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(payload_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \payload_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\payload_data[7]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(payload_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \payload_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\payload_data[7]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(payload_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \payload_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\payload_data[7]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(payload_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \payload_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\payload_data[7]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(payload_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \payload_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\payload_data[7]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(payload_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \payload_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\payload_data[7]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(payload_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \payload_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\payload_data[7]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(payload_data[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    payload_last_i_1
       (.I0(payload_last_i_2_n_0),
        .I1(payload_last_i_3_n_0),
        .I2(payload_last_i_4_n_0),
        .I3(payload_last_i_5_n_0),
        .I4(streamhandler_state),
        .I5(payload_last_reg_n_0),
        .O(payload_last_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    payload_last_i_10
       (.I0(byte_length_buffer_reg[18]),
        .I1(byte_length_buffer_reg[19]),
        .O(payload_last_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    payload_last_i_11
       (.I0(byte_length_buffer_reg[3]),
        .I1(byte_length_buffer_reg[2]),
        .O(payload_last_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    payload_last_i_12
       (.I0(byte_length_buffer_reg[4]),
        .I1(byte_length_buffer_reg[5]),
        .O(payload_last_i_12_n_0));
  LUT4 #(
    .INIT(16'h0040)) 
    payload_last_i_2
       (.I0(byte_length_buffer_reg[1]),
        .I1(byte_length_buffer_reg[0]),
        .I2(payload_data0),
        .I3(payload_last_i_6_n_0),
        .O(payload_last_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    payload_last_i_3
       (.I0(byte_length_buffer_reg[20]),
        .I1(byte_length_buffer_reg[21]),
        .I2(byte_length_buffer_reg[8]),
        .I3(byte_length_buffer_reg[9]),
        .I4(payload_last_i_7_n_0),
        .I5(payload_last_i_8_n_0),
        .O(payload_last_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    payload_last_i_4
       (.I0(byte_length_buffer_reg[28]),
        .I1(byte_length_buffer_reg[29]),
        .I2(byte_length_buffer_reg[22]),
        .I3(byte_length_buffer_reg[23]),
        .I4(payload_last_i_9_n_0),
        .I5(payload_last_i_10_n_0),
        .O(payload_last_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    payload_last_i_5
       (.I0(byte_length_buffer_reg[10]),
        .I1(byte_length_buffer_reg[11]),
        .I2(byte_length_buffer_reg[12]),
        .I3(byte_length_buffer_reg[13]),
        .I4(byte_length_buffer_reg[15]),
        .I5(byte_length_buffer_reg[14]),
        .O(payload_last_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    payload_last_i_6
       (.I0(payload_last_i_11_n_0),
        .I1(byte_length_buffer_reg[16]),
        .I2(byte_length_buffer_reg[17]),
        .I3(payload_last_i_12_n_0),
        .I4(byte_length_buffer_reg[31]),
        .I5(byte_length_buffer_reg[30]),
        .O(payload_last_i_6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    payload_last_i_7
       (.I0(byte_length_buffer_reg[24]),
        .I1(byte_length_buffer_reg[25]),
        .O(payload_last_i_7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    payload_last_i_8
       (.I0(byte_length_buffer_reg[6]),
        .I1(byte_length_buffer_reg[7]),
        .O(payload_last_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    payload_last_i_9
       (.I0(byte_length_buffer_reg[26]),
        .I1(byte_length_buffer_reg[27]),
        .O(payload_last_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    payload_last_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(payload_last_i_1_n_0),
        .Q(payload_last_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    payload_valid_i_1
       (.I0(payload_data0),
        .I1(streamhandler_state),
        .I2(conf_header_valid),
        .O(payload_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    payload_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(payload_valid_i_1_n_0),
        .Q(conf_header_valid),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    prev_payload_data_has_been_set_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(payload_data_has_been_set_reg_n_0),
        .Q(prev_payload_data_has_been_set),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    prev_spi_busy_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(spi_busy),
        .Q(p_0_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \raw_payload_buffer[0]_i_1 
       (.I0(masterstate[1]),
        .I1(masterstate[2]),
        .I2(masterstate[0]),
        .I3(masterstate[3]),
        .O(raw_payload_buffer_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h1002)) 
    \raw_payload_buffer[15]_i_1 
       (.I0(masterstate[2]),
        .I1(masterstate[3]),
        .I2(masterstate[1]),
        .I3(masterstate[0]),
        .O(raw_payload_buffer_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \raw_payload_buffer[20]_i_1 
       (.I0(masterstate[0]),
        .I1(masterstate[1]),
        .I2(masterstate[3]),
        .I3(masterstate[2]),
        .O(raw_payload_buffer_0[20]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hF0F8)) 
    \raw_payload_buffer[24]_i_1 
       (.I0(masterstate[1]),
        .I1(masterstate[0]),
        .I2(masterstate[3]),
        .I3(masterstate[2]),
        .O(raw_payload_buffer_0[24]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \raw_payload_buffer[26]_i_1 
       (.I0(masterstate[2]),
        .I1(masterstate[1]),
        .I2(masterstate[0]),
        .I3(masterstate[3]),
        .O(raw_payload_buffer_0[26]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0062)) 
    \raw_payload_buffer[28]_i_1 
       (.I0(masterstate[2]),
        .I1(masterstate[1]),
        .I2(masterstate[0]),
        .I3(masterstate[3]),
        .O(raw_payload_buffer_0[28]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \raw_payload_buffer[29]_i_1 
       (.I0(masterstate[3]),
        .I1(masterstate[0]),
        .I2(masterstate[1]),
        .I3(masterstate[2]),
        .O(raw_payload_buffer_0[29]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h1454)) 
    \raw_payload_buffer[30]_i_1 
       (.I0(masterstate[3]),
        .I1(masterstate[2]),
        .I2(masterstate[1]),
        .I3(masterstate[0]),
        .O(\raw_payload_buffer[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h1555)) 
    \raw_payload_buffer[31]_i_1 
       (.I0(masterstate[3]),
        .I1(masterstate[0]),
        .I2(masterstate[1]),
        .I3(masterstate[2]),
        .O(raw_payload_buffer_0[31]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \raw_payload_buffer[6]_i_1 
       (.I0(masterstate[2]),
        .I1(masterstate[0]),
        .I2(masterstate[3]),
        .O(raw_payload_buffer_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \raw_payload_buffer[7]_i_1 
       (.I0(masterstate[0]),
        .I1(masterstate[1]),
        .I2(masterstate[3]),
        .I3(masterstate[2]),
        .O(raw_payload_buffer_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \raw_payload_buffer[8]_i_1 
       (.I0(masterstate[3]),
        .I1(masterstate[1]),
        .I2(masterstate[2]),
        .O(\raw_payload_buffer[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h1022)) 
    \raw_payload_buffer[9]_i_1 
       (.I0(masterstate[2]),
        .I1(masterstate[3]),
        .I2(masterstate[1]),
        .I3(masterstate[0]),
        .O(raw_payload_buffer_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \raw_payload_buffer_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(conf_header),
        .D(raw_payload_buffer_0[0]),
        .Q(raw_payload_buffer[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \raw_payload_buffer_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(conf_header),
        .D(raw_payload_buffer_0[15]),
        .Q(raw_payload_buffer[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \raw_payload_buffer_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(conf_header),
        .D(raw_payload_buffer_0[20]),
        .Q(raw_payload_buffer[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \raw_payload_buffer_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(conf_header),
        .D(raw_payload_buffer_0[24]),
        .Q(raw_payload_buffer[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \raw_payload_buffer_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(conf_header),
        .D(raw_payload_buffer_0[26]),
        .Q(raw_payload_buffer[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \raw_payload_buffer_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(conf_header),
        .D(raw_payload_buffer_0[28]),
        .Q(raw_payload_buffer[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \raw_payload_buffer_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(conf_header),
        .D(raw_payload_buffer_0[29]),
        .Q(raw_payload_buffer[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \raw_payload_buffer_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(conf_header),
        .D(\raw_payload_buffer[30]_i_1_n_0 ),
        .Q(raw_payload_buffer[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \raw_payload_buffer_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(conf_header),
        .D(raw_payload_buffer_0[31]),
        .Q(raw_payload_buffer[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \raw_payload_buffer_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(conf_header),
        .D(raw_payload_buffer_0[6]),
        .Q(raw_payload_buffer[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \raw_payload_buffer_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(conf_header),
        .D(raw_payload_buffer_0[7]),
        .Q(raw_payload_buffer[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \raw_payload_buffer_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(conf_header),
        .D(\raw_payload_buffer[8]_i_1_n_0 ),
        .Q(raw_payload_buffer[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \raw_payload_buffer_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(conf_header),
        .D(raw_payload_buffer_0[9]),
        .Q(raw_payload_buffer[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8088)) 
    \shift_payload_buffer[12]_i_1 
       (.I0(payload_data0),
        .I1(streamhandler_state),
        .I2(prev_payload_data_has_been_set),
        .I3(payload_data_has_been_set_reg_n_0),
        .O(\shift_payload_buffer[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \shift_payload_buffer[13]_i_1 
       (.I0(raw_payload_buffer[15]),
        .I1(payload_data_has_been_set_reg_n_0),
        .I2(prev_payload_data_has_been_set),
        .I3(\shift_payload_buffer_reg_n_0_[6] ),
        .O(\shift_payload_buffer[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \shift_payload_buffer[14]_i_1 
       (.I0(raw_payload_buffer[20]),
        .I1(payload_data_has_been_set_reg_n_0),
        .I2(prev_payload_data_has_been_set),
        .I3(\shift_payload_buffer_reg_n_0_[6] ),
        .O(\shift_payload_buffer[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \shift_payload_buffer[15]_i_1 
       (.I0(raw_payload_buffer[15]),
        .I1(payload_data_has_been_set_reg_n_0),
        .I2(prev_payload_data_has_been_set),
        .I3(\shift_payload_buffer_reg_n_0_[7] ),
        .O(\shift_payload_buffer[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \shift_payload_buffer[16]_i_1 
       (.I0(raw_payload_buffer[28]),
        .I1(payload_data_has_been_set_reg_n_0),
        .I2(prev_payload_data_has_been_set),
        .I3(\shift_payload_buffer_reg_n_0_[8] ),
        .O(\shift_payload_buffer[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \shift_payload_buffer[17]_i_1 
       (.I0(raw_payload_buffer[20]),
        .I1(payload_data_has_been_set_reg_n_0),
        .I2(prev_payload_data_has_been_set),
        .I3(\shift_payload_buffer_reg_n_0_[9] ),
        .O(\shift_payload_buffer[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \shift_payload_buffer[18]_i_1 
       (.I0(raw_payload_buffer[28]),
        .I1(payload_data_has_been_set_reg_n_0),
        .I2(prev_payload_data_has_been_set),
        .I3(\shift_payload_buffer_reg_n_0_[13] ),
        .O(\shift_payload_buffer[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \shift_payload_buffer[20]_i_1 
       (.I0(raw_payload_buffer[20]),
        .I1(payload_data_has_been_set_reg_n_0),
        .I2(prev_payload_data_has_been_set),
        .I3(\shift_payload_buffer_reg_n_0_[12] ),
        .O(\shift_payload_buffer[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \shift_payload_buffer[21]_i_1 
       (.I0(raw_payload_buffer[30]),
        .I1(payload_data_has_been_set_reg_n_0),
        .I2(prev_payload_data_has_been_set),
        .I3(\shift_payload_buffer_reg_n_0_[13] ),
        .O(\shift_payload_buffer[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \shift_payload_buffer[22]_i_1 
       (.I0(raw_payload_buffer[29]),
        .I1(payload_data_has_been_set_reg_n_0),
        .I2(prev_payload_data_has_been_set),
        .I3(\shift_payload_buffer_reg_n_0_[14] ),
        .O(\shift_payload_buffer[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \shift_payload_buffer[23]_i_1 
       (.I0(raw_payload_buffer[30]),
        .I1(payload_data_has_been_set_reg_n_0),
        .I2(prev_payload_data_has_been_set),
        .I3(\shift_payload_buffer_reg_n_0_[15] ),
        .O(\shift_payload_buffer[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \shift_payload_buffer[24]_i_1 
       (.I0(raw_payload_buffer[24]),
        .I1(payload_data_has_been_set_reg_n_0),
        .I2(prev_payload_data_has_been_set),
        .I3(\shift_payload_buffer_reg_n_0_[16] ),
        .O(\shift_payload_buffer[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \shift_payload_buffer[25]_i_1 
       (.I0(raw_payload_buffer[28]),
        .I1(payload_data_has_been_set_reg_n_0),
        .I2(prev_payload_data_has_been_set),
        .I3(\shift_payload_buffer_reg_n_0_[17] ),
        .O(\shift_payload_buffer[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \shift_payload_buffer[26]_i_1 
       (.I0(raw_payload_buffer[26]),
        .I1(payload_data_has_been_set_reg_n_0),
        .I2(prev_payload_data_has_been_set),
        .I3(\shift_payload_buffer_reg_n_0_[18] ),
        .O(\shift_payload_buffer[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \shift_payload_buffer[27]_i_1 
       (.I0(raw_payload_buffer[28]),
        .I1(payload_data_has_been_set_reg_n_0),
        .I2(prev_payload_data_has_been_set),
        .I3(\shift_payload_buffer_reg_n_0_[23] ),
        .O(\shift_payload_buffer[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \shift_payload_buffer[28]_i_1 
       (.I0(raw_payload_buffer[28]),
        .I1(payload_data_has_been_set_reg_n_0),
        .I2(prev_payload_data_has_been_set),
        .I3(\shift_payload_buffer_reg_n_0_[20] ),
        .O(\shift_payload_buffer[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \shift_payload_buffer[29]_i_1 
       (.I0(raw_payload_buffer[29]),
        .I1(payload_data_has_been_set_reg_n_0),
        .I2(prev_payload_data_has_been_set),
        .I3(\shift_payload_buffer_reg_n_0_[21] ),
        .O(\shift_payload_buffer[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \shift_payload_buffer[30]_i_1 
       (.I0(raw_payload_buffer[30]),
        .I1(payload_data_has_been_set_reg_n_0),
        .I2(prev_payload_data_has_been_set),
        .I3(\shift_payload_buffer_reg_n_0_[22] ),
        .O(\shift_payload_buffer[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA08)) 
    \shift_payload_buffer[31]_i_1 
       (.I0(streamhandler_state),
        .I1(payload_data_has_been_set_reg_n_0),
        .I2(prev_payload_data_has_been_set),
        .I3(payload_data0),
        .O(\shift_payload_buffer[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \shift_payload_buffer[31]_i_2 
       (.I0(raw_payload_buffer[31]),
        .I1(payload_data_has_been_set_reg_n_0),
        .I2(prev_payload_data_has_been_set),
        .I3(\shift_payload_buffer_reg_n_0_[23] ),
        .O(\shift_payload_buffer[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \shift_payload_buffer[8]_i_1 
       (.I0(raw_payload_buffer[8]),
        .I1(payload_data_has_been_set_reg_n_0),
        .I2(prev_payload_data_has_been_set),
        .I3(\shift_payload_buffer_reg_n_0_[0] ),
        .O(\shift_payload_buffer[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \shift_payload_buffer[9]_i_1 
       (.I0(raw_payload_buffer[9]),
        .I1(payload_data_has_been_set_reg_n_0),
        .I2(prev_payload_data_has_been_set),
        .I3(\shift_payload_buffer_reg_n_0_[7] ),
        .O(\shift_payload_buffer[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_payload_buffer_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(raw_payload_buffer[0]),
        .Q(\shift_payload_buffer_reg_n_0_[0] ),
        .R(\shift_payload_buffer[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_payload_buffer_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(raw_payload_buffer[15]),
        .Q(\shift_payload_buffer_reg_n_0_[12] ),
        .R(\shift_payload_buffer[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_payload_buffer_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\shift_payload_buffer[13]_i_1_n_0 ),
        .Q(\shift_payload_buffer_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_payload_buffer_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\shift_payload_buffer[14]_i_1_n_0 ),
        .Q(\shift_payload_buffer_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_payload_buffer_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\shift_payload_buffer[15]_i_1_n_0 ),
        .Q(\shift_payload_buffer_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_payload_buffer_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\shift_payload_buffer[16]_i_1_n_0 ),
        .Q(\shift_payload_buffer_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_payload_buffer_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\shift_payload_buffer[17]_i_1_n_0 ),
        .Q(\shift_payload_buffer_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_payload_buffer_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\shift_payload_buffer[18]_i_1_n_0 ),
        .Q(\shift_payload_buffer_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_payload_buffer_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\shift_payload_buffer[20]_i_1_n_0 ),
        .Q(\shift_payload_buffer_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_payload_buffer_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\shift_payload_buffer[21]_i_1_n_0 ),
        .Q(\shift_payload_buffer_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_payload_buffer_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\shift_payload_buffer[22]_i_1_n_0 ),
        .Q(\shift_payload_buffer_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_payload_buffer_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\shift_payload_buffer[23]_i_1_n_0 ),
        .Q(\shift_payload_buffer_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_payload_buffer_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\shift_payload_buffer[24]_i_1_n_0 ),
        .Q(p_1_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_payload_buffer_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\shift_payload_buffer[25]_i_1_n_0 ),
        .Q(p_1_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_payload_buffer_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\shift_payload_buffer[26]_i_1_n_0 ),
        .Q(p_1_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_payload_buffer_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\shift_payload_buffer[27]_i_1_n_0 ),
        .Q(p_1_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_payload_buffer_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\shift_payload_buffer[28]_i_1_n_0 ),
        .Q(p_1_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_payload_buffer_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\shift_payload_buffer[29]_i_1_n_0 ),
        .Q(p_1_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_payload_buffer_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\shift_payload_buffer[30]_i_1_n_0 ),
        .Q(p_1_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_payload_buffer_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\shift_payload_buffer[31]_i_2_n_0 ),
        .Q(p_1_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_payload_buffer_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(raw_payload_buffer[6]),
        .Q(\shift_payload_buffer_reg_n_0_[6] ),
        .R(\shift_payload_buffer[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_payload_buffer_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(raw_payload_buffer[7]),
        .Q(\shift_payload_buffer_reg_n_0_[7] ),
        .R(\shift_payload_buffer[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_payload_buffer_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\shift_payload_buffer[8]_i_1_n_0 ),
        .Q(\shift_payload_buffer_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_payload_buffer_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\shift_payload_buffer[31]_i_1_n_0 ),
        .D(\shift_payload_buffer[9]_i_1_n_0 ),
        .Q(\shift_payload_buffer_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \streamhandler_state_next[0]_i_1 
       (.I0(streamhandler_state_next),
        .I1(reset_IBUF),
        .I2(streamhandler_state),
        .O(\streamhandler_state_next[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \streamhandler_state_next_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\streamhandler_state_next[0]_i_1_n_0 ),
        .Q(streamhandler_state_next),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \streamhandler_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(streamhandler_state_next),
        .Q(streamhandler_state),
        .R(1'b0));
  spi_streamer u_spi_streamer
       (.E(masterstate_next),
        .Q(payload_data),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .led_OBUF(led_OBUF),
        .\masterstate_next_reg[0] (masterstate),
        .\masterstate_next_reg[0]_0 (\conf_header[23]_i_5_n_0 ),
        .reset_IBUF(reset_IBUF),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tlast(payload_last_reg_n_0),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(conf_header_valid),
        .\tdata_reg[4]_0 ({in3,in4,\conf_header_reg_n_0_[7] }),
        .\tdata_reg[7]_0 (Q),
        .tlast_reg_0(s_axis_tlast),
        .tvalid_reg_0(s_axis_tvalid));
endmodule

module spi_streamer
   (tvalid_reg_0,
    tlast_reg_0,
    E,
    \tdata_reg[7]_0 ,
    s_axis_aresetn,
    clk_IBUF_BUFG,
    s_axis_tvalid,
    Q,
    s_axis_tlast,
    reset_IBUF,
    s_axis_tready,
    \tdata_reg[4]_0 ,
    \masterstate_next_reg[0] ,
    led_OBUF,
    \masterstate_next_reg[0]_0 );
  output tvalid_reg_0;
  output tlast_reg_0;
  output [0:0]E;
  output [7:0]\tdata_reg[7]_0 ;
  input s_axis_aresetn;
  input clk_IBUF_BUFG;
  input s_axis_tvalid;
  input [7:0]Q;
  input s_axis_tlast;
  input reset_IBUF;
  input s_axis_tready;
  input [6:0]\tdata_reg[4]_0 ;
  input [3:0]\masterstate_next_reg[0] ;
  input led_OBUF;
  input \masterstate_next_reg[0]_0 ;

  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire [7:0]Q;
  wire clk_IBUF_BUFG;
  wire led_OBUF;
  wire [7:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire \masterstate_next[3]_i_3_n_0 ;
  wire [3:0]\masterstate_next_reg[0] ;
  wire \masterstate_next_reg[0]_0 ;
  wire payload_fifo_ready_i_1_n_0;
  wire plready;
  wire reset_IBUF;
  wire s_axis_aresetn;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [2:0]state;
  wire \tdata[0]_i_1_n_0 ;
  wire \tdata[1]_i_1_n_0 ;
  wire \tdata[2]_i_1_n_0 ;
  wire \tdata[3]_i_1_n_0 ;
  wire \tdata[4]_i_1_n_0 ;
  wire \tdata[5]_i_1_n_0 ;
  wire \tdata[6]_i_1_n_0 ;
  wire \tdata[7]_i_1_n_0 ;
  wire \tdata[7]_i_2_n_0 ;
  wire [6:0]\tdata_reg[4]_0 ;
  wire [7:0]\tdata_reg[7]_0 ;
  wire tlast_i_1_n_0;
  wire tlast_reg_0;
  wire tvalid_i_1_n_0;
  wire tvalid_reg_0;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h04FFFF00)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(m_axis_tlast),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(state[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h03FF8C00)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(m_axis_tlast),
        .I1(state[0]),
        .I2(state[2]),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(state[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3333FF00FFCCB0B0)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(s_axis_tvalid),
        .I1(state[0]),
        .I2(plready),
        .I3(s_axis_tready),
        .I4(state[2]),
        .I5(state[1]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA8F0)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[0]),
        .I1(s_axis_tready),
        .I2(state[2]),
        .I3(state[1]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "fifo_init_state:000,idle:001,conf_byte_0:010,conf_byte_1:011,conf_byte_2:100,payload_stream:101,done_state:110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "fifo_init_state:000,idle:001,conf_byte_0:010,conf_byte_1:011,conf_byte_2:100,payload_stream:101,done_state:110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "fifo_init_state:000,idle:001,conf_byte_0:010,conf_byte_1:011,conf_byte_2:100,payload_stream:101,done_state:110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]));
  LUT4 #(
    .INIT(16'hFF80)) 
    \masterstate_next[3]_i_1 
       (.I0(\masterstate_next_reg[0] [2]),
        .I1(\masterstate_next_reg[0] [3]),
        .I2(led_OBUF),
        .I3(\masterstate_next[3]_i_3_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'h00AF00AAAAAAAAAC)) 
    \masterstate_next[3]_i_3 
       (.I0(\masterstate_next_reg[0]_0 ),
        .I1(plready),
        .I2(\masterstate_next_reg[0] [1]),
        .I3(\masterstate_next_reg[0] [2]),
        .I4(\masterstate_next_reg[0] [0]),
        .I5(\masterstate_next_reg[0] [3]),
        .O(\masterstate_next[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFCEF00000020)) 
    payload_fifo_ready_i_1
       (.I0(s_axis_tready),
        .I1(reset_IBUF),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(m_axis_tready),
        .O(payload_fifo_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    payload_fifo_ready_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(payload_fifo_ready_i_1_n_0),
        .Q(m_axis_tready),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tdata[0]_i_1 
       (.I0(m_axis_tdata[0]),
        .I1(state[2]),
        .I2(\tdata_reg[4]_0 [1]),
        .I3(state[0]),
        .I4(\tdata_reg[4]_0 [6]),
        .O(\tdata[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tdata[1]_i_1 
       (.I0(m_axis_tdata[1]),
        .I1(state[2]),
        .I2(\tdata_reg[4]_0 [2]),
        .I3(state[0]),
        .I4(\tdata_reg[4]_0 [6]),
        .O(\tdata[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tdata[2]_i_1 
       (.I0(m_axis_tdata[2]),
        .I1(state[2]),
        .I2(\tdata_reg[4]_0 [3]),
        .I3(state[0]),
        .I4(\tdata_reg[4]_0 [6]),
        .O(\tdata[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tdata[3]_i_1 
       (.I0(m_axis_tdata[3]),
        .I1(state[2]),
        .I2(\tdata_reg[4]_0 [4]),
        .I3(state[0]),
        .I4(\tdata_reg[4]_0 [6]),
        .O(\tdata[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFACA0ACA)) 
    \tdata[4]_i_1 
       (.I0(\tdata_reg[4]_0 [6]),
        .I1(\tdata_reg[4]_0 [0]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(m_axis_tdata[4]),
        .O(\tdata[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFACA0ACA)) 
    \tdata[5]_i_1 
       (.I0(\tdata_reg[4]_0 [6]),
        .I1(\tdata_reg[4]_0 [0]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(m_axis_tdata[5]),
        .O(\tdata[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \tdata[6]_i_1 
       (.I0(m_axis_tdata[6]),
        .I1(\tdata_reg[4]_0 [0]),
        .I2(state[2]),
        .I3(\tdata_reg[4]_0 [6]),
        .I4(state[0]),
        .I5(\tdata_reg[4]_0 [5]),
        .O(\tdata[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tdata[7]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .O(\tdata[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFACA0ACA)) 
    \tdata[7]_i_2 
       (.I0(\tdata_reg[4]_0 [6]),
        .I1(\tdata_reg[4]_0 [0]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(m_axis_tdata[7]),
        .O(\tdata[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\tdata[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\tdata[0]_i_1_n_0 ),
        .Q(\tdata_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\tdata[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\tdata[1]_i_1_n_0 ),
        .Q(\tdata_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\tdata[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\tdata[2]_i_1_n_0 ),
        .Q(\tdata_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\tdata[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\tdata[3]_i_1_n_0 ),
        .Q(\tdata_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\tdata[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\tdata[4]_i_1_n_0 ),
        .Q(\tdata_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\tdata[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\tdata[5]_i_1_n_0 ),
        .Q(\tdata_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\tdata[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\tdata[6]_i_1_n_0 ),
        .Q(\tdata_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \tdata_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\tdata[7]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\tdata[7]_i_2_n_0 ),
        .Q(\tdata_reg[7]_0 [7]));
  LUT6 #(
    .INIT(64'hFFFFCBF300000800)) 
    tlast_i_1
       (.I0(m_axis_tlast),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(reset_IBUF),
        .I5(tlast_reg_0),
        .O(tlast_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tlast_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(tlast_i_1_n_0),
        .Q(tlast_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hCBF30BF0)) 
    tvalid_i_1
       (.I0(m_axis_tvalid),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(tvalid_reg_0),
        .O(tvalid_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tvalid_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(tvalid_i_1_n_0),
        .Q(tvalid_reg_0));
  (* IMPORTED_FROM = "c:/Users/danie/w5500StateMachine/w5500StateMachine.gen/sources_1/ip/axis_data_fifo_8bit_2/axis_data_fifo_8bit.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "axis_data_fifo_v2_0_11_top,Vivado 2023.2" *) 
  axis_data_fifo_8bit u_payload_fifo
       (.m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_aclk(clk_IBUF_BUFG),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tdata(Q),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(plready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* NotValidForBitStream *)
module top
   (clk,
    reset,
    mosi,
    miso,
    sclk,
    cs,
    idle_mode,
    led);
  input clk;
  input reset;
  output mosi;
  input miso;
  output sclk;
  output cs;
  input idle_mode;
  output led;

  wire TREADY;
  wire TVALID;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire cs;
  wire cs_OBUF;
  wire idle_mode;
  wire led;
  wire led_OBUF;
  wire miso;
  wire miso_IBUF;
  wire mosi;
  wire mosi_OBUF;
  wire mosi_TRI;
  wire reset;
  wire reset_IBUF;
  wire s_axis_aresetn;
  wire sclk;
  wire sclk_OBUF;
  wire [36:0]sl_iport0_o_0;
  wire [16:0]sl_oport0_i_0;
  wire spi_busy;
  wire [7:0]tdata;
  wire tlast;
  wire txrx_unit_n_6;

initial begin
 $sdf_annotate("spi_master_time_synth.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF cs_OBUF_inst
       (.I(cs_OBUF),
        .O(cs));
  (* DEBUG_CORE_INFO = "dbg_hub,labtools_xsdbm_v3_00_a,{C_BSCAN_MODE=false,C_BSCAN_MODE_WITH_CORE=false,C_CLK_INPUT_FREQ_HZ=300000000,C_ENABLE_CLK_DIVIDER=false,C_EN_BSCANID_VEC=false,C_NUM_BSCAN_MASTER_PORTS=0,C_TWO_PRIM_MODE=false,C_USER_SCAN_CHAIN=1,C_USE_EXT_BSCAN=false,C_XSDB_NUM_SLAVES=1,component_name=dbg_hub_CV}" *) 
  (* DEBUG_PORT_clk = "" *) 
  (* IS_DEBUG_CORE *) 
  dbg_hub_CV dbg_hub
       (.clk(clk_IBUF_BUFG),
        .sl_iport0_o(sl_iport0_o_0),
        .sl_oport0_i(sl_oport0_i_0));
  IBUF idle_mode_IBUF_inst
       (.I(idle_mode),
        .O(led_OBUF));
  OBUF led_OBUF_inst
       (.I(led_OBUF),
        .O(led));
  IBUF miso_IBUF_inst
       (.I(miso),
        .O(miso_IBUF));
  OBUFT mosi_OBUFT_inst
       (.I(mosi_OBUF),
        .O(mosi),
        .T(mosi_TRI));
  FDRE #(
    .INIT(1'b0)) 
    mosi_OBUFT_inst_i_1
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(txrx_unit_n_6),
        .Q(mosi_TRI),
        .R(1'b0));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  OBUF sclk_OBUF_inst
       (.I(sclk_OBUF),
        .O(sclk));
  spi_master spi_m
       (.Q(tdata),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .led_OBUF(led_OBUF),
        .reset_IBUF(reset_IBUF),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tlast(tlast),
        .s_axis_tready(TREADY),
        .s_axis_tvalid(TVALID),
        .spi_busy(spi_busy));
  transceive_unit txrx_unit
       (.CLK(clk_IBUF_BUFG),
        .D(miso_IBUF),
        .Q(tdata),
        .cs_OBUF(cs_OBUF),
        .mosi_OBUF(mosi_OBUF),
        .mosi_OBUFT_inst_i_1(txrx_unit_n_6),
        .mosi_TRI(mosi_TRI),
        .reset_IBUF(reset_IBUF),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tlast(tlast),
        .s_axis_tready(TREADY),
        .s_axis_tvalid(TVALID),
        .sclk_OBUF(sclk_OBUF),
        .spi_busy(spi_busy));
  (* DEBUG_CORE_INFO = "u_ila_0,labtools_ila_v6_00_a,{ALL_PROBE_SAME_MU=true,ALL_PROBE_SAME_MU_CNT=2,C_ADV_TRIGGER=false,C_DATA_DEPTH=1024,C_EN_STRG_QUAL=true,C_INPUT_PIPE_STAGES=0,C_NUM_OF_PROBES=8,C_PROBE0_TYPE=0,C_PROBE0_WIDTH=8,C_PROBE1_TYPE=0,C_PROBE1_WIDTH=1,C_PROBE2_TYPE=0,C_PROBE2_WIDTH=1,C_PROBE3_TYPE=0,C_PROBE3_WIDTH=1,C_PROBE4_TYPE=0,C_PROBE4_WIDTH=1,C_PROBE5_TYPE=0,C_PROBE5_WIDTH=1,C_PROBE6_TYPE=0,C_PROBE6_WIDTH=1,C_PROBE7_TYPE=0,C_PROBE7_WIDTH=1,C_TRIGIN_EN=0,C_TRIGOUT_EN=0,component_name=u_ila_0_CV}" *) 
  (* DEBUG_PORT_clk = "n:clk_IBUF_BUFG" *) 
  (* DEBUG_PORT_probe0 = "n:tdata[7],n:tdata[6],n:tdata[5],n:tdata[4],n:tdata[3],n:tdata[2],n:tdata[1],n:tdata[0]" *) 
  (* DEBUG_PORT_probe1 = "n:cs_OBUF" *) 
  (* DEBUG_PORT_probe2 = "n:miso_IBUF" *) 
  (* DEBUG_PORT_probe3 = "n:mosi_OBUF" *) 
  (* DEBUG_PORT_probe4 = "n:sclk_OBUF" *) 
  (* DEBUG_PORT_probe5 = "n:TREADY" *) 
  (* DEBUG_PORT_probe6 = "n:tlast" *) 
  (* DEBUG_PORT_probe7 = "n:TVALID" *) 
  (* IS_DEBUG_CORE *) 
  u_ila_0_CV u_ila_0
       (.SL_IPORT_I(sl_iport0_o_0),
        .SL_OPORT_O(sl_oport0_i_0),
        .clk(clk_IBUF_BUFG),
        .probe0({tdata[0],tdata[1],tdata[2],tdata[3],tdata[4],tdata[5],tdata[6],tdata[7]}),
        .probe1(cs_OBUF),
        .probe2(miso_IBUF),
        .probe3(mosi_OBUF),
        .probe4(sclk_OBUF),
        .probe5(TREADY),
        .probe6(tlast),
        .probe7(TVALID));
endmodule

module transceive_unit
   (s_axis_tready,
    s_axis_aresetn,
    mosi_OBUF,
    spi_busy,
    cs_OBUF,
    sclk_OBUF,
    mosi_OBUFT_inst_i_1,
    CLK,
    s_axis_tvalid,
    Q,
    s_axis_tlast,
    reset_IBUF,
    mosi_TRI,
    D);
  output s_axis_tready;
  output s_axis_aresetn;
  output mosi_OBUF;
  output spi_busy;
  output cs_OBUF;
  output sclk_OBUF;
  output mosi_OBUFT_inst_i_1;
  input CLK;
  input s_axis_tvalid;
  input [7:0]Q;
  input s_axis_tlast;
  input reset_IBUF;
  input mosi_TRI;
  input [0:0]D;

  wire CLK;
  wire [0:0]D;
  wire [7:0]Q;
  wire RREADY;
  wire RVALID;
  wire [3:0]clk_toggles;
  wire clk_toggles0;
  wire \clk_toggles[0]_i_1_n_0 ;
  wire \clk_toggles[1]_i_1_n_0 ;
  wire \clk_toggles[2]_i_1_n_0 ;
  wire \clk_toggles[3]_i_2_n_0 ;
  wire cs_OBUF;
  wire cs_buffer_i_1_n_0;
  wire [7:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire mosi_OBUF;
  wire mosi_OBUFT_inst_i_1;
  wire mosi_OBUFT_inst_i_3_n_0;
  wire mosi_TRI;
  wire mosi_tristate_oe_i_1_n_0;
  wire mosi_tristate_oe_i_2_n_0;
  wire [7:1]p_0_in1_in;
  wire reset_IBUF;
  wire \rx_buffer[7]_i_1_n_0 ;
  wire rx_buffer_valid0;
  wire rx_buffer_valid_i_1_n_0;
  wire rx_buffer_valid_i_2_n_0;
  wire s_axis_aresetn;
  wire [7:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire s_axis_tvalid_0;
  wire sclk_OBUF;
  wire sclk_buffer_i_1_n_0;
  wire sclk_buffer_i_2_n_0;
  wire spi_busy;
  wire spi_busy_i_1_n_0;
  wire [1:0]spistate;
  wire [1:0]spistate_next;
  wire \spistate_next[0]_i_1_n_0 ;
  wire \spistate_next[0]_i_2_n_0 ;
  wire \spistate_next[0]_i_3_n_0 ;
  wire \spistate_next[0]_i_4_n_0 ;
  wire \spistate_next[1]_i_1_n_0 ;
  wire \spistate_next[1]_i_2_n_0 ;
  wire tx_buffer0;
  wire \tx_buffer[0]_i_1_n_0 ;
  wire \tx_buffer[1]_i_1_n_0 ;
  wire \tx_buffer[2]_i_1_n_0 ;
  wire \tx_buffer[3]_i_1_n_0 ;
  wire \tx_buffer[4]_i_1_n_0 ;
  wire \tx_buffer[5]_i_1_n_0 ;
  wire \tx_buffer[6]_i_1_n_0 ;
  wire \tx_buffer[7]_i_2_n_0 ;
  wire \tx_buffer[7]_i_3_n_0 ;
  wire \tx_buffer_reg_n_0_[7] ;
  wire tx_payload_ready0;
  wire tx_payload_ready_i_1_n_0;
  wire tx_phase_i_1_n_0;
  wire tx_phase_reg_n_0;
  wire NLW_u_rx_payload_fifo_m_axis_tlast_UNCONNECTED;
  wire NLW_u_rx_payload_fifo_s_axis_tlast_UNCONNECTED;
  wire NLW_u_rx_payload_fifo_s_axis_tready_UNCONNECTED;
  wire [7:0]NLW_u_rx_payload_fifo_m_axis_tdata_UNCONNECTED;
  wire NLW_u_tx_payload_fifo_m_axis_tlast_UNCONNECTED;

  LUT2 #(
    .INIT(4'h1)) 
    \clk_toggles[0]_i_1 
       (.I0(clk_toggles[0]),
        .I1(spistate[0]),
        .O(\clk_toggles[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \clk_toggles[1]_i_1 
       (.I0(clk_toggles[1]),
        .I1(clk_toggles[0]),
        .I2(spistate[0]),
        .O(\clk_toggles[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \clk_toggles[2]_i_1 
       (.I0(spistate[0]),
        .I1(clk_toggles[0]),
        .I2(clk_toggles[1]),
        .I3(clk_toggles[2]),
        .O(\clk_toggles[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888AAAAAAAAAAA)) 
    \clk_toggles[3]_i_1 
       (.I0(rx_buffer_valid0),
        .I1(spistate[0]),
        .I2(spistate_next[0]),
        .I3(spistate_next[1]),
        .I4(cs_OBUF),
        .I5(\spistate_next[0]_i_4_n_0 ),
        .O(clk_toggles0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \clk_toggles[3]_i_2 
       (.I0(spistate[0]),
        .I1(clk_toggles[1]),
        .I2(clk_toggles[0]),
        .I3(clk_toggles[2]),
        .I4(clk_toggles[3]),
        .O(\clk_toggles[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clk_toggles[3]_i_3 
       (.I0(spistate[1]),
        .I1(reset_IBUF),
        .O(rx_buffer_valid0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_toggles_reg[0] 
       (.C(CLK),
        .CE(clk_toggles0),
        .D(\clk_toggles[0]_i_1_n_0 ),
        .Q(clk_toggles[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_toggles_reg[1] 
       (.C(CLK),
        .CE(clk_toggles0),
        .D(\clk_toggles[1]_i_1_n_0 ),
        .Q(clk_toggles[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_toggles_reg[2] 
       (.C(CLK),
        .CE(clk_toggles0),
        .D(\clk_toggles[2]_i_1_n_0 ),
        .Q(clk_toggles[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_toggles_reg[3] 
       (.C(CLK),
        .CE(clk_toggles0),
        .D(\clk_toggles[3]_i_2_n_0 ),
        .Q(clk_toggles[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hB8888888BBBBBBBB)) 
    cs_buffer_i_1
       (.I0(cs_OBUF),
        .I1(reset_IBUF),
        .I2(spistate_next[0]),
        .I3(spistate_next[1]),
        .I4(\spistate_next[0]_i_4_n_0 ),
        .I5(\spistate_next[0]_i_3_n_0 ),
        .O(cs_buffer_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    cs_buffer_reg
       (.C(CLK),
        .CE(1'b1),
        .D(cs_buffer_i_1_n_0),
        .Q(cs_OBUF),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBABAB8BABBBBBBBB)) 
    mosi_OBUFT_inst_i_2
       (.I0(mosi_TRI),
        .I1(reset_IBUF),
        .I2(mosi_OBUFT_inst_i_3_n_0),
        .I3(tx_phase_reg_n_0),
        .I4(cs_OBUF),
        .I5(\spistate_next[0]_i_3_n_0 ),
        .O(mosi_OBUFT_inst_i_1));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    mosi_OBUFT_inst_i_3
       (.I0(spistate_next[1]),
        .I1(spistate_next[0]),
        .I2(clk_toggles[3]),
        .I3(clk_toggles[1]),
        .I4(clk_toggles[0]),
        .I5(clk_toggles[2]),
        .O(mosi_OBUFT_inst_i_3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    mosi_tristate_oe_i_1
       (.I0(\tx_buffer_reg_n_0_[7] ),
        .I1(mosi_tristate_oe_i_2_n_0),
        .I2(mosi_OBUF),
        .O(mosi_tristate_oe_i_1_n_0));
  LUT6 #(
    .INIT(64'h5555445455555555)) 
    mosi_tristate_oe_i_2
       (.I0(reset_IBUF),
        .I1(mosi_OBUFT_inst_i_3_n_0),
        .I2(tx_phase_reg_n_0),
        .I3(cs_OBUF),
        .I4(spistate[0]),
        .I5(spistate[1]),
        .O(mosi_tristate_oe_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mosi_tristate_oe_reg
       (.C(CLK),
        .CE(1'b1),
        .D(mosi_tristate_oe_i_1_n_0),
        .Q(mosi_OBUF),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000100)) 
    \rx_buffer[7]_i_1 
       (.I0(spistate[0]),
        .I1(cs_OBUF),
        .I2(reset_IBUF),
        .I3(spistate[1]),
        .I4(tx_phase_reg_n_0),
        .O(\rx_buffer[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_buffer_reg[0] 
       (.C(CLK),
        .CE(\rx_buffer[7]_i_1_n_0 ),
        .D(D),
        .Q(s_axis_tdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_buffer_reg[1] 
       (.C(CLK),
        .CE(\rx_buffer[7]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(s_axis_tdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_buffer_reg[2] 
       (.C(CLK),
        .CE(\rx_buffer[7]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(s_axis_tdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_buffer_reg[3] 
       (.C(CLK),
        .CE(\rx_buffer[7]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(s_axis_tdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_buffer_reg[4] 
       (.C(CLK),
        .CE(\rx_buffer[7]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(s_axis_tdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_buffer_reg[5] 
       (.C(CLK),
        .CE(\rx_buffer[7]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(s_axis_tdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_buffer_reg[6] 
       (.C(CLK),
        .CE(\rx_buffer[7]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(s_axis_tdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_buffer_reg[7] 
       (.C(CLK),
        .CE(\rx_buffer[7]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(s_axis_tdata[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFF1F0010)) 
    rx_buffer_valid_i_1
       (.I0(spistate[0]),
        .I1(rx_buffer_valid_i_2_n_0),
        .I2(spistate[1]),
        .I3(reset_IBUF),
        .I4(s_axis_tvalid_0),
        .O(rx_buffer_valid_i_1_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFF7FFF7FFF)) 
    rx_buffer_valid_i_2
       (.I0(clk_toggles[3]),
        .I1(clk_toggles[1]),
        .I2(clk_toggles[0]),
        .I3(clk_toggles[2]),
        .I4(spistate_next[1]),
        .I5(spistate_next[0]),
        .O(rx_buffer_valid_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_buffer_valid_reg
       (.C(CLK),
        .CE(1'b1),
        .D(rx_buffer_valid_i_1_n_0),
        .Q(s_axis_tvalid_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFDDD555502220000)) 
    sclk_buffer_i_1
       (.I0(sclk_buffer_i_2_n_0),
        .I1(cs_OBUF),
        .I2(spistate_next[1]),
        .I3(spistate_next[0]),
        .I4(spistate[1]),
        .I5(sclk_OBUF),
        .O(sclk_buffer_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h15)) 
    sclk_buffer_i_2
       (.I0(reset_IBUF),
        .I1(spistate[0]),
        .I2(spistate[1]),
        .O(sclk_buffer_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sclk_buffer_reg
       (.C(CLK),
        .CE(1'b1),
        .D(sclk_buffer_i_1_n_0),
        .Q(sclk_OBUF),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hFA10)) 
    spi_busy_i_1
       (.I0(reset_IBUF),
        .I1(spistate[0]),
        .I2(spistate[1]),
        .I3(spi_busy),
        .O(spi_busy_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    spi_busy_reg
       (.C(CLK),
        .CE(1'b1),
        .D(spi_busy_i_1_n_0),
        .Q(spi_busy),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFEEEEEEE22222222)) 
    \spistate_next[0]_i_1 
       (.I0(\spistate_next[0]_i_2_n_0 ),
        .I1(reset_IBUF),
        .I2(\spistate_next[0]_i_3_n_0 ),
        .I3(\spistate_next[0]_i_4_n_0 ),
        .I4(spistate_next[1]),
        .I5(spistate_next[0]),
        .O(\spistate_next[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hAA44AFEE)) 
    \spistate_next[0]_i_2 
       (.I0(spistate[0]),
        .I1(s_axis_tready),
        .I2(\spistate_next[0]_i_4_n_0 ),
        .I3(spistate[1]),
        .I4(m_axis_tvalid),
        .O(\spistate_next[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spistate_next[0]_i_3 
       (.I0(spistate[1]),
        .I1(spistate[0]),
        .O(\spistate_next[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \spistate_next[0]_i_4 
       (.I0(clk_toggles[2]),
        .I1(clk_toggles[0]),
        .I2(clk_toggles[1]),
        .I3(clk_toggles[3]),
        .O(\spistate_next[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCEFCCEFC02000230)) 
    \spistate_next[1]_i_1 
       (.I0(m_axis_tvalid),
        .I1(reset_IBUF),
        .I2(spistate[1]),
        .I3(spistate[0]),
        .I4(\spistate_next[1]_i_2_n_0 ),
        .I5(spistate_next[1]),
        .O(\spistate_next[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000000000000)) 
    \spistate_next[1]_i_2 
       (.I0(clk_toggles[3]),
        .I1(clk_toggles[1]),
        .I2(clk_toggles[0]),
        .I3(clk_toggles[2]),
        .I4(spistate_next[1]),
        .I5(spistate_next[0]),
        .O(\spistate_next[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spistate_next_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\spistate_next[0]_i_1_n_0 ),
        .Q(spistate_next[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spistate_next_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\spistate_next[1]_i_1_n_0 ),
        .Q(spistate_next[1]),
        .R(1'b0));
  FDPE #(
    .INIT(1'b0)) 
    \spistate_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(spistate_next[0]),
        .PRE(reset_IBUF),
        .Q(spistate[0]));
  FDCE #(
    .INIT(1'b0)) 
    \spistate_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(spistate_next[1]),
        .Q(spistate[1]));
  LUT5 #(
    .INIT(32'h0DFF0000)) 
    \tx_buffer[0]_i_1 
       (.I0(spistate_next[0]),
        .I1(spistate_next[1]),
        .I2(\spistate_next[0]_i_4_n_0 ),
        .I3(spistate[1]),
        .I4(m_axis_tdata[0]),
        .O(\tx_buffer[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0DFFF2000000)) 
    \tx_buffer[1]_i_1 
       (.I0(spistate_next[0]),
        .I1(spistate_next[1]),
        .I2(\spistate_next[0]_i_4_n_0 ),
        .I3(spistate[1]),
        .I4(p_0_in1_in[1]),
        .I5(m_axis_tdata[1]),
        .O(\tx_buffer[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0DFFF2000000)) 
    \tx_buffer[2]_i_1 
       (.I0(spistate_next[0]),
        .I1(spistate_next[1]),
        .I2(\spistate_next[0]_i_4_n_0 ),
        .I3(spistate[1]),
        .I4(p_0_in1_in[2]),
        .I5(m_axis_tdata[2]),
        .O(\tx_buffer[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0DFFF2000000)) 
    \tx_buffer[3]_i_1 
       (.I0(spistate_next[0]),
        .I1(spistate_next[1]),
        .I2(\spistate_next[0]_i_4_n_0 ),
        .I3(spistate[1]),
        .I4(p_0_in1_in[3]),
        .I5(m_axis_tdata[3]),
        .O(\tx_buffer[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0DFFF2000000)) 
    \tx_buffer[4]_i_1 
       (.I0(spistate_next[0]),
        .I1(spistate_next[1]),
        .I2(\spistate_next[0]_i_4_n_0 ),
        .I3(spistate[1]),
        .I4(p_0_in1_in[4]),
        .I5(m_axis_tdata[4]),
        .O(\tx_buffer[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0DFFF2000000)) 
    \tx_buffer[5]_i_1 
       (.I0(spistate_next[0]),
        .I1(spistate_next[1]),
        .I2(\spistate_next[0]_i_4_n_0 ),
        .I3(spistate[1]),
        .I4(p_0_in1_in[5]),
        .I5(m_axis_tdata[5]),
        .O(\tx_buffer[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0DFFF2000000)) 
    \tx_buffer[6]_i_1 
       (.I0(spistate_next[0]),
        .I1(spistate_next[1]),
        .I2(\spistate_next[0]_i_4_n_0 ),
        .I3(spistate[1]),
        .I4(p_0_in1_in[6]),
        .I5(m_axis_tdata[6]),
        .O(\tx_buffer[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000200)) 
    \tx_buffer[7]_i_1 
       (.I0(tx_phase_reg_n_0),
        .I1(cs_OBUF),
        .I2(spistate[0]),
        .I3(spistate[1]),
        .I4(reset_IBUF),
        .I5(\tx_buffer[7]_i_3_n_0 ),
        .O(tx_buffer0));
  LUT6 #(
    .INIT(64'hFFFF0DFFF2000000)) 
    \tx_buffer[7]_i_2 
       (.I0(spistate_next[0]),
        .I1(spistate_next[1]),
        .I2(\spistate_next[0]_i_4_n_0 ),
        .I3(spistate[1]),
        .I4(p_0_in1_in[7]),
        .I5(m_axis_tdata[7]),
        .O(\tx_buffer[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010100003000)) 
    \tx_buffer[7]_i_3 
       (.I0(\spistate_next[0]_i_4_n_0 ),
        .I1(reset_IBUF),
        .I2(spistate[0]),
        .I3(spistate_next[1]),
        .I4(spistate_next[0]),
        .I5(spistate[1]),
        .O(\tx_buffer[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_buffer_reg[0] 
       (.C(CLK),
        .CE(tx_buffer0),
        .D(\tx_buffer[0]_i_1_n_0 ),
        .Q(p_0_in1_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_buffer_reg[1] 
       (.C(CLK),
        .CE(tx_buffer0),
        .D(\tx_buffer[1]_i_1_n_0 ),
        .Q(p_0_in1_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_buffer_reg[2] 
       (.C(CLK),
        .CE(tx_buffer0),
        .D(\tx_buffer[2]_i_1_n_0 ),
        .Q(p_0_in1_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_buffer_reg[3] 
       (.C(CLK),
        .CE(tx_buffer0),
        .D(\tx_buffer[3]_i_1_n_0 ),
        .Q(p_0_in1_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_buffer_reg[4] 
       (.C(CLK),
        .CE(tx_buffer0),
        .D(\tx_buffer[4]_i_1_n_0 ),
        .Q(p_0_in1_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_buffer_reg[5] 
       (.C(CLK),
        .CE(tx_buffer0),
        .D(\tx_buffer[5]_i_1_n_0 ),
        .Q(p_0_in1_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_buffer_reg[6] 
       (.C(CLK),
        .CE(tx_buffer0),
        .D(\tx_buffer[6]_i_1_n_0 ),
        .Q(p_0_in1_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_buffer_reg[7] 
       (.C(CLK),
        .CE(tx_buffer0),
        .D(\tx_buffer[7]_i_2_n_0 ),
        .Q(\tx_buffer_reg_n_0_[7] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h1FFF1F00)) 
    tx_payload_ready_i_1
       (.I0(rx_buffer_valid_i_2_n_0),
        .I1(spistate[0]),
        .I2(spistate[1]),
        .I3(tx_payload_ready0),
        .I4(m_axis_tready),
        .O(tx_payload_ready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h0000BAAA)) 
    tx_payload_ready_i_2
       (.I0(spistate[1]),
        .I1(spistate_next[0]),
        .I2(spistate_next[1]),
        .I3(spistate[0]),
        .I4(reset_IBUF),
        .O(tx_payload_ready0));
  FDRE #(
    .INIT(1'b0)) 
    tx_payload_ready_reg
       (.C(CLK),
        .CE(1'b1),
        .D(tx_payload_ready_i_1_n_0),
        .Q(m_axis_tready),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hEA10)) 
    tx_phase_i_1
       (.I0(reset_IBUF),
        .I1(spistate[0]),
        .I2(spistate[1]),
        .I3(tx_phase_reg_n_0),
        .O(tx_phase_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_phase_reg
       (.C(CLK),
        .CE(1'b1),
        .D(tx_phase_i_1_n_0),
        .Q(tx_phase_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    u_payload_fifo_i_1
       (.I0(reset_IBUF),
        .O(s_axis_aresetn));
  (* IMPORTED_FROM = "c:/Users/danie/w5500StateMachine/w5500StateMachine.gen/sources_1/ip/axis_data_fifo_8bit_2/axis_data_fifo_8bit.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "axis_data_fifo_v2_0_11_top,Vivado 2023.2" *) 
  axis_data_fifo_8bit_HD259 u_rx_payload_fifo
       (.m_axis_tdata(NLW_u_rx_payload_fifo_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tlast(NLW_u_rx_payload_fifo_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(RREADY),
        .m_axis_tvalid(RVALID),
        .s_axis_aclk(CLK),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(NLW_u_rx_payload_fifo_s_axis_tlast_UNCONNECTED),
        .s_axis_tready(NLW_u_rx_payload_fifo_s_axis_tready_UNCONNECTED),
        .s_axis_tvalid(s_axis_tvalid_0));
  (* IMPORTED_FROM = "c:/Users/danie/w5500StateMachine/w5500StateMachine.gen/sources_1/ip/axis_data_fifo_8bit_2/axis_data_fifo_8bit.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "axis_data_fifo_v2_0_11_top,Vivado 2023.2" *) 
  axis_data_fifo_8bit_HD271 u_tx_payload_fifo
       (.m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(NLW_u_tx_payload_fifo_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_aclk(CLK),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tdata(Q),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
