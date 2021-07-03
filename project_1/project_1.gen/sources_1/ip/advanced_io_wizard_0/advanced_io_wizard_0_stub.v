// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.3 (win64) Build 3173277 Wed Apr  7 05:07:49 MDT 2021
// Date        : Mon Jun 21 19:48:56 2021
// Host        : alexk-laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top advanced_io_wizard_0 -prefix
//               advanced_io_wizard_0_ advanced_io_wizard_0_stub.v
// Design      : advanced_io_wizard_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvc1802-vsva2197-2MP-e-S
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "advanced_io_wizard_0_advanced_io_wizard_v1_0_4,Vivado 2020.3" *)
module advanced_io_wizard_0(intf_rdy, ctrl_clk, en_vtc, fifo_rd_clk, rst, 
  shared_bank0_pll_clkoutphy_in, shared_bank1_pll_clkoutphy_in, 
  shared_bank2_pll_clkoutphy_in, shared_bank0_pll_locked_in, 
  shared_bank1_pll_locked_in, shared_bank2_pll_locked_in, shared_pll_clkoutphyen_out, 
  dly_rdy, phy_rdy, fifo_empty, fifo_rd_en, LVDS_706_p, LVDS_706_n, data_to_fabric_LVDS_706, 
  RD_CLK_706, data_to_fabric_RD_CLK_706, LVDS_707_p, LVDS_707_n, data_to_fabric_LVDS_707, 
  RD_CLK_707, data_to_fabric_RD_CLK_707, LVDS_708_p, LVDS_708_n, data_to_fabric_LVDS_708, 
  RD_CLK_708, data_to_fabric_RD_CLK_708)
/* synthesis syn_black_box black_box_pad_pin="intf_rdy,ctrl_clk,en_vtc,fifo_rd_clk,rst,shared_bank0_pll_clkoutphy_in,shared_bank1_pll_clkoutphy_in,shared_bank2_pll_clkoutphy_in,shared_bank0_pll_locked_in,shared_bank1_pll_locked_in,shared_bank2_pll_locked_in,shared_pll_clkoutphyen_out,dly_rdy,phy_rdy,fifo_empty,fifo_rd_en,LVDS_706_p[22:0],LVDS_706_n[22:0],data_to_fabric_LVDS_706[91:0],RD_CLK_706[0:0],data_to_fabric_RD_CLK_706[3:0],LVDS_707_p[17:0],LVDS_707_n[17:0],data_to_fabric_LVDS_707[71:0],RD_CLK_707[0:0],data_to_fabric_RD_CLK_707[3:0],LVDS_708_p[22:0],LVDS_708_n[22:0],data_to_fabric_LVDS_708[91:0],RD_CLK_708[0:0],data_to_fabric_RD_CLK_708[3:0]" */;
  output intf_rdy;
  input ctrl_clk;
  input en_vtc;
  input fifo_rd_clk;
  input rst;
  input shared_bank0_pll_clkoutphy_in;
  input shared_bank1_pll_clkoutphy_in;
  input shared_bank2_pll_clkoutphy_in;
  input shared_bank0_pll_locked_in;
  input shared_bank1_pll_locked_in;
  input shared_bank2_pll_locked_in;
  output shared_pll_clkoutphyen_out;
  output dly_rdy;
  output phy_rdy;
  output fifo_empty;
  input fifo_rd_en;
  input [22:0]LVDS_706_p;
  input [22:0]LVDS_706_n;
  output [91:0]data_to_fabric_LVDS_706;
  input [0:0]RD_CLK_706;
  output [3:0]data_to_fabric_RD_CLK_706;
  input [17:0]LVDS_707_p;
  input [17:0]LVDS_707_n;
  output [71:0]data_to_fabric_LVDS_707;
  input [0:0]RD_CLK_707;
  output [3:0]data_to_fabric_RD_CLK_707;
  input [22:0]LVDS_708_p;
  input [22:0]LVDS_708_n;
  output [91:0]data_to_fabric_LVDS_708;
  input [0:0]RD_CLK_708;
  output [3:0]data_to_fabric_RD_CLK_708;
endmodule
