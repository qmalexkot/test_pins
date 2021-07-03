// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.3 (win64) Build 3173277 Wed Apr  7 05:07:49 MDT 2021
// Date        : Wed Jun 23 16:47:45 2021
// Host        : alexk-laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/alexk/hds_projects/OPY/versal_pin_test/project_1.gen/sources_1/bd/design_1/ip/design_1_FIFO_CTRL_0_0/design_1_FIFO_CTRL_0_0_stub.v
// Design      : design_1_FIFO_CTRL_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvc1802-vsva2197-2MP-e-S
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "FIFO_CTRL,Vivado 2020.3" *)
module design_1_FIFO_CTRL_0_0(FIFO_EMPTY, INT_RDY, clk, FIFO_RD_EN)
/* synthesis syn_black_box black_box_pad_pin="FIFO_EMPTY,INT_RDY,clk,FIFO_RD_EN" */;
  input FIFO_EMPTY;
  input INT_RDY;
  input clk;
  output FIFO_RD_EN;
endmodule
