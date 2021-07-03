// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.3 (win64) Build 3173277 Wed Apr  7 05:07:49 MDT 2021
// Date        : Wed Jun 23 14:34:48 2021
// Host        : alexk-laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/alexk/hds_projects/OPY/versal_pin_test/project_1.gen/sources_1/bd/design_1/ip/design_1_sys_clk_module_0_0/design_1_sys_clk_module_0_0_stub.v
// Design      : design_1_sys_clk_module_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvc1802-vsva2197-2MP-e-S
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "sys_clk_module,Vivado 2020.3" *)
module design_1_sys_clk_module_0_0(CNC_VSL_ALIGN_N, CNC_VSL_ALIGN_P, 
  LMK_VSL_250M_CLK_IN_N, LMK_VSL_250M_CLK_IN_P, LMK_VSL_500M_CLK_IN_N, 
  LMK_VSL_500M_CLK_IN_P, LMK_VSL_RFU_CLK_IN_N, LMK_VSL_RFU_CLK_IN_P, clk_500m, 
  clk_500m_vec, clk_250m, clk_250m_direct)
/* synthesis syn_black_box black_box_pad_pin="CNC_VSL_ALIGN_N,CNC_VSL_ALIGN_P,LMK_VSL_250M_CLK_IN_N,LMK_VSL_250M_CLK_IN_P,LMK_VSL_500M_CLK_IN_N,LMK_VSL_500M_CLK_IN_P,LMK_VSL_RFU_CLK_IN_N,LMK_VSL_RFU_CLK_IN_P,clk_500m,clk_500m_vec[0:0],clk_250m,clk_250m_direct" */;
  input CNC_VSL_ALIGN_N;
  input CNC_VSL_ALIGN_P;
  input LMK_VSL_250M_CLK_IN_N;
  input LMK_VSL_250M_CLK_IN_P;
  input LMK_VSL_500M_CLK_IN_N;
  input LMK_VSL_500M_CLK_IN_P;
  input LMK_VSL_RFU_CLK_IN_N;
  input LMK_VSL_RFU_CLK_IN_P;
  output clk_500m;
  output [0:0]clk_500m_vec;
  output clk_250m;
  output clk_250m_direct;
endmodule
