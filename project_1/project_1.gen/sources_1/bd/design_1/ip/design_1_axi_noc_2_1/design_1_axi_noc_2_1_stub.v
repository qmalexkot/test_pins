// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.3 (win64) Build 3173277 Wed Apr  7 05:07:49 MDT 2021
// Date        : Mon Jun 21 01:53:31 2021
// Host        : alexk-laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_axi_noc_2_1 -prefix
//               design_1_axi_noc_2_1_ design_1_axi_noc_2_1_stub.v
// Design      : design_1_axi_noc_2_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvc1802-vsva2197-2MP-e-S
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_8b85,Vivado 2020.3" *)
module design_1_axi_noc_2_1(S00_INI_internoc, S01_INI_internoc, 
  S02_INI_internoc, S03_INI_internoc, sys_clk0_clk_p, sys_clk0_clk_n, CH0_DDR4_0_dq, 
  CH0_DDR4_0_dqs_t, CH0_DDR4_0_dqs_c, CH0_DDR4_0_adr, CH0_DDR4_0_ba, CH0_DDR4_0_bg, 
  CH0_DDR4_0_act_n, CH0_DDR4_0_reset_n, CH0_DDR4_0_ck_t, CH0_DDR4_0_ck_c, CH0_DDR4_0_cke, 
  CH0_DDR4_0_cs_n, CH0_DDR4_0_dm_n, CH0_DDR4_0_odt, sys_clk1_clk_p, sys_clk1_clk_n, 
  CH0_DDR4_1_dq, CH0_DDR4_1_dqs_t, CH0_DDR4_1_dqs_c, CH0_DDR4_1_adr, CH0_DDR4_1_ba, 
  CH0_DDR4_1_bg, CH0_DDR4_1_act_n, CH0_DDR4_1_reset_n, CH0_DDR4_1_ck_t, CH0_DDR4_1_ck_c, 
  CH0_DDR4_1_cke, CH0_DDR4_1_cs_n, CH0_DDR4_1_dm_n, CH0_DDR4_1_odt)
/* synthesis syn_black_box black_box_pad_pin="S00_INI_internoc[0:0],S01_INI_internoc[0:0],S02_INI_internoc[0:0],S03_INI_internoc[0:0],sys_clk0_clk_p[0:0],sys_clk0_clk_n[0:0],CH0_DDR4_0_dq[71:0],CH0_DDR4_0_dqs_t[8:0],CH0_DDR4_0_dqs_c[8:0],CH0_DDR4_0_adr[16:0],CH0_DDR4_0_ba[1:0],CH0_DDR4_0_bg[1:0],CH0_DDR4_0_act_n[0:0],CH0_DDR4_0_reset_n[0:0],CH0_DDR4_0_ck_t[1:0],CH0_DDR4_0_ck_c[1:0],CH0_DDR4_0_cke[1:0],CH0_DDR4_0_cs_n[1:0],CH0_DDR4_0_dm_n[8:0],CH0_DDR4_0_odt[1:0],sys_clk1_clk_p[0:0],sys_clk1_clk_n[0:0],CH0_DDR4_1_dq[71:0],CH0_DDR4_1_dqs_t[8:0],CH0_DDR4_1_dqs_c[8:0],CH0_DDR4_1_adr[16:0],CH0_DDR4_1_ba[1:0],CH0_DDR4_1_bg[1:0],CH0_DDR4_1_act_n[0:0],CH0_DDR4_1_reset_n[0:0],CH0_DDR4_1_ck_t[1:0],CH0_DDR4_1_ck_c[1:0],CH0_DDR4_1_cke[1:0],CH0_DDR4_1_cs_n[1:0],CH0_DDR4_1_dm_n[8:0],CH0_DDR4_1_odt[1:0]" */;
  input [0:0]S00_INI_internoc;
  input [0:0]S01_INI_internoc;
  input [0:0]S02_INI_internoc;
  input [0:0]S03_INI_internoc;
  input [0:0]sys_clk0_clk_p;
  input [0:0]sys_clk0_clk_n;
  inout [71:0]CH0_DDR4_0_dq;
  inout [8:0]CH0_DDR4_0_dqs_t;
  inout [8:0]CH0_DDR4_0_dqs_c;
  output [16:0]CH0_DDR4_0_adr;
  output [1:0]CH0_DDR4_0_ba;
  output [1:0]CH0_DDR4_0_bg;
  output [0:0]CH0_DDR4_0_act_n;
  output [0:0]CH0_DDR4_0_reset_n;
  output [1:0]CH0_DDR4_0_ck_t;
  output [1:0]CH0_DDR4_0_ck_c;
  output [1:0]CH0_DDR4_0_cke;
  output [1:0]CH0_DDR4_0_cs_n;
  inout [8:0]CH0_DDR4_0_dm_n;
  output [1:0]CH0_DDR4_0_odt;
  input [0:0]sys_clk1_clk_p;
  input [0:0]sys_clk1_clk_n;
  inout [71:0]CH0_DDR4_1_dq;
  inout [8:0]CH0_DDR4_1_dqs_t;
  inout [8:0]CH0_DDR4_1_dqs_c;
  output [16:0]CH0_DDR4_1_adr;
  output [1:0]CH0_DDR4_1_ba;
  output [1:0]CH0_DDR4_1_bg;
  output [0:0]CH0_DDR4_1_act_n;
  output [0:0]CH0_DDR4_1_reset_n;
  output [1:0]CH0_DDR4_1_ck_t;
  output [1:0]CH0_DDR4_1_ck_c;
  output [1:0]CH0_DDR4_1_cke;
  output [1:0]CH0_DDR4_1_cs_n;
  inout [8:0]CH0_DDR4_1_dm_n;
  output [1:0]CH0_DDR4_1_odt;
endmodule
