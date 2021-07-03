// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.3 (win64) Build 3173277 Wed Apr  7 05:07:49 MDT 2021
// Date        : Thu Jun 24 19:40:25 2021
// Host        : alexk-laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/alexk/hds_projects/OPY/versal_pin_test/project_1.gen/sources_1/bd/design_1/ip/design_1_advanced_io_wizard_0_0/design_1_advanced_io_wizard_0_0_stub.v
// Design      : design_1_advanced_io_wizard_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvc1802-vsva2197-2MP-e-S
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "design_1_advanced_io_wizard_0_0_advanced_io_wizard_v1_0_4,Vivado 2020.3" *)
module design_1_advanced_io_wizard_0_0(intf_rdy, ctrl_clk, en_vtc, fifo_rd_clk, rst, 
  bank0_pll_clkout0, bank0_pll_clkout2, bank0_pll_clkout3, bank0_pll_clkoutphy, 
  bank0_pll_locked, bank0_pll_rst_pll, bank1_pll_clkout0, bank1_pll_clkout2, 
  bank1_pll_clkout3, bank1_pll_clkoutphy, bank1_pll_locked, bank1_pll_rst_pll, 
  bank2_pll_clkout0, bank2_pll_clkout2, bank2_pll_clkout3, bank2_pll_clkoutphy, 
  bank2_pll_locked, bank2_pll_rst_pll, dly_rdy, phy_rdy, fifo_empty, fifo_rd_en, LVDS_706_p, 
  LVDS_706_n, data_to_fabric_LVDS_706, RD_CLK_706_p, RD_CLK_706_n, 
  data_to_fabric_RD_CLK_706, LVDS_707_p, LVDS_707_n, data_to_fabric_LVDS_707, RD_CLK_707_p, 
  RD_CLK_707_n, data_to_fabric_RD_CLK_707, LVDS_708_p, LVDS_708_n, data_to_fabric_LVDS_708, 
  RD_CLK_708_p, RD_CLK_708_n, data_to_fabric_RD_CLK_708, XPLL_IN_p, XPLL_IN_n)
/* synthesis syn_black_box black_box_pad_pin="intf_rdy,ctrl_clk,en_vtc,fifo_rd_clk,rst,bank0_pll_clkout0,bank0_pll_clkout2,bank0_pll_clkout3,bank0_pll_clkoutphy,bank0_pll_locked,bank0_pll_rst_pll,bank1_pll_clkout0,bank1_pll_clkout2,bank1_pll_clkout3,bank1_pll_clkoutphy,bank1_pll_locked,bank1_pll_rst_pll,bank2_pll_clkout0,bank2_pll_clkout2,bank2_pll_clkout3,bank2_pll_clkoutphy,bank2_pll_locked,bank2_pll_rst_pll,dly_rdy,phy_rdy,fifo_empty,fifo_rd_en,LVDS_706_p[23:0],LVDS_706_n[23:0],data_to_fabric_LVDS_706[95:0],RD_CLK_706_p[0:0],RD_CLK_706_n[0:0],data_to_fabric_RD_CLK_706[3:0],LVDS_707_p[17:0],LVDS_707_n[17:0],data_to_fabric_LVDS_707[71:0],RD_CLK_707_p[0:0],RD_CLK_707_n[0:0],data_to_fabric_RD_CLK_707[3:0],LVDS_708_p[21:0],LVDS_708_n[21:0],data_to_fabric_LVDS_708[87:0],RD_CLK_708_p[0:0],RD_CLK_708_n[0:0],data_to_fabric_RD_CLK_708[3:0],XPLL_IN_p[0:0],XPLL_IN_n[0:0]" */;
  output intf_rdy;
  input ctrl_clk;
  input en_vtc;
  input fifo_rd_clk;
  input rst;
  output bank0_pll_clkout0;
  output bank0_pll_clkout2;
  output bank0_pll_clkout3;
  output bank0_pll_clkoutphy;
  output bank0_pll_locked;
  input bank0_pll_rst_pll;
  output bank1_pll_clkout0;
  output bank1_pll_clkout2;
  output bank1_pll_clkout3;
  output bank1_pll_clkoutphy;
  output bank1_pll_locked;
  input bank1_pll_rst_pll;
  output bank2_pll_clkout0;
  output bank2_pll_clkout2;
  output bank2_pll_clkout3;
  output bank2_pll_clkoutphy;
  output bank2_pll_locked;
  input bank2_pll_rst_pll;
  output dly_rdy;
  output phy_rdy;
  output fifo_empty;
  input fifo_rd_en;
  input [23:0]LVDS_706_p;
  input [23:0]LVDS_706_n;
  output [95:0]data_to_fabric_LVDS_706;
  input [0:0]RD_CLK_706_p;
  input [0:0]RD_CLK_706_n;
  output [3:0]data_to_fabric_RD_CLK_706;
  input [17:0]LVDS_707_p;
  input [17:0]LVDS_707_n;
  output [71:0]data_to_fabric_LVDS_707;
  input [0:0]RD_CLK_707_p;
  input [0:0]RD_CLK_707_n;
  output [3:0]data_to_fabric_RD_CLK_707;
  input [21:0]LVDS_708_p;
  input [21:0]LVDS_708_n;
  output [87:0]data_to_fabric_LVDS_708;
  input [0:0]RD_CLK_708_p;
  input [0:0]RD_CLK_708_n;
  output [3:0]data_to_fabric_RD_CLK_708;
  input [0:0]XPLL_IN_p;
  input [0:0]XPLL_IN_n;
endmodule
