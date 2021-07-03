//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_8b85_wrapper.bd
//Design : bd_8b85_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_8b85_wrapper
   (CH0_DDR4_0_act_n,
    CH0_DDR4_0_adr,
    CH0_DDR4_0_ba,
    CH0_DDR4_0_bg,
    CH0_DDR4_0_ck_c,
    CH0_DDR4_0_ck_t,
    CH0_DDR4_0_cke,
    CH0_DDR4_0_cs_n,
    CH0_DDR4_0_dm_n,
    CH0_DDR4_0_dq,
    CH0_DDR4_0_dqs_c,
    CH0_DDR4_0_dqs_t,
    CH0_DDR4_0_odt,
    CH0_DDR4_0_reset_n,
    CH0_DDR4_1_act_n,
    CH0_DDR4_1_adr,
    CH0_DDR4_1_ba,
    CH0_DDR4_1_bg,
    CH0_DDR4_1_ck_c,
    CH0_DDR4_1_ck_t,
    CH0_DDR4_1_cke,
    CH0_DDR4_1_cs_n,
    CH0_DDR4_1_dm_n,
    CH0_DDR4_1_dq,
    CH0_DDR4_1_dqs_c,
    CH0_DDR4_1_dqs_t,
    CH0_DDR4_1_odt,
    CH0_DDR4_1_reset_n,
    S00_INI_internoc,
    S01_INI_internoc,
    S02_INI_internoc,
    S03_INI_internoc,
    sys_clk0_clk_n,
    sys_clk0_clk_p,
    sys_clk1_clk_n,
    sys_clk1_clk_p);
  output [0:0]CH0_DDR4_0_act_n;
  output [16:0]CH0_DDR4_0_adr;
  output [1:0]CH0_DDR4_0_ba;
  output [1:0]CH0_DDR4_0_bg;
  output [1:0]CH0_DDR4_0_ck_c;
  output [1:0]CH0_DDR4_0_ck_t;
  output [1:0]CH0_DDR4_0_cke;
  output [1:0]CH0_DDR4_0_cs_n;
  inout [8:0]CH0_DDR4_0_dm_n;
  inout [71:0]CH0_DDR4_0_dq;
  inout [8:0]CH0_DDR4_0_dqs_c;
  inout [8:0]CH0_DDR4_0_dqs_t;
  output [1:0]CH0_DDR4_0_odt;
  output [0:0]CH0_DDR4_0_reset_n;
  output [0:0]CH0_DDR4_1_act_n;
  output [16:0]CH0_DDR4_1_adr;
  output [1:0]CH0_DDR4_1_ba;
  output [1:0]CH0_DDR4_1_bg;
  output [1:0]CH0_DDR4_1_ck_c;
  output [1:0]CH0_DDR4_1_ck_t;
  output [1:0]CH0_DDR4_1_cke;
  output [1:0]CH0_DDR4_1_cs_n;
  inout [8:0]CH0_DDR4_1_dm_n;
  inout [71:0]CH0_DDR4_1_dq;
  inout [8:0]CH0_DDR4_1_dqs_c;
  inout [8:0]CH0_DDR4_1_dqs_t;
  output [1:0]CH0_DDR4_1_odt;
  output [0:0]CH0_DDR4_1_reset_n;
  input [0:0]S00_INI_internoc;
  input [0:0]S01_INI_internoc;
  input [0:0]S02_INI_internoc;
  input [0:0]S03_INI_internoc;
  input [0:0]sys_clk0_clk_n;
  input [0:0]sys_clk0_clk_p;
  input [0:0]sys_clk1_clk_n;
  input [0:0]sys_clk1_clk_p;

  wire [0:0]CH0_DDR4_0_act_n;
  wire [16:0]CH0_DDR4_0_adr;
  wire [1:0]CH0_DDR4_0_ba;
  wire [1:0]CH0_DDR4_0_bg;
  wire [1:0]CH0_DDR4_0_ck_c;
  wire [1:0]CH0_DDR4_0_ck_t;
  wire [1:0]CH0_DDR4_0_cke;
  wire [1:0]CH0_DDR4_0_cs_n;
  wire [8:0]CH0_DDR4_0_dm_n;
  wire [71:0]CH0_DDR4_0_dq;
  wire [8:0]CH0_DDR4_0_dqs_c;
  wire [8:0]CH0_DDR4_0_dqs_t;
  wire [1:0]CH0_DDR4_0_odt;
  wire [0:0]CH0_DDR4_0_reset_n;
  wire [0:0]CH0_DDR4_1_act_n;
  wire [16:0]CH0_DDR4_1_adr;
  wire [1:0]CH0_DDR4_1_ba;
  wire [1:0]CH0_DDR4_1_bg;
  wire [1:0]CH0_DDR4_1_ck_c;
  wire [1:0]CH0_DDR4_1_ck_t;
  wire [1:0]CH0_DDR4_1_cke;
  wire [1:0]CH0_DDR4_1_cs_n;
  wire [8:0]CH0_DDR4_1_dm_n;
  wire [71:0]CH0_DDR4_1_dq;
  wire [8:0]CH0_DDR4_1_dqs_c;
  wire [8:0]CH0_DDR4_1_dqs_t;
  wire [1:0]CH0_DDR4_1_odt;
  wire [0:0]CH0_DDR4_1_reset_n;
  wire [0:0]S00_INI_internoc;
  wire [0:0]S01_INI_internoc;
  wire [0:0]S02_INI_internoc;
  wire [0:0]S03_INI_internoc;
  wire [0:0]sys_clk0_clk_n;
  wire [0:0]sys_clk0_clk_p;
  wire [0:0]sys_clk1_clk_n;
  wire [0:0]sys_clk1_clk_p;

  bd_8b85 bd_8b85_i
       (.CH0_DDR4_0_act_n(CH0_DDR4_0_act_n),
        .CH0_DDR4_0_adr(CH0_DDR4_0_adr),
        .CH0_DDR4_0_ba(CH0_DDR4_0_ba),
        .CH0_DDR4_0_bg(CH0_DDR4_0_bg),
        .CH0_DDR4_0_ck_c(CH0_DDR4_0_ck_c),
        .CH0_DDR4_0_ck_t(CH0_DDR4_0_ck_t),
        .CH0_DDR4_0_cke(CH0_DDR4_0_cke),
        .CH0_DDR4_0_cs_n(CH0_DDR4_0_cs_n),
        .CH0_DDR4_0_dm_n(CH0_DDR4_0_dm_n),
        .CH0_DDR4_0_dq(CH0_DDR4_0_dq),
        .CH0_DDR4_0_dqs_c(CH0_DDR4_0_dqs_c),
        .CH0_DDR4_0_dqs_t(CH0_DDR4_0_dqs_t),
        .CH0_DDR4_0_odt(CH0_DDR4_0_odt),
        .CH0_DDR4_0_reset_n(CH0_DDR4_0_reset_n),
        .CH0_DDR4_1_act_n(CH0_DDR4_1_act_n),
        .CH0_DDR4_1_adr(CH0_DDR4_1_adr),
        .CH0_DDR4_1_ba(CH0_DDR4_1_ba),
        .CH0_DDR4_1_bg(CH0_DDR4_1_bg),
        .CH0_DDR4_1_ck_c(CH0_DDR4_1_ck_c),
        .CH0_DDR4_1_ck_t(CH0_DDR4_1_ck_t),
        .CH0_DDR4_1_cke(CH0_DDR4_1_cke),
        .CH0_DDR4_1_cs_n(CH0_DDR4_1_cs_n),
        .CH0_DDR4_1_dm_n(CH0_DDR4_1_dm_n),
        .CH0_DDR4_1_dq(CH0_DDR4_1_dq),
        .CH0_DDR4_1_dqs_c(CH0_DDR4_1_dqs_c),
        .CH0_DDR4_1_dqs_t(CH0_DDR4_1_dqs_t),
        .CH0_DDR4_1_odt(CH0_DDR4_1_odt),
        .CH0_DDR4_1_reset_n(CH0_DDR4_1_reset_n),
        .S00_INI_internoc(S00_INI_internoc),
        .S01_INI_internoc(S01_INI_internoc),
        .S02_INI_internoc(S02_INI_internoc),
        .S03_INI_internoc(S03_INI_internoc),
        .sys_clk0_clk_n(sys_clk0_clk_n),
        .sys_clk0_clk_p(sys_clk0_clk_p),
        .sys_clk1_clk_n(sys_clk1_clk_n),
        .sys_clk1_clk_p(sys_clk1_clk_p));
endmodule
