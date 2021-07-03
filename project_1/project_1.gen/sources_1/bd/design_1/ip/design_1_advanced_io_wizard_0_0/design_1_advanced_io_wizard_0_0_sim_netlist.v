// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.3 (win64) Build 3173277 Wed Apr  7 05:07:49 MDT 2021
// Date        : Thu Jun 24 19:40:25 2021
// Host        : alexk-laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/alexk/hds_projects/OPY/versal_pin_test/project_1.gen/sources_1/bd/design_1/ip/design_1_advanced_io_wizard_0_0/design_1_advanced_io_wizard_0_0_sim_netlist.v
// Design      : design_1_advanced_io_wizard_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvc1802-vsva2197-2MP-e-S
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_advanced_io_wizard_0_0,design_1_advanced_io_wizard_0_0_advanced_io_wizard_v1_0_4,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "design_1_advanced_io_wizard_0_0_advanced_io_wizard_v1_0_4,Vivado 2020.3" *) 
(* NotValidForBitStream *)
module design_1_advanced_io_wizard_0_0
   (intf_rdy,
    ctrl_clk,
    en_vtc,
    fifo_rd_clk,
    rst,
    bank0_pll_clkout0,
    bank0_pll_clkout2,
    bank0_pll_clkout3,
    bank0_pll_clkoutphy,
    bank0_pll_locked,
    bank0_pll_rst_pll,
    bank1_pll_clkout0,
    bank1_pll_clkout2,
    bank1_pll_clkout3,
    bank1_pll_clkoutphy,
    bank1_pll_locked,
    bank1_pll_rst_pll,
    bank2_pll_clkout0,
    bank2_pll_clkout2,
    bank2_pll_clkout3,
    bank2_pll_clkoutphy,
    bank2_pll_locked,
    bank2_pll_rst_pll,
    dly_rdy,
    phy_rdy,
    fifo_empty,
    fifo_rd_en,
    LVDS_706_p,
    LVDS_706_n,
    data_to_fabric_LVDS_706,
    RD_CLK_706_p,
    RD_CLK_706_n,
    data_to_fabric_RD_CLK_706,
    LVDS_707_p,
    LVDS_707_n,
    data_to_fabric_LVDS_707,
    RD_CLK_707_p,
    RD_CLK_707_n,
    data_to_fabric_RD_CLK_707,
    LVDS_708_p,
    LVDS_708_n,
    data_to_fabric_LVDS_708,
    RD_CLK_708_p,
    RD_CLK_708_n,
    data_to_fabric_RD_CLK_708,
    XPLL_IN_p,
    XPLL_IN_n);
  output intf_rdy;
  input ctrl_clk;
  input en_vtc;
  input fifo_rd_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
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

  (* IBUF_LOW_PWR *) wire [23:0]LVDS_706_n;
  (* IBUF_LOW_PWR *) wire [23:0]LVDS_706_p;
  (* IBUF_LOW_PWR *) wire [17:0]LVDS_707_n;
  (* IBUF_LOW_PWR *) wire [17:0]LVDS_707_p;
  (* IBUF_LOW_PWR *) wire [21:0]LVDS_708_n;
  (* IBUF_LOW_PWR *) wire [21:0]LVDS_708_p;
  (* IBUF_LOW_PWR *) wire [0:0]RD_CLK_706_n;
  (* IBUF_LOW_PWR *) wire [0:0]RD_CLK_706_p;
  (* IBUF_LOW_PWR *) wire [0:0]RD_CLK_707_n;
  (* IBUF_LOW_PWR *) wire [0:0]RD_CLK_707_p;
  (* IBUF_LOW_PWR *) wire [0:0]RD_CLK_708_n;
  (* IBUF_LOW_PWR *) wire [0:0]RD_CLK_708_p;
  (* IBUF_LOW_PWR *) wire [0:0]XPLL_IN_n;
  (* IBUF_LOW_PWR *) wire [0:0]XPLL_IN_p;
  wire bank0_pll_clkout0;
  wire bank0_pll_clkout2;
  wire bank0_pll_clkout3;
  wire bank0_pll_clkoutphy;
  wire bank0_pll_locked;
  wire bank0_pll_rst_pll;
  wire bank1_pll_clkout0;
  wire bank1_pll_clkout2;
  wire bank1_pll_clkout3;
  wire bank1_pll_clkoutphy;
  wire bank1_pll_locked;
  wire bank1_pll_rst_pll;
  wire bank2_pll_clkout0;
  wire bank2_pll_clkout2;
  wire bank2_pll_clkout3;
  wire bank2_pll_clkoutphy;
  wire bank2_pll_locked;
  wire bank2_pll_rst_pll;
  wire ctrl_clk;
  wire [95:0]data_to_fabric_LVDS_706;
  wire [71:0]data_to_fabric_LVDS_707;
  wire [87:0]data_to_fabric_LVDS_708;
  wire [3:0]data_to_fabric_RD_CLK_706;
  wire [3:0]data_to_fabric_RD_CLK_707;
  wire [3:0]data_to_fabric_RD_CLK_708;
  wire dly_rdy;
  wire en_vtc;
  wire fifo_empty;
  wire fifo_rd_clk;
  wire fifo_rd_en;
  wire intf_rdy;
  wire phy_rdy;
  wire rst;
  wire NLW_inst_bank0_pll_clkout1_UNCONNECTED;
  wire NLW_inst_bank1_pll_clkout1_UNCONNECTED;
  wire NLW_inst_bank2_pll_clkout1_UNCONNECTED;
  wire NLW_inst_bitslip_sync_done_UNCONNECTED;
  wire NLW_inst_cal_done_UNCONNECTED;
  wire NLW_inst_cal_status_UNCONNECTED;
  wire NLW_inst_psdone_vio_UNCONNECTED;
  wire NLW_inst_shared_pll_clkoutphyen_out_UNCONNECTED;
  wire [99:0]NLW_inst_dbg_bus_UNCONNECTED;
  wire [23:0]NLW_inst_deskew_done_UNCONNECTED;
  wire [26:0]NLW_inst_fifo_wr_clk_UNCONNECTED;
  wire [26:0]NLW_inst_gt_status_UNCONNECTED;
  wire [431:0]NLW_inst_riu_rd_data_UNCONNECTED;
  wire [26:0]NLW_inst_riu_rd_valid_UNCONNECTED;

  (* APPLICATION_TYPE = "SOURCE_SYNCHRONOUS" *) 
  (* BITSLIP_MODE = "SLIP_PER_BIT" *) 
  (* BITSLIP_VAL = "8'b00101100" *) 
  (* BUS0_DIR = "RX" *) 
  (* BUS0_IO_TYPE = "DIFF" *) 
  (* BUS0_NUM_PINS = "24" *) 
  (* BUS0_RE_EN = "0" *) 
  (* BUS0_RE_IO_TYPE = "0" *) 
  (* BUS0_SIG_TYPE = "Data" *) 
  (* BUS0_STROBE_EN = "1" *) 
  (* BUS0_STROBE_IO_TYPE = "DIFF" *) 
  (* BUS10_DIR = "None" *) 
  (* BUS10_IO_TYPE = "SINGLE" *) 
  (* BUS10_NUM_PINS = "1" *) 
  (* BUS10_RE_EN = "0" *) 
  (* BUS10_RE_IO_TYPE = "0" *) 
  (* BUS10_SIG_TYPE = "Data" *) 
  (* BUS10_STROBE_EN = "0" *) 
  (* BUS10_STROBE_IO_TYPE = "SINGLE" *) 
  (* BUS11_DIR = "None" *) 
  (* BUS11_IO_TYPE = "SINGLE" *) 
  (* BUS11_NUM_PINS = "1" *) 
  (* BUS11_RE_EN = "0" *) 
  (* BUS11_RE_IO_TYPE = "0" *) 
  (* BUS11_SIG_TYPE = "Data" *) 
  (* BUS11_STROBE_EN = "0" *) 
  (* BUS11_STROBE_IO_TYPE = "SINGLE" *) 
  (* BUS12_DIR = "None" *) 
  (* BUS12_IO_TYPE = "SINGLE" *) 
  (* BUS12_NUM_PINS = "1" *) 
  (* BUS12_RE_EN = "0" *) 
  (* BUS12_RE_IO_TYPE = "0" *) 
  (* BUS12_SIG_TYPE = "Data" *) 
  (* BUS12_STROBE_EN = "0" *) 
  (* BUS12_STROBE_IO_TYPE = "SINGLE" *) 
  (* BUS13_DIR = "None" *) 
  (* BUS13_IO_TYPE = "SINGLE" *) 
  (* BUS13_NUM_PINS = "1" *) 
  (* BUS13_RE_EN = "0" *) 
  (* BUS13_RE_IO_TYPE = "0" *) 
  (* BUS13_SIG_TYPE = "Data" *) 
  (* BUS13_STROBE_EN = "0" *) 
  (* BUS13_STROBE_IO_TYPE = "SINGLE" *) 
  (* BUS14_DIR = "None" *) 
  (* BUS14_IO_TYPE = "SINGLE" *) 
  (* BUS14_NUM_PINS = "1" *) 
  (* BUS14_RE_EN = "0" *) 
  (* BUS14_RE_IO_TYPE = "0" *) 
  (* BUS14_SIG_TYPE = "Data" *) 
  (* BUS14_STROBE_EN = "0" *) 
  (* BUS14_STROBE_IO_TYPE = "SINGLE" *) 
  (* BUS15_DIR = "None" *) 
  (* BUS15_IO_TYPE = "SINGLE" *) 
  (* BUS15_NUM_PINS = "1" *) 
  (* BUS15_RE_EN = "0" *) 
  (* BUS15_RE_IO_TYPE = "0" *) 
  (* BUS15_SIG_TYPE = "Data" *) 
  (* BUS15_STROBE_EN = "0" *) 
  (* BUS15_STROBE_IO_TYPE = "SINGLE" *) 
  (* BUS16_DIR = "None" *) 
  (* BUS16_IO_TYPE = "SINGLE" *) 
  (* BUS16_NUM_PINS = "1" *) 
  (* BUS16_RE_EN = "0" *) 
  (* BUS16_RE_IO_TYPE = "0" *) 
  (* BUS16_SIG_TYPE = "Data" *) 
  (* BUS16_STROBE_EN = "0" *) 
  (* BUS16_STROBE_IO_TYPE = "SINGLE" *) 
  (* BUS1_DIR = "RX" *) 
  (* BUS1_IO_TYPE = "DIFF" *) 
  (* BUS1_NUM_PINS = "18" *) 
  (* BUS1_RE_EN = "0" *) 
  (* BUS1_RE_IO_TYPE = "0" *) 
  (* BUS1_SIG_TYPE = "Data" *) 
  (* BUS1_STROBE_EN = "1" *) 
  (* BUS1_STROBE_IO_TYPE = "DIFF" *) 
  (* BUS2_DIR = "RX" *) 
  (* BUS2_IO_TYPE = "DIFF" *) 
  (* BUS2_NUM_PINS = "22" *) 
  (* BUS2_RE_EN = "0" *) 
  (* BUS2_RE_IO_TYPE = "0" *) 
  (* BUS2_SIG_TYPE = "Data" *) 
  (* BUS2_STROBE_EN = "1" *) 
  (* BUS2_STROBE_IO_TYPE = "DIFF" *) 
  (* BUS3_DIR = "RX" *) 
  (* BUS3_IO_TYPE = "DIFF" *) 
  (* BUS3_NUM_PINS = "1" *) 
  (* BUS3_RE_EN = "0" *) 
  (* BUS3_RE_IO_TYPE = "0" *) 
  (* BUS3_SIG_TYPE = "Input Clock" *) 
  (* BUS3_STROBE_EN = "0" *) 
  (* BUS3_STROBE_IO_TYPE = "SINGLE" *) 
  (* BUS4_DIR = "None" *) 
  (* BUS4_IO_TYPE = "SINGLE" *) 
  (* BUS4_NUM_PINS = "1" *) 
  (* BUS4_RE_EN = "0" *) 
  (* BUS4_RE_IO_TYPE = "0" *) 
  (* BUS4_SIG_TYPE = "Data" *) 
  (* BUS4_STROBE_EN = "0" *) 
  (* BUS4_STROBE_IO_TYPE = "SINGLE" *) 
  (* BUS5_DIR = "None" *) 
  (* BUS5_IO_TYPE = "SINGLE" *) 
  (* BUS5_NUM_PINS = "1" *) 
  (* BUS5_RE_EN = "0" *) 
  (* BUS5_RE_IO_TYPE = "0" *) 
  (* BUS5_SIG_TYPE = "Data" *) 
  (* BUS5_STROBE_EN = "0" *) 
  (* BUS5_STROBE_IO_TYPE = "SINGLE" *) 
  (* BUS6_DIR = "None" *) 
  (* BUS6_IO_TYPE = "SINGLE" *) 
  (* BUS6_NUM_PINS = "1" *) 
  (* BUS6_RE_EN = "0" *) 
  (* BUS6_RE_IO_TYPE = "0" *) 
  (* BUS6_SIG_TYPE = "Data" *) 
  (* BUS6_STROBE_EN = "0" *) 
  (* BUS6_STROBE_IO_TYPE = "SINGLE" *) 
  (* BUS7_DIR = "None" *) 
  (* BUS7_IO_TYPE = "SINGLE" *) 
  (* BUS7_NUM_PINS = "1" *) 
  (* BUS7_RE_EN = "0" *) 
  (* BUS7_RE_IO_TYPE = "0" *) 
  (* BUS7_SIG_TYPE = "Data" *) 
  (* BUS7_STROBE_EN = "0" *) 
  (* BUS7_STROBE_IO_TYPE = "SINGLE" *) 
  (* BUS8_DIR = "None" *) 
  (* BUS8_IO_TYPE = "SINGLE" *) 
  (* BUS8_NUM_PINS = "1" *) 
  (* BUS8_RE_EN = "0" *) 
  (* BUS8_RE_IO_TYPE = "0" *) 
  (* BUS8_SIG_TYPE = "Data" *) 
  (* BUS8_STROBE_EN = "0" *) 
  (* BUS8_STROBE_IO_TYPE = "SINGLE" *) 
  (* BUS9_DIR = "None" *) 
  (* BUS9_IO_TYPE = "SINGLE" *) 
  (* BUS9_NUM_PINS = "1" *) 
  (* BUS9_RE_EN = "0" *) 
  (* BUS9_RE_IO_TYPE = "0" *) 
  (* BUS9_SIG_TYPE = "Data" *) 
  (* BUS9_STROBE_EN = "0" *) 
  (* BUS9_STROBE_IO_TYPE = "SINGLE" *) 
  (* BUS_DIR = "1" *) 
  (* CLK_FWD_PHASE = "0" *) 
  (* CLK_TO_DATA_ALIGN = "4" *) 
  (* C_CLKIN_PERIOD = "4.000000" *) 
  (* C_EN_BIDIR = "0" *) 
  (* C_EN_RX = "1" *) 
  (* C_EN_TX = "0" *) 
  (* C_PLL0_CLK0_PHASE = "0.000000" *) 
  (* C_PLL0_CLK1_PHASE = "0.000000" *) 
  (* C_PLL0_CLKOUTPHY_DIVIDE = "DIV4" *) 
  (* C_PLL0_D = "1" *) 
  (* C_PLL0_M = "16" *) 
  (* C_PLL0_O0 = "16" *) 
  (* C_PLL0_O1 = "16" *) 
  (* C_PLL0_O2 = "16" *) 
  (* C_PLL0_O3 = "16" *) 
  (* C_PLL1_CLK0_PHASE = "0.000000" *) 
  (* C_PLL1_CLK1_PHASE = "0.000000" *) 
  (* C_PLL1_CLKOUTPHY_DIVIDE = "DIV4" *) 
  (* C_PLL1_D = "1" *) 
  (* C_PLL1_M = "16" *) 
  (* C_PLL1_O0 = "16" *) 
  (* C_PLL1_O1 = "16" *) 
  (* C_PLL1_O2 = "16" *) 
  (* C_PLL1_O3 = "16" *) 
  (* C_PLL2_CLK0_PHASE = "0.000000" *) 
  (* C_PLL2_CLK1_PHASE = "0.000000" *) 
  (* C_PLL2_CLKOUTPHY_DIVIDE = "DIV4" *) 
  (* C_PLL2_D = "1" *) 
  (* C_PLL2_M = "16" *) 
  (* C_PLL2_O0 = "16" *) 
  (* C_PLL2_O1 = "16" *) 
  (* C_PLL2_O2 = "16" *) 
  (* C_PLL2_O3 = "16" *) 
  (* C_PLL_SHARE = "0" *) 
  (* C_SIM_DEVICE = "VERSAL_AI_CORE" *) 
  (* DATA_SPEED = "1000.000000" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* ENABLE_BITSLIP = "0" *) 
  (* ENABLE_BLI = "1" *) 
  (* ENABLE_DATA_BITSLIP = "0" *) 
  (* ENABLE_PLLOUT1 = "0" *) 
  (* ENABLE_PLLOUTFB = "0" *) 
  (* ENABLE_RIU_INTERFACE = "0" *) 
  (* ENABLE_XPLL_DESKEW = "1" *) 
  (* EN_DEBUG_TX_CALIB = "0" *) 
  (* EN_TXCALIB_SIM = "0" *) 
  (* INPUT_CLK_FREQ = "250.000000" *) 
  (* MAX_BANKS = "3" *) 
  (* MIPI_DESKEW_EN = "0" *) 
  (* MIPI_TXCALIB_EN = "0" *) 
  (* MULTI_BANK_EN = "0" *) 
  (* NIBBLE_GROUP = "@RX_GROUP_0 LVDS_706_10 LVDS_706_11 LVDS_706_12 LVDS_706_13 LVDS_706_14 LVDS_706_15 @RX_GROUP_1 LVDS_706_16 LVDS_706_17 LVDS_706_18 LVDS_706_19 LVDS_706_20 LVDS_706_21 @RX_GROUP_10 LVDS_708_16 LVDS_708_17 LVDS_708_18 LVDS_708_19 LVDS_708_20 LVDS_708_21 @RX_GROUP_11 RD_CLK_708_0 RD_CLK_708_1 LVDS_708_0 LVDS_708_1 LVDS_708_2 LVDS_708_3 @RX_GROUP_12 LVDS_708_4 LVDS_708_5 LVDS_708_6 LVDS_708_7 LVDS_708_8 LVDS_708_9 @RX_GROUP_13 LVDS_708_22 LVDS_708_23 LVDS_708_24 LVDS_708_25 LVDS_708_26 LVDS_708_27 @RX_GROUP_14 LVDS_708_28 LVDS_708_29 LVDS_708_30 LVDS_708_31 LVDS_708_32 LVDS_708_33 @RX_GROUP_15 LVDS_708_34 LVDS_708_35 LVDS_708_36 LVDS_708_37 LVDS_708_38 LVDS_708_39 @RX_GROUP_16 LVDS_708_40 LVDS_708_41 LVDS_708_42 LVDS_708_43 @RX_GROUP_17 XPLL_IN_0 XPLL_IN_1 @RX_GROUP_18 RD_CLK_707_0 RD_CLK_707_1 LVDS_707_0 LVDS_707_1 LVDS_707_2 LVDS_707_3 @RX_GROUP_19 LVDS_707_4 LVDS_707_5 LVDS_707_6 LVDS_707_7 LVDS_707_8 LVDS_707_9 @RX_GROUP_2 RD_CLK_706_0 RD_CLK_706_1 LVDS_706_0 LVDS_706_1 LVDS_706_2 LVDS_706_3 @RX_GROUP_20 LVDS_707_10 LVDS_707_11 LVDS_707_12 LVDS_707_13 LVDS_707_14 LVDS_707_15 @RX_GROUP_21 LVDS_707_16 LVDS_707_17 LVDS_707_18 LVDS_707_19 LVDS_707_20 LVDS_707_21 @RX_GROUP_22 LVDS_707_22 LVDS_707_23 LVDS_707_24 LVDS_707_25 LVDS_707_26 LVDS_707_27 @RX_GROUP_23 LVDS_707_28 LVDS_707_29 LVDS_707_30 LVDS_707_31 LVDS_707_32 LVDS_707_33 @RX_GROUP_24 {} {} LVDS_707_34 LVDS_707_35 @RX_GROUP_3 LVDS_706_4 LVDS_706_5 LVDS_706_6 LVDS_706_7 LVDS_706_8 LVDS_706_9 @RX_GROUP_4 LVDS_706_22 LVDS_706_23 LVDS_706_24 LVDS_706_25 LVDS_706_26 LVDS_706_27 @RX_GROUP_5 LVDS_706_28 LVDS_706_29 LVDS_706_30 LVDS_706_31 LVDS_706_32 LVDS_706_33 @RX_GROUP_6 LVDS_706_34 LVDS_706_35 LVDS_706_36 LVDS_706_37 LVDS_706_38 LVDS_706_39 @RX_GROUP_7 LVDS_706_40 LVDS_706_41 LVDS_706_42 LVDS_706_43 LVDS_706_44 LVDS_706_45 @RX_GROUP_8 {} {} LVDS_706_46 LVDS_706_47 @RX_GROUP_9 LVDS_708_10 LVDS_708_11 LVDS_708_12 LVDS_708_13 LVDS_708_14 LVDS_708_15" *) 
  (* NUM_DATA_PINS = "24" *) 
  (* PIN_INFO = "BUS0_DIR RX BUS0_IO_TYPE DIFF BUS0_SIG_TYPE Data BUS0_STROBE_EN 1 BUS0_STROBE_NAME RD_CLK_706 BUS0_SIG_NAME LVDS_706 BUS0_NUM_PINS 24 BUS0_STROBE_IO_TYPE DIFF BUS0_RE_EN 0 BUS0_RE_IO_TYPE SINGLE BUS0_RE_NAME RE_0 BUS0_WRCLK_EN 0 BUS0_WRCLK_IO_TYPE SINGLE BUS0_WRCLK_NAME WrClk_0 BUS1_DIR RX BUS1_IO_TYPE DIFF BUS1_SIG_TYPE Data BUS1_STROBE_EN 1 BUS1_STROBE_NAME RD_CLK_707 BUS1_SIG_NAME LVDS_707 BUS1_NUM_PINS 18 BUS1_STROBE_IO_TYPE DIFF BUS1_RE_EN 0 BUS1_RE_IO_TYPE SINGLE BUS1_RE_NAME RE_1 BUS1_WRCLK_EN 0 BUS1_WRCLK_IO_TYPE SINGLE BUS1_WRCLK_NAME WrClk_1 BUS2_DIR RX BUS2_IO_TYPE DIFF BUS2_SIG_TYPE Data BUS2_STROBE_EN 1 BUS2_STROBE_NAME RD_CLK_708 BUS2_SIG_NAME LVDS_708 BUS2_NUM_PINS 22 BUS2_STROBE_IO_TYPE DIFF BUS2_RE_EN 0 BUS2_RE_IO_TYPE SINGLE BUS2_RE_NAME RE_2 BUS2_WRCLK_EN 0 BUS2_WRCLK_IO_TYPE SINGLE BUS2_WRCLK_NAME WrClk_2 BUS3_DIR RX BUS3_IO_TYPE DIFF BUS3_SIG_TYPE {Input Clock} BUS3_STROBE_EN 0 BUS3_STROBE_NAME Strobe_3 BUS3_SIG_NAME XPLL_IN BUS3_NUM_PINS 1 BUS3_STROBE_IO_TYPE SINGLE BUS3_RE_EN 0 BUS3_RE_IO_TYPE SINGLE BUS3_RE_NAME RE_3 BUS3_WRCLK_EN 0 BUS3_WRCLK_IO_TYPE SINGLE BUS3_WRCLK_NAME WrClk_3" *) 
  (* PLL0_PLLOUTCLK0 = "100.000000" *) 
  (* PLL0_PLLOUTCLK1 = "200.000000" *) 
  (* PLL0_PLLOUTFB = "100.000000" *) 
  (* PLL_ACROSS_BANKS = "0" *) 
  (* PLL_CLK_SOURCE = "IBUF_TO_PLL" *) 
  (* PLL_FIFO_WRITE_CLK_EN = "0" *) 
  (* PLL_IN_CORE = "1" *) 
  (* REDUCE_CONTROL_SIG_EN = "1" *) 
  (* RIU_FROM_PLL = "0" *) 
  (* RX_APP_CLK_FREQ = "100.000000" *) 
  (* RX_DELAY_CASCADE = "0" *) 
  (* RX_DELAY_FORMAT = "TIME" *) 
  (* RX_DELAY_MODE = "TIME" *) 
  (* RX_DELAY_TYPE = "2'b00" *) 
  (* RX_DELAY_VALUE = "12'b000000000000" *) 
  (* RX_SERIALIZATION_FACTOR = "4" *) 
  (* TEMPLATE = "MIPI_RX" *) 
  (* TRI_SELECT = "1" *) 
  (* TX_APP_CLK_FREQ = "100.000000" *) 
  (* TX_DATA_PHASE = "0" *) 
  (* TX_DELAY_MODE = "TIME" *) 
  (* TX_DELAY_TYPE = "0" *) 
  (* TX_DELAY_VALUE = "12'b000000000000" *) 
  (* TX_SERIALIZATION_FACTOR = "8" *) 
  (* WIZ_OVERRIDE = "0" *) 
  (* XPHYIO_APPLICATION_DATA_WIDTH = "8" *) 
  (* XPHYIO_APPLICATION_TYPE = "SOURCE_SYNCHRONOUS" *) 
  (* XPHYIO_BIDIR_MODE = "1" *) 
  (* XPHYIO_BITSLIP_VAL = "0x2C" *) 
  (* XPHYIO_BUS0_DIR = "RX" *) 
  (* XPHYIO_BUS0_IO_TYPE = "DIFF" *) 
  (* XPHYIO_BUS0_NUM_PINS = "24" *) 
  (* XPHYIO_BUS0_RE_EN = "0" *) 
  (* XPHYIO_BUS0_RE_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS0_RE_NAME = "RE_0" *) 
  (* XPHYIO_BUS0_SIG_NAME = "LVDS_706" *) 
  (* XPHYIO_BUS0_SIG_TYPE = "Data" *) 
  (* XPHYIO_BUS0_STROBE_EN = "1" *) 
  (* XPHYIO_BUS0_STROBE_IO_TYPE = "DIFF" *) 
  (* XPHYIO_BUS0_STROBE_NAME = "RD_CLK_706" *) 
  (* XPHYIO_BUS0_WRCLK_EN = "0" *) 
  (* XPHYIO_BUS0_WRCLK_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS0_WRCLK_NAME = "WrClk_0" *) 
  (* XPHYIO_BUS0_XPHY_ATTR = "FIFOMODE_ASYNC" *) 
  (* XPHYIO_BUS10_DIR = "None" *) 
  (* XPHYIO_BUS10_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS10_NUM_PINS = "1" *) 
  (* XPHYIO_BUS10_SIG_NAME = "Data_pins_10" *) 
  (* XPHYIO_BUS10_SIG_TYPE = "Data" *) 
  (* XPHYIO_BUS10_STROBE_EN = "0" *) 
  (* XPHYIO_BUS10_STROBE_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS10_STROBE_NAME = "Strobe_10" *) 
  (* XPHYIO_BUS10_WRCLK_EN = "0" *) 
  (* XPHYIO_BUS10_WRCLK_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS10_WRCLK_NAME = "WrClk_10" *) 
  (* XPHYIO_BUS10_XPHY_ATTR = "0" *) 
  (* XPHYIO_BUS11_DIR = "None" *) 
  (* XPHYIO_BUS11_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS11_NUM_PINS = "1" *) 
  (* XPHYIO_BUS11_SIG_NAME = "Data_pins_11" *) 
  (* XPHYIO_BUS11_SIG_TYPE = "Data" *) 
  (* XPHYIO_BUS11_STROBE_EN = "0" *) 
  (* XPHYIO_BUS11_STROBE_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS11_STROBE_NAME = "Strobe_11" *) 
  (* XPHYIO_BUS11_WRCLK_EN = "0" *) 
  (* XPHYIO_BUS11_WRCLK_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS11_WRCLK_NAME = "WrClk_11" *) 
  (* XPHYIO_BUS11_XPHY_ATTR = "0" *) 
  (* XPHYIO_BUS12_DIR = "None" *) 
  (* XPHYIO_BUS12_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS12_NUM_PINS = "1" *) 
  (* XPHYIO_BUS12_SIG_NAME = "Data_pins_12" *) 
  (* XPHYIO_BUS12_SIG_TYPE = "Data" *) 
  (* XPHYIO_BUS12_STROBE_EN = "0" *) 
  (* XPHYIO_BUS12_STROBE_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS12_STROBE_NAME = "Strobe_12" *) 
  (* XPHYIO_BUS12_WRCLK_EN = "0" *) 
  (* XPHYIO_BUS12_WRCLK_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS12_WRCLK_NAME = "WrClk_12" *) 
  (* XPHYIO_BUS12_XPHY_ATTR = "0" *) 
  (* XPHYIO_BUS13_DIR = "None" *) 
  (* XPHYIO_BUS13_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS13_NUM_PINS = "1" *) 
  (* XPHYIO_BUS13_SIG_NAME = "Data_pins_13" *) 
  (* XPHYIO_BUS13_SIG_TYPE = "Data" *) 
  (* XPHYIO_BUS13_STROBE_EN = "0" *) 
  (* XPHYIO_BUS13_STROBE_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS13_STROBE_NAME = "Strobe_13" *) 
  (* XPHYIO_BUS13_WRCLK_EN = "0" *) 
  (* XPHYIO_BUS13_WRCLK_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS13_WRCLK_NAME = "WrClk_13" *) 
  (* XPHYIO_BUS13_XPHY_ATTR = "0" *) 
  (* XPHYIO_BUS14_DIR = "None" *) 
  (* XPHYIO_BUS14_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS14_NUM_PINS = "1" *) 
  (* XPHYIO_BUS14_SIG_NAME = "Data_pins_14" *) 
  (* XPHYIO_BUS14_SIG_TYPE = "Data" *) 
  (* XPHYIO_BUS14_STROBE_EN = "0" *) 
  (* XPHYIO_BUS14_STROBE_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS14_STROBE_NAME = "Strobe_14" *) 
  (* XPHYIO_BUS14_WRCLK_EN = "0" *) 
  (* XPHYIO_BUS14_WRCLK_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS14_WRCLK_NAME = "WrClk_14" *) 
  (* XPHYIO_BUS14_XPHY_ATTR = "0" *) 
  (* XPHYIO_BUS15_DIR = "None" *) 
  (* XPHYIO_BUS15_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS15_NUM_PINS = "1" *) 
  (* XPHYIO_BUS15_SIG_NAME = "Data_pins_15" *) 
  (* XPHYIO_BUS15_SIG_TYPE = "Data" *) 
  (* XPHYIO_BUS15_STROBE_EN = "0" *) 
  (* XPHYIO_BUS15_STROBE_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS15_STROBE_NAME = "Strobe_15" *) 
  (* XPHYIO_BUS15_WRCLK_EN = "0" *) 
  (* XPHYIO_BUS15_WRCLK_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS15_WRCLK_NAME = "WrClk_15" *) 
  (* XPHYIO_BUS15_XPHY_ATTR = "0" *) 
  (* XPHYIO_BUS16_DIR = "None" *) 
  (* XPHYIO_BUS16_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS16_NUM_PINS = "1" *) 
  (* XPHYIO_BUS16_SIG_NAME = "Data_pins_16" *) 
  (* XPHYIO_BUS16_SIG_TYPE = "Data" *) 
  (* XPHYIO_BUS16_STROBE_EN = "0" *) 
  (* XPHYIO_BUS16_STROBE_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS16_STROBE_NAME = "Strobe_16" *) 
  (* XPHYIO_BUS16_WRCLK_EN = "0" *) 
  (* XPHYIO_BUS16_WRCLK_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS16_WRCLK_NAME = "WrClk_16" *) 
  (* XPHYIO_BUS16_XPHY_ATTR = "0" *) 
  (* XPHYIO_BUS1_DIR = "RX" *) 
  (* XPHYIO_BUS1_IO_TYPE = "DIFF" *) 
  (* XPHYIO_BUS1_NUM_PINS = "18" *) 
  (* XPHYIO_BUS1_RE_EN = "0" *) 
  (* XPHYIO_BUS1_RE_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS1_RE_NAME = "RE_1" *) 
  (* XPHYIO_BUS1_SIG_NAME = "LVDS_707" *) 
  (* XPHYIO_BUS1_SIG_TYPE = "Data" *) 
  (* XPHYIO_BUS1_STROBE_EN = "1" *) 
  (* XPHYIO_BUS1_STROBE_IO_TYPE = "DIFF" *) 
  (* XPHYIO_BUS1_STROBE_NAME = "RD_CLK_707" *) 
  (* XPHYIO_BUS1_WRCLK_EN = "0" *) 
  (* XPHYIO_BUS1_WRCLK_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS1_WRCLK_NAME = "WrClk_1" *) 
  (* XPHYIO_BUS1_XPHY_ATTR = "0" *) 
  (* XPHYIO_BUS2_DIR = "RX" *) 
  (* XPHYIO_BUS2_IO_TYPE = "DIFF" *) 
  (* XPHYIO_BUS2_NUM_PINS = "22" *) 
  (* XPHYIO_BUS2_RE_EN = "0" *) 
  (* XPHYIO_BUS2_RE_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS2_RE_NAME = "RE_2" *) 
  (* XPHYIO_BUS2_SIG_NAME = "LVDS_708" *) 
  (* XPHYIO_BUS2_SIG_TYPE = "Data" *) 
  (* XPHYIO_BUS2_STROBE_EN = "1" *) 
  (* XPHYIO_BUS2_STROBE_IO_TYPE = "DIFF" *) 
  (* XPHYIO_BUS2_STROBE_NAME = "RD_CLK_708" *) 
  (* XPHYIO_BUS2_WRCLK_EN = "0" *) 
  (* XPHYIO_BUS2_WRCLK_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS2_WRCLK_NAME = "WrClk_2" *) 
  (* XPHYIO_BUS2_XPHY_ATTR = "0" *) 
  (* XPHYIO_BUS3_DIR = "RX" *) 
  (* XPHYIO_BUS3_IO_TYPE = "DIFF" *) 
  (* XPHYIO_BUS3_NUM_PINS = "1" *) 
  (* XPHYIO_BUS3_RE_EN = "0" *) 
  (* XPHYIO_BUS3_RE_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS3_RE_NAME = "RE_3" *) 
  (* XPHYIO_BUS3_SIG_NAME = "XPLL_IN" *) 
  (* XPHYIO_BUS3_SIG_TYPE = "Input Clock" *) 
  (* XPHYIO_BUS3_STROBE_EN = "0" *) 
  (* XPHYIO_BUS3_STROBE_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS3_STROBE_NAME = "Strobe_3" *) 
  (* XPHYIO_BUS3_WRCLK_EN = "0" *) 
  (* XPHYIO_BUS3_WRCLK_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS3_WRCLK_NAME = "WrClk_3" *) 
  (* XPHYIO_BUS3_XPHY_ATTR = "0" *) 
  (* XPHYIO_BUS4_DIR = "None" *) 
  (* XPHYIO_BUS4_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS4_NUM_PINS = "1" *) 
  (* XPHYIO_BUS4_RE_EN = "0" *) 
  (* XPHYIO_BUS4_RE_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS4_RE_NAME = "RE_4" *) 
  (* XPHYIO_BUS4_SIG_NAME = "Data_pins_4" *) 
  (* XPHYIO_BUS4_SIG_TYPE = "Data" *) 
  (* XPHYIO_BUS4_STROBE_EN = "0" *) 
  (* XPHYIO_BUS4_STROBE_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS4_STROBE_NAME = "Strobe_4" *) 
  (* XPHYIO_BUS4_WRCLK_EN = "0" *) 
  (* XPHYIO_BUS4_WRCLK_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS4_WRCLK_NAME = "WrClk_4" *) 
  (* XPHYIO_BUS4_XPHY_ATTR = "0" *) 
  (* XPHYIO_BUS5_DIR = "None" *) 
  (* XPHYIO_BUS5_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS5_NUM_PINS = "1" *) 
  (* XPHYIO_BUS5_RE_EN = "0" *) 
  (* XPHYIO_BUS5_RE_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS5_RE_NAME = "RE_5" *) 
  (* XPHYIO_BUS5_SIG_NAME = "Data_pins_5" *) 
  (* XPHYIO_BUS5_SIG_TYPE = "Data" *) 
  (* XPHYIO_BUS5_STROBE_EN = "0" *) 
  (* XPHYIO_BUS5_STROBE_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS5_STROBE_NAME = "Strobe_5" *) 
  (* XPHYIO_BUS5_WRCLK_EN = "0" *) 
  (* XPHYIO_BUS5_WRCLK_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS5_WRCLK_NAME = "WrClk_5" *) 
  (* XPHYIO_BUS5_XPHY_ATTR = "0" *) 
  (* XPHYIO_BUS6_DIR = "None" *) 
  (* XPHYIO_BUS6_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS6_NUM_PINS = "1" *) 
  (* XPHYIO_BUS6_SIG_NAME = "Data_pins_6" *) 
  (* XPHYIO_BUS6_SIG_TYPE = "Data" *) 
  (* XPHYIO_BUS6_STROBE_EN = "0" *) 
  (* XPHYIO_BUS6_STROBE_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS6_STROBE_NAME = "Strobe_6" *) 
  (* XPHYIO_BUS6_WRCLK_EN = "0" *) 
  (* XPHYIO_BUS6_WRCLK_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS6_WRCLK_NAME = "WrClk_6" *) 
  (* XPHYIO_BUS6_XPHY_ATTR = "0" *) 
  (* XPHYIO_BUS7_DIR = "None" *) 
  (* XPHYIO_BUS7_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS7_NUM_PINS = "1" *) 
  (* XPHYIO_BUS7_SIG_NAME = "Data_pins_7" *) 
  (* XPHYIO_BUS7_SIG_TYPE = "Data" *) 
  (* XPHYIO_BUS7_STROBE_EN = "0" *) 
  (* XPHYIO_BUS7_STROBE_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS7_STROBE_NAME = "Strobe_7" *) 
  (* XPHYIO_BUS7_WRCLK_EN = "0" *) 
  (* XPHYIO_BUS7_WRCLK_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS7_WRCLK_NAME = "WrClk_7" *) 
  (* XPHYIO_BUS7_XPHY_ATTR = "0" *) 
  (* XPHYIO_BUS8_DIR = "None" *) 
  (* XPHYIO_BUS8_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS8_NUM_PINS = "1" *) 
  (* XPHYIO_BUS8_SIG_NAME = "Data_pins_8" *) 
  (* XPHYIO_BUS8_SIG_TYPE = "Data" *) 
  (* XPHYIO_BUS8_STROBE_EN = "0" *) 
  (* XPHYIO_BUS8_STROBE_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS8_STROBE_NAME = "Strobe_8" *) 
  (* XPHYIO_BUS8_WRCLK_EN = "0" *) 
  (* XPHYIO_BUS8_WRCLK_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS8_WRCLK_NAME = "WrClk_8" *) 
  (* XPHYIO_BUS8_XPHY_ATTR = "0" *) 
  (* XPHYIO_BUS9_DIR = "None" *) 
  (* XPHYIO_BUS9_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS9_NUM_PINS = "1" *) 
  (* XPHYIO_BUS9_SIG_NAME = "Data_pins_9" *) 
  (* XPHYIO_BUS9_SIG_TYPE = "Data" *) 
  (* XPHYIO_BUS9_STROBE_EN = "0" *) 
  (* XPHYIO_BUS9_STROBE_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS9_STROBE_NAME = "Strobe_9" *) 
  (* XPHYIO_BUS9_WRCLK_EN = "0" *) 
  (* XPHYIO_BUS9_WRCLK_IO_TYPE = "SINGLE" *) 
  (* XPHYIO_BUS9_WRCLK_NAME = "WrClk_9" *) 
  (* XPHYIO_BUS9_XPHY_ATTR = "0" *) 
  (* XPHYIO_BUS_DIR = "1" *) 
  (* XPHYIO_CLK_FWD_PHASE = "0" *) 
  (* XPHYIO_CLK_TO_DATA_ALIGN = "4" *) 
  (* XPHYIO_C_EN_TX_CTSL = "0" *) 
  (* XPHYIO_Component_Name = "design_1_advanced_io_wizard_0_0" *) 
  (* XPHYIO_DATA_SPEED = "1000.00" *) 
  (* XPHYIO_DELAY_CTRL_SIG_EN = "0" *) 
  (* XPHYIO_DIFF_IO_STD = "LVDS15" *) 
  (* XPHYIO_ENABLE_ALL_PORTS = "0" *) 
  (* XPHYIO_ENABLE_BITSLIP = "0" *) 
  (* XPHYIO_ENABLE_BLI = "1" *) 
  (* XPHYIO_ENABLE_CDR_DEBUG = "0" *) 
  (* XPHYIO_ENABLE_DATA_BITSLIP = "0" *) 
  (* XPHYIO_ENABLE_IOB_POWER_SAVING = "0" *) 
  (* XPHYIO_ENABLE_VREF_TUNE = "0" *) 
  (* XPHYIO_ENABLE_XPLL_DESKEW = "1" *) 
  (* XPHYIO_IOB_POWER_CONTROL = "0" *) 
  (* XPHYIO_MAX_BANKS = "3" *) 
  (* XPHYIO_MIPI_DESKEW_EN = "0" *) 
  (* XPHYIO_MIPI_TXCALIB_EN = "0" *) 
  (* XPHYIO_NIBBLE_GROUP = "@RX_GROUP_0 LVDS_706_10 LVDS_706_11 LVDS_706_12 LVDS_706_13 LVDS_706_14 LVDS_706_15 @RX_GROUP_1 LVDS_706_16 LVDS_706_17 LVDS_706_18 LVDS_706_19 LVDS_706_20 LVDS_706_21 @RX_GROUP_10 LVDS_708_16 LVDS_708_17 LVDS_708_18 LVDS_708_19 LVDS_708_20 LVDS_708_21 @RX_GROUP_11 RD_CLK_708_0 RD_CLK_708_1 LVDS_708_0 LVDS_708_1 LVDS_708_2 LVDS_708_3 @RX_GROUP_12 LVDS_708_4 LVDS_708_5 LVDS_708_6 LVDS_708_7 LVDS_708_8 LVDS_708_9 @RX_GROUP_13 LVDS_708_22 LVDS_708_23 LVDS_708_24 LVDS_708_25 LVDS_708_26 LVDS_708_27 @RX_GROUP_14 LVDS_708_28 LVDS_708_29 LVDS_708_30 LVDS_708_31 LVDS_708_32 LVDS_708_33 @RX_GROUP_15 LVDS_708_34 LVDS_708_35 LVDS_708_36 LVDS_708_37 LVDS_708_38 LVDS_708_39 @RX_GROUP_16 LVDS_708_40 LVDS_708_41 LVDS_708_42 LVDS_708_43 @RX_GROUP_17 XPLL_IN_0 XPLL_IN_1 @RX_GROUP_18 RD_CLK_707_0 RD_CLK_707_1 LVDS_707_0 LVDS_707_1 LVDS_707_2 LVDS_707_3 @RX_GROUP_19 LVDS_707_4 LVDS_707_5 LVDS_707_6 LVDS_707_7 LVDS_707_8 LVDS_707_9 @RX_GROUP_2 RD_CLK_706_0 RD_CLK_706_1 LVDS_706_0 LVDS_706_1 LVDS_706_2 LVDS_706_3 @RX_GROUP_20 LVDS_707_10 LVDS_707_11 LVDS_707_12 LVDS_707_13 LVDS_707_14 LVDS_707_15 @RX_GROUP_21 LVDS_707_16 LVDS_707_17 LVDS_707_18 LVDS_707_19 LVDS_707_20 LVDS_707_21 @RX_GROUP_22 LVDS_707_22 LVDS_707_23 LVDS_707_24 LVDS_707_25 LVDS_707_26 LVDS_707_27 @RX_GROUP_23 LVDS_707_28 LVDS_707_29 LVDS_707_30 LVDS_707_31 LVDS_707_32 LVDS_707_33 @RX_GROUP_24 {} {} LVDS_707_34 LVDS_707_35 @RX_GROUP_3 LVDS_706_4 LVDS_706_5 LVDS_706_6 LVDS_706_7 LVDS_706_8 LVDS_706_9 @RX_GROUP_4 LVDS_706_22 LVDS_706_23 LVDS_706_24 LVDS_706_25 LVDS_706_26 LVDS_706_27 @RX_GROUP_5 LVDS_706_28 LVDS_706_29 LVDS_706_30 LVDS_706_31 LVDS_706_32 LVDS_706_33 @RX_GROUP_6 LVDS_706_34 LVDS_706_35 LVDS_706_36 LVDS_706_37 LVDS_706_38 LVDS_706_39 @RX_GROUP_7 LVDS_706_40 LVDS_706_41 LVDS_706_42 LVDS_706_43 LVDS_706_44 LVDS_706_45 @RX_GROUP_8 {} {} LVDS_706_46 LVDS_706_47 @RX_GROUP_9 LVDS_708_10 LVDS_708_11 LVDS_708_12 LVDS_708_13 LVDS_708_14 LVDS_708_15" *) 
  (* XPHYIO_PIN_INFO = "BUS0_DIR RX BUS0_IO_TYPE DIFF BUS0_SIG_TYPE Data BUS0_STROBE_EN 1 BUS0_STROBE_NAME RD_CLK_706 BUS0_SIG_NAME LVDS_706 BUS0_NUM_PINS 24 BUS0_STROBE_IO_TYPE DIFF BUS0_RE_EN 0 BUS0_RE_IO_TYPE SINGLE BUS0_RE_NAME RE_0 BUS0_WRCLK_EN 0 BUS0_WRCLK_IO_TYPE SINGLE BUS0_WRCLK_NAME WrClk_0 BUS1_DIR RX BUS1_IO_TYPE DIFF BUS1_SIG_TYPE Data BUS1_STROBE_EN 1 BUS1_STROBE_NAME RD_CLK_707 BUS1_SIG_NAME LVDS_707 BUS1_NUM_PINS 18 BUS1_STROBE_IO_TYPE DIFF BUS1_RE_EN 0 BUS1_RE_IO_TYPE SINGLE BUS1_RE_NAME RE_1 BUS1_WRCLK_EN 0 BUS1_WRCLK_IO_TYPE SINGLE BUS1_WRCLK_NAME WrClk_1 BUS2_DIR RX BUS2_IO_TYPE DIFF BUS2_SIG_TYPE Data BUS2_STROBE_EN 1 BUS2_STROBE_NAME RD_CLK_708 BUS2_SIG_NAME LVDS_708 BUS2_NUM_PINS 22 BUS2_STROBE_IO_TYPE DIFF BUS2_RE_EN 0 BUS2_RE_IO_TYPE SINGLE BUS2_RE_NAME RE_2 BUS2_WRCLK_EN 0 BUS2_WRCLK_IO_TYPE SINGLE BUS2_WRCLK_NAME WrClk_2 BUS3_DIR RX BUS3_IO_TYPE DIFF BUS3_SIG_TYPE {Input Clock} BUS3_STROBE_EN 0 BUS3_STROBE_NAME Strobe_3 BUS3_SIG_NAME XPLL_IN BUS3_NUM_PINS 1 BUS3_STROBE_IO_TYPE SINGLE BUS3_RE_EN 0 BUS3_RE_IO_TYPE SINGLE BUS3_RE_NAME RE_3 BUS3_WRCLK_EN 0 BUS3_WRCLK_IO_TYPE SINGLE BUS3_WRCLK_NAME WrClk_3" *) 
  (* XPHYIO_PLL_CLK_SOURCE = "IBUF_TO_PLL" *) 
  (* XPHYIO_PLL_IN_CORE = "1" *) 
  (* XPHYIO_REDUCE_CONTROL_SIG_EN = "1" *) 
  (* XPHYIO_RX_DELAY_VALUE = "0" *) 
  (* XPHYIO_RX_SERIALIZATION_FACTOR = "4" *) 
  (* XPHYIO_SIMPLE_RIU = "0" *) 
  (* XPHYIO_SINGLE_IO_STD = "NONE" *) 
  (* XPHYIO_TEMPLATE = "None" *) 
  (* XPHYIO_TRI_SELECT = "1" *) 
  (* XPHYIO_TX_DELAY_VALUE = "0" *) 
  (* XPHYIO_TX_SERIALIZATION_FACTOR = "8" *) 
  (* X_VERSAL_IO_FLOW = "xilinx.com:ip:advanced_io_wizard_phy:1.0" *) 
  design_1_advanced_io_wizard_0_0_advanced_io_wizard_v1_0_4 inst
       (.LVDS_706_n(LVDS_706_n),
        .LVDS_706_p(LVDS_706_p),
        .LVDS_707_n(LVDS_707_n),
        .LVDS_707_p(LVDS_707_p),
        .LVDS_708_n(LVDS_708_n),
        .LVDS_708_p(LVDS_708_p),
        .RD_CLK_706_n(RD_CLK_706_n),
        .RD_CLK_706_p(RD_CLK_706_p),
        .RD_CLK_707_n(RD_CLK_707_n),
        .RD_CLK_707_p(RD_CLK_707_p),
        .RD_CLK_708_n(RD_CLK_708_n),
        .RD_CLK_708_p(RD_CLK_708_p),
        .XPLL_IN_n(XPLL_IN_n),
        .XPLL_IN_p(XPLL_IN_p),
        .acdeskew_start({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bank0_pll_clkin(1'b0),
        .bank0_pll_clkout0(bank0_pll_clkout0),
        .bank0_pll_clkout1(NLW_inst_bank0_pll_clkout1_UNCONNECTED),
        .bank0_pll_clkout2(bank0_pll_clkout2),
        .bank0_pll_clkout3(bank0_pll_clkout3),
        .bank0_pll_clkoutphy(bank0_pll_clkoutphy),
        .bank0_pll_locked(bank0_pll_locked),
        .bank0_pll_rst_pll(bank0_pll_rst_pll),
        .bank1_pll_clkin(1'b0),
        .bank1_pll_clkout0(bank1_pll_clkout0),
        .bank1_pll_clkout1(NLW_inst_bank1_pll_clkout1_UNCONNECTED),
        .bank1_pll_clkout2(bank1_pll_clkout2),
        .bank1_pll_clkout3(bank1_pll_clkout3),
        .bank1_pll_clkoutphy(bank1_pll_clkoutphy),
        .bank1_pll_locked(bank1_pll_locked),
        .bank1_pll_rst_pll(bank1_pll_rst_pll),
        .bank2_pll_clkin(1'b0),
        .bank2_pll_clkout0(bank2_pll_clkout0),
        .bank2_pll_clkout1(NLW_inst_bank2_pll_clkout1_UNCONNECTED),
        .bank2_pll_clkout2(bank2_pll_clkout2),
        .bank2_pll_clkout3(bank2_pll_clkout3),
        .bank2_pll_clkoutphy(bank2_pll_clkoutphy),
        .bank2_pll_locked(bank2_pll_locked),
        .bank2_pll_rst_pll(bank2_pll_rst_pll),
        .bitslip_sync_done(NLW_inst_bitslip_sync_done_UNCONNECTED),
        .cal_done(NLW_inst_cal_done_UNCONNECTED),
        .cal_status(NLW_inst_cal_status_UNCONNECTED),
        .ctrl_clk(ctrl_clk),
        .data2fabric({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .data_to_fabric_LVDS_706(data_to_fabric_LVDS_706),
        .data_to_fabric_LVDS_707(data_to_fabric_LVDS_707),
        .data_to_fabric_LVDS_708(data_to_fabric_LVDS_708),
        .data_to_fabric_RD_CLK_706(data_to_fabric_RD_CLK_706),
        .data_to_fabric_RD_CLK_707(data_to_fabric_RD_CLK_707),
        .data_to_fabric_RD_CLK_708(data_to_fabric_RD_CLK_708),
        .dbg_bus(NLW_inst_dbg_bus_UNCONNECTED[99:0]),
        .deskew_done(NLW_inst_deskew_done_UNCONNECTED[23:0]),
        .deskew_start({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dly_rdy(dly_rdy),
        .en_vtc(en_vtc),
        .fabric_vref_tune({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .fifo_empty(fifo_empty),
        .fifo_rd_clk(fifo_rd_clk),
        .fifo_rd_en(fifo_rd_en),
        .fifo_wr_clk(NLW_inst_fifo_wr_clk_UNCONNECTED[26:0]),
        .gearbox_clk(1'b0),
        .gt_status(NLW_inst_gt_status_UNCONNECTED[26:0]),
        .intf_rdy(intf_rdy),
        .parallel_clk(1'b0),
        .phy_rdcs0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .phy_rdcs1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .phy_rden({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .phy_rdy(phy_rdy),
        .phy_wrcs0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .phy_wrcs1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .phy_wren({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .phywren_clk({1'b0,1'b0,1'b0,1'b0}),
        .phywren_data({1'b0,1'b0,1'b0,1'b0}),
        .psdone_vio(NLW_inst_psdone_vio_UNCONNECTED),
        .psen_vio(1'b0),
        .psincdec_vio(1'b0),
        .riu_addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_clk(1'b0),
        .riu_nibble_sel({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_rd_data(NLW_inst_riu_rd_data_UNCONNECTED[431:0]),
        .riu_rd_valid(NLW_inst_riu_rd_valid_UNCONNECTED[26:0]),
        .riu_wr_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_wr_en({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rst(rst),
        .rx_app_clk(1'b0),
        .shared_bank0_pll_clkoutphy_in(1'b0),
        .shared_bank0_pll_locked_in(1'b0),
        .shared_bank1_pll_clkoutphy_in(1'b0),
        .shared_bank1_pll_locked_in(1'b0),
        .shared_bank2_pll_clkoutphy_in(1'b0),
        .shared_bank2_pll_locked_in(1'b0),
        .shared_pll_clkoutphyen_out(NLW_inst_shared_pll_clkoutphyen_out_UNCONNECTED),
        .start_bitslip(1'b0),
        .tx_app_clk(1'b0),
        .vref_id({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "advanced_io_wizard_phy_v1_0_0_bank_wrapper" *) 
module design_1_advanced_io_wizard_0_0_advanced_io_wizard_phy_v1_0_0_bank_wrapper
   (ctrl_clk_0,
    ctrl_clk_1,
    ctrl_clk_2,
    ctrl_clk_3,
    FIFO_EMPTY,
    fifo_wr_clk,
    gt_status,
    riu_rd_valid,
    riu_rd_data,
    Q,
    ctrl_clk_4,
    ctrl_clk_5,
    DLY_RDY,
    PHY_RDY,
    ctrl_clk,
    en_vtc,
    fifo_rd_en,
    fifo_rd_clk,
    bank0_pll_clkoutphy,
    riu_nibble_sel,
    riu_wr_en,
    RX_RST,
    riu_wr_data,
    phy_rdcs0,
    phy_rdcs1,
    phy_wrcs0,
    phy_wrcs1,
    riu_addr,
    IOB);
  output ctrl_clk_0;
  output ctrl_clk_1;
  output ctrl_clk_2;
  output ctrl_clk_3;
  output [8:0]FIFO_EMPTY;
  output [8:0]fifo_wr_clk;
  output [8:0]gt_status;
  output [8:0]riu_rd_valid;
  output [143:0]riu_rd_data;
  output [99:0]Q;
  output [3:0]ctrl_clk_4;
  output [3:0]ctrl_clk_5;
  input [2:0]DLY_RDY;
  input [2:0]PHY_RDY;
  input [8:0]ctrl_clk;
  input en_vtc;
  input fifo_rd_en;
  input fifo_rd_clk;
  input bank0_pll_clkoutphy;
  input [8:0]riu_nibble_sel;
  input [8:0]riu_wr_en;
  input [0:0]RX_RST;
  input [143:0]riu_wr_data;
  input [35:0]phy_rdcs0;
  input [35:0]phy_rdcs1;
  input [35:0]phy_wrcs0;
  input [35:0]phy_wrcs1;
  input [71:0]riu_addr;
  input [49:0]IOB;

  wire [6:2]CLK_TO_LOWER;
  wire [5:2]CLK_TO_UPPER;
  wire [51:0]DATAIN;
  wire [2:0]DLY_RDY;
  wire [8:0]FIFO_EMPTY;
  wire [49:0]IOB;
  wire [7:0]NCLK_NIBBLE_OUT;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_10 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_108 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_109 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_112 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_113 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_114 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_115 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_116 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_117 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_118 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_119 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_120 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_121 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_124 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_125 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_128 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_129 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_130 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_131 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_132 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_133 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_134 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_135 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_136 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_137 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_140 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_141 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_144 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_145 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_146 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_147 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_148 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_149 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_150 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_151 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_152 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_153 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_28 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_29 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_30 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_31 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_32 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_33 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_34 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_35 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_36 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_37 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_38 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_39 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_4 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_40 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_41 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_42 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_43 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_44 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_45 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_46 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_47 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_48 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_49 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_50 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_51 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_52 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_53 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_54 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_55 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_56 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_57 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_58 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_59 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_60 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_61 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_62 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_63 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_64 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_65 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_66 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_67 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_68 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_69 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_70 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_71 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_72 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_73 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_74 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_75 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_76 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_77 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_78 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_79 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_80 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_81 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_82 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_83 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_84 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_85 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_86 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_87 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_88 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_89 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_90 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_91 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_92 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_93 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_108 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_109 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_112 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_113 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_114 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_115 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_116 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_117 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_118 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_119 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_120 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_121 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_124 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_125 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_128 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_129 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_130 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_131 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_132 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_133 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_134 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_135 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_136 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_137 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_140 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_141 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_144 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_145 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_146 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_147 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_148 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_149 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_150 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_151 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_152 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_153 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_28 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_29 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_30 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_31 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_32 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_33 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_34 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_35 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_36 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_37 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_38 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_39 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_40 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_41 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_42 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_43 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_44 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_45 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_46 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_47 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_48 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_49 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_50 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_51 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_52 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_53 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_54 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_55 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_56 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_57 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_58 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_59 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_60 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_61 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_62 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_63 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_64 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_65 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_66 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_67 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_68 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_69 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_70 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_71 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_72 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_73 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_74 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_75 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_76 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_77 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_78 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_79 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_80 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_81 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_82 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_83 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_84 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_85 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_86 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_87 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_88 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_89 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_90 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_91 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_92 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_93 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_108 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_109 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_112 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_113 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_114 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_115 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_116 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_117 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_118 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_119 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_120 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_121 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_124 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_125 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_128 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_129 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_130 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_131 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_132 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_133 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_134 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_135 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_136 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_137 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_140 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_141 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_144 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_145 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_146 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_147 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_148 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_149 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_150 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_151 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_152 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_153 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_28 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_29 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_30 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_31 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_32 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_33 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_34 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_35 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_36 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_37 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_38 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_39 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_40 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_41 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_42 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_43 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_44 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_45 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_46 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_47 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_48 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_49 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_50 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_51 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_52 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_53 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_54 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_55 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_56 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_57 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_58 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_59 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_60 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_61 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_62 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_63 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_64 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_65 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_66 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_67 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_68 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_69 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_70 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_71 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_72 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_73 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_74 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_75 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_76 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_77 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_78 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_79 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_80 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_81 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_82 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_83 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_84 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_85 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_86 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_87 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_88 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_89 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_90 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_91 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_92 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_93 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_108 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_109 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_112 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_113 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_114 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_115 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_116 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_117 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_118 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_119 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_120 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_121 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_124 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_125 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_128 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_129 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_130 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_131 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_132 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_133 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_134 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_135 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_136 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_137 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_140 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_141 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_144 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_145 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_146 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_147 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_148 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_149 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_150 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_151 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_152 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_153 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_28 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_29 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_30 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_31 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_32 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_33 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_34 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_35 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_36 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_37 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_38 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_39 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_40 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_41 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_42 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_43 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_44 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_45 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_46 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_47 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_48 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_49 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_50 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_51 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_52 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_53 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_54 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_55 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_56 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_57 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_58 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_59 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_60 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_61 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_62 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_63 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_64 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_65 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_66 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_67 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_68 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_69 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_70 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_71 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_72 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_73 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_74 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_75 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_76 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_77 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_78 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_79 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_80 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_81 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_82 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_83 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_84 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_85 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_86 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_87 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_88 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_89 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_90 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_91 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_92 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_93 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_108 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_109 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_112 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_113 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_114 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_115 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_116 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_117 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_118 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_119 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_120 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_121 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_124 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_125 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_128 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_129 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_130 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_131 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_132 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_133 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_134 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_135 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_136 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_137 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_140 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_141 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_144 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_145 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_146 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_147 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_148 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_149 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_150 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_151 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_152 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_153 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_28 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_29 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_30 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_31 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_32 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_33 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_34 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_35 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_36 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_37 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_38 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_39 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_40 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_41 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_42 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_43 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_44 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_45 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_46 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_47 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_48 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_49 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_50 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_51 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_52 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_53 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_54 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_55 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_56 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_57 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_58 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_59 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_60 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_61 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_62 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_63 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_64 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_65 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_66 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_67 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_68 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_69 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_70 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_71 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_72 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_73 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_74 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_75 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_76 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_77 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_78 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_79 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_80 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_81 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_82 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_83 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_84 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_85 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_86 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_87 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_88 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_89 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_90 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_91 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_92 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_93 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_108 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_109 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_112 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_113 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_114 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_115 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_116 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_117 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_118 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_119 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_120 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_121 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_124 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_125 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_128 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_129 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_130 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_131 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_132 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_133 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_134 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_135 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_136 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_137 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_140 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_141 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_144 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_145 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_146 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_147 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_148 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_149 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_150 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_151 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_152 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_153 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_28 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_29 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_30 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_31 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_32 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_33 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_34 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_35 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_36 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_37 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_38 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_39 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_40 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_41 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_42 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_43 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_44 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_45 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_46 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_47 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_48 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_49 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_50 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_51 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_52 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_53 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_54 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_55 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_56 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_57 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_58 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_59 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_60 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_61 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_62 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_63 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_64 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_65 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_66 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_67 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_68 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_69 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_70 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_71 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_72 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_73 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_74 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_75 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_76 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_77 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_78 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_79 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_80 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_81 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_82 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_83 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_84 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_85 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_86 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_87 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_88 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_89 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_90 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_91 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_92 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_93 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_108 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_109 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_112 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_113 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_114 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_115 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_116 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_117 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_118 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_119 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_120 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_121 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_124 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_125 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_128 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_129 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_130 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_131 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_132 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_133 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_134 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_135 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_136 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_137 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_140 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_141 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_144 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_145 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_146 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_147 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_148 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_149 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_150 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_151 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_152 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_153 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_28 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_29 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_30 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_31 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_32 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_33 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_34 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_35 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_36 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_37 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_38 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_39 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_40 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_41 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_42 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_43 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_44 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_45 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_46 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_47 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_48 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_49 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_50 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_51 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_52 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_53 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_54 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_55 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_56 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_57 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_58 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_59 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_60 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_61 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_62 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_63 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_64 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_65 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_66 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_67 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_68 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_69 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_70 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_71 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_72 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_73 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_74 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_75 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_76 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_77 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_78 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_79 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_80 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_81 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_82 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_83 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_84 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_85 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_86 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_87 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_88 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_89 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_90 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_91 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_92 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_93 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_108 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_109 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_112 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_113 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_114 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_115 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_116 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_117 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_118 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_119 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_120 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_121 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_124 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_125 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_128 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_129 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_130 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_131 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_132 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_133 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_134 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_135 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_136 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_137 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_140 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_141 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_144 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_145 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_146 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_147 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_148 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_149 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_150 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_151 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_152 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_153 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_28 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_29 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_30 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_31 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_32 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_33 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_34 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_35 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_36 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_37 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_38 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_39 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_40 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_41 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_42 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_43 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_44 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_45 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_46 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_47 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_48 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_49 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_50 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_51 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_52 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_53 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_54 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_55 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_56 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_57 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_58 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_59 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_60 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_61 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_62 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_63 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_64 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_65 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_66 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_67 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_68 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_69 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_70 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_71 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_72 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_73 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_74 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_75 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_76 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_77 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_78 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_79 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_80 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_81 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_82 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_83 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_84 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_85 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_86 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_87 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_88 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_89 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_90 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_91 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_92 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_93 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_106 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_107 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_108 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_109 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_110 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_111 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_112 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_113 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_114 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_115 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_116 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_117 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_118 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_119 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_120 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_121 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_124 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_125 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_128 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_129 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_130 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_131 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_132 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_133 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_134 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_135 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_136 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_137 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_138 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_139 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_140 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_141 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_142 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_143 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_144 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_145 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_146 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_147 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_148 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_149 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_150 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_151 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_152 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_153 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_28 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_29 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_30 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_31 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_32 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_33 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_34 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_35 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_36 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_37 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_38 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_39 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_40 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_41 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_42 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_43 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_44 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_45 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_46 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_47 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_48 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_49 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_50 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_51 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_52 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_53 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_54 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_55 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_56 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_57 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_58 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_59 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_60 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_61 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_62 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_63 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_64 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_65 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_66 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_67 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_68 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_69 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_70 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_71 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_72 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_73 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_74 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_75 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_76 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_77 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_78 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_79 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_80 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_81 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_82 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_83 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_84 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_85 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_86 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_87 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_88 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_89 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_90 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_91 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_92 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_93 ;
  wire [7:0]PCLK_NIBBLE_OUT;
  wire [2:0]PHY_RDY;
  wire [99:0]Q;
  wire [0:0]RX_RST;
  wire bank0_pll_clkoutphy;
  wire [8:0]bisc_start_wire;
  wire [7:0]bisc_stop_in;
  wire [8:0]ctrl_clk;
  wire ctrl_clk_0;
  wire ctrl_clk_1;
  wire ctrl_clk_2;
  wire ctrl_clk_3;
  wire [3:0]ctrl_clk_4;
  wire [3:0]ctrl_clk_5;
  wire en_vtc;
  wire fifo_rd_clk;
  wire fifo_rd_en;
  wire [8:0]fifo_wr_clk;
  wire [8:0]gt_status;
  wire p_15_in;
  wire p_15_in17_in;
  wire p_16_in;
  wire p_16_in18_in;
  wire p_17_in;
  wire p_17_in19_in;
  wire p_20_in;
  wire p_20_in22_in;
  wire [35:0]phy_rdcs0;
  wire [35:0]phy_rdcs1;
  wire [35:0]phy_wrcs0;
  wire [35:0]phy_wrcs1;
  wire [71:0]riu_addr;
  wire [8:0]riu_nibble_sel;
  wire [143:0]riu_rd_data;
  wire [8:0]riu_rd_valid;
  wire [143:0]riu_wr_data;
  wire [8:0]riu_wr_en;
  wire \NLW_NIBBLE[0].UNISIM.I_XPHY_CLK_TO_LOWER_UNCONNECTED ;
  wire \NLW_NIBBLE[0].UNISIM.I_XPHY_CLK_TO_UPPER_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[0].UNISIM.I_XPHY_O0_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[0].UNISIM.I_XPHY_T_OUT_UNCONNECTED ;
  wire \NLW_NIBBLE[1].UNISIM.I_XPHY_CLK_TO_LOWER_UNCONNECTED ;
  wire \NLW_NIBBLE[1].UNISIM.I_XPHY_CLK_TO_UPPER_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[1].UNISIM.I_XPHY_O0_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[1].UNISIM.I_XPHY_T_OUT_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[2].UNISIM.I_XPHY_O0_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[2].UNISIM.I_XPHY_T_OUT_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[3].UNISIM.I_XPHY_O0_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[3].UNISIM.I_XPHY_T_OUT_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[4].UNISIM.I_XPHY_O0_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[4].UNISIM.I_XPHY_T_OUT_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[5].UNISIM.I_XPHY_O0_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[5].UNISIM.I_XPHY_T_OUT_UNCONNECTED ;
  wire \NLW_NIBBLE[6].UNISIM.I_XPHY_CLK_TO_UPPER_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[6].UNISIM.I_XPHY_O0_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[6].UNISIM.I_XPHY_T_OUT_UNCONNECTED ;
  wire \NLW_NIBBLE[7].UNISIM.I_XPHY_CLK_TO_LOWER_UNCONNECTED ;
  wire \NLW_NIBBLE[7].UNISIM.I_XPHY_CLK_TO_UPPER_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[7].UNISIM.I_XPHY_O0_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[7].UNISIM.I_XPHY_T_OUT_UNCONNECTED ;
  wire \NLW_NIBBLE[8].UNISIM.I_XPHY_BISC_START_OUT_UNCONNECTED ;
  wire \NLW_NIBBLE[8].UNISIM.I_XPHY_CLK_TO_LOWER_UNCONNECTED ;
  wire \NLW_NIBBLE[8].UNISIM.I_XPHY_CLK_TO_UPPER_UNCONNECTED ;
  wire \NLW_NIBBLE[8].UNISIM.I_XPHY_NCLK_NIBBLE_OUT_UNCONNECTED ;
  wire \NLW_NIBBLE[8].UNISIM.I_XPHY_PCLK_NIBBLE_OUT_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[8].UNISIM.I_XPHY_DATAIN_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[8].UNISIM.I_XPHY_O0_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[8].UNISIM.I_XPHY_T_OUT_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[0].I_IBUFDS_DIFF_OUT 
       (.I(IOB[0]),
        .IB(IOB[1]),
        .O(DATAIN[0]),
        .OB(DATAIN[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[10].I_IBUFDS_DIFF_OUT 
       (.I(IOB[10]),
        .IB(IOB[11]),
        .O(DATAIN[10]),
        .OB(DATAIN[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[12].I_IBUFDS_DIFF_OUT 
       (.I(IOB[12]),
        .IB(IOB[13]),
        .O(DATAIN[12]),
        .OB(DATAIN[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[14].I_IBUFDS_DIFF_OUT 
       (.I(IOB[14]),
        .IB(IOB[15]),
        .O(DATAIN[14]),
        .OB(DATAIN[15]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[16].I_IBUFDS_DIFF_OUT 
       (.I(IOB[16]),
        .IB(IOB[17]),
        .O(DATAIN[16]),
        .OB(DATAIN[17]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[18].I_IBUFDS_DIFF_OUT 
       (.I(IOB[18]),
        .IB(IOB[19]),
        .O(DATAIN[18]),
        .OB(DATAIN[19]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[20].I_IBUFDS_DIFF_OUT 
       (.I(IOB[20]),
        .IB(IOB[21]),
        .O(DATAIN[20]),
        .OB(DATAIN[21]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[22].I_IBUFDS_DIFF_OUT 
       (.I(IOB[22]),
        .IB(IOB[23]),
        .O(DATAIN[22]),
        .OB(DATAIN[23]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[24].I_IBUFDS_DIFF_OUT 
       (.I(IOB[24]),
        .IB(IOB[25]),
        .O(DATAIN[24]),
        .OB(DATAIN[25]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[26].I_IBUFDS_DIFF_OUT 
       (.I(IOB[26]),
        .IB(IOB[27]),
        .O(DATAIN[26]),
        .OB(DATAIN[27]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[28].I_IBUFDS_DIFF_OUT 
       (.I(IOB[28]),
        .IB(IOB[29]),
        .O(DATAIN[28]),
        .OB(DATAIN[29]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[2].I_IBUFDS_DIFF_OUT 
       (.I(IOB[2]),
        .IB(IOB[3]),
        .O(DATAIN[2]),
        .OB(DATAIN[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[30].I_IBUFDS_DIFF_OUT 
       (.I(IOB[30]),
        .IB(IOB[31]),
        .O(DATAIN[30]),
        .OB(DATAIN[31]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[32].I_IBUFDS_DIFF_OUT 
       (.I(IOB[32]),
        .IB(IOB[33]),
        .O(DATAIN[32]),
        .OB(DATAIN[33]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[34].I_IBUFDS_DIFF_OUT 
       (.I(IOB[34]),
        .IB(IOB[35]),
        .O(DATAIN[34]),
        .OB(DATAIN[35]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[36].I_IBUFDS_DIFF_OUT 
       (.I(IOB[36]),
        .IB(IOB[37]),
        .O(DATAIN[36]),
        .OB(DATAIN[37]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[38].I_IBUFDS_DIFF_OUT 
       (.I(IOB[38]),
        .IB(IOB[39]),
        .O(DATAIN[38]),
        .OB(DATAIN[39]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[40].I_IBUFDS_DIFF_OUT 
       (.I(IOB[40]),
        .IB(IOB[41]),
        .O(DATAIN[40]),
        .OB(DATAIN[41]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[42].I_IBUFDS_DIFF_OUT 
       (.I(IOB[42]),
        .IB(IOB[43]),
        .O(DATAIN[42]),
        .OB(DATAIN[43]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[44].I_IBUFDS_DIFF_OUT 
       (.I(IOB[44]),
        .IB(IOB[45]),
        .O(DATAIN[44]),
        .OB(DATAIN[45]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[46].I_IBUFDS_DIFF_OUT 
       (.I(IOB[46]),
        .IB(IOB[47]),
        .O(DATAIN[46]),
        .OB(DATAIN[47]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[4].I_IBUFDS_DIFF_OUT 
       (.I(IOB[4]),
        .IB(IOB[5]),
        .O(DATAIN[4]),
        .OB(DATAIN[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[50].I_IBUFDS_DIFF_OUT 
       (.I(IOB[48]),
        .IB(IOB[49]),
        .O(DATAIN[50]),
        .OB(DATAIN[51]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[6].I_IBUFDS_DIFF_OUT 
       (.I(IOB[6]),
        .IB(IOB[7]),
        .O(DATAIN[6]),
        .OB(DATAIN[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[8].I_IBUFDS_DIFF_OUT 
       (.I(IOB[8]),
        .IB(IOB[9]),
        .O(DATAIN[8]),
        .OB(DATAIN[9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  XPHY #(
    .CASCADE_0("FALSE"),
    .CASCADE_1("FALSE"),
    .CASCADE_2("FALSE"),
    .CASCADE_3("FALSE"),
    .CASCADE_4("FALSE"),
    .CASCADE_5("FALSE"),
    .CONTINUOUS_DQS("FALSE"),
    .CRSE_DLY_EN("TRUE"),
    .DELAY_VALUE_0(0),
    .DELAY_VALUE_1(0),
    .DELAY_VALUE_2(0),
    .DELAY_VALUE_3(0),
    .DELAY_VALUE_4(0),
    .DELAY_VALUE_5(0),
    .DIS_IDLY_VT_TRACK("FALSE"),
    .DIS_ODLY_VT_TRACK("FALSE"),
    .DIS_QDLY_VT_TRACK("FALSE"),
    .DQS_MODE("DDR4_1TCK"),
    .DQS_SRC("EXTERN"),
    .EN_CLK_TO_LOWER("DISABLE"),
    .EN_CLK_TO_UPPER("DISABLE"),
    .EN_DYN_DLY_MODE("FALSE"),
    .EN_OTHER_NCLK("FALSE"),
    .EN_OTHER_PCLK("FALSE"),
    .FAST_CK("FALSE"),
    .FIFO_MODE_0("ASYNC"),
    .FIFO_MODE_1("ASYNC"),
    .FIFO_MODE_2("ASYNC"),
    .FIFO_MODE_3("ASYNC"),
    .FIFO_MODE_4("ASYNC"),
    .FIFO_MODE_5("ASYNC"),
    .IBUF_DIS_SRC_0("EXTERNAL"),
    .IBUF_DIS_SRC_1("EXTERNAL"),
    .IBUF_DIS_SRC_2("EXTERNAL"),
    .IBUF_DIS_SRC_3("EXTERNAL"),
    .IBUF_DIS_SRC_4("EXTERNAL"),
    .IBUF_DIS_SRC_5("EXTERNAL"),
    .INV_RXCLK("FALSE"),
    .LP4_DQS("FALSE"),
    .ODELAY_BYPASS_0("FALSE"),
    .ODELAY_BYPASS_1("FALSE"),
    .ODELAY_BYPASS_2("FALSE"),
    .ODELAY_BYPASS_3("FALSE"),
    .ODELAY_BYPASS_4("FALSE"),
    .ODELAY_BYPASS_5("FALSE"),
    .ODT_SRC_0("EXTERNAL"),
    .ODT_SRC_1("EXTERNAL"),
    .ODT_SRC_2("EXTERNAL"),
    .ODT_SRC_3("EXTERNAL"),
    .ODT_SRC_4("EXTERNAL"),
    .ODT_SRC_5("EXTERNAL"),
    .PRIME_VAL(1'b0),
    .REFCLK_FREQUENCY(1000.000000),
    .RX_CLK_PHASE_N("SHIFT_90"),
    .RX_CLK_PHASE_P("SHIFT_90"),
    .RX_DATA_WIDTH(4),
    .RX_GATING("DISABLE"),
    .SELF_CALIBRATE("ENABLE"),
    .SERIAL_MODE("FALSE"),
    .TBYTE_CTL_0("T"),
    .TBYTE_CTL_1("T"),
    .TBYTE_CTL_2("T"),
    .TBYTE_CTL_3("T"),
    .TBYTE_CTL_4("T"),
    .TBYTE_CTL_5("T"),
    .TXRX_LOOPBACK_0("FALSE"),
    .TXRX_LOOPBACK_1("FALSE"),
    .TXRX_LOOPBACK_2("FALSE"),
    .TXRX_LOOPBACK_3("FALSE"),
    .TXRX_LOOPBACK_4("FALSE"),
    .TXRX_LOOPBACK_5("FALSE"),
    .TX_DATA_WIDTH(8),
    .TX_GATING("DISABLE"),
    .TX_INIT_0(1'b0),
    .TX_INIT_1(1'b0),
    .TX_INIT_2(1'b0),
    .TX_INIT_3(1'b0),
    .TX_INIT_4(1'b0),
    .TX_INIT_5(1'b0),
    .TX_INIT_TRI(1'b1),
    .TX_OUTPUT_PHASE_90_0("FALSE"),
    .TX_OUTPUT_PHASE_90_1("FALSE"),
    .TX_OUTPUT_PHASE_90_2("FALSE"),
    .TX_OUTPUT_PHASE_90_3("FALSE"),
    .TX_OUTPUT_PHASE_90_4("FALSE"),
    .TX_OUTPUT_PHASE_90_5("FALSE"),
    .TX_OUTPUT_PHASE_90_TRI("FALSE"),
    .WRITE_LEVELING("FALSE")) 
    \NIBBLE[0].UNISIM.I_XPHY 
       (.BISC_START_IN(bisc_start_wire[0]),
        .BISC_START_OUT(bisc_start_wire[1]),
        .BISC_STOP_IN(bisc_stop_in[0]),
        .BISC_STOP_OUT(bisc_start_wire[0]),
        .CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLK_FROM_OTHER_XPHY(CLK_TO_LOWER[2]),
        .CLK_TO_LOWER(\NLW_NIBBLE[0].UNISIM.I_XPHY_CLK_TO_LOWER_UNCONNECTED ),
        .CLK_TO_UPPER(\NLW_NIBBLE[0].UNISIM.I_XPHY_CLK_TO_UPPER_UNCONNECTED ),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT({\NIBBLE[0].UNISIM.I_XPHY_n_28 ,\NIBBLE[0].UNISIM.I_XPHY_n_29 ,\NIBBLE[0].UNISIM.I_XPHY_n_30 ,\NIBBLE[0].UNISIM.I_XPHY_n_31 ,\NIBBLE[0].UNISIM.I_XPHY_n_32 ,\NIBBLE[0].UNISIM.I_XPHY_n_33 ,\NIBBLE[0].UNISIM.I_XPHY_n_34 ,\NIBBLE[0].UNISIM.I_XPHY_n_35 ,\NIBBLE[0].UNISIM.I_XPHY_n_36 ,\NIBBLE[0].UNISIM.I_XPHY_n_37 ,\NIBBLE[0].UNISIM.I_XPHY_n_38 ,\NIBBLE[0].UNISIM.I_XPHY_n_39 ,\NIBBLE[0].UNISIM.I_XPHY_n_40 ,\NIBBLE[0].UNISIM.I_XPHY_n_41 ,\NIBBLE[0].UNISIM.I_XPHY_n_42 ,\NIBBLE[0].UNISIM.I_XPHY_n_43 ,\NIBBLE[0].UNISIM.I_XPHY_n_44 ,\NIBBLE[0].UNISIM.I_XPHY_n_45 ,\NIBBLE[0].UNISIM.I_XPHY_n_46 ,\NIBBLE[0].UNISIM.I_XPHY_n_47 ,\NIBBLE[0].UNISIM.I_XPHY_n_48 ,\NIBBLE[0].UNISIM.I_XPHY_n_49 ,\NIBBLE[0].UNISIM.I_XPHY_n_50 ,\NIBBLE[0].UNISIM.I_XPHY_n_51 ,\NIBBLE[0].UNISIM.I_XPHY_n_52 ,\NIBBLE[0].UNISIM.I_XPHY_n_53 ,\NIBBLE[0].UNISIM.I_XPHY_n_54 ,\NIBBLE[0].UNISIM.I_XPHY_n_55 ,\NIBBLE[0].UNISIM.I_XPHY_n_56 ,\NIBBLE[0].UNISIM.I_XPHY_n_57 ,\NIBBLE[0].UNISIM.I_XPHY_n_58 ,\NIBBLE[0].UNISIM.I_XPHY_n_59 ,\NIBBLE[0].UNISIM.I_XPHY_n_60 ,\NIBBLE[0].UNISIM.I_XPHY_n_61 ,\NIBBLE[0].UNISIM.I_XPHY_n_62 ,\NIBBLE[0].UNISIM.I_XPHY_n_63 ,\NIBBLE[0].UNISIM.I_XPHY_n_64 ,\NIBBLE[0].UNISIM.I_XPHY_n_65 ,\NIBBLE[0].UNISIM.I_XPHY_n_66 ,\NIBBLE[0].UNISIM.I_XPHY_n_67 ,\NIBBLE[0].UNISIM.I_XPHY_n_68 ,\NIBBLE[0].UNISIM.I_XPHY_n_69 ,\NIBBLE[0].UNISIM.I_XPHY_n_70 ,\NIBBLE[0].UNISIM.I_XPHY_n_71 ,\NIBBLE[0].UNISIM.I_XPHY_n_72 ,\NIBBLE[0].UNISIM.I_XPHY_n_73 ,\NIBBLE[0].UNISIM.I_XPHY_n_74 ,\NIBBLE[0].UNISIM.I_XPHY_n_75 ,\NIBBLE[0].UNISIM.I_XPHY_n_76 ,\NIBBLE[0].UNISIM.I_XPHY_n_77 ,\NIBBLE[0].UNISIM.I_XPHY_n_78 ,\NIBBLE[0].UNISIM.I_XPHY_n_79 ,\NIBBLE[0].UNISIM.I_XPHY_n_80 ,\NIBBLE[0].UNISIM.I_XPHY_n_81 }),
        .CTRL_CLK(ctrl_clk[0]),
        .D0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DATAIN(DATAIN[5:0]),
        .DLY_RDY(\NIBBLE[0].UNISIM.I_XPHY_n_4 ),
        .DYN_DCI({\NIBBLE[0].UNISIM.I_XPHY_n_82 ,\NIBBLE[0].UNISIM.I_XPHY_n_83 ,\NIBBLE[0].UNISIM.I_XPHY_n_84 ,\NIBBLE[0].UNISIM.I_XPHY_n_85 ,\NIBBLE[0].UNISIM.I_XPHY_n_86 ,\NIBBLE[0].UNISIM.I_XPHY_n_87 }),
        .EN_VTC(en_vtc),
        .FIFO_EMPTY(FIFO_EMPTY[0]),
        .FIFO_RDEN(fifo_rd_en),
        .FIFO_RD_CLK(fifo_rd_clk),
        .FIFO_WR_CLK(fifo_wr_clk[0]),
        .GT_STATUS(gt_status[0]),
        .IBUF_DISABLE({\NIBBLE[0].UNISIM.I_XPHY_n_88 ,\NIBBLE[0].UNISIM.I_XPHY_n_89 ,\NIBBLE[0].UNISIM.I_XPHY_n_90 ,\NIBBLE[0].UNISIM.I_XPHY_n_91 ,\NIBBLE[0].UNISIM.I_XPHY_n_92 ,\NIBBLE[0].UNISIM.I_XPHY_n_93 }),
        .INC({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NCLK_NIBBLE_IN(NCLK_NIBBLE_OUT[1]),
        .NCLK_NIBBLE_OUT(NCLK_NIBBLE_OUT[0]),
        .O0(\NLW_NIBBLE[0].UNISIM.I_XPHY_O0_UNCONNECTED [5:0]),
        .PCLK_NIBBLE_IN(PCLK_NIBBLE_OUT[1]),
        .PCLK_NIBBLE_OUT(PCLK_NIBBLE_OUT[0]),
        .PHY_RDCS0(phy_rdcs0[3:0]),
        .PHY_RDCS1(phy_rdcs1[3:0]),
        .PHY_RDEN({1'b0,1'b0,1'b0,1'b0}),
        .PHY_RDY(\NIBBLE[0].UNISIM.I_XPHY_n_10 ),
        .PHY_WRCS0(phy_wrcs0[3:0]),
        .PHY_WRCS1(phy_wrcs1[3:0]),
        .PHY_WREN({1'b0,1'b0,1'b0,1'b0}),
        .PLL_CLK(bank0_pll_clkoutphy),
        .Q0({Q[2],Q[0],\NIBBLE[0].UNISIM.I_XPHY_n_108 ,\NIBBLE[0].UNISIM.I_XPHY_n_109 ,Q[3],Q[1],\NIBBLE[0].UNISIM.I_XPHY_n_112 ,\NIBBLE[0].UNISIM.I_XPHY_n_113 }),
        .Q1({\NIBBLE[0].UNISIM.I_XPHY_n_114 ,\NIBBLE[0].UNISIM.I_XPHY_n_115 ,\NIBBLE[0].UNISIM.I_XPHY_n_116 ,\NIBBLE[0].UNISIM.I_XPHY_n_117 ,\NIBBLE[0].UNISIM.I_XPHY_n_118 ,\NIBBLE[0].UNISIM.I_XPHY_n_119 ,\NIBBLE[0].UNISIM.I_XPHY_n_120 ,\NIBBLE[0].UNISIM.I_XPHY_n_121 }),
        .Q2({Q[6],Q[4],\NIBBLE[0].UNISIM.I_XPHY_n_124 ,\NIBBLE[0].UNISIM.I_XPHY_n_125 ,Q[7],Q[5],\NIBBLE[0].UNISIM.I_XPHY_n_128 ,\NIBBLE[0].UNISIM.I_XPHY_n_129 }),
        .Q3({\NIBBLE[0].UNISIM.I_XPHY_n_130 ,\NIBBLE[0].UNISIM.I_XPHY_n_131 ,\NIBBLE[0].UNISIM.I_XPHY_n_132 ,\NIBBLE[0].UNISIM.I_XPHY_n_133 ,\NIBBLE[0].UNISIM.I_XPHY_n_134 ,\NIBBLE[0].UNISIM.I_XPHY_n_135 ,\NIBBLE[0].UNISIM.I_XPHY_n_136 ,\NIBBLE[0].UNISIM.I_XPHY_n_137 }),
        .Q4({Q[10],Q[8],\NIBBLE[0].UNISIM.I_XPHY_n_140 ,\NIBBLE[0].UNISIM.I_XPHY_n_141 ,Q[11],Q[9],\NIBBLE[0].UNISIM.I_XPHY_n_144 ,\NIBBLE[0].UNISIM.I_XPHY_n_145 }),
        .Q5({\NIBBLE[0].UNISIM.I_XPHY_n_146 ,\NIBBLE[0].UNISIM.I_XPHY_n_147 ,\NIBBLE[0].UNISIM.I_XPHY_n_148 ,\NIBBLE[0].UNISIM.I_XPHY_n_149 ,\NIBBLE[0].UNISIM.I_XPHY_n_150 ,\NIBBLE[0].UNISIM.I_XPHY_n_151 ,\NIBBLE[0].UNISIM.I_XPHY_n_152 ,\NIBBLE[0].UNISIM.I_XPHY_n_153 }),
        .RIU_ADDR(riu_addr[7:0]),
        .RIU_NIBBLE_SEL(riu_nibble_sel[0]),
        .RIU_RD_DATA(riu_rd_data[15:0]),
        .RIU_RD_VALID(riu_rd_valid[0]),
        .RIU_WR_DATA(riu_wr_data[15:0]),
        .RIU_WR_EN(riu_wr_en[0]),
        .RST(RX_RST),
        .RXTX_SEL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .RX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T_OUT(\NLW_NIBBLE[0].UNISIM.I_XPHY_T_OUT_UNCONNECTED [5:0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  XPHY #(
    .CASCADE_0("FALSE"),
    .CASCADE_1("FALSE"),
    .CASCADE_2("FALSE"),
    .CASCADE_3("FALSE"),
    .CASCADE_4("FALSE"),
    .CASCADE_5("FALSE"),
    .CONTINUOUS_DQS("FALSE"),
    .CRSE_DLY_EN("TRUE"),
    .DELAY_VALUE_0(0),
    .DELAY_VALUE_1(0),
    .DELAY_VALUE_2(0),
    .DELAY_VALUE_3(0),
    .DELAY_VALUE_4(0),
    .DELAY_VALUE_5(0),
    .DIS_IDLY_VT_TRACK("FALSE"),
    .DIS_ODLY_VT_TRACK("FALSE"),
    .DIS_QDLY_VT_TRACK("FALSE"),
    .DQS_MODE("DDR4_1TCK"),
    .DQS_SRC("EXTERN"),
    .EN_CLK_TO_LOWER("DISABLE"),
    .EN_CLK_TO_UPPER("DISABLE"),
    .EN_DYN_DLY_MODE("FALSE"),
    .EN_OTHER_NCLK("TRUE"),
    .EN_OTHER_PCLK("TRUE"),
    .FAST_CK("FALSE"),
    .FIFO_MODE_0("ASYNC"),
    .FIFO_MODE_1("ASYNC"),
    .FIFO_MODE_2("ASYNC"),
    .FIFO_MODE_3("ASYNC"),
    .FIFO_MODE_4("ASYNC"),
    .FIFO_MODE_5("ASYNC"),
    .IBUF_DIS_SRC_0("EXTERNAL"),
    .IBUF_DIS_SRC_1("EXTERNAL"),
    .IBUF_DIS_SRC_2("EXTERNAL"),
    .IBUF_DIS_SRC_3("EXTERNAL"),
    .IBUF_DIS_SRC_4("EXTERNAL"),
    .IBUF_DIS_SRC_5("EXTERNAL"),
    .INV_RXCLK("FALSE"),
    .LP4_DQS("FALSE"),
    .ODELAY_BYPASS_0("FALSE"),
    .ODELAY_BYPASS_1("FALSE"),
    .ODELAY_BYPASS_2("FALSE"),
    .ODELAY_BYPASS_3("FALSE"),
    .ODELAY_BYPASS_4("FALSE"),
    .ODELAY_BYPASS_5("FALSE"),
    .ODT_SRC_0("EXTERNAL"),
    .ODT_SRC_1("EXTERNAL"),
    .ODT_SRC_2("EXTERNAL"),
    .ODT_SRC_3("EXTERNAL"),
    .ODT_SRC_4("EXTERNAL"),
    .ODT_SRC_5("EXTERNAL"),
    .PRIME_VAL(1'b0),
    .REFCLK_FREQUENCY(1000.000000),
    .RX_CLK_PHASE_N("SHIFT_90"),
    .RX_CLK_PHASE_P("SHIFT_90"),
    .RX_DATA_WIDTH(4),
    .RX_GATING("DISABLE"),
    .SELF_CALIBRATE("ENABLE"),
    .SERIAL_MODE("FALSE"),
    .TBYTE_CTL_0("T"),
    .TBYTE_CTL_1("T"),
    .TBYTE_CTL_2("T"),
    .TBYTE_CTL_3("T"),
    .TBYTE_CTL_4("T"),
    .TBYTE_CTL_5("T"),
    .TXRX_LOOPBACK_0("FALSE"),
    .TXRX_LOOPBACK_1("FALSE"),
    .TXRX_LOOPBACK_2("FALSE"),
    .TXRX_LOOPBACK_3("FALSE"),
    .TXRX_LOOPBACK_4("FALSE"),
    .TXRX_LOOPBACK_5("FALSE"),
    .TX_DATA_WIDTH(8),
    .TX_GATING("DISABLE"),
    .TX_INIT_0(1'b0),
    .TX_INIT_1(1'b0),
    .TX_INIT_2(1'b0),
    .TX_INIT_3(1'b0),
    .TX_INIT_4(1'b0),
    .TX_INIT_5(1'b0),
    .TX_INIT_TRI(1'b1),
    .TX_OUTPUT_PHASE_90_0("FALSE"),
    .TX_OUTPUT_PHASE_90_1("FALSE"),
    .TX_OUTPUT_PHASE_90_2("FALSE"),
    .TX_OUTPUT_PHASE_90_3("FALSE"),
    .TX_OUTPUT_PHASE_90_4("FALSE"),
    .TX_OUTPUT_PHASE_90_5("FALSE"),
    .TX_OUTPUT_PHASE_90_TRI("FALSE"),
    .WRITE_LEVELING("FALSE")) 
    \NIBBLE[1].UNISIM.I_XPHY 
       (.BISC_START_IN(bisc_start_wire[1]),
        .BISC_START_OUT(bisc_start_wire[2]),
        .BISC_STOP_IN(bisc_stop_in[1]),
        .BISC_STOP_OUT(bisc_stop_in[0]),
        .CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLK_FROM_OTHER_XPHY(CLK_TO_LOWER[3]),
        .CLK_TO_LOWER(\NLW_NIBBLE[1].UNISIM.I_XPHY_CLK_TO_LOWER_UNCONNECTED ),
        .CLK_TO_UPPER(\NLW_NIBBLE[1].UNISIM.I_XPHY_CLK_TO_UPPER_UNCONNECTED ),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT({\NIBBLE[1].UNISIM.I_XPHY_n_28 ,\NIBBLE[1].UNISIM.I_XPHY_n_29 ,\NIBBLE[1].UNISIM.I_XPHY_n_30 ,\NIBBLE[1].UNISIM.I_XPHY_n_31 ,\NIBBLE[1].UNISIM.I_XPHY_n_32 ,\NIBBLE[1].UNISIM.I_XPHY_n_33 ,\NIBBLE[1].UNISIM.I_XPHY_n_34 ,\NIBBLE[1].UNISIM.I_XPHY_n_35 ,\NIBBLE[1].UNISIM.I_XPHY_n_36 ,\NIBBLE[1].UNISIM.I_XPHY_n_37 ,\NIBBLE[1].UNISIM.I_XPHY_n_38 ,\NIBBLE[1].UNISIM.I_XPHY_n_39 ,\NIBBLE[1].UNISIM.I_XPHY_n_40 ,\NIBBLE[1].UNISIM.I_XPHY_n_41 ,\NIBBLE[1].UNISIM.I_XPHY_n_42 ,\NIBBLE[1].UNISIM.I_XPHY_n_43 ,\NIBBLE[1].UNISIM.I_XPHY_n_44 ,\NIBBLE[1].UNISIM.I_XPHY_n_45 ,\NIBBLE[1].UNISIM.I_XPHY_n_46 ,\NIBBLE[1].UNISIM.I_XPHY_n_47 ,\NIBBLE[1].UNISIM.I_XPHY_n_48 ,\NIBBLE[1].UNISIM.I_XPHY_n_49 ,\NIBBLE[1].UNISIM.I_XPHY_n_50 ,\NIBBLE[1].UNISIM.I_XPHY_n_51 ,\NIBBLE[1].UNISIM.I_XPHY_n_52 ,\NIBBLE[1].UNISIM.I_XPHY_n_53 ,\NIBBLE[1].UNISIM.I_XPHY_n_54 ,\NIBBLE[1].UNISIM.I_XPHY_n_55 ,\NIBBLE[1].UNISIM.I_XPHY_n_56 ,\NIBBLE[1].UNISIM.I_XPHY_n_57 ,\NIBBLE[1].UNISIM.I_XPHY_n_58 ,\NIBBLE[1].UNISIM.I_XPHY_n_59 ,\NIBBLE[1].UNISIM.I_XPHY_n_60 ,\NIBBLE[1].UNISIM.I_XPHY_n_61 ,\NIBBLE[1].UNISIM.I_XPHY_n_62 ,\NIBBLE[1].UNISIM.I_XPHY_n_63 ,\NIBBLE[1].UNISIM.I_XPHY_n_64 ,\NIBBLE[1].UNISIM.I_XPHY_n_65 ,\NIBBLE[1].UNISIM.I_XPHY_n_66 ,\NIBBLE[1].UNISIM.I_XPHY_n_67 ,\NIBBLE[1].UNISIM.I_XPHY_n_68 ,\NIBBLE[1].UNISIM.I_XPHY_n_69 ,\NIBBLE[1].UNISIM.I_XPHY_n_70 ,\NIBBLE[1].UNISIM.I_XPHY_n_71 ,\NIBBLE[1].UNISIM.I_XPHY_n_72 ,\NIBBLE[1].UNISIM.I_XPHY_n_73 ,\NIBBLE[1].UNISIM.I_XPHY_n_74 ,\NIBBLE[1].UNISIM.I_XPHY_n_75 ,\NIBBLE[1].UNISIM.I_XPHY_n_76 ,\NIBBLE[1].UNISIM.I_XPHY_n_77 ,\NIBBLE[1].UNISIM.I_XPHY_n_78 ,\NIBBLE[1].UNISIM.I_XPHY_n_79 ,\NIBBLE[1].UNISIM.I_XPHY_n_80 ,\NIBBLE[1].UNISIM.I_XPHY_n_81 }),
        .CTRL_CLK(ctrl_clk[1]),
        .D0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DATAIN(DATAIN[11:6]),
        .DLY_RDY(ctrl_clk_4[0]),
        .DYN_DCI({\NIBBLE[1].UNISIM.I_XPHY_n_82 ,\NIBBLE[1].UNISIM.I_XPHY_n_83 ,\NIBBLE[1].UNISIM.I_XPHY_n_84 ,\NIBBLE[1].UNISIM.I_XPHY_n_85 ,\NIBBLE[1].UNISIM.I_XPHY_n_86 ,\NIBBLE[1].UNISIM.I_XPHY_n_87 }),
        .EN_VTC(en_vtc),
        .FIFO_EMPTY(FIFO_EMPTY[1]),
        .FIFO_RDEN(fifo_rd_en),
        .FIFO_RD_CLK(fifo_rd_clk),
        .FIFO_WR_CLK(fifo_wr_clk[1]),
        .GT_STATUS(gt_status[1]),
        .IBUF_DISABLE({\NIBBLE[1].UNISIM.I_XPHY_n_88 ,\NIBBLE[1].UNISIM.I_XPHY_n_89 ,\NIBBLE[1].UNISIM.I_XPHY_n_90 ,\NIBBLE[1].UNISIM.I_XPHY_n_91 ,\NIBBLE[1].UNISIM.I_XPHY_n_92 ,\NIBBLE[1].UNISIM.I_XPHY_n_93 }),
        .INC({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NCLK_NIBBLE_IN(NCLK_NIBBLE_OUT[0]),
        .NCLK_NIBBLE_OUT(NCLK_NIBBLE_OUT[1]),
        .O0(\NLW_NIBBLE[1].UNISIM.I_XPHY_O0_UNCONNECTED [5:0]),
        .PCLK_NIBBLE_IN(PCLK_NIBBLE_OUT[0]),
        .PCLK_NIBBLE_OUT(PCLK_NIBBLE_OUT[1]),
        .PHY_RDCS0(phy_rdcs0[7:4]),
        .PHY_RDCS1(phy_rdcs1[7:4]),
        .PHY_RDEN({1'b0,1'b0,1'b0,1'b0}),
        .PHY_RDY(ctrl_clk_5[0]),
        .PHY_WRCS0(phy_wrcs0[7:4]),
        .PHY_WRCS1(phy_wrcs1[7:4]),
        .PHY_WREN({1'b0,1'b0,1'b0,1'b0}),
        .PLL_CLK(bank0_pll_clkoutphy),
        .Q0({Q[14],Q[12],\NIBBLE[1].UNISIM.I_XPHY_n_108 ,\NIBBLE[1].UNISIM.I_XPHY_n_109 ,Q[15],Q[13],\NIBBLE[1].UNISIM.I_XPHY_n_112 ,\NIBBLE[1].UNISIM.I_XPHY_n_113 }),
        .Q1({\NIBBLE[1].UNISIM.I_XPHY_n_114 ,\NIBBLE[1].UNISIM.I_XPHY_n_115 ,\NIBBLE[1].UNISIM.I_XPHY_n_116 ,\NIBBLE[1].UNISIM.I_XPHY_n_117 ,\NIBBLE[1].UNISIM.I_XPHY_n_118 ,\NIBBLE[1].UNISIM.I_XPHY_n_119 ,\NIBBLE[1].UNISIM.I_XPHY_n_120 ,\NIBBLE[1].UNISIM.I_XPHY_n_121 }),
        .Q2({Q[18],Q[16],\NIBBLE[1].UNISIM.I_XPHY_n_124 ,\NIBBLE[1].UNISIM.I_XPHY_n_125 ,Q[19],Q[17],\NIBBLE[1].UNISIM.I_XPHY_n_128 ,\NIBBLE[1].UNISIM.I_XPHY_n_129 }),
        .Q3({\NIBBLE[1].UNISIM.I_XPHY_n_130 ,\NIBBLE[1].UNISIM.I_XPHY_n_131 ,\NIBBLE[1].UNISIM.I_XPHY_n_132 ,\NIBBLE[1].UNISIM.I_XPHY_n_133 ,\NIBBLE[1].UNISIM.I_XPHY_n_134 ,\NIBBLE[1].UNISIM.I_XPHY_n_135 ,\NIBBLE[1].UNISIM.I_XPHY_n_136 ,\NIBBLE[1].UNISIM.I_XPHY_n_137 }),
        .Q4({Q[22],Q[20],\NIBBLE[1].UNISIM.I_XPHY_n_140 ,\NIBBLE[1].UNISIM.I_XPHY_n_141 ,Q[23],Q[21],\NIBBLE[1].UNISIM.I_XPHY_n_144 ,\NIBBLE[1].UNISIM.I_XPHY_n_145 }),
        .Q5({\NIBBLE[1].UNISIM.I_XPHY_n_146 ,\NIBBLE[1].UNISIM.I_XPHY_n_147 ,\NIBBLE[1].UNISIM.I_XPHY_n_148 ,\NIBBLE[1].UNISIM.I_XPHY_n_149 ,\NIBBLE[1].UNISIM.I_XPHY_n_150 ,\NIBBLE[1].UNISIM.I_XPHY_n_151 ,\NIBBLE[1].UNISIM.I_XPHY_n_152 ,\NIBBLE[1].UNISIM.I_XPHY_n_153 }),
        .RIU_ADDR(riu_addr[15:8]),
        .RIU_NIBBLE_SEL(riu_nibble_sel[1]),
        .RIU_RD_DATA(riu_rd_data[31:16]),
        .RIU_RD_VALID(riu_rd_valid[1]),
        .RIU_WR_DATA(riu_wr_data[31:16]),
        .RIU_WR_EN(riu_wr_en[1]),
        .RST(RX_RST),
        .RXTX_SEL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .RX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T_OUT(\NLW_NIBBLE[1].UNISIM.I_XPHY_T_OUT_UNCONNECTED [5:0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  XPHY #(
    .CASCADE_0("FALSE"),
    .CASCADE_1("FALSE"),
    .CASCADE_2("FALSE"),
    .CASCADE_3("FALSE"),
    .CASCADE_4("FALSE"),
    .CASCADE_5("FALSE"),
    .CONTINUOUS_DQS("FALSE"),
    .CRSE_DLY_EN("TRUE"),
    .DELAY_VALUE_0(0),
    .DELAY_VALUE_1(0),
    .DELAY_VALUE_2(0),
    .DELAY_VALUE_3(0),
    .DELAY_VALUE_4(0),
    .DELAY_VALUE_5(0),
    .DIS_IDLY_VT_TRACK("FALSE"),
    .DIS_ODLY_VT_TRACK("FALSE"),
    .DIS_QDLY_VT_TRACK("FALSE"),
    .DQS_MODE("DDR4_1TCK"),
    .DQS_SRC("LOCAL"),
    .EN_CLK_TO_LOWER("ENABLE"),
    .EN_CLK_TO_UPPER("ENABLE"),
    .EN_DYN_DLY_MODE("FALSE"),
    .EN_OTHER_NCLK("FALSE"),
    .EN_OTHER_PCLK("FALSE"),
    .FAST_CK("FALSE"),
    .FIFO_MODE_0("ASYNC"),
    .FIFO_MODE_1("ASYNC"),
    .FIFO_MODE_2("ASYNC"),
    .FIFO_MODE_3("ASYNC"),
    .FIFO_MODE_4("ASYNC"),
    .FIFO_MODE_5("ASYNC"),
    .IBUF_DIS_SRC_0("EXTERNAL"),
    .IBUF_DIS_SRC_1("EXTERNAL"),
    .IBUF_DIS_SRC_2("EXTERNAL"),
    .IBUF_DIS_SRC_3("EXTERNAL"),
    .IBUF_DIS_SRC_4("EXTERNAL"),
    .IBUF_DIS_SRC_5("EXTERNAL"),
    .INV_RXCLK("FALSE"),
    .LP4_DQS("FALSE"),
    .ODELAY_BYPASS_0("FALSE"),
    .ODELAY_BYPASS_1("FALSE"),
    .ODELAY_BYPASS_2("FALSE"),
    .ODELAY_BYPASS_3("FALSE"),
    .ODELAY_BYPASS_4("FALSE"),
    .ODELAY_BYPASS_5("FALSE"),
    .ODT_SRC_0("EXTERNAL"),
    .ODT_SRC_1("EXTERNAL"),
    .ODT_SRC_2("EXTERNAL"),
    .ODT_SRC_3("EXTERNAL"),
    .ODT_SRC_4("EXTERNAL"),
    .ODT_SRC_5("EXTERNAL"),
    .PRIME_VAL(1'b0),
    .REFCLK_FREQUENCY(1000.000000),
    .RX_CLK_PHASE_N("SHIFT_90"),
    .RX_CLK_PHASE_P("SHIFT_90"),
    .RX_DATA_WIDTH(4),
    .RX_GATING("DISABLE"),
    .SELF_CALIBRATE("ENABLE"),
    .SERIAL_MODE("FALSE"),
    .TBYTE_CTL_0("T"),
    .TBYTE_CTL_1("T"),
    .TBYTE_CTL_2("T"),
    .TBYTE_CTL_3("T"),
    .TBYTE_CTL_4("T"),
    .TBYTE_CTL_5("T"),
    .TXRX_LOOPBACK_0("FALSE"),
    .TXRX_LOOPBACK_1("FALSE"),
    .TXRX_LOOPBACK_2("FALSE"),
    .TXRX_LOOPBACK_3("FALSE"),
    .TXRX_LOOPBACK_4("FALSE"),
    .TXRX_LOOPBACK_5("FALSE"),
    .TX_DATA_WIDTH(8),
    .TX_GATING("DISABLE"),
    .TX_INIT_0(1'b0),
    .TX_INIT_1(1'b0),
    .TX_INIT_2(1'b0),
    .TX_INIT_3(1'b0),
    .TX_INIT_4(1'b0),
    .TX_INIT_5(1'b0),
    .TX_INIT_TRI(1'b1),
    .TX_OUTPUT_PHASE_90_0("FALSE"),
    .TX_OUTPUT_PHASE_90_1("FALSE"),
    .TX_OUTPUT_PHASE_90_2("FALSE"),
    .TX_OUTPUT_PHASE_90_3("FALSE"),
    .TX_OUTPUT_PHASE_90_4("FALSE"),
    .TX_OUTPUT_PHASE_90_5("FALSE"),
    .TX_OUTPUT_PHASE_90_TRI("FALSE"),
    .WRITE_LEVELING("FALSE")) 
    \NIBBLE[2].UNISIM.I_XPHY 
       (.BISC_START_IN(bisc_start_wire[2]),
        .BISC_START_OUT(bisc_start_wire[3]),
        .BISC_STOP_IN(bisc_stop_in[2]),
        .BISC_STOP_OUT(bisc_stop_in[1]),
        .CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLK_FROM_OTHER_XPHY(CLK_TO_LOWER[4]),
        .CLK_TO_LOWER(CLK_TO_LOWER[2]),
        .CLK_TO_UPPER(CLK_TO_UPPER[2]),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT({\NIBBLE[2].UNISIM.I_XPHY_n_28 ,\NIBBLE[2].UNISIM.I_XPHY_n_29 ,\NIBBLE[2].UNISIM.I_XPHY_n_30 ,\NIBBLE[2].UNISIM.I_XPHY_n_31 ,\NIBBLE[2].UNISIM.I_XPHY_n_32 ,\NIBBLE[2].UNISIM.I_XPHY_n_33 ,\NIBBLE[2].UNISIM.I_XPHY_n_34 ,\NIBBLE[2].UNISIM.I_XPHY_n_35 ,\NIBBLE[2].UNISIM.I_XPHY_n_36 ,\NIBBLE[2].UNISIM.I_XPHY_n_37 ,\NIBBLE[2].UNISIM.I_XPHY_n_38 ,\NIBBLE[2].UNISIM.I_XPHY_n_39 ,\NIBBLE[2].UNISIM.I_XPHY_n_40 ,\NIBBLE[2].UNISIM.I_XPHY_n_41 ,\NIBBLE[2].UNISIM.I_XPHY_n_42 ,\NIBBLE[2].UNISIM.I_XPHY_n_43 ,\NIBBLE[2].UNISIM.I_XPHY_n_44 ,\NIBBLE[2].UNISIM.I_XPHY_n_45 ,\NIBBLE[2].UNISIM.I_XPHY_n_46 ,\NIBBLE[2].UNISIM.I_XPHY_n_47 ,\NIBBLE[2].UNISIM.I_XPHY_n_48 ,\NIBBLE[2].UNISIM.I_XPHY_n_49 ,\NIBBLE[2].UNISIM.I_XPHY_n_50 ,\NIBBLE[2].UNISIM.I_XPHY_n_51 ,\NIBBLE[2].UNISIM.I_XPHY_n_52 ,\NIBBLE[2].UNISIM.I_XPHY_n_53 ,\NIBBLE[2].UNISIM.I_XPHY_n_54 ,\NIBBLE[2].UNISIM.I_XPHY_n_55 ,\NIBBLE[2].UNISIM.I_XPHY_n_56 ,\NIBBLE[2].UNISIM.I_XPHY_n_57 ,\NIBBLE[2].UNISIM.I_XPHY_n_58 ,\NIBBLE[2].UNISIM.I_XPHY_n_59 ,\NIBBLE[2].UNISIM.I_XPHY_n_60 ,\NIBBLE[2].UNISIM.I_XPHY_n_61 ,\NIBBLE[2].UNISIM.I_XPHY_n_62 ,\NIBBLE[2].UNISIM.I_XPHY_n_63 ,\NIBBLE[2].UNISIM.I_XPHY_n_64 ,\NIBBLE[2].UNISIM.I_XPHY_n_65 ,\NIBBLE[2].UNISIM.I_XPHY_n_66 ,\NIBBLE[2].UNISIM.I_XPHY_n_67 ,\NIBBLE[2].UNISIM.I_XPHY_n_68 ,\NIBBLE[2].UNISIM.I_XPHY_n_69 ,\NIBBLE[2].UNISIM.I_XPHY_n_70 ,\NIBBLE[2].UNISIM.I_XPHY_n_71 ,\NIBBLE[2].UNISIM.I_XPHY_n_72 ,\NIBBLE[2].UNISIM.I_XPHY_n_73 ,\NIBBLE[2].UNISIM.I_XPHY_n_74 ,\NIBBLE[2].UNISIM.I_XPHY_n_75 ,\NIBBLE[2].UNISIM.I_XPHY_n_76 ,\NIBBLE[2].UNISIM.I_XPHY_n_77 ,\NIBBLE[2].UNISIM.I_XPHY_n_78 ,\NIBBLE[2].UNISIM.I_XPHY_n_79 ,\NIBBLE[2].UNISIM.I_XPHY_n_80 ,\NIBBLE[2].UNISIM.I_XPHY_n_81 }),
        .CTRL_CLK(ctrl_clk[2]),
        .D0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DATAIN(DATAIN[17:12]),
        .DLY_RDY(p_20_in22_in),
        .DYN_DCI({\NIBBLE[2].UNISIM.I_XPHY_n_82 ,\NIBBLE[2].UNISIM.I_XPHY_n_83 ,\NIBBLE[2].UNISIM.I_XPHY_n_84 ,\NIBBLE[2].UNISIM.I_XPHY_n_85 ,\NIBBLE[2].UNISIM.I_XPHY_n_86 ,\NIBBLE[2].UNISIM.I_XPHY_n_87 }),
        .EN_VTC(en_vtc),
        .FIFO_EMPTY(FIFO_EMPTY[2]),
        .FIFO_RDEN(fifo_rd_en),
        .FIFO_RD_CLK(fifo_rd_clk),
        .FIFO_WR_CLK(fifo_wr_clk[2]),
        .GT_STATUS(gt_status[2]),
        .IBUF_DISABLE({\NIBBLE[2].UNISIM.I_XPHY_n_88 ,\NIBBLE[2].UNISIM.I_XPHY_n_89 ,\NIBBLE[2].UNISIM.I_XPHY_n_90 ,\NIBBLE[2].UNISIM.I_XPHY_n_91 ,\NIBBLE[2].UNISIM.I_XPHY_n_92 ,\NIBBLE[2].UNISIM.I_XPHY_n_93 }),
        .INC({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NCLK_NIBBLE_IN(NCLK_NIBBLE_OUT[3]),
        .NCLK_NIBBLE_OUT(NCLK_NIBBLE_OUT[2]),
        .O0(\NLW_NIBBLE[2].UNISIM.I_XPHY_O0_UNCONNECTED [5:0]),
        .PCLK_NIBBLE_IN(PCLK_NIBBLE_OUT[3]),
        .PCLK_NIBBLE_OUT(PCLK_NIBBLE_OUT[2]),
        .PHY_RDCS0(phy_rdcs0[11:8]),
        .PHY_RDCS1(phy_rdcs1[11:8]),
        .PHY_RDEN({1'b0,1'b0,1'b0,1'b0}),
        .PHY_RDY(p_20_in),
        .PHY_WRCS0(phy_wrcs0[11:8]),
        .PHY_WRCS1(phy_wrcs1[11:8]),
        .PHY_WREN({1'b0,1'b0,1'b0,1'b0}),
        .PLL_CLK(bank0_pll_clkoutphy),
        .Q0({Q[26],Q[24],\NIBBLE[2].UNISIM.I_XPHY_n_108 ,\NIBBLE[2].UNISIM.I_XPHY_n_109 ,Q[27],Q[25],\NIBBLE[2].UNISIM.I_XPHY_n_112 ,\NIBBLE[2].UNISIM.I_XPHY_n_113 }),
        .Q1({\NIBBLE[2].UNISIM.I_XPHY_n_114 ,\NIBBLE[2].UNISIM.I_XPHY_n_115 ,\NIBBLE[2].UNISIM.I_XPHY_n_116 ,\NIBBLE[2].UNISIM.I_XPHY_n_117 ,\NIBBLE[2].UNISIM.I_XPHY_n_118 ,\NIBBLE[2].UNISIM.I_XPHY_n_119 ,\NIBBLE[2].UNISIM.I_XPHY_n_120 ,\NIBBLE[2].UNISIM.I_XPHY_n_121 }),
        .Q2({Q[30],Q[28],\NIBBLE[2].UNISIM.I_XPHY_n_124 ,\NIBBLE[2].UNISIM.I_XPHY_n_125 ,Q[31],Q[29],\NIBBLE[2].UNISIM.I_XPHY_n_128 ,\NIBBLE[2].UNISIM.I_XPHY_n_129 }),
        .Q3({\NIBBLE[2].UNISIM.I_XPHY_n_130 ,\NIBBLE[2].UNISIM.I_XPHY_n_131 ,\NIBBLE[2].UNISIM.I_XPHY_n_132 ,\NIBBLE[2].UNISIM.I_XPHY_n_133 ,\NIBBLE[2].UNISIM.I_XPHY_n_134 ,\NIBBLE[2].UNISIM.I_XPHY_n_135 ,\NIBBLE[2].UNISIM.I_XPHY_n_136 ,\NIBBLE[2].UNISIM.I_XPHY_n_137 }),
        .Q4({Q[34],Q[32],\NIBBLE[2].UNISIM.I_XPHY_n_140 ,\NIBBLE[2].UNISIM.I_XPHY_n_141 ,Q[35],Q[33],\NIBBLE[2].UNISIM.I_XPHY_n_144 ,\NIBBLE[2].UNISIM.I_XPHY_n_145 }),
        .Q5({\NIBBLE[2].UNISIM.I_XPHY_n_146 ,\NIBBLE[2].UNISIM.I_XPHY_n_147 ,\NIBBLE[2].UNISIM.I_XPHY_n_148 ,\NIBBLE[2].UNISIM.I_XPHY_n_149 ,\NIBBLE[2].UNISIM.I_XPHY_n_150 ,\NIBBLE[2].UNISIM.I_XPHY_n_151 ,\NIBBLE[2].UNISIM.I_XPHY_n_152 ,\NIBBLE[2].UNISIM.I_XPHY_n_153 }),
        .RIU_ADDR(riu_addr[23:16]),
        .RIU_NIBBLE_SEL(riu_nibble_sel[2]),
        .RIU_RD_DATA(riu_rd_data[47:32]),
        .RIU_RD_VALID(riu_rd_valid[2]),
        .RIU_WR_DATA(riu_wr_data[47:32]),
        .RIU_WR_EN(riu_wr_en[2]),
        .RST(RX_RST),
        .RXTX_SEL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .RX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T_OUT(\NLW_NIBBLE[2].UNISIM.I_XPHY_T_OUT_UNCONNECTED [5:0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  XPHY #(
    .CASCADE_0("FALSE"),
    .CASCADE_1("FALSE"),
    .CASCADE_2("FALSE"),
    .CASCADE_3("FALSE"),
    .CASCADE_4("FALSE"),
    .CASCADE_5("FALSE"),
    .CONTINUOUS_DQS("FALSE"),
    .CRSE_DLY_EN("TRUE"),
    .DELAY_VALUE_0(0),
    .DELAY_VALUE_1(0),
    .DELAY_VALUE_2(0),
    .DELAY_VALUE_3(0),
    .DELAY_VALUE_4(0),
    .DELAY_VALUE_5(0),
    .DIS_IDLY_VT_TRACK("FALSE"),
    .DIS_ODLY_VT_TRACK("FALSE"),
    .DIS_QDLY_VT_TRACK("FALSE"),
    .DQS_MODE("DDR4_1TCK"),
    .DQS_SRC("EXTERN"),
    .EN_CLK_TO_LOWER("DISABLE"),
    .EN_CLK_TO_UPPER("DISABLE"),
    .EN_DYN_DLY_MODE("FALSE"),
    .EN_OTHER_NCLK("TRUE"),
    .EN_OTHER_PCLK("TRUE"),
    .FAST_CK("FALSE"),
    .FIFO_MODE_0("ASYNC"),
    .FIFO_MODE_1("ASYNC"),
    .FIFO_MODE_2("ASYNC"),
    .FIFO_MODE_3("ASYNC"),
    .FIFO_MODE_4("ASYNC"),
    .FIFO_MODE_5("ASYNC"),
    .IBUF_DIS_SRC_0("EXTERNAL"),
    .IBUF_DIS_SRC_1("EXTERNAL"),
    .IBUF_DIS_SRC_2("EXTERNAL"),
    .IBUF_DIS_SRC_3("EXTERNAL"),
    .IBUF_DIS_SRC_4("EXTERNAL"),
    .IBUF_DIS_SRC_5("EXTERNAL"),
    .INV_RXCLK("FALSE"),
    .LP4_DQS("FALSE"),
    .ODELAY_BYPASS_0("FALSE"),
    .ODELAY_BYPASS_1("FALSE"),
    .ODELAY_BYPASS_2("FALSE"),
    .ODELAY_BYPASS_3("FALSE"),
    .ODELAY_BYPASS_4("FALSE"),
    .ODELAY_BYPASS_5("FALSE"),
    .ODT_SRC_0("EXTERNAL"),
    .ODT_SRC_1("EXTERNAL"),
    .ODT_SRC_2("EXTERNAL"),
    .ODT_SRC_3("EXTERNAL"),
    .ODT_SRC_4("EXTERNAL"),
    .ODT_SRC_5("EXTERNAL"),
    .PRIME_VAL(1'b0),
    .REFCLK_FREQUENCY(1000.000000),
    .RX_CLK_PHASE_N("SHIFT_90"),
    .RX_CLK_PHASE_P("SHIFT_90"),
    .RX_DATA_WIDTH(4),
    .RX_GATING("DISABLE"),
    .SELF_CALIBRATE("ENABLE"),
    .SERIAL_MODE("FALSE"),
    .TBYTE_CTL_0("T"),
    .TBYTE_CTL_1("T"),
    .TBYTE_CTL_2("T"),
    .TBYTE_CTL_3("T"),
    .TBYTE_CTL_4("T"),
    .TBYTE_CTL_5("T"),
    .TXRX_LOOPBACK_0("FALSE"),
    .TXRX_LOOPBACK_1("FALSE"),
    .TXRX_LOOPBACK_2("FALSE"),
    .TXRX_LOOPBACK_3("FALSE"),
    .TXRX_LOOPBACK_4("FALSE"),
    .TXRX_LOOPBACK_5("FALSE"),
    .TX_DATA_WIDTH(8),
    .TX_GATING("DISABLE"),
    .TX_INIT_0(1'b0),
    .TX_INIT_1(1'b0),
    .TX_INIT_2(1'b0),
    .TX_INIT_3(1'b0),
    .TX_INIT_4(1'b0),
    .TX_INIT_5(1'b0),
    .TX_INIT_TRI(1'b1),
    .TX_OUTPUT_PHASE_90_0("FALSE"),
    .TX_OUTPUT_PHASE_90_1("FALSE"),
    .TX_OUTPUT_PHASE_90_2("FALSE"),
    .TX_OUTPUT_PHASE_90_3("FALSE"),
    .TX_OUTPUT_PHASE_90_4("FALSE"),
    .TX_OUTPUT_PHASE_90_5("FALSE"),
    .TX_OUTPUT_PHASE_90_TRI("FALSE"),
    .WRITE_LEVELING("FALSE")) 
    \NIBBLE[3].UNISIM.I_XPHY 
       (.BISC_START_IN(bisc_start_wire[3]),
        .BISC_START_OUT(bisc_start_wire[4]),
        .BISC_STOP_IN(bisc_stop_in[3]),
        .BISC_STOP_OUT(bisc_stop_in[2]),
        .CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLK_FROM_OTHER_XPHY(CLK_TO_LOWER[5]),
        .CLK_TO_LOWER(CLK_TO_LOWER[3]),
        .CLK_TO_UPPER(CLK_TO_UPPER[3]),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT({\NIBBLE[3].UNISIM.I_XPHY_n_28 ,\NIBBLE[3].UNISIM.I_XPHY_n_29 ,\NIBBLE[3].UNISIM.I_XPHY_n_30 ,\NIBBLE[3].UNISIM.I_XPHY_n_31 ,\NIBBLE[3].UNISIM.I_XPHY_n_32 ,\NIBBLE[3].UNISIM.I_XPHY_n_33 ,\NIBBLE[3].UNISIM.I_XPHY_n_34 ,\NIBBLE[3].UNISIM.I_XPHY_n_35 ,\NIBBLE[3].UNISIM.I_XPHY_n_36 ,\NIBBLE[3].UNISIM.I_XPHY_n_37 ,\NIBBLE[3].UNISIM.I_XPHY_n_38 ,\NIBBLE[3].UNISIM.I_XPHY_n_39 ,\NIBBLE[3].UNISIM.I_XPHY_n_40 ,\NIBBLE[3].UNISIM.I_XPHY_n_41 ,\NIBBLE[3].UNISIM.I_XPHY_n_42 ,\NIBBLE[3].UNISIM.I_XPHY_n_43 ,\NIBBLE[3].UNISIM.I_XPHY_n_44 ,\NIBBLE[3].UNISIM.I_XPHY_n_45 ,\NIBBLE[3].UNISIM.I_XPHY_n_46 ,\NIBBLE[3].UNISIM.I_XPHY_n_47 ,\NIBBLE[3].UNISIM.I_XPHY_n_48 ,\NIBBLE[3].UNISIM.I_XPHY_n_49 ,\NIBBLE[3].UNISIM.I_XPHY_n_50 ,\NIBBLE[3].UNISIM.I_XPHY_n_51 ,\NIBBLE[3].UNISIM.I_XPHY_n_52 ,\NIBBLE[3].UNISIM.I_XPHY_n_53 ,\NIBBLE[3].UNISIM.I_XPHY_n_54 ,\NIBBLE[3].UNISIM.I_XPHY_n_55 ,\NIBBLE[3].UNISIM.I_XPHY_n_56 ,\NIBBLE[3].UNISIM.I_XPHY_n_57 ,\NIBBLE[3].UNISIM.I_XPHY_n_58 ,\NIBBLE[3].UNISIM.I_XPHY_n_59 ,\NIBBLE[3].UNISIM.I_XPHY_n_60 ,\NIBBLE[3].UNISIM.I_XPHY_n_61 ,\NIBBLE[3].UNISIM.I_XPHY_n_62 ,\NIBBLE[3].UNISIM.I_XPHY_n_63 ,\NIBBLE[3].UNISIM.I_XPHY_n_64 ,\NIBBLE[3].UNISIM.I_XPHY_n_65 ,\NIBBLE[3].UNISIM.I_XPHY_n_66 ,\NIBBLE[3].UNISIM.I_XPHY_n_67 ,\NIBBLE[3].UNISIM.I_XPHY_n_68 ,\NIBBLE[3].UNISIM.I_XPHY_n_69 ,\NIBBLE[3].UNISIM.I_XPHY_n_70 ,\NIBBLE[3].UNISIM.I_XPHY_n_71 ,\NIBBLE[3].UNISIM.I_XPHY_n_72 ,\NIBBLE[3].UNISIM.I_XPHY_n_73 ,\NIBBLE[3].UNISIM.I_XPHY_n_74 ,\NIBBLE[3].UNISIM.I_XPHY_n_75 ,\NIBBLE[3].UNISIM.I_XPHY_n_76 ,\NIBBLE[3].UNISIM.I_XPHY_n_77 ,\NIBBLE[3].UNISIM.I_XPHY_n_78 ,\NIBBLE[3].UNISIM.I_XPHY_n_79 ,\NIBBLE[3].UNISIM.I_XPHY_n_80 ,\NIBBLE[3].UNISIM.I_XPHY_n_81 }),
        .CTRL_CLK(ctrl_clk[3]),
        .D0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DATAIN(DATAIN[23:18]),
        .DLY_RDY(ctrl_clk_4[1]),
        .DYN_DCI({\NIBBLE[3].UNISIM.I_XPHY_n_82 ,\NIBBLE[3].UNISIM.I_XPHY_n_83 ,\NIBBLE[3].UNISIM.I_XPHY_n_84 ,\NIBBLE[3].UNISIM.I_XPHY_n_85 ,\NIBBLE[3].UNISIM.I_XPHY_n_86 ,\NIBBLE[3].UNISIM.I_XPHY_n_87 }),
        .EN_VTC(en_vtc),
        .FIFO_EMPTY(FIFO_EMPTY[3]),
        .FIFO_RDEN(fifo_rd_en),
        .FIFO_RD_CLK(fifo_rd_clk),
        .FIFO_WR_CLK(fifo_wr_clk[3]),
        .GT_STATUS(gt_status[3]),
        .IBUF_DISABLE({\NIBBLE[3].UNISIM.I_XPHY_n_88 ,\NIBBLE[3].UNISIM.I_XPHY_n_89 ,\NIBBLE[3].UNISIM.I_XPHY_n_90 ,\NIBBLE[3].UNISIM.I_XPHY_n_91 ,\NIBBLE[3].UNISIM.I_XPHY_n_92 ,\NIBBLE[3].UNISIM.I_XPHY_n_93 }),
        .INC({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NCLK_NIBBLE_IN(NCLK_NIBBLE_OUT[2]),
        .NCLK_NIBBLE_OUT(NCLK_NIBBLE_OUT[3]),
        .O0(\NLW_NIBBLE[3].UNISIM.I_XPHY_O0_UNCONNECTED [5:0]),
        .PCLK_NIBBLE_IN(PCLK_NIBBLE_OUT[2]),
        .PCLK_NIBBLE_OUT(PCLK_NIBBLE_OUT[3]),
        .PHY_RDCS0(phy_rdcs0[15:12]),
        .PHY_RDCS1(phy_rdcs1[15:12]),
        .PHY_RDEN({1'b0,1'b0,1'b0,1'b0}),
        .PHY_RDY(ctrl_clk_5[1]),
        .PHY_WRCS0(phy_wrcs0[15:12]),
        .PHY_WRCS1(phy_wrcs1[15:12]),
        .PHY_WREN({1'b0,1'b0,1'b0,1'b0}),
        .PLL_CLK(bank0_pll_clkoutphy),
        .Q0({Q[38],Q[36],\NIBBLE[3].UNISIM.I_XPHY_n_108 ,\NIBBLE[3].UNISIM.I_XPHY_n_109 ,Q[39],Q[37],\NIBBLE[3].UNISIM.I_XPHY_n_112 ,\NIBBLE[3].UNISIM.I_XPHY_n_113 }),
        .Q1({\NIBBLE[3].UNISIM.I_XPHY_n_114 ,\NIBBLE[3].UNISIM.I_XPHY_n_115 ,\NIBBLE[3].UNISIM.I_XPHY_n_116 ,\NIBBLE[3].UNISIM.I_XPHY_n_117 ,\NIBBLE[3].UNISIM.I_XPHY_n_118 ,\NIBBLE[3].UNISIM.I_XPHY_n_119 ,\NIBBLE[3].UNISIM.I_XPHY_n_120 ,\NIBBLE[3].UNISIM.I_XPHY_n_121 }),
        .Q2({Q[42],Q[40],\NIBBLE[3].UNISIM.I_XPHY_n_124 ,\NIBBLE[3].UNISIM.I_XPHY_n_125 ,Q[43],Q[41],\NIBBLE[3].UNISIM.I_XPHY_n_128 ,\NIBBLE[3].UNISIM.I_XPHY_n_129 }),
        .Q3({\NIBBLE[3].UNISIM.I_XPHY_n_130 ,\NIBBLE[3].UNISIM.I_XPHY_n_131 ,\NIBBLE[3].UNISIM.I_XPHY_n_132 ,\NIBBLE[3].UNISIM.I_XPHY_n_133 ,\NIBBLE[3].UNISIM.I_XPHY_n_134 ,\NIBBLE[3].UNISIM.I_XPHY_n_135 ,\NIBBLE[3].UNISIM.I_XPHY_n_136 ,\NIBBLE[3].UNISIM.I_XPHY_n_137 }),
        .Q4({Q[46],Q[44],\NIBBLE[3].UNISIM.I_XPHY_n_140 ,\NIBBLE[3].UNISIM.I_XPHY_n_141 ,Q[47],Q[45],\NIBBLE[3].UNISIM.I_XPHY_n_144 ,\NIBBLE[3].UNISIM.I_XPHY_n_145 }),
        .Q5({\NIBBLE[3].UNISIM.I_XPHY_n_146 ,\NIBBLE[3].UNISIM.I_XPHY_n_147 ,\NIBBLE[3].UNISIM.I_XPHY_n_148 ,\NIBBLE[3].UNISIM.I_XPHY_n_149 ,\NIBBLE[3].UNISIM.I_XPHY_n_150 ,\NIBBLE[3].UNISIM.I_XPHY_n_151 ,\NIBBLE[3].UNISIM.I_XPHY_n_152 ,\NIBBLE[3].UNISIM.I_XPHY_n_153 }),
        .RIU_ADDR(riu_addr[31:24]),
        .RIU_NIBBLE_SEL(riu_nibble_sel[3]),
        .RIU_RD_DATA(riu_rd_data[63:48]),
        .RIU_RD_VALID(riu_rd_valid[3]),
        .RIU_WR_DATA(riu_wr_data[63:48]),
        .RIU_WR_EN(riu_wr_en[3]),
        .RST(RX_RST),
        .RXTX_SEL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .RX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T_OUT(\NLW_NIBBLE[3].UNISIM.I_XPHY_T_OUT_UNCONNECTED [5:0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  XPHY #(
    .CASCADE_0("FALSE"),
    .CASCADE_1("FALSE"),
    .CASCADE_2("FALSE"),
    .CASCADE_3("FALSE"),
    .CASCADE_4("FALSE"),
    .CASCADE_5("FALSE"),
    .CONTINUOUS_DQS("FALSE"),
    .CRSE_DLY_EN("TRUE"),
    .DELAY_VALUE_0(0),
    .DELAY_VALUE_1(0),
    .DELAY_VALUE_2(0),
    .DELAY_VALUE_3(0),
    .DELAY_VALUE_4(0),
    .DELAY_VALUE_5(0),
    .DIS_IDLY_VT_TRACK("FALSE"),
    .DIS_ODLY_VT_TRACK("FALSE"),
    .DIS_QDLY_VT_TRACK("FALSE"),
    .DQS_MODE("DDR4_1TCK"),
    .DQS_SRC("EXTERN"),
    .EN_CLK_TO_LOWER("DISABLE"),
    .EN_CLK_TO_UPPER("ENABLE"),
    .EN_DYN_DLY_MODE("FALSE"),
    .EN_OTHER_NCLK("FALSE"),
    .EN_OTHER_PCLK("FALSE"),
    .FAST_CK("FALSE"),
    .FIFO_MODE_0("ASYNC"),
    .FIFO_MODE_1("ASYNC"),
    .FIFO_MODE_2("ASYNC"),
    .FIFO_MODE_3("ASYNC"),
    .FIFO_MODE_4("ASYNC"),
    .FIFO_MODE_5("ASYNC"),
    .IBUF_DIS_SRC_0("EXTERNAL"),
    .IBUF_DIS_SRC_1("EXTERNAL"),
    .IBUF_DIS_SRC_2("EXTERNAL"),
    .IBUF_DIS_SRC_3("EXTERNAL"),
    .IBUF_DIS_SRC_4("EXTERNAL"),
    .IBUF_DIS_SRC_5("EXTERNAL"),
    .INV_RXCLK("FALSE"),
    .LP4_DQS("FALSE"),
    .ODELAY_BYPASS_0("FALSE"),
    .ODELAY_BYPASS_1("FALSE"),
    .ODELAY_BYPASS_2("FALSE"),
    .ODELAY_BYPASS_3("FALSE"),
    .ODELAY_BYPASS_4("FALSE"),
    .ODELAY_BYPASS_5("FALSE"),
    .ODT_SRC_0("EXTERNAL"),
    .ODT_SRC_1("EXTERNAL"),
    .ODT_SRC_2("EXTERNAL"),
    .ODT_SRC_3("EXTERNAL"),
    .ODT_SRC_4("EXTERNAL"),
    .ODT_SRC_5("EXTERNAL"),
    .PRIME_VAL(1'b0),
    .REFCLK_FREQUENCY(1000.000000),
    .RX_CLK_PHASE_N("SHIFT_90"),
    .RX_CLK_PHASE_P("SHIFT_90"),
    .RX_DATA_WIDTH(4),
    .RX_GATING("DISABLE"),
    .SELF_CALIBRATE("ENABLE"),
    .SERIAL_MODE("FALSE"),
    .TBYTE_CTL_0("T"),
    .TBYTE_CTL_1("T"),
    .TBYTE_CTL_2("T"),
    .TBYTE_CTL_3("T"),
    .TBYTE_CTL_4("T"),
    .TBYTE_CTL_5("T"),
    .TXRX_LOOPBACK_0("FALSE"),
    .TXRX_LOOPBACK_1("FALSE"),
    .TXRX_LOOPBACK_2("FALSE"),
    .TXRX_LOOPBACK_3("FALSE"),
    .TXRX_LOOPBACK_4("FALSE"),
    .TXRX_LOOPBACK_5("FALSE"),
    .TX_DATA_WIDTH(8),
    .TX_GATING("DISABLE"),
    .TX_INIT_0(1'b0),
    .TX_INIT_1(1'b0),
    .TX_INIT_2(1'b0),
    .TX_INIT_3(1'b0),
    .TX_INIT_4(1'b0),
    .TX_INIT_5(1'b0),
    .TX_INIT_TRI(1'b1),
    .TX_OUTPUT_PHASE_90_0("FALSE"),
    .TX_OUTPUT_PHASE_90_1("FALSE"),
    .TX_OUTPUT_PHASE_90_2("FALSE"),
    .TX_OUTPUT_PHASE_90_3("FALSE"),
    .TX_OUTPUT_PHASE_90_4("FALSE"),
    .TX_OUTPUT_PHASE_90_5("FALSE"),
    .TX_OUTPUT_PHASE_90_TRI("FALSE"),
    .WRITE_LEVELING("FALSE")) 
    \NIBBLE[4].UNISIM.I_XPHY 
       (.BISC_START_IN(bisc_start_wire[4]),
        .BISC_START_OUT(bisc_start_wire[5]),
        .BISC_STOP_IN(bisc_stop_in[4]),
        .BISC_STOP_OUT(bisc_stop_in[3]),
        .CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLK_FROM_OTHER_XPHY(CLK_TO_UPPER[2]),
        .CLK_TO_LOWER(CLK_TO_LOWER[4]),
        .CLK_TO_UPPER(CLK_TO_UPPER[4]),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT({\NIBBLE[4].UNISIM.I_XPHY_n_28 ,\NIBBLE[4].UNISIM.I_XPHY_n_29 ,\NIBBLE[4].UNISIM.I_XPHY_n_30 ,\NIBBLE[4].UNISIM.I_XPHY_n_31 ,\NIBBLE[4].UNISIM.I_XPHY_n_32 ,\NIBBLE[4].UNISIM.I_XPHY_n_33 ,\NIBBLE[4].UNISIM.I_XPHY_n_34 ,\NIBBLE[4].UNISIM.I_XPHY_n_35 ,\NIBBLE[4].UNISIM.I_XPHY_n_36 ,\NIBBLE[4].UNISIM.I_XPHY_n_37 ,\NIBBLE[4].UNISIM.I_XPHY_n_38 ,\NIBBLE[4].UNISIM.I_XPHY_n_39 ,\NIBBLE[4].UNISIM.I_XPHY_n_40 ,\NIBBLE[4].UNISIM.I_XPHY_n_41 ,\NIBBLE[4].UNISIM.I_XPHY_n_42 ,\NIBBLE[4].UNISIM.I_XPHY_n_43 ,\NIBBLE[4].UNISIM.I_XPHY_n_44 ,\NIBBLE[4].UNISIM.I_XPHY_n_45 ,\NIBBLE[4].UNISIM.I_XPHY_n_46 ,\NIBBLE[4].UNISIM.I_XPHY_n_47 ,\NIBBLE[4].UNISIM.I_XPHY_n_48 ,\NIBBLE[4].UNISIM.I_XPHY_n_49 ,\NIBBLE[4].UNISIM.I_XPHY_n_50 ,\NIBBLE[4].UNISIM.I_XPHY_n_51 ,\NIBBLE[4].UNISIM.I_XPHY_n_52 ,\NIBBLE[4].UNISIM.I_XPHY_n_53 ,\NIBBLE[4].UNISIM.I_XPHY_n_54 ,\NIBBLE[4].UNISIM.I_XPHY_n_55 ,\NIBBLE[4].UNISIM.I_XPHY_n_56 ,\NIBBLE[4].UNISIM.I_XPHY_n_57 ,\NIBBLE[4].UNISIM.I_XPHY_n_58 ,\NIBBLE[4].UNISIM.I_XPHY_n_59 ,\NIBBLE[4].UNISIM.I_XPHY_n_60 ,\NIBBLE[4].UNISIM.I_XPHY_n_61 ,\NIBBLE[4].UNISIM.I_XPHY_n_62 ,\NIBBLE[4].UNISIM.I_XPHY_n_63 ,\NIBBLE[4].UNISIM.I_XPHY_n_64 ,\NIBBLE[4].UNISIM.I_XPHY_n_65 ,\NIBBLE[4].UNISIM.I_XPHY_n_66 ,\NIBBLE[4].UNISIM.I_XPHY_n_67 ,\NIBBLE[4].UNISIM.I_XPHY_n_68 ,\NIBBLE[4].UNISIM.I_XPHY_n_69 ,\NIBBLE[4].UNISIM.I_XPHY_n_70 ,\NIBBLE[4].UNISIM.I_XPHY_n_71 ,\NIBBLE[4].UNISIM.I_XPHY_n_72 ,\NIBBLE[4].UNISIM.I_XPHY_n_73 ,\NIBBLE[4].UNISIM.I_XPHY_n_74 ,\NIBBLE[4].UNISIM.I_XPHY_n_75 ,\NIBBLE[4].UNISIM.I_XPHY_n_76 ,\NIBBLE[4].UNISIM.I_XPHY_n_77 ,\NIBBLE[4].UNISIM.I_XPHY_n_78 ,\NIBBLE[4].UNISIM.I_XPHY_n_79 ,\NIBBLE[4].UNISIM.I_XPHY_n_80 ,\NIBBLE[4].UNISIM.I_XPHY_n_81 }),
        .CTRL_CLK(ctrl_clk[4]),
        .D0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DATAIN(DATAIN[29:24]),
        .DLY_RDY(ctrl_clk_4[2]),
        .DYN_DCI({\NIBBLE[4].UNISIM.I_XPHY_n_82 ,\NIBBLE[4].UNISIM.I_XPHY_n_83 ,\NIBBLE[4].UNISIM.I_XPHY_n_84 ,\NIBBLE[4].UNISIM.I_XPHY_n_85 ,\NIBBLE[4].UNISIM.I_XPHY_n_86 ,\NIBBLE[4].UNISIM.I_XPHY_n_87 }),
        .EN_VTC(en_vtc),
        .FIFO_EMPTY(FIFO_EMPTY[4]),
        .FIFO_RDEN(fifo_rd_en),
        .FIFO_RD_CLK(fifo_rd_clk),
        .FIFO_WR_CLK(fifo_wr_clk[4]),
        .GT_STATUS(gt_status[4]),
        .IBUF_DISABLE({\NIBBLE[4].UNISIM.I_XPHY_n_88 ,\NIBBLE[4].UNISIM.I_XPHY_n_89 ,\NIBBLE[4].UNISIM.I_XPHY_n_90 ,\NIBBLE[4].UNISIM.I_XPHY_n_91 ,\NIBBLE[4].UNISIM.I_XPHY_n_92 ,\NIBBLE[4].UNISIM.I_XPHY_n_93 }),
        .INC({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NCLK_NIBBLE_IN(NCLK_NIBBLE_OUT[5]),
        .NCLK_NIBBLE_OUT(NCLK_NIBBLE_OUT[4]),
        .O0(\NLW_NIBBLE[4].UNISIM.I_XPHY_O0_UNCONNECTED [5:0]),
        .PCLK_NIBBLE_IN(PCLK_NIBBLE_OUT[5]),
        .PCLK_NIBBLE_OUT(PCLK_NIBBLE_OUT[4]),
        .PHY_RDCS0(phy_rdcs0[19:16]),
        .PHY_RDCS1(phy_rdcs1[19:16]),
        .PHY_RDEN({1'b0,1'b0,1'b0,1'b0}),
        .PHY_RDY(ctrl_clk_5[2]),
        .PHY_WRCS0(phy_wrcs0[19:16]),
        .PHY_WRCS1(phy_wrcs1[19:16]),
        .PHY_WREN({1'b0,1'b0,1'b0,1'b0}),
        .PLL_CLK(bank0_pll_clkoutphy),
        .Q0({Q[50],Q[48],\NIBBLE[4].UNISIM.I_XPHY_n_108 ,\NIBBLE[4].UNISIM.I_XPHY_n_109 ,Q[51],Q[49],\NIBBLE[4].UNISIM.I_XPHY_n_112 ,\NIBBLE[4].UNISIM.I_XPHY_n_113 }),
        .Q1({\NIBBLE[4].UNISIM.I_XPHY_n_114 ,\NIBBLE[4].UNISIM.I_XPHY_n_115 ,\NIBBLE[4].UNISIM.I_XPHY_n_116 ,\NIBBLE[4].UNISIM.I_XPHY_n_117 ,\NIBBLE[4].UNISIM.I_XPHY_n_118 ,\NIBBLE[4].UNISIM.I_XPHY_n_119 ,\NIBBLE[4].UNISIM.I_XPHY_n_120 ,\NIBBLE[4].UNISIM.I_XPHY_n_121 }),
        .Q2({Q[54],Q[52],\NIBBLE[4].UNISIM.I_XPHY_n_124 ,\NIBBLE[4].UNISIM.I_XPHY_n_125 ,Q[55],Q[53],\NIBBLE[4].UNISIM.I_XPHY_n_128 ,\NIBBLE[4].UNISIM.I_XPHY_n_129 }),
        .Q3({\NIBBLE[4].UNISIM.I_XPHY_n_130 ,\NIBBLE[4].UNISIM.I_XPHY_n_131 ,\NIBBLE[4].UNISIM.I_XPHY_n_132 ,\NIBBLE[4].UNISIM.I_XPHY_n_133 ,\NIBBLE[4].UNISIM.I_XPHY_n_134 ,\NIBBLE[4].UNISIM.I_XPHY_n_135 ,\NIBBLE[4].UNISIM.I_XPHY_n_136 ,\NIBBLE[4].UNISIM.I_XPHY_n_137 }),
        .Q4({Q[58],Q[56],\NIBBLE[4].UNISIM.I_XPHY_n_140 ,\NIBBLE[4].UNISIM.I_XPHY_n_141 ,Q[59],Q[57],\NIBBLE[4].UNISIM.I_XPHY_n_144 ,\NIBBLE[4].UNISIM.I_XPHY_n_145 }),
        .Q5({\NIBBLE[4].UNISIM.I_XPHY_n_146 ,\NIBBLE[4].UNISIM.I_XPHY_n_147 ,\NIBBLE[4].UNISIM.I_XPHY_n_148 ,\NIBBLE[4].UNISIM.I_XPHY_n_149 ,\NIBBLE[4].UNISIM.I_XPHY_n_150 ,\NIBBLE[4].UNISIM.I_XPHY_n_151 ,\NIBBLE[4].UNISIM.I_XPHY_n_152 ,\NIBBLE[4].UNISIM.I_XPHY_n_153 }),
        .RIU_ADDR(riu_addr[39:32]),
        .RIU_NIBBLE_SEL(riu_nibble_sel[4]),
        .RIU_RD_DATA(riu_rd_data[79:64]),
        .RIU_RD_VALID(riu_rd_valid[4]),
        .RIU_WR_DATA(riu_wr_data[79:64]),
        .RIU_WR_EN(riu_wr_en[4]),
        .RST(RX_RST),
        .RXTX_SEL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .RX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T_OUT(\NLW_NIBBLE[4].UNISIM.I_XPHY_T_OUT_UNCONNECTED [5:0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  XPHY #(
    .CASCADE_0("FALSE"),
    .CASCADE_1("FALSE"),
    .CASCADE_2("FALSE"),
    .CASCADE_3("FALSE"),
    .CASCADE_4("FALSE"),
    .CASCADE_5("FALSE"),
    .CONTINUOUS_DQS("FALSE"),
    .CRSE_DLY_EN("TRUE"),
    .DELAY_VALUE_0(0),
    .DELAY_VALUE_1(0),
    .DELAY_VALUE_2(0),
    .DELAY_VALUE_3(0),
    .DELAY_VALUE_4(0),
    .DELAY_VALUE_5(0),
    .DIS_IDLY_VT_TRACK("FALSE"),
    .DIS_ODLY_VT_TRACK("FALSE"),
    .DIS_QDLY_VT_TRACK("FALSE"),
    .DQS_MODE("DDR4_1TCK"),
    .DQS_SRC("EXTERN"),
    .EN_CLK_TO_LOWER("DISABLE"),
    .EN_CLK_TO_UPPER("DISABLE"),
    .EN_DYN_DLY_MODE("FALSE"),
    .EN_OTHER_NCLK("TRUE"),
    .EN_OTHER_PCLK("TRUE"),
    .FAST_CK("FALSE"),
    .FIFO_MODE_0("ASYNC"),
    .FIFO_MODE_1("ASYNC"),
    .FIFO_MODE_2("ASYNC"),
    .FIFO_MODE_3("ASYNC"),
    .FIFO_MODE_4("ASYNC"),
    .FIFO_MODE_5("ASYNC"),
    .IBUF_DIS_SRC_0("EXTERNAL"),
    .IBUF_DIS_SRC_1("EXTERNAL"),
    .IBUF_DIS_SRC_2("EXTERNAL"),
    .IBUF_DIS_SRC_3("EXTERNAL"),
    .IBUF_DIS_SRC_4("EXTERNAL"),
    .IBUF_DIS_SRC_5("EXTERNAL"),
    .INV_RXCLK("FALSE"),
    .LP4_DQS("FALSE"),
    .ODELAY_BYPASS_0("FALSE"),
    .ODELAY_BYPASS_1("FALSE"),
    .ODELAY_BYPASS_2("FALSE"),
    .ODELAY_BYPASS_3("FALSE"),
    .ODELAY_BYPASS_4("FALSE"),
    .ODELAY_BYPASS_5("FALSE"),
    .ODT_SRC_0("EXTERNAL"),
    .ODT_SRC_1("EXTERNAL"),
    .ODT_SRC_2("EXTERNAL"),
    .ODT_SRC_3("EXTERNAL"),
    .ODT_SRC_4("EXTERNAL"),
    .ODT_SRC_5("EXTERNAL"),
    .PRIME_VAL(1'b0),
    .REFCLK_FREQUENCY(1000.000000),
    .RX_CLK_PHASE_N("SHIFT_90"),
    .RX_CLK_PHASE_P("SHIFT_90"),
    .RX_DATA_WIDTH(4),
    .RX_GATING("DISABLE"),
    .SELF_CALIBRATE("ENABLE"),
    .SERIAL_MODE("FALSE"),
    .TBYTE_CTL_0("T"),
    .TBYTE_CTL_1("T"),
    .TBYTE_CTL_2("T"),
    .TBYTE_CTL_3("T"),
    .TBYTE_CTL_4("T"),
    .TBYTE_CTL_5("T"),
    .TXRX_LOOPBACK_0("FALSE"),
    .TXRX_LOOPBACK_1("FALSE"),
    .TXRX_LOOPBACK_2("FALSE"),
    .TXRX_LOOPBACK_3("FALSE"),
    .TXRX_LOOPBACK_4("FALSE"),
    .TXRX_LOOPBACK_5("FALSE"),
    .TX_DATA_WIDTH(8),
    .TX_GATING("DISABLE"),
    .TX_INIT_0(1'b0),
    .TX_INIT_1(1'b0),
    .TX_INIT_2(1'b0),
    .TX_INIT_3(1'b0),
    .TX_INIT_4(1'b0),
    .TX_INIT_5(1'b0),
    .TX_INIT_TRI(1'b1),
    .TX_OUTPUT_PHASE_90_0("FALSE"),
    .TX_OUTPUT_PHASE_90_1("FALSE"),
    .TX_OUTPUT_PHASE_90_2("FALSE"),
    .TX_OUTPUT_PHASE_90_3("FALSE"),
    .TX_OUTPUT_PHASE_90_4("FALSE"),
    .TX_OUTPUT_PHASE_90_5("FALSE"),
    .TX_OUTPUT_PHASE_90_TRI("FALSE"),
    .WRITE_LEVELING("FALSE")) 
    \NIBBLE[5].UNISIM.I_XPHY 
       (.BISC_START_IN(bisc_start_wire[5]),
        .BISC_START_OUT(bisc_start_wire[6]),
        .BISC_STOP_IN(bisc_stop_in[5]),
        .BISC_STOP_OUT(bisc_stop_in[4]),
        .CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLK_FROM_OTHER_XPHY(CLK_TO_UPPER[3]),
        .CLK_TO_LOWER(CLK_TO_LOWER[5]),
        .CLK_TO_UPPER(CLK_TO_UPPER[5]),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT({\NIBBLE[5].UNISIM.I_XPHY_n_28 ,\NIBBLE[5].UNISIM.I_XPHY_n_29 ,\NIBBLE[5].UNISIM.I_XPHY_n_30 ,\NIBBLE[5].UNISIM.I_XPHY_n_31 ,\NIBBLE[5].UNISIM.I_XPHY_n_32 ,\NIBBLE[5].UNISIM.I_XPHY_n_33 ,\NIBBLE[5].UNISIM.I_XPHY_n_34 ,\NIBBLE[5].UNISIM.I_XPHY_n_35 ,\NIBBLE[5].UNISIM.I_XPHY_n_36 ,\NIBBLE[5].UNISIM.I_XPHY_n_37 ,\NIBBLE[5].UNISIM.I_XPHY_n_38 ,\NIBBLE[5].UNISIM.I_XPHY_n_39 ,\NIBBLE[5].UNISIM.I_XPHY_n_40 ,\NIBBLE[5].UNISIM.I_XPHY_n_41 ,\NIBBLE[5].UNISIM.I_XPHY_n_42 ,\NIBBLE[5].UNISIM.I_XPHY_n_43 ,\NIBBLE[5].UNISIM.I_XPHY_n_44 ,\NIBBLE[5].UNISIM.I_XPHY_n_45 ,\NIBBLE[5].UNISIM.I_XPHY_n_46 ,\NIBBLE[5].UNISIM.I_XPHY_n_47 ,\NIBBLE[5].UNISIM.I_XPHY_n_48 ,\NIBBLE[5].UNISIM.I_XPHY_n_49 ,\NIBBLE[5].UNISIM.I_XPHY_n_50 ,\NIBBLE[5].UNISIM.I_XPHY_n_51 ,\NIBBLE[5].UNISIM.I_XPHY_n_52 ,\NIBBLE[5].UNISIM.I_XPHY_n_53 ,\NIBBLE[5].UNISIM.I_XPHY_n_54 ,\NIBBLE[5].UNISIM.I_XPHY_n_55 ,\NIBBLE[5].UNISIM.I_XPHY_n_56 ,\NIBBLE[5].UNISIM.I_XPHY_n_57 ,\NIBBLE[5].UNISIM.I_XPHY_n_58 ,\NIBBLE[5].UNISIM.I_XPHY_n_59 ,\NIBBLE[5].UNISIM.I_XPHY_n_60 ,\NIBBLE[5].UNISIM.I_XPHY_n_61 ,\NIBBLE[5].UNISIM.I_XPHY_n_62 ,\NIBBLE[5].UNISIM.I_XPHY_n_63 ,\NIBBLE[5].UNISIM.I_XPHY_n_64 ,\NIBBLE[5].UNISIM.I_XPHY_n_65 ,\NIBBLE[5].UNISIM.I_XPHY_n_66 ,\NIBBLE[5].UNISIM.I_XPHY_n_67 ,\NIBBLE[5].UNISIM.I_XPHY_n_68 ,\NIBBLE[5].UNISIM.I_XPHY_n_69 ,\NIBBLE[5].UNISIM.I_XPHY_n_70 ,\NIBBLE[5].UNISIM.I_XPHY_n_71 ,\NIBBLE[5].UNISIM.I_XPHY_n_72 ,\NIBBLE[5].UNISIM.I_XPHY_n_73 ,\NIBBLE[5].UNISIM.I_XPHY_n_74 ,\NIBBLE[5].UNISIM.I_XPHY_n_75 ,\NIBBLE[5].UNISIM.I_XPHY_n_76 ,\NIBBLE[5].UNISIM.I_XPHY_n_77 ,\NIBBLE[5].UNISIM.I_XPHY_n_78 ,\NIBBLE[5].UNISIM.I_XPHY_n_79 ,\NIBBLE[5].UNISIM.I_XPHY_n_80 ,\NIBBLE[5].UNISIM.I_XPHY_n_81 }),
        .CTRL_CLK(ctrl_clk[5]),
        .D0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DATAIN(DATAIN[35:30]),
        .DLY_RDY(p_17_in19_in),
        .DYN_DCI({\NIBBLE[5].UNISIM.I_XPHY_n_82 ,\NIBBLE[5].UNISIM.I_XPHY_n_83 ,\NIBBLE[5].UNISIM.I_XPHY_n_84 ,\NIBBLE[5].UNISIM.I_XPHY_n_85 ,\NIBBLE[5].UNISIM.I_XPHY_n_86 ,\NIBBLE[5].UNISIM.I_XPHY_n_87 }),
        .EN_VTC(en_vtc),
        .FIFO_EMPTY(FIFO_EMPTY[5]),
        .FIFO_RDEN(fifo_rd_en),
        .FIFO_RD_CLK(fifo_rd_clk),
        .FIFO_WR_CLK(fifo_wr_clk[5]),
        .GT_STATUS(gt_status[5]),
        .IBUF_DISABLE({\NIBBLE[5].UNISIM.I_XPHY_n_88 ,\NIBBLE[5].UNISIM.I_XPHY_n_89 ,\NIBBLE[5].UNISIM.I_XPHY_n_90 ,\NIBBLE[5].UNISIM.I_XPHY_n_91 ,\NIBBLE[5].UNISIM.I_XPHY_n_92 ,\NIBBLE[5].UNISIM.I_XPHY_n_93 }),
        .INC({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NCLK_NIBBLE_IN(NCLK_NIBBLE_OUT[4]),
        .NCLK_NIBBLE_OUT(NCLK_NIBBLE_OUT[5]),
        .O0(\NLW_NIBBLE[5].UNISIM.I_XPHY_O0_UNCONNECTED [5:0]),
        .PCLK_NIBBLE_IN(PCLK_NIBBLE_OUT[4]),
        .PCLK_NIBBLE_OUT(PCLK_NIBBLE_OUT[5]),
        .PHY_RDCS0(phy_rdcs0[23:20]),
        .PHY_RDCS1(phy_rdcs1[23:20]),
        .PHY_RDEN({1'b0,1'b0,1'b0,1'b0}),
        .PHY_RDY(p_17_in),
        .PHY_WRCS0(phy_wrcs0[23:20]),
        .PHY_WRCS1(phy_wrcs1[23:20]),
        .PHY_WREN({1'b0,1'b0,1'b0,1'b0}),
        .PLL_CLK(bank0_pll_clkoutphy),
        .Q0({Q[62],Q[60],\NIBBLE[5].UNISIM.I_XPHY_n_108 ,\NIBBLE[5].UNISIM.I_XPHY_n_109 ,Q[63],Q[61],\NIBBLE[5].UNISIM.I_XPHY_n_112 ,\NIBBLE[5].UNISIM.I_XPHY_n_113 }),
        .Q1({\NIBBLE[5].UNISIM.I_XPHY_n_114 ,\NIBBLE[5].UNISIM.I_XPHY_n_115 ,\NIBBLE[5].UNISIM.I_XPHY_n_116 ,\NIBBLE[5].UNISIM.I_XPHY_n_117 ,\NIBBLE[5].UNISIM.I_XPHY_n_118 ,\NIBBLE[5].UNISIM.I_XPHY_n_119 ,\NIBBLE[5].UNISIM.I_XPHY_n_120 ,\NIBBLE[5].UNISIM.I_XPHY_n_121 }),
        .Q2({Q[66],Q[64],\NIBBLE[5].UNISIM.I_XPHY_n_124 ,\NIBBLE[5].UNISIM.I_XPHY_n_125 ,Q[67],Q[65],\NIBBLE[5].UNISIM.I_XPHY_n_128 ,\NIBBLE[5].UNISIM.I_XPHY_n_129 }),
        .Q3({\NIBBLE[5].UNISIM.I_XPHY_n_130 ,\NIBBLE[5].UNISIM.I_XPHY_n_131 ,\NIBBLE[5].UNISIM.I_XPHY_n_132 ,\NIBBLE[5].UNISIM.I_XPHY_n_133 ,\NIBBLE[5].UNISIM.I_XPHY_n_134 ,\NIBBLE[5].UNISIM.I_XPHY_n_135 ,\NIBBLE[5].UNISIM.I_XPHY_n_136 ,\NIBBLE[5].UNISIM.I_XPHY_n_137 }),
        .Q4({Q[70],Q[68],\NIBBLE[5].UNISIM.I_XPHY_n_140 ,\NIBBLE[5].UNISIM.I_XPHY_n_141 ,Q[71],Q[69],\NIBBLE[5].UNISIM.I_XPHY_n_144 ,\NIBBLE[5].UNISIM.I_XPHY_n_145 }),
        .Q5({\NIBBLE[5].UNISIM.I_XPHY_n_146 ,\NIBBLE[5].UNISIM.I_XPHY_n_147 ,\NIBBLE[5].UNISIM.I_XPHY_n_148 ,\NIBBLE[5].UNISIM.I_XPHY_n_149 ,\NIBBLE[5].UNISIM.I_XPHY_n_150 ,\NIBBLE[5].UNISIM.I_XPHY_n_151 ,\NIBBLE[5].UNISIM.I_XPHY_n_152 ,\NIBBLE[5].UNISIM.I_XPHY_n_153 }),
        .RIU_ADDR(riu_addr[47:40]),
        .RIU_NIBBLE_SEL(riu_nibble_sel[5]),
        .RIU_RD_DATA(riu_rd_data[95:80]),
        .RIU_RD_VALID(riu_rd_valid[5]),
        .RIU_WR_DATA(riu_wr_data[95:80]),
        .RIU_WR_EN(riu_wr_en[5]),
        .RST(RX_RST),
        .RXTX_SEL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .RX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T_OUT(\NLW_NIBBLE[5].UNISIM.I_XPHY_T_OUT_UNCONNECTED [5:0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  XPHY #(
    .CASCADE_0("FALSE"),
    .CASCADE_1("FALSE"),
    .CASCADE_2("FALSE"),
    .CASCADE_3("FALSE"),
    .CASCADE_4("FALSE"),
    .CASCADE_5("FALSE"),
    .CONTINUOUS_DQS("FALSE"),
    .CRSE_DLY_EN("TRUE"),
    .DELAY_VALUE_0(0),
    .DELAY_VALUE_1(0),
    .DELAY_VALUE_2(0),
    .DELAY_VALUE_3(0),
    .DELAY_VALUE_4(0),
    .DELAY_VALUE_5(0),
    .DIS_IDLY_VT_TRACK("FALSE"),
    .DIS_ODLY_VT_TRACK("FALSE"),
    .DIS_QDLY_VT_TRACK("FALSE"),
    .DQS_MODE("DDR4_1TCK"),
    .DQS_SRC("EXTERN"),
    .EN_CLK_TO_LOWER("ENABLE"),
    .EN_CLK_TO_UPPER("DISABLE"),
    .EN_DYN_DLY_MODE("FALSE"),
    .EN_OTHER_NCLK("FALSE"),
    .EN_OTHER_PCLK("FALSE"),
    .FAST_CK("FALSE"),
    .FIFO_MODE_0("ASYNC"),
    .FIFO_MODE_1("ASYNC"),
    .FIFO_MODE_2("ASYNC"),
    .FIFO_MODE_3("ASYNC"),
    .FIFO_MODE_4("ASYNC"),
    .FIFO_MODE_5("ASYNC"),
    .IBUF_DIS_SRC_0("EXTERNAL"),
    .IBUF_DIS_SRC_1("EXTERNAL"),
    .IBUF_DIS_SRC_2("EXTERNAL"),
    .IBUF_DIS_SRC_3("EXTERNAL"),
    .IBUF_DIS_SRC_4("EXTERNAL"),
    .IBUF_DIS_SRC_5("EXTERNAL"),
    .INV_RXCLK("FALSE"),
    .LP4_DQS("FALSE"),
    .ODELAY_BYPASS_0("FALSE"),
    .ODELAY_BYPASS_1("FALSE"),
    .ODELAY_BYPASS_2("FALSE"),
    .ODELAY_BYPASS_3("FALSE"),
    .ODELAY_BYPASS_4("FALSE"),
    .ODELAY_BYPASS_5("FALSE"),
    .ODT_SRC_0("EXTERNAL"),
    .ODT_SRC_1("EXTERNAL"),
    .ODT_SRC_2("EXTERNAL"),
    .ODT_SRC_3("EXTERNAL"),
    .ODT_SRC_4("EXTERNAL"),
    .ODT_SRC_5("EXTERNAL"),
    .PRIME_VAL(1'b0),
    .REFCLK_FREQUENCY(1000.000000),
    .RX_CLK_PHASE_N("SHIFT_90"),
    .RX_CLK_PHASE_P("SHIFT_90"),
    .RX_DATA_WIDTH(4),
    .RX_GATING("DISABLE"),
    .SELF_CALIBRATE("ENABLE"),
    .SERIAL_MODE("FALSE"),
    .TBYTE_CTL_0("T"),
    .TBYTE_CTL_1("T"),
    .TBYTE_CTL_2("T"),
    .TBYTE_CTL_3("T"),
    .TBYTE_CTL_4("T"),
    .TBYTE_CTL_5("T"),
    .TXRX_LOOPBACK_0("FALSE"),
    .TXRX_LOOPBACK_1("FALSE"),
    .TXRX_LOOPBACK_2("FALSE"),
    .TXRX_LOOPBACK_3("FALSE"),
    .TXRX_LOOPBACK_4("FALSE"),
    .TXRX_LOOPBACK_5("FALSE"),
    .TX_DATA_WIDTH(8),
    .TX_GATING("DISABLE"),
    .TX_INIT_0(1'b0),
    .TX_INIT_1(1'b0),
    .TX_INIT_2(1'b0),
    .TX_INIT_3(1'b0),
    .TX_INIT_4(1'b0),
    .TX_INIT_5(1'b0),
    .TX_INIT_TRI(1'b1),
    .TX_OUTPUT_PHASE_90_0("FALSE"),
    .TX_OUTPUT_PHASE_90_1("FALSE"),
    .TX_OUTPUT_PHASE_90_2("FALSE"),
    .TX_OUTPUT_PHASE_90_3("FALSE"),
    .TX_OUTPUT_PHASE_90_4("FALSE"),
    .TX_OUTPUT_PHASE_90_5("FALSE"),
    .TX_OUTPUT_PHASE_90_TRI("FALSE"),
    .WRITE_LEVELING("FALSE")) 
    \NIBBLE[6].UNISIM.I_XPHY 
       (.BISC_START_IN(bisc_start_wire[6]),
        .BISC_START_OUT(bisc_start_wire[7]),
        .BISC_STOP_IN(bisc_stop_in[6]),
        .BISC_STOP_OUT(bisc_stop_in[5]),
        .CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLK_FROM_OTHER_XPHY(CLK_TO_UPPER[4]),
        .CLK_TO_LOWER(CLK_TO_LOWER[6]),
        .CLK_TO_UPPER(\NLW_NIBBLE[6].UNISIM.I_XPHY_CLK_TO_UPPER_UNCONNECTED ),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT({\NIBBLE[6].UNISIM.I_XPHY_n_28 ,\NIBBLE[6].UNISIM.I_XPHY_n_29 ,\NIBBLE[6].UNISIM.I_XPHY_n_30 ,\NIBBLE[6].UNISIM.I_XPHY_n_31 ,\NIBBLE[6].UNISIM.I_XPHY_n_32 ,\NIBBLE[6].UNISIM.I_XPHY_n_33 ,\NIBBLE[6].UNISIM.I_XPHY_n_34 ,\NIBBLE[6].UNISIM.I_XPHY_n_35 ,\NIBBLE[6].UNISIM.I_XPHY_n_36 ,\NIBBLE[6].UNISIM.I_XPHY_n_37 ,\NIBBLE[6].UNISIM.I_XPHY_n_38 ,\NIBBLE[6].UNISIM.I_XPHY_n_39 ,\NIBBLE[6].UNISIM.I_XPHY_n_40 ,\NIBBLE[6].UNISIM.I_XPHY_n_41 ,\NIBBLE[6].UNISIM.I_XPHY_n_42 ,\NIBBLE[6].UNISIM.I_XPHY_n_43 ,\NIBBLE[6].UNISIM.I_XPHY_n_44 ,\NIBBLE[6].UNISIM.I_XPHY_n_45 ,\NIBBLE[6].UNISIM.I_XPHY_n_46 ,\NIBBLE[6].UNISIM.I_XPHY_n_47 ,\NIBBLE[6].UNISIM.I_XPHY_n_48 ,\NIBBLE[6].UNISIM.I_XPHY_n_49 ,\NIBBLE[6].UNISIM.I_XPHY_n_50 ,\NIBBLE[6].UNISIM.I_XPHY_n_51 ,\NIBBLE[6].UNISIM.I_XPHY_n_52 ,\NIBBLE[6].UNISIM.I_XPHY_n_53 ,\NIBBLE[6].UNISIM.I_XPHY_n_54 ,\NIBBLE[6].UNISIM.I_XPHY_n_55 ,\NIBBLE[6].UNISIM.I_XPHY_n_56 ,\NIBBLE[6].UNISIM.I_XPHY_n_57 ,\NIBBLE[6].UNISIM.I_XPHY_n_58 ,\NIBBLE[6].UNISIM.I_XPHY_n_59 ,\NIBBLE[6].UNISIM.I_XPHY_n_60 ,\NIBBLE[6].UNISIM.I_XPHY_n_61 ,\NIBBLE[6].UNISIM.I_XPHY_n_62 ,\NIBBLE[6].UNISIM.I_XPHY_n_63 ,\NIBBLE[6].UNISIM.I_XPHY_n_64 ,\NIBBLE[6].UNISIM.I_XPHY_n_65 ,\NIBBLE[6].UNISIM.I_XPHY_n_66 ,\NIBBLE[6].UNISIM.I_XPHY_n_67 ,\NIBBLE[6].UNISIM.I_XPHY_n_68 ,\NIBBLE[6].UNISIM.I_XPHY_n_69 ,\NIBBLE[6].UNISIM.I_XPHY_n_70 ,\NIBBLE[6].UNISIM.I_XPHY_n_71 ,\NIBBLE[6].UNISIM.I_XPHY_n_72 ,\NIBBLE[6].UNISIM.I_XPHY_n_73 ,\NIBBLE[6].UNISIM.I_XPHY_n_74 ,\NIBBLE[6].UNISIM.I_XPHY_n_75 ,\NIBBLE[6].UNISIM.I_XPHY_n_76 ,\NIBBLE[6].UNISIM.I_XPHY_n_77 ,\NIBBLE[6].UNISIM.I_XPHY_n_78 ,\NIBBLE[6].UNISIM.I_XPHY_n_79 ,\NIBBLE[6].UNISIM.I_XPHY_n_80 ,\NIBBLE[6].UNISIM.I_XPHY_n_81 }),
        .CTRL_CLK(ctrl_clk[6]),
        .D0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DATAIN(DATAIN[41:36]),
        .DLY_RDY(p_16_in18_in),
        .DYN_DCI({\NIBBLE[6].UNISIM.I_XPHY_n_82 ,\NIBBLE[6].UNISIM.I_XPHY_n_83 ,\NIBBLE[6].UNISIM.I_XPHY_n_84 ,\NIBBLE[6].UNISIM.I_XPHY_n_85 ,\NIBBLE[6].UNISIM.I_XPHY_n_86 ,\NIBBLE[6].UNISIM.I_XPHY_n_87 }),
        .EN_VTC(en_vtc),
        .FIFO_EMPTY(FIFO_EMPTY[6]),
        .FIFO_RDEN(fifo_rd_en),
        .FIFO_RD_CLK(fifo_rd_clk),
        .FIFO_WR_CLK(fifo_wr_clk[6]),
        .GT_STATUS(gt_status[6]),
        .IBUF_DISABLE({\NIBBLE[6].UNISIM.I_XPHY_n_88 ,\NIBBLE[6].UNISIM.I_XPHY_n_89 ,\NIBBLE[6].UNISIM.I_XPHY_n_90 ,\NIBBLE[6].UNISIM.I_XPHY_n_91 ,\NIBBLE[6].UNISIM.I_XPHY_n_92 ,\NIBBLE[6].UNISIM.I_XPHY_n_93 }),
        .INC({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NCLK_NIBBLE_IN(NCLK_NIBBLE_OUT[7]),
        .NCLK_NIBBLE_OUT(NCLK_NIBBLE_OUT[6]),
        .O0(\NLW_NIBBLE[6].UNISIM.I_XPHY_O0_UNCONNECTED [5:0]),
        .PCLK_NIBBLE_IN(PCLK_NIBBLE_OUT[7]),
        .PCLK_NIBBLE_OUT(PCLK_NIBBLE_OUT[6]),
        .PHY_RDCS0(phy_rdcs0[27:24]),
        .PHY_RDCS1(phy_rdcs1[27:24]),
        .PHY_RDEN({1'b0,1'b0,1'b0,1'b0}),
        .PHY_RDY(p_16_in),
        .PHY_WRCS0(phy_wrcs0[27:24]),
        .PHY_WRCS1(phy_wrcs1[27:24]),
        .PHY_WREN({1'b0,1'b0,1'b0,1'b0}),
        .PLL_CLK(bank0_pll_clkoutphy),
        .Q0({Q[74],Q[72],\NIBBLE[6].UNISIM.I_XPHY_n_108 ,\NIBBLE[6].UNISIM.I_XPHY_n_109 ,Q[75],Q[73],\NIBBLE[6].UNISIM.I_XPHY_n_112 ,\NIBBLE[6].UNISIM.I_XPHY_n_113 }),
        .Q1({\NIBBLE[6].UNISIM.I_XPHY_n_114 ,\NIBBLE[6].UNISIM.I_XPHY_n_115 ,\NIBBLE[6].UNISIM.I_XPHY_n_116 ,\NIBBLE[6].UNISIM.I_XPHY_n_117 ,\NIBBLE[6].UNISIM.I_XPHY_n_118 ,\NIBBLE[6].UNISIM.I_XPHY_n_119 ,\NIBBLE[6].UNISIM.I_XPHY_n_120 ,\NIBBLE[6].UNISIM.I_XPHY_n_121 }),
        .Q2({Q[78],Q[76],\NIBBLE[6].UNISIM.I_XPHY_n_124 ,\NIBBLE[6].UNISIM.I_XPHY_n_125 ,Q[79],Q[77],\NIBBLE[6].UNISIM.I_XPHY_n_128 ,\NIBBLE[6].UNISIM.I_XPHY_n_129 }),
        .Q3({\NIBBLE[6].UNISIM.I_XPHY_n_130 ,\NIBBLE[6].UNISIM.I_XPHY_n_131 ,\NIBBLE[6].UNISIM.I_XPHY_n_132 ,\NIBBLE[6].UNISIM.I_XPHY_n_133 ,\NIBBLE[6].UNISIM.I_XPHY_n_134 ,\NIBBLE[6].UNISIM.I_XPHY_n_135 ,\NIBBLE[6].UNISIM.I_XPHY_n_136 ,\NIBBLE[6].UNISIM.I_XPHY_n_137 }),
        .Q4({Q[82],Q[80],\NIBBLE[6].UNISIM.I_XPHY_n_140 ,\NIBBLE[6].UNISIM.I_XPHY_n_141 ,Q[83],Q[81],\NIBBLE[6].UNISIM.I_XPHY_n_144 ,\NIBBLE[6].UNISIM.I_XPHY_n_145 }),
        .Q5({\NIBBLE[6].UNISIM.I_XPHY_n_146 ,\NIBBLE[6].UNISIM.I_XPHY_n_147 ,\NIBBLE[6].UNISIM.I_XPHY_n_148 ,\NIBBLE[6].UNISIM.I_XPHY_n_149 ,\NIBBLE[6].UNISIM.I_XPHY_n_150 ,\NIBBLE[6].UNISIM.I_XPHY_n_151 ,\NIBBLE[6].UNISIM.I_XPHY_n_152 ,\NIBBLE[6].UNISIM.I_XPHY_n_153 }),
        .RIU_ADDR(riu_addr[55:48]),
        .RIU_NIBBLE_SEL(riu_nibble_sel[6]),
        .RIU_RD_DATA(riu_rd_data[111:96]),
        .RIU_RD_VALID(riu_rd_valid[6]),
        .RIU_WR_DATA(riu_wr_data[111:96]),
        .RIU_WR_EN(riu_wr_en[6]),
        .RST(RX_RST),
        .RXTX_SEL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .RX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T_OUT(\NLW_NIBBLE[6].UNISIM.I_XPHY_T_OUT_UNCONNECTED [5:0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  XPHY #(
    .CASCADE_0("FALSE"),
    .CASCADE_1("FALSE"),
    .CASCADE_2("FALSE"),
    .CASCADE_3("FALSE"),
    .CASCADE_4("FALSE"),
    .CASCADE_5("FALSE"),
    .CONTINUOUS_DQS("FALSE"),
    .CRSE_DLY_EN("TRUE"),
    .DELAY_VALUE_0(0),
    .DELAY_VALUE_1(0),
    .DELAY_VALUE_2(0),
    .DELAY_VALUE_3(0),
    .DELAY_VALUE_4(0),
    .DELAY_VALUE_5(0),
    .DIS_IDLY_VT_TRACK("FALSE"),
    .DIS_ODLY_VT_TRACK("FALSE"),
    .DIS_QDLY_VT_TRACK("FALSE"),
    .DQS_MODE("DDR4_1TCK"),
    .DQS_SRC("EXTERN"),
    .EN_CLK_TO_LOWER("DISABLE"),
    .EN_CLK_TO_UPPER("DISABLE"),
    .EN_DYN_DLY_MODE("FALSE"),
    .EN_OTHER_NCLK("TRUE"),
    .EN_OTHER_PCLK("TRUE"),
    .FAST_CK("FALSE"),
    .FIFO_MODE_0("ASYNC"),
    .FIFO_MODE_1("ASYNC"),
    .FIFO_MODE_2("ASYNC"),
    .FIFO_MODE_3("ASYNC"),
    .FIFO_MODE_4("ASYNC"),
    .FIFO_MODE_5("ASYNC"),
    .IBUF_DIS_SRC_0("EXTERNAL"),
    .IBUF_DIS_SRC_1("EXTERNAL"),
    .IBUF_DIS_SRC_2("EXTERNAL"),
    .IBUF_DIS_SRC_3("EXTERNAL"),
    .IBUF_DIS_SRC_4("EXTERNAL"),
    .IBUF_DIS_SRC_5("EXTERNAL"),
    .INV_RXCLK("FALSE"),
    .LP4_DQS("FALSE"),
    .ODELAY_BYPASS_0("FALSE"),
    .ODELAY_BYPASS_1("FALSE"),
    .ODELAY_BYPASS_2("FALSE"),
    .ODELAY_BYPASS_3("FALSE"),
    .ODELAY_BYPASS_4("FALSE"),
    .ODELAY_BYPASS_5("FALSE"),
    .ODT_SRC_0("EXTERNAL"),
    .ODT_SRC_1("EXTERNAL"),
    .ODT_SRC_2("EXTERNAL"),
    .ODT_SRC_3("EXTERNAL"),
    .ODT_SRC_4("EXTERNAL"),
    .ODT_SRC_5("EXTERNAL"),
    .PRIME_VAL(1'b0),
    .REFCLK_FREQUENCY(1000.000000),
    .RX_CLK_PHASE_N("SHIFT_90"),
    .RX_CLK_PHASE_P("SHIFT_90"),
    .RX_DATA_WIDTH(4),
    .RX_GATING("DISABLE"),
    .SELF_CALIBRATE("ENABLE"),
    .SERIAL_MODE("FALSE"),
    .TBYTE_CTL_0("T"),
    .TBYTE_CTL_1("T"),
    .TBYTE_CTL_2("T"),
    .TBYTE_CTL_3("T"),
    .TBYTE_CTL_4("T"),
    .TBYTE_CTL_5("T"),
    .TXRX_LOOPBACK_0("FALSE"),
    .TXRX_LOOPBACK_1("FALSE"),
    .TXRX_LOOPBACK_2("FALSE"),
    .TXRX_LOOPBACK_3("FALSE"),
    .TXRX_LOOPBACK_4("FALSE"),
    .TXRX_LOOPBACK_5("FALSE"),
    .TX_DATA_WIDTH(8),
    .TX_GATING("DISABLE"),
    .TX_INIT_0(1'b0),
    .TX_INIT_1(1'b0),
    .TX_INIT_2(1'b0),
    .TX_INIT_3(1'b0),
    .TX_INIT_4(1'b0),
    .TX_INIT_5(1'b0),
    .TX_INIT_TRI(1'b1),
    .TX_OUTPUT_PHASE_90_0("FALSE"),
    .TX_OUTPUT_PHASE_90_1("FALSE"),
    .TX_OUTPUT_PHASE_90_2("FALSE"),
    .TX_OUTPUT_PHASE_90_3("FALSE"),
    .TX_OUTPUT_PHASE_90_4("FALSE"),
    .TX_OUTPUT_PHASE_90_5("FALSE"),
    .TX_OUTPUT_PHASE_90_TRI("FALSE"),
    .WRITE_LEVELING("FALSE")) 
    \NIBBLE[7].UNISIM.I_XPHY 
       (.BISC_START_IN(bisc_start_wire[7]),
        .BISC_START_OUT(bisc_start_wire[8]),
        .BISC_STOP_IN(bisc_stop_in[7]),
        .BISC_STOP_OUT(bisc_stop_in[6]),
        .CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLK_FROM_OTHER_XPHY(CLK_TO_UPPER[5]),
        .CLK_TO_LOWER(\NLW_NIBBLE[7].UNISIM.I_XPHY_CLK_TO_LOWER_UNCONNECTED ),
        .CLK_TO_UPPER(\NLW_NIBBLE[7].UNISIM.I_XPHY_CLK_TO_UPPER_UNCONNECTED ),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT({\NIBBLE[7].UNISIM.I_XPHY_n_28 ,\NIBBLE[7].UNISIM.I_XPHY_n_29 ,\NIBBLE[7].UNISIM.I_XPHY_n_30 ,\NIBBLE[7].UNISIM.I_XPHY_n_31 ,\NIBBLE[7].UNISIM.I_XPHY_n_32 ,\NIBBLE[7].UNISIM.I_XPHY_n_33 ,\NIBBLE[7].UNISIM.I_XPHY_n_34 ,\NIBBLE[7].UNISIM.I_XPHY_n_35 ,\NIBBLE[7].UNISIM.I_XPHY_n_36 ,\NIBBLE[7].UNISIM.I_XPHY_n_37 ,\NIBBLE[7].UNISIM.I_XPHY_n_38 ,\NIBBLE[7].UNISIM.I_XPHY_n_39 ,\NIBBLE[7].UNISIM.I_XPHY_n_40 ,\NIBBLE[7].UNISIM.I_XPHY_n_41 ,\NIBBLE[7].UNISIM.I_XPHY_n_42 ,\NIBBLE[7].UNISIM.I_XPHY_n_43 ,\NIBBLE[7].UNISIM.I_XPHY_n_44 ,\NIBBLE[7].UNISIM.I_XPHY_n_45 ,\NIBBLE[7].UNISIM.I_XPHY_n_46 ,\NIBBLE[7].UNISIM.I_XPHY_n_47 ,\NIBBLE[7].UNISIM.I_XPHY_n_48 ,\NIBBLE[7].UNISIM.I_XPHY_n_49 ,\NIBBLE[7].UNISIM.I_XPHY_n_50 ,\NIBBLE[7].UNISIM.I_XPHY_n_51 ,\NIBBLE[7].UNISIM.I_XPHY_n_52 ,\NIBBLE[7].UNISIM.I_XPHY_n_53 ,\NIBBLE[7].UNISIM.I_XPHY_n_54 ,\NIBBLE[7].UNISIM.I_XPHY_n_55 ,\NIBBLE[7].UNISIM.I_XPHY_n_56 ,\NIBBLE[7].UNISIM.I_XPHY_n_57 ,\NIBBLE[7].UNISIM.I_XPHY_n_58 ,\NIBBLE[7].UNISIM.I_XPHY_n_59 ,\NIBBLE[7].UNISIM.I_XPHY_n_60 ,\NIBBLE[7].UNISIM.I_XPHY_n_61 ,\NIBBLE[7].UNISIM.I_XPHY_n_62 ,\NIBBLE[7].UNISIM.I_XPHY_n_63 ,\NIBBLE[7].UNISIM.I_XPHY_n_64 ,\NIBBLE[7].UNISIM.I_XPHY_n_65 ,\NIBBLE[7].UNISIM.I_XPHY_n_66 ,\NIBBLE[7].UNISIM.I_XPHY_n_67 ,\NIBBLE[7].UNISIM.I_XPHY_n_68 ,\NIBBLE[7].UNISIM.I_XPHY_n_69 ,\NIBBLE[7].UNISIM.I_XPHY_n_70 ,\NIBBLE[7].UNISIM.I_XPHY_n_71 ,\NIBBLE[7].UNISIM.I_XPHY_n_72 ,\NIBBLE[7].UNISIM.I_XPHY_n_73 ,\NIBBLE[7].UNISIM.I_XPHY_n_74 ,\NIBBLE[7].UNISIM.I_XPHY_n_75 ,\NIBBLE[7].UNISIM.I_XPHY_n_76 ,\NIBBLE[7].UNISIM.I_XPHY_n_77 ,\NIBBLE[7].UNISIM.I_XPHY_n_78 ,\NIBBLE[7].UNISIM.I_XPHY_n_79 ,\NIBBLE[7].UNISIM.I_XPHY_n_80 ,\NIBBLE[7].UNISIM.I_XPHY_n_81 }),
        .CTRL_CLK(ctrl_clk[7]),
        .D0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DATAIN(DATAIN[47:42]),
        .DLY_RDY(p_15_in17_in),
        .DYN_DCI({\NIBBLE[7].UNISIM.I_XPHY_n_82 ,\NIBBLE[7].UNISIM.I_XPHY_n_83 ,\NIBBLE[7].UNISIM.I_XPHY_n_84 ,\NIBBLE[7].UNISIM.I_XPHY_n_85 ,\NIBBLE[7].UNISIM.I_XPHY_n_86 ,\NIBBLE[7].UNISIM.I_XPHY_n_87 }),
        .EN_VTC(en_vtc),
        .FIFO_EMPTY(FIFO_EMPTY[7]),
        .FIFO_RDEN(fifo_rd_en),
        .FIFO_RD_CLK(fifo_rd_clk),
        .FIFO_WR_CLK(fifo_wr_clk[7]),
        .GT_STATUS(gt_status[7]),
        .IBUF_DISABLE({\NIBBLE[7].UNISIM.I_XPHY_n_88 ,\NIBBLE[7].UNISIM.I_XPHY_n_89 ,\NIBBLE[7].UNISIM.I_XPHY_n_90 ,\NIBBLE[7].UNISIM.I_XPHY_n_91 ,\NIBBLE[7].UNISIM.I_XPHY_n_92 ,\NIBBLE[7].UNISIM.I_XPHY_n_93 }),
        .INC({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NCLK_NIBBLE_IN(NCLK_NIBBLE_OUT[6]),
        .NCLK_NIBBLE_OUT(NCLK_NIBBLE_OUT[7]),
        .O0(\NLW_NIBBLE[7].UNISIM.I_XPHY_O0_UNCONNECTED [5:0]),
        .PCLK_NIBBLE_IN(PCLK_NIBBLE_OUT[6]),
        .PCLK_NIBBLE_OUT(PCLK_NIBBLE_OUT[7]),
        .PHY_RDCS0(phy_rdcs0[31:28]),
        .PHY_RDCS1(phy_rdcs1[31:28]),
        .PHY_RDEN({1'b0,1'b0,1'b0,1'b0}),
        .PHY_RDY(p_15_in),
        .PHY_WRCS0(phy_wrcs0[31:28]),
        .PHY_WRCS1(phy_wrcs1[31:28]),
        .PHY_WREN({1'b0,1'b0,1'b0,1'b0}),
        .PLL_CLK(bank0_pll_clkoutphy),
        .Q0({Q[86],Q[84],\NIBBLE[7].UNISIM.I_XPHY_n_108 ,\NIBBLE[7].UNISIM.I_XPHY_n_109 ,Q[87],Q[85],\NIBBLE[7].UNISIM.I_XPHY_n_112 ,\NIBBLE[7].UNISIM.I_XPHY_n_113 }),
        .Q1({\NIBBLE[7].UNISIM.I_XPHY_n_114 ,\NIBBLE[7].UNISIM.I_XPHY_n_115 ,\NIBBLE[7].UNISIM.I_XPHY_n_116 ,\NIBBLE[7].UNISIM.I_XPHY_n_117 ,\NIBBLE[7].UNISIM.I_XPHY_n_118 ,\NIBBLE[7].UNISIM.I_XPHY_n_119 ,\NIBBLE[7].UNISIM.I_XPHY_n_120 ,\NIBBLE[7].UNISIM.I_XPHY_n_121 }),
        .Q2({Q[90],Q[88],\NIBBLE[7].UNISIM.I_XPHY_n_124 ,\NIBBLE[7].UNISIM.I_XPHY_n_125 ,Q[91],Q[89],\NIBBLE[7].UNISIM.I_XPHY_n_128 ,\NIBBLE[7].UNISIM.I_XPHY_n_129 }),
        .Q3({\NIBBLE[7].UNISIM.I_XPHY_n_130 ,\NIBBLE[7].UNISIM.I_XPHY_n_131 ,\NIBBLE[7].UNISIM.I_XPHY_n_132 ,\NIBBLE[7].UNISIM.I_XPHY_n_133 ,\NIBBLE[7].UNISIM.I_XPHY_n_134 ,\NIBBLE[7].UNISIM.I_XPHY_n_135 ,\NIBBLE[7].UNISIM.I_XPHY_n_136 ,\NIBBLE[7].UNISIM.I_XPHY_n_137 }),
        .Q4({Q[94],Q[92],\NIBBLE[7].UNISIM.I_XPHY_n_140 ,\NIBBLE[7].UNISIM.I_XPHY_n_141 ,Q[95],Q[93],\NIBBLE[7].UNISIM.I_XPHY_n_144 ,\NIBBLE[7].UNISIM.I_XPHY_n_145 }),
        .Q5({\NIBBLE[7].UNISIM.I_XPHY_n_146 ,\NIBBLE[7].UNISIM.I_XPHY_n_147 ,\NIBBLE[7].UNISIM.I_XPHY_n_148 ,\NIBBLE[7].UNISIM.I_XPHY_n_149 ,\NIBBLE[7].UNISIM.I_XPHY_n_150 ,\NIBBLE[7].UNISIM.I_XPHY_n_151 ,\NIBBLE[7].UNISIM.I_XPHY_n_152 ,\NIBBLE[7].UNISIM.I_XPHY_n_153 }),
        .RIU_ADDR(riu_addr[63:56]),
        .RIU_NIBBLE_SEL(riu_nibble_sel[7]),
        .RIU_RD_DATA(riu_rd_data[127:112]),
        .RIU_RD_VALID(riu_rd_valid[7]),
        .RIU_WR_DATA(riu_wr_data[127:112]),
        .RIU_WR_EN(riu_wr_en[7]),
        .RST(RX_RST),
        .RXTX_SEL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .RX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T_OUT(\NLW_NIBBLE[7].UNISIM.I_XPHY_T_OUT_UNCONNECTED [5:0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  XPHY #(
    .CASCADE_0("FALSE"),
    .CASCADE_1("FALSE"),
    .CASCADE_2("FALSE"),
    .CASCADE_3("FALSE"),
    .CASCADE_4("FALSE"),
    .CASCADE_5("FALSE"),
    .CONTINUOUS_DQS("FALSE"),
    .CRSE_DLY_EN("TRUE"),
    .DELAY_VALUE_0(0),
    .DELAY_VALUE_1(0),
    .DELAY_VALUE_2(0),
    .DELAY_VALUE_3(0),
    .DELAY_VALUE_4(0),
    .DELAY_VALUE_5(0),
    .DIS_IDLY_VT_TRACK("FALSE"),
    .DIS_ODLY_VT_TRACK("FALSE"),
    .DIS_QDLY_VT_TRACK("FALSE"),
    .DQS_MODE("DDR4_1TCK"),
    .DQS_SRC("EXTERN"),
    .EN_CLK_TO_LOWER("DISABLE"),
    .EN_CLK_TO_UPPER("DISABLE"),
    .EN_DYN_DLY_MODE("FALSE"),
    .EN_OTHER_NCLK("FALSE"),
    .EN_OTHER_PCLK("FALSE"),
    .FAST_CK("FALSE"),
    .FIFO_MODE_0("ASYNC"),
    .FIFO_MODE_1("ASYNC"),
    .FIFO_MODE_2("ASYNC"),
    .FIFO_MODE_3("ASYNC"),
    .FIFO_MODE_4("ASYNC"),
    .FIFO_MODE_5("ASYNC"),
    .IBUF_DIS_SRC_0("EXTERNAL"),
    .IBUF_DIS_SRC_1("EXTERNAL"),
    .IBUF_DIS_SRC_2("EXTERNAL"),
    .IBUF_DIS_SRC_3("EXTERNAL"),
    .IBUF_DIS_SRC_4("EXTERNAL"),
    .IBUF_DIS_SRC_5("EXTERNAL"),
    .INV_RXCLK("FALSE"),
    .LP4_DQS("FALSE"),
    .ODELAY_BYPASS_0("FALSE"),
    .ODELAY_BYPASS_1("FALSE"),
    .ODELAY_BYPASS_2("FALSE"),
    .ODELAY_BYPASS_3("FALSE"),
    .ODELAY_BYPASS_4("FALSE"),
    .ODELAY_BYPASS_5("FALSE"),
    .ODT_SRC_0("EXTERNAL"),
    .ODT_SRC_1("EXTERNAL"),
    .ODT_SRC_2("EXTERNAL"),
    .ODT_SRC_3("EXTERNAL"),
    .ODT_SRC_4("EXTERNAL"),
    .ODT_SRC_5("EXTERNAL"),
    .PRIME_VAL(1'b0),
    .REFCLK_FREQUENCY(1000.000000),
    .RX_CLK_PHASE_N("SHIFT_90"),
    .RX_CLK_PHASE_P("SHIFT_90"),
    .RX_DATA_WIDTH(4),
    .RX_GATING("DISABLE"),
    .SELF_CALIBRATE("ENABLE"),
    .SERIAL_MODE("FALSE"),
    .TBYTE_CTL_0("T"),
    .TBYTE_CTL_1("T"),
    .TBYTE_CTL_2("T"),
    .TBYTE_CTL_3("T"),
    .TBYTE_CTL_4("T"),
    .TBYTE_CTL_5("T"),
    .TXRX_LOOPBACK_0("FALSE"),
    .TXRX_LOOPBACK_1("FALSE"),
    .TXRX_LOOPBACK_2("FALSE"),
    .TXRX_LOOPBACK_3("FALSE"),
    .TXRX_LOOPBACK_4("FALSE"),
    .TXRX_LOOPBACK_5("FALSE"),
    .TX_DATA_WIDTH(8),
    .TX_GATING("DISABLE"),
    .TX_INIT_0(1'b0),
    .TX_INIT_1(1'b0),
    .TX_INIT_2(1'b0),
    .TX_INIT_3(1'b0),
    .TX_INIT_4(1'b0),
    .TX_INIT_5(1'b0),
    .TX_INIT_TRI(1'b1),
    .TX_OUTPUT_PHASE_90_0("FALSE"),
    .TX_OUTPUT_PHASE_90_1("FALSE"),
    .TX_OUTPUT_PHASE_90_2("FALSE"),
    .TX_OUTPUT_PHASE_90_3("FALSE"),
    .TX_OUTPUT_PHASE_90_4("FALSE"),
    .TX_OUTPUT_PHASE_90_5("FALSE"),
    .TX_OUTPUT_PHASE_90_TRI("FALSE"),
    .WRITE_LEVELING("FALSE")) 
    \NIBBLE[8].UNISIM.I_XPHY 
       (.BISC_START_IN(bisc_start_wire[8]),
        .BISC_START_OUT(\NLW_NIBBLE[8].UNISIM.I_XPHY_BISC_START_OUT_UNCONNECTED ),
        .BISC_STOP_IN(1'b1),
        .BISC_STOP_OUT(bisc_stop_in[7]),
        .CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLK_FROM_OTHER_XPHY(CLK_TO_LOWER[6]),
        .CLK_TO_LOWER(\NLW_NIBBLE[8].UNISIM.I_XPHY_CLK_TO_LOWER_UNCONNECTED ),
        .CLK_TO_UPPER(\NLW_NIBBLE[8].UNISIM.I_XPHY_CLK_TO_UPPER_UNCONNECTED ),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT({\NIBBLE[8].UNISIM.I_XPHY_n_28 ,\NIBBLE[8].UNISIM.I_XPHY_n_29 ,\NIBBLE[8].UNISIM.I_XPHY_n_30 ,\NIBBLE[8].UNISIM.I_XPHY_n_31 ,\NIBBLE[8].UNISIM.I_XPHY_n_32 ,\NIBBLE[8].UNISIM.I_XPHY_n_33 ,\NIBBLE[8].UNISIM.I_XPHY_n_34 ,\NIBBLE[8].UNISIM.I_XPHY_n_35 ,\NIBBLE[8].UNISIM.I_XPHY_n_36 ,\NIBBLE[8].UNISIM.I_XPHY_n_37 ,\NIBBLE[8].UNISIM.I_XPHY_n_38 ,\NIBBLE[8].UNISIM.I_XPHY_n_39 ,\NIBBLE[8].UNISIM.I_XPHY_n_40 ,\NIBBLE[8].UNISIM.I_XPHY_n_41 ,\NIBBLE[8].UNISIM.I_XPHY_n_42 ,\NIBBLE[8].UNISIM.I_XPHY_n_43 ,\NIBBLE[8].UNISIM.I_XPHY_n_44 ,\NIBBLE[8].UNISIM.I_XPHY_n_45 ,\NIBBLE[8].UNISIM.I_XPHY_n_46 ,\NIBBLE[8].UNISIM.I_XPHY_n_47 ,\NIBBLE[8].UNISIM.I_XPHY_n_48 ,\NIBBLE[8].UNISIM.I_XPHY_n_49 ,\NIBBLE[8].UNISIM.I_XPHY_n_50 ,\NIBBLE[8].UNISIM.I_XPHY_n_51 ,\NIBBLE[8].UNISIM.I_XPHY_n_52 ,\NIBBLE[8].UNISIM.I_XPHY_n_53 ,\NIBBLE[8].UNISIM.I_XPHY_n_54 ,\NIBBLE[8].UNISIM.I_XPHY_n_55 ,\NIBBLE[8].UNISIM.I_XPHY_n_56 ,\NIBBLE[8].UNISIM.I_XPHY_n_57 ,\NIBBLE[8].UNISIM.I_XPHY_n_58 ,\NIBBLE[8].UNISIM.I_XPHY_n_59 ,\NIBBLE[8].UNISIM.I_XPHY_n_60 ,\NIBBLE[8].UNISIM.I_XPHY_n_61 ,\NIBBLE[8].UNISIM.I_XPHY_n_62 ,\NIBBLE[8].UNISIM.I_XPHY_n_63 ,\NIBBLE[8].UNISIM.I_XPHY_n_64 ,\NIBBLE[8].UNISIM.I_XPHY_n_65 ,\NIBBLE[8].UNISIM.I_XPHY_n_66 ,\NIBBLE[8].UNISIM.I_XPHY_n_67 ,\NIBBLE[8].UNISIM.I_XPHY_n_68 ,\NIBBLE[8].UNISIM.I_XPHY_n_69 ,\NIBBLE[8].UNISIM.I_XPHY_n_70 ,\NIBBLE[8].UNISIM.I_XPHY_n_71 ,\NIBBLE[8].UNISIM.I_XPHY_n_72 ,\NIBBLE[8].UNISIM.I_XPHY_n_73 ,\NIBBLE[8].UNISIM.I_XPHY_n_74 ,\NIBBLE[8].UNISIM.I_XPHY_n_75 ,\NIBBLE[8].UNISIM.I_XPHY_n_76 ,\NIBBLE[8].UNISIM.I_XPHY_n_77 ,\NIBBLE[8].UNISIM.I_XPHY_n_78 ,\NIBBLE[8].UNISIM.I_XPHY_n_79 ,\NIBBLE[8].UNISIM.I_XPHY_n_80 ,\NIBBLE[8].UNISIM.I_XPHY_n_81 }),
        .CTRL_CLK(ctrl_clk[8]),
        .D0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DATAIN({\NLW_NIBBLE[8].UNISIM.I_XPHY_DATAIN_UNCONNECTED [5:4],DATAIN[51:48]}),
        .DLY_RDY(ctrl_clk_4[3]),
        .DYN_DCI({\NIBBLE[8].UNISIM.I_XPHY_n_82 ,\NIBBLE[8].UNISIM.I_XPHY_n_83 ,\NIBBLE[8].UNISIM.I_XPHY_n_84 ,\NIBBLE[8].UNISIM.I_XPHY_n_85 ,\NIBBLE[8].UNISIM.I_XPHY_n_86 ,\NIBBLE[8].UNISIM.I_XPHY_n_87 }),
        .EN_VTC(en_vtc),
        .FIFO_EMPTY(FIFO_EMPTY[8]),
        .FIFO_RDEN(fifo_rd_en),
        .FIFO_RD_CLK(fifo_rd_clk),
        .FIFO_WR_CLK(fifo_wr_clk[8]),
        .GT_STATUS(gt_status[8]),
        .IBUF_DISABLE({\NIBBLE[8].UNISIM.I_XPHY_n_88 ,\NIBBLE[8].UNISIM.I_XPHY_n_89 ,\NIBBLE[8].UNISIM.I_XPHY_n_90 ,\NIBBLE[8].UNISIM.I_XPHY_n_91 ,\NIBBLE[8].UNISIM.I_XPHY_n_92 ,\NIBBLE[8].UNISIM.I_XPHY_n_93 }),
        .INC({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NCLK_NIBBLE_IN(1'b0),
        .NCLK_NIBBLE_OUT(\NLW_NIBBLE[8].UNISIM.I_XPHY_NCLK_NIBBLE_OUT_UNCONNECTED ),
        .O0(\NLW_NIBBLE[8].UNISIM.I_XPHY_O0_UNCONNECTED [5:0]),
        .PCLK_NIBBLE_IN(1'b0),
        .PCLK_NIBBLE_OUT(\NLW_NIBBLE[8].UNISIM.I_XPHY_PCLK_NIBBLE_OUT_UNCONNECTED ),
        .PHY_RDCS0(phy_rdcs0[35:32]),
        .PHY_RDCS1(phy_rdcs1[35:32]),
        .PHY_RDEN({1'b0,1'b0,1'b0,1'b0}),
        .PHY_RDY(ctrl_clk_5[3]),
        .PHY_WRCS0(phy_wrcs0[35:32]),
        .PHY_WRCS1(phy_wrcs1[35:32]),
        .PHY_WREN({1'b0,1'b0,1'b0,1'b0}),
        .PLL_CLK(bank0_pll_clkoutphy),
        .Q0({\NIBBLE[8].UNISIM.I_XPHY_n_106 ,\NIBBLE[8].UNISIM.I_XPHY_n_107 ,\NIBBLE[8].UNISIM.I_XPHY_n_108 ,\NIBBLE[8].UNISIM.I_XPHY_n_109 ,\NIBBLE[8].UNISIM.I_XPHY_n_110 ,\NIBBLE[8].UNISIM.I_XPHY_n_111 ,\NIBBLE[8].UNISIM.I_XPHY_n_112 ,\NIBBLE[8].UNISIM.I_XPHY_n_113 }),
        .Q1({\NIBBLE[8].UNISIM.I_XPHY_n_114 ,\NIBBLE[8].UNISIM.I_XPHY_n_115 ,\NIBBLE[8].UNISIM.I_XPHY_n_116 ,\NIBBLE[8].UNISIM.I_XPHY_n_117 ,\NIBBLE[8].UNISIM.I_XPHY_n_118 ,\NIBBLE[8].UNISIM.I_XPHY_n_119 ,\NIBBLE[8].UNISIM.I_XPHY_n_120 ,\NIBBLE[8].UNISIM.I_XPHY_n_121 }),
        .Q2({Q[98],Q[96],\NIBBLE[8].UNISIM.I_XPHY_n_124 ,\NIBBLE[8].UNISIM.I_XPHY_n_125 ,Q[99],Q[97],\NIBBLE[8].UNISIM.I_XPHY_n_128 ,\NIBBLE[8].UNISIM.I_XPHY_n_129 }),
        .Q3({\NIBBLE[8].UNISIM.I_XPHY_n_130 ,\NIBBLE[8].UNISIM.I_XPHY_n_131 ,\NIBBLE[8].UNISIM.I_XPHY_n_132 ,\NIBBLE[8].UNISIM.I_XPHY_n_133 ,\NIBBLE[8].UNISIM.I_XPHY_n_134 ,\NIBBLE[8].UNISIM.I_XPHY_n_135 ,\NIBBLE[8].UNISIM.I_XPHY_n_136 ,\NIBBLE[8].UNISIM.I_XPHY_n_137 }),
        .Q4({\NIBBLE[8].UNISIM.I_XPHY_n_138 ,\NIBBLE[8].UNISIM.I_XPHY_n_139 ,\NIBBLE[8].UNISIM.I_XPHY_n_140 ,\NIBBLE[8].UNISIM.I_XPHY_n_141 ,\NIBBLE[8].UNISIM.I_XPHY_n_142 ,\NIBBLE[8].UNISIM.I_XPHY_n_143 ,\NIBBLE[8].UNISIM.I_XPHY_n_144 ,\NIBBLE[8].UNISIM.I_XPHY_n_145 }),
        .Q5({\NIBBLE[8].UNISIM.I_XPHY_n_146 ,\NIBBLE[8].UNISIM.I_XPHY_n_147 ,\NIBBLE[8].UNISIM.I_XPHY_n_148 ,\NIBBLE[8].UNISIM.I_XPHY_n_149 ,\NIBBLE[8].UNISIM.I_XPHY_n_150 ,\NIBBLE[8].UNISIM.I_XPHY_n_151 ,\NIBBLE[8].UNISIM.I_XPHY_n_152 ,\NIBBLE[8].UNISIM.I_XPHY_n_153 }),
        .RIU_ADDR(riu_addr[71:64]),
        .RIU_NIBBLE_SEL(riu_nibble_sel[8]),
        .RIU_RD_DATA(riu_rd_data[143:128]),
        .RIU_RD_VALID(riu_rd_valid[8]),
        .RIU_WR_DATA(riu_wr_data[143:128]),
        .RIU_WR_EN(riu_wr_en[8]),
        .RST(RX_RST),
        .RXTX_SEL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .RX_RST({1'b1,1'b1,RX_RST,RX_RST,1'b1,1'b1}),
        .T({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX_RST({1'b1,1'b1,RX_RST,RX_RST,1'b1,1'b1}),
        .T_OUT(\NLW_NIBBLE[8].UNISIM.I_XPHY_T_OUT_UNCONNECTED [5:0]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    dly_rdy_INST_0_i_3
       (.I0(\NIBBLE[0].UNISIM.I_XPHY_n_4 ),
        .I1(p_20_in22_in),
        .I2(p_16_in18_in),
        .I3(DLY_RDY[0]),
        .O(ctrl_clk_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    dly_rdy_INST_0_i_5
       (.I0(p_17_in19_in),
        .I1(p_15_in17_in),
        .I2(DLY_RDY[2]),
        .I3(DLY_RDY[1]),
        .O(ctrl_clk_1));
  LUT4 #(
    .INIT(16'h7FFF)) 
    phy_rdy_INST_0_i_3
       (.I0(\NIBBLE[0].UNISIM.I_XPHY_n_10 ),
        .I1(p_20_in),
        .I2(p_16_in),
        .I3(PHY_RDY[0]),
        .O(ctrl_clk_2));
  LUT4 #(
    .INIT(16'h7FFF)) 
    phy_rdy_INST_0_i_5
       (.I0(p_17_in),
        .I1(p_15_in),
        .I2(PHY_RDY[2]),
        .I3(PHY_RDY[1]),
        .O(ctrl_clk_3));
endmodule

(* ORIG_REF_NAME = "advanced_io_wizard_phy_v1_0_0_bank_wrapper" *) 
module design_1_advanced_io_wizard_0_0_advanced_io_wizard_phy_v1_0_0_bank_wrapper__parameterized0
   (dly_rdy,
    phy_rdy,
    FIFO_EMPTY,
    fifo_wr_clk,
    gt_status,
    riu_rd_valid,
    riu_rd_data,
    Q,
    DLY_RDY,
    PHY_RDY,
    \syncstages_ff_reg[0] ,
    \syncstages_ff_reg[0]_0 ,
    \syncstages_ff_reg[0]_1 ,
    \syncstages_ff_reg[0]_2 ,
    \syncstages_ff_reg[0]_3 ,
    \syncstages_ff_reg[0]_4 ,
    \syncstages_ff_reg[0]_5 ,
    \syncstages_ff_reg[0]_6 ,
    \syncstages_ff_reg[0]_7 ,
    \syncstages_ff_reg[0]_8 ,
    ctrl_clk,
    en_vtc,
    fifo_rd_en,
    fifo_rd_clk,
    bank1_pll_clkoutphy,
    riu_nibble_sel,
    riu_wr_en,
    RX_RST,
    riu_wr_data,
    phy_rdcs0,
    phy_rdcs1,
    phy_wrcs0,
    phy_wrcs1,
    riu_addr,
    IOB);
  output dly_rdy;
  output phy_rdy;
  output [7:0]FIFO_EMPTY;
  output [7:0]fifo_wr_clk;
  output [7:0]gt_status;
  output [7:0]riu_rd_valid;
  output [127:0]riu_rd_data;
  output [91:0]Q;
  output [1:0]DLY_RDY;
  output [1:0]PHY_RDY;
  input \syncstages_ff_reg[0] ;
  input \syncstages_ff_reg[0]_0 ;
  input \syncstages_ff_reg[0]_1 ;
  input \syncstages_ff_reg[0]_2 ;
  input [1:0]\syncstages_ff_reg[0]_3 ;
  input \syncstages_ff_reg[0]_4 ;
  input \syncstages_ff_reg[0]_5 ;
  input \syncstages_ff_reg[0]_6 ;
  input \syncstages_ff_reg[0]_7 ;
  input [1:0]\syncstages_ff_reg[0]_8 ;
  input [7:0]ctrl_clk;
  input en_vtc;
  input fifo_rd_en;
  input fifo_rd_clk;
  input bank1_pll_clkoutphy;
  input [7:0]riu_nibble_sel;
  input [7:0]riu_wr_en;
  input [0:0]RX_RST;
  input [127:0]riu_wr_data;
  input [31:0]phy_rdcs0;
  input [31:0]phy_rdcs1;
  input [31:0]phy_wrcs0;
  input [31:0]phy_wrcs1;
  input [63:0]riu_addr;
  input [45:0]IOB;

  wire [5:2]CLK_TO_LOWER;
  wire [5:2]CLK_TO_UPPER;
  wire [45:0]DATAIN;
  wire [1:0]DLY_RDY;
  wire [7:0]FIFO_EMPTY;
  wire [45:0]IOB;
  wire [7:0]NCLK_NIBBLE_OUT;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_108 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_109 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_112 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_113 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_114 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_115 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_116 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_117 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_118 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_119 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_120 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_121 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_124 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_125 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_128 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_129 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_130 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_131 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_132 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_133 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_134 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_135 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_136 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_137 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_140 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_141 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_144 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_145 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_146 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_147 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_148 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_149 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_150 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_151 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_152 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_153 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_28 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_29 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_30 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_31 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_32 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_33 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_34 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_35 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_36 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_37 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_38 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_39 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_40 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_41 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_42 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_43 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_44 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_45 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_46 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_47 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_48 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_49 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_50 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_51 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_52 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_53 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_54 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_55 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_56 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_57 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_58 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_59 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_60 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_61 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_62 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_63 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_64 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_65 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_66 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_67 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_68 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_69 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_70 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_71 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_72 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_73 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_74 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_75 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_76 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_77 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_78 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_79 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_80 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_81 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_82 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_83 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_84 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_85 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_86 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_87 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_88 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_89 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_90 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_91 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_92 ;
  wire \NIBBLE[0].UNISIM.I_XPHY_n_93 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_108 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_109 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_112 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_113 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_114 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_115 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_116 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_117 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_118 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_119 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_120 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_121 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_124 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_125 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_128 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_129 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_130 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_131 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_132 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_133 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_134 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_135 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_136 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_137 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_140 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_141 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_144 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_145 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_146 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_147 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_148 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_149 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_150 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_151 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_152 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_153 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_28 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_29 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_30 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_31 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_32 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_33 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_34 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_35 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_36 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_37 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_38 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_39 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_40 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_41 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_42 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_43 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_44 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_45 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_46 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_47 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_48 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_49 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_50 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_51 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_52 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_53 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_54 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_55 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_56 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_57 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_58 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_59 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_60 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_61 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_62 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_63 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_64 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_65 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_66 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_67 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_68 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_69 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_70 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_71 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_72 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_73 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_74 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_75 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_76 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_77 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_78 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_79 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_80 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_81 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_82 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_83 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_84 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_85 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_86 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_87 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_88 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_89 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_90 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_91 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_92 ;
  wire \NIBBLE[1].UNISIM.I_XPHY_n_93 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_108 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_109 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_112 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_113 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_114 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_115 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_116 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_117 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_118 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_119 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_120 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_121 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_124 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_125 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_128 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_129 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_130 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_131 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_132 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_133 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_134 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_135 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_136 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_137 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_140 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_141 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_144 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_145 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_146 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_147 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_148 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_149 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_150 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_151 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_152 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_153 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_28 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_29 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_30 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_31 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_32 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_33 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_34 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_35 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_36 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_37 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_38 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_39 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_40 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_41 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_42 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_43 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_44 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_45 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_46 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_47 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_48 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_49 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_50 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_51 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_52 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_53 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_54 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_55 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_56 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_57 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_58 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_59 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_60 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_61 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_62 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_63 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_64 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_65 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_66 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_67 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_68 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_69 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_70 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_71 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_72 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_73 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_74 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_75 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_76 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_77 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_78 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_79 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_80 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_81 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_82 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_83 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_84 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_85 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_86 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_87 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_88 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_89 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_90 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_91 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_92 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_93 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_108 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_109 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_112 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_113 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_114 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_115 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_116 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_117 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_118 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_119 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_120 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_121 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_124 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_125 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_128 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_129 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_130 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_131 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_132 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_133 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_134 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_135 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_136 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_137 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_140 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_141 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_144 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_145 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_146 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_147 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_148 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_149 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_150 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_151 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_152 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_153 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_28 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_29 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_30 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_31 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_32 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_33 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_34 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_35 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_36 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_37 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_38 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_39 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_40 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_41 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_42 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_43 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_44 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_45 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_46 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_47 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_48 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_49 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_50 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_51 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_52 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_53 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_54 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_55 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_56 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_57 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_58 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_59 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_60 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_61 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_62 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_63 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_64 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_65 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_66 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_67 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_68 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_69 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_70 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_71 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_72 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_73 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_74 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_75 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_76 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_77 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_78 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_79 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_80 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_81 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_82 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_83 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_84 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_85 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_86 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_87 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_88 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_89 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_90 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_91 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_92 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_93 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_108 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_109 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_112 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_113 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_114 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_115 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_116 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_117 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_118 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_119 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_120 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_121 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_124 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_125 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_128 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_129 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_130 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_131 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_132 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_133 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_134 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_135 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_136 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_137 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_140 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_141 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_144 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_145 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_146 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_147 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_148 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_149 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_150 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_151 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_152 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_153 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_28 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_29 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_30 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_31 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_32 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_33 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_34 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_35 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_36 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_37 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_38 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_39 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_40 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_41 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_42 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_43 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_44 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_45 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_46 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_47 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_48 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_49 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_50 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_51 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_52 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_53 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_54 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_55 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_56 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_57 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_58 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_59 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_60 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_61 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_62 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_63 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_64 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_65 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_66 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_67 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_68 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_69 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_70 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_71 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_72 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_73 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_74 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_75 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_76 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_77 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_78 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_79 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_80 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_81 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_82 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_83 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_84 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_85 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_86 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_87 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_88 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_89 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_90 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_91 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_92 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_93 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_108 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_109 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_112 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_113 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_114 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_115 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_116 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_117 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_118 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_119 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_120 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_121 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_124 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_125 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_128 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_129 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_130 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_131 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_132 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_133 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_134 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_135 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_136 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_137 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_140 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_141 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_144 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_145 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_146 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_147 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_148 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_149 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_150 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_151 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_152 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_153 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_28 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_29 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_30 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_31 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_32 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_33 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_34 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_35 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_36 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_37 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_38 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_39 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_40 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_41 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_42 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_43 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_44 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_45 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_46 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_47 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_48 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_49 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_50 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_51 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_52 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_53 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_54 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_55 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_56 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_57 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_58 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_59 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_60 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_61 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_62 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_63 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_64 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_65 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_66 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_67 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_68 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_69 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_70 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_71 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_72 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_73 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_74 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_75 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_76 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_77 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_78 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_79 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_80 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_81 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_82 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_83 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_84 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_85 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_86 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_87 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_88 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_89 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_90 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_91 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_92 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_93 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_108 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_109 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_112 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_113 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_114 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_115 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_116 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_117 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_118 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_119 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_120 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_121 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_124 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_125 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_128 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_129 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_130 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_131 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_132 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_133 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_134 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_135 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_136 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_137 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_140 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_141 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_144 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_145 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_146 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_147 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_148 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_149 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_150 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_151 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_152 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_153 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_28 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_29 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_30 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_31 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_32 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_33 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_34 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_35 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_36 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_37 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_38 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_39 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_40 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_41 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_42 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_43 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_44 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_45 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_46 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_47 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_48 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_49 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_50 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_51 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_52 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_53 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_54 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_55 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_56 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_57 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_58 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_59 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_60 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_61 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_62 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_63 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_64 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_65 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_66 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_67 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_68 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_69 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_70 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_71 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_72 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_73 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_74 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_75 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_76 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_77 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_78 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_79 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_80 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_81 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_82 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_83 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_84 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_85 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_86 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_87 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_88 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_89 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_90 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_91 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_92 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_93 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_108 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_109 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_112 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_113 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_114 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_115 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_116 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_117 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_118 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_119 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_120 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_121 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_124 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_125 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_128 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_129 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_130 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_131 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_132 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_133 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_134 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_135 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_136 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_137 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_138 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_139 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_140 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_141 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_142 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_143 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_144 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_145 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_146 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_147 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_148 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_149 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_150 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_151 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_152 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_153 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_28 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_29 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_30 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_31 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_32 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_33 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_34 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_35 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_36 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_37 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_38 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_39 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_40 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_41 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_42 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_43 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_44 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_45 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_46 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_47 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_48 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_49 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_50 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_51 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_52 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_53 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_54 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_55 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_56 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_57 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_58 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_59 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_60 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_61 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_62 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_63 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_64 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_65 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_66 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_67 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_68 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_69 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_70 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_71 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_72 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_73 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_74 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_75 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_76 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_77 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_78 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_79 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_80 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_81 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_82 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_83 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_84 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_85 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_86 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_87 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_88 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_89 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_90 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_91 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_92 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_93 ;
  wire [7:0]PCLK_NIBBLE_OUT;
  wire [1:0]PHY_RDY;
  wire [91:0]Q;
  wire [0:0]RX_RST;
  wire bank1_pll_clkoutphy;
  wire [7:0]bisc_start_wire;
  wire [6:0]bisc_stop_in;
  wire [7:0]ctrl_clk;
  wire dly_rdy;
  wire dly_rdy_INST_0_i_1_n_0;
  wire dly_rdy_INST_0_i_2_n_0;
  wire en_vtc;
  wire fifo_rd_clk;
  wire fifo_rd_en;
  wire [7:0]fifo_wr_clk;
  wire [7:0]gt_status;
  wire p_10_in;
  wire p_10_in12_in;
  wire p_12_in;
  wire p_12_in14_in;
  wire p_13_in;
  wire p_13_in15_in;
  wire p_6_in;
  wire p_6_in8_in;
  wire p_7_in;
  wire p_7_in9_in;
  wire p_8_in;
  wire p_8_in10_in;
  wire [31:0]phy_rdcs0;
  wire [31:0]phy_rdcs1;
  wire phy_rdy;
  wire phy_rdy_INST_0_i_1_n_0;
  wire phy_rdy_INST_0_i_2_n_0;
  wire [31:0]phy_wrcs0;
  wire [31:0]phy_wrcs1;
  wire [63:0]riu_addr;
  wire [7:0]riu_nibble_sel;
  wire [127:0]riu_rd_data;
  wire [7:0]riu_rd_valid;
  wire [127:0]riu_wr_data;
  wire [7:0]riu_wr_en;
  wire \syncstages_ff_reg[0] ;
  wire \syncstages_ff_reg[0]_0 ;
  wire \syncstages_ff_reg[0]_1 ;
  wire \syncstages_ff_reg[0]_2 ;
  wire [1:0]\syncstages_ff_reg[0]_3 ;
  wire \syncstages_ff_reg[0]_4 ;
  wire \syncstages_ff_reg[0]_5 ;
  wire \syncstages_ff_reg[0]_6 ;
  wire \syncstages_ff_reg[0]_7 ;
  wire [1:0]\syncstages_ff_reg[0]_8 ;
  wire \NLW_NIBBLE[0].UNISIM.I_XPHY_CLK_TO_LOWER_UNCONNECTED ;
  wire \NLW_NIBBLE[0].UNISIM.I_XPHY_CLK_TO_UPPER_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[0].UNISIM.I_XPHY_O0_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[0].UNISIM.I_XPHY_T_OUT_UNCONNECTED ;
  wire \NLW_NIBBLE[1].UNISIM.I_XPHY_CLK_TO_LOWER_UNCONNECTED ;
  wire \NLW_NIBBLE[1].UNISIM.I_XPHY_CLK_TO_UPPER_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[1].UNISIM.I_XPHY_O0_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[1].UNISIM.I_XPHY_T_OUT_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[2].UNISIM.I_XPHY_O0_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[2].UNISIM.I_XPHY_T_OUT_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[3].UNISIM.I_XPHY_O0_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[3].UNISIM.I_XPHY_T_OUT_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[4].UNISIM.I_XPHY_O0_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[4].UNISIM.I_XPHY_T_OUT_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[5].UNISIM.I_XPHY_O0_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[5].UNISIM.I_XPHY_T_OUT_UNCONNECTED ;
  wire \NLW_NIBBLE[6].UNISIM.I_XPHY_CLK_TO_LOWER_UNCONNECTED ;
  wire \NLW_NIBBLE[6].UNISIM.I_XPHY_CLK_TO_UPPER_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[6].UNISIM.I_XPHY_O0_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[6].UNISIM.I_XPHY_T_OUT_UNCONNECTED ;
  wire \NLW_NIBBLE[7].UNISIM.I_XPHY_BISC_START_OUT_UNCONNECTED ;
  wire \NLW_NIBBLE[7].UNISIM.I_XPHY_CLK_TO_LOWER_UNCONNECTED ;
  wire \NLW_NIBBLE[7].UNISIM.I_XPHY_CLK_TO_UPPER_UNCONNECTED ;
  wire [5:4]\NLW_NIBBLE[7].UNISIM.I_XPHY_DATAIN_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[7].UNISIM.I_XPHY_O0_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[7].UNISIM.I_XPHY_T_OUT_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[0].I_IBUFDS_DIFF_OUT 
       (.I(IOB[0]),
        .IB(IOB[1]),
        .O(DATAIN[0]),
        .OB(DATAIN[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[10].I_IBUFDS_DIFF_OUT 
       (.I(IOB[10]),
        .IB(IOB[11]),
        .O(DATAIN[10]),
        .OB(DATAIN[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[12].I_IBUFDS_DIFF_OUT 
       (.I(IOB[12]),
        .IB(IOB[13]),
        .O(DATAIN[12]),
        .OB(DATAIN[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[14].I_IBUFDS_DIFF_OUT 
       (.I(IOB[14]),
        .IB(IOB[15]),
        .O(DATAIN[14]),
        .OB(DATAIN[15]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[16].I_IBUFDS_DIFF_OUT 
       (.I(IOB[16]),
        .IB(IOB[17]),
        .O(DATAIN[16]),
        .OB(DATAIN[17]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[18].I_IBUFDS_DIFF_OUT 
       (.I(IOB[18]),
        .IB(IOB[19]),
        .O(DATAIN[18]),
        .OB(DATAIN[19]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[20].I_IBUFDS_DIFF_OUT 
       (.I(IOB[20]),
        .IB(IOB[21]),
        .O(DATAIN[20]),
        .OB(DATAIN[21]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[22].I_IBUFDS_DIFF_OUT 
       (.I(IOB[22]),
        .IB(IOB[23]),
        .O(DATAIN[22]),
        .OB(DATAIN[23]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[24].I_IBUFDS_DIFF_OUT 
       (.I(IOB[24]),
        .IB(IOB[25]),
        .O(DATAIN[24]),
        .OB(DATAIN[25]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[26].I_IBUFDS_DIFF_OUT 
       (.I(IOB[26]),
        .IB(IOB[27]),
        .O(DATAIN[26]),
        .OB(DATAIN[27]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[28].I_IBUFDS_DIFF_OUT 
       (.I(IOB[28]),
        .IB(IOB[29]),
        .O(DATAIN[28]),
        .OB(DATAIN[29]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[2].I_IBUFDS_DIFF_OUT 
       (.I(IOB[2]),
        .IB(IOB[3]),
        .O(DATAIN[2]),
        .OB(DATAIN[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[30].I_IBUFDS_DIFF_OUT 
       (.I(IOB[30]),
        .IB(IOB[31]),
        .O(DATAIN[30]),
        .OB(DATAIN[31]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[32].I_IBUFDS_DIFF_OUT 
       (.I(IOB[32]),
        .IB(IOB[33]),
        .O(DATAIN[32]),
        .OB(DATAIN[33]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[34].I_IBUFDS_DIFF_OUT 
       (.I(IOB[34]),
        .IB(IOB[35]),
        .O(DATAIN[34]),
        .OB(DATAIN[35]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[36].I_IBUFDS_DIFF_OUT 
       (.I(IOB[36]),
        .IB(IOB[37]),
        .O(DATAIN[36]),
        .OB(DATAIN[37]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[38].I_IBUFDS_DIFF_OUT 
       (.I(IOB[38]),
        .IB(IOB[39]),
        .O(DATAIN[38]),
        .OB(DATAIN[39]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[40].I_IBUFDS_DIFF_OUT 
       (.I(IOB[40]),
        .IB(IOB[41]),
        .O(DATAIN[40]),
        .OB(DATAIN[41]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[42].I_IBUFDS_DIFF_OUT 
       (.I(IOB[42]),
        .IB(IOB[43]),
        .O(DATAIN[42]),
        .OB(DATAIN[43]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[44].I_IBUFDS_DIFF_OUT 
       (.I(IOB[44]),
        .IB(IOB[45]),
        .O(DATAIN[44]),
        .OB(DATAIN[45]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[4].I_IBUFDS_DIFF_OUT 
       (.I(IOB[4]),
        .IB(IOB[5]),
        .O(DATAIN[4]),
        .OB(DATAIN[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[6].I_IBUFDS_DIFF_OUT 
       (.I(IOB[6]),
        .IB(IOB[7]),
        .O(DATAIN[6]),
        .OB(DATAIN[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[8].I_IBUFDS_DIFF_OUT 
       (.I(IOB[8]),
        .IB(IOB[9]),
        .O(DATAIN[8]),
        .OB(DATAIN[9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  XPHY #(
    .CASCADE_0("FALSE"),
    .CASCADE_1("FALSE"),
    .CASCADE_2("FALSE"),
    .CASCADE_3("FALSE"),
    .CASCADE_4("FALSE"),
    .CASCADE_5("FALSE"),
    .CONTINUOUS_DQS("FALSE"),
    .CRSE_DLY_EN("TRUE"),
    .DELAY_VALUE_0(0),
    .DELAY_VALUE_1(0),
    .DELAY_VALUE_2(0),
    .DELAY_VALUE_3(0),
    .DELAY_VALUE_4(0),
    .DELAY_VALUE_5(0),
    .DIS_IDLY_VT_TRACK("FALSE"),
    .DIS_ODLY_VT_TRACK("FALSE"),
    .DIS_QDLY_VT_TRACK("FALSE"),
    .DQS_MODE("DDR4_1TCK"),
    .DQS_SRC("EXTERN"),
    .EN_CLK_TO_LOWER("DISABLE"),
    .EN_CLK_TO_UPPER("DISABLE"),
    .EN_DYN_DLY_MODE("FALSE"),
    .EN_OTHER_NCLK("FALSE"),
    .EN_OTHER_PCLK("FALSE"),
    .FAST_CK("FALSE"),
    .FIFO_MODE_0("ASYNC"),
    .FIFO_MODE_1("ASYNC"),
    .FIFO_MODE_2("ASYNC"),
    .FIFO_MODE_3("ASYNC"),
    .FIFO_MODE_4("ASYNC"),
    .FIFO_MODE_5("ASYNC"),
    .IBUF_DIS_SRC_0("EXTERNAL"),
    .IBUF_DIS_SRC_1("EXTERNAL"),
    .IBUF_DIS_SRC_2("EXTERNAL"),
    .IBUF_DIS_SRC_3("EXTERNAL"),
    .IBUF_DIS_SRC_4("EXTERNAL"),
    .IBUF_DIS_SRC_5("EXTERNAL"),
    .INV_RXCLK("FALSE"),
    .LP4_DQS("FALSE"),
    .ODELAY_BYPASS_0("FALSE"),
    .ODELAY_BYPASS_1("FALSE"),
    .ODELAY_BYPASS_2("FALSE"),
    .ODELAY_BYPASS_3("FALSE"),
    .ODELAY_BYPASS_4("FALSE"),
    .ODELAY_BYPASS_5("FALSE"),
    .ODT_SRC_0("EXTERNAL"),
    .ODT_SRC_1("EXTERNAL"),
    .ODT_SRC_2("EXTERNAL"),
    .ODT_SRC_3("EXTERNAL"),
    .ODT_SRC_4("EXTERNAL"),
    .ODT_SRC_5("EXTERNAL"),
    .PRIME_VAL(1'b0),
    .REFCLK_FREQUENCY(1000.000000),
    .RX_CLK_PHASE_N("SHIFT_90"),
    .RX_CLK_PHASE_P("SHIFT_90"),
    .RX_DATA_WIDTH(4),
    .RX_GATING("DISABLE"),
    .SELF_CALIBRATE("ENABLE"),
    .SERIAL_MODE("FALSE"),
    .TBYTE_CTL_0("T"),
    .TBYTE_CTL_1("T"),
    .TBYTE_CTL_2("T"),
    .TBYTE_CTL_3("T"),
    .TBYTE_CTL_4("T"),
    .TBYTE_CTL_5("T"),
    .TXRX_LOOPBACK_0("FALSE"),
    .TXRX_LOOPBACK_1("FALSE"),
    .TXRX_LOOPBACK_2("FALSE"),
    .TXRX_LOOPBACK_3("FALSE"),
    .TXRX_LOOPBACK_4("FALSE"),
    .TXRX_LOOPBACK_5("FALSE"),
    .TX_DATA_WIDTH(8),
    .TX_GATING("DISABLE"),
    .TX_INIT_0(1'b0),
    .TX_INIT_1(1'b0),
    .TX_INIT_2(1'b0),
    .TX_INIT_3(1'b0),
    .TX_INIT_4(1'b0),
    .TX_INIT_5(1'b0),
    .TX_INIT_TRI(1'b1),
    .TX_OUTPUT_PHASE_90_0("FALSE"),
    .TX_OUTPUT_PHASE_90_1("FALSE"),
    .TX_OUTPUT_PHASE_90_2("FALSE"),
    .TX_OUTPUT_PHASE_90_3("FALSE"),
    .TX_OUTPUT_PHASE_90_4("FALSE"),
    .TX_OUTPUT_PHASE_90_5("FALSE"),
    .TX_OUTPUT_PHASE_90_TRI("FALSE"),
    .WRITE_LEVELING("FALSE")) 
    \NIBBLE[0].UNISIM.I_XPHY 
       (.BISC_START_IN(bisc_start_wire[0]),
        .BISC_START_OUT(bisc_start_wire[1]),
        .BISC_STOP_IN(bisc_stop_in[0]),
        .BISC_STOP_OUT(bisc_start_wire[0]),
        .CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLK_FROM_OTHER_XPHY(CLK_TO_LOWER[2]),
        .CLK_TO_LOWER(\NLW_NIBBLE[0].UNISIM.I_XPHY_CLK_TO_LOWER_UNCONNECTED ),
        .CLK_TO_UPPER(\NLW_NIBBLE[0].UNISIM.I_XPHY_CLK_TO_UPPER_UNCONNECTED ),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT({\NIBBLE[0].UNISIM.I_XPHY_n_28 ,\NIBBLE[0].UNISIM.I_XPHY_n_29 ,\NIBBLE[0].UNISIM.I_XPHY_n_30 ,\NIBBLE[0].UNISIM.I_XPHY_n_31 ,\NIBBLE[0].UNISIM.I_XPHY_n_32 ,\NIBBLE[0].UNISIM.I_XPHY_n_33 ,\NIBBLE[0].UNISIM.I_XPHY_n_34 ,\NIBBLE[0].UNISIM.I_XPHY_n_35 ,\NIBBLE[0].UNISIM.I_XPHY_n_36 ,\NIBBLE[0].UNISIM.I_XPHY_n_37 ,\NIBBLE[0].UNISIM.I_XPHY_n_38 ,\NIBBLE[0].UNISIM.I_XPHY_n_39 ,\NIBBLE[0].UNISIM.I_XPHY_n_40 ,\NIBBLE[0].UNISIM.I_XPHY_n_41 ,\NIBBLE[0].UNISIM.I_XPHY_n_42 ,\NIBBLE[0].UNISIM.I_XPHY_n_43 ,\NIBBLE[0].UNISIM.I_XPHY_n_44 ,\NIBBLE[0].UNISIM.I_XPHY_n_45 ,\NIBBLE[0].UNISIM.I_XPHY_n_46 ,\NIBBLE[0].UNISIM.I_XPHY_n_47 ,\NIBBLE[0].UNISIM.I_XPHY_n_48 ,\NIBBLE[0].UNISIM.I_XPHY_n_49 ,\NIBBLE[0].UNISIM.I_XPHY_n_50 ,\NIBBLE[0].UNISIM.I_XPHY_n_51 ,\NIBBLE[0].UNISIM.I_XPHY_n_52 ,\NIBBLE[0].UNISIM.I_XPHY_n_53 ,\NIBBLE[0].UNISIM.I_XPHY_n_54 ,\NIBBLE[0].UNISIM.I_XPHY_n_55 ,\NIBBLE[0].UNISIM.I_XPHY_n_56 ,\NIBBLE[0].UNISIM.I_XPHY_n_57 ,\NIBBLE[0].UNISIM.I_XPHY_n_58 ,\NIBBLE[0].UNISIM.I_XPHY_n_59 ,\NIBBLE[0].UNISIM.I_XPHY_n_60 ,\NIBBLE[0].UNISIM.I_XPHY_n_61 ,\NIBBLE[0].UNISIM.I_XPHY_n_62 ,\NIBBLE[0].UNISIM.I_XPHY_n_63 ,\NIBBLE[0].UNISIM.I_XPHY_n_64 ,\NIBBLE[0].UNISIM.I_XPHY_n_65 ,\NIBBLE[0].UNISIM.I_XPHY_n_66 ,\NIBBLE[0].UNISIM.I_XPHY_n_67 ,\NIBBLE[0].UNISIM.I_XPHY_n_68 ,\NIBBLE[0].UNISIM.I_XPHY_n_69 ,\NIBBLE[0].UNISIM.I_XPHY_n_70 ,\NIBBLE[0].UNISIM.I_XPHY_n_71 ,\NIBBLE[0].UNISIM.I_XPHY_n_72 ,\NIBBLE[0].UNISIM.I_XPHY_n_73 ,\NIBBLE[0].UNISIM.I_XPHY_n_74 ,\NIBBLE[0].UNISIM.I_XPHY_n_75 ,\NIBBLE[0].UNISIM.I_XPHY_n_76 ,\NIBBLE[0].UNISIM.I_XPHY_n_77 ,\NIBBLE[0].UNISIM.I_XPHY_n_78 ,\NIBBLE[0].UNISIM.I_XPHY_n_79 ,\NIBBLE[0].UNISIM.I_XPHY_n_80 ,\NIBBLE[0].UNISIM.I_XPHY_n_81 }),
        .CTRL_CLK(ctrl_clk[0]),
        .D0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DATAIN(DATAIN[5:0]),
        .DLY_RDY(p_13_in15_in),
        .DYN_DCI({\NIBBLE[0].UNISIM.I_XPHY_n_82 ,\NIBBLE[0].UNISIM.I_XPHY_n_83 ,\NIBBLE[0].UNISIM.I_XPHY_n_84 ,\NIBBLE[0].UNISIM.I_XPHY_n_85 ,\NIBBLE[0].UNISIM.I_XPHY_n_86 ,\NIBBLE[0].UNISIM.I_XPHY_n_87 }),
        .EN_VTC(en_vtc),
        .FIFO_EMPTY(FIFO_EMPTY[0]),
        .FIFO_RDEN(fifo_rd_en),
        .FIFO_RD_CLK(fifo_rd_clk),
        .FIFO_WR_CLK(fifo_wr_clk[0]),
        .GT_STATUS(gt_status[0]),
        .IBUF_DISABLE({\NIBBLE[0].UNISIM.I_XPHY_n_88 ,\NIBBLE[0].UNISIM.I_XPHY_n_89 ,\NIBBLE[0].UNISIM.I_XPHY_n_90 ,\NIBBLE[0].UNISIM.I_XPHY_n_91 ,\NIBBLE[0].UNISIM.I_XPHY_n_92 ,\NIBBLE[0].UNISIM.I_XPHY_n_93 }),
        .INC({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NCLK_NIBBLE_IN(NCLK_NIBBLE_OUT[1]),
        .NCLK_NIBBLE_OUT(NCLK_NIBBLE_OUT[0]),
        .O0(\NLW_NIBBLE[0].UNISIM.I_XPHY_O0_UNCONNECTED [5:0]),
        .PCLK_NIBBLE_IN(PCLK_NIBBLE_OUT[1]),
        .PCLK_NIBBLE_OUT(PCLK_NIBBLE_OUT[0]),
        .PHY_RDCS0(phy_rdcs0[3:0]),
        .PHY_RDCS1(phy_rdcs1[3:0]),
        .PHY_RDEN({1'b0,1'b0,1'b0,1'b0}),
        .PHY_RDY(p_13_in),
        .PHY_WRCS0(phy_wrcs0[3:0]),
        .PHY_WRCS1(phy_wrcs1[3:0]),
        .PHY_WREN({1'b0,1'b0,1'b0,1'b0}),
        .PLL_CLK(bank1_pll_clkoutphy),
        .Q0({Q[2],Q[0],\NIBBLE[0].UNISIM.I_XPHY_n_108 ,\NIBBLE[0].UNISIM.I_XPHY_n_109 ,Q[3],Q[1],\NIBBLE[0].UNISIM.I_XPHY_n_112 ,\NIBBLE[0].UNISIM.I_XPHY_n_113 }),
        .Q1({\NIBBLE[0].UNISIM.I_XPHY_n_114 ,\NIBBLE[0].UNISIM.I_XPHY_n_115 ,\NIBBLE[0].UNISIM.I_XPHY_n_116 ,\NIBBLE[0].UNISIM.I_XPHY_n_117 ,\NIBBLE[0].UNISIM.I_XPHY_n_118 ,\NIBBLE[0].UNISIM.I_XPHY_n_119 ,\NIBBLE[0].UNISIM.I_XPHY_n_120 ,\NIBBLE[0].UNISIM.I_XPHY_n_121 }),
        .Q2({Q[6],Q[4],\NIBBLE[0].UNISIM.I_XPHY_n_124 ,\NIBBLE[0].UNISIM.I_XPHY_n_125 ,Q[7],Q[5],\NIBBLE[0].UNISIM.I_XPHY_n_128 ,\NIBBLE[0].UNISIM.I_XPHY_n_129 }),
        .Q3({\NIBBLE[0].UNISIM.I_XPHY_n_130 ,\NIBBLE[0].UNISIM.I_XPHY_n_131 ,\NIBBLE[0].UNISIM.I_XPHY_n_132 ,\NIBBLE[0].UNISIM.I_XPHY_n_133 ,\NIBBLE[0].UNISIM.I_XPHY_n_134 ,\NIBBLE[0].UNISIM.I_XPHY_n_135 ,\NIBBLE[0].UNISIM.I_XPHY_n_136 ,\NIBBLE[0].UNISIM.I_XPHY_n_137 }),
        .Q4({Q[10],Q[8],\NIBBLE[0].UNISIM.I_XPHY_n_140 ,\NIBBLE[0].UNISIM.I_XPHY_n_141 ,Q[11],Q[9],\NIBBLE[0].UNISIM.I_XPHY_n_144 ,\NIBBLE[0].UNISIM.I_XPHY_n_145 }),
        .Q5({\NIBBLE[0].UNISIM.I_XPHY_n_146 ,\NIBBLE[0].UNISIM.I_XPHY_n_147 ,\NIBBLE[0].UNISIM.I_XPHY_n_148 ,\NIBBLE[0].UNISIM.I_XPHY_n_149 ,\NIBBLE[0].UNISIM.I_XPHY_n_150 ,\NIBBLE[0].UNISIM.I_XPHY_n_151 ,\NIBBLE[0].UNISIM.I_XPHY_n_152 ,\NIBBLE[0].UNISIM.I_XPHY_n_153 }),
        .RIU_ADDR(riu_addr[7:0]),
        .RIU_NIBBLE_SEL(riu_nibble_sel[0]),
        .RIU_RD_DATA(riu_rd_data[15:0]),
        .RIU_RD_VALID(riu_rd_valid[0]),
        .RIU_WR_DATA(riu_wr_data[15:0]),
        .RIU_WR_EN(riu_wr_en[0]),
        .RST(RX_RST),
        .RXTX_SEL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .RX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T_OUT(\NLW_NIBBLE[0].UNISIM.I_XPHY_T_OUT_UNCONNECTED [5:0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  XPHY #(
    .CASCADE_0("FALSE"),
    .CASCADE_1("FALSE"),
    .CASCADE_2("FALSE"),
    .CASCADE_3("FALSE"),
    .CASCADE_4("FALSE"),
    .CASCADE_5("FALSE"),
    .CONTINUOUS_DQS("FALSE"),
    .CRSE_DLY_EN("TRUE"),
    .DELAY_VALUE_0(0),
    .DELAY_VALUE_1(0),
    .DELAY_VALUE_2(0),
    .DELAY_VALUE_3(0),
    .DELAY_VALUE_4(0),
    .DELAY_VALUE_5(0),
    .DIS_IDLY_VT_TRACK("FALSE"),
    .DIS_ODLY_VT_TRACK("FALSE"),
    .DIS_QDLY_VT_TRACK("FALSE"),
    .DQS_MODE("DDR4_1TCK"),
    .DQS_SRC("EXTERN"),
    .EN_CLK_TO_LOWER("DISABLE"),
    .EN_CLK_TO_UPPER("DISABLE"),
    .EN_DYN_DLY_MODE("FALSE"),
    .EN_OTHER_NCLK("TRUE"),
    .EN_OTHER_PCLK("TRUE"),
    .FAST_CK("FALSE"),
    .FIFO_MODE_0("ASYNC"),
    .FIFO_MODE_1("ASYNC"),
    .FIFO_MODE_2("ASYNC"),
    .FIFO_MODE_3("ASYNC"),
    .FIFO_MODE_4("ASYNC"),
    .FIFO_MODE_5("ASYNC"),
    .IBUF_DIS_SRC_0("EXTERNAL"),
    .IBUF_DIS_SRC_1("EXTERNAL"),
    .IBUF_DIS_SRC_2("EXTERNAL"),
    .IBUF_DIS_SRC_3("EXTERNAL"),
    .IBUF_DIS_SRC_4("EXTERNAL"),
    .IBUF_DIS_SRC_5("EXTERNAL"),
    .INV_RXCLK("FALSE"),
    .LP4_DQS("FALSE"),
    .ODELAY_BYPASS_0("FALSE"),
    .ODELAY_BYPASS_1("FALSE"),
    .ODELAY_BYPASS_2("FALSE"),
    .ODELAY_BYPASS_3("FALSE"),
    .ODELAY_BYPASS_4("FALSE"),
    .ODELAY_BYPASS_5("FALSE"),
    .ODT_SRC_0("EXTERNAL"),
    .ODT_SRC_1("EXTERNAL"),
    .ODT_SRC_2("EXTERNAL"),
    .ODT_SRC_3("EXTERNAL"),
    .ODT_SRC_4("EXTERNAL"),
    .ODT_SRC_5("EXTERNAL"),
    .PRIME_VAL(1'b0),
    .REFCLK_FREQUENCY(1000.000000),
    .RX_CLK_PHASE_N("SHIFT_90"),
    .RX_CLK_PHASE_P("SHIFT_90"),
    .RX_DATA_WIDTH(4),
    .RX_GATING("DISABLE"),
    .SELF_CALIBRATE("ENABLE"),
    .SERIAL_MODE("FALSE"),
    .TBYTE_CTL_0("T"),
    .TBYTE_CTL_1("T"),
    .TBYTE_CTL_2("T"),
    .TBYTE_CTL_3("T"),
    .TBYTE_CTL_4("T"),
    .TBYTE_CTL_5("T"),
    .TXRX_LOOPBACK_0("FALSE"),
    .TXRX_LOOPBACK_1("FALSE"),
    .TXRX_LOOPBACK_2("FALSE"),
    .TXRX_LOOPBACK_3("FALSE"),
    .TXRX_LOOPBACK_4("FALSE"),
    .TXRX_LOOPBACK_5("FALSE"),
    .TX_DATA_WIDTH(8),
    .TX_GATING("DISABLE"),
    .TX_INIT_0(1'b0),
    .TX_INIT_1(1'b0),
    .TX_INIT_2(1'b0),
    .TX_INIT_3(1'b0),
    .TX_INIT_4(1'b0),
    .TX_INIT_5(1'b0),
    .TX_INIT_TRI(1'b1),
    .TX_OUTPUT_PHASE_90_0("FALSE"),
    .TX_OUTPUT_PHASE_90_1("FALSE"),
    .TX_OUTPUT_PHASE_90_2("FALSE"),
    .TX_OUTPUT_PHASE_90_3("FALSE"),
    .TX_OUTPUT_PHASE_90_4("FALSE"),
    .TX_OUTPUT_PHASE_90_5("FALSE"),
    .TX_OUTPUT_PHASE_90_TRI("FALSE"),
    .WRITE_LEVELING("FALSE")) 
    \NIBBLE[1].UNISIM.I_XPHY 
       (.BISC_START_IN(bisc_start_wire[1]),
        .BISC_START_OUT(bisc_start_wire[2]),
        .BISC_STOP_IN(bisc_stop_in[1]),
        .BISC_STOP_OUT(bisc_stop_in[0]),
        .CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLK_FROM_OTHER_XPHY(CLK_TO_LOWER[3]),
        .CLK_TO_LOWER(\NLW_NIBBLE[1].UNISIM.I_XPHY_CLK_TO_LOWER_UNCONNECTED ),
        .CLK_TO_UPPER(\NLW_NIBBLE[1].UNISIM.I_XPHY_CLK_TO_UPPER_UNCONNECTED ),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT({\NIBBLE[1].UNISIM.I_XPHY_n_28 ,\NIBBLE[1].UNISIM.I_XPHY_n_29 ,\NIBBLE[1].UNISIM.I_XPHY_n_30 ,\NIBBLE[1].UNISIM.I_XPHY_n_31 ,\NIBBLE[1].UNISIM.I_XPHY_n_32 ,\NIBBLE[1].UNISIM.I_XPHY_n_33 ,\NIBBLE[1].UNISIM.I_XPHY_n_34 ,\NIBBLE[1].UNISIM.I_XPHY_n_35 ,\NIBBLE[1].UNISIM.I_XPHY_n_36 ,\NIBBLE[1].UNISIM.I_XPHY_n_37 ,\NIBBLE[1].UNISIM.I_XPHY_n_38 ,\NIBBLE[1].UNISIM.I_XPHY_n_39 ,\NIBBLE[1].UNISIM.I_XPHY_n_40 ,\NIBBLE[1].UNISIM.I_XPHY_n_41 ,\NIBBLE[1].UNISIM.I_XPHY_n_42 ,\NIBBLE[1].UNISIM.I_XPHY_n_43 ,\NIBBLE[1].UNISIM.I_XPHY_n_44 ,\NIBBLE[1].UNISIM.I_XPHY_n_45 ,\NIBBLE[1].UNISIM.I_XPHY_n_46 ,\NIBBLE[1].UNISIM.I_XPHY_n_47 ,\NIBBLE[1].UNISIM.I_XPHY_n_48 ,\NIBBLE[1].UNISIM.I_XPHY_n_49 ,\NIBBLE[1].UNISIM.I_XPHY_n_50 ,\NIBBLE[1].UNISIM.I_XPHY_n_51 ,\NIBBLE[1].UNISIM.I_XPHY_n_52 ,\NIBBLE[1].UNISIM.I_XPHY_n_53 ,\NIBBLE[1].UNISIM.I_XPHY_n_54 ,\NIBBLE[1].UNISIM.I_XPHY_n_55 ,\NIBBLE[1].UNISIM.I_XPHY_n_56 ,\NIBBLE[1].UNISIM.I_XPHY_n_57 ,\NIBBLE[1].UNISIM.I_XPHY_n_58 ,\NIBBLE[1].UNISIM.I_XPHY_n_59 ,\NIBBLE[1].UNISIM.I_XPHY_n_60 ,\NIBBLE[1].UNISIM.I_XPHY_n_61 ,\NIBBLE[1].UNISIM.I_XPHY_n_62 ,\NIBBLE[1].UNISIM.I_XPHY_n_63 ,\NIBBLE[1].UNISIM.I_XPHY_n_64 ,\NIBBLE[1].UNISIM.I_XPHY_n_65 ,\NIBBLE[1].UNISIM.I_XPHY_n_66 ,\NIBBLE[1].UNISIM.I_XPHY_n_67 ,\NIBBLE[1].UNISIM.I_XPHY_n_68 ,\NIBBLE[1].UNISIM.I_XPHY_n_69 ,\NIBBLE[1].UNISIM.I_XPHY_n_70 ,\NIBBLE[1].UNISIM.I_XPHY_n_71 ,\NIBBLE[1].UNISIM.I_XPHY_n_72 ,\NIBBLE[1].UNISIM.I_XPHY_n_73 ,\NIBBLE[1].UNISIM.I_XPHY_n_74 ,\NIBBLE[1].UNISIM.I_XPHY_n_75 ,\NIBBLE[1].UNISIM.I_XPHY_n_76 ,\NIBBLE[1].UNISIM.I_XPHY_n_77 ,\NIBBLE[1].UNISIM.I_XPHY_n_78 ,\NIBBLE[1].UNISIM.I_XPHY_n_79 ,\NIBBLE[1].UNISIM.I_XPHY_n_80 ,\NIBBLE[1].UNISIM.I_XPHY_n_81 }),
        .CTRL_CLK(ctrl_clk[1]),
        .D0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DATAIN(DATAIN[11:6]),
        .DLY_RDY(p_12_in14_in),
        .DYN_DCI({\NIBBLE[1].UNISIM.I_XPHY_n_82 ,\NIBBLE[1].UNISIM.I_XPHY_n_83 ,\NIBBLE[1].UNISIM.I_XPHY_n_84 ,\NIBBLE[1].UNISIM.I_XPHY_n_85 ,\NIBBLE[1].UNISIM.I_XPHY_n_86 ,\NIBBLE[1].UNISIM.I_XPHY_n_87 }),
        .EN_VTC(en_vtc),
        .FIFO_EMPTY(FIFO_EMPTY[1]),
        .FIFO_RDEN(fifo_rd_en),
        .FIFO_RD_CLK(fifo_rd_clk),
        .FIFO_WR_CLK(fifo_wr_clk[1]),
        .GT_STATUS(gt_status[1]),
        .IBUF_DISABLE({\NIBBLE[1].UNISIM.I_XPHY_n_88 ,\NIBBLE[1].UNISIM.I_XPHY_n_89 ,\NIBBLE[1].UNISIM.I_XPHY_n_90 ,\NIBBLE[1].UNISIM.I_XPHY_n_91 ,\NIBBLE[1].UNISIM.I_XPHY_n_92 ,\NIBBLE[1].UNISIM.I_XPHY_n_93 }),
        .INC({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NCLK_NIBBLE_IN(NCLK_NIBBLE_OUT[0]),
        .NCLK_NIBBLE_OUT(NCLK_NIBBLE_OUT[1]),
        .O0(\NLW_NIBBLE[1].UNISIM.I_XPHY_O0_UNCONNECTED [5:0]),
        .PCLK_NIBBLE_IN(PCLK_NIBBLE_OUT[0]),
        .PCLK_NIBBLE_OUT(PCLK_NIBBLE_OUT[1]),
        .PHY_RDCS0(phy_rdcs0[7:4]),
        .PHY_RDCS1(phy_rdcs1[7:4]),
        .PHY_RDEN({1'b0,1'b0,1'b0,1'b0}),
        .PHY_RDY(p_12_in),
        .PHY_WRCS0(phy_wrcs0[7:4]),
        .PHY_WRCS1(phy_wrcs1[7:4]),
        .PHY_WREN({1'b0,1'b0,1'b0,1'b0}),
        .PLL_CLK(bank1_pll_clkoutphy),
        .Q0({Q[14],Q[12],\NIBBLE[1].UNISIM.I_XPHY_n_108 ,\NIBBLE[1].UNISIM.I_XPHY_n_109 ,Q[15],Q[13],\NIBBLE[1].UNISIM.I_XPHY_n_112 ,\NIBBLE[1].UNISIM.I_XPHY_n_113 }),
        .Q1({\NIBBLE[1].UNISIM.I_XPHY_n_114 ,\NIBBLE[1].UNISIM.I_XPHY_n_115 ,\NIBBLE[1].UNISIM.I_XPHY_n_116 ,\NIBBLE[1].UNISIM.I_XPHY_n_117 ,\NIBBLE[1].UNISIM.I_XPHY_n_118 ,\NIBBLE[1].UNISIM.I_XPHY_n_119 ,\NIBBLE[1].UNISIM.I_XPHY_n_120 ,\NIBBLE[1].UNISIM.I_XPHY_n_121 }),
        .Q2({Q[18],Q[16],\NIBBLE[1].UNISIM.I_XPHY_n_124 ,\NIBBLE[1].UNISIM.I_XPHY_n_125 ,Q[19],Q[17],\NIBBLE[1].UNISIM.I_XPHY_n_128 ,\NIBBLE[1].UNISIM.I_XPHY_n_129 }),
        .Q3({\NIBBLE[1].UNISIM.I_XPHY_n_130 ,\NIBBLE[1].UNISIM.I_XPHY_n_131 ,\NIBBLE[1].UNISIM.I_XPHY_n_132 ,\NIBBLE[1].UNISIM.I_XPHY_n_133 ,\NIBBLE[1].UNISIM.I_XPHY_n_134 ,\NIBBLE[1].UNISIM.I_XPHY_n_135 ,\NIBBLE[1].UNISIM.I_XPHY_n_136 ,\NIBBLE[1].UNISIM.I_XPHY_n_137 }),
        .Q4({Q[22],Q[20],\NIBBLE[1].UNISIM.I_XPHY_n_140 ,\NIBBLE[1].UNISIM.I_XPHY_n_141 ,Q[23],Q[21],\NIBBLE[1].UNISIM.I_XPHY_n_144 ,\NIBBLE[1].UNISIM.I_XPHY_n_145 }),
        .Q5({\NIBBLE[1].UNISIM.I_XPHY_n_146 ,\NIBBLE[1].UNISIM.I_XPHY_n_147 ,\NIBBLE[1].UNISIM.I_XPHY_n_148 ,\NIBBLE[1].UNISIM.I_XPHY_n_149 ,\NIBBLE[1].UNISIM.I_XPHY_n_150 ,\NIBBLE[1].UNISIM.I_XPHY_n_151 ,\NIBBLE[1].UNISIM.I_XPHY_n_152 ,\NIBBLE[1].UNISIM.I_XPHY_n_153 }),
        .RIU_ADDR(riu_addr[15:8]),
        .RIU_NIBBLE_SEL(riu_nibble_sel[1]),
        .RIU_RD_DATA(riu_rd_data[31:16]),
        .RIU_RD_VALID(riu_rd_valid[1]),
        .RIU_WR_DATA(riu_wr_data[31:16]),
        .RIU_WR_EN(riu_wr_en[1]),
        .RST(RX_RST),
        .RXTX_SEL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .RX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T_OUT(\NLW_NIBBLE[1].UNISIM.I_XPHY_T_OUT_UNCONNECTED [5:0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  XPHY #(
    .CASCADE_0("FALSE"),
    .CASCADE_1("FALSE"),
    .CASCADE_2("FALSE"),
    .CASCADE_3("FALSE"),
    .CASCADE_4("FALSE"),
    .CASCADE_5("FALSE"),
    .CONTINUOUS_DQS("FALSE"),
    .CRSE_DLY_EN("TRUE"),
    .DELAY_VALUE_0(0),
    .DELAY_VALUE_1(0),
    .DELAY_VALUE_2(0),
    .DELAY_VALUE_3(0),
    .DELAY_VALUE_4(0),
    .DELAY_VALUE_5(0),
    .DIS_IDLY_VT_TRACK("FALSE"),
    .DIS_ODLY_VT_TRACK("FALSE"),
    .DIS_QDLY_VT_TRACK("FALSE"),
    .DQS_MODE("DDR4_1TCK"),
    .DQS_SRC("LOCAL"),
    .EN_CLK_TO_LOWER("ENABLE"),
    .EN_CLK_TO_UPPER("ENABLE"),
    .EN_DYN_DLY_MODE("FALSE"),
    .EN_OTHER_NCLK("FALSE"),
    .EN_OTHER_PCLK("FALSE"),
    .FAST_CK("FALSE"),
    .FIFO_MODE_0("ASYNC"),
    .FIFO_MODE_1("ASYNC"),
    .FIFO_MODE_2("ASYNC"),
    .FIFO_MODE_3("ASYNC"),
    .FIFO_MODE_4("ASYNC"),
    .FIFO_MODE_5("ASYNC"),
    .IBUF_DIS_SRC_0("EXTERNAL"),
    .IBUF_DIS_SRC_1("EXTERNAL"),
    .IBUF_DIS_SRC_2("EXTERNAL"),
    .IBUF_DIS_SRC_3("EXTERNAL"),
    .IBUF_DIS_SRC_4("EXTERNAL"),
    .IBUF_DIS_SRC_5("EXTERNAL"),
    .INV_RXCLK("FALSE"),
    .LP4_DQS("FALSE"),
    .ODELAY_BYPASS_0("FALSE"),
    .ODELAY_BYPASS_1("FALSE"),
    .ODELAY_BYPASS_2("FALSE"),
    .ODELAY_BYPASS_3("FALSE"),
    .ODELAY_BYPASS_4("FALSE"),
    .ODELAY_BYPASS_5("FALSE"),
    .ODT_SRC_0("EXTERNAL"),
    .ODT_SRC_1("EXTERNAL"),
    .ODT_SRC_2("EXTERNAL"),
    .ODT_SRC_3("EXTERNAL"),
    .ODT_SRC_4("EXTERNAL"),
    .ODT_SRC_5("EXTERNAL"),
    .PRIME_VAL(1'b0),
    .REFCLK_FREQUENCY(1000.000000),
    .RX_CLK_PHASE_N("SHIFT_90"),
    .RX_CLK_PHASE_P("SHIFT_90"),
    .RX_DATA_WIDTH(4),
    .RX_GATING("DISABLE"),
    .SELF_CALIBRATE("ENABLE"),
    .SERIAL_MODE("FALSE"),
    .TBYTE_CTL_0("T"),
    .TBYTE_CTL_1("T"),
    .TBYTE_CTL_2("T"),
    .TBYTE_CTL_3("T"),
    .TBYTE_CTL_4("T"),
    .TBYTE_CTL_5("T"),
    .TXRX_LOOPBACK_0("FALSE"),
    .TXRX_LOOPBACK_1("FALSE"),
    .TXRX_LOOPBACK_2("FALSE"),
    .TXRX_LOOPBACK_3("FALSE"),
    .TXRX_LOOPBACK_4("FALSE"),
    .TXRX_LOOPBACK_5("FALSE"),
    .TX_DATA_WIDTH(8),
    .TX_GATING("DISABLE"),
    .TX_INIT_0(1'b0),
    .TX_INIT_1(1'b0),
    .TX_INIT_2(1'b0),
    .TX_INIT_3(1'b0),
    .TX_INIT_4(1'b0),
    .TX_INIT_5(1'b0),
    .TX_INIT_TRI(1'b1),
    .TX_OUTPUT_PHASE_90_0("FALSE"),
    .TX_OUTPUT_PHASE_90_1("FALSE"),
    .TX_OUTPUT_PHASE_90_2("FALSE"),
    .TX_OUTPUT_PHASE_90_3("FALSE"),
    .TX_OUTPUT_PHASE_90_4("FALSE"),
    .TX_OUTPUT_PHASE_90_5("FALSE"),
    .TX_OUTPUT_PHASE_90_TRI("FALSE"),
    .WRITE_LEVELING("FALSE")) 
    \NIBBLE[2].UNISIM.I_XPHY 
       (.BISC_START_IN(bisc_start_wire[2]),
        .BISC_START_OUT(bisc_start_wire[3]),
        .BISC_STOP_IN(bisc_stop_in[2]),
        .BISC_STOP_OUT(bisc_stop_in[1]),
        .CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLK_FROM_OTHER_XPHY(CLK_TO_LOWER[4]),
        .CLK_TO_LOWER(CLK_TO_LOWER[2]),
        .CLK_TO_UPPER(CLK_TO_UPPER[2]),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT({\NIBBLE[2].UNISIM.I_XPHY_n_28 ,\NIBBLE[2].UNISIM.I_XPHY_n_29 ,\NIBBLE[2].UNISIM.I_XPHY_n_30 ,\NIBBLE[2].UNISIM.I_XPHY_n_31 ,\NIBBLE[2].UNISIM.I_XPHY_n_32 ,\NIBBLE[2].UNISIM.I_XPHY_n_33 ,\NIBBLE[2].UNISIM.I_XPHY_n_34 ,\NIBBLE[2].UNISIM.I_XPHY_n_35 ,\NIBBLE[2].UNISIM.I_XPHY_n_36 ,\NIBBLE[2].UNISIM.I_XPHY_n_37 ,\NIBBLE[2].UNISIM.I_XPHY_n_38 ,\NIBBLE[2].UNISIM.I_XPHY_n_39 ,\NIBBLE[2].UNISIM.I_XPHY_n_40 ,\NIBBLE[2].UNISIM.I_XPHY_n_41 ,\NIBBLE[2].UNISIM.I_XPHY_n_42 ,\NIBBLE[2].UNISIM.I_XPHY_n_43 ,\NIBBLE[2].UNISIM.I_XPHY_n_44 ,\NIBBLE[2].UNISIM.I_XPHY_n_45 ,\NIBBLE[2].UNISIM.I_XPHY_n_46 ,\NIBBLE[2].UNISIM.I_XPHY_n_47 ,\NIBBLE[2].UNISIM.I_XPHY_n_48 ,\NIBBLE[2].UNISIM.I_XPHY_n_49 ,\NIBBLE[2].UNISIM.I_XPHY_n_50 ,\NIBBLE[2].UNISIM.I_XPHY_n_51 ,\NIBBLE[2].UNISIM.I_XPHY_n_52 ,\NIBBLE[2].UNISIM.I_XPHY_n_53 ,\NIBBLE[2].UNISIM.I_XPHY_n_54 ,\NIBBLE[2].UNISIM.I_XPHY_n_55 ,\NIBBLE[2].UNISIM.I_XPHY_n_56 ,\NIBBLE[2].UNISIM.I_XPHY_n_57 ,\NIBBLE[2].UNISIM.I_XPHY_n_58 ,\NIBBLE[2].UNISIM.I_XPHY_n_59 ,\NIBBLE[2].UNISIM.I_XPHY_n_60 ,\NIBBLE[2].UNISIM.I_XPHY_n_61 ,\NIBBLE[2].UNISIM.I_XPHY_n_62 ,\NIBBLE[2].UNISIM.I_XPHY_n_63 ,\NIBBLE[2].UNISIM.I_XPHY_n_64 ,\NIBBLE[2].UNISIM.I_XPHY_n_65 ,\NIBBLE[2].UNISIM.I_XPHY_n_66 ,\NIBBLE[2].UNISIM.I_XPHY_n_67 ,\NIBBLE[2].UNISIM.I_XPHY_n_68 ,\NIBBLE[2].UNISIM.I_XPHY_n_69 ,\NIBBLE[2].UNISIM.I_XPHY_n_70 ,\NIBBLE[2].UNISIM.I_XPHY_n_71 ,\NIBBLE[2].UNISIM.I_XPHY_n_72 ,\NIBBLE[2].UNISIM.I_XPHY_n_73 ,\NIBBLE[2].UNISIM.I_XPHY_n_74 ,\NIBBLE[2].UNISIM.I_XPHY_n_75 ,\NIBBLE[2].UNISIM.I_XPHY_n_76 ,\NIBBLE[2].UNISIM.I_XPHY_n_77 ,\NIBBLE[2].UNISIM.I_XPHY_n_78 ,\NIBBLE[2].UNISIM.I_XPHY_n_79 ,\NIBBLE[2].UNISIM.I_XPHY_n_80 ,\NIBBLE[2].UNISIM.I_XPHY_n_81 }),
        .CTRL_CLK(ctrl_clk[2]),
        .D0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DATAIN(DATAIN[17:12]),
        .DLY_RDY(DLY_RDY[0]),
        .DYN_DCI({\NIBBLE[2].UNISIM.I_XPHY_n_82 ,\NIBBLE[2].UNISIM.I_XPHY_n_83 ,\NIBBLE[2].UNISIM.I_XPHY_n_84 ,\NIBBLE[2].UNISIM.I_XPHY_n_85 ,\NIBBLE[2].UNISIM.I_XPHY_n_86 ,\NIBBLE[2].UNISIM.I_XPHY_n_87 }),
        .EN_VTC(en_vtc),
        .FIFO_EMPTY(FIFO_EMPTY[2]),
        .FIFO_RDEN(fifo_rd_en),
        .FIFO_RD_CLK(fifo_rd_clk),
        .FIFO_WR_CLK(fifo_wr_clk[2]),
        .GT_STATUS(gt_status[2]),
        .IBUF_DISABLE({\NIBBLE[2].UNISIM.I_XPHY_n_88 ,\NIBBLE[2].UNISIM.I_XPHY_n_89 ,\NIBBLE[2].UNISIM.I_XPHY_n_90 ,\NIBBLE[2].UNISIM.I_XPHY_n_91 ,\NIBBLE[2].UNISIM.I_XPHY_n_92 ,\NIBBLE[2].UNISIM.I_XPHY_n_93 }),
        .INC({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NCLK_NIBBLE_IN(NCLK_NIBBLE_OUT[3]),
        .NCLK_NIBBLE_OUT(NCLK_NIBBLE_OUT[2]),
        .O0(\NLW_NIBBLE[2].UNISIM.I_XPHY_O0_UNCONNECTED [5:0]),
        .PCLK_NIBBLE_IN(PCLK_NIBBLE_OUT[3]),
        .PCLK_NIBBLE_OUT(PCLK_NIBBLE_OUT[2]),
        .PHY_RDCS0(phy_rdcs0[11:8]),
        .PHY_RDCS1(phy_rdcs1[11:8]),
        .PHY_RDEN({1'b0,1'b0,1'b0,1'b0}),
        .PHY_RDY(PHY_RDY[0]),
        .PHY_WRCS0(phy_wrcs0[11:8]),
        .PHY_WRCS1(phy_wrcs1[11:8]),
        .PHY_WREN({1'b0,1'b0,1'b0,1'b0}),
        .PLL_CLK(bank1_pll_clkoutphy),
        .Q0({Q[26],Q[24],\NIBBLE[2].UNISIM.I_XPHY_n_108 ,\NIBBLE[2].UNISIM.I_XPHY_n_109 ,Q[27],Q[25],\NIBBLE[2].UNISIM.I_XPHY_n_112 ,\NIBBLE[2].UNISIM.I_XPHY_n_113 }),
        .Q1({\NIBBLE[2].UNISIM.I_XPHY_n_114 ,\NIBBLE[2].UNISIM.I_XPHY_n_115 ,\NIBBLE[2].UNISIM.I_XPHY_n_116 ,\NIBBLE[2].UNISIM.I_XPHY_n_117 ,\NIBBLE[2].UNISIM.I_XPHY_n_118 ,\NIBBLE[2].UNISIM.I_XPHY_n_119 ,\NIBBLE[2].UNISIM.I_XPHY_n_120 ,\NIBBLE[2].UNISIM.I_XPHY_n_121 }),
        .Q2({Q[30],Q[28],\NIBBLE[2].UNISIM.I_XPHY_n_124 ,\NIBBLE[2].UNISIM.I_XPHY_n_125 ,Q[31],Q[29],\NIBBLE[2].UNISIM.I_XPHY_n_128 ,\NIBBLE[2].UNISIM.I_XPHY_n_129 }),
        .Q3({\NIBBLE[2].UNISIM.I_XPHY_n_130 ,\NIBBLE[2].UNISIM.I_XPHY_n_131 ,\NIBBLE[2].UNISIM.I_XPHY_n_132 ,\NIBBLE[2].UNISIM.I_XPHY_n_133 ,\NIBBLE[2].UNISIM.I_XPHY_n_134 ,\NIBBLE[2].UNISIM.I_XPHY_n_135 ,\NIBBLE[2].UNISIM.I_XPHY_n_136 ,\NIBBLE[2].UNISIM.I_XPHY_n_137 }),
        .Q4({Q[34],Q[32],\NIBBLE[2].UNISIM.I_XPHY_n_140 ,\NIBBLE[2].UNISIM.I_XPHY_n_141 ,Q[35],Q[33],\NIBBLE[2].UNISIM.I_XPHY_n_144 ,\NIBBLE[2].UNISIM.I_XPHY_n_145 }),
        .Q5({\NIBBLE[2].UNISIM.I_XPHY_n_146 ,\NIBBLE[2].UNISIM.I_XPHY_n_147 ,\NIBBLE[2].UNISIM.I_XPHY_n_148 ,\NIBBLE[2].UNISIM.I_XPHY_n_149 ,\NIBBLE[2].UNISIM.I_XPHY_n_150 ,\NIBBLE[2].UNISIM.I_XPHY_n_151 ,\NIBBLE[2].UNISIM.I_XPHY_n_152 ,\NIBBLE[2].UNISIM.I_XPHY_n_153 }),
        .RIU_ADDR(riu_addr[23:16]),
        .RIU_NIBBLE_SEL(riu_nibble_sel[2]),
        .RIU_RD_DATA(riu_rd_data[47:32]),
        .RIU_RD_VALID(riu_rd_valid[2]),
        .RIU_WR_DATA(riu_wr_data[47:32]),
        .RIU_WR_EN(riu_wr_en[2]),
        .RST(RX_RST),
        .RXTX_SEL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .RX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T_OUT(\NLW_NIBBLE[2].UNISIM.I_XPHY_T_OUT_UNCONNECTED [5:0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  XPHY #(
    .CASCADE_0("FALSE"),
    .CASCADE_1("FALSE"),
    .CASCADE_2("FALSE"),
    .CASCADE_3("FALSE"),
    .CASCADE_4("FALSE"),
    .CASCADE_5("FALSE"),
    .CONTINUOUS_DQS("FALSE"),
    .CRSE_DLY_EN("TRUE"),
    .DELAY_VALUE_0(0),
    .DELAY_VALUE_1(0),
    .DELAY_VALUE_2(0),
    .DELAY_VALUE_3(0),
    .DELAY_VALUE_4(0),
    .DELAY_VALUE_5(0),
    .DIS_IDLY_VT_TRACK("FALSE"),
    .DIS_ODLY_VT_TRACK("FALSE"),
    .DIS_QDLY_VT_TRACK("FALSE"),
    .DQS_MODE("DDR4_1TCK"),
    .DQS_SRC("EXTERN"),
    .EN_CLK_TO_LOWER("DISABLE"),
    .EN_CLK_TO_UPPER("DISABLE"),
    .EN_DYN_DLY_MODE("FALSE"),
    .EN_OTHER_NCLK("TRUE"),
    .EN_OTHER_PCLK("TRUE"),
    .FAST_CK("FALSE"),
    .FIFO_MODE_0("ASYNC"),
    .FIFO_MODE_1("ASYNC"),
    .FIFO_MODE_2("ASYNC"),
    .FIFO_MODE_3("ASYNC"),
    .FIFO_MODE_4("ASYNC"),
    .FIFO_MODE_5("ASYNC"),
    .IBUF_DIS_SRC_0("EXTERNAL"),
    .IBUF_DIS_SRC_1("EXTERNAL"),
    .IBUF_DIS_SRC_2("EXTERNAL"),
    .IBUF_DIS_SRC_3("EXTERNAL"),
    .IBUF_DIS_SRC_4("EXTERNAL"),
    .IBUF_DIS_SRC_5("EXTERNAL"),
    .INV_RXCLK("FALSE"),
    .LP4_DQS("FALSE"),
    .ODELAY_BYPASS_0("FALSE"),
    .ODELAY_BYPASS_1("FALSE"),
    .ODELAY_BYPASS_2("FALSE"),
    .ODELAY_BYPASS_3("FALSE"),
    .ODELAY_BYPASS_4("FALSE"),
    .ODELAY_BYPASS_5("FALSE"),
    .ODT_SRC_0("EXTERNAL"),
    .ODT_SRC_1("EXTERNAL"),
    .ODT_SRC_2("EXTERNAL"),
    .ODT_SRC_3("EXTERNAL"),
    .ODT_SRC_4("EXTERNAL"),
    .ODT_SRC_5("EXTERNAL"),
    .PRIME_VAL(1'b0),
    .REFCLK_FREQUENCY(1000.000000),
    .RX_CLK_PHASE_N("SHIFT_90"),
    .RX_CLK_PHASE_P("SHIFT_90"),
    .RX_DATA_WIDTH(4),
    .RX_GATING("DISABLE"),
    .SELF_CALIBRATE("ENABLE"),
    .SERIAL_MODE("FALSE"),
    .TBYTE_CTL_0("T"),
    .TBYTE_CTL_1("T"),
    .TBYTE_CTL_2("T"),
    .TBYTE_CTL_3("T"),
    .TBYTE_CTL_4("T"),
    .TBYTE_CTL_5("T"),
    .TXRX_LOOPBACK_0("FALSE"),
    .TXRX_LOOPBACK_1("FALSE"),
    .TXRX_LOOPBACK_2("FALSE"),
    .TXRX_LOOPBACK_3("FALSE"),
    .TXRX_LOOPBACK_4("FALSE"),
    .TXRX_LOOPBACK_5("FALSE"),
    .TX_DATA_WIDTH(8),
    .TX_GATING("DISABLE"),
    .TX_INIT_0(1'b0),
    .TX_INIT_1(1'b0),
    .TX_INIT_2(1'b0),
    .TX_INIT_3(1'b0),
    .TX_INIT_4(1'b0),
    .TX_INIT_5(1'b0),
    .TX_INIT_TRI(1'b1),
    .TX_OUTPUT_PHASE_90_0("FALSE"),
    .TX_OUTPUT_PHASE_90_1("FALSE"),
    .TX_OUTPUT_PHASE_90_2("FALSE"),
    .TX_OUTPUT_PHASE_90_3("FALSE"),
    .TX_OUTPUT_PHASE_90_4("FALSE"),
    .TX_OUTPUT_PHASE_90_5("FALSE"),
    .TX_OUTPUT_PHASE_90_TRI("FALSE"),
    .WRITE_LEVELING("FALSE")) 
    \NIBBLE[3].UNISIM.I_XPHY 
       (.BISC_START_IN(bisc_start_wire[3]),
        .BISC_START_OUT(bisc_start_wire[4]),
        .BISC_STOP_IN(bisc_stop_in[3]),
        .BISC_STOP_OUT(bisc_stop_in[2]),
        .CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLK_FROM_OTHER_XPHY(CLK_TO_LOWER[5]),
        .CLK_TO_LOWER(CLK_TO_LOWER[3]),
        .CLK_TO_UPPER(CLK_TO_UPPER[3]),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT({\NIBBLE[3].UNISIM.I_XPHY_n_28 ,\NIBBLE[3].UNISIM.I_XPHY_n_29 ,\NIBBLE[3].UNISIM.I_XPHY_n_30 ,\NIBBLE[3].UNISIM.I_XPHY_n_31 ,\NIBBLE[3].UNISIM.I_XPHY_n_32 ,\NIBBLE[3].UNISIM.I_XPHY_n_33 ,\NIBBLE[3].UNISIM.I_XPHY_n_34 ,\NIBBLE[3].UNISIM.I_XPHY_n_35 ,\NIBBLE[3].UNISIM.I_XPHY_n_36 ,\NIBBLE[3].UNISIM.I_XPHY_n_37 ,\NIBBLE[3].UNISIM.I_XPHY_n_38 ,\NIBBLE[3].UNISIM.I_XPHY_n_39 ,\NIBBLE[3].UNISIM.I_XPHY_n_40 ,\NIBBLE[3].UNISIM.I_XPHY_n_41 ,\NIBBLE[3].UNISIM.I_XPHY_n_42 ,\NIBBLE[3].UNISIM.I_XPHY_n_43 ,\NIBBLE[3].UNISIM.I_XPHY_n_44 ,\NIBBLE[3].UNISIM.I_XPHY_n_45 ,\NIBBLE[3].UNISIM.I_XPHY_n_46 ,\NIBBLE[3].UNISIM.I_XPHY_n_47 ,\NIBBLE[3].UNISIM.I_XPHY_n_48 ,\NIBBLE[3].UNISIM.I_XPHY_n_49 ,\NIBBLE[3].UNISIM.I_XPHY_n_50 ,\NIBBLE[3].UNISIM.I_XPHY_n_51 ,\NIBBLE[3].UNISIM.I_XPHY_n_52 ,\NIBBLE[3].UNISIM.I_XPHY_n_53 ,\NIBBLE[3].UNISIM.I_XPHY_n_54 ,\NIBBLE[3].UNISIM.I_XPHY_n_55 ,\NIBBLE[3].UNISIM.I_XPHY_n_56 ,\NIBBLE[3].UNISIM.I_XPHY_n_57 ,\NIBBLE[3].UNISIM.I_XPHY_n_58 ,\NIBBLE[3].UNISIM.I_XPHY_n_59 ,\NIBBLE[3].UNISIM.I_XPHY_n_60 ,\NIBBLE[3].UNISIM.I_XPHY_n_61 ,\NIBBLE[3].UNISIM.I_XPHY_n_62 ,\NIBBLE[3].UNISIM.I_XPHY_n_63 ,\NIBBLE[3].UNISIM.I_XPHY_n_64 ,\NIBBLE[3].UNISIM.I_XPHY_n_65 ,\NIBBLE[3].UNISIM.I_XPHY_n_66 ,\NIBBLE[3].UNISIM.I_XPHY_n_67 ,\NIBBLE[3].UNISIM.I_XPHY_n_68 ,\NIBBLE[3].UNISIM.I_XPHY_n_69 ,\NIBBLE[3].UNISIM.I_XPHY_n_70 ,\NIBBLE[3].UNISIM.I_XPHY_n_71 ,\NIBBLE[3].UNISIM.I_XPHY_n_72 ,\NIBBLE[3].UNISIM.I_XPHY_n_73 ,\NIBBLE[3].UNISIM.I_XPHY_n_74 ,\NIBBLE[3].UNISIM.I_XPHY_n_75 ,\NIBBLE[3].UNISIM.I_XPHY_n_76 ,\NIBBLE[3].UNISIM.I_XPHY_n_77 ,\NIBBLE[3].UNISIM.I_XPHY_n_78 ,\NIBBLE[3].UNISIM.I_XPHY_n_79 ,\NIBBLE[3].UNISIM.I_XPHY_n_80 ,\NIBBLE[3].UNISIM.I_XPHY_n_81 }),
        .CTRL_CLK(ctrl_clk[3]),
        .D0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DATAIN(DATAIN[23:18]),
        .DLY_RDY(p_10_in12_in),
        .DYN_DCI({\NIBBLE[3].UNISIM.I_XPHY_n_82 ,\NIBBLE[3].UNISIM.I_XPHY_n_83 ,\NIBBLE[3].UNISIM.I_XPHY_n_84 ,\NIBBLE[3].UNISIM.I_XPHY_n_85 ,\NIBBLE[3].UNISIM.I_XPHY_n_86 ,\NIBBLE[3].UNISIM.I_XPHY_n_87 }),
        .EN_VTC(en_vtc),
        .FIFO_EMPTY(FIFO_EMPTY[3]),
        .FIFO_RDEN(fifo_rd_en),
        .FIFO_RD_CLK(fifo_rd_clk),
        .FIFO_WR_CLK(fifo_wr_clk[3]),
        .GT_STATUS(gt_status[3]),
        .IBUF_DISABLE({\NIBBLE[3].UNISIM.I_XPHY_n_88 ,\NIBBLE[3].UNISIM.I_XPHY_n_89 ,\NIBBLE[3].UNISIM.I_XPHY_n_90 ,\NIBBLE[3].UNISIM.I_XPHY_n_91 ,\NIBBLE[3].UNISIM.I_XPHY_n_92 ,\NIBBLE[3].UNISIM.I_XPHY_n_93 }),
        .INC({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NCLK_NIBBLE_IN(NCLK_NIBBLE_OUT[2]),
        .NCLK_NIBBLE_OUT(NCLK_NIBBLE_OUT[3]),
        .O0(\NLW_NIBBLE[3].UNISIM.I_XPHY_O0_UNCONNECTED [5:0]),
        .PCLK_NIBBLE_IN(PCLK_NIBBLE_OUT[2]),
        .PCLK_NIBBLE_OUT(PCLK_NIBBLE_OUT[3]),
        .PHY_RDCS0(phy_rdcs0[15:12]),
        .PHY_RDCS1(phy_rdcs1[15:12]),
        .PHY_RDEN({1'b0,1'b0,1'b0,1'b0}),
        .PHY_RDY(p_10_in),
        .PHY_WRCS0(phy_wrcs0[15:12]),
        .PHY_WRCS1(phy_wrcs1[15:12]),
        .PHY_WREN({1'b0,1'b0,1'b0,1'b0}),
        .PLL_CLK(bank1_pll_clkoutphy),
        .Q0({Q[38],Q[36],\NIBBLE[3].UNISIM.I_XPHY_n_108 ,\NIBBLE[3].UNISIM.I_XPHY_n_109 ,Q[39],Q[37],\NIBBLE[3].UNISIM.I_XPHY_n_112 ,\NIBBLE[3].UNISIM.I_XPHY_n_113 }),
        .Q1({\NIBBLE[3].UNISIM.I_XPHY_n_114 ,\NIBBLE[3].UNISIM.I_XPHY_n_115 ,\NIBBLE[3].UNISIM.I_XPHY_n_116 ,\NIBBLE[3].UNISIM.I_XPHY_n_117 ,\NIBBLE[3].UNISIM.I_XPHY_n_118 ,\NIBBLE[3].UNISIM.I_XPHY_n_119 ,\NIBBLE[3].UNISIM.I_XPHY_n_120 ,\NIBBLE[3].UNISIM.I_XPHY_n_121 }),
        .Q2({Q[42],Q[40],\NIBBLE[3].UNISIM.I_XPHY_n_124 ,\NIBBLE[3].UNISIM.I_XPHY_n_125 ,Q[43],Q[41],\NIBBLE[3].UNISIM.I_XPHY_n_128 ,\NIBBLE[3].UNISIM.I_XPHY_n_129 }),
        .Q3({\NIBBLE[3].UNISIM.I_XPHY_n_130 ,\NIBBLE[3].UNISIM.I_XPHY_n_131 ,\NIBBLE[3].UNISIM.I_XPHY_n_132 ,\NIBBLE[3].UNISIM.I_XPHY_n_133 ,\NIBBLE[3].UNISIM.I_XPHY_n_134 ,\NIBBLE[3].UNISIM.I_XPHY_n_135 ,\NIBBLE[3].UNISIM.I_XPHY_n_136 ,\NIBBLE[3].UNISIM.I_XPHY_n_137 }),
        .Q4({Q[46],Q[44],\NIBBLE[3].UNISIM.I_XPHY_n_140 ,\NIBBLE[3].UNISIM.I_XPHY_n_141 ,Q[47],Q[45],\NIBBLE[3].UNISIM.I_XPHY_n_144 ,\NIBBLE[3].UNISIM.I_XPHY_n_145 }),
        .Q5({\NIBBLE[3].UNISIM.I_XPHY_n_146 ,\NIBBLE[3].UNISIM.I_XPHY_n_147 ,\NIBBLE[3].UNISIM.I_XPHY_n_148 ,\NIBBLE[3].UNISIM.I_XPHY_n_149 ,\NIBBLE[3].UNISIM.I_XPHY_n_150 ,\NIBBLE[3].UNISIM.I_XPHY_n_151 ,\NIBBLE[3].UNISIM.I_XPHY_n_152 ,\NIBBLE[3].UNISIM.I_XPHY_n_153 }),
        .RIU_ADDR(riu_addr[31:24]),
        .RIU_NIBBLE_SEL(riu_nibble_sel[3]),
        .RIU_RD_DATA(riu_rd_data[63:48]),
        .RIU_RD_VALID(riu_rd_valid[3]),
        .RIU_WR_DATA(riu_wr_data[63:48]),
        .RIU_WR_EN(riu_wr_en[3]),
        .RST(RX_RST),
        .RXTX_SEL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .RX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T_OUT(\NLW_NIBBLE[3].UNISIM.I_XPHY_T_OUT_UNCONNECTED [5:0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  XPHY #(
    .CASCADE_0("FALSE"),
    .CASCADE_1("FALSE"),
    .CASCADE_2("FALSE"),
    .CASCADE_3("FALSE"),
    .CASCADE_4("FALSE"),
    .CASCADE_5("FALSE"),
    .CONTINUOUS_DQS("FALSE"),
    .CRSE_DLY_EN("TRUE"),
    .DELAY_VALUE_0(0),
    .DELAY_VALUE_1(0),
    .DELAY_VALUE_2(0),
    .DELAY_VALUE_3(0),
    .DELAY_VALUE_4(0),
    .DELAY_VALUE_5(0),
    .DIS_IDLY_VT_TRACK("FALSE"),
    .DIS_ODLY_VT_TRACK("FALSE"),
    .DIS_QDLY_VT_TRACK("FALSE"),
    .DQS_MODE("DDR4_1TCK"),
    .DQS_SRC("EXTERN"),
    .EN_CLK_TO_LOWER("DISABLE"),
    .EN_CLK_TO_UPPER("ENABLE"),
    .EN_DYN_DLY_MODE("FALSE"),
    .EN_OTHER_NCLK("FALSE"),
    .EN_OTHER_PCLK("FALSE"),
    .FAST_CK("FALSE"),
    .FIFO_MODE_0("ASYNC"),
    .FIFO_MODE_1("ASYNC"),
    .FIFO_MODE_2("ASYNC"),
    .FIFO_MODE_3("ASYNC"),
    .FIFO_MODE_4("ASYNC"),
    .FIFO_MODE_5("ASYNC"),
    .IBUF_DIS_SRC_0("EXTERNAL"),
    .IBUF_DIS_SRC_1("EXTERNAL"),
    .IBUF_DIS_SRC_2("EXTERNAL"),
    .IBUF_DIS_SRC_3("EXTERNAL"),
    .IBUF_DIS_SRC_4("EXTERNAL"),
    .IBUF_DIS_SRC_5("EXTERNAL"),
    .INV_RXCLK("FALSE"),
    .LP4_DQS("FALSE"),
    .ODELAY_BYPASS_0("FALSE"),
    .ODELAY_BYPASS_1("FALSE"),
    .ODELAY_BYPASS_2("FALSE"),
    .ODELAY_BYPASS_3("FALSE"),
    .ODELAY_BYPASS_4("FALSE"),
    .ODELAY_BYPASS_5("FALSE"),
    .ODT_SRC_0("EXTERNAL"),
    .ODT_SRC_1("EXTERNAL"),
    .ODT_SRC_2("EXTERNAL"),
    .ODT_SRC_3("EXTERNAL"),
    .ODT_SRC_4("EXTERNAL"),
    .ODT_SRC_5("EXTERNAL"),
    .PRIME_VAL(1'b0),
    .REFCLK_FREQUENCY(1000.000000),
    .RX_CLK_PHASE_N("SHIFT_90"),
    .RX_CLK_PHASE_P("SHIFT_90"),
    .RX_DATA_WIDTH(4),
    .RX_GATING("DISABLE"),
    .SELF_CALIBRATE("ENABLE"),
    .SERIAL_MODE("FALSE"),
    .TBYTE_CTL_0("T"),
    .TBYTE_CTL_1("T"),
    .TBYTE_CTL_2("T"),
    .TBYTE_CTL_3("T"),
    .TBYTE_CTL_4("T"),
    .TBYTE_CTL_5("T"),
    .TXRX_LOOPBACK_0("FALSE"),
    .TXRX_LOOPBACK_1("FALSE"),
    .TXRX_LOOPBACK_2("FALSE"),
    .TXRX_LOOPBACK_3("FALSE"),
    .TXRX_LOOPBACK_4("FALSE"),
    .TXRX_LOOPBACK_5("FALSE"),
    .TX_DATA_WIDTH(8),
    .TX_GATING("DISABLE"),
    .TX_INIT_0(1'b0),
    .TX_INIT_1(1'b0),
    .TX_INIT_2(1'b0),
    .TX_INIT_3(1'b0),
    .TX_INIT_4(1'b0),
    .TX_INIT_5(1'b0),
    .TX_INIT_TRI(1'b1),
    .TX_OUTPUT_PHASE_90_0("FALSE"),
    .TX_OUTPUT_PHASE_90_1("FALSE"),
    .TX_OUTPUT_PHASE_90_2("FALSE"),
    .TX_OUTPUT_PHASE_90_3("FALSE"),
    .TX_OUTPUT_PHASE_90_4("FALSE"),
    .TX_OUTPUT_PHASE_90_5("FALSE"),
    .TX_OUTPUT_PHASE_90_TRI("FALSE"),
    .WRITE_LEVELING("FALSE")) 
    \NIBBLE[4].UNISIM.I_XPHY 
       (.BISC_START_IN(bisc_start_wire[4]),
        .BISC_START_OUT(bisc_start_wire[5]),
        .BISC_STOP_IN(bisc_stop_in[4]),
        .BISC_STOP_OUT(bisc_stop_in[3]),
        .CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLK_FROM_OTHER_XPHY(CLK_TO_UPPER[2]),
        .CLK_TO_LOWER(CLK_TO_LOWER[4]),
        .CLK_TO_UPPER(CLK_TO_UPPER[4]),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT({\NIBBLE[4].UNISIM.I_XPHY_n_28 ,\NIBBLE[4].UNISIM.I_XPHY_n_29 ,\NIBBLE[4].UNISIM.I_XPHY_n_30 ,\NIBBLE[4].UNISIM.I_XPHY_n_31 ,\NIBBLE[4].UNISIM.I_XPHY_n_32 ,\NIBBLE[4].UNISIM.I_XPHY_n_33 ,\NIBBLE[4].UNISIM.I_XPHY_n_34 ,\NIBBLE[4].UNISIM.I_XPHY_n_35 ,\NIBBLE[4].UNISIM.I_XPHY_n_36 ,\NIBBLE[4].UNISIM.I_XPHY_n_37 ,\NIBBLE[4].UNISIM.I_XPHY_n_38 ,\NIBBLE[4].UNISIM.I_XPHY_n_39 ,\NIBBLE[4].UNISIM.I_XPHY_n_40 ,\NIBBLE[4].UNISIM.I_XPHY_n_41 ,\NIBBLE[4].UNISIM.I_XPHY_n_42 ,\NIBBLE[4].UNISIM.I_XPHY_n_43 ,\NIBBLE[4].UNISIM.I_XPHY_n_44 ,\NIBBLE[4].UNISIM.I_XPHY_n_45 ,\NIBBLE[4].UNISIM.I_XPHY_n_46 ,\NIBBLE[4].UNISIM.I_XPHY_n_47 ,\NIBBLE[4].UNISIM.I_XPHY_n_48 ,\NIBBLE[4].UNISIM.I_XPHY_n_49 ,\NIBBLE[4].UNISIM.I_XPHY_n_50 ,\NIBBLE[4].UNISIM.I_XPHY_n_51 ,\NIBBLE[4].UNISIM.I_XPHY_n_52 ,\NIBBLE[4].UNISIM.I_XPHY_n_53 ,\NIBBLE[4].UNISIM.I_XPHY_n_54 ,\NIBBLE[4].UNISIM.I_XPHY_n_55 ,\NIBBLE[4].UNISIM.I_XPHY_n_56 ,\NIBBLE[4].UNISIM.I_XPHY_n_57 ,\NIBBLE[4].UNISIM.I_XPHY_n_58 ,\NIBBLE[4].UNISIM.I_XPHY_n_59 ,\NIBBLE[4].UNISIM.I_XPHY_n_60 ,\NIBBLE[4].UNISIM.I_XPHY_n_61 ,\NIBBLE[4].UNISIM.I_XPHY_n_62 ,\NIBBLE[4].UNISIM.I_XPHY_n_63 ,\NIBBLE[4].UNISIM.I_XPHY_n_64 ,\NIBBLE[4].UNISIM.I_XPHY_n_65 ,\NIBBLE[4].UNISIM.I_XPHY_n_66 ,\NIBBLE[4].UNISIM.I_XPHY_n_67 ,\NIBBLE[4].UNISIM.I_XPHY_n_68 ,\NIBBLE[4].UNISIM.I_XPHY_n_69 ,\NIBBLE[4].UNISIM.I_XPHY_n_70 ,\NIBBLE[4].UNISIM.I_XPHY_n_71 ,\NIBBLE[4].UNISIM.I_XPHY_n_72 ,\NIBBLE[4].UNISIM.I_XPHY_n_73 ,\NIBBLE[4].UNISIM.I_XPHY_n_74 ,\NIBBLE[4].UNISIM.I_XPHY_n_75 ,\NIBBLE[4].UNISIM.I_XPHY_n_76 ,\NIBBLE[4].UNISIM.I_XPHY_n_77 ,\NIBBLE[4].UNISIM.I_XPHY_n_78 ,\NIBBLE[4].UNISIM.I_XPHY_n_79 ,\NIBBLE[4].UNISIM.I_XPHY_n_80 ,\NIBBLE[4].UNISIM.I_XPHY_n_81 }),
        .CTRL_CLK(ctrl_clk[4]),
        .D0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DATAIN(DATAIN[29:24]),
        .DLY_RDY(DLY_RDY[1]),
        .DYN_DCI({\NIBBLE[4].UNISIM.I_XPHY_n_82 ,\NIBBLE[4].UNISIM.I_XPHY_n_83 ,\NIBBLE[4].UNISIM.I_XPHY_n_84 ,\NIBBLE[4].UNISIM.I_XPHY_n_85 ,\NIBBLE[4].UNISIM.I_XPHY_n_86 ,\NIBBLE[4].UNISIM.I_XPHY_n_87 }),
        .EN_VTC(en_vtc),
        .FIFO_EMPTY(FIFO_EMPTY[4]),
        .FIFO_RDEN(fifo_rd_en),
        .FIFO_RD_CLK(fifo_rd_clk),
        .FIFO_WR_CLK(fifo_wr_clk[4]),
        .GT_STATUS(gt_status[4]),
        .IBUF_DISABLE({\NIBBLE[4].UNISIM.I_XPHY_n_88 ,\NIBBLE[4].UNISIM.I_XPHY_n_89 ,\NIBBLE[4].UNISIM.I_XPHY_n_90 ,\NIBBLE[4].UNISIM.I_XPHY_n_91 ,\NIBBLE[4].UNISIM.I_XPHY_n_92 ,\NIBBLE[4].UNISIM.I_XPHY_n_93 }),
        .INC({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NCLK_NIBBLE_IN(NCLK_NIBBLE_OUT[5]),
        .NCLK_NIBBLE_OUT(NCLK_NIBBLE_OUT[4]),
        .O0(\NLW_NIBBLE[4].UNISIM.I_XPHY_O0_UNCONNECTED [5:0]),
        .PCLK_NIBBLE_IN(PCLK_NIBBLE_OUT[5]),
        .PCLK_NIBBLE_OUT(PCLK_NIBBLE_OUT[4]),
        .PHY_RDCS0(phy_rdcs0[19:16]),
        .PHY_RDCS1(phy_rdcs1[19:16]),
        .PHY_RDEN({1'b0,1'b0,1'b0,1'b0}),
        .PHY_RDY(PHY_RDY[1]),
        .PHY_WRCS0(phy_wrcs0[19:16]),
        .PHY_WRCS1(phy_wrcs1[19:16]),
        .PHY_WREN({1'b0,1'b0,1'b0,1'b0}),
        .PLL_CLK(bank1_pll_clkoutphy),
        .Q0({Q[50],Q[48],\NIBBLE[4].UNISIM.I_XPHY_n_108 ,\NIBBLE[4].UNISIM.I_XPHY_n_109 ,Q[51],Q[49],\NIBBLE[4].UNISIM.I_XPHY_n_112 ,\NIBBLE[4].UNISIM.I_XPHY_n_113 }),
        .Q1({\NIBBLE[4].UNISIM.I_XPHY_n_114 ,\NIBBLE[4].UNISIM.I_XPHY_n_115 ,\NIBBLE[4].UNISIM.I_XPHY_n_116 ,\NIBBLE[4].UNISIM.I_XPHY_n_117 ,\NIBBLE[4].UNISIM.I_XPHY_n_118 ,\NIBBLE[4].UNISIM.I_XPHY_n_119 ,\NIBBLE[4].UNISIM.I_XPHY_n_120 ,\NIBBLE[4].UNISIM.I_XPHY_n_121 }),
        .Q2({Q[54],Q[52],\NIBBLE[4].UNISIM.I_XPHY_n_124 ,\NIBBLE[4].UNISIM.I_XPHY_n_125 ,Q[55],Q[53],\NIBBLE[4].UNISIM.I_XPHY_n_128 ,\NIBBLE[4].UNISIM.I_XPHY_n_129 }),
        .Q3({\NIBBLE[4].UNISIM.I_XPHY_n_130 ,\NIBBLE[4].UNISIM.I_XPHY_n_131 ,\NIBBLE[4].UNISIM.I_XPHY_n_132 ,\NIBBLE[4].UNISIM.I_XPHY_n_133 ,\NIBBLE[4].UNISIM.I_XPHY_n_134 ,\NIBBLE[4].UNISIM.I_XPHY_n_135 ,\NIBBLE[4].UNISIM.I_XPHY_n_136 ,\NIBBLE[4].UNISIM.I_XPHY_n_137 }),
        .Q4({Q[58],Q[56],\NIBBLE[4].UNISIM.I_XPHY_n_140 ,\NIBBLE[4].UNISIM.I_XPHY_n_141 ,Q[59],Q[57],\NIBBLE[4].UNISIM.I_XPHY_n_144 ,\NIBBLE[4].UNISIM.I_XPHY_n_145 }),
        .Q5({\NIBBLE[4].UNISIM.I_XPHY_n_146 ,\NIBBLE[4].UNISIM.I_XPHY_n_147 ,\NIBBLE[4].UNISIM.I_XPHY_n_148 ,\NIBBLE[4].UNISIM.I_XPHY_n_149 ,\NIBBLE[4].UNISIM.I_XPHY_n_150 ,\NIBBLE[4].UNISIM.I_XPHY_n_151 ,\NIBBLE[4].UNISIM.I_XPHY_n_152 ,\NIBBLE[4].UNISIM.I_XPHY_n_153 }),
        .RIU_ADDR(riu_addr[39:32]),
        .RIU_NIBBLE_SEL(riu_nibble_sel[4]),
        .RIU_RD_DATA(riu_rd_data[79:64]),
        .RIU_RD_VALID(riu_rd_valid[4]),
        .RIU_WR_DATA(riu_wr_data[79:64]),
        .RIU_WR_EN(riu_wr_en[4]),
        .RST(RX_RST),
        .RXTX_SEL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .RX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T_OUT(\NLW_NIBBLE[4].UNISIM.I_XPHY_T_OUT_UNCONNECTED [5:0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  XPHY #(
    .CASCADE_0("FALSE"),
    .CASCADE_1("FALSE"),
    .CASCADE_2("FALSE"),
    .CASCADE_3("FALSE"),
    .CASCADE_4("FALSE"),
    .CASCADE_5("FALSE"),
    .CONTINUOUS_DQS("FALSE"),
    .CRSE_DLY_EN("TRUE"),
    .DELAY_VALUE_0(0),
    .DELAY_VALUE_1(0),
    .DELAY_VALUE_2(0),
    .DELAY_VALUE_3(0),
    .DELAY_VALUE_4(0),
    .DELAY_VALUE_5(0),
    .DIS_IDLY_VT_TRACK("FALSE"),
    .DIS_ODLY_VT_TRACK("FALSE"),
    .DIS_QDLY_VT_TRACK("FALSE"),
    .DQS_MODE("DDR4_1TCK"),
    .DQS_SRC("EXTERN"),
    .EN_CLK_TO_LOWER("DISABLE"),
    .EN_CLK_TO_UPPER("DISABLE"),
    .EN_DYN_DLY_MODE("FALSE"),
    .EN_OTHER_NCLK("TRUE"),
    .EN_OTHER_PCLK("TRUE"),
    .FAST_CK("FALSE"),
    .FIFO_MODE_0("ASYNC"),
    .FIFO_MODE_1("ASYNC"),
    .FIFO_MODE_2("ASYNC"),
    .FIFO_MODE_3("ASYNC"),
    .FIFO_MODE_4("ASYNC"),
    .FIFO_MODE_5("ASYNC"),
    .IBUF_DIS_SRC_0("EXTERNAL"),
    .IBUF_DIS_SRC_1("EXTERNAL"),
    .IBUF_DIS_SRC_2("EXTERNAL"),
    .IBUF_DIS_SRC_3("EXTERNAL"),
    .IBUF_DIS_SRC_4("EXTERNAL"),
    .IBUF_DIS_SRC_5("EXTERNAL"),
    .INV_RXCLK("FALSE"),
    .LP4_DQS("FALSE"),
    .ODELAY_BYPASS_0("FALSE"),
    .ODELAY_BYPASS_1("FALSE"),
    .ODELAY_BYPASS_2("FALSE"),
    .ODELAY_BYPASS_3("FALSE"),
    .ODELAY_BYPASS_4("FALSE"),
    .ODELAY_BYPASS_5("FALSE"),
    .ODT_SRC_0("EXTERNAL"),
    .ODT_SRC_1("EXTERNAL"),
    .ODT_SRC_2("EXTERNAL"),
    .ODT_SRC_3("EXTERNAL"),
    .ODT_SRC_4("EXTERNAL"),
    .ODT_SRC_5("EXTERNAL"),
    .PRIME_VAL(1'b0),
    .REFCLK_FREQUENCY(1000.000000),
    .RX_CLK_PHASE_N("SHIFT_90"),
    .RX_CLK_PHASE_P("SHIFT_90"),
    .RX_DATA_WIDTH(4),
    .RX_GATING("DISABLE"),
    .SELF_CALIBRATE("ENABLE"),
    .SERIAL_MODE("FALSE"),
    .TBYTE_CTL_0("T"),
    .TBYTE_CTL_1("T"),
    .TBYTE_CTL_2("T"),
    .TBYTE_CTL_3("T"),
    .TBYTE_CTL_4("T"),
    .TBYTE_CTL_5("T"),
    .TXRX_LOOPBACK_0("FALSE"),
    .TXRX_LOOPBACK_1("FALSE"),
    .TXRX_LOOPBACK_2("FALSE"),
    .TXRX_LOOPBACK_3("FALSE"),
    .TXRX_LOOPBACK_4("FALSE"),
    .TXRX_LOOPBACK_5("FALSE"),
    .TX_DATA_WIDTH(8),
    .TX_GATING("DISABLE"),
    .TX_INIT_0(1'b0),
    .TX_INIT_1(1'b0),
    .TX_INIT_2(1'b0),
    .TX_INIT_3(1'b0),
    .TX_INIT_4(1'b0),
    .TX_INIT_5(1'b0),
    .TX_INIT_TRI(1'b1),
    .TX_OUTPUT_PHASE_90_0("FALSE"),
    .TX_OUTPUT_PHASE_90_1("FALSE"),
    .TX_OUTPUT_PHASE_90_2("FALSE"),
    .TX_OUTPUT_PHASE_90_3("FALSE"),
    .TX_OUTPUT_PHASE_90_4("FALSE"),
    .TX_OUTPUT_PHASE_90_5("FALSE"),
    .TX_OUTPUT_PHASE_90_TRI("FALSE"),
    .WRITE_LEVELING("FALSE")) 
    \NIBBLE[5].UNISIM.I_XPHY 
       (.BISC_START_IN(bisc_start_wire[5]),
        .BISC_START_OUT(bisc_start_wire[6]),
        .BISC_STOP_IN(bisc_stop_in[5]),
        .BISC_STOP_OUT(bisc_stop_in[4]),
        .CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLK_FROM_OTHER_XPHY(CLK_TO_UPPER[3]),
        .CLK_TO_LOWER(CLK_TO_LOWER[5]),
        .CLK_TO_UPPER(CLK_TO_UPPER[5]),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT({\NIBBLE[5].UNISIM.I_XPHY_n_28 ,\NIBBLE[5].UNISIM.I_XPHY_n_29 ,\NIBBLE[5].UNISIM.I_XPHY_n_30 ,\NIBBLE[5].UNISIM.I_XPHY_n_31 ,\NIBBLE[5].UNISIM.I_XPHY_n_32 ,\NIBBLE[5].UNISIM.I_XPHY_n_33 ,\NIBBLE[5].UNISIM.I_XPHY_n_34 ,\NIBBLE[5].UNISIM.I_XPHY_n_35 ,\NIBBLE[5].UNISIM.I_XPHY_n_36 ,\NIBBLE[5].UNISIM.I_XPHY_n_37 ,\NIBBLE[5].UNISIM.I_XPHY_n_38 ,\NIBBLE[5].UNISIM.I_XPHY_n_39 ,\NIBBLE[5].UNISIM.I_XPHY_n_40 ,\NIBBLE[5].UNISIM.I_XPHY_n_41 ,\NIBBLE[5].UNISIM.I_XPHY_n_42 ,\NIBBLE[5].UNISIM.I_XPHY_n_43 ,\NIBBLE[5].UNISIM.I_XPHY_n_44 ,\NIBBLE[5].UNISIM.I_XPHY_n_45 ,\NIBBLE[5].UNISIM.I_XPHY_n_46 ,\NIBBLE[5].UNISIM.I_XPHY_n_47 ,\NIBBLE[5].UNISIM.I_XPHY_n_48 ,\NIBBLE[5].UNISIM.I_XPHY_n_49 ,\NIBBLE[5].UNISIM.I_XPHY_n_50 ,\NIBBLE[5].UNISIM.I_XPHY_n_51 ,\NIBBLE[5].UNISIM.I_XPHY_n_52 ,\NIBBLE[5].UNISIM.I_XPHY_n_53 ,\NIBBLE[5].UNISIM.I_XPHY_n_54 ,\NIBBLE[5].UNISIM.I_XPHY_n_55 ,\NIBBLE[5].UNISIM.I_XPHY_n_56 ,\NIBBLE[5].UNISIM.I_XPHY_n_57 ,\NIBBLE[5].UNISIM.I_XPHY_n_58 ,\NIBBLE[5].UNISIM.I_XPHY_n_59 ,\NIBBLE[5].UNISIM.I_XPHY_n_60 ,\NIBBLE[5].UNISIM.I_XPHY_n_61 ,\NIBBLE[5].UNISIM.I_XPHY_n_62 ,\NIBBLE[5].UNISIM.I_XPHY_n_63 ,\NIBBLE[5].UNISIM.I_XPHY_n_64 ,\NIBBLE[5].UNISIM.I_XPHY_n_65 ,\NIBBLE[5].UNISIM.I_XPHY_n_66 ,\NIBBLE[5].UNISIM.I_XPHY_n_67 ,\NIBBLE[5].UNISIM.I_XPHY_n_68 ,\NIBBLE[5].UNISIM.I_XPHY_n_69 ,\NIBBLE[5].UNISIM.I_XPHY_n_70 ,\NIBBLE[5].UNISIM.I_XPHY_n_71 ,\NIBBLE[5].UNISIM.I_XPHY_n_72 ,\NIBBLE[5].UNISIM.I_XPHY_n_73 ,\NIBBLE[5].UNISIM.I_XPHY_n_74 ,\NIBBLE[5].UNISIM.I_XPHY_n_75 ,\NIBBLE[5].UNISIM.I_XPHY_n_76 ,\NIBBLE[5].UNISIM.I_XPHY_n_77 ,\NIBBLE[5].UNISIM.I_XPHY_n_78 ,\NIBBLE[5].UNISIM.I_XPHY_n_79 ,\NIBBLE[5].UNISIM.I_XPHY_n_80 ,\NIBBLE[5].UNISIM.I_XPHY_n_81 }),
        .CTRL_CLK(ctrl_clk[5]),
        .D0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DATAIN(DATAIN[35:30]),
        .DLY_RDY(p_8_in10_in),
        .DYN_DCI({\NIBBLE[5].UNISIM.I_XPHY_n_82 ,\NIBBLE[5].UNISIM.I_XPHY_n_83 ,\NIBBLE[5].UNISIM.I_XPHY_n_84 ,\NIBBLE[5].UNISIM.I_XPHY_n_85 ,\NIBBLE[5].UNISIM.I_XPHY_n_86 ,\NIBBLE[5].UNISIM.I_XPHY_n_87 }),
        .EN_VTC(en_vtc),
        .FIFO_EMPTY(FIFO_EMPTY[5]),
        .FIFO_RDEN(fifo_rd_en),
        .FIFO_RD_CLK(fifo_rd_clk),
        .FIFO_WR_CLK(fifo_wr_clk[5]),
        .GT_STATUS(gt_status[5]),
        .IBUF_DISABLE({\NIBBLE[5].UNISIM.I_XPHY_n_88 ,\NIBBLE[5].UNISIM.I_XPHY_n_89 ,\NIBBLE[5].UNISIM.I_XPHY_n_90 ,\NIBBLE[5].UNISIM.I_XPHY_n_91 ,\NIBBLE[5].UNISIM.I_XPHY_n_92 ,\NIBBLE[5].UNISIM.I_XPHY_n_93 }),
        .INC({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NCLK_NIBBLE_IN(NCLK_NIBBLE_OUT[4]),
        .NCLK_NIBBLE_OUT(NCLK_NIBBLE_OUT[5]),
        .O0(\NLW_NIBBLE[5].UNISIM.I_XPHY_O0_UNCONNECTED [5:0]),
        .PCLK_NIBBLE_IN(PCLK_NIBBLE_OUT[4]),
        .PCLK_NIBBLE_OUT(PCLK_NIBBLE_OUT[5]),
        .PHY_RDCS0(phy_rdcs0[23:20]),
        .PHY_RDCS1(phy_rdcs1[23:20]),
        .PHY_RDEN({1'b0,1'b0,1'b0,1'b0}),
        .PHY_RDY(p_8_in),
        .PHY_WRCS0(phy_wrcs0[23:20]),
        .PHY_WRCS1(phy_wrcs1[23:20]),
        .PHY_WREN({1'b0,1'b0,1'b0,1'b0}),
        .PLL_CLK(bank1_pll_clkoutphy),
        .Q0({Q[62],Q[60],\NIBBLE[5].UNISIM.I_XPHY_n_108 ,\NIBBLE[5].UNISIM.I_XPHY_n_109 ,Q[63],Q[61],\NIBBLE[5].UNISIM.I_XPHY_n_112 ,\NIBBLE[5].UNISIM.I_XPHY_n_113 }),
        .Q1({\NIBBLE[5].UNISIM.I_XPHY_n_114 ,\NIBBLE[5].UNISIM.I_XPHY_n_115 ,\NIBBLE[5].UNISIM.I_XPHY_n_116 ,\NIBBLE[5].UNISIM.I_XPHY_n_117 ,\NIBBLE[5].UNISIM.I_XPHY_n_118 ,\NIBBLE[5].UNISIM.I_XPHY_n_119 ,\NIBBLE[5].UNISIM.I_XPHY_n_120 ,\NIBBLE[5].UNISIM.I_XPHY_n_121 }),
        .Q2({Q[66],Q[64],\NIBBLE[5].UNISIM.I_XPHY_n_124 ,\NIBBLE[5].UNISIM.I_XPHY_n_125 ,Q[67],Q[65],\NIBBLE[5].UNISIM.I_XPHY_n_128 ,\NIBBLE[5].UNISIM.I_XPHY_n_129 }),
        .Q3({\NIBBLE[5].UNISIM.I_XPHY_n_130 ,\NIBBLE[5].UNISIM.I_XPHY_n_131 ,\NIBBLE[5].UNISIM.I_XPHY_n_132 ,\NIBBLE[5].UNISIM.I_XPHY_n_133 ,\NIBBLE[5].UNISIM.I_XPHY_n_134 ,\NIBBLE[5].UNISIM.I_XPHY_n_135 ,\NIBBLE[5].UNISIM.I_XPHY_n_136 ,\NIBBLE[5].UNISIM.I_XPHY_n_137 }),
        .Q4({Q[70],Q[68],\NIBBLE[5].UNISIM.I_XPHY_n_140 ,\NIBBLE[5].UNISIM.I_XPHY_n_141 ,Q[71],Q[69],\NIBBLE[5].UNISIM.I_XPHY_n_144 ,\NIBBLE[5].UNISIM.I_XPHY_n_145 }),
        .Q5({\NIBBLE[5].UNISIM.I_XPHY_n_146 ,\NIBBLE[5].UNISIM.I_XPHY_n_147 ,\NIBBLE[5].UNISIM.I_XPHY_n_148 ,\NIBBLE[5].UNISIM.I_XPHY_n_149 ,\NIBBLE[5].UNISIM.I_XPHY_n_150 ,\NIBBLE[5].UNISIM.I_XPHY_n_151 ,\NIBBLE[5].UNISIM.I_XPHY_n_152 ,\NIBBLE[5].UNISIM.I_XPHY_n_153 }),
        .RIU_ADDR(riu_addr[47:40]),
        .RIU_NIBBLE_SEL(riu_nibble_sel[5]),
        .RIU_RD_DATA(riu_rd_data[95:80]),
        .RIU_RD_VALID(riu_rd_valid[5]),
        .RIU_WR_DATA(riu_wr_data[95:80]),
        .RIU_WR_EN(riu_wr_en[5]),
        .RST(RX_RST),
        .RXTX_SEL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .RX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T_OUT(\NLW_NIBBLE[5].UNISIM.I_XPHY_T_OUT_UNCONNECTED [5:0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  XPHY #(
    .CASCADE_0("FALSE"),
    .CASCADE_1("FALSE"),
    .CASCADE_2("FALSE"),
    .CASCADE_3("FALSE"),
    .CASCADE_4("FALSE"),
    .CASCADE_5("FALSE"),
    .CONTINUOUS_DQS("FALSE"),
    .CRSE_DLY_EN("TRUE"),
    .DELAY_VALUE_0(0),
    .DELAY_VALUE_1(0),
    .DELAY_VALUE_2(0),
    .DELAY_VALUE_3(0),
    .DELAY_VALUE_4(0),
    .DELAY_VALUE_5(0),
    .DIS_IDLY_VT_TRACK("FALSE"),
    .DIS_ODLY_VT_TRACK("FALSE"),
    .DIS_QDLY_VT_TRACK("FALSE"),
    .DQS_MODE("DDR4_1TCK"),
    .DQS_SRC("EXTERN"),
    .EN_CLK_TO_LOWER("DISABLE"),
    .EN_CLK_TO_UPPER("DISABLE"),
    .EN_DYN_DLY_MODE("FALSE"),
    .EN_OTHER_NCLK("FALSE"),
    .EN_OTHER_PCLK("FALSE"),
    .FAST_CK("FALSE"),
    .FIFO_MODE_0("ASYNC"),
    .FIFO_MODE_1("ASYNC"),
    .FIFO_MODE_2("ASYNC"),
    .FIFO_MODE_3("ASYNC"),
    .FIFO_MODE_4("ASYNC"),
    .FIFO_MODE_5("ASYNC"),
    .IBUF_DIS_SRC_0("EXTERNAL"),
    .IBUF_DIS_SRC_1("EXTERNAL"),
    .IBUF_DIS_SRC_2("EXTERNAL"),
    .IBUF_DIS_SRC_3("EXTERNAL"),
    .IBUF_DIS_SRC_4("EXTERNAL"),
    .IBUF_DIS_SRC_5("EXTERNAL"),
    .INV_RXCLK("FALSE"),
    .LP4_DQS("FALSE"),
    .ODELAY_BYPASS_0("FALSE"),
    .ODELAY_BYPASS_1("FALSE"),
    .ODELAY_BYPASS_2("FALSE"),
    .ODELAY_BYPASS_3("FALSE"),
    .ODELAY_BYPASS_4("FALSE"),
    .ODELAY_BYPASS_5("FALSE"),
    .ODT_SRC_0("EXTERNAL"),
    .ODT_SRC_1("EXTERNAL"),
    .ODT_SRC_2("EXTERNAL"),
    .ODT_SRC_3("EXTERNAL"),
    .ODT_SRC_4("EXTERNAL"),
    .ODT_SRC_5("EXTERNAL"),
    .PRIME_VAL(1'b0),
    .REFCLK_FREQUENCY(1000.000000),
    .RX_CLK_PHASE_N("SHIFT_90"),
    .RX_CLK_PHASE_P("SHIFT_90"),
    .RX_DATA_WIDTH(4),
    .RX_GATING("DISABLE"),
    .SELF_CALIBRATE("ENABLE"),
    .SERIAL_MODE("FALSE"),
    .TBYTE_CTL_0("T"),
    .TBYTE_CTL_1("T"),
    .TBYTE_CTL_2("T"),
    .TBYTE_CTL_3("T"),
    .TBYTE_CTL_4("T"),
    .TBYTE_CTL_5("T"),
    .TXRX_LOOPBACK_0("FALSE"),
    .TXRX_LOOPBACK_1("FALSE"),
    .TXRX_LOOPBACK_2("FALSE"),
    .TXRX_LOOPBACK_3("FALSE"),
    .TXRX_LOOPBACK_4("FALSE"),
    .TXRX_LOOPBACK_5("FALSE"),
    .TX_DATA_WIDTH(8),
    .TX_GATING("DISABLE"),
    .TX_INIT_0(1'b0),
    .TX_INIT_1(1'b0),
    .TX_INIT_2(1'b0),
    .TX_INIT_3(1'b0),
    .TX_INIT_4(1'b0),
    .TX_INIT_5(1'b0),
    .TX_INIT_TRI(1'b1),
    .TX_OUTPUT_PHASE_90_0("FALSE"),
    .TX_OUTPUT_PHASE_90_1("FALSE"),
    .TX_OUTPUT_PHASE_90_2("FALSE"),
    .TX_OUTPUT_PHASE_90_3("FALSE"),
    .TX_OUTPUT_PHASE_90_4("FALSE"),
    .TX_OUTPUT_PHASE_90_5("FALSE"),
    .TX_OUTPUT_PHASE_90_TRI("FALSE"),
    .WRITE_LEVELING("FALSE")) 
    \NIBBLE[6].UNISIM.I_XPHY 
       (.BISC_START_IN(bisc_start_wire[6]),
        .BISC_START_OUT(bisc_start_wire[7]),
        .BISC_STOP_IN(bisc_stop_in[6]),
        .BISC_STOP_OUT(bisc_stop_in[5]),
        .CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLK_FROM_OTHER_XPHY(CLK_TO_UPPER[4]),
        .CLK_TO_LOWER(\NLW_NIBBLE[6].UNISIM.I_XPHY_CLK_TO_LOWER_UNCONNECTED ),
        .CLK_TO_UPPER(\NLW_NIBBLE[6].UNISIM.I_XPHY_CLK_TO_UPPER_UNCONNECTED ),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT({\NIBBLE[6].UNISIM.I_XPHY_n_28 ,\NIBBLE[6].UNISIM.I_XPHY_n_29 ,\NIBBLE[6].UNISIM.I_XPHY_n_30 ,\NIBBLE[6].UNISIM.I_XPHY_n_31 ,\NIBBLE[6].UNISIM.I_XPHY_n_32 ,\NIBBLE[6].UNISIM.I_XPHY_n_33 ,\NIBBLE[6].UNISIM.I_XPHY_n_34 ,\NIBBLE[6].UNISIM.I_XPHY_n_35 ,\NIBBLE[6].UNISIM.I_XPHY_n_36 ,\NIBBLE[6].UNISIM.I_XPHY_n_37 ,\NIBBLE[6].UNISIM.I_XPHY_n_38 ,\NIBBLE[6].UNISIM.I_XPHY_n_39 ,\NIBBLE[6].UNISIM.I_XPHY_n_40 ,\NIBBLE[6].UNISIM.I_XPHY_n_41 ,\NIBBLE[6].UNISIM.I_XPHY_n_42 ,\NIBBLE[6].UNISIM.I_XPHY_n_43 ,\NIBBLE[6].UNISIM.I_XPHY_n_44 ,\NIBBLE[6].UNISIM.I_XPHY_n_45 ,\NIBBLE[6].UNISIM.I_XPHY_n_46 ,\NIBBLE[6].UNISIM.I_XPHY_n_47 ,\NIBBLE[6].UNISIM.I_XPHY_n_48 ,\NIBBLE[6].UNISIM.I_XPHY_n_49 ,\NIBBLE[6].UNISIM.I_XPHY_n_50 ,\NIBBLE[6].UNISIM.I_XPHY_n_51 ,\NIBBLE[6].UNISIM.I_XPHY_n_52 ,\NIBBLE[6].UNISIM.I_XPHY_n_53 ,\NIBBLE[6].UNISIM.I_XPHY_n_54 ,\NIBBLE[6].UNISIM.I_XPHY_n_55 ,\NIBBLE[6].UNISIM.I_XPHY_n_56 ,\NIBBLE[6].UNISIM.I_XPHY_n_57 ,\NIBBLE[6].UNISIM.I_XPHY_n_58 ,\NIBBLE[6].UNISIM.I_XPHY_n_59 ,\NIBBLE[6].UNISIM.I_XPHY_n_60 ,\NIBBLE[6].UNISIM.I_XPHY_n_61 ,\NIBBLE[6].UNISIM.I_XPHY_n_62 ,\NIBBLE[6].UNISIM.I_XPHY_n_63 ,\NIBBLE[6].UNISIM.I_XPHY_n_64 ,\NIBBLE[6].UNISIM.I_XPHY_n_65 ,\NIBBLE[6].UNISIM.I_XPHY_n_66 ,\NIBBLE[6].UNISIM.I_XPHY_n_67 ,\NIBBLE[6].UNISIM.I_XPHY_n_68 ,\NIBBLE[6].UNISIM.I_XPHY_n_69 ,\NIBBLE[6].UNISIM.I_XPHY_n_70 ,\NIBBLE[6].UNISIM.I_XPHY_n_71 ,\NIBBLE[6].UNISIM.I_XPHY_n_72 ,\NIBBLE[6].UNISIM.I_XPHY_n_73 ,\NIBBLE[6].UNISIM.I_XPHY_n_74 ,\NIBBLE[6].UNISIM.I_XPHY_n_75 ,\NIBBLE[6].UNISIM.I_XPHY_n_76 ,\NIBBLE[6].UNISIM.I_XPHY_n_77 ,\NIBBLE[6].UNISIM.I_XPHY_n_78 ,\NIBBLE[6].UNISIM.I_XPHY_n_79 ,\NIBBLE[6].UNISIM.I_XPHY_n_80 ,\NIBBLE[6].UNISIM.I_XPHY_n_81 }),
        .CTRL_CLK(ctrl_clk[6]),
        .D0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DATAIN(DATAIN[41:36]),
        .DLY_RDY(p_7_in9_in),
        .DYN_DCI({\NIBBLE[6].UNISIM.I_XPHY_n_82 ,\NIBBLE[6].UNISIM.I_XPHY_n_83 ,\NIBBLE[6].UNISIM.I_XPHY_n_84 ,\NIBBLE[6].UNISIM.I_XPHY_n_85 ,\NIBBLE[6].UNISIM.I_XPHY_n_86 ,\NIBBLE[6].UNISIM.I_XPHY_n_87 }),
        .EN_VTC(en_vtc),
        .FIFO_EMPTY(FIFO_EMPTY[6]),
        .FIFO_RDEN(fifo_rd_en),
        .FIFO_RD_CLK(fifo_rd_clk),
        .FIFO_WR_CLK(fifo_wr_clk[6]),
        .GT_STATUS(gt_status[6]),
        .IBUF_DISABLE({\NIBBLE[6].UNISIM.I_XPHY_n_88 ,\NIBBLE[6].UNISIM.I_XPHY_n_89 ,\NIBBLE[6].UNISIM.I_XPHY_n_90 ,\NIBBLE[6].UNISIM.I_XPHY_n_91 ,\NIBBLE[6].UNISIM.I_XPHY_n_92 ,\NIBBLE[6].UNISIM.I_XPHY_n_93 }),
        .INC({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NCLK_NIBBLE_IN(NCLK_NIBBLE_OUT[7]),
        .NCLK_NIBBLE_OUT(NCLK_NIBBLE_OUT[6]),
        .O0(\NLW_NIBBLE[6].UNISIM.I_XPHY_O0_UNCONNECTED [5:0]),
        .PCLK_NIBBLE_IN(PCLK_NIBBLE_OUT[7]),
        .PCLK_NIBBLE_OUT(PCLK_NIBBLE_OUT[6]),
        .PHY_RDCS0(phy_rdcs0[27:24]),
        .PHY_RDCS1(phy_rdcs1[27:24]),
        .PHY_RDEN({1'b0,1'b0,1'b0,1'b0}),
        .PHY_RDY(p_7_in),
        .PHY_WRCS0(phy_wrcs0[27:24]),
        .PHY_WRCS1(phy_wrcs1[27:24]),
        .PHY_WREN({1'b0,1'b0,1'b0,1'b0}),
        .PLL_CLK(bank1_pll_clkoutphy),
        .Q0({Q[74],Q[72],\NIBBLE[6].UNISIM.I_XPHY_n_108 ,\NIBBLE[6].UNISIM.I_XPHY_n_109 ,Q[75],Q[73],\NIBBLE[6].UNISIM.I_XPHY_n_112 ,\NIBBLE[6].UNISIM.I_XPHY_n_113 }),
        .Q1({\NIBBLE[6].UNISIM.I_XPHY_n_114 ,\NIBBLE[6].UNISIM.I_XPHY_n_115 ,\NIBBLE[6].UNISIM.I_XPHY_n_116 ,\NIBBLE[6].UNISIM.I_XPHY_n_117 ,\NIBBLE[6].UNISIM.I_XPHY_n_118 ,\NIBBLE[6].UNISIM.I_XPHY_n_119 ,\NIBBLE[6].UNISIM.I_XPHY_n_120 ,\NIBBLE[6].UNISIM.I_XPHY_n_121 }),
        .Q2({Q[78],Q[76],\NIBBLE[6].UNISIM.I_XPHY_n_124 ,\NIBBLE[6].UNISIM.I_XPHY_n_125 ,Q[79],Q[77],\NIBBLE[6].UNISIM.I_XPHY_n_128 ,\NIBBLE[6].UNISIM.I_XPHY_n_129 }),
        .Q3({\NIBBLE[6].UNISIM.I_XPHY_n_130 ,\NIBBLE[6].UNISIM.I_XPHY_n_131 ,\NIBBLE[6].UNISIM.I_XPHY_n_132 ,\NIBBLE[6].UNISIM.I_XPHY_n_133 ,\NIBBLE[6].UNISIM.I_XPHY_n_134 ,\NIBBLE[6].UNISIM.I_XPHY_n_135 ,\NIBBLE[6].UNISIM.I_XPHY_n_136 ,\NIBBLE[6].UNISIM.I_XPHY_n_137 }),
        .Q4({Q[82],Q[80],\NIBBLE[6].UNISIM.I_XPHY_n_140 ,\NIBBLE[6].UNISIM.I_XPHY_n_141 ,Q[83],Q[81],\NIBBLE[6].UNISIM.I_XPHY_n_144 ,\NIBBLE[6].UNISIM.I_XPHY_n_145 }),
        .Q5({\NIBBLE[6].UNISIM.I_XPHY_n_146 ,\NIBBLE[6].UNISIM.I_XPHY_n_147 ,\NIBBLE[6].UNISIM.I_XPHY_n_148 ,\NIBBLE[6].UNISIM.I_XPHY_n_149 ,\NIBBLE[6].UNISIM.I_XPHY_n_150 ,\NIBBLE[6].UNISIM.I_XPHY_n_151 ,\NIBBLE[6].UNISIM.I_XPHY_n_152 ,\NIBBLE[6].UNISIM.I_XPHY_n_153 }),
        .RIU_ADDR(riu_addr[55:48]),
        .RIU_NIBBLE_SEL(riu_nibble_sel[6]),
        .RIU_RD_DATA(riu_rd_data[111:96]),
        .RIU_RD_VALID(riu_rd_valid[6]),
        .RIU_WR_DATA(riu_wr_data[111:96]),
        .RIU_WR_EN(riu_wr_en[6]),
        .RST(RX_RST),
        .RXTX_SEL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .RX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T_OUT(\NLW_NIBBLE[6].UNISIM.I_XPHY_T_OUT_UNCONNECTED [5:0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  XPHY #(
    .CASCADE_0("FALSE"),
    .CASCADE_1("FALSE"),
    .CASCADE_2("FALSE"),
    .CASCADE_3("FALSE"),
    .CASCADE_4("FALSE"),
    .CASCADE_5("FALSE"),
    .CONTINUOUS_DQS("FALSE"),
    .CRSE_DLY_EN("TRUE"),
    .DELAY_VALUE_0(0),
    .DELAY_VALUE_1(0),
    .DELAY_VALUE_2(0),
    .DELAY_VALUE_3(0),
    .DELAY_VALUE_4(0),
    .DELAY_VALUE_5(0),
    .DIS_IDLY_VT_TRACK("FALSE"),
    .DIS_ODLY_VT_TRACK("FALSE"),
    .DIS_QDLY_VT_TRACK("FALSE"),
    .DQS_MODE("DDR4_1TCK"),
    .DQS_SRC("EXTERN"),
    .EN_CLK_TO_LOWER("DISABLE"),
    .EN_CLK_TO_UPPER("DISABLE"),
    .EN_DYN_DLY_MODE("FALSE"),
    .EN_OTHER_NCLK("TRUE"),
    .EN_OTHER_PCLK("TRUE"),
    .FAST_CK("FALSE"),
    .FIFO_MODE_0("ASYNC"),
    .FIFO_MODE_1("ASYNC"),
    .FIFO_MODE_2("ASYNC"),
    .FIFO_MODE_3("ASYNC"),
    .FIFO_MODE_4("ASYNC"),
    .FIFO_MODE_5("ASYNC"),
    .IBUF_DIS_SRC_0("EXTERNAL"),
    .IBUF_DIS_SRC_1("EXTERNAL"),
    .IBUF_DIS_SRC_2("EXTERNAL"),
    .IBUF_DIS_SRC_3("EXTERNAL"),
    .IBUF_DIS_SRC_4("EXTERNAL"),
    .IBUF_DIS_SRC_5("EXTERNAL"),
    .INV_RXCLK("FALSE"),
    .LP4_DQS("FALSE"),
    .ODELAY_BYPASS_0("FALSE"),
    .ODELAY_BYPASS_1("FALSE"),
    .ODELAY_BYPASS_2("FALSE"),
    .ODELAY_BYPASS_3("FALSE"),
    .ODELAY_BYPASS_4("FALSE"),
    .ODELAY_BYPASS_5("FALSE"),
    .ODT_SRC_0("EXTERNAL"),
    .ODT_SRC_1("EXTERNAL"),
    .ODT_SRC_2("EXTERNAL"),
    .ODT_SRC_3("EXTERNAL"),
    .ODT_SRC_4("EXTERNAL"),
    .ODT_SRC_5("EXTERNAL"),
    .PRIME_VAL(1'b0),
    .REFCLK_FREQUENCY(1000.000000),
    .RX_CLK_PHASE_N("SHIFT_90"),
    .RX_CLK_PHASE_P("SHIFT_90"),
    .RX_DATA_WIDTH(4),
    .RX_GATING("DISABLE"),
    .SELF_CALIBRATE("ENABLE"),
    .SERIAL_MODE("FALSE"),
    .TBYTE_CTL_0("T"),
    .TBYTE_CTL_1("T"),
    .TBYTE_CTL_2("T"),
    .TBYTE_CTL_3("T"),
    .TBYTE_CTL_4("T"),
    .TBYTE_CTL_5("T"),
    .TXRX_LOOPBACK_0("FALSE"),
    .TXRX_LOOPBACK_1("FALSE"),
    .TXRX_LOOPBACK_2("FALSE"),
    .TXRX_LOOPBACK_3("FALSE"),
    .TXRX_LOOPBACK_4("FALSE"),
    .TXRX_LOOPBACK_5("FALSE"),
    .TX_DATA_WIDTH(8),
    .TX_GATING("DISABLE"),
    .TX_INIT_0(1'b0),
    .TX_INIT_1(1'b0),
    .TX_INIT_2(1'b0),
    .TX_INIT_3(1'b0),
    .TX_INIT_4(1'b0),
    .TX_INIT_5(1'b0),
    .TX_INIT_TRI(1'b1),
    .TX_OUTPUT_PHASE_90_0("FALSE"),
    .TX_OUTPUT_PHASE_90_1("FALSE"),
    .TX_OUTPUT_PHASE_90_2("FALSE"),
    .TX_OUTPUT_PHASE_90_3("FALSE"),
    .TX_OUTPUT_PHASE_90_4("FALSE"),
    .TX_OUTPUT_PHASE_90_5("FALSE"),
    .TX_OUTPUT_PHASE_90_TRI("FALSE"),
    .WRITE_LEVELING("FALSE")) 
    \NIBBLE[7].UNISIM.I_XPHY 
       (.BISC_START_IN(bisc_start_wire[7]),
        .BISC_START_OUT(\NLW_NIBBLE[7].UNISIM.I_XPHY_BISC_START_OUT_UNCONNECTED ),
        .BISC_STOP_IN(1'b1),
        .BISC_STOP_OUT(bisc_stop_in[6]),
        .CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLK_FROM_OTHER_XPHY(CLK_TO_UPPER[5]),
        .CLK_TO_LOWER(\NLW_NIBBLE[7].UNISIM.I_XPHY_CLK_TO_LOWER_UNCONNECTED ),
        .CLK_TO_UPPER(\NLW_NIBBLE[7].UNISIM.I_XPHY_CLK_TO_UPPER_UNCONNECTED ),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT({\NIBBLE[7].UNISIM.I_XPHY_n_28 ,\NIBBLE[7].UNISIM.I_XPHY_n_29 ,\NIBBLE[7].UNISIM.I_XPHY_n_30 ,\NIBBLE[7].UNISIM.I_XPHY_n_31 ,\NIBBLE[7].UNISIM.I_XPHY_n_32 ,\NIBBLE[7].UNISIM.I_XPHY_n_33 ,\NIBBLE[7].UNISIM.I_XPHY_n_34 ,\NIBBLE[7].UNISIM.I_XPHY_n_35 ,\NIBBLE[7].UNISIM.I_XPHY_n_36 ,\NIBBLE[7].UNISIM.I_XPHY_n_37 ,\NIBBLE[7].UNISIM.I_XPHY_n_38 ,\NIBBLE[7].UNISIM.I_XPHY_n_39 ,\NIBBLE[7].UNISIM.I_XPHY_n_40 ,\NIBBLE[7].UNISIM.I_XPHY_n_41 ,\NIBBLE[7].UNISIM.I_XPHY_n_42 ,\NIBBLE[7].UNISIM.I_XPHY_n_43 ,\NIBBLE[7].UNISIM.I_XPHY_n_44 ,\NIBBLE[7].UNISIM.I_XPHY_n_45 ,\NIBBLE[7].UNISIM.I_XPHY_n_46 ,\NIBBLE[7].UNISIM.I_XPHY_n_47 ,\NIBBLE[7].UNISIM.I_XPHY_n_48 ,\NIBBLE[7].UNISIM.I_XPHY_n_49 ,\NIBBLE[7].UNISIM.I_XPHY_n_50 ,\NIBBLE[7].UNISIM.I_XPHY_n_51 ,\NIBBLE[7].UNISIM.I_XPHY_n_52 ,\NIBBLE[7].UNISIM.I_XPHY_n_53 ,\NIBBLE[7].UNISIM.I_XPHY_n_54 ,\NIBBLE[7].UNISIM.I_XPHY_n_55 ,\NIBBLE[7].UNISIM.I_XPHY_n_56 ,\NIBBLE[7].UNISIM.I_XPHY_n_57 ,\NIBBLE[7].UNISIM.I_XPHY_n_58 ,\NIBBLE[7].UNISIM.I_XPHY_n_59 ,\NIBBLE[7].UNISIM.I_XPHY_n_60 ,\NIBBLE[7].UNISIM.I_XPHY_n_61 ,\NIBBLE[7].UNISIM.I_XPHY_n_62 ,\NIBBLE[7].UNISIM.I_XPHY_n_63 ,\NIBBLE[7].UNISIM.I_XPHY_n_64 ,\NIBBLE[7].UNISIM.I_XPHY_n_65 ,\NIBBLE[7].UNISIM.I_XPHY_n_66 ,\NIBBLE[7].UNISIM.I_XPHY_n_67 ,\NIBBLE[7].UNISIM.I_XPHY_n_68 ,\NIBBLE[7].UNISIM.I_XPHY_n_69 ,\NIBBLE[7].UNISIM.I_XPHY_n_70 ,\NIBBLE[7].UNISIM.I_XPHY_n_71 ,\NIBBLE[7].UNISIM.I_XPHY_n_72 ,\NIBBLE[7].UNISIM.I_XPHY_n_73 ,\NIBBLE[7].UNISIM.I_XPHY_n_74 ,\NIBBLE[7].UNISIM.I_XPHY_n_75 ,\NIBBLE[7].UNISIM.I_XPHY_n_76 ,\NIBBLE[7].UNISIM.I_XPHY_n_77 ,\NIBBLE[7].UNISIM.I_XPHY_n_78 ,\NIBBLE[7].UNISIM.I_XPHY_n_79 ,\NIBBLE[7].UNISIM.I_XPHY_n_80 ,\NIBBLE[7].UNISIM.I_XPHY_n_81 }),
        .CTRL_CLK(ctrl_clk[7]),
        .D0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DATAIN({\NLW_NIBBLE[7].UNISIM.I_XPHY_DATAIN_UNCONNECTED [5:4],DATAIN[45:42]}),
        .DLY_RDY(p_6_in8_in),
        .DYN_DCI({\NIBBLE[7].UNISIM.I_XPHY_n_82 ,\NIBBLE[7].UNISIM.I_XPHY_n_83 ,\NIBBLE[7].UNISIM.I_XPHY_n_84 ,\NIBBLE[7].UNISIM.I_XPHY_n_85 ,\NIBBLE[7].UNISIM.I_XPHY_n_86 ,\NIBBLE[7].UNISIM.I_XPHY_n_87 }),
        .EN_VTC(en_vtc),
        .FIFO_EMPTY(FIFO_EMPTY[7]),
        .FIFO_RDEN(fifo_rd_en),
        .FIFO_RD_CLK(fifo_rd_clk),
        .FIFO_WR_CLK(fifo_wr_clk[7]),
        .GT_STATUS(gt_status[7]),
        .IBUF_DISABLE({\NIBBLE[7].UNISIM.I_XPHY_n_88 ,\NIBBLE[7].UNISIM.I_XPHY_n_89 ,\NIBBLE[7].UNISIM.I_XPHY_n_90 ,\NIBBLE[7].UNISIM.I_XPHY_n_91 ,\NIBBLE[7].UNISIM.I_XPHY_n_92 ,\NIBBLE[7].UNISIM.I_XPHY_n_93 }),
        .INC({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NCLK_NIBBLE_IN(NCLK_NIBBLE_OUT[6]),
        .NCLK_NIBBLE_OUT(NCLK_NIBBLE_OUT[7]),
        .O0(\NLW_NIBBLE[7].UNISIM.I_XPHY_O0_UNCONNECTED [5:0]),
        .PCLK_NIBBLE_IN(PCLK_NIBBLE_OUT[6]),
        .PCLK_NIBBLE_OUT(PCLK_NIBBLE_OUT[7]),
        .PHY_RDCS0(phy_rdcs0[31:28]),
        .PHY_RDCS1(phy_rdcs1[31:28]),
        .PHY_RDEN({1'b0,1'b0,1'b0,1'b0}),
        .PHY_RDY(p_6_in),
        .PHY_WRCS0(phy_wrcs0[31:28]),
        .PHY_WRCS1(phy_wrcs1[31:28]),
        .PHY_WREN({1'b0,1'b0,1'b0,1'b0}),
        .PLL_CLK(bank1_pll_clkoutphy),
        .Q0({Q[86],Q[84],\NIBBLE[7].UNISIM.I_XPHY_n_108 ,\NIBBLE[7].UNISIM.I_XPHY_n_109 ,Q[87],Q[85],\NIBBLE[7].UNISIM.I_XPHY_n_112 ,\NIBBLE[7].UNISIM.I_XPHY_n_113 }),
        .Q1({\NIBBLE[7].UNISIM.I_XPHY_n_114 ,\NIBBLE[7].UNISIM.I_XPHY_n_115 ,\NIBBLE[7].UNISIM.I_XPHY_n_116 ,\NIBBLE[7].UNISIM.I_XPHY_n_117 ,\NIBBLE[7].UNISIM.I_XPHY_n_118 ,\NIBBLE[7].UNISIM.I_XPHY_n_119 ,\NIBBLE[7].UNISIM.I_XPHY_n_120 ,\NIBBLE[7].UNISIM.I_XPHY_n_121 }),
        .Q2({Q[90],Q[88],\NIBBLE[7].UNISIM.I_XPHY_n_124 ,\NIBBLE[7].UNISIM.I_XPHY_n_125 ,Q[91],Q[89],\NIBBLE[7].UNISIM.I_XPHY_n_128 ,\NIBBLE[7].UNISIM.I_XPHY_n_129 }),
        .Q3({\NIBBLE[7].UNISIM.I_XPHY_n_130 ,\NIBBLE[7].UNISIM.I_XPHY_n_131 ,\NIBBLE[7].UNISIM.I_XPHY_n_132 ,\NIBBLE[7].UNISIM.I_XPHY_n_133 ,\NIBBLE[7].UNISIM.I_XPHY_n_134 ,\NIBBLE[7].UNISIM.I_XPHY_n_135 ,\NIBBLE[7].UNISIM.I_XPHY_n_136 ,\NIBBLE[7].UNISIM.I_XPHY_n_137 }),
        .Q4({\NIBBLE[7].UNISIM.I_XPHY_n_138 ,\NIBBLE[7].UNISIM.I_XPHY_n_139 ,\NIBBLE[7].UNISIM.I_XPHY_n_140 ,\NIBBLE[7].UNISIM.I_XPHY_n_141 ,\NIBBLE[7].UNISIM.I_XPHY_n_142 ,\NIBBLE[7].UNISIM.I_XPHY_n_143 ,\NIBBLE[7].UNISIM.I_XPHY_n_144 ,\NIBBLE[7].UNISIM.I_XPHY_n_145 }),
        .Q5({\NIBBLE[7].UNISIM.I_XPHY_n_146 ,\NIBBLE[7].UNISIM.I_XPHY_n_147 ,\NIBBLE[7].UNISIM.I_XPHY_n_148 ,\NIBBLE[7].UNISIM.I_XPHY_n_149 ,\NIBBLE[7].UNISIM.I_XPHY_n_150 ,\NIBBLE[7].UNISIM.I_XPHY_n_151 ,\NIBBLE[7].UNISIM.I_XPHY_n_152 ,\NIBBLE[7].UNISIM.I_XPHY_n_153 }),
        .RIU_ADDR(riu_addr[63:56]),
        .RIU_NIBBLE_SEL(riu_nibble_sel[7]),
        .RIU_RD_DATA(riu_rd_data[127:112]),
        .RIU_RD_VALID(riu_rd_valid[7]),
        .RIU_WR_DATA(riu_wr_data[127:112]),
        .RIU_WR_EN(riu_wr_en[7]),
        .RST(RX_RST),
        .RXTX_SEL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .RX_RST({1'b1,1'b1,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX_RST({1'b1,1'b1,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T_OUT(\NLW_NIBBLE[7].UNISIM.I_XPHY_T_OUT_UNCONNECTED [5:0]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    dly_rdy_INST_0
       (.I0(dly_rdy_INST_0_i_1_n_0),
        .I1(dly_rdy_INST_0_i_2_n_0),
        .I2(\syncstages_ff_reg[0] ),
        .I3(\syncstages_ff_reg[0]_0 ),
        .I4(\syncstages_ff_reg[0]_1 ),
        .I5(\syncstages_ff_reg[0]_2 ),
        .O(dly_rdy));
  LUT4 #(
    .INIT(16'h7FFF)) 
    dly_rdy_INST_0_i_1
       (.I0(\syncstages_ff_reg[0]_3 [1]),
        .I1(p_7_in9_in),
        .I2(p_13_in15_in),
        .I3(p_10_in12_in),
        .O(dly_rdy_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    dly_rdy_INST_0_i_2
       (.I0(\syncstages_ff_reg[0]_3 [0]),
        .I1(p_6_in8_in),
        .I2(p_12_in14_in),
        .I3(p_8_in10_in),
        .O(dly_rdy_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    phy_rdy_INST_0
       (.I0(phy_rdy_INST_0_i_1_n_0),
        .I1(phy_rdy_INST_0_i_2_n_0),
        .I2(\syncstages_ff_reg[0]_4 ),
        .I3(\syncstages_ff_reg[0]_5 ),
        .I4(\syncstages_ff_reg[0]_6 ),
        .I5(\syncstages_ff_reg[0]_7 ),
        .O(phy_rdy));
  LUT4 #(
    .INIT(16'h7FFF)) 
    phy_rdy_INST_0_i_1
       (.I0(\syncstages_ff_reg[0]_8 [1]),
        .I1(p_7_in),
        .I2(p_13_in),
        .I3(p_10_in),
        .O(phy_rdy_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    phy_rdy_INST_0_i_2
       (.I0(\syncstages_ff_reg[0]_8 [0]),
        .I1(p_6_in),
        .I2(p_12_in),
        .I3(p_8_in),
        .O(phy_rdy_INST_0_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "advanced_io_wizard_phy_v1_0_0_bank_wrapper" *) 
module design_1_advanced_io_wizard_0_0_advanced_io_wizard_phy_v1_0_0_bank_wrapper__parameterized1
   (ctrl_clk_0,
    ctrl_clk_1,
    ctrl_clk_2,
    ctrl_clk_3,
    ctrl_clk_4,
    FIFO_EMPTY,
    fifo_wr_clk,
    gt_status,
    ctrl_clk_5,
    riu_rd_valid,
    riu_rd_data,
    Q,
    DLY_RDY,
    \syncstages_ff_reg[0] ,
    PHY_RDY,
    \syncstages_ff_reg[0]_0 ,
    ctrl_clk,
    en_vtc,
    fifo_rd_en,
    fifo_rd_clk,
    bank2_pll_clkoutphy,
    riu_nibble_sel,
    riu_wr_en,
    RX_RST,
    riu_wr_data,
    phy_rdcs0,
    phy_rdcs1,
    phy_wrcs0,
    phy_wrcs1,
    riu_addr,
    IOB);
  output ctrl_clk_0;
  output ctrl_clk_1;
  output ctrl_clk_2;
  output ctrl_clk_3;
  output [2:0]ctrl_clk_4;
  output [6:0]FIFO_EMPTY;
  output [6:0]fifo_wr_clk;
  output [6:0]gt_status;
  output [2:0]ctrl_clk_5;
  output [6:0]riu_rd_valid;
  output [111:0]riu_rd_data;
  output [75:0]Q;
  input [1:0]DLY_RDY;
  input [1:0]\syncstages_ff_reg[0] ;
  input [1:0]PHY_RDY;
  input [1:0]\syncstages_ff_reg[0]_0 ;
  input [6:0]ctrl_clk;
  input en_vtc;
  input fifo_rd_en;
  input fifo_rd_clk;
  input bank2_pll_clkoutphy;
  input [6:0]riu_nibble_sel;
  input [6:0]riu_wr_en;
  input [0:0]RX_RST;
  input [111:0]riu_wr_data;
  input [27:0]phy_rdcs0;
  input [27:0]phy_rdcs1;
  input [27:0]phy_wrcs0;
  input [27:0]phy_wrcs1;
  input [55:0]riu_addr;
  input [37:0]IOB;

  wire [6:4]CLK_TO_LOWER;
  wire [5:2]CLK_TO_UPPER;
  wire [51:12]DATAIN;
  wire [1:0]DLY_RDY;
  wire [6:0]FIFO_EMPTY;
  wire [37:0]IOB;
  wire [7:2]NCLK_NIBBLE_OUT;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_108 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_109 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_112 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_113 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_114 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_115 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_116 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_117 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_118 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_119 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_120 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_121 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_124 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_125 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_128 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_129 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_130 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_131 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_132 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_133 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_134 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_135 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_136 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_137 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_140 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_141 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_144 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_145 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_146 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_147 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_148 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_149 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_150 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_151 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_152 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_153 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_28 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_29 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_30 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_31 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_32 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_33 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_34 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_35 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_36 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_37 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_38 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_39 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_40 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_41 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_42 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_43 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_44 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_45 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_46 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_47 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_48 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_49 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_50 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_51 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_52 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_53 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_54 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_55 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_56 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_57 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_58 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_59 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_60 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_61 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_62 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_63 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_64 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_65 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_66 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_67 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_68 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_69 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_70 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_71 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_72 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_73 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_74 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_75 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_76 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_77 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_78 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_79 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_80 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_81 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_82 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_83 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_84 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_85 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_86 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_87 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_88 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_89 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_90 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_91 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_92 ;
  wire \NIBBLE[2].UNISIM.I_XPHY_n_93 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_108 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_109 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_112 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_113 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_114 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_115 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_116 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_117 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_118 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_119 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_120 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_121 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_124 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_125 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_128 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_129 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_130 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_131 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_132 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_133 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_134 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_135 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_136 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_137 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_140 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_141 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_144 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_145 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_146 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_147 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_148 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_149 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_150 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_151 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_152 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_153 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_28 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_29 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_30 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_31 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_32 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_33 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_34 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_35 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_36 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_37 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_38 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_39 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_40 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_41 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_42 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_43 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_44 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_45 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_46 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_47 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_48 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_49 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_50 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_51 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_52 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_53 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_54 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_55 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_56 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_57 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_58 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_59 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_60 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_61 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_62 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_63 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_64 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_65 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_66 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_67 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_68 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_69 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_70 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_71 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_72 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_73 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_74 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_75 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_76 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_77 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_78 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_79 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_80 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_81 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_82 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_83 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_84 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_85 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_86 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_87 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_88 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_89 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_90 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_91 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_92 ;
  wire \NIBBLE[3].UNISIM.I_XPHY_n_93 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_108 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_109 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_112 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_113 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_114 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_115 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_116 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_117 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_118 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_119 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_120 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_121 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_124 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_125 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_128 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_129 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_130 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_131 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_132 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_133 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_134 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_135 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_136 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_137 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_140 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_141 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_144 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_145 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_146 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_147 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_148 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_149 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_150 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_151 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_152 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_153 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_28 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_29 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_30 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_31 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_32 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_33 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_34 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_35 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_36 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_37 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_38 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_39 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_40 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_41 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_42 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_43 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_44 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_45 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_46 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_47 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_48 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_49 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_50 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_51 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_52 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_53 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_54 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_55 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_56 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_57 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_58 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_59 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_60 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_61 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_62 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_63 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_64 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_65 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_66 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_67 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_68 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_69 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_70 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_71 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_72 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_73 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_74 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_75 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_76 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_77 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_78 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_79 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_80 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_81 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_82 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_83 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_84 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_85 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_86 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_87 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_88 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_89 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_90 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_91 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_92 ;
  wire \NIBBLE[4].UNISIM.I_XPHY_n_93 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_108 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_109 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_112 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_113 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_114 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_115 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_116 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_117 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_118 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_119 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_120 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_121 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_124 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_125 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_128 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_129 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_130 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_131 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_132 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_133 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_134 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_135 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_136 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_137 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_140 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_141 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_144 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_145 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_146 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_147 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_148 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_149 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_150 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_151 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_152 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_153 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_28 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_29 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_30 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_31 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_32 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_33 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_34 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_35 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_36 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_37 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_38 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_39 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_40 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_41 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_42 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_43 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_44 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_45 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_46 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_47 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_48 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_49 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_50 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_51 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_52 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_53 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_54 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_55 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_56 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_57 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_58 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_59 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_60 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_61 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_62 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_63 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_64 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_65 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_66 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_67 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_68 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_69 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_70 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_71 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_72 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_73 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_74 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_75 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_76 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_77 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_78 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_79 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_80 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_81 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_82 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_83 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_84 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_85 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_86 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_87 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_88 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_89 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_90 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_91 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_92 ;
  wire \NIBBLE[5].UNISIM.I_XPHY_n_93 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_108 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_109 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_112 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_113 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_114 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_115 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_116 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_117 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_118 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_119 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_120 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_121 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_124 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_125 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_128 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_129 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_130 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_131 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_132 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_133 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_134 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_135 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_136 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_137 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_140 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_141 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_144 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_145 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_146 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_147 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_148 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_149 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_150 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_151 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_152 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_153 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_28 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_29 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_30 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_31 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_32 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_33 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_34 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_35 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_36 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_37 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_38 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_39 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_40 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_41 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_42 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_43 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_44 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_45 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_46 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_47 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_48 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_49 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_50 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_51 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_52 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_53 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_54 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_55 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_56 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_57 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_58 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_59 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_60 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_61 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_62 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_63 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_64 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_65 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_66 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_67 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_68 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_69 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_70 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_71 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_72 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_73 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_74 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_75 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_76 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_77 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_78 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_79 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_80 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_81 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_82 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_83 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_84 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_85 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_86 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_87 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_88 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_89 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_90 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_91 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_92 ;
  wire \NIBBLE[6].UNISIM.I_XPHY_n_93 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_108 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_109 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_112 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_113 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_114 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_115 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_116 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_117 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_118 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_119 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_120 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_121 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_124 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_125 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_128 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_129 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_130 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_131 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_132 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_133 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_134 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_135 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_136 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_137 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_140 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_141 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_144 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_145 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_146 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_147 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_148 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_149 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_150 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_151 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_152 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_153 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_28 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_29 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_30 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_31 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_32 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_33 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_34 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_35 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_36 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_37 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_38 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_39 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_40 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_41 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_42 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_43 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_44 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_45 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_46 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_47 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_48 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_49 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_50 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_51 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_52 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_53 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_54 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_55 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_56 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_57 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_58 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_59 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_60 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_61 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_62 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_63 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_64 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_65 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_66 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_67 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_68 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_69 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_70 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_71 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_72 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_73 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_74 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_75 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_76 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_77 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_78 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_79 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_80 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_81 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_82 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_83 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_84 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_85 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_86 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_87 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_88 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_89 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_90 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_91 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_92 ;
  wire \NIBBLE[7].UNISIM.I_XPHY_n_93 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_106 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_107 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_108 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_109 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_110 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_111 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_112 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_113 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_114 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_115 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_116 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_117 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_118 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_119 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_120 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_121 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_124 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_125 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_128 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_129 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_130 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_131 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_132 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_133 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_134 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_135 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_136 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_137 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_138 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_139 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_140 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_141 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_142 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_143 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_144 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_145 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_146 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_147 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_148 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_149 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_150 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_151 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_152 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_153 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_28 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_29 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_30 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_31 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_32 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_33 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_34 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_35 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_36 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_37 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_38 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_39 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_40 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_41 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_42 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_43 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_44 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_45 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_46 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_47 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_48 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_49 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_50 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_51 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_52 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_53 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_54 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_55 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_56 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_57 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_58 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_59 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_60 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_61 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_62 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_63 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_64 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_65 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_66 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_67 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_68 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_69 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_70 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_71 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_72 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_73 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_74 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_75 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_76 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_77 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_78 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_79 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_80 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_81 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_82 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_83 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_84 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_85 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_86 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_87 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_88 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_89 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_90 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_91 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_92 ;
  wire \NIBBLE[8].UNISIM.I_XPHY_n_93 ;
  wire [7:2]PCLK_NIBBLE_OUT;
  wire [1:0]PHY_RDY;
  wire [75:0]Q;
  wire [0:0]RX_RST;
  wire bank2_pll_clkoutphy;
  wire [8:2]bisc_start_in;
  wire [7:2]bisc_stop_in;
  wire [6:0]ctrl_clk;
  wire ctrl_clk_0;
  wire ctrl_clk_1;
  wire ctrl_clk_2;
  wire ctrl_clk_3;
  wire [2:0]ctrl_clk_4;
  wire [2:0]ctrl_clk_5;
  wire en_vtc;
  wire fifo_rd_clk;
  wire fifo_rd_en;
  wire [6:0]fifo_wr_clk;
  wire [6:0]gt_status;
  wire p_0_in;
  wire p_0_in2_in;
  wire p_2_in;
  wire p_2_in4_in;
  wire p_3_in;
  wire p_3_in5_in;
  wire p_4_in;
  wire p_4_in6_in;
  wire [27:0]phy_rdcs0;
  wire [27:0]phy_rdcs1;
  wire [27:0]phy_wrcs0;
  wire [27:0]phy_wrcs1;
  wire [55:0]riu_addr;
  wire [6:0]riu_nibble_sel;
  wire [111:0]riu_rd_data;
  wire [6:0]riu_rd_valid;
  wire [111:0]riu_wr_data;
  wire [6:0]riu_wr_en;
  wire [1:0]\syncstages_ff_reg[0] ;
  wire [1:0]\syncstages_ff_reg[0]_0 ;
  wire \NLW_NIBBLE[2].UNISIM.I_XPHY_CLK_TO_LOWER_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[2].UNISIM.I_XPHY_O0_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[2].UNISIM.I_XPHY_T_OUT_UNCONNECTED ;
  wire \NLW_NIBBLE[3].UNISIM.I_XPHY_CLK_TO_LOWER_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[3].UNISIM.I_XPHY_O0_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[3].UNISIM.I_XPHY_T_OUT_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[4].UNISIM.I_XPHY_O0_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[4].UNISIM.I_XPHY_T_OUT_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[5].UNISIM.I_XPHY_O0_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[5].UNISIM.I_XPHY_T_OUT_UNCONNECTED ;
  wire \NLW_NIBBLE[6].UNISIM.I_XPHY_CLK_TO_UPPER_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[6].UNISIM.I_XPHY_O0_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[6].UNISIM.I_XPHY_T_OUT_UNCONNECTED ;
  wire \NLW_NIBBLE[7].UNISIM.I_XPHY_CLK_TO_LOWER_UNCONNECTED ;
  wire \NLW_NIBBLE[7].UNISIM.I_XPHY_CLK_TO_UPPER_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[7].UNISIM.I_XPHY_O0_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[7].UNISIM.I_XPHY_T_OUT_UNCONNECTED ;
  wire \NLW_NIBBLE[8].UNISIM.I_XPHY_BISC_START_OUT_UNCONNECTED ;
  wire \NLW_NIBBLE[8].UNISIM.I_XPHY_CLK_TO_LOWER_UNCONNECTED ;
  wire \NLW_NIBBLE[8].UNISIM.I_XPHY_CLK_TO_UPPER_UNCONNECTED ;
  wire \NLW_NIBBLE[8].UNISIM.I_XPHY_NCLK_NIBBLE_OUT_UNCONNECTED ;
  wire \NLW_NIBBLE[8].UNISIM.I_XPHY_PCLK_NIBBLE_OUT_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[8].UNISIM.I_XPHY_DATAIN_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[8].UNISIM.I_XPHY_O0_UNCONNECTED ;
  wire [5:0]\NLW_NIBBLE[8].UNISIM.I_XPHY_T_OUT_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[12].I_IBUFDS_DIFF_OUT 
       (.I(IOB[0]),
        .IB(IOB[1]),
        .O(DATAIN[12]),
        .OB(DATAIN[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[14].I_IBUFDS_DIFF_OUT 
       (.I(IOB[2]),
        .IB(IOB[3]),
        .O(DATAIN[14]),
        .OB(DATAIN[15]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[16].I_IBUFDS_DIFF_OUT 
       (.I(IOB[4]),
        .IB(IOB[5]),
        .O(DATAIN[16]),
        .OB(DATAIN[17]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[18].I_IBUFDS_DIFF_OUT 
       (.I(IOB[6]),
        .IB(IOB[7]),
        .O(DATAIN[18]),
        .OB(DATAIN[19]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[20].I_IBUFDS_DIFF_OUT 
       (.I(IOB[8]),
        .IB(IOB[9]),
        .O(DATAIN[20]),
        .OB(DATAIN[21]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[22].I_IBUFDS_DIFF_OUT 
       (.I(IOB[10]),
        .IB(IOB[11]),
        .O(DATAIN[22]),
        .OB(DATAIN[23]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[24].I_IBUFDS_DIFF_OUT 
       (.I(IOB[12]),
        .IB(IOB[13]),
        .O(DATAIN[24]),
        .OB(DATAIN[25]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[26].I_IBUFDS_DIFF_OUT 
       (.I(IOB[14]),
        .IB(IOB[15]),
        .O(DATAIN[26]),
        .OB(DATAIN[27]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[28].I_IBUFDS_DIFF_OUT 
       (.I(IOB[16]),
        .IB(IOB[17]),
        .O(DATAIN[28]),
        .OB(DATAIN[29]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[30].I_IBUFDS_DIFF_OUT 
       (.I(IOB[18]),
        .IB(IOB[19]),
        .O(DATAIN[30]),
        .OB(DATAIN[31]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[32].I_IBUFDS_DIFF_OUT 
       (.I(IOB[20]),
        .IB(IOB[21]),
        .O(DATAIN[32]),
        .OB(DATAIN[33]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[34].I_IBUFDS_DIFF_OUT 
       (.I(IOB[22]),
        .IB(IOB[23]),
        .O(DATAIN[34]),
        .OB(DATAIN[35]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[36].I_IBUFDS_DIFF_OUT 
       (.I(IOB[24]),
        .IB(IOB[25]),
        .O(DATAIN[36]),
        .OB(DATAIN[37]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[38].I_IBUFDS_DIFF_OUT 
       (.I(IOB[26]),
        .IB(IOB[27]),
        .O(DATAIN[38]),
        .OB(DATAIN[39]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[40].I_IBUFDS_DIFF_OUT 
       (.I(IOB[28]),
        .IB(IOB[29]),
        .O(DATAIN[40]),
        .OB(DATAIN[41]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[42].I_IBUFDS_DIFF_OUT 
       (.I(IOB[30]),
        .IB(IOB[31]),
        .O(DATAIN[42]),
        .OB(DATAIN[43]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[44].I_IBUFDS_DIFF_OUT 
       (.I(IOB[32]),
        .IB(IOB[33]),
        .O(DATAIN[44]),
        .OB(DATAIN[45]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[46].I_IBUFDS_DIFF_OUT 
       (.I(IOB[34]),
        .IB(IOB[35]),
        .O(DATAIN[46]),
        .OB(DATAIN[47]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DIFF_OUT #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    \IOB_DIFF_EVEN[50].I_IBUFDS_DIFF_OUT 
       (.I(IOB[36]),
        .IB(IOB[37]),
        .O(DATAIN[50]),
        .OB(DATAIN[51]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  XPHY #(
    .CASCADE_0("FALSE"),
    .CASCADE_1("FALSE"),
    .CASCADE_2("FALSE"),
    .CASCADE_3("FALSE"),
    .CASCADE_4("FALSE"),
    .CASCADE_5("FALSE"),
    .CONTINUOUS_DQS("FALSE"),
    .CRSE_DLY_EN("TRUE"),
    .DELAY_VALUE_0(0),
    .DELAY_VALUE_1(0),
    .DELAY_VALUE_2(0),
    .DELAY_VALUE_3(0),
    .DELAY_VALUE_4(0),
    .DELAY_VALUE_5(0),
    .DIS_IDLY_VT_TRACK("FALSE"),
    .DIS_ODLY_VT_TRACK("FALSE"),
    .DIS_QDLY_VT_TRACK("FALSE"),
    .DQS_MODE("DDR4_1TCK"),
    .DQS_SRC("LOCAL"),
    .EN_CLK_TO_LOWER("DISABLE"),
    .EN_CLK_TO_UPPER("ENABLE"),
    .EN_DYN_DLY_MODE("FALSE"),
    .EN_OTHER_NCLK("FALSE"),
    .EN_OTHER_PCLK("FALSE"),
    .FAST_CK("FALSE"),
    .FIFO_MODE_0("ASYNC"),
    .FIFO_MODE_1("ASYNC"),
    .FIFO_MODE_2("ASYNC"),
    .FIFO_MODE_3("ASYNC"),
    .FIFO_MODE_4("ASYNC"),
    .FIFO_MODE_5("ASYNC"),
    .IBUF_DIS_SRC_0("EXTERNAL"),
    .IBUF_DIS_SRC_1("EXTERNAL"),
    .IBUF_DIS_SRC_2("EXTERNAL"),
    .IBUF_DIS_SRC_3("EXTERNAL"),
    .IBUF_DIS_SRC_4("EXTERNAL"),
    .IBUF_DIS_SRC_5("EXTERNAL"),
    .INV_RXCLK("FALSE"),
    .LP4_DQS("FALSE"),
    .ODELAY_BYPASS_0("FALSE"),
    .ODELAY_BYPASS_1("FALSE"),
    .ODELAY_BYPASS_2("FALSE"),
    .ODELAY_BYPASS_3("FALSE"),
    .ODELAY_BYPASS_4("FALSE"),
    .ODELAY_BYPASS_5("FALSE"),
    .ODT_SRC_0("EXTERNAL"),
    .ODT_SRC_1("EXTERNAL"),
    .ODT_SRC_2("EXTERNAL"),
    .ODT_SRC_3("EXTERNAL"),
    .ODT_SRC_4("EXTERNAL"),
    .ODT_SRC_5("EXTERNAL"),
    .PRIME_VAL(1'b0),
    .REFCLK_FREQUENCY(1000.000000),
    .RX_CLK_PHASE_N("SHIFT_90"),
    .RX_CLK_PHASE_P("SHIFT_90"),
    .RX_DATA_WIDTH(4),
    .RX_GATING("DISABLE"),
    .SELF_CALIBRATE("ENABLE"),
    .SERIAL_MODE("FALSE"),
    .TBYTE_CTL_0("T"),
    .TBYTE_CTL_1("T"),
    .TBYTE_CTL_2("T"),
    .TBYTE_CTL_3("T"),
    .TBYTE_CTL_4("T"),
    .TBYTE_CTL_5("T"),
    .TXRX_LOOPBACK_0("FALSE"),
    .TXRX_LOOPBACK_1("FALSE"),
    .TXRX_LOOPBACK_2("FALSE"),
    .TXRX_LOOPBACK_3("FALSE"),
    .TXRX_LOOPBACK_4("FALSE"),
    .TXRX_LOOPBACK_5("FALSE"),
    .TX_DATA_WIDTH(8),
    .TX_GATING("DISABLE"),
    .TX_INIT_0(1'b0),
    .TX_INIT_1(1'b0),
    .TX_INIT_2(1'b0),
    .TX_INIT_3(1'b0),
    .TX_INIT_4(1'b0),
    .TX_INIT_5(1'b0),
    .TX_INIT_TRI(1'b1),
    .TX_OUTPUT_PHASE_90_0("FALSE"),
    .TX_OUTPUT_PHASE_90_1("FALSE"),
    .TX_OUTPUT_PHASE_90_2("FALSE"),
    .TX_OUTPUT_PHASE_90_3("FALSE"),
    .TX_OUTPUT_PHASE_90_4("FALSE"),
    .TX_OUTPUT_PHASE_90_5("FALSE"),
    .TX_OUTPUT_PHASE_90_TRI("FALSE"),
    .WRITE_LEVELING("FALSE")) 
    \NIBBLE[2].UNISIM.I_XPHY 
       (.BISC_START_IN(bisc_start_in[2]),
        .BISC_START_OUT(bisc_start_in[3]),
        .BISC_STOP_IN(bisc_stop_in[2]),
        .BISC_STOP_OUT(bisc_start_in[2]),
        .CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLK_FROM_OTHER_XPHY(CLK_TO_LOWER[4]),
        .CLK_TO_LOWER(\NLW_NIBBLE[2].UNISIM.I_XPHY_CLK_TO_LOWER_UNCONNECTED ),
        .CLK_TO_UPPER(CLK_TO_UPPER[2]),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT({\NIBBLE[2].UNISIM.I_XPHY_n_28 ,\NIBBLE[2].UNISIM.I_XPHY_n_29 ,\NIBBLE[2].UNISIM.I_XPHY_n_30 ,\NIBBLE[2].UNISIM.I_XPHY_n_31 ,\NIBBLE[2].UNISIM.I_XPHY_n_32 ,\NIBBLE[2].UNISIM.I_XPHY_n_33 ,\NIBBLE[2].UNISIM.I_XPHY_n_34 ,\NIBBLE[2].UNISIM.I_XPHY_n_35 ,\NIBBLE[2].UNISIM.I_XPHY_n_36 ,\NIBBLE[2].UNISIM.I_XPHY_n_37 ,\NIBBLE[2].UNISIM.I_XPHY_n_38 ,\NIBBLE[2].UNISIM.I_XPHY_n_39 ,\NIBBLE[2].UNISIM.I_XPHY_n_40 ,\NIBBLE[2].UNISIM.I_XPHY_n_41 ,\NIBBLE[2].UNISIM.I_XPHY_n_42 ,\NIBBLE[2].UNISIM.I_XPHY_n_43 ,\NIBBLE[2].UNISIM.I_XPHY_n_44 ,\NIBBLE[2].UNISIM.I_XPHY_n_45 ,\NIBBLE[2].UNISIM.I_XPHY_n_46 ,\NIBBLE[2].UNISIM.I_XPHY_n_47 ,\NIBBLE[2].UNISIM.I_XPHY_n_48 ,\NIBBLE[2].UNISIM.I_XPHY_n_49 ,\NIBBLE[2].UNISIM.I_XPHY_n_50 ,\NIBBLE[2].UNISIM.I_XPHY_n_51 ,\NIBBLE[2].UNISIM.I_XPHY_n_52 ,\NIBBLE[2].UNISIM.I_XPHY_n_53 ,\NIBBLE[2].UNISIM.I_XPHY_n_54 ,\NIBBLE[2].UNISIM.I_XPHY_n_55 ,\NIBBLE[2].UNISIM.I_XPHY_n_56 ,\NIBBLE[2].UNISIM.I_XPHY_n_57 ,\NIBBLE[2].UNISIM.I_XPHY_n_58 ,\NIBBLE[2].UNISIM.I_XPHY_n_59 ,\NIBBLE[2].UNISIM.I_XPHY_n_60 ,\NIBBLE[2].UNISIM.I_XPHY_n_61 ,\NIBBLE[2].UNISIM.I_XPHY_n_62 ,\NIBBLE[2].UNISIM.I_XPHY_n_63 ,\NIBBLE[2].UNISIM.I_XPHY_n_64 ,\NIBBLE[2].UNISIM.I_XPHY_n_65 ,\NIBBLE[2].UNISIM.I_XPHY_n_66 ,\NIBBLE[2].UNISIM.I_XPHY_n_67 ,\NIBBLE[2].UNISIM.I_XPHY_n_68 ,\NIBBLE[2].UNISIM.I_XPHY_n_69 ,\NIBBLE[2].UNISIM.I_XPHY_n_70 ,\NIBBLE[2].UNISIM.I_XPHY_n_71 ,\NIBBLE[2].UNISIM.I_XPHY_n_72 ,\NIBBLE[2].UNISIM.I_XPHY_n_73 ,\NIBBLE[2].UNISIM.I_XPHY_n_74 ,\NIBBLE[2].UNISIM.I_XPHY_n_75 ,\NIBBLE[2].UNISIM.I_XPHY_n_76 ,\NIBBLE[2].UNISIM.I_XPHY_n_77 ,\NIBBLE[2].UNISIM.I_XPHY_n_78 ,\NIBBLE[2].UNISIM.I_XPHY_n_79 ,\NIBBLE[2].UNISIM.I_XPHY_n_80 ,\NIBBLE[2].UNISIM.I_XPHY_n_81 }),
        .CTRL_CLK(ctrl_clk[0]),
        .D0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DATAIN(DATAIN[17:12]),
        .DLY_RDY(ctrl_clk_4[0]),
        .DYN_DCI({\NIBBLE[2].UNISIM.I_XPHY_n_82 ,\NIBBLE[2].UNISIM.I_XPHY_n_83 ,\NIBBLE[2].UNISIM.I_XPHY_n_84 ,\NIBBLE[2].UNISIM.I_XPHY_n_85 ,\NIBBLE[2].UNISIM.I_XPHY_n_86 ,\NIBBLE[2].UNISIM.I_XPHY_n_87 }),
        .EN_VTC(en_vtc),
        .FIFO_EMPTY(FIFO_EMPTY[0]),
        .FIFO_RDEN(fifo_rd_en),
        .FIFO_RD_CLK(fifo_rd_clk),
        .FIFO_WR_CLK(fifo_wr_clk[0]),
        .GT_STATUS(gt_status[0]),
        .IBUF_DISABLE({\NIBBLE[2].UNISIM.I_XPHY_n_88 ,\NIBBLE[2].UNISIM.I_XPHY_n_89 ,\NIBBLE[2].UNISIM.I_XPHY_n_90 ,\NIBBLE[2].UNISIM.I_XPHY_n_91 ,\NIBBLE[2].UNISIM.I_XPHY_n_92 ,\NIBBLE[2].UNISIM.I_XPHY_n_93 }),
        .INC({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NCLK_NIBBLE_IN(NCLK_NIBBLE_OUT[3]),
        .NCLK_NIBBLE_OUT(NCLK_NIBBLE_OUT[2]),
        .O0(\NLW_NIBBLE[2].UNISIM.I_XPHY_O0_UNCONNECTED [5:0]),
        .PCLK_NIBBLE_IN(PCLK_NIBBLE_OUT[3]),
        .PCLK_NIBBLE_OUT(PCLK_NIBBLE_OUT[2]),
        .PHY_RDCS0(phy_rdcs0[3:0]),
        .PHY_RDCS1(phy_rdcs1[3:0]),
        .PHY_RDEN({1'b0,1'b0,1'b0,1'b0}),
        .PHY_RDY(ctrl_clk_5[0]),
        .PHY_WRCS0(phy_wrcs0[3:0]),
        .PHY_WRCS1(phy_wrcs1[3:0]),
        .PHY_WREN({1'b0,1'b0,1'b0,1'b0}),
        .PLL_CLK(bank2_pll_clkoutphy),
        .Q0({Q[2],Q[0],\NIBBLE[2].UNISIM.I_XPHY_n_108 ,\NIBBLE[2].UNISIM.I_XPHY_n_109 ,Q[3],Q[1],\NIBBLE[2].UNISIM.I_XPHY_n_112 ,\NIBBLE[2].UNISIM.I_XPHY_n_113 }),
        .Q1({\NIBBLE[2].UNISIM.I_XPHY_n_114 ,\NIBBLE[2].UNISIM.I_XPHY_n_115 ,\NIBBLE[2].UNISIM.I_XPHY_n_116 ,\NIBBLE[2].UNISIM.I_XPHY_n_117 ,\NIBBLE[2].UNISIM.I_XPHY_n_118 ,\NIBBLE[2].UNISIM.I_XPHY_n_119 ,\NIBBLE[2].UNISIM.I_XPHY_n_120 ,\NIBBLE[2].UNISIM.I_XPHY_n_121 }),
        .Q2({Q[6],Q[4],\NIBBLE[2].UNISIM.I_XPHY_n_124 ,\NIBBLE[2].UNISIM.I_XPHY_n_125 ,Q[7],Q[5],\NIBBLE[2].UNISIM.I_XPHY_n_128 ,\NIBBLE[2].UNISIM.I_XPHY_n_129 }),
        .Q3({\NIBBLE[2].UNISIM.I_XPHY_n_130 ,\NIBBLE[2].UNISIM.I_XPHY_n_131 ,\NIBBLE[2].UNISIM.I_XPHY_n_132 ,\NIBBLE[2].UNISIM.I_XPHY_n_133 ,\NIBBLE[2].UNISIM.I_XPHY_n_134 ,\NIBBLE[2].UNISIM.I_XPHY_n_135 ,\NIBBLE[2].UNISIM.I_XPHY_n_136 ,\NIBBLE[2].UNISIM.I_XPHY_n_137 }),
        .Q4({Q[10],Q[8],\NIBBLE[2].UNISIM.I_XPHY_n_140 ,\NIBBLE[2].UNISIM.I_XPHY_n_141 ,Q[11],Q[9],\NIBBLE[2].UNISIM.I_XPHY_n_144 ,\NIBBLE[2].UNISIM.I_XPHY_n_145 }),
        .Q5({\NIBBLE[2].UNISIM.I_XPHY_n_146 ,\NIBBLE[2].UNISIM.I_XPHY_n_147 ,\NIBBLE[2].UNISIM.I_XPHY_n_148 ,\NIBBLE[2].UNISIM.I_XPHY_n_149 ,\NIBBLE[2].UNISIM.I_XPHY_n_150 ,\NIBBLE[2].UNISIM.I_XPHY_n_151 ,\NIBBLE[2].UNISIM.I_XPHY_n_152 ,\NIBBLE[2].UNISIM.I_XPHY_n_153 }),
        .RIU_ADDR(riu_addr[7:0]),
        .RIU_NIBBLE_SEL(riu_nibble_sel[0]),
        .RIU_RD_DATA(riu_rd_data[15:0]),
        .RIU_RD_VALID(riu_rd_valid[0]),
        .RIU_WR_DATA(riu_wr_data[15:0]),
        .RIU_WR_EN(riu_wr_en[0]),
        .RST(RX_RST),
        .RXTX_SEL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .RX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T_OUT(\NLW_NIBBLE[2].UNISIM.I_XPHY_T_OUT_UNCONNECTED [5:0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  XPHY #(
    .CASCADE_0("FALSE"),
    .CASCADE_1("FALSE"),
    .CASCADE_2("FALSE"),
    .CASCADE_3("FALSE"),
    .CASCADE_4("FALSE"),
    .CASCADE_5("FALSE"),
    .CONTINUOUS_DQS("FALSE"),
    .CRSE_DLY_EN("TRUE"),
    .DELAY_VALUE_0(0),
    .DELAY_VALUE_1(0),
    .DELAY_VALUE_2(0),
    .DELAY_VALUE_3(0),
    .DELAY_VALUE_4(0),
    .DELAY_VALUE_5(0),
    .DIS_IDLY_VT_TRACK("FALSE"),
    .DIS_ODLY_VT_TRACK("FALSE"),
    .DIS_QDLY_VT_TRACK("FALSE"),
    .DQS_MODE("DDR4_1TCK"),
    .DQS_SRC("EXTERN"),
    .EN_CLK_TO_LOWER("DISABLE"),
    .EN_CLK_TO_UPPER("DISABLE"),
    .EN_DYN_DLY_MODE("FALSE"),
    .EN_OTHER_NCLK("TRUE"),
    .EN_OTHER_PCLK("TRUE"),
    .FAST_CK("FALSE"),
    .FIFO_MODE_0("ASYNC"),
    .FIFO_MODE_1("ASYNC"),
    .FIFO_MODE_2("ASYNC"),
    .FIFO_MODE_3("ASYNC"),
    .FIFO_MODE_4("ASYNC"),
    .FIFO_MODE_5("ASYNC"),
    .IBUF_DIS_SRC_0("EXTERNAL"),
    .IBUF_DIS_SRC_1("EXTERNAL"),
    .IBUF_DIS_SRC_2("EXTERNAL"),
    .IBUF_DIS_SRC_3("EXTERNAL"),
    .IBUF_DIS_SRC_4("EXTERNAL"),
    .IBUF_DIS_SRC_5("EXTERNAL"),
    .INV_RXCLK("FALSE"),
    .LP4_DQS("FALSE"),
    .ODELAY_BYPASS_0("FALSE"),
    .ODELAY_BYPASS_1("FALSE"),
    .ODELAY_BYPASS_2("FALSE"),
    .ODELAY_BYPASS_3("FALSE"),
    .ODELAY_BYPASS_4("FALSE"),
    .ODELAY_BYPASS_5("FALSE"),
    .ODT_SRC_0("EXTERNAL"),
    .ODT_SRC_1("EXTERNAL"),
    .ODT_SRC_2("EXTERNAL"),
    .ODT_SRC_3("EXTERNAL"),
    .ODT_SRC_4("EXTERNAL"),
    .ODT_SRC_5("EXTERNAL"),
    .PRIME_VAL(1'b0),
    .REFCLK_FREQUENCY(1000.000000),
    .RX_CLK_PHASE_N("SHIFT_90"),
    .RX_CLK_PHASE_P("SHIFT_90"),
    .RX_DATA_WIDTH(4),
    .RX_GATING("DISABLE"),
    .SELF_CALIBRATE("ENABLE"),
    .SERIAL_MODE("FALSE"),
    .TBYTE_CTL_0("T"),
    .TBYTE_CTL_1("T"),
    .TBYTE_CTL_2("T"),
    .TBYTE_CTL_3("T"),
    .TBYTE_CTL_4("T"),
    .TBYTE_CTL_5("T"),
    .TXRX_LOOPBACK_0("FALSE"),
    .TXRX_LOOPBACK_1("FALSE"),
    .TXRX_LOOPBACK_2("FALSE"),
    .TXRX_LOOPBACK_3("FALSE"),
    .TXRX_LOOPBACK_4("FALSE"),
    .TXRX_LOOPBACK_5("FALSE"),
    .TX_DATA_WIDTH(8),
    .TX_GATING("DISABLE"),
    .TX_INIT_0(1'b0),
    .TX_INIT_1(1'b0),
    .TX_INIT_2(1'b0),
    .TX_INIT_3(1'b0),
    .TX_INIT_4(1'b0),
    .TX_INIT_5(1'b0),
    .TX_INIT_TRI(1'b1),
    .TX_OUTPUT_PHASE_90_0("FALSE"),
    .TX_OUTPUT_PHASE_90_1("FALSE"),
    .TX_OUTPUT_PHASE_90_2("FALSE"),
    .TX_OUTPUT_PHASE_90_3("FALSE"),
    .TX_OUTPUT_PHASE_90_4("FALSE"),
    .TX_OUTPUT_PHASE_90_5("FALSE"),
    .TX_OUTPUT_PHASE_90_TRI("FALSE"),
    .WRITE_LEVELING("FALSE")) 
    \NIBBLE[3].UNISIM.I_XPHY 
       (.BISC_START_IN(bisc_start_in[3]),
        .BISC_START_OUT(bisc_start_in[4]),
        .BISC_STOP_IN(bisc_stop_in[3]),
        .BISC_STOP_OUT(bisc_stop_in[2]),
        .CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLK_FROM_OTHER_XPHY(CLK_TO_LOWER[5]),
        .CLK_TO_LOWER(\NLW_NIBBLE[3].UNISIM.I_XPHY_CLK_TO_LOWER_UNCONNECTED ),
        .CLK_TO_UPPER(CLK_TO_UPPER[3]),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT({\NIBBLE[3].UNISIM.I_XPHY_n_28 ,\NIBBLE[3].UNISIM.I_XPHY_n_29 ,\NIBBLE[3].UNISIM.I_XPHY_n_30 ,\NIBBLE[3].UNISIM.I_XPHY_n_31 ,\NIBBLE[3].UNISIM.I_XPHY_n_32 ,\NIBBLE[3].UNISIM.I_XPHY_n_33 ,\NIBBLE[3].UNISIM.I_XPHY_n_34 ,\NIBBLE[3].UNISIM.I_XPHY_n_35 ,\NIBBLE[3].UNISIM.I_XPHY_n_36 ,\NIBBLE[3].UNISIM.I_XPHY_n_37 ,\NIBBLE[3].UNISIM.I_XPHY_n_38 ,\NIBBLE[3].UNISIM.I_XPHY_n_39 ,\NIBBLE[3].UNISIM.I_XPHY_n_40 ,\NIBBLE[3].UNISIM.I_XPHY_n_41 ,\NIBBLE[3].UNISIM.I_XPHY_n_42 ,\NIBBLE[3].UNISIM.I_XPHY_n_43 ,\NIBBLE[3].UNISIM.I_XPHY_n_44 ,\NIBBLE[3].UNISIM.I_XPHY_n_45 ,\NIBBLE[3].UNISIM.I_XPHY_n_46 ,\NIBBLE[3].UNISIM.I_XPHY_n_47 ,\NIBBLE[3].UNISIM.I_XPHY_n_48 ,\NIBBLE[3].UNISIM.I_XPHY_n_49 ,\NIBBLE[3].UNISIM.I_XPHY_n_50 ,\NIBBLE[3].UNISIM.I_XPHY_n_51 ,\NIBBLE[3].UNISIM.I_XPHY_n_52 ,\NIBBLE[3].UNISIM.I_XPHY_n_53 ,\NIBBLE[3].UNISIM.I_XPHY_n_54 ,\NIBBLE[3].UNISIM.I_XPHY_n_55 ,\NIBBLE[3].UNISIM.I_XPHY_n_56 ,\NIBBLE[3].UNISIM.I_XPHY_n_57 ,\NIBBLE[3].UNISIM.I_XPHY_n_58 ,\NIBBLE[3].UNISIM.I_XPHY_n_59 ,\NIBBLE[3].UNISIM.I_XPHY_n_60 ,\NIBBLE[3].UNISIM.I_XPHY_n_61 ,\NIBBLE[3].UNISIM.I_XPHY_n_62 ,\NIBBLE[3].UNISIM.I_XPHY_n_63 ,\NIBBLE[3].UNISIM.I_XPHY_n_64 ,\NIBBLE[3].UNISIM.I_XPHY_n_65 ,\NIBBLE[3].UNISIM.I_XPHY_n_66 ,\NIBBLE[3].UNISIM.I_XPHY_n_67 ,\NIBBLE[3].UNISIM.I_XPHY_n_68 ,\NIBBLE[3].UNISIM.I_XPHY_n_69 ,\NIBBLE[3].UNISIM.I_XPHY_n_70 ,\NIBBLE[3].UNISIM.I_XPHY_n_71 ,\NIBBLE[3].UNISIM.I_XPHY_n_72 ,\NIBBLE[3].UNISIM.I_XPHY_n_73 ,\NIBBLE[3].UNISIM.I_XPHY_n_74 ,\NIBBLE[3].UNISIM.I_XPHY_n_75 ,\NIBBLE[3].UNISIM.I_XPHY_n_76 ,\NIBBLE[3].UNISIM.I_XPHY_n_77 ,\NIBBLE[3].UNISIM.I_XPHY_n_78 ,\NIBBLE[3].UNISIM.I_XPHY_n_79 ,\NIBBLE[3].UNISIM.I_XPHY_n_80 ,\NIBBLE[3].UNISIM.I_XPHY_n_81 }),
        .CTRL_CLK(ctrl_clk[1]),
        .D0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DATAIN(DATAIN[23:18]),
        .DLY_RDY(p_4_in6_in),
        .DYN_DCI({\NIBBLE[3].UNISIM.I_XPHY_n_82 ,\NIBBLE[3].UNISIM.I_XPHY_n_83 ,\NIBBLE[3].UNISIM.I_XPHY_n_84 ,\NIBBLE[3].UNISIM.I_XPHY_n_85 ,\NIBBLE[3].UNISIM.I_XPHY_n_86 ,\NIBBLE[3].UNISIM.I_XPHY_n_87 }),
        .EN_VTC(en_vtc),
        .FIFO_EMPTY(FIFO_EMPTY[1]),
        .FIFO_RDEN(fifo_rd_en),
        .FIFO_RD_CLK(fifo_rd_clk),
        .FIFO_WR_CLK(fifo_wr_clk[1]),
        .GT_STATUS(gt_status[1]),
        .IBUF_DISABLE({\NIBBLE[3].UNISIM.I_XPHY_n_88 ,\NIBBLE[3].UNISIM.I_XPHY_n_89 ,\NIBBLE[3].UNISIM.I_XPHY_n_90 ,\NIBBLE[3].UNISIM.I_XPHY_n_91 ,\NIBBLE[3].UNISIM.I_XPHY_n_92 ,\NIBBLE[3].UNISIM.I_XPHY_n_93 }),
        .INC({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NCLK_NIBBLE_IN(NCLK_NIBBLE_OUT[2]),
        .NCLK_NIBBLE_OUT(NCLK_NIBBLE_OUT[3]),
        .O0(\NLW_NIBBLE[3].UNISIM.I_XPHY_O0_UNCONNECTED [5:0]),
        .PCLK_NIBBLE_IN(PCLK_NIBBLE_OUT[2]),
        .PCLK_NIBBLE_OUT(PCLK_NIBBLE_OUT[3]),
        .PHY_RDCS0(phy_rdcs0[7:4]),
        .PHY_RDCS1(phy_rdcs1[7:4]),
        .PHY_RDEN({1'b0,1'b0,1'b0,1'b0}),
        .PHY_RDY(p_4_in),
        .PHY_WRCS0(phy_wrcs0[7:4]),
        .PHY_WRCS1(phy_wrcs1[7:4]),
        .PHY_WREN({1'b0,1'b0,1'b0,1'b0}),
        .PLL_CLK(bank2_pll_clkoutphy),
        .Q0({Q[14],Q[12],\NIBBLE[3].UNISIM.I_XPHY_n_108 ,\NIBBLE[3].UNISIM.I_XPHY_n_109 ,Q[15],Q[13],\NIBBLE[3].UNISIM.I_XPHY_n_112 ,\NIBBLE[3].UNISIM.I_XPHY_n_113 }),
        .Q1({\NIBBLE[3].UNISIM.I_XPHY_n_114 ,\NIBBLE[3].UNISIM.I_XPHY_n_115 ,\NIBBLE[3].UNISIM.I_XPHY_n_116 ,\NIBBLE[3].UNISIM.I_XPHY_n_117 ,\NIBBLE[3].UNISIM.I_XPHY_n_118 ,\NIBBLE[3].UNISIM.I_XPHY_n_119 ,\NIBBLE[3].UNISIM.I_XPHY_n_120 ,\NIBBLE[3].UNISIM.I_XPHY_n_121 }),
        .Q2({Q[18],Q[16],\NIBBLE[3].UNISIM.I_XPHY_n_124 ,\NIBBLE[3].UNISIM.I_XPHY_n_125 ,Q[19],Q[17],\NIBBLE[3].UNISIM.I_XPHY_n_128 ,\NIBBLE[3].UNISIM.I_XPHY_n_129 }),
        .Q3({\NIBBLE[3].UNISIM.I_XPHY_n_130 ,\NIBBLE[3].UNISIM.I_XPHY_n_131 ,\NIBBLE[3].UNISIM.I_XPHY_n_132 ,\NIBBLE[3].UNISIM.I_XPHY_n_133 ,\NIBBLE[3].UNISIM.I_XPHY_n_134 ,\NIBBLE[3].UNISIM.I_XPHY_n_135 ,\NIBBLE[3].UNISIM.I_XPHY_n_136 ,\NIBBLE[3].UNISIM.I_XPHY_n_137 }),
        .Q4({Q[22],Q[20],\NIBBLE[3].UNISIM.I_XPHY_n_140 ,\NIBBLE[3].UNISIM.I_XPHY_n_141 ,Q[23],Q[21],\NIBBLE[3].UNISIM.I_XPHY_n_144 ,\NIBBLE[3].UNISIM.I_XPHY_n_145 }),
        .Q5({\NIBBLE[3].UNISIM.I_XPHY_n_146 ,\NIBBLE[3].UNISIM.I_XPHY_n_147 ,\NIBBLE[3].UNISIM.I_XPHY_n_148 ,\NIBBLE[3].UNISIM.I_XPHY_n_149 ,\NIBBLE[3].UNISIM.I_XPHY_n_150 ,\NIBBLE[3].UNISIM.I_XPHY_n_151 ,\NIBBLE[3].UNISIM.I_XPHY_n_152 ,\NIBBLE[3].UNISIM.I_XPHY_n_153 }),
        .RIU_ADDR(riu_addr[15:8]),
        .RIU_NIBBLE_SEL(riu_nibble_sel[1]),
        .RIU_RD_DATA(riu_rd_data[31:16]),
        .RIU_RD_VALID(riu_rd_valid[1]),
        .RIU_WR_DATA(riu_wr_data[31:16]),
        .RIU_WR_EN(riu_wr_en[1]),
        .RST(RX_RST),
        .RXTX_SEL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .RX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T_OUT(\NLW_NIBBLE[3].UNISIM.I_XPHY_T_OUT_UNCONNECTED [5:0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  XPHY #(
    .CASCADE_0("FALSE"),
    .CASCADE_1("FALSE"),
    .CASCADE_2("FALSE"),
    .CASCADE_3("FALSE"),
    .CASCADE_4("FALSE"),
    .CASCADE_5("FALSE"),
    .CONTINUOUS_DQS("FALSE"),
    .CRSE_DLY_EN("TRUE"),
    .DELAY_VALUE_0(0),
    .DELAY_VALUE_1(0),
    .DELAY_VALUE_2(0),
    .DELAY_VALUE_3(0),
    .DELAY_VALUE_4(0),
    .DELAY_VALUE_5(0),
    .DIS_IDLY_VT_TRACK("FALSE"),
    .DIS_ODLY_VT_TRACK("FALSE"),
    .DIS_QDLY_VT_TRACK("FALSE"),
    .DQS_MODE("DDR4_1TCK"),
    .DQS_SRC("EXTERN"),
    .EN_CLK_TO_LOWER("DISABLE"),
    .EN_CLK_TO_UPPER("ENABLE"),
    .EN_DYN_DLY_MODE("FALSE"),
    .EN_OTHER_NCLK("FALSE"),
    .EN_OTHER_PCLK("FALSE"),
    .FAST_CK("FALSE"),
    .FIFO_MODE_0("ASYNC"),
    .FIFO_MODE_1("ASYNC"),
    .FIFO_MODE_2("ASYNC"),
    .FIFO_MODE_3("ASYNC"),
    .FIFO_MODE_4("ASYNC"),
    .FIFO_MODE_5("ASYNC"),
    .IBUF_DIS_SRC_0("EXTERNAL"),
    .IBUF_DIS_SRC_1("EXTERNAL"),
    .IBUF_DIS_SRC_2("EXTERNAL"),
    .IBUF_DIS_SRC_3("EXTERNAL"),
    .IBUF_DIS_SRC_4("EXTERNAL"),
    .IBUF_DIS_SRC_5("EXTERNAL"),
    .INV_RXCLK("FALSE"),
    .LP4_DQS("FALSE"),
    .ODELAY_BYPASS_0("FALSE"),
    .ODELAY_BYPASS_1("FALSE"),
    .ODELAY_BYPASS_2("FALSE"),
    .ODELAY_BYPASS_3("FALSE"),
    .ODELAY_BYPASS_4("FALSE"),
    .ODELAY_BYPASS_5("FALSE"),
    .ODT_SRC_0("EXTERNAL"),
    .ODT_SRC_1("EXTERNAL"),
    .ODT_SRC_2("EXTERNAL"),
    .ODT_SRC_3("EXTERNAL"),
    .ODT_SRC_4("EXTERNAL"),
    .ODT_SRC_5("EXTERNAL"),
    .PRIME_VAL(1'b0),
    .REFCLK_FREQUENCY(1000.000000),
    .RX_CLK_PHASE_N("SHIFT_90"),
    .RX_CLK_PHASE_P("SHIFT_90"),
    .RX_DATA_WIDTH(4),
    .RX_GATING("DISABLE"),
    .SELF_CALIBRATE("ENABLE"),
    .SERIAL_MODE("FALSE"),
    .TBYTE_CTL_0("T"),
    .TBYTE_CTL_1("T"),
    .TBYTE_CTL_2("T"),
    .TBYTE_CTL_3("T"),
    .TBYTE_CTL_4("T"),
    .TBYTE_CTL_5("T"),
    .TXRX_LOOPBACK_0("FALSE"),
    .TXRX_LOOPBACK_1("FALSE"),
    .TXRX_LOOPBACK_2("FALSE"),
    .TXRX_LOOPBACK_3("FALSE"),
    .TXRX_LOOPBACK_4("FALSE"),
    .TXRX_LOOPBACK_5("FALSE"),
    .TX_DATA_WIDTH(8),
    .TX_GATING("DISABLE"),
    .TX_INIT_0(1'b0),
    .TX_INIT_1(1'b0),
    .TX_INIT_2(1'b0),
    .TX_INIT_3(1'b0),
    .TX_INIT_4(1'b0),
    .TX_INIT_5(1'b0),
    .TX_INIT_TRI(1'b1),
    .TX_OUTPUT_PHASE_90_0("FALSE"),
    .TX_OUTPUT_PHASE_90_1("FALSE"),
    .TX_OUTPUT_PHASE_90_2("FALSE"),
    .TX_OUTPUT_PHASE_90_3("FALSE"),
    .TX_OUTPUT_PHASE_90_4("FALSE"),
    .TX_OUTPUT_PHASE_90_5("FALSE"),
    .TX_OUTPUT_PHASE_90_TRI("FALSE"),
    .WRITE_LEVELING("FALSE")) 
    \NIBBLE[4].UNISIM.I_XPHY 
       (.BISC_START_IN(bisc_start_in[4]),
        .BISC_START_OUT(bisc_start_in[5]),
        .BISC_STOP_IN(bisc_stop_in[4]),
        .BISC_STOP_OUT(bisc_stop_in[3]),
        .CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLK_FROM_OTHER_XPHY(CLK_TO_UPPER[2]),
        .CLK_TO_LOWER(CLK_TO_LOWER[4]),
        .CLK_TO_UPPER(CLK_TO_UPPER[4]),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT({\NIBBLE[4].UNISIM.I_XPHY_n_28 ,\NIBBLE[4].UNISIM.I_XPHY_n_29 ,\NIBBLE[4].UNISIM.I_XPHY_n_30 ,\NIBBLE[4].UNISIM.I_XPHY_n_31 ,\NIBBLE[4].UNISIM.I_XPHY_n_32 ,\NIBBLE[4].UNISIM.I_XPHY_n_33 ,\NIBBLE[4].UNISIM.I_XPHY_n_34 ,\NIBBLE[4].UNISIM.I_XPHY_n_35 ,\NIBBLE[4].UNISIM.I_XPHY_n_36 ,\NIBBLE[4].UNISIM.I_XPHY_n_37 ,\NIBBLE[4].UNISIM.I_XPHY_n_38 ,\NIBBLE[4].UNISIM.I_XPHY_n_39 ,\NIBBLE[4].UNISIM.I_XPHY_n_40 ,\NIBBLE[4].UNISIM.I_XPHY_n_41 ,\NIBBLE[4].UNISIM.I_XPHY_n_42 ,\NIBBLE[4].UNISIM.I_XPHY_n_43 ,\NIBBLE[4].UNISIM.I_XPHY_n_44 ,\NIBBLE[4].UNISIM.I_XPHY_n_45 ,\NIBBLE[4].UNISIM.I_XPHY_n_46 ,\NIBBLE[4].UNISIM.I_XPHY_n_47 ,\NIBBLE[4].UNISIM.I_XPHY_n_48 ,\NIBBLE[4].UNISIM.I_XPHY_n_49 ,\NIBBLE[4].UNISIM.I_XPHY_n_50 ,\NIBBLE[4].UNISIM.I_XPHY_n_51 ,\NIBBLE[4].UNISIM.I_XPHY_n_52 ,\NIBBLE[4].UNISIM.I_XPHY_n_53 ,\NIBBLE[4].UNISIM.I_XPHY_n_54 ,\NIBBLE[4].UNISIM.I_XPHY_n_55 ,\NIBBLE[4].UNISIM.I_XPHY_n_56 ,\NIBBLE[4].UNISIM.I_XPHY_n_57 ,\NIBBLE[4].UNISIM.I_XPHY_n_58 ,\NIBBLE[4].UNISIM.I_XPHY_n_59 ,\NIBBLE[4].UNISIM.I_XPHY_n_60 ,\NIBBLE[4].UNISIM.I_XPHY_n_61 ,\NIBBLE[4].UNISIM.I_XPHY_n_62 ,\NIBBLE[4].UNISIM.I_XPHY_n_63 ,\NIBBLE[4].UNISIM.I_XPHY_n_64 ,\NIBBLE[4].UNISIM.I_XPHY_n_65 ,\NIBBLE[4].UNISIM.I_XPHY_n_66 ,\NIBBLE[4].UNISIM.I_XPHY_n_67 ,\NIBBLE[4].UNISIM.I_XPHY_n_68 ,\NIBBLE[4].UNISIM.I_XPHY_n_69 ,\NIBBLE[4].UNISIM.I_XPHY_n_70 ,\NIBBLE[4].UNISIM.I_XPHY_n_71 ,\NIBBLE[4].UNISIM.I_XPHY_n_72 ,\NIBBLE[4].UNISIM.I_XPHY_n_73 ,\NIBBLE[4].UNISIM.I_XPHY_n_74 ,\NIBBLE[4].UNISIM.I_XPHY_n_75 ,\NIBBLE[4].UNISIM.I_XPHY_n_76 ,\NIBBLE[4].UNISIM.I_XPHY_n_77 ,\NIBBLE[4].UNISIM.I_XPHY_n_78 ,\NIBBLE[4].UNISIM.I_XPHY_n_79 ,\NIBBLE[4].UNISIM.I_XPHY_n_80 ,\NIBBLE[4].UNISIM.I_XPHY_n_81 }),
        .CTRL_CLK(ctrl_clk[2]),
        .D0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DATAIN(DATAIN[29:24]),
        .DLY_RDY(p_3_in5_in),
        .DYN_DCI({\NIBBLE[4].UNISIM.I_XPHY_n_82 ,\NIBBLE[4].UNISIM.I_XPHY_n_83 ,\NIBBLE[4].UNISIM.I_XPHY_n_84 ,\NIBBLE[4].UNISIM.I_XPHY_n_85 ,\NIBBLE[4].UNISIM.I_XPHY_n_86 ,\NIBBLE[4].UNISIM.I_XPHY_n_87 }),
        .EN_VTC(en_vtc),
        .FIFO_EMPTY(FIFO_EMPTY[2]),
        .FIFO_RDEN(fifo_rd_en),
        .FIFO_RD_CLK(fifo_rd_clk),
        .FIFO_WR_CLK(fifo_wr_clk[2]),
        .GT_STATUS(gt_status[2]),
        .IBUF_DISABLE({\NIBBLE[4].UNISIM.I_XPHY_n_88 ,\NIBBLE[4].UNISIM.I_XPHY_n_89 ,\NIBBLE[4].UNISIM.I_XPHY_n_90 ,\NIBBLE[4].UNISIM.I_XPHY_n_91 ,\NIBBLE[4].UNISIM.I_XPHY_n_92 ,\NIBBLE[4].UNISIM.I_XPHY_n_93 }),
        .INC({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NCLK_NIBBLE_IN(NCLK_NIBBLE_OUT[5]),
        .NCLK_NIBBLE_OUT(NCLK_NIBBLE_OUT[4]),
        .O0(\NLW_NIBBLE[4].UNISIM.I_XPHY_O0_UNCONNECTED [5:0]),
        .PCLK_NIBBLE_IN(PCLK_NIBBLE_OUT[5]),
        .PCLK_NIBBLE_OUT(PCLK_NIBBLE_OUT[4]),
        .PHY_RDCS0(phy_rdcs0[11:8]),
        .PHY_RDCS1(phy_rdcs1[11:8]),
        .PHY_RDEN({1'b0,1'b0,1'b0,1'b0}),
        .PHY_RDY(p_3_in),
        .PHY_WRCS0(phy_wrcs0[11:8]),
        .PHY_WRCS1(phy_wrcs1[11:8]),
        .PHY_WREN({1'b0,1'b0,1'b0,1'b0}),
        .PLL_CLK(bank2_pll_clkoutphy),
        .Q0({Q[26],Q[24],\NIBBLE[4].UNISIM.I_XPHY_n_108 ,\NIBBLE[4].UNISIM.I_XPHY_n_109 ,Q[27],Q[25],\NIBBLE[4].UNISIM.I_XPHY_n_112 ,\NIBBLE[4].UNISIM.I_XPHY_n_113 }),
        .Q1({\NIBBLE[4].UNISIM.I_XPHY_n_114 ,\NIBBLE[4].UNISIM.I_XPHY_n_115 ,\NIBBLE[4].UNISIM.I_XPHY_n_116 ,\NIBBLE[4].UNISIM.I_XPHY_n_117 ,\NIBBLE[4].UNISIM.I_XPHY_n_118 ,\NIBBLE[4].UNISIM.I_XPHY_n_119 ,\NIBBLE[4].UNISIM.I_XPHY_n_120 ,\NIBBLE[4].UNISIM.I_XPHY_n_121 }),
        .Q2({Q[30],Q[28],\NIBBLE[4].UNISIM.I_XPHY_n_124 ,\NIBBLE[4].UNISIM.I_XPHY_n_125 ,Q[31],Q[29],\NIBBLE[4].UNISIM.I_XPHY_n_128 ,\NIBBLE[4].UNISIM.I_XPHY_n_129 }),
        .Q3({\NIBBLE[4].UNISIM.I_XPHY_n_130 ,\NIBBLE[4].UNISIM.I_XPHY_n_131 ,\NIBBLE[4].UNISIM.I_XPHY_n_132 ,\NIBBLE[4].UNISIM.I_XPHY_n_133 ,\NIBBLE[4].UNISIM.I_XPHY_n_134 ,\NIBBLE[4].UNISIM.I_XPHY_n_135 ,\NIBBLE[4].UNISIM.I_XPHY_n_136 ,\NIBBLE[4].UNISIM.I_XPHY_n_137 }),
        .Q4({Q[34],Q[32],\NIBBLE[4].UNISIM.I_XPHY_n_140 ,\NIBBLE[4].UNISIM.I_XPHY_n_141 ,Q[35],Q[33],\NIBBLE[4].UNISIM.I_XPHY_n_144 ,\NIBBLE[4].UNISIM.I_XPHY_n_145 }),
        .Q5({\NIBBLE[4].UNISIM.I_XPHY_n_146 ,\NIBBLE[4].UNISIM.I_XPHY_n_147 ,\NIBBLE[4].UNISIM.I_XPHY_n_148 ,\NIBBLE[4].UNISIM.I_XPHY_n_149 ,\NIBBLE[4].UNISIM.I_XPHY_n_150 ,\NIBBLE[4].UNISIM.I_XPHY_n_151 ,\NIBBLE[4].UNISIM.I_XPHY_n_152 ,\NIBBLE[4].UNISIM.I_XPHY_n_153 }),
        .RIU_ADDR(riu_addr[23:16]),
        .RIU_NIBBLE_SEL(riu_nibble_sel[2]),
        .RIU_RD_DATA(riu_rd_data[47:32]),
        .RIU_RD_VALID(riu_rd_valid[2]),
        .RIU_WR_DATA(riu_wr_data[47:32]),
        .RIU_WR_EN(riu_wr_en[2]),
        .RST(RX_RST),
        .RXTX_SEL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .RX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T_OUT(\NLW_NIBBLE[4].UNISIM.I_XPHY_T_OUT_UNCONNECTED [5:0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  XPHY #(
    .CASCADE_0("FALSE"),
    .CASCADE_1("FALSE"),
    .CASCADE_2("FALSE"),
    .CASCADE_3("FALSE"),
    .CASCADE_4("FALSE"),
    .CASCADE_5("FALSE"),
    .CONTINUOUS_DQS("FALSE"),
    .CRSE_DLY_EN("TRUE"),
    .DELAY_VALUE_0(0),
    .DELAY_VALUE_1(0),
    .DELAY_VALUE_2(0),
    .DELAY_VALUE_3(0),
    .DELAY_VALUE_4(0),
    .DELAY_VALUE_5(0),
    .DIS_IDLY_VT_TRACK("FALSE"),
    .DIS_ODLY_VT_TRACK("FALSE"),
    .DIS_QDLY_VT_TRACK("FALSE"),
    .DQS_MODE("DDR4_1TCK"),
    .DQS_SRC("EXTERN"),
    .EN_CLK_TO_LOWER("DISABLE"),
    .EN_CLK_TO_UPPER("DISABLE"),
    .EN_DYN_DLY_MODE("FALSE"),
    .EN_OTHER_NCLK("TRUE"),
    .EN_OTHER_PCLK("TRUE"),
    .FAST_CK("FALSE"),
    .FIFO_MODE_0("ASYNC"),
    .FIFO_MODE_1("ASYNC"),
    .FIFO_MODE_2("ASYNC"),
    .FIFO_MODE_3("ASYNC"),
    .FIFO_MODE_4("ASYNC"),
    .FIFO_MODE_5("ASYNC"),
    .IBUF_DIS_SRC_0("EXTERNAL"),
    .IBUF_DIS_SRC_1("EXTERNAL"),
    .IBUF_DIS_SRC_2("EXTERNAL"),
    .IBUF_DIS_SRC_3("EXTERNAL"),
    .IBUF_DIS_SRC_4("EXTERNAL"),
    .IBUF_DIS_SRC_5("EXTERNAL"),
    .INV_RXCLK("FALSE"),
    .LP4_DQS("FALSE"),
    .ODELAY_BYPASS_0("FALSE"),
    .ODELAY_BYPASS_1("FALSE"),
    .ODELAY_BYPASS_2("FALSE"),
    .ODELAY_BYPASS_3("FALSE"),
    .ODELAY_BYPASS_4("FALSE"),
    .ODELAY_BYPASS_5("FALSE"),
    .ODT_SRC_0("EXTERNAL"),
    .ODT_SRC_1("EXTERNAL"),
    .ODT_SRC_2("EXTERNAL"),
    .ODT_SRC_3("EXTERNAL"),
    .ODT_SRC_4("EXTERNAL"),
    .ODT_SRC_5("EXTERNAL"),
    .PRIME_VAL(1'b0),
    .REFCLK_FREQUENCY(1000.000000),
    .RX_CLK_PHASE_N("SHIFT_90"),
    .RX_CLK_PHASE_P("SHIFT_90"),
    .RX_DATA_WIDTH(4),
    .RX_GATING("DISABLE"),
    .SELF_CALIBRATE("ENABLE"),
    .SERIAL_MODE("FALSE"),
    .TBYTE_CTL_0("T"),
    .TBYTE_CTL_1("T"),
    .TBYTE_CTL_2("T"),
    .TBYTE_CTL_3("T"),
    .TBYTE_CTL_4("T"),
    .TBYTE_CTL_5("T"),
    .TXRX_LOOPBACK_0("FALSE"),
    .TXRX_LOOPBACK_1("FALSE"),
    .TXRX_LOOPBACK_2("FALSE"),
    .TXRX_LOOPBACK_3("FALSE"),
    .TXRX_LOOPBACK_4("FALSE"),
    .TXRX_LOOPBACK_5("FALSE"),
    .TX_DATA_WIDTH(8),
    .TX_GATING("DISABLE"),
    .TX_INIT_0(1'b0),
    .TX_INIT_1(1'b0),
    .TX_INIT_2(1'b0),
    .TX_INIT_3(1'b0),
    .TX_INIT_4(1'b0),
    .TX_INIT_5(1'b0),
    .TX_INIT_TRI(1'b1),
    .TX_OUTPUT_PHASE_90_0("FALSE"),
    .TX_OUTPUT_PHASE_90_1("FALSE"),
    .TX_OUTPUT_PHASE_90_2("FALSE"),
    .TX_OUTPUT_PHASE_90_3("FALSE"),
    .TX_OUTPUT_PHASE_90_4("FALSE"),
    .TX_OUTPUT_PHASE_90_5("FALSE"),
    .TX_OUTPUT_PHASE_90_TRI("FALSE"),
    .WRITE_LEVELING("FALSE")) 
    \NIBBLE[5].UNISIM.I_XPHY 
       (.BISC_START_IN(bisc_start_in[5]),
        .BISC_START_OUT(bisc_start_in[6]),
        .BISC_STOP_IN(bisc_stop_in[5]),
        .BISC_STOP_OUT(bisc_stop_in[4]),
        .CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLK_FROM_OTHER_XPHY(CLK_TO_UPPER[3]),
        .CLK_TO_LOWER(CLK_TO_LOWER[5]),
        .CLK_TO_UPPER(CLK_TO_UPPER[5]),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT({\NIBBLE[5].UNISIM.I_XPHY_n_28 ,\NIBBLE[5].UNISIM.I_XPHY_n_29 ,\NIBBLE[5].UNISIM.I_XPHY_n_30 ,\NIBBLE[5].UNISIM.I_XPHY_n_31 ,\NIBBLE[5].UNISIM.I_XPHY_n_32 ,\NIBBLE[5].UNISIM.I_XPHY_n_33 ,\NIBBLE[5].UNISIM.I_XPHY_n_34 ,\NIBBLE[5].UNISIM.I_XPHY_n_35 ,\NIBBLE[5].UNISIM.I_XPHY_n_36 ,\NIBBLE[5].UNISIM.I_XPHY_n_37 ,\NIBBLE[5].UNISIM.I_XPHY_n_38 ,\NIBBLE[5].UNISIM.I_XPHY_n_39 ,\NIBBLE[5].UNISIM.I_XPHY_n_40 ,\NIBBLE[5].UNISIM.I_XPHY_n_41 ,\NIBBLE[5].UNISIM.I_XPHY_n_42 ,\NIBBLE[5].UNISIM.I_XPHY_n_43 ,\NIBBLE[5].UNISIM.I_XPHY_n_44 ,\NIBBLE[5].UNISIM.I_XPHY_n_45 ,\NIBBLE[5].UNISIM.I_XPHY_n_46 ,\NIBBLE[5].UNISIM.I_XPHY_n_47 ,\NIBBLE[5].UNISIM.I_XPHY_n_48 ,\NIBBLE[5].UNISIM.I_XPHY_n_49 ,\NIBBLE[5].UNISIM.I_XPHY_n_50 ,\NIBBLE[5].UNISIM.I_XPHY_n_51 ,\NIBBLE[5].UNISIM.I_XPHY_n_52 ,\NIBBLE[5].UNISIM.I_XPHY_n_53 ,\NIBBLE[5].UNISIM.I_XPHY_n_54 ,\NIBBLE[5].UNISIM.I_XPHY_n_55 ,\NIBBLE[5].UNISIM.I_XPHY_n_56 ,\NIBBLE[5].UNISIM.I_XPHY_n_57 ,\NIBBLE[5].UNISIM.I_XPHY_n_58 ,\NIBBLE[5].UNISIM.I_XPHY_n_59 ,\NIBBLE[5].UNISIM.I_XPHY_n_60 ,\NIBBLE[5].UNISIM.I_XPHY_n_61 ,\NIBBLE[5].UNISIM.I_XPHY_n_62 ,\NIBBLE[5].UNISIM.I_XPHY_n_63 ,\NIBBLE[5].UNISIM.I_XPHY_n_64 ,\NIBBLE[5].UNISIM.I_XPHY_n_65 ,\NIBBLE[5].UNISIM.I_XPHY_n_66 ,\NIBBLE[5].UNISIM.I_XPHY_n_67 ,\NIBBLE[5].UNISIM.I_XPHY_n_68 ,\NIBBLE[5].UNISIM.I_XPHY_n_69 ,\NIBBLE[5].UNISIM.I_XPHY_n_70 ,\NIBBLE[5].UNISIM.I_XPHY_n_71 ,\NIBBLE[5].UNISIM.I_XPHY_n_72 ,\NIBBLE[5].UNISIM.I_XPHY_n_73 ,\NIBBLE[5].UNISIM.I_XPHY_n_74 ,\NIBBLE[5].UNISIM.I_XPHY_n_75 ,\NIBBLE[5].UNISIM.I_XPHY_n_76 ,\NIBBLE[5].UNISIM.I_XPHY_n_77 ,\NIBBLE[5].UNISIM.I_XPHY_n_78 ,\NIBBLE[5].UNISIM.I_XPHY_n_79 ,\NIBBLE[5].UNISIM.I_XPHY_n_80 ,\NIBBLE[5].UNISIM.I_XPHY_n_81 }),
        .CTRL_CLK(ctrl_clk[3]),
        .D0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DATAIN(DATAIN[35:30]),
        .DLY_RDY(p_2_in4_in),
        .DYN_DCI({\NIBBLE[5].UNISIM.I_XPHY_n_82 ,\NIBBLE[5].UNISIM.I_XPHY_n_83 ,\NIBBLE[5].UNISIM.I_XPHY_n_84 ,\NIBBLE[5].UNISIM.I_XPHY_n_85 ,\NIBBLE[5].UNISIM.I_XPHY_n_86 ,\NIBBLE[5].UNISIM.I_XPHY_n_87 }),
        .EN_VTC(en_vtc),
        .FIFO_EMPTY(FIFO_EMPTY[3]),
        .FIFO_RDEN(fifo_rd_en),
        .FIFO_RD_CLK(fifo_rd_clk),
        .FIFO_WR_CLK(fifo_wr_clk[3]),
        .GT_STATUS(gt_status[3]),
        .IBUF_DISABLE({\NIBBLE[5].UNISIM.I_XPHY_n_88 ,\NIBBLE[5].UNISIM.I_XPHY_n_89 ,\NIBBLE[5].UNISIM.I_XPHY_n_90 ,\NIBBLE[5].UNISIM.I_XPHY_n_91 ,\NIBBLE[5].UNISIM.I_XPHY_n_92 ,\NIBBLE[5].UNISIM.I_XPHY_n_93 }),
        .INC({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NCLK_NIBBLE_IN(NCLK_NIBBLE_OUT[4]),
        .NCLK_NIBBLE_OUT(NCLK_NIBBLE_OUT[5]),
        .O0(\NLW_NIBBLE[5].UNISIM.I_XPHY_O0_UNCONNECTED [5:0]),
        .PCLK_NIBBLE_IN(PCLK_NIBBLE_OUT[4]),
        .PCLK_NIBBLE_OUT(PCLK_NIBBLE_OUT[5]),
        .PHY_RDCS0(phy_rdcs0[15:12]),
        .PHY_RDCS1(phy_rdcs1[15:12]),
        .PHY_RDEN({1'b0,1'b0,1'b0,1'b0}),
        .PHY_RDY(p_2_in),
        .PHY_WRCS0(phy_wrcs0[15:12]),
        .PHY_WRCS1(phy_wrcs1[15:12]),
        .PHY_WREN({1'b0,1'b0,1'b0,1'b0}),
        .PLL_CLK(bank2_pll_clkoutphy),
        .Q0({Q[38],Q[36],\NIBBLE[5].UNISIM.I_XPHY_n_108 ,\NIBBLE[5].UNISIM.I_XPHY_n_109 ,Q[39],Q[37],\NIBBLE[5].UNISIM.I_XPHY_n_112 ,\NIBBLE[5].UNISIM.I_XPHY_n_113 }),
        .Q1({\NIBBLE[5].UNISIM.I_XPHY_n_114 ,\NIBBLE[5].UNISIM.I_XPHY_n_115 ,\NIBBLE[5].UNISIM.I_XPHY_n_116 ,\NIBBLE[5].UNISIM.I_XPHY_n_117 ,\NIBBLE[5].UNISIM.I_XPHY_n_118 ,\NIBBLE[5].UNISIM.I_XPHY_n_119 ,\NIBBLE[5].UNISIM.I_XPHY_n_120 ,\NIBBLE[5].UNISIM.I_XPHY_n_121 }),
        .Q2({Q[42],Q[40],\NIBBLE[5].UNISIM.I_XPHY_n_124 ,\NIBBLE[5].UNISIM.I_XPHY_n_125 ,Q[43],Q[41],\NIBBLE[5].UNISIM.I_XPHY_n_128 ,\NIBBLE[5].UNISIM.I_XPHY_n_129 }),
        .Q3({\NIBBLE[5].UNISIM.I_XPHY_n_130 ,\NIBBLE[5].UNISIM.I_XPHY_n_131 ,\NIBBLE[5].UNISIM.I_XPHY_n_132 ,\NIBBLE[5].UNISIM.I_XPHY_n_133 ,\NIBBLE[5].UNISIM.I_XPHY_n_134 ,\NIBBLE[5].UNISIM.I_XPHY_n_135 ,\NIBBLE[5].UNISIM.I_XPHY_n_136 ,\NIBBLE[5].UNISIM.I_XPHY_n_137 }),
        .Q4({Q[46],Q[44],\NIBBLE[5].UNISIM.I_XPHY_n_140 ,\NIBBLE[5].UNISIM.I_XPHY_n_141 ,Q[47],Q[45],\NIBBLE[5].UNISIM.I_XPHY_n_144 ,\NIBBLE[5].UNISIM.I_XPHY_n_145 }),
        .Q5({\NIBBLE[5].UNISIM.I_XPHY_n_146 ,\NIBBLE[5].UNISIM.I_XPHY_n_147 ,\NIBBLE[5].UNISIM.I_XPHY_n_148 ,\NIBBLE[5].UNISIM.I_XPHY_n_149 ,\NIBBLE[5].UNISIM.I_XPHY_n_150 ,\NIBBLE[5].UNISIM.I_XPHY_n_151 ,\NIBBLE[5].UNISIM.I_XPHY_n_152 ,\NIBBLE[5].UNISIM.I_XPHY_n_153 }),
        .RIU_ADDR(riu_addr[31:24]),
        .RIU_NIBBLE_SEL(riu_nibble_sel[3]),
        .RIU_RD_DATA(riu_rd_data[63:48]),
        .RIU_RD_VALID(riu_rd_valid[3]),
        .RIU_WR_DATA(riu_wr_data[63:48]),
        .RIU_WR_EN(riu_wr_en[3]),
        .RST(RX_RST),
        .RXTX_SEL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .RX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T_OUT(\NLW_NIBBLE[5].UNISIM.I_XPHY_T_OUT_UNCONNECTED [5:0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  XPHY #(
    .CASCADE_0("FALSE"),
    .CASCADE_1("FALSE"),
    .CASCADE_2("FALSE"),
    .CASCADE_3("FALSE"),
    .CASCADE_4("FALSE"),
    .CASCADE_5("FALSE"),
    .CONTINUOUS_DQS("FALSE"),
    .CRSE_DLY_EN("TRUE"),
    .DELAY_VALUE_0(0),
    .DELAY_VALUE_1(0),
    .DELAY_VALUE_2(0),
    .DELAY_VALUE_3(0),
    .DELAY_VALUE_4(0),
    .DELAY_VALUE_5(0),
    .DIS_IDLY_VT_TRACK("FALSE"),
    .DIS_ODLY_VT_TRACK("FALSE"),
    .DIS_QDLY_VT_TRACK("FALSE"),
    .DQS_MODE("DDR4_1TCK"),
    .DQS_SRC("EXTERN"),
    .EN_CLK_TO_LOWER("ENABLE"),
    .EN_CLK_TO_UPPER("DISABLE"),
    .EN_DYN_DLY_MODE("FALSE"),
    .EN_OTHER_NCLK("FALSE"),
    .EN_OTHER_PCLK("FALSE"),
    .FAST_CK("FALSE"),
    .FIFO_MODE_0("ASYNC"),
    .FIFO_MODE_1("ASYNC"),
    .FIFO_MODE_2("ASYNC"),
    .FIFO_MODE_3("ASYNC"),
    .FIFO_MODE_4("ASYNC"),
    .FIFO_MODE_5("ASYNC"),
    .IBUF_DIS_SRC_0("EXTERNAL"),
    .IBUF_DIS_SRC_1("EXTERNAL"),
    .IBUF_DIS_SRC_2("EXTERNAL"),
    .IBUF_DIS_SRC_3("EXTERNAL"),
    .IBUF_DIS_SRC_4("EXTERNAL"),
    .IBUF_DIS_SRC_5("EXTERNAL"),
    .INV_RXCLK("FALSE"),
    .LP4_DQS("FALSE"),
    .ODELAY_BYPASS_0("FALSE"),
    .ODELAY_BYPASS_1("FALSE"),
    .ODELAY_BYPASS_2("FALSE"),
    .ODELAY_BYPASS_3("FALSE"),
    .ODELAY_BYPASS_4("FALSE"),
    .ODELAY_BYPASS_5("FALSE"),
    .ODT_SRC_0("EXTERNAL"),
    .ODT_SRC_1("EXTERNAL"),
    .ODT_SRC_2("EXTERNAL"),
    .ODT_SRC_3("EXTERNAL"),
    .ODT_SRC_4("EXTERNAL"),
    .ODT_SRC_5("EXTERNAL"),
    .PRIME_VAL(1'b0),
    .REFCLK_FREQUENCY(1000.000000),
    .RX_CLK_PHASE_N("SHIFT_90"),
    .RX_CLK_PHASE_P("SHIFT_90"),
    .RX_DATA_WIDTH(4),
    .RX_GATING("DISABLE"),
    .SELF_CALIBRATE("ENABLE"),
    .SERIAL_MODE("FALSE"),
    .TBYTE_CTL_0("T"),
    .TBYTE_CTL_1("T"),
    .TBYTE_CTL_2("T"),
    .TBYTE_CTL_3("T"),
    .TBYTE_CTL_4("T"),
    .TBYTE_CTL_5("T"),
    .TXRX_LOOPBACK_0("FALSE"),
    .TXRX_LOOPBACK_1("FALSE"),
    .TXRX_LOOPBACK_2("FALSE"),
    .TXRX_LOOPBACK_3("FALSE"),
    .TXRX_LOOPBACK_4("FALSE"),
    .TXRX_LOOPBACK_5("FALSE"),
    .TX_DATA_WIDTH(8),
    .TX_GATING("DISABLE"),
    .TX_INIT_0(1'b0),
    .TX_INIT_1(1'b0),
    .TX_INIT_2(1'b0),
    .TX_INIT_3(1'b0),
    .TX_INIT_4(1'b0),
    .TX_INIT_5(1'b0),
    .TX_INIT_TRI(1'b1),
    .TX_OUTPUT_PHASE_90_0("FALSE"),
    .TX_OUTPUT_PHASE_90_1("FALSE"),
    .TX_OUTPUT_PHASE_90_2("FALSE"),
    .TX_OUTPUT_PHASE_90_3("FALSE"),
    .TX_OUTPUT_PHASE_90_4("FALSE"),
    .TX_OUTPUT_PHASE_90_5("FALSE"),
    .TX_OUTPUT_PHASE_90_TRI("FALSE"),
    .WRITE_LEVELING("FALSE")) 
    \NIBBLE[6].UNISIM.I_XPHY 
       (.BISC_START_IN(bisc_start_in[6]),
        .BISC_START_OUT(bisc_start_in[7]),
        .BISC_STOP_IN(bisc_stop_in[6]),
        .BISC_STOP_OUT(bisc_stop_in[5]),
        .CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLK_FROM_OTHER_XPHY(CLK_TO_UPPER[4]),
        .CLK_TO_LOWER(CLK_TO_LOWER[6]),
        .CLK_TO_UPPER(\NLW_NIBBLE[6].UNISIM.I_XPHY_CLK_TO_UPPER_UNCONNECTED ),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT({\NIBBLE[6].UNISIM.I_XPHY_n_28 ,\NIBBLE[6].UNISIM.I_XPHY_n_29 ,\NIBBLE[6].UNISIM.I_XPHY_n_30 ,\NIBBLE[6].UNISIM.I_XPHY_n_31 ,\NIBBLE[6].UNISIM.I_XPHY_n_32 ,\NIBBLE[6].UNISIM.I_XPHY_n_33 ,\NIBBLE[6].UNISIM.I_XPHY_n_34 ,\NIBBLE[6].UNISIM.I_XPHY_n_35 ,\NIBBLE[6].UNISIM.I_XPHY_n_36 ,\NIBBLE[6].UNISIM.I_XPHY_n_37 ,\NIBBLE[6].UNISIM.I_XPHY_n_38 ,\NIBBLE[6].UNISIM.I_XPHY_n_39 ,\NIBBLE[6].UNISIM.I_XPHY_n_40 ,\NIBBLE[6].UNISIM.I_XPHY_n_41 ,\NIBBLE[6].UNISIM.I_XPHY_n_42 ,\NIBBLE[6].UNISIM.I_XPHY_n_43 ,\NIBBLE[6].UNISIM.I_XPHY_n_44 ,\NIBBLE[6].UNISIM.I_XPHY_n_45 ,\NIBBLE[6].UNISIM.I_XPHY_n_46 ,\NIBBLE[6].UNISIM.I_XPHY_n_47 ,\NIBBLE[6].UNISIM.I_XPHY_n_48 ,\NIBBLE[6].UNISIM.I_XPHY_n_49 ,\NIBBLE[6].UNISIM.I_XPHY_n_50 ,\NIBBLE[6].UNISIM.I_XPHY_n_51 ,\NIBBLE[6].UNISIM.I_XPHY_n_52 ,\NIBBLE[6].UNISIM.I_XPHY_n_53 ,\NIBBLE[6].UNISIM.I_XPHY_n_54 ,\NIBBLE[6].UNISIM.I_XPHY_n_55 ,\NIBBLE[6].UNISIM.I_XPHY_n_56 ,\NIBBLE[6].UNISIM.I_XPHY_n_57 ,\NIBBLE[6].UNISIM.I_XPHY_n_58 ,\NIBBLE[6].UNISIM.I_XPHY_n_59 ,\NIBBLE[6].UNISIM.I_XPHY_n_60 ,\NIBBLE[6].UNISIM.I_XPHY_n_61 ,\NIBBLE[6].UNISIM.I_XPHY_n_62 ,\NIBBLE[6].UNISIM.I_XPHY_n_63 ,\NIBBLE[6].UNISIM.I_XPHY_n_64 ,\NIBBLE[6].UNISIM.I_XPHY_n_65 ,\NIBBLE[6].UNISIM.I_XPHY_n_66 ,\NIBBLE[6].UNISIM.I_XPHY_n_67 ,\NIBBLE[6].UNISIM.I_XPHY_n_68 ,\NIBBLE[6].UNISIM.I_XPHY_n_69 ,\NIBBLE[6].UNISIM.I_XPHY_n_70 ,\NIBBLE[6].UNISIM.I_XPHY_n_71 ,\NIBBLE[6].UNISIM.I_XPHY_n_72 ,\NIBBLE[6].UNISIM.I_XPHY_n_73 ,\NIBBLE[6].UNISIM.I_XPHY_n_74 ,\NIBBLE[6].UNISIM.I_XPHY_n_75 ,\NIBBLE[6].UNISIM.I_XPHY_n_76 ,\NIBBLE[6].UNISIM.I_XPHY_n_77 ,\NIBBLE[6].UNISIM.I_XPHY_n_78 ,\NIBBLE[6].UNISIM.I_XPHY_n_79 ,\NIBBLE[6].UNISIM.I_XPHY_n_80 ,\NIBBLE[6].UNISIM.I_XPHY_n_81 }),
        .CTRL_CLK(ctrl_clk[4]),
        .D0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DATAIN(DATAIN[41:36]),
        .DLY_RDY(ctrl_clk_4[1]),
        .DYN_DCI({\NIBBLE[6].UNISIM.I_XPHY_n_82 ,\NIBBLE[6].UNISIM.I_XPHY_n_83 ,\NIBBLE[6].UNISIM.I_XPHY_n_84 ,\NIBBLE[6].UNISIM.I_XPHY_n_85 ,\NIBBLE[6].UNISIM.I_XPHY_n_86 ,\NIBBLE[6].UNISIM.I_XPHY_n_87 }),
        .EN_VTC(en_vtc),
        .FIFO_EMPTY(FIFO_EMPTY[4]),
        .FIFO_RDEN(fifo_rd_en),
        .FIFO_RD_CLK(fifo_rd_clk),
        .FIFO_WR_CLK(fifo_wr_clk[4]),
        .GT_STATUS(gt_status[4]),
        .IBUF_DISABLE({\NIBBLE[6].UNISIM.I_XPHY_n_88 ,\NIBBLE[6].UNISIM.I_XPHY_n_89 ,\NIBBLE[6].UNISIM.I_XPHY_n_90 ,\NIBBLE[6].UNISIM.I_XPHY_n_91 ,\NIBBLE[6].UNISIM.I_XPHY_n_92 ,\NIBBLE[6].UNISIM.I_XPHY_n_93 }),
        .INC({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NCLK_NIBBLE_IN(NCLK_NIBBLE_OUT[7]),
        .NCLK_NIBBLE_OUT(NCLK_NIBBLE_OUT[6]),
        .O0(\NLW_NIBBLE[6].UNISIM.I_XPHY_O0_UNCONNECTED [5:0]),
        .PCLK_NIBBLE_IN(PCLK_NIBBLE_OUT[7]),
        .PCLK_NIBBLE_OUT(PCLK_NIBBLE_OUT[6]),
        .PHY_RDCS0(phy_rdcs0[19:16]),
        .PHY_RDCS1(phy_rdcs1[19:16]),
        .PHY_RDEN({1'b0,1'b0,1'b0,1'b0}),
        .PHY_RDY(ctrl_clk_5[1]),
        .PHY_WRCS0(phy_wrcs0[19:16]),
        .PHY_WRCS1(phy_wrcs1[19:16]),
        .PHY_WREN({1'b0,1'b0,1'b0,1'b0}),
        .PLL_CLK(bank2_pll_clkoutphy),
        .Q0({Q[50],Q[48],\NIBBLE[6].UNISIM.I_XPHY_n_108 ,\NIBBLE[6].UNISIM.I_XPHY_n_109 ,Q[51],Q[49],\NIBBLE[6].UNISIM.I_XPHY_n_112 ,\NIBBLE[6].UNISIM.I_XPHY_n_113 }),
        .Q1({\NIBBLE[6].UNISIM.I_XPHY_n_114 ,\NIBBLE[6].UNISIM.I_XPHY_n_115 ,\NIBBLE[6].UNISIM.I_XPHY_n_116 ,\NIBBLE[6].UNISIM.I_XPHY_n_117 ,\NIBBLE[6].UNISIM.I_XPHY_n_118 ,\NIBBLE[6].UNISIM.I_XPHY_n_119 ,\NIBBLE[6].UNISIM.I_XPHY_n_120 ,\NIBBLE[6].UNISIM.I_XPHY_n_121 }),
        .Q2({Q[54],Q[52],\NIBBLE[6].UNISIM.I_XPHY_n_124 ,\NIBBLE[6].UNISIM.I_XPHY_n_125 ,Q[55],Q[53],\NIBBLE[6].UNISIM.I_XPHY_n_128 ,\NIBBLE[6].UNISIM.I_XPHY_n_129 }),
        .Q3({\NIBBLE[6].UNISIM.I_XPHY_n_130 ,\NIBBLE[6].UNISIM.I_XPHY_n_131 ,\NIBBLE[6].UNISIM.I_XPHY_n_132 ,\NIBBLE[6].UNISIM.I_XPHY_n_133 ,\NIBBLE[6].UNISIM.I_XPHY_n_134 ,\NIBBLE[6].UNISIM.I_XPHY_n_135 ,\NIBBLE[6].UNISIM.I_XPHY_n_136 ,\NIBBLE[6].UNISIM.I_XPHY_n_137 }),
        .Q4({Q[58],Q[56],\NIBBLE[6].UNISIM.I_XPHY_n_140 ,\NIBBLE[6].UNISIM.I_XPHY_n_141 ,Q[59],Q[57],\NIBBLE[6].UNISIM.I_XPHY_n_144 ,\NIBBLE[6].UNISIM.I_XPHY_n_145 }),
        .Q5({\NIBBLE[6].UNISIM.I_XPHY_n_146 ,\NIBBLE[6].UNISIM.I_XPHY_n_147 ,\NIBBLE[6].UNISIM.I_XPHY_n_148 ,\NIBBLE[6].UNISIM.I_XPHY_n_149 ,\NIBBLE[6].UNISIM.I_XPHY_n_150 ,\NIBBLE[6].UNISIM.I_XPHY_n_151 ,\NIBBLE[6].UNISIM.I_XPHY_n_152 ,\NIBBLE[6].UNISIM.I_XPHY_n_153 }),
        .RIU_ADDR(riu_addr[39:32]),
        .RIU_NIBBLE_SEL(riu_nibble_sel[4]),
        .RIU_RD_DATA(riu_rd_data[79:64]),
        .RIU_RD_VALID(riu_rd_valid[4]),
        .RIU_WR_DATA(riu_wr_data[79:64]),
        .RIU_WR_EN(riu_wr_en[4]),
        .RST(RX_RST),
        .RXTX_SEL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .RX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T_OUT(\NLW_NIBBLE[6].UNISIM.I_XPHY_T_OUT_UNCONNECTED [5:0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  XPHY #(
    .CASCADE_0("FALSE"),
    .CASCADE_1("FALSE"),
    .CASCADE_2("FALSE"),
    .CASCADE_3("FALSE"),
    .CASCADE_4("FALSE"),
    .CASCADE_5("FALSE"),
    .CONTINUOUS_DQS("FALSE"),
    .CRSE_DLY_EN("TRUE"),
    .DELAY_VALUE_0(0),
    .DELAY_VALUE_1(0),
    .DELAY_VALUE_2(0),
    .DELAY_VALUE_3(0),
    .DELAY_VALUE_4(0),
    .DELAY_VALUE_5(0),
    .DIS_IDLY_VT_TRACK("FALSE"),
    .DIS_ODLY_VT_TRACK("FALSE"),
    .DIS_QDLY_VT_TRACK("FALSE"),
    .DQS_MODE("DDR4_1TCK"),
    .DQS_SRC("EXTERN"),
    .EN_CLK_TO_LOWER("DISABLE"),
    .EN_CLK_TO_UPPER("DISABLE"),
    .EN_DYN_DLY_MODE("FALSE"),
    .EN_OTHER_NCLK("TRUE"),
    .EN_OTHER_PCLK("TRUE"),
    .FAST_CK("FALSE"),
    .FIFO_MODE_0("ASYNC"),
    .FIFO_MODE_1("ASYNC"),
    .FIFO_MODE_2("ASYNC"),
    .FIFO_MODE_3("ASYNC"),
    .FIFO_MODE_4("ASYNC"),
    .FIFO_MODE_5("ASYNC"),
    .IBUF_DIS_SRC_0("EXTERNAL"),
    .IBUF_DIS_SRC_1("EXTERNAL"),
    .IBUF_DIS_SRC_2("EXTERNAL"),
    .IBUF_DIS_SRC_3("EXTERNAL"),
    .IBUF_DIS_SRC_4("EXTERNAL"),
    .IBUF_DIS_SRC_5("EXTERNAL"),
    .INV_RXCLK("FALSE"),
    .LP4_DQS("FALSE"),
    .ODELAY_BYPASS_0("FALSE"),
    .ODELAY_BYPASS_1("FALSE"),
    .ODELAY_BYPASS_2("FALSE"),
    .ODELAY_BYPASS_3("FALSE"),
    .ODELAY_BYPASS_4("FALSE"),
    .ODELAY_BYPASS_5("FALSE"),
    .ODT_SRC_0("EXTERNAL"),
    .ODT_SRC_1("EXTERNAL"),
    .ODT_SRC_2("EXTERNAL"),
    .ODT_SRC_3("EXTERNAL"),
    .ODT_SRC_4("EXTERNAL"),
    .ODT_SRC_5("EXTERNAL"),
    .PRIME_VAL(1'b0),
    .REFCLK_FREQUENCY(1000.000000),
    .RX_CLK_PHASE_N("SHIFT_90"),
    .RX_CLK_PHASE_P("SHIFT_90"),
    .RX_DATA_WIDTH(4),
    .RX_GATING("DISABLE"),
    .SELF_CALIBRATE("ENABLE"),
    .SERIAL_MODE("FALSE"),
    .TBYTE_CTL_0("T"),
    .TBYTE_CTL_1("T"),
    .TBYTE_CTL_2("T"),
    .TBYTE_CTL_3("T"),
    .TBYTE_CTL_4("T"),
    .TBYTE_CTL_5("T"),
    .TXRX_LOOPBACK_0("FALSE"),
    .TXRX_LOOPBACK_1("FALSE"),
    .TXRX_LOOPBACK_2("FALSE"),
    .TXRX_LOOPBACK_3("FALSE"),
    .TXRX_LOOPBACK_4("FALSE"),
    .TXRX_LOOPBACK_5("FALSE"),
    .TX_DATA_WIDTH(8),
    .TX_GATING("DISABLE"),
    .TX_INIT_0(1'b0),
    .TX_INIT_1(1'b0),
    .TX_INIT_2(1'b0),
    .TX_INIT_3(1'b0),
    .TX_INIT_4(1'b0),
    .TX_INIT_5(1'b0),
    .TX_INIT_TRI(1'b1),
    .TX_OUTPUT_PHASE_90_0("FALSE"),
    .TX_OUTPUT_PHASE_90_1("FALSE"),
    .TX_OUTPUT_PHASE_90_2("FALSE"),
    .TX_OUTPUT_PHASE_90_3("FALSE"),
    .TX_OUTPUT_PHASE_90_4("FALSE"),
    .TX_OUTPUT_PHASE_90_5("FALSE"),
    .TX_OUTPUT_PHASE_90_TRI("FALSE"),
    .WRITE_LEVELING("FALSE")) 
    \NIBBLE[7].UNISIM.I_XPHY 
       (.BISC_START_IN(bisc_start_in[7]),
        .BISC_START_OUT(bisc_start_in[8]),
        .BISC_STOP_IN(bisc_stop_in[7]),
        .BISC_STOP_OUT(bisc_stop_in[6]),
        .CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLK_FROM_OTHER_XPHY(CLK_TO_UPPER[5]),
        .CLK_TO_LOWER(\NLW_NIBBLE[7].UNISIM.I_XPHY_CLK_TO_LOWER_UNCONNECTED ),
        .CLK_TO_UPPER(\NLW_NIBBLE[7].UNISIM.I_XPHY_CLK_TO_UPPER_UNCONNECTED ),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT({\NIBBLE[7].UNISIM.I_XPHY_n_28 ,\NIBBLE[7].UNISIM.I_XPHY_n_29 ,\NIBBLE[7].UNISIM.I_XPHY_n_30 ,\NIBBLE[7].UNISIM.I_XPHY_n_31 ,\NIBBLE[7].UNISIM.I_XPHY_n_32 ,\NIBBLE[7].UNISIM.I_XPHY_n_33 ,\NIBBLE[7].UNISIM.I_XPHY_n_34 ,\NIBBLE[7].UNISIM.I_XPHY_n_35 ,\NIBBLE[7].UNISIM.I_XPHY_n_36 ,\NIBBLE[7].UNISIM.I_XPHY_n_37 ,\NIBBLE[7].UNISIM.I_XPHY_n_38 ,\NIBBLE[7].UNISIM.I_XPHY_n_39 ,\NIBBLE[7].UNISIM.I_XPHY_n_40 ,\NIBBLE[7].UNISIM.I_XPHY_n_41 ,\NIBBLE[7].UNISIM.I_XPHY_n_42 ,\NIBBLE[7].UNISIM.I_XPHY_n_43 ,\NIBBLE[7].UNISIM.I_XPHY_n_44 ,\NIBBLE[7].UNISIM.I_XPHY_n_45 ,\NIBBLE[7].UNISIM.I_XPHY_n_46 ,\NIBBLE[7].UNISIM.I_XPHY_n_47 ,\NIBBLE[7].UNISIM.I_XPHY_n_48 ,\NIBBLE[7].UNISIM.I_XPHY_n_49 ,\NIBBLE[7].UNISIM.I_XPHY_n_50 ,\NIBBLE[7].UNISIM.I_XPHY_n_51 ,\NIBBLE[7].UNISIM.I_XPHY_n_52 ,\NIBBLE[7].UNISIM.I_XPHY_n_53 ,\NIBBLE[7].UNISIM.I_XPHY_n_54 ,\NIBBLE[7].UNISIM.I_XPHY_n_55 ,\NIBBLE[7].UNISIM.I_XPHY_n_56 ,\NIBBLE[7].UNISIM.I_XPHY_n_57 ,\NIBBLE[7].UNISIM.I_XPHY_n_58 ,\NIBBLE[7].UNISIM.I_XPHY_n_59 ,\NIBBLE[7].UNISIM.I_XPHY_n_60 ,\NIBBLE[7].UNISIM.I_XPHY_n_61 ,\NIBBLE[7].UNISIM.I_XPHY_n_62 ,\NIBBLE[7].UNISIM.I_XPHY_n_63 ,\NIBBLE[7].UNISIM.I_XPHY_n_64 ,\NIBBLE[7].UNISIM.I_XPHY_n_65 ,\NIBBLE[7].UNISIM.I_XPHY_n_66 ,\NIBBLE[7].UNISIM.I_XPHY_n_67 ,\NIBBLE[7].UNISIM.I_XPHY_n_68 ,\NIBBLE[7].UNISIM.I_XPHY_n_69 ,\NIBBLE[7].UNISIM.I_XPHY_n_70 ,\NIBBLE[7].UNISIM.I_XPHY_n_71 ,\NIBBLE[7].UNISIM.I_XPHY_n_72 ,\NIBBLE[7].UNISIM.I_XPHY_n_73 ,\NIBBLE[7].UNISIM.I_XPHY_n_74 ,\NIBBLE[7].UNISIM.I_XPHY_n_75 ,\NIBBLE[7].UNISIM.I_XPHY_n_76 ,\NIBBLE[7].UNISIM.I_XPHY_n_77 ,\NIBBLE[7].UNISIM.I_XPHY_n_78 ,\NIBBLE[7].UNISIM.I_XPHY_n_79 ,\NIBBLE[7].UNISIM.I_XPHY_n_80 ,\NIBBLE[7].UNISIM.I_XPHY_n_81 }),
        .CTRL_CLK(ctrl_clk[5]),
        .D0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DATAIN(DATAIN[47:42]),
        .DLY_RDY(p_0_in2_in),
        .DYN_DCI({\NIBBLE[7].UNISIM.I_XPHY_n_82 ,\NIBBLE[7].UNISIM.I_XPHY_n_83 ,\NIBBLE[7].UNISIM.I_XPHY_n_84 ,\NIBBLE[7].UNISIM.I_XPHY_n_85 ,\NIBBLE[7].UNISIM.I_XPHY_n_86 ,\NIBBLE[7].UNISIM.I_XPHY_n_87 }),
        .EN_VTC(en_vtc),
        .FIFO_EMPTY(FIFO_EMPTY[5]),
        .FIFO_RDEN(fifo_rd_en),
        .FIFO_RD_CLK(fifo_rd_clk),
        .FIFO_WR_CLK(fifo_wr_clk[5]),
        .GT_STATUS(gt_status[5]),
        .IBUF_DISABLE({\NIBBLE[7].UNISIM.I_XPHY_n_88 ,\NIBBLE[7].UNISIM.I_XPHY_n_89 ,\NIBBLE[7].UNISIM.I_XPHY_n_90 ,\NIBBLE[7].UNISIM.I_XPHY_n_91 ,\NIBBLE[7].UNISIM.I_XPHY_n_92 ,\NIBBLE[7].UNISIM.I_XPHY_n_93 }),
        .INC({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NCLK_NIBBLE_IN(NCLK_NIBBLE_OUT[6]),
        .NCLK_NIBBLE_OUT(NCLK_NIBBLE_OUT[7]),
        .O0(\NLW_NIBBLE[7].UNISIM.I_XPHY_O0_UNCONNECTED [5:0]),
        .PCLK_NIBBLE_IN(PCLK_NIBBLE_OUT[6]),
        .PCLK_NIBBLE_OUT(PCLK_NIBBLE_OUT[7]),
        .PHY_RDCS0(phy_rdcs0[23:20]),
        .PHY_RDCS1(phy_rdcs1[23:20]),
        .PHY_RDEN({1'b0,1'b0,1'b0,1'b0}),
        .PHY_RDY(p_0_in),
        .PHY_WRCS0(phy_wrcs0[23:20]),
        .PHY_WRCS1(phy_wrcs1[23:20]),
        .PHY_WREN({1'b0,1'b0,1'b0,1'b0}),
        .PLL_CLK(bank2_pll_clkoutphy),
        .Q0({Q[62],Q[60],\NIBBLE[7].UNISIM.I_XPHY_n_108 ,\NIBBLE[7].UNISIM.I_XPHY_n_109 ,Q[63],Q[61],\NIBBLE[7].UNISIM.I_XPHY_n_112 ,\NIBBLE[7].UNISIM.I_XPHY_n_113 }),
        .Q1({\NIBBLE[7].UNISIM.I_XPHY_n_114 ,\NIBBLE[7].UNISIM.I_XPHY_n_115 ,\NIBBLE[7].UNISIM.I_XPHY_n_116 ,\NIBBLE[7].UNISIM.I_XPHY_n_117 ,\NIBBLE[7].UNISIM.I_XPHY_n_118 ,\NIBBLE[7].UNISIM.I_XPHY_n_119 ,\NIBBLE[7].UNISIM.I_XPHY_n_120 ,\NIBBLE[7].UNISIM.I_XPHY_n_121 }),
        .Q2({Q[66],Q[64],\NIBBLE[7].UNISIM.I_XPHY_n_124 ,\NIBBLE[7].UNISIM.I_XPHY_n_125 ,Q[67],Q[65],\NIBBLE[7].UNISIM.I_XPHY_n_128 ,\NIBBLE[7].UNISIM.I_XPHY_n_129 }),
        .Q3({\NIBBLE[7].UNISIM.I_XPHY_n_130 ,\NIBBLE[7].UNISIM.I_XPHY_n_131 ,\NIBBLE[7].UNISIM.I_XPHY_n_132 ,\NIBBLE[7].UNISIM.I_XPHY_n_133 ,\NIBBLE[7].UNISIM.I_XPHY_n_134 ,\NIBBLE[7].UNISIM.I_XPHY_n_135 ,\NIBBLE[7].UNISIM.I_XPHY_n_136 ,\NIBBLE[7].UNISIM.I_XPHY_n_137 }),
        .Q4({Q[70],Q[68],\NIBBLE[7].UNISIM.I_XPHY_n_140 ,\NIBBLE[7].UNISIM.I_XPHY_n_141 ,Q[71],Q[69],\NIBBLE[7].UNISIM.I_XPHY_n_144 ,\NIBBLE[7].UNISIM.I_XPHY_n_145 }),
        .Q5({\NIBBLE[7].UNISIM.I_XPHY_n_146 ,\NIBBLE[7].UNISIM.I_XPHY_n_147 ,\NIBBLE[7].UNISIM.I_XPHY_n_148 ,\NIBBLE[7].UNISIM.I_XPHY_n_149 ,\NIBBLE[7].UNISIM.I_XPHY_n_150 ,\NIBBLE[7].UNISIM.I_XPHY_n_151 ,\NIBBLE[7].UNISIM.I_XPHY_n_152 ,\NIBBLE[7].UNISIM.I_XPHY_n_153 }),
        .RIU_ADDR(riu_addr[47:40]),
        .RIU_NIBBLE_SEL(riu_nibble_sel[5]),
        .RIU_RD_DATA(riu_rd_data[95:80]),
        .RIU_RD_VALID(riu_rd_valid[5]),
        .RIU_WR_DATA(riu_wr_data[95:80]),
        .RIU_WR_EN(riu_wr_en[5]),
        .RST(RX_RST),
        .RXTX_SEL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .RX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX_RST({RX_RST,RX_RST,RX_RST,RX_RST,RX_RST,RX_RST}),
        .T_OUT(\NLW_NIBBLE[7].UNISIM.I_XPHY_T_OUT_UNCONNECTED [5:0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  XPHY #(
    .CASCADE_0("FALSE"),
    .CASCADE_1("FALSE"),
    .CASCADE_2("FALSE"),
    .CASCADE_3("FALSE"),
    .CASCADE_4("FALSE"),
    .CASCADE_5("FALSE"),
    .CONTINUOUS_DQS("FALSE"),
    .CRSE_DLY_EN("TRUE"),
    .DELAY_VALUE_0(0),
    .DELAY_VALUE_1(0),
    .DELAY_VALUE_2(0),
    .DELAY_VALUE_3(0),
    .DELAY_VALUE_4(0),
    .DELAY_VALUE_5(0),
    .DIS_IDLY_VT_TRACK("FALSE"),
    .DIS_ODLY_VT_TRACK("FALSE"),
    .DIS_QDLY_VT_TRACK("FALSE"),
    .DQS_MODE("DDR4_1TCK"),
    .DQS_SRC("EXTERN"),
    .EN_CLK_TO_LOWER("DISABLE"),
    .EN_CLK_TO_UPPER("DISABLE"),
    .EN_DYN_DLY_MODE("FALSE"),
    .EN_OTHER_NCLK("FALSE"),
    .EN_OTHER_PCLK("FALSE"),
    .FAST_CK("FALSE"),
    .FIFO_MODE_0("ASYNC"),
    .FIFO_MODE_1("ASYNC"),
    .FIFO_MODE_2("ASYNC"),
    .FIFO_MODE_3("ASYNC"),
    .FIFO_MODE_4("ASYNC"),
    .FIFO_MODE_5("ASYNC"),
    .IBUF_DIS_SRC_0("EXTERNAL"),
    .IBUF_DIS_SRC_1("EXTERNAL"),
    .IBUF_DIS_SRC_2("EXTERNAL"),
    .IBUF_DIS_SRC_3("EXTERNAL"),
    .IBUF_DIS_SRC_4("EXTERNAL"),
    .IBUF_DIS_SRC_5("EXTERNAL"),
    .INV_RXCLK("FALSE"),
    .LP4_DQS("FALSE"),
    .ODELAY_BYPASS_0("FALSE"),
    .ODELAY_BYPASS_1("FALSE"),
    .ODELAY_BYPASS_2("FALSE"),
    .ODELAY_BYPASS_3("FALSE"),
    .ODELAY_BYPASS_4("FALSE"),
    .ODELAY_BYPASS_5("FALSE"),
    .ODT_SRC_0("EXTERNAL"),
    .ODT_SRC_1("EXTERNAL"),
    .ODT_SRC_2("EXTERNAL"),
    .ODT_SRC_3("EXTERNAL"),
    .ODT_SRC_4("EXTERNAL"),
    .ODT_SRC_5("EXTERNAL"),
    .PRIME_VAL(1'b0),
    .REFCLK_FREQUENCY(1000.000000),
    .RX_CLK_PHASE_N("SHIFT_90"),
    .RX_CLK_PHASE_P("SHIFT_90"),
    .RX_DATA_WIDTH(4),
    .RX_GATING("DISABLE"),
    .SELF_CALIBRATE("ENABLE"),
    .SERIAL_MODE("FALSE"),
    .TBYTE_CTL_0("T"),
    .TBYTE_CTL_1("T"),
    .TBYTE_CTL_2("T"),
    .TBYTE_CTL_3("T"),
    .TBYTE_CTL_4("T"),
    .TBYTE_CTL_5("T"),
    .TXRX_LOOPBACK_0("FALSE"),
    .TXRX_LOOPBACK_1("FALSE"),
    .TXRX_LOOPBACK_2("FALSE"),
    .TXRX_LOOPBACK_3("FALSE"),
    .TXRX_LOOPBACK_4("FALSE"),
    .TXRX_LOOPBACK_5("FALSE"),
    .TX_DATA_WIDTH(8),
    .TX_GATING("DISABLE"),
    .TX_INIT_0(1'b0),
    .TX_INIT_1(1'b0),
    .TX_INIT_2(1'b0),
    .TX_INIT_3(1'b0),
    .TX_INIT_4(1'b0),
    .TX_INIT_5(1'b0),
    .TX_INIT_TRI(1'b1),
    .TX_OUTPUT_PHASE_90_0("FALSE"),
    .TX_OUTPUT_PHASE_90_1("FALSE"),
    .TX_OUTPUT_PHASE_90_2("FALSE"),
    .TX_OUTPUT_PHASE_90_3("FALSE"),
    .TX_OUTPUT_PHASE_90_4("FALSE"),
    .TX_OUTPUT_PHASE_90_5("FALSE"),
    .TX_OUTPUT_PHASE_90_TRI("FALSE"),
    .WRITE_LEVELING("FALSE")) 
    \NIBBLE[8].UNISIM.I_XPHY 
       (.BISC_START_IN(bisc_start_in[8]),
        .BISC_START_OUT(\NLW_NIBBLE[8].UNISIM.I_XPHY_BISC_START_OUT_UNCONNECTED ),
        .BISC_STOP_IN(1'b1),
        .BISC_STOP_OUT(bisc_stop_in[7]),
        .CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLK_FROM_OTHER_XPHY(CLK_TO_LOWER[6]),
        .CLK_TO_LOWER(\NLW_NIBBLE[8].UNISIM.I_XPHY_CLK_TO_LOWER_UNCONNECTED ),
        .CLK_TO_UPPER(\NLW_NIBBLE[8].UNISIM.I_XPHY_CLK_TO_UPPER_UNCONNECTED ),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT({\NIBBLE[8].UNISIM.I_XPHY_n_28 ,\NIBBLE[8].UNISIM.I_XPHY_n_29 ,\NIBBLE[8].UNISIM.I_XPHY_n_30 ,\NIBBLE[8].UNISIM.I_XPHY_n_31 ,\NIBBLE[8].UNISIM.I_XPHY_n_32 ,\NIBBLE[8].UNISIM.I_XPHY_n_33 ,\NIBBLE[8].UNISIM.I_XPHY_n_34 ,\NIBBLE[8].UNISIM.I_XPHY_n_35 ,\NIBBLE[8].UNISIM.I_XPHY_n_36 ,\NIBBLE[8].UNISIM.I_XPHY_n_37 ,\NIBBLE[8].UNISIM.I_XPHY_n_38 ,\NIBBLE[8].UNISIM.I_XPHY_n_39 ,\NIBBLE[8].UNISIM.I_XPHY_n_40 ,\NIBBLE[8].UNISIM.I_XPHY_n_41 ,\NIBBLE[8].UNISIM.I_XPHY_n_42 ,\NIBBLE[8].UNISIM.I_XPHY_n_43 ,\NIBBLE[8].UNISIM.I_XPHY_n_44 ,\NIBBLE[8].UNISIM.I_XPHY_n_45 ,\NIBBLE[8].UNISIM.I_XPHY_n_46 ,\NIBBLE[8].UNISIM.I_XPHY_n_47 ,\NIBBLE[8].UNISIM.I_XPHY_n_48 ,\NIBBLE[8].UNISIM.I_XPHY_n_49 ,\NIBBLE[8].UNISIM.I_XPHY_n_50 ,\NIBBLE[8].UNISIM.I_XPHY_n_51 ,\NIBBLE[8].UNISIM.I_XPHY_n_52 ,\NIBBLE[8].UNISIM.I_XPHY_n_53 ,\NIBBLE[8].UNISIM.I_XPHY_n_54 ,\NIBBLE[8].UNISIM.I_XPHY_n_55 ,\NIBBLE[8].UNISIM.I_XPHY_n_56 ,\NIBBLE[8].UNISIM.I_XPHY_n_57 ,\NIBBLE[8].UNISIM.I_XPHY_n_58 ,\NIBBLE[8].UNISIM.I_XPHY_n_59 ,\NIBBLE[8].UNISIM.I_XPHY_n_60 ,\NIBBLE[8].UNISIM.I_XPHY_n_61 ,\NIBBLE[8].UNISIM.I_XPHY_n_62 ,\NIBBLE[8].UNISIM.I_XPHY_n_63 ,\NIBBLE[8].UNISIM.I_XPHY_n_64 ,\NIBBLE[8].UNISIM.I_XPHY_n_65 ,\NIBBLE[8].UNISIM.I_XPHY_n_66 ,\NIBBLE[8].UNISIM.I_XPHY_n_67 ,\NIBBLE[8].UNISIM.I_XPHY_n_68 ,\NIBBLE[8].UNISIM.I_XPHY_n_69 ,\NIBBLE[8].UNISIM.I_XPHY_n_70 ,\NIBBLE[8].UNISIM.I_XPHY_n_71 ,\NIBBLE[8].UNISIM.I_XPHY_n_72 ,\NIBBLE[8].UNISIM.I_XPHY_n_73 ,\NIBBLE[8].UNISIM.I_XPHY_n_74 ,\NIBBLE[8].UNISIM.I_XPHY_n_75 ,\NIBBLE[8].UNISIM.I_XPHY_n_76 ,\NIBBLE[8].UNISIM.I_XPHY_n_77 ,\NIBBLE[8].UNISIM.I_XPHY_n_78 ,\NIBBLE[8].UNISIM.I_XPHY_n_79 ,\NIBBLE[8].UNISIM.I_XPHY_n_80 ,\NIBBLE[8].UNISIM.I_XPHY_n_81 }),
        .CTRL_CLK(ctrl_clk[6]),
        .D0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DATAIN({\NLW_NIBBLE[8].UNISIM.I_XPHY_DATAIN_UNCONNECTED [5:4],DATAIN[51:48]}),
        .DLY_RDY(ctrl_clk_4[2]),
        .DYN_DCI({\NIBBLE[8].UNISIM.I_XPHY_n_82 ,\NIBBLE[8].UNISIM.I_XPHY_n_83 ,\NIBBLE[8].UNISIM.I_XPHY_n_84 ,\NIBBLE[8].UNISIM.I_XPHY_n_85 ,\NIBBLE[8].UNISIM.I_XPHY_n_86 ,\NIBBLE[8].UNISIM.I_XPHY_n_87 }),
        .EN_VTC(en_vtc),
        .FIFO_EMPTY(FIFO_EMPTY[6]),
        .FIFO_RDEN(fifo_rd_en),
        .FIFO_RD_CLK(fifo_rd_clk),
        .FIFO_WR_CLK(fifo_wr_clk[6]),
        .GT_STATUS(gt_status[6]),
        .IBUF_DISABLE({\NIBBLE[8].UNISIM.I_XPHY_n_88 ,\NIBBLE[8].UNISIM.I_XPHY_n_89 ,\NIBBLE[8].UNISIM.I_XPHY_n_90 ,\NIBBLE[8].UNISIM.I_XPHY_n_91 ,\NIBBLE[8].UNISIM.I_XPHY_n_92 ,\NIBBLE[8].UNISIM.I_XPHY_n_93 }),
        .INC({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NCLK_NIBBLE_IN(1'b0),
        .NCLK_NIBBLE_OUT(\NLW_NIBBLE[8].UNISIM.I_XPHY_NCLK_NIBBLE_OUT_UNCONNECTED ),
        .O0(\NLW_NIBBLE[8].UNISIM.I_XPHY_O0_UNCONNECTED [5:0]),
        .PCLK_NIBBLE_IN(1'b0),
        .PCLK_NIBBLE_OUT(\NLW_NIBBLE[8].UNISIM.I_XPHY_PCLK_NIBBLE_OUT_UNCONNECTED ),
        .PHY_RDCS0(phy_rdcs0[27:24]),
        .PHY_RDCS1(phy_rdcs1[27:24]),
        .PHY_RDEN({1'b0,1'b0,1'b0,1'b0}),
        .PHY_RDY(ctrl_clk_5[2]),
        .PHY_WRCS0(phy_wrcs0[27:24]),
        .PHY_WRCS1(phy_wrcs1[27:24]),
        .PHY_WREN({1'b0,1'b0,1'b0,1'b0}),
        .PLL_CLK(bank2_pll_clkoutphy),
        .Q0({\NIBBLE[8].UNISIM.I_XPHY_n_106 ,\NIBBLE[8].UNISIM.I_XPHY_n_107 ,\NIBBLE[8].UNISIM.I_XPHY_n_108 ,\NIBBLE[8].UNISIM.I_XPHY_n_109 ,\NIBBLE[8].UNISIM.I_XPHY_n_110 ,\NIBBLE[8].UNISIM.I_XPHY_n_111 ,\NIBBLE[8].UNISIM.I_XPHY_n_112 ,\NIBBLE[8].UNISIM.I_XPHY_n_113 }),
        .Q1({\NIBBLE[8].UNISIM.I_XPHY_n_114 ,\NIBBLE[8].UNISIM.I_XPHY_n_115 ,\NIBBLE[8].UNISIM.I_XPHY_n_116 ,\NIBBLE[8].UNISIM.I_XPHY_n_117 ,\NIBBLE[8].UNISIM.I_XPHY_n_118 ,\NIBBLE[8].UNISIM.I_XPHY_n_119 ,\NIBBLE[8].UNISIM.I_XPHY_n_120 ,\NIBBLE[8].UNISIM.I_XPHY_n_121 }),
        .Q2({Q[74],Q[72],\NIBBLE[8].UNISIM.I_XPHY_n_124 ,\NIBBLE[8].UNISIM.I_XPHY_n_125 ,Q[75],Q[73],\NIBBLE[8].UNISIM.I_XPHY_n_128 ,\NIBBLE[8].UNISIM.I_XPHY_n_129 }),
        .Q3({\NIBBLE[8].UNISIM.I_XPHY_n_130 ,\NIBBLE[8].UNISIM.I_XPHY_n_131 ,\NIBBLE[8].UNISIM.I_XPHY_n_132 ,\NIBBLE[8].UNISIM.I_XPHY_n_133 ,\NIBBLE[8].UNISIM.I_XPHY_n_134 ,\NIBBLE[8].UNISIM.I_XPHY_n_135 ,\NIBBLE[8].UNISIM.I_XPHY_n_136 ,\NIBBLE[8].UNISIM.I_XPHY_n_137 }),
        .Q4({\NIBBLE[8].UNISIM.I_XPHY_n_138 ,\NIBBLE[8].UNISIM.I_XPHY_n_139 ,\NIBBLE[8].UNISIM.I_XPHY_n_140 ,\NIBBLE[8].UNISIM.I_XPHY_n_141 ,\NIBBLE[8].UNISIM.I_XPHY_n_142 ,\NIBBLE[8].UNISIM.I_XPHY_n_143 ,\NIBBLE[8].UNISIM.I_XPHY_n_144 ,\NIBBLE[8].UNISIM.I_XPHY_n_145 }),
        .Q5({\NIBBLE[8].UNISIM.I_XPHY_n_146 ,\NIBBLE[8].UNISIM.I_XPHY_n_147 ,\NIBBLE[8].UNISIM.I_XPHY_n_148 ,\NIBBLE[8].UNISIM.I_XPHY_n_149 ,\NIBBLE[8].UNISIM.I_XPHY_n_150 ,\NIBBLE[8].UNISIM.I_XPHY_n_151 ,\NIBBLE[8].UNISIM.I_XPHY_n_152 ,\NIBBLE[8].UNISIM.I_XPHY_n_153 }),
        .RIU_ADDR(riu_addr[55:48]),
        .RIU_NIBBLE_SEL(riu_nibble_sel[6]),
        .RIU_RD_DATA(riu_rd_data[111:96]),
        .RIU_RD_VALID(riu_rd_valid[6]),
        .RIU_WR_DATA(riu_wr_data[111:96]),
        .RIU_WR_EN(riu_wr_en[6]),
        .RST(RX_RST),
        .RXTX_SEL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .RX_RST({1'b1,1'b1,RX_RST,RX_RST,1'b1,1'b1}),
        .T({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX_EN_VTC({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX_RST({1'b1,1'b1,RX_RST,RX_RST,1'b1,1'b1}),
        .T_OUT(\NLW_NIBBLE[8].UNISIM.I_XPHY_T_OUT_UNCONNECTED [5:0]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    dly_rdy_INST_0_i_4
       (.I0(DLY_RDY[0]),
        .I1(p_3_in5_in),
        .I2(\syncstages_ff_reg[0] [0]),
        .I3(p_4_in6_in),
        .O(ctrl_clk_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    dly_rdy_INST_0_i_6
       (.I0(p_2_in4_in),
        .I1(p_0_in2_in),
        .I2(\syncstages_ff_reg[0] [1]),
        .I3(DLY_RDY[1]),
        .O(ctrl_clk_1));
  LUT4 #(
    .INIT(16'h7FFF)) 
    phy_rdy_INST_0_i_4
       (.I0(PHY_RDY[0]),
        .I1(p_3_in),
        .I2(\syncstages_ff_reg[0]_0 [0]),
        .I3(p_4_in),
        .O(ctrl_clk_2));
  LUT4 #(
    .INIT(16'h7FFF)) 
    phy_rdy_INST_0_i_6
       (.I0(p_2_in),
        .I1(p_0_in),
        .I2(\syncstages_ff_reg[0]_0 [1]),
        .I3(PHY_RDY[1]),
        .O(ctrl_clk_3));
endmodule

(* ORIG_REF_NAME = "advanced_io_wizard_phy_v1_0_0_reset_sm" *) 
module design_1_advanced_io_wizard_0_0_advanced_io_wizard_phy_v1_0_0_reset_sm
   (pll_clkoutphyen,
    RX_RST,
    \next_state_reg[1]_0 ,
    intf_rdy,
    rst,
    ctrl_clk,
    src_in,
    \syncstages_ff_reg[0] ,
    phy_rdy,
    dly_rdy);
  output pll_clkoutphyen;
  output [0:0]RX_RST;
  output \next_state_reg[1]_0 ;
  output intf_rdy;
  input rst;
  input [0:0]ctrl_clk;
  input src_in;
  input \syncstages_ff_reg[0] ;
  input phy_rdy;
  input dly_rdy;

  wire CLKOUTPHYEN_temp__0;
  wire LOCKED_FB_CTRL;
  wire PD_LOCK_CTRL;
  wire PHY_RDY_ALL_CTRL;
  wire RST_CTRL;
  wire [0:0]RX_RST;
  wire [4:0]count_16;
  wire \count_16[0]_i_1_n_0 ;
  wire \count_16[1]_i_1_n_0 ;
  wire \count_16[2]_i_1_n_0 ;
  wire \count_16[3]_i_1_n_0 ;
  wire \count_16[4]_i_2_n_0 ;
  wire count_16_done;
  wire count_16_done0;
  wire count_16_done_i_1_n_0;
  wire count_done;
  wire count_done_reg_n_0;
  wire [6:0]count_value;
  wire count_value0;
  wire \count_value[0]_i_2_n_0 ;
  wire \count_value[5]_i_1_n_0 ;
  wire [6:0]count_value_0;
  wire [0:0]ctrl_clk;
  wire dly_rdy;
  wire intf_rdy;
  wire [1:0]next_state;
  wire \next_state[0]_i_1_n_0 ;
  wire \next_state[1]_i_1_n_0 ;
  wire \next_state_reg[1]_0 ;
  wire phy_rdy;
  wire pll_clkoutphyen;
  wire rst;
  wire src_in;
  wire \syncstages_ff_reg[0] ;
  wire NLW_xpm_cdc_DLY_RDY_ALL_dest_out_UNCONNECTED;

  FDRE CLKOUTPHYEN_reg
       (.C(ctrl_clk),
        .CE(1'b1),
        .D(CLKOUTPHYEN_temp__0),
        .Q(pll_clkoutphyen),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    CLKOUTPHYEN_temp
       (.I0(next_state[1]),
        .I1(LOCKED_FB_CTRL),
        .I2(count_done_reg_n_0),
        .I3(next_state[0]),
        .O(CLKOUTPHYEN_temp__0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \INTF_RDY_inferred__0/i_ 
       (.I0(next_state[1]),
        .I1(next_state[0]),
        .I2(LOCKED_FB_CTRL),
        .I3(PHY_RDY_ALL_CTRL),
        .I4(PD_LOCK_CTRL),
        .I5(count_16_done),
        .O(intf_rdy));
  LUT3 #(
    .INIT(8'h1F)) 
    \NIBBLE[8].UNISIM.I_XPHY_i_1 
       (.I0(next_state[1]),
        .I1(next_state[0]),
        .I2(LOCKED_FB_CTRL),
        .O(RX_RST));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \RDWR_EN_MUX_SEL_inferred__0/i_ 
       (.I0(next_state[1]),
        .I1(next_state[0]),
        .I2(PHY_RDY_ALL_CTRL),
        .I3(LOCKED_FB_CTRL),
        .O(\next_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0F0E0F0F)) 
    \count_16[0]_i_1 
       (.I0(count_16[3]),
        .I1(count_16[2]),
        .I2(count_16[0]),
        .I3(count_16[1]),
        .I4(count_16[4]),
        .O(\count_16[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_16[1]_i_1 
       (.I0(count_16[0]),
        .I1(count_16[1]),
        .O(\count_16[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_16[2]_i_1 
       (.I0(count_16[2]),
        .I1(count_16[0]),
        .I2(count_16[1]),
        .O(\count_16[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count_16[3]_i_1 
       (.I0(count_16[3]),
        .I1(count_16[2]),
        .I2(count_16[0]),
        .I3(count_16[1]),
        .O(\count_16[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \count_16[4]_i_1 
       (.I0(RST_CTRL),
        .I1(LOCKED_FB_CTRL),
        .I2(PHY_RDY_ALL_CTRL),
        .I3(next_state[0]),
        .I4(next_state[1]),
        .O(count_16_done0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_16[4]_i_2 
       (.I0(count_16[0]),
        .I1(count_16[3]),
        .I2(count_16[1]),
        .I3(count_16[2]),
        .I4(count_16[4]),
        .O(\count_16[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000010)) 
    count_16_done_i_1
       (.I0(count_16[1]),
        .I1(count_16[0]),
        .I2(count_16[4]),
        .I3(count_16[2]),
        .I4(count_16[3]),
        .I5(count_16_done),
        .O(count_16_done_i_1_n_0));
  FDRE count_16_done_reg
       (.C(ctrl_clk),
        .CE(1'b1),
        .D(count_16_done_i_1_n_0),
        .Q(count_16_done),
        .R(count_16_done0));
  FDRE \count_16_reg[0] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .D(\count_16[0]_i_1_n_0 ),
        .Q(count_16[0]),
        .R(count_16_done0));
  FDRE \count_16_reg[1] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .D(\count_16[1]_i_1_n_0 ),
        .Q(count_16[1]),
        .R(count_16_done0));
  FDRE \count_16_reg[2] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .D(\count_16[2]_i_1_n_0 ),
        .Q(count_16[2]),
        .R(count_16_done0));
  FDRE \count_16_reg[3] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .D(\count_16[3]_i_1_n_0 ),
        .Q(count_16[3]),
        .R(count_16_done0));
  FDRE \count_16_reg[4] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .D(\count_16[4]_i_2_n_0 ),
        .Q(count_16[4]),
        .R(count_16_done0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    count_done_i_1
       (.I0(count_value[2]),
        .I1(count_value[4]),
        .I2(count_value[6]),
        .I3(\count_value[0]_i_2_n_0 ),
        .O(count_done));
  FDRE count_done_reg
       (.C(ctrl_clk),
        .CE(1'b1),
        .D(count_done),
        .Q(count_done_reg_n_0),
        .R(count_value0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h55555545)) 
    \count_value[0]_i_1 
       (.I0(count_value[0]),
        .I1(\count_value[0]_i_2_n_0 ),
        .I2(count_value[6]),
        .I3(count_value[4]),
        .I4(count_value[2]),
        .O(count_value_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count_value[0]_i_2 
       (.I0(count_value[0]),
        .I1(count_value[1]),
        .I2(count_value[5]),
        .I3(count_value[3]),
        .O(\count_value[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value[1]_i_1 
       (.I0(count_value[1]),
        .I1(count_value[0]),
        .O(count_value_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_value[2]_i_1 
       (.I0(count_value[2]),
        .I1(count_value[0]),
        .I2(count_value[1]),
        .O(count_value_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count_value[3]_i_1 
       (.I0(count_value[3]),
        .I1(count_value[1]),
        .I2(count_value[0]),
        .I3(count_value[2]),
        .O(count_value_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_value[4]_i_1 
       (.I0(count_value[4]),
        .I1(count_value[2]),
        .I2(count_value[0]),
        .I3(count_value[1]),
        .I4(count_value[3]),
        .O(count_value_0[4]));
  LUT6_2 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value[5]_i_1 
       (.I0(count_value[4]),
        .I1(count_value[2]),
        .I2(count_value[0]),
        .I3(count_value[1]),
        .I4(count_value[3]),
        .I5(count_value[5]),
        .O5(\count_value[5]_i_1_n_0 ),
        .O6(count_value_0[5]));
  LUT5 #(
    .INIT(32'hFFFFD9FB)) 
    \count_value[6]_i_1 
       (.I0(next_state[0]),
        .I1(next_state[1]),
        .I2(count_done_reg_n_0),
        .I3(LOCKED_FB_CTRL),
        .I4(RST_CTRL),
        .O(count_value0));
  LUT3 #(
    .INIT(8'h6A)) 
    \count_value[6]_i_2 
       (.I0(count_value[6]),
        .I1(\count_value[5]_i_1_n_0 ),
        .I2(count_value[5]),
        .O(count_value_0[6]));
  FDRE \count_value_reg[0] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .D(count_value_0[0]),
        .Q(count_value[0]),
        .R(count_value0));
  FDRE \count_value_reg[1] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .D(count_value_0[1]),
        .Q(count_value[1]),
        .R(count_value0));
  FDRE \count_value_reg[2] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .D(count_value_0[2]),
        .Q(count_value[2]),
        .R(count_value0));
  FDRE \count_value_reg[3] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .D(count_value_0[3]),
        .Q(count_value[3]),
        .R(count_value0));
  FDRE \count_value_reg[4] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .D(count_value_0[4]),
        .Q(count_value[4]),
        .R(count_value0));
  FDRE \count_value_reg[5] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .D(count_value_0[5]),
        .Q(count_value[5]),
        .R(count_value0));
  FDRE \count_value_reg[6] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .D(count_value_0[6]),
        .Q(count_value[6]),
        .R(count_value0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hD9FF)) 
    \next_state[0]_i_1 
       (.I0(next_state[0]),
        .I1(next_state[1]),
        .I2(count_done_reg_n_0),
        .I3(LOCKED_FB_CTRL),
        .O(\next_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \next_state[1]_i_1 
       (.I0(LOCKED_FB_CTRL),
        .I1(next_state[0]),
        .I2(next_state[1]),
        .O(\next_state[1]_i_1_n_0 ));
  FDRE \next_state_reg[0] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .D(\next_state[0]_i_1_n_0 ),
        .Q(next_state[0]),
        .R(RST_CTRL));
  FDRE \next_state_reg[1] 
       (.C(ctrl_clk),
        .CE(1'b1),
        .D(\next_state[1]_i_1_n_0 ),
        .Q(next_state[1]),
        .R(RST_CTRL));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_advanced_io_wizard_0_0_xpm_cdc_single__parameterized0 xpm_cdc_DLY_RDY_ALL
       (.dest_clk(ctrl_clk),
        .dest_out(NLW_xpm_cdc_DLY_RDY_ALL_dest_out_UNCONNECTED),
        .src_clk(1'b0),
        .src_in(dly_rdy));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_advanced_io_wizard_0_0_xpm_cdc_single__parameterized0__4 xpm_cdc_LOCKED_FB
       (.dest_clk(ctrl_clk),
        .dest_out(LOCKED_FB_CTRL),
        .src_clk(1'b0),
        .src_in(src_in));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_advanced_io_wizard_0_0_xpm_cdc_single__parameterized0__5 xpm_cdc_PD_LOCK
       (.dest_clk(ctrl_clk),
        .dest_out(PD_LOCK_CTRL),
        .src_clk(1'b0),
        .src_in(\syncstages_ff_reg[0] ));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_advanced_io_wizard_0_0_xpm_cdc_single__parameterized0__6 xpm_cdc_PHY_RDY_ALL
       (.dest_clk(ctrl_clk),
        .dest_out(PHY_RDY_ALL_CTRL),
        .src_clk(1'b0),
        .src_in(phy_rdy));
  (* DEF_VAL = "1'b1" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "1" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_advanced_io_wizard_0_0_xpm_cdc_sync_rst xpm_cdc_sync_RST_CTRL
       (.dest_clk(ctrl_clk),
        .dest_rst(RST_CTRL),
        .src_rst(rst));
endmodule

(* APPLICATION_TYPE = "SOURCE_SYNCHRONOUS" *) (* BITSLIP_MODE = "SLIP_PER_BIT" *) (* BITSLIP_VAL = "8'b00101100" *) 
(* BUS0_DIR = "RX" *) (* BUS0_IO_TYPE = "DIFF" *) (* BUS0_NUM_PINS = "24" *) 
(* BUS0_RE_EN = "0" *) (* BUS0_RE_IO_TYPE = "0" *) (* BUS0_SIG_TYPE = "Data" *) 
(* BUS0_STROBE_EN = "1" *) (* BUS0_STROBE_IO_TYPE = "DIFF" *) (* BUS10_DIR = "None" *) 
(* BUS10_IO_TYPE = "SINGLE" *) (* BUS10_NUM_PINS = "1" *) (* BUS10_RE_EN = "0" *) 
(* BUS10_RE_IO_TYPE = "0" *) (* BUS10_SIG_TYPE = "Data" *) (* BUS10_STROBE_EN = "0" *) 
(* BUS10_STROBE_IO_TYPE = "SINGLE" *) (* BUS11_DIR = "None" *) (* BUS11_IO_TYPE = "SINGLE" *) 
(* BUS11_NUM_PINS = "1" *) (* BUS11_RE_EN = "0" *) (* BUS11_RE_IO_TYPE = "0" *) 
(* BUS11_SIG_TYPE = "Data" *) (* BUS11_STROBE_EN = "0" *) (* BUS11_STROBE_IO_TYPE = "SINGLE" *) 
(* BUS12_DIR = "None" *) (* BUS12_IO_TYPE = "SINGLE" *) (* BUS12_NUM_PINS = "1" *) 
(* BUS12_RE_EN = "0" *) (* BUS12_RE_IO_TYPE = "0" *) (* BUS12_SIG_TYPE = "Data" *) 
(* BUS12_STROBE_EN = "0" *) (* BUS12_STROBE_IO_TYPE = "SINGLE" *) (* BUS13_DIR = "None" *) 
(* BUS13_IO_TYPE = "SINGLE" *) (* BUS13_NUM_PINS = "1" *) (* BUS13_RE_EN = "0" *) 
(* BUS13_RE_IO_TYPE = "0" *) (* BUS13_SIG_TYPE = "Data" *) (* BUS13_STROBE_EN = "0" *) 
(* BUS13_STROBE_IO_TYPE = "SINGLE" *) (* BUS14_DIR = "None" *) (* BUS14_IO_TYPE = "SINGLE" *) 
(* BUS14_NUM_PINS = "1" *) (* BUS14_RE_EN = "0" *) (* BUS14_RE_IO_TYPE = "0" *) 
(* BUS14_SIG_TYPE = "Data" *) (* BUS14_STROBE_EN = "0" *) (* BUS14_STROBE_IO_TYPE = "SINGLE" *) 
(* BUS15_DIR = "None" *) (* BUS15_IO_TYPE = "SINGLE" *) (* BUS15_NUM_PINS = "1" *) 
(* BUS15_RE_EN = "0" *) (* BUS15_RE_IO_TYPE = "0" *) (* BUS15_SIG_TYPE = "Data" *) 
(* BUS15_STROBE_EN = "0" *) (* BUS15_STROBE_IO_TYPE = "SINGLE" *) (* BUS16_DIR = "None" *) 
(* BUS16_IO_TYPE = "SINGLE" *) (* BUS16_NUM_PINS = "1" *) (* BUS16_RE_EN = "0" *) 
(* BUS16_RE_IO_TYPE = "0" *) (* BUS16_SIG_TYPE = "Data" *) (* BUS16_STROBE_EN = "0" *) 
(* BUS16_STROBE_IO_TYPE = "SINGLE" *) (* BUS1_DIR = "RX" *) (* BUS1_IO_TYPE = "DIFF" *) 
(* BUS1_NUM_PINS = "18" *) (* BUS1_RE_EN = "0" *) (* BUS1_RE_IO_TYPE = "0" *) 
(* BUS1_SIG_TYPE = "Data" *) (* BUS1_STROBE_EN = "1" *) (* BUS1_STROBE_IO_TYPE = "DIFF" *) 
(* BUS2_DIR = "RX" *) (* BUS2_IO_TYPE = "DIFF" *) (* BUS2_NUM_PINS = "22" *) 
(* BUS2_RE_EN = "0" *) (* BUS2_RE_IO_TYPE = "0" *) (* BUS2_SIG_TYPE = "Data" *) 
(* BUS2_STROBE_EN = "1" *) (* BUS2_STROBE_IO_TYPE = "DIFF" *) (* BUS3_DIR = "RX" *) 
(* BUS3_IO_TYPE = "DIFF" *) (* BUS3_NUM_PINS = "1" *) (* BUS3_RE_EN = "0" *) 
(* BUS3_RE_IO_TYPE = "0" *) (* BUS3_SIG_TYPE = "Input Clock" *) (* BUS3_STROBE_EN = "0" *) 
(* BUS3_STROBE_IO_TYPE = "SINGLE" *) (* BUS4_DIR = "None" *) (* BUS4_IO_TYPE = "SINGLE" *) 
(* BUS4_NUM_PINS = "1" *) (* BUS4_RE_EN = "0" *) (* BUS4_RE_IO_TYPE = "0" *) 
(* BUS4_SIG_TYPE = "Data" *) (* BUS4_STROBE_EN = "0" *) (* BUS4_STROBE_IO_TYPE = "SINGLE" *) 
(* BUS5_DIR = "None" *) (* BUS5_IO_TYPE = "SINGLE" *) (* BUS5_NUM_PINS = "1" *) 
(* BUS5_RE_EN = "0" *) (* BUS5_RE_IO_TYPE = "0" *) (* BUS5_SIG_TYPE = "Data" *) 
(* BUS5_STROBE_EN = "0" *) (* BUS5_STROBE_IO_TYPE = "SINGLE" *) (* BUS6_DIR = "None" *) 
(* BUS6_IO_TYPE = "SINGLE" *) (* BUS6_NUM_PINS = "1" *) (* BUS6_RE_EN = "0" *) 
(* BUS6_RE_IO_TYPE = "0" *) (* BUS6_SIG_TYPE = "Data" *) (* BUS6_STROBE_EN = "0" *) 
(* BUS6_STROBE_IO_TYPE = "SINGLE" *) (* BUS7_DIR = "None" *) (* BUS7_IO_TYPE = "SINGLE" *) 
(* BUS7_NUM_PINS = "1" *) (* BUS7_RE_EN = "0" *) (* BUS7_RE_IO_TYPE = "0" *) 
(* BUS7_SIG_TYPE = "Data" *) (* BUS7_STROBE_EN = "0" *) (* BUS7_STROBE_IO_TYPE = "SINGLE" *) 
(* BUS8_DIR = "None" *) (* BUS8_IO_TYPE = "SINGLE" *) (* BUS8_NUM_PINS = "1" *) 
(* BUS8_RE_EN = "0" *) (* BUS8_RE_IO_TYPE = "0" *) (* BUS8_SIG_TYPE = "Data" *) 
(* BUS8_STROBE_EN = "0" *) (* BUS8_STROBE_IO_TYPE = "SINGLE" *) (* BUS9_DIR = "None" *) 
(* BUS9_IO_TYPE = "SINGLE" *) (* BUS9_NUM_PINS = "1" *) (* BUS9_RE_EN = "0" *) 
(* BUS9_RE_IO_TYPE = "0" *) (* BUS9_SIG_TYPE = "Data" *) (* BUS9_STROBE_EN = "0" *) 
(* BUS9_STROBE_IO_TYPE = "SINGLE" *) (* BUS_DIR = "1" *) (* CLK_FWD_PHASE = "0" *) 
(* CLK_TO_DATA_ALIGN = "4" *) (* C_CLKIN_PERIOD = "4.000000" *) (* C_EN_BIDIR = "0" *) 
(* C_EN_RX = "1" *) (* C_EN_TX = "0" *) (* C_PLL0_CLK0_PHASE = "0.000000" *) 
(* C_PLL0_CLK1_PHASE = "0.000000" *) (* C_PLL0_CLKOUTPHY_DIVIDE = "DIV4" *) (* C_PLL0_D = "1" *) 
(* C_PLL0_M = "16" *) (* C_PLL0_O0 = "16" *) (* C_PLL0_O1 = "16" *) 
(* C_PLL0_O2 = "16" *) (* C_PLL0_O3 = "16" *) (* C_PLL1_CLK0_PHASE = "0.000000" *) 
(* C_PLL1_CLK1_PHASE = "0.000000" *) (* C_PLL1_CLKOUTPHY_DIVIDE = "DIV4" *) (* C_PLL1_D = "1" *) 
(* C_PLL1_M = "16" *) (* C_PLL1_O0 = "16" *) (* C_PLL1_O1 = "16" *) 
(* C_PLL1_O2 = "16" *) (* C_PLL1_O3 = "16" *) (* C_PLL2_CLK0_PHASE = "0.000000" *) 
(* C_PLL2_CLK1_PHASE = "0.000000" *) (* C_PLL2_CLKOUTPHY_DIVIDE = "DIV4" *) (* C_PLL2_D = "1" *) 
(* C_PLL2_M = "16" *) (* C_PLL2_O0 = "16" *) (* C_PLL2_O1 = "16" *) 
(* C_PLL2_O2 = "16" *) (* C_PLL2_O3 = "16" *) (* C_PLL_SHARE = "0" *) 
(* C_SIM_DEVICE = "VERSAL_AI_CORE" *) (* DATA_SPEED = "1000.000000" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* ENABLE_BITSLIP = "0" *) (* ENABLE_BLI = "1" *) (* ENABLE_DATA_BITSLIP = "0" *) 
(* ENABLE_PLLOUT1 = "0" *) (* ENABLE_PLLOUTFB = "0" *) (* ENABLE_RIU_INTERFACE = "0" *) 
(* ENABLE_XPLL_DESKEW = "1" *) (* EN_DEBUG_TX_CALIB = "0" *) (* EN_TXCALIB_SIM = "0" *) 
(* INPUT_CLK_FREQ = "250.000000" *) (* MAX_BANKS = "3" *) (* MIPI_DESKEW_EN = "0" *) 
(* MIPI_TXCALIB_EN = "0" *) (* MULTI_BANK_EN = "0" *) (* NIBBLE_GROUP = "@RX_GROUP_0 LVDS_706_10 LVDS_706_11 LVDS_706_12 LVDS_706_13 LVDS_706_14 LVDS_706_15 @RX_GROUP_1 LVDS_706_16 LVDS_706_17 LVDS_706_18 LVDS_706_19 LVDS_706_20 LVDS_706_21 @RX_GROUP_10 LVDS_708_16 LVDS_708_17 LVDS_708_18 LVDS_708_19 LVDS_708_20 LVDS_708_21 @RX_GROUP_11 RD_CLK_708_0 RD_CLK_708_1 LVDS_708_0 LVDS_708_1 LVDS_708_2 LVDS_708_3 @RX_GROUP_12 LVDS_708_4 LVDS_708_5 LVDS_708_6 LVDS_708_7 LVDS_708_8 LVDS_708_9 @RX_GROUP_13 LVDS_708_22 LVDS_708_23 LVDS_708_24 LVDS_708_25 LVDS_708_26 LVDS_708_27 @RX_GROUP_14 LVDS_708_28 LVDS_708_29 LVDS_708_30 LVDS_708_31 LVDS_708_32 LVDS_708_33 @RX_GROUP_15 LVDS_708_34 LVDS_708_35 LVDS_708_36 LVDS_708_37 LVDS_708_38 LVDS_708_39 @RX_GROUP_16 LVDS_708_40 LVDS_708_41 LVDS_708_42 LVDS_708_43 @RX_GROUP_17 XPLL_IN_0 XPLL_IN_1 @RX_GROUP_18 RD_CLK_707_0 RD_CLK_707_1 LVDS_707_0 LVDS_707_1 LVDS_707_2 LVDS_707_3 @RX_GROUP_19 LVDS_707_4 LVDS_707_5 LVDS_707_6 LVDS_707_7 LVDS_707_8 LVDS_707_9 @RX_GROUP_2 RD_CLK_706_0 RD_CLK_706_1 LVDS_706_0 LVDS_706_1 LVDS_706_2 LVDS_706_3 @RX_GROUP_20 LVDS_707_10 LVDS_707_11 LVDS_707_12 LVDS_707_13 LVDS_707_14 LVDS_707_15 @RX_GROUP_21 LVDS_707_16 LVDS_707_17 LVDS_707_18 LVDS_707_19 LVDS_707_20 LVDS_707_21 @RX_GROUP_22 LVDS_707_22 LVDS_707_23 LVDS_707_24 LVDS_707_25 LVDS_707_26 LVDS_707_27 @RX_GROUP_23 LVDS_707_28 LVDS_707_29 LVDS_707_30 LVDS_707_31 LVDS_707_32 LVDS_707_33 @RX_GROUP_24 {} {} LVDS_707_34 LVDS_707_35 @RX_GROUP_3 LVDS_706_4 LVDS_706_5 LVDS_706_6 LVDS_706_7 LVDS_706_8 LVDS_706_9 @RX_GROUP_4 LVDS_706_22 LVDS_706_23 LVDS_706_24 LVDS_706_25 LVDS_706_26 LVDS_706_27 @RX_GROUP_5 LVDS_706_28 LVDS_706_29 LVDS_706_30 LVDS_706_31 LVDS_706_32 LVDS_706_33 @RX_GROUP_6 LVDS_706_34 LVDS_706_35 LVDS_706_36 LVDS_706_37 LVDS_706_38 LVDS_706_39 @RX_GROUP_7 LVDS_706_40 LVDS_706_41 LVDS_706_42 LVDS_706_43 LVDS_706_44 LVDS_706_45 @RX_GROUP_8 {} {} LVDS_706_46 LVDS_706_47 @RX_GROUP_9 LVDS_708_10 LVDS_708_11 LVDS_708_12 LVDS_708_13 LVDS_708_14 LVDS_708_15" *) 
(* NUM_DATA_PINS = "24" *) (* PIN_INFO = "BUS0_DIR RX BUS0_IO_TYPE DIFF BUS0_SIG_TYPE Data BUS0_STROBE_EN 1 BUS0_STROBE_NAME RD_CLK_706 BUS0_SIG_NAME LVDS_706 BUS0_NUM_PINS 24 BUS0_STROBE_IO_TYPE DIFF BUS0_RE_EN 0 BUS0_RE_IO_TYPE SINGLE BUS0_RE_NAME RE_0 BUS0_WRCLK_EN 0 BUS0_WRCLK_IO_TYPE SINGLE BUS0_WRCLK_NAME WrClk_0 BUS1_DIR RX BUS1_IO_TYPE DIFF BUS1_SIG_TYPE Data BUS1_STROBE_EN 1 BUS1_STROBE_NAME RD_CLK_707 BUS1_SIG_NAME LVDS_707 BUS1_NUM_PINS 18 BUS1_STROBE_IO_TYPE DIFF BUS1_RE_EN 0 BUS1_RE_IO_TYPE SINGLE BUS1_RE_NAME RE_1 BUS1_WRCLK_EN 0 BUS1_WRCLK_IO_TYPE SINGLE BUS1_WRCLK_NAME WrClk_1 BUS2_DIR RX BUS2_IO_TYPE DIFF BUS2_SIG_TYPE Data BUS2_STROBE_EN 1 BUS2_STROBE_NAME RD_CLK_708 BUS2_SIG_NAME LVDS_708 BUS2_NUM_PINS 22 BUS2_STROBE_IO_TYPE DIFF BUS2_RE_EN 0 BUS2_RE_IO_TYPE SINGLE BUS2_RE_NAME RE_2 BUS2_WRCLK_EN 0 BUS2_WRCLK_IO_TYPE SINGLE BUS2_WRCLK_NAME WrClk_2 BUS3_DIR RX BUS3_IO_TYPE DIFF BUS3_SIG_TYPE {Input Clock} BUS3_STROBE_EN 0 BUS3_STROBE_NAME Strobe_3 BUS3_SIG_NAME XPLL_IN BUS3_NUM_PINS 1 BUS3_STROBE_IO_TYPE SINGLE BUS3_RE_EN 0 BUS3_RE_IO_TYPE SINGLE BUS3_RE_NAME RE_3 BUS3_WRCLK_EN 0 BUS3_WRCLK_IO_TYPE SINGLE BUS3_WRCLK_NAME WrClk_3" *) (* PLL0_PLLOUTCLK0 = "100.000000" *) 
(* PLL0_PLLOUTCLK1 = "200.000000" *) (* PLL0_PLLOUTFB = "100.000000" *) (* PLL_ACROSS_BANKS = "0" *) 
(* PLL_CLK_SOURCE = "IBUF_TO_PLL" *) (* PLL_FIFO_WRITE_CLK_EN = "0" *) (* PLL_IN_CORE = "1" *) 
(* REDUCE_CONTROL_SIG_EN = "1" *) (* RIU_FROM_PLL = "0" *) (* RX_APP_CLK_FREQ = "100.000000" *) 
(* RX_DELAY_CASCADE = "0" *) (* RX_DELAY_FORMAT = "TIME" *) (* RX_DELAY_MODE = "TIME" *) 
(* RX_DELAY_TYPE = "2'b00" *) (* RX_DELAY_VALUE = "12'b000000000000" *) (* RX_SERIALIZATION_FACTOR = "4" *) 
(* TEMPLATE = "MIPI_RX" *) (* TRI_SELECT = "1" *) (* TX_APP_CLK_FREQ = "100.000000" *) 
(* TX_DATA_PHASE = "0" *) (* TX_DELAY_MODE = "TIME" *) (* TX_DELAY_TYPE = "0" *) 
(* TX_DELAY_VALUE = "12'b000000000000" *) (* TX_SERIALIZATION_FACTOR = "8" *) (* WIZ_OVERRIDE = "0" *) 
(* XPHYIO_APPLICATION_DATA_WIDTH = "8" *) (* XPHYIO_APPLICATION_TYPE = "SOURCE_SYNCHRONOUS" *) (* XPHYIO_BIDIR_MODE = "1" *) 
(* XPHYIO_BITSLIP_VAL = "0x2C" *) (* XPHYIO_BUS0_DIR = "RX" *) (* XPHYIO_BUS0_IO_TYPE = "DIFF" *) 
(* XPHYIO_BUS0_NUM_PINS = "24" *) (* XPHYIO_BUS0_RE_EN = "0" *) (* XPHYIO_BUS0_RE_IO_TYPE = "SINGLE" *) 
(* XPHYIO_BUS0_RE_NAME = "RE_0" *) (* XPHYIO_BUS0_SIG_NAME = "LVDS_706" *) (* XPHYIO_BUS0_SIG_TYPE = "Data" *) 
(* XPHYIO_BUS0_STROBE_EN = "1" *) (* XPHYIO_BUS0_STROBE_IO_TYPE = "DIFF" *) (* XPHYIO_BUS0_STROBE_NAME = "RD_CLK_706" *) 
(* XPHYIO_BUS0_WRCLK_EN = "0" *) (* XPHYIO_BUS0_WRCLK_IO_TYPE = "SINGLE" *) (* XPHYIO_BUS0_WRCLK_NAME = "WrClk_0" *) 
(* XPHYIO_BUS0_XPHY_ATTR = "FIFOMODE_ASYNC" *) (* XPHYIO_BUS10_DIR = "None" *) (* XPHYIO_BUS10_IO_TYPE = "SINGLE" *) 
(* XPHYIO_BUS10_NUM_PINS = "1" *) (* XPHYIO_BUS10_SIG_NAME = "Data_pins_10" *) (* XPHYIO_BUS10_SIG_TYPE = "Data" *) 
(* XPHYIO_BUS10_STROBE_EN = "0" *) (* XPHYIO_BUS10_STROBE_IO_TYPE = "SINGLE" *) (* XPHYIO_BUS10_STROBE_NAME = "Strobe_10" *) 
(* XPHYIO_BUS10_WRCLK_EN = "0" *) (* XPHYIO_BUS10_WRCLK_IO_TYPE = "SINGLE" *) (* XPHYIO_BUS10_WRCLK_NAME = "WrClk_10" *) 
(* XPHYIO_BUS10_XPHY_ATTR = "0" *) (* XPHYIO_BUS11_DIR = "None" *) (* XPHYIO_BUS11_IO_TYPE = "SINGLE" *) 
(* XPHYIO_BUS11_NUM_PINS = "1" *) (* XPHYIO_BUS11_SIG_NAME = "Data_pins_11" *) (* XPHYIO_BUS11_SIG_TYPE = "Data" *) 
(* XPHYIO_BUS11_STROBE_EN = "0" *) (* XPHYIO_BUS11_STROBE_IO_TYPE = "SINGLE" *) (* XPHYIO_BUS11_STROBE_NAME = "Strobe_11" *) 
(* XPHYIO_BUS11_WRCLK_EN = "0" *) (* XPHYIO_BUS11_WRCLK_IO_TYPE = "SINGLE" *) (* XPHYIO_BUS11_WRCLK_NAME = "WrClk_11" *) 
(* XPHYIO_BUS11_XPHY_ATTR = "0" *) (* XPHYIO_BUS12_DIR = "None" *) (* XPHYIO_BUS12_IO_TYPE = "SINGLE" *) 
(* XPHYIO_BUS12_NUM_PINS = "1" *) (* XPHYIO_BUS12_SIG_NAME = "Data_pins_12" *) (* XPHYIO_BUS12_SIG_TYPE = "Data" *) 
(* XPHYIO_BUS12_STROBE_EN = "0" *) (* XPHYIO_BUS12_STROBE_IO_TYPE = "SINGLE" *) (* XPHYIO_BUS12_STROBE_NAME = "Strobe_12" *) 
(* XPHYIO_BUS12_WRCLK_EN = "0" *) (* XPHYIO_BUS12_WRCLK_IO_TYPE = "SINGLE" *) (* XPHYIO_BUS12_WRCLK_NAME = "WrClk_12" *) 
(* XPHYIO_BUS12_XPHY_ATTR = "0" *) (* XPHYIO_BUS13_DIR = "None" *) (* XPHYIO_BUS13_IO_TYPE = "SINGLE" *) 
(* XPHYIO_BUS13_NUM_PINS = "1" *) (* XPHYIO_BUS13_SIG_NAME = "Data_pins_13" *) (* XPHYIO_BUS13_SIG_TYPE = "Data" *) 
(* XPHYIO_BUS13_STROBE_EN = "0" *) (* XPHYIO_BUS13_STROBE_IO_TYPE = "SINGLE" *) (* XPHYIO_BUS13_STROBE_NAME = "Strobe_13" *) 
(* XPHYIO_BUS13_WRCLK_EN = "0" *) (* XPHYIO_BUS13_WRCLK_IO_TYPE = "SINGLE" *) (* XPHYIO_BUS13_WRCLK_NAME = "WrClk_13" *) 
(* XPHYIO_BUS13_XPHY_ATTR = "0" *) (* XPHYIO_BUS14_DIR = "None" *) (* XPHYIO_BUS14_IO_TYPE = "SINGLE" *) 
(* XPHYIO_BUS14_NUM_PINS = "1" *) (* XPHYIO_BUS14_SIG_NAME = "Data_pins_14" *) (* XPHYIO_BUS14_SIG_TYPE = "Data" *) 
(* XPHYIO_BUS14_STROBE_EN = "0" *) (* XPHYIO_BUS14_STROBE_IO_TYPE = "SINGLE" *) (* XPHYIO_BUS14_STROBE_NAME = "Strobe_14" *) 
(* XPHYIO_BUS14_WRCLK_EN = "0" *) (* XPHYIO_BUS14_WRCLK_IO_TYPE = "SINGLE" *) (* XPHYIO_BUS14_WRCLK_NAME = "WrClk_14" *) 
(* XPHYIO_BUS14_XPHY_ATTR = "0" *) (* XPHYIO_BUS15_DIR = "None" *) (* XPHYIO_BUS15_IO_TYPE = "SINGLE" *) 
(* XPHYIO_BUS15_NUM_PINS = "1" *) (* XPHYIO_BUS15_SIG_NAME = "Data_pins_15" *) (* XPHYIO_BUS15_SIG_TYPE = "Data" *) 
(* XPHYIO_BUS15_STROBE_EN = "0" *) (* XPHYIO_BUS15_STROBE_IO_TYPE = "SINGLE" *) (* XPHYIO_BUS15_STROBE_NAME = "Strobe_15" *) 
(* XPHYIO_BUS15_WRCLK_EN = "0" *) (* XPHYIO_BUS15_WRCLK_IO_TYPE = "SINGLE" *) (* XPHYIO_BUS15_WRCLK_NAME = "WrClk_15" *) 
(* XPHYIO_BUS15_XPHY_ATTR = "0" *) (* XPHYIO_BUS16_DIR = "None" *) (* XPHYIO_BUS16_IO_TYPE = "SINGLE" *) 
(* XPHYIO_BUS16_NUM_PINS = "1" *) (* XPHYIO_BUS16_SIG_NAME = "Data_pins_16" *) (* XPHYIO_BUS16_SIG_TYPE = "Data" *) 
(* XPHYIO_BUS16_STROBE_EN = "0" *) (* XPHYIO_BUS16_STROBE_IO_TYPE = "SINGLE" *) (* XPHYIO_BUS16_STROBE_NAME = "Strobe_16" *) 
(* XPHYIO_BUS16_WRCLK_EN = "0" *) (* XPHYIO_BUS16_WRCLK_IO_TYPE = "SINGLE" *) (* XPHYIO_BUS16_WRCLK_NAME = "WrClk_16" *) 
(* XPHYIO_BUS16_XPHY_ATTR = "0" *) (* XPHYIO_BUS1_DIR = "RX" *) (* XPHYIO_BUS1_IO_TYPE = "DIFF" *) 
(* XPHYIO_BUS1_NUM_PINS = "18" *) (* XPHYIO_BUS1_RE_EN = "0" *) (* XPHYIO_BUS1_RE_IO_TYPE = "SINGLE" *) 
(* XPHYIO_BUS1_RE_NAME = "RE_1" *) (* XPHYIO_BUS1_SIG_NAME = "LVDS_707" *) (* XPHYIO_BUS1_SIG_TYPE = "Data" *) 
(* XPHYIO_BUS1_STROBE_EN = "1" *) (* XPHYIO_BUS1_STROBE_IO_TYPE = "DIFF" *) (* XPHYIO_BUS1_STROBE_NAME = "RD_CLK_707" *) 
(* XPHYIO_BUS1_WRCLK_EN = "0" *) (* XPHYIO_BUS1_WRCLK_IO_TYPE = "SINGLE" *) (* XPHYIO_BUS1_WRCLK_NAME = "WrClk_1" *) 
(* XPHYIO_BUS1_XPHY_ATTR = "0" *) (* XPHYIO_BUS2_DIR = "RX" *) (* XPHYIO_BUS2_IO_TYPE = "DIFF" *) 
(* XPHYIO_BUS2_NUM_PINS = "22" *) (* XPHYIO_BUS2_RE_EN = "0" *) (* XPHYIO_BUS2_RE_IO_TYPE = "SINGLE" *) 
(* XPHYIO_BUS2_RE_NAME = "RE_2" *) (* XPHYIO_BUS2_SIG_NAME = "LVDS_708" *) (* XPHYIO_BUS2_SIG_TYPE = "Data" *) 
(* XPHYIO_BUS2_STROBE_EN = "1" *) (* XPHYIO_BUS2_STROBE_IO_TYPE = "DIFF" *) (* XPHYIO_BUS2_STROBE_NAME = "RD_CLK_708" *) 
(* XPHYIO_BUS2_WRCLK_EN = "0" *) (* XPHYIO_BUS2_WRCLK_IO_TYPE = "SINGLE" *) (* XPHYIO_BUS2_WRCLK_NAME = "WrClk_2" *) 
(* XPHYIO_BUS2_XPHY_ATTR = "0" *) (* XPHYIO_BUS3_DIR = "RX" *) (* XPHYIO_BUS3_IO_TYPE = "DIFF" *) 
(* XPHYIO_BUS3_NUM_PINS = "1" *) (* XPHYIO_BUS3_RE_EN = "0" *) (* XPHYIO_BUS3_RE_IO_TYPE = "SINGLE" *) 
(* XPHYIO_BUS3_RE_NAME = "RE_3" *) (* XPHYIO_BUS3_SIG_NAME = "XPLL_IN" *) (* XPHYIO_BUS3_SIG_TYPE = "Input Clock" *) 
(* XPHYIO_BUS3_STROBE_EN = "0" *) (* XPHYIO_BUS3_STROBE_IO_TYPE = "SINGLE" *) (* XPHYIO_BUS3_STROBE_NAME = "Strobe_3" *) 
(* XPHYIO_BUS3_WRCLK_EN = "0" *) (* XPHYIO_BUS3_WRCLK_IO_TYPE = "SINGLE" *) (* XPHYIO_BUS3_WRCLK_NAME = "WrClk_3" *) 
(* XPHYIO_BUS3_XPHY_ATTR = "0" *) (* XPHYIO_BUS4_DIR = "None" *) (* XPHYIO_BUS4_IO_TYPE = "SINGLE" *) 
(* XPHYIO_BUS4_NUM_PINS = "1" *) (* XPHYIO_BUS4_RE_EN = "0" *) (* XPHYIO_BUS4_RE_IO_TYPE = "SINGLE" *) 
(* XPHYIO_BUS4_RE_NAME = "RE_4" *) (* XPHYIO_BUS4_SIG_NAME = "Data_pins_4" *) (* XPHYIO_BUS4_SIG_TYPE = "Data" *) 
(* XPHYIO_BUS4_STROBE_EN = "0" *) (* XPHYIO_BUS4_STROBE_IO_TYPE = "SINGLE" *) (* XPHYIO_BUS4_STROBE_NAME = "Strobe_4" *) 
(* XPHYIO_BUS4_WRCLK_EN = "0" *) (* XPHYIO_BUS4_WRCLK_IO_TYPE = "SINGLE" *) (* XPHYIO_BUS4_WRCLK_NAME = "WrClk_4" *) 
(* XPHYIO_BUS4_XPHY_ATTR = "0" *) (* XPHYIO_BUS5_DIR = "None" *) (* XPHYIO_BUS5_IO_TYPE = "SINGLE" *) 
(* XPHYIO_BUS5_NUM_PINS = "1" *) (* XPHYIO_BUS5_RE_EN = "0" *) (* XPHYIO_BUS5_RE_IO_TYPE = "SINGLE" *) 
(* XPHYIO_BUS5_RE_NAME = "RE_5" *) (* XPHYIO_BUS5_SIG_NAME = "Data_pins_5" *) (* XPHYIO_BUS5_SIG_TYPE = "Data" *) 
(* XPHYIO_BUS5_STROBE_EN = "0" *) (* XPHYIO_BUS5_STROBE_IO_TYPE = "SINGLE" *) (* XPHYIO_BUS5_STROBE_NAME = "Strobe_5" *) 
(* XPHYIO_BUS5_WRCLK_EN = "0" *) (* XPHYIO_BUS5_WRCLK_IO_TYPE = "SINGLE" *) (* XPHYIO_BUS5_WRCLK_NAME = "WrClk_5" *) 
(* XPHYIO_BUS5_XPHY_ATTR = "0" *) (* XPHYIO_BUS6_DIR = "None" *) (* XPHYIO_BUS6_IO_TYPE = "SINGLE" *) 
(* XPHYIO_BUS6_NUM_PINS = "1" *) (* XPHYIO_BUS6_SIG_NAME = "Data_pins_6" *) (* XPHYIO_BUS6_SIG_TYPE = "Data" *) 
(* XPHYIO_BUS6_STROBE_EN = "0" *) (* XPHYIO_BUS6_STROBE_IO_TYPE = "SINGLE" *) (* XPHYIO_BUS6_STROBE_NAME = "Strobe_6" *) 
(* XPHYIO_BUS6_WRCLK_EN = "0" *) (* XPHYIO_BUS6_WRCLK_IO_TYPE = "SINGLE" *) (* XPHYIO_BUS6_WRCLK_NAME = "WrClk_6" *) 
(* XPHYIO_BUS6_XPHY_ATTR = "0" *) (* XPHYIO_BUS7_DIR = "None" *) (* XPHYIO_BUS7_IO_TYPE = "SINGLE" *) 
(* XPHYIO_BUS7_NUM_PINS = "1" *) (* XPHYIO_BUS7_SIG_NAME = "Data_pins_7" *) (* XPHYIO_BUS7_SIG_TYPE = "Data" *) 
(* XPHYIO_BUS7_STROBE_EN = "0" *) (* XPHYIO_BUS7_STROBE_IO_TYPE = "SINGLE" *) (* XPHYIO_BUS7_STROBE_NAME = "Strobe_7" *) 
(* XPHYIO_BUS7_WRCLK_EN = "0" *) (* XPHYIO_BUS7_WRCLK_IO_TYPE = "SINGLE" *) (* XPHYIO_BUS7_WRCLK_NAME = "WrClk_7" *) 
(* XPHYIO_BUS7_XPHY_ATTR = "0" *) (* XPHYIO_BUS8_DIR = "None" *) (* XPHYIO_BUS8_IO_TYPE = "SINGLE" *) 
(* XPHYIO_BUS8_NUM_PINS = "1" *) (* XPHYIO_BUS8_SIG_NAME = "Data_pins_8" *) (* XPHYIO_BUS8_SIG_TYPE = "Data" *) 
(* XPHYIO_BUS8_STROBE_EN = "0" *) (* XPHYIO_BUS8_STROBE_IO_TYPE = "SINGLE" *) (* XPHYIO_BUS8_STROBE_NAME = "Strobe_8" *) 
(* XPHYIO_BUS8_WRCLK_EN = "0" *) (* XPHYIO_BUS8_WRCLK_IO_TYPE = "SINGLE" *) (* XPHYIO_BUS8_WRCLK_NAME = "WrClk_8" *) 
(* XPHYIO_BUS8_XPHY_ATTR = "0" *) (* XPHYIO_BUS9_DIR = "None" *) (* XPHYIO_BUS9_IO_TYPE = "SINGLE" *) 
(* XPHYIO_BUS9_NUM_PINS = "1" *) (* XPHYIO_BUS9_SIG_NAME = "Data_pins_9" *) (* XPHYIO_BUS9_SIG_TYPE = "Data" *) 
(* XPHYIO_BUS9_STROBE_EN = "0" *) (* XPHYIO_BUS9_STROBE_IO_TYPE = "SINGLE" *) (* XPHYIO_BUS9_STROBE_NAME = "Strobe_9" *) 
(* XPHYIO_BUS9_WRCLK_EN = "0" *) (* XPHYIO_BUS9_WRCLK_IO_TYPE = "SINGLE" *) (* XPHYIO_BUS9_WRCLK_NAME = "WrClk_9" *) 
(* XPHYIO_BUS9_XPHY_ATTR = "0" *) (* XPHYIO_BUS_DIR = "1" *) (* XPHYIO_CLK_FWD_PHASE = "0" *) 
(* XPHYIO_CLK_TO_DATA_ALIGN = "4" *) (* XPHYIO_C_EN_TX_CTSL = "0" *) (* XPHYIO_Component_Name = "design_1_advanced_io_wizard_0_0" *) 
(* XPHYIO_DATA_SPEED = "1000.00" *) (* XPHYIO_DELAY_CTRL_SIG_EN = "0" *) (* XPHYIO_DIFF_IO_STD = "LVDS15" *) 
(* XPHYIO_ENABLE_ALL_PORTS = "0" *) (* XPHYIO_ENABLE_BITSLIP = "0" *) (* XPHYIO_ENABLE_BLI = "1" *) 
(* XPHYIO_ENABLE_CDR_DEBUG = "0" *) (* XPHYIO_ENABLE_DATA_BITSLIP = "0" *) (* XPHYIO_ENABLE_IOB_POWER_SAVING = "0" *) 
(* XPHYIO_ENABLE_VREF_TUNE = "0" *) (* XPHYIO_ENABLE_XPLL_DESKEW = "1" *) (* XPHYIO_IOB_POWER_CONTROL = "0" *) 
(* XPHYIO_MAX_BANKS = "3" *) (* XPHYIO_MIPI_DESKEW_EN = "0" *) (* XPHYIO_MIPI_TXCALIB_EN = "0" *) 
(* XPHYIO_NIBBLE_GROUP = "@RX_GROUP_0 LVDS_706_10 LVDS_706_11 LVDS_706_12 LVDS_706_13 LVDS_706_14 LVDS_706_15 @RX_GROUP_1 LVDS_706_16 LVDS_706_17 LVDS_706_18 LVDS_706_19 LVDS_706_20 LVDS_706_21 @RX_GROUP_10 LVDS_708_16 LVDS_708_17 LVDS_708_18 LVDS_708_19 LVDS_708_20 LVDS_708_21 @RX_GROUP_11 RD_CLK_708_0 RD_CLK_708_1 LVDS_708_0 LVDS_708_1 LVDS_708_2 LVDS_708_3 @RX_GROUP_12 LVDS_708_4 LVDS_708_5 LVDS_708_6 LVDS_708_7 LVDS_708_8 LVDS_708_9 @RX_GROUP_13 LVDS_708_22 LVDS_708_23 LVDS_708_24 LVDS_708_25 LVDS_708_26 LVDS_708_27 @RX_GROUP_14 LVDS_708_28 LVDS_708_29 LVDS_708_30 LVDS_708_31 LVDS_708_32 LVDS_708_33 @RX_GROUP_15 LVDS_708_34 LVDS_708_35 LVDS_708_36 LVDS_708_37 LVDS_708_38 LVDS_708_39 @RX_GROUP_16 LVDS_708_40 LVDS_708_41 LVDS_708_42 LVDS_708_43 @RX_GROUP_17 XPLL_IN_0 XPLL_IN_1 @RX_GROUP_18 RD_CLK_707_0 RD_CLK_707_1 LVDS_707_0 LVDS_707_1 LVDS_707_2 LVDS_707_3 @RX_GROUP_19 LVDS_707_4 LVDS_707_5 LVDS_707_6 LVDS_707_7 LVDS_707_8 LVDS_707_9 @RX_GROUP_2 RD_CLK_706_0 RD_CLK_706_1 LVDS_706_0 LVDS_706_1 LVDS_706_2 LVDS_706_3 @RX_GROUP_20 LVDS_707_10 LVDS_707_11 LVDS_707_12 LVDS_707_13 LVDS_707_14 LVDS_707_15 @RX_GROUP_21 LVDS_707_16 LVDS_707_17 LVDS_707_18 LVDS_707_19 LVDS_707_20 LVDS_707_21 @RX_GROUP_22 LVDS_707_22 LVDS_707_23 LVDS_707_24 LVDS_707_25 LVDS_707_26 LVDS_707_27 @RX_GROUP_23 LVDS_707_28 LVDS_707_29 LVDS_707_30 LVDS_707_31 LVDS_707_32 LVDS_707_33 @RX_GROUP_24 {} {} LVDS_707_34 LVDS_707_35 @RX_GROUP_3 LVDS_706_4 LVDS_706_5 LVDS_706_6 LVDS_706_7 LVDS_706_8 LVDS_706_9 @RX_GROUP_4 LVDS_706_22 LVDS_706_23 LVDS_706_24 LVDS_706_25 LVDS_706_26 LVDS_706_27 @RX_GROUP_5 LVDS_706_28 LVDS_706_29 LVDS_706_30 LVDS_706_31 LVDS_706_32 LVDS_706_33 @RX_GROUP_6 LVDS_706_34 LVDS_706_35 LVDS_706_36 LVDS_706_37 LVDS_706_38 LVDS_706_39 @RX_GROUP_7 LVDS_706_40 LVDS_706_41 LVDS_706_42 LVDS_706_43 LVDS_706_44 LVDS_706_45 @RX_GROUP_8 {} {} LVDS_706_46 LVDS_706_47 @RX_GROUP_9 LVDS_708_10 LVDS_708_11 LVDS_708_12 LVDS_708_13 LVDS_708_14 LVDS_708_15" *) (* XPHYIO_PIN_INFO = "BUS0_DIR RX BUS0_IO_TYPE DIFF BUS0_SIG_TYPE Data BUS0_STROBE_EN 1 BUS0_STROBE_NAME RD_CLK_706 BUS0_SIG_NAME LVDS_706 BUS0_NUM_PINS 24 BUS0_STROBE_IO_TYPE DIFF BUS0_RE_EN 0 BUS0_RE_IO_TYPE SINGLE BUS0_RE_NAME RE_0 BUS0_WRCLK_EN 0 BUS0_WRCLK_IO_TYPE SINGLE BUS0_WRCLK_NAME WrClk_0 BUS1_DIR RX BUS1_IO_TYPE DIFF BUS1_SIG_TYPE Data BUS1_STROBE_EN 1 BUS1_STROBE_NAME RD_CLK_707 BUS1_SIG_NAME LVDS_707 BUS1_NUM_PINS 18 BUS1_STROBE_IO_TYPE DIFF BUS1_RE_EN 0 BUS1_RE_IO_TYPE SINGLE BUS1_RE_NAME RE_1 BUS1_WRCLK_EN 0 BUS1_WRCLK_IO_TYPE SINGLE BUS1_WRCLK_NAME WrClk_1 BUS2_DIR RX BUS2_IO_TYPE DIFF BUS2_SIG_TYPE Data BUS2_STROBE_EN 1 BUS2_STROBE_NAME RD_CLK_708 BUS2_SIG_NAME LVDS_708 BUS2_NUM_PINS 22 BUS2_STROBE_IO_TYPE DIFF BUS2_RE_EN 0 BUS2_RE_IO_TYPE SINGLE BUS2_RE_NAME RE_2 BUS2_WRCLK_EN 0 BUS2_WRCLK_IO_TYPE SINGLE BUS2_WRCLK_NAME WrClk_2 BUS3_DIR RX BUS3_IO_TYPE DIFF BUS3_SIG_TYPE {Input Clock} BUS3_STROBE_EN 0 BUS3_STROBE_NAME Strobe_3 BUS3_SIG_NAME XPLL_IN BUS3_NUM_PINS 1 BUS3_STROBE_IO_TYPE SINGLE BUS3_RE_EN 0 BUS3_RE_IO_TYPE SINGLE BUS3_RE_NAME RE_3 BUS3_WRCLK_EN 0 BUS3_WRCLK_IO_TYPE SINGLE BUS3_WRCLK_NAME WrClk_3" *) (* XPHYIO_PLL_CLK_SOURCE = "IBUF_TO_PLL" *) 
(* XPHYIO_PLL_IN_CORE = "1" *) (* XPHYIO_REDUCE_CONTROL_SIG_EN = "1" *) (* XPHYIO_RX_DELAY_VALUE = "0" *) 
(* XPHYIO_RX_SERIALIZATION_FACTOR = "4" *) (* XPHYIO_SIMPLE_RIU = "0" *) (* XPHYIO_SINGLE_IO_STD = "NONE" *) 
(* XPHYIO_TEMPLATE = "None" *) (* XPHYIO_TRI_SELECT = "1" *) (* XPHYIO_TX_DELAY_VALUE = "0" *) 
(* XPHYIO_TX_SERIALIZATION_FACTOR = "8" *) (* X_VERSAL_IO_FLOW = "xilinx.com:ip:advanced_io_wizard_phy:1.0" *) (* dont_touch = "true" *) 
module design_1_advanced_io_wizard_0_0_advanced_io_wizard_v1_0_4
   (bank0_pll_clkout0,
    bank0_pll_clkout1,
    bank0_pll_clkout2,
    bank0_pll_clkout3,
    bank0_pll_clkoutphy,
    bank0_pll_locked,
    bank0_pll_clkin,
    bank0_pll_rst_pll,
    bank1_pll_clkout0,
    bank1_pll_clkout1,
    bank1_pll_clkout2,
    bank1_pll_clkout3,
    bank1_pll_clkoutphy,
    bank1_pll_locked,
    bank1_pll_clkin,
    bank1_pll_rst_pll,
    bank2_pll_clkout0,
    bank2_pll_clkout1,
    bank2_pll_clkout2,
    bank2_pll_clkout3,
    bank2_pll_clkoutphy,
    bank2_pll_locked,
    bank2_pll_clkin,
    bank2_pll_rst_pll,
    shared_pll_clkoutphyen_out,
    shared_bank0_pll_clkoutphy_in,
    shared_bank0_pll_locked_in,
    shared_bank1_pll_clkoutphy_in,
    shared_bank1_pll_locked_in,
    shared_bank2_pll_clkoutphy_in,
    shared_bank2_pll_locked_in,
    parallel_clk,
    fabric_vref_tune,
    vref_id,
    cal_done,
    cal_status,
    data2fabric,
    deskew_start,
    acdeskew_start,
    deskew_done,
    LVDS_706_p,
    LVDS_706_n,
    data_to_fabric_LVDS_706,
    RD_CLK_706_p,
    RD_CLK_706_n,
    data_to_fabric_RD_CLK_706,
    LVDS_707_p,
    LVDS_707_n,
    data_to_fabric_LVDS_707,
    RD_CLK_707_p,
    RD_CLK_707_n,
    data_to_fabric_RD_CLK_707,
    LVDS_708_p,
    LVDS_708_n,
    data_to_fabric_LVDS_708,
    RD_CLK_708_p,
    RD_CLK_708_n,
    data_to_fabric_RD_CLK_708,
    XPLL_IN_p,
    XPLL_IN_n,
    tx_app_clk,
    rx_app_clk,
    start_bitslip,
    bitslip_sync_done,
    dly_rdy,
    phy_rdy,
    fifo_empty,
    fifo_wr_clk,
    riu_rd_data,
    riu_rd_valid,
    phywren_data,
    phywren_clk,
    intf_rdy,
    ctrl_clk,
    en_vtc,
    phy_wren,
    phy_rden,
    phy_rdcs0,
    phy_rdcs1,
    phy_wrcs0,
    phy_wrcs1,
    gt_status,
    fifo_rd_en,
    fifo_rd_clk,
    gearbox_clk,
    riu_clk,
    riu_wr_en,
    riu_wr_data,
    riu_addr,
    riu_nibble_sel,
    psen_vio,
    psincdec_vio,
    psdone_vio,
    dbg_bus,
    rst);
  output bank0_pll_clkout0;
  output bank0_pll_clkout1;
  output bank0_pll_clkout2;
  output bank0_pll_clkout3;
  output bank0_pll_clkoutphy;
  output bank0_pll_locked;
  input bank0_pll_clkin;
  input bank0_pll_rst_pll;
  output bank1_pll_clkout0;
  output bank1_pll_clkout1;
  output bank1_pll_clkout2;
  output bank1_pll_clkout3;
  output bank1_pll_clkoutphy;
  output bank1_pll_locked;
  input bank1_pll_clkin;
  input bank1_pll_rst_pll;
  output bank2_pll_clkout0;
  output bank2_pll_clkout1;
  output bank2_pll_clkout2;
  output bank2_pll_clkout3;
  output bank2_pll_clkoutphy;
  output bank2_pll_locked;
  input bank2_pll_clkin;
  input bank2_pll_rst_pll;
  output shared_pll_clkoutphyen_out;
  input shared_bank0_pll_clkoutphy_in;
  input shared_bank0_pll_locked_in;
  input shared_bank1_pll_clkoutphy_in;
  input shared_bank1_pll_locked_in;
  input shared_bank2_pll_clkoutphy_in;
  input shared_bank2_pll_locked_in;
  input parallel_clk;
  input [29:0]fabric_vref_tune;
  input [11:0]vref_id;
  output cal_done;
  output cal_status;
  input [95:0]data2fabric;
  input [23:0]deskew_start;
  input [23:0]acdeskew_start;
  output [23:0]deskew_done;
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
  input tx_app_clk;
  input rx_app_clk;
  input start_bitslip;
  output bitslip_sync_done;
  output dly_rdy;
  output phy_rdy;
  output fifo_empty;
  output [26:0]fifo_wr_clk;
  output [431:0]riu_rd_data;
  output [26:0]riu_rd_valid;
  input [3:0]phywren_data;
  input [3:0]phywren_clk;
  output intf_rdy;
  input ctrl_clk;
  input en_vtc;
  input [107:0]phy_wren;
  input [107:0]phy_rden;
  input [107:0]phy_rdcs0;
  input [107:0]phy_rdcs1;
  input [107:0]phy_wrcs0;
  input [107:0]phy_wrcs1;
  output [26:0]gt_status;
  input fifo_rd_en;
  input fifo_rd_clk;
  input gearbox_clk;
  input riu_clk;
  input [26:0]riu_wr_en;
  input [431:0]riu_wr_data;
  input [215:0]riu_addr;
  input [26:0]riu_nibble_sel;
  input psen_vio;
  input psincdec_vio;
  output psdone_vio;
  output [99:0]dbg_bus;
  input rst;

  wire \<const0> ;
  wire [23:0]LVDS_706_n;
  wire [23:0]LVDS_706_p;
  wire [17:0]LVDS_707_n;
  wire [17:0]LVDS_707_p;
  wire [21:0]LVDS_708_n;
  wire [21:0]LVDS_708_p;
  wire [0:0]RD_CLK_706_n;
  wire [0:0]RD_CLK_706_p;
  wire [0:0]RD_CLK_707_n;
  wire [0:0]RD_CLK_707_p;
  wire [0:0]RD_CLK_708_n;
  wire [0:0]RD_CLK_708_p;
  wire [0:0]XPLL_IN_n;
  wire [0:0]XPLL_IN_p;
  wire bank0_pll_clkout0;
  wire bank0_pll_clkout1;
  wire bank0_pll_clkout2;
  wire bank0_pll_clkout3;
  wire bank0_pll_clkoutphy;
  wire bank0_pll_locked;
  wire bank0_pll_locked_fb_int;
  wire bank0_pll_rst_pll;
  wire bank1_pll_clkout0;
  wire bank1_pll_clkout1;
  wire bank1_pll_clkout2;
  wire bank1_pll_clkout3;
  wire bank1_pll_clkoutphy;
  wire bank1_pll_locked;
  wire bank1_pll_locked_fb_int;
  wire bank1_pll_rst_pll;
  wire bank2_pll_clkout0;
  wire bank2_pll_clkout1;
  wire bank2_pll_clkout2;
  wire bank2_pll_clkout3;
  wire bank2_pll_clkoutphy;
  wire bank2_pll_locked;
  wire bank2_pll_locked_fb_int;
  wire bank2_pll_rst_pll;
  wire ctrl_clk;
  wire [95:0]data_to_fabric_LVDS_706;
  (* DONT_TOUCH *) wire [95:0]data_to_fabric_LVDS_706_bli;
  wire [71:0]data_to_fabric_LVDS_707;
  (* DONT_TOUCH *) wire [71:0]data_to_fabric_LVDS_707_bli;
  wire [87:0]data_to_fabric_LVDS_708;
  (* DONT_TOUCH *) wire [87:0]data_to_fabric_LVDS_708_bli;
  wire [3:0]data_to_fabric_RD_CLK_706;
  (* DONT_TOUCH *) wire [3:0]data_to_fabric_RD_CLK_706_bli;
  wire [3:0]data_to_fabric_RD_CLK_707;
  (* DONT_TOUCH *) wire [3:0]data_to_fabric_RD_CLK_707_bli;
  wire [3:0]data_to_fabric_RD_CLK_708;
  (* DONT_TOUCH *) wire [3:0]data_to_fabric_RD_CLK_708_bli;
  wire dly_rdy;
  wire en_vtc;
  wire [29:0]fabric_vref_tune;
  wire fifo_empty;
  wire fifo_empty_bli;
  wire fifo_rd_clk;
  wire fifo_rd_en;
  wire [26:0]fifo_wr_clk;
  wire gearbox_clk;
  wire intf_rdy;
  wire [107:0]phy_rden;
  wire phy_rdy;
  wire [107:0]phy_wren;
  wire pll_clkin_ibuf;
  wire [215:0]riu_addr;
  wire [26:0]riu_nibble_sel;
  wire [431:0]riu_rd_data;
  wire [26:0]riu_rd_valid;
  wire [431:0]riu_wr_data;
  wire [26:0]riu_wr_en;
  wire rst;
  wire shared_pll_clkoutphyen_out;
  wire [11:0]vref_id;
  wire [26:0]NLW_design_1_advanced_io_wizard_0_0_phy_i_gt_status_UNCONNECTED;

  assign bitslip_sync_done = \<const0> ;
  assign cal_done = \<const0> ;
  assign cal_status = \<const0> ;
  assign dbg_bus[99] = \<const0> ;
  assign dbg_bus[98] = \<const0> ;
  assign dbg_bus[97] = \<const0> ;
  assign dbg_bus[96] = \<const0> ;
  assign dbg_bus[95] = \<const0> ;
  assign dbg_bus[94] = \<const0> ;
  assign dbg_bus[93] = \<const0> ;
  assign dbg_bus[92] = \<const0> ;
  assign dbg_bus[91] = \<const0> ;
  assign dbg_bus[90] = \<const0> ;
  assign dbg_bus[89] = \<const0> ;
  assign dbg_bus[88] = \<const0> ;
  assign dbg_bus[87] = \<const0> ;
  assign dbg_bus[86] = \<const0> ;
  assign dbg_bus[85] = \<const0> ;
  assign dbg_bus[84] = \<const0> ;
  assign dbg_bus[83] = \<const0> ;
  assign dbg_bus[82] = \<const0> ;
  assign dbg_bus[81] = \<const0> ;
  assign dbg_bus[80] = \<const0> ;
  assign dbg_bus[79] = \<const0> ;
  assign dbg_bus[78] = \<const0> ;
  assign dbg_bus[77] = \<const0> ;
  assign dbg_bus[76] = \<const0> ;
  assign dbg_bus[75] = \<const0> ;
  assign dbg_bus[74] = \<const0> ;
  assign dbg_bus[73] = \<const0> ;
  assign dbg_bus[72] = \<const0> ;
  assign dbg_bus[71] = \<const0> ;
  assign dbg_bus[70] = \<const0> ;
  assign dbg_bus[69] = \<const0> ;
  assign dbg_bus[68] = \<const0> ;
  assign dbg_bus[67] = \<const0> ;
  assign dbg_bus[66] = \<const0> ;
  assign dbg_bus[65] = \<const0> ;
  assign dbg_bus[64] = \<const0> ;
  assign dbg_bus[63] = \<const0> ;
  assign dbg_bus[62] = \<const0> ;
  assign dbg_bus[61] = \<const0> ;
  assign dbg_bus[60] = \<const0> ;
  assign dbg_bus[59] = \<const0> ;
  assign dbg_bus[58] = \<const0> ;
  assign dbg_bus[57] = \<const0> ;
  assign dbg_bus[56] = \<const0> ;
  assign dbg_bus[55] = \<const0> ;
  assign dbg_bus[54] = \<const0> ;
  assign dbg_bus[53] = \<const0> ;
  assign dbg_bus[52] = \<const0> ;
  assign dbg_bus[51] = \<const0> ;
  assign dbg_bus[50] = \<const0> ;
  assign dbg_bus[49] = \<const0> ;
  assign dbg_bus[48] = \<const0> ;
  assign dbg_bus[47] = \<const0> ;
  assign dbg_bus[46] = \<const0> ;
  assign dbg_bus[45] = \<const0> ;
  assign dbg_bus[44] = \<const0> ;
  assign dbg_bus[43] = \<const0> ;
  assign dbg_bus[42] = \<const0> ;
  assign dbg_bus[41] = \<const0> ;
  assign dbg_bus[40] = \<const0> ;
  assign dbg_bus[39] = \<const0> ;
  assign dbg_bus[38] = \<const0> ;
  assign dbg_bus[37] = \<const0> ;
  assign dbg_bus[36] = \<const0> ;
  assign dbg_bus[35] = \<const0> ;
  assign dbg_bus[34] = \<const0> ;
  assign dbg_bus[33] = \<const0> ;
  assign dbg_bus[32] = \<const0> ;
  assign dbg_bus[31] = \<const0> ;
  assign dbg_bus[30] = \<const0> ;
  assign dbg_bus[29] = \<const0> ;
  assign dbg_bus[28] = \<const0> ;
  assign dbg_bus[27] = \<const0> ;
  assign dbg_bus[26] = \<const0> ;
  assign dbg_bus[25] = \<const0> ;
  assign dbg_bus[24] = \<const0> ;
  assign dbg_bus[23] = \<const0> ;
  assign dbg_bus[22] = \<const0> ;
  assign dbg_bus[21] = \<const0> ;
  assign dbg_bus[20] = \<const0> ;
  assign dbg_bus[19] = \<const0> ;
  assign dbg_bus[18] = \<const0> ;
  assign dbg_bus[17] = \<const0> ;
  assign dbg_bus[16] = \<const0> ;
  assign dbg_bus[15] = \<const0> ;
  assign dbg_bus[14] = \<const0> ;
  assign dbg_bus[13] = \<const0> ;
  assign dbg_bus[12] = \<const0> ;
  assign dbg_bus[11] = \<const0> ;
  assign dbg_bus[10] = \<const0> ;
  assign dbg_bus[9] = \<const0> ;
  assign dbg_bus[8] = \<const0> ;
  assign dbg_bus[7] = \<const0> ;
  assign dbg_bus[6] = \<const0> ;
  assign dbg_bus[5] = \<const0> ;
  assign dbg_bus[4] = \<const0> ;
  assign dbg_bus[3] = \<const0> ;
  assign dbg_bus[2] = \<const0> ;
  assign dbg_bus[1] = \<const0> ;
  assign dbg_bus[0] = \<const0> ;
  assign deskew_done[23] = \<const0> ;
  assign deskew_done[22] = \<const0> ;
  assign deskew_done[21] = \<const0> ;
  assign deskew_done[20] = \<const0> ;
  assign deskew_done[19] = \<const0> ;
  assign deskew_done[18] = \<const0> ;
  assign deskew_done[17] = \<const0> ;
  assign deskew_done[16] = \<const0> ;
  assign deskew_done[15] = \<const0> ;
  assign deskew_done[14] = \<const0> ;
  assign deskew_done[13] = \<const0> ;
  assign deskew_done[12] = \<const0> ;
  assign deskew_done[11] = \<const0> ;
  assign deskew_done[10] = \<const0> ;
  assign deskew_done[9] = \<const0> ;
  assign deskew_done[8] = \<const0> ;
  assign deskew_done[7] = \<const0> ;
  assign deskew_done[6] = \<const0> ;
  assign deskew_done[5] = \<const0> ;
  assign deskew_done[4] = \<const0> ;
  assign deskew_done[3] = \<const0> ;
  assign deskew_done[2] = \<const0> ;
  assign deskew_done[1] = \<const0> ;
  assign deskew_done[0] = \<const0> ;
  assign gt_status[26] = \<const0> ;
  assign gt_status[25] = \<const0> ;
  assign gt_status[24] = \<const0> ;
  assign gt_status[23] = \<const0> ;
  assign gt_status[22] = \<const0> ;
  assign gt_status[21] = \<const0> ;
  assign gt_status[20] = \<const0> ;
  assign gt_status[19] = \<const0> ;
  assign gt_status[18] = \<const0> ;
  assign gt_status[17] = \<const0> ;
  assign gt_status[16] = \<const0> ;
  assign gt_status[15] = \<const0> ;
  assign gt_status[14] = \<const0> ;
  assign gt_status[13] = \<const0> ;
  assign gt_status[12] = \<const0> ;
  assign gt_status[11] = \<const0> ;
  assign gt_status[10] = \<const0> ;
  assign gt_status[9] = \<const0> ;
  assign gt_status[8] = \<const0> ;
  assign gt_status[7] = \<const0> ;
  assign gt_status[6] = \<const0> ;
  assign gt_status[5] = \<const0> ;
  assign gt_status[4] = \<const0> ;
  assign gt_status[3] = \<const0> ;
  assign gt_status[2] = \<const0> ;
  assign gt_status[1] = \<const0> ;
  assign gt_status[0] = \<const0> ;
  assign psdone_vio = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_advanced_io_wizard_0_0_advanced_io_wizard_v1_0_4_clk_scheme clk_scheme_inst
       (.bank0_pll_clkout0(bank0_pll_clkout0),
        .bank0_pll_clkout1(bank0_pll_clkout1),
        .bank0_pll_clkout2(bank0_pll_clkout2),
        .bank0_pll_clkout3(bank0_pll_clkout3),
        .bank0_pll_clkoutphy(bank0_pll_clkoutphy),
        .bank0_pll_locked(bank0_pll_locked),
        .bank0_pll_rst_pll(bank0_pll_rst_pll),
        .bank1_pll_clkout0(bank1_pll_clkout0),
        .bank1_pll_clkout1(bank1_pll_clkout1),
        .bank1_pll_clkout2(bank1_pll_clkout2),
        .bank1_pll_clkout3(bank1_pll_clkout3),
        .bank1_pll_clkoutphy(bank1_pll_clkoutphy),
        .bank1_pll_locked(bank1_pll_locked),
        .bank1_pll_rst_pll(bank1_pll_rst_pll),
        .bank2_pll_clkout0(bank2_pll_clkout0),
        .bank2_pll_clkout1(bank2_pll_clkout1),
        .bank2_pll_clkout2(bank2_pll_clkout2),
        .bank2_pll_clkout3(bank2_pll_clkout3),
        .bank2_pll_clkoutphy(bank2_pll_clkoutphy),
        .bank2_pll_locked(bank2_pll_locked),
        .bank2_pll_rst_pll(bank2_pll_rst_pll),
        .pll0_locked_fb_out(bank0_pll_locked_fb_int),
        .pll1_locked_fb_out(bank1_pll_locked_fb_int),
        .pll2_clk_in(pll_clkin_ibuf),
        .pll2_locked_fb_out(bank2_pll_locked_fb_int),
        .shared_pll_clkoutphyen_out(shared_pll_clkoutphyen_out));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[0] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[0]),
        .Q(data_to_fabric_LVDS_706[0]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[10] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[10]),
        .Q(data_to_fabric_LVDS_706[10]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[11] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[11]),
        .Q(data_to_fabric_LVDS_706[11]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[12] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[12]),
        .Q(data_to_fabric_LVDS_706[12]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[13] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[13]),
        .Q(data_to_fabric_LVDS_706[13]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[14] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[14]),
        .Q(data_to_fabric_LVDS_706[14]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[15] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[15]),
        .Q(data_to_fabric_LVDS_706[15]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[16] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[16]),
        .Q(data_to_fabric_LVDS_706[16]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[17] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[17]),
        .Q(data_to_fabric_LVDS_706[17]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[18] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[18]),
        .Q(data_to_fabric_LVDS_706[18]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[19] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[19]),
        .Q(data_to_fabric_LVDS_706[19]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[1] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[1]),
        .Q(data_to_fabric_LVDS_706[1]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[20] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[20]),
        .Q(data_to_fabric_LVDS_706[20]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[21] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[21]),
        .Q(data_to_fabric_LVDS_706[21]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[22] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[22]),
        .Q(data_to_fabric_LVDS_706[22]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[23] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[23]),
        .Q(data_to_fabric_LVDS_706[23]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[24] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[24]),
        .Q(data_to_fabric_LVDS_706[24]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[25] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[25]),
        .Q(data_to_fabric_LVDS_706[25]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[26] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[26]),
        .Q(data_to_fabric_LVDS_706[26]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[27] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[27]),
        .Q(data_to_fabric_LVDS_706[27]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[28] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[28]),
        .Q(data_to_fabric_LVDS_706[28]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[29] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[29]),
        .Q(data_to_fabric_LVDS_706[29]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[2] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[2]),
        .Q(data_to_fabric_LVDS_706[2]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[30] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[30]),
        .Q(data_to_fabric_LVDS_706[30]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[31] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[31]),
        .Q(data_to_fabric_LVDS_706[31]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[32] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[32]),
        .Q(data_to_fabric_LVDS_706[32]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[33] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[33]),
        .Q(data_to_fabric_LVDS_706[33]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[34] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[34]),
        .Q(data_to_fabric_LVDS_706[34]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[35] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[35]),
        .Q(data_to_fabric_LVDS_706[35]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[36] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[36]),
        .Q(data_to_fabric_LVDS_706[36]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[37] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[37]),
        .Q(data_to_fabric_LVDS_706[37]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[38] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[38]),
        .Q(data_to_fabric_LVDS_706[38]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[39] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[39]),
        .Q(data_to_fabric_LVDS_706[39]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[3] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[3]),
        .Q(data_to_fabric_LVDS_706[3]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[40] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[40]),
        .Q(data_to_fabric_LVDS_706[40]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[41] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[41]),
        .Q(data_to_fabric_LVDS_706[41]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[42] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[42]),
        .Q(data_to_fabric_LVDS_706[42]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[43] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[43]),
        .Q(data_to_fabric_LVDS_706[43]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[44] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[44]),
        .Q(data_to_fabric_LVDS_706[44]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[45] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[45]),
        .Q(data_to_fabric_LVDS_706[45]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[46] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[46]),
        .Q(data_to_fabric_LVDS_706[46]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[47] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[47]),
        .Q(data_to_fabric_LVDS_706[47]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[48] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[48]),
        .Q(data_to_fabric_LVDS_706[48]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[49] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[49]),
        .Q(data_to_fabric_LVDS_706[49]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[4] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[4]),
        .Q(data_to_fabric_LVDS_706[4]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[50] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[50]),
        .Q(data_to_fabric_LVDS_706[50]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[51] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[51]),
        .Q(data_to_fabric_LVDS_706[51]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[52] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[52]),
        .Q(data_to_fabric_LVDS_706[52]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[53] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[53]),
        .Q(data_to_fabric_LVDS_706[53]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[54] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[54]),
        .Q(data_to_fabric_LVDS_706[54]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[55] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[55]),
        .Q(data_to_fabric_LVDS_706[55]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[56] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[56]),
        .Q(data_to_fabric_LVDS_706[56]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[57] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[57]),
        .Q(data_to_fabric_LVDS_706[57]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[58] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[58]),
        .Q(data_to_fabric_LVDS_706[58]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[59] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[59]),
        .Q(data_to_fabric_LVDS_706[59]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[5] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[5]),
        .Q(data_to_fabric_LVDS_706[5]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[60] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[60]),
        .Q(data_to_fabric_LVDS_706[60]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[61] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[61]),
        .Q(data_to_fabric_LVDS_706[61]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[62] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[62]),
        .Q(data_to_fabric_LVDS_706[62]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[63] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[63]),
        .Q(data_to_fabric_LVDS_706[63]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[64] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[64]),
        .Q(data_to_fabric_LVDS_706[64]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[65] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[65]),
        .Q(data_to_fabric_LVDS_706[65]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[66] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[66]),
        .Q(data_to_fabric_LVDS_706[66]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[67] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[67]),
        .Q(data_to_fabric_LVDS_706[67]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[68] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[68]),
        .Q(data_to_fabric_LVDS_706[68]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[69] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[69]),
        .Q(data_to_fabric_LVDS_706[69]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[6] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[6]),
        .Q(data_to_fabric_LVDS_706[6]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[70] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[70]),
        .Q(data_to_fabric_LVDS_706[70]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[71] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[71]),
        .Q(data_to_fabric_LVDS_706[71]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[72] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[72]),
        .Q(data_to_fabric_LVDS_706[72]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[73] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[73]),
        .Q(data_to_fabric_LVDS_706[73]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[74] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[74]),
        .Q(data_to_fabric_LVDS_706[74]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[75] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[75]),
        .Q(data_to_fabric_LVDS_706[75]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[76] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[76]),
        .Q(data_to_fabric_LVDS_706[76]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[77] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[77]),
        .Q(data_to_fabric_LVDS_706[77]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[78] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[78]),
        .Q(data_to_fabric_LVDS_706[78]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[79] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[79]),
        .Q(data_to_fabric_LVDS_706[79]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[7] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[7]),
        .Q(data_to_fabric_LVDS_706[7]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[80] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[80]),
        .Q(data_to_fabric_LVDS_706[80]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[81] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[81]),
        .Q(data_to_fabric_LVDS_706[81]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[82] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[82]),
        .Q(data_to_fabric_LVDS_706[82]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[83] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[83]),
        .Q(data_to_fabric_LVDS_706[83]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[84] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[84]),
        .Q(data_to_fabric_LVDS_706[84]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[85] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[85]),
        .Q(data_to_fabric_LVDS_706[85]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[86] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[86]),
        .Q(data_to_fabric_LVDS_706[86]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[87] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[87]),
        .Q(data_to_fabric_LVDS_706[87]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[88] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[88]),
        .Q(data_to_fabric_LVDS_706[88]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[89] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[89]),
        .Q(data_to_fabric_LVDS_706[89]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[8] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[8]),
        .Q(data_to_fabric_LVDS_706[8]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[90] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[90]),
        .Q(data_to_fabric_LVDS_706[90]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[91] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[91]),
        .Q(data_to_fabric_LVDS_706[91]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[92] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[92]),
        .Q(data_to_fabric_LVDS_706[92]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[93] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[93]),
        .Q(data_to_fabric_LVDS_706[93]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[94] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[94]),
        .Q(data_to_fabric_LVDS_706[94]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[95] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[95]),
        .Q(data_to_fabric_LVDS_706[95]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_706_reg[9] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_706_bli[9]),
        .Q(data_to_fabric_LVDS_706[9]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[0] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[0]),
        .Q(data_to_fabric_LVDS_707[0]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[10] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[10]),
        .Q(data_to_fabric_LVDS_707[10]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[11] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[11]),
        .Q(data_to_fabric_LVDS_707[11]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[12] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[12]),
        .Q(data_to_fabric_LVDS_707[12]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[13] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[13]),
        .Q(data_to_fabric_LVDS_707[13]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[14] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[14]),
        .Q(data_to_fabric_LVDS_707[14]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[15] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[15]),
        .Q(data_to_fabric_LVDS_707[15]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[16] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[16]),
        .Q(data_to_fabric_LVDS_707[16]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[17] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[17]),
        .Q(data_to_fabric_LVDS_707[17]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[18] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[18]),
        .Q(data_to_fabric_LVDS_707[18]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[19] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[19]),
        .Q(data_to_fabric_LVDS_707[19]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[1] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[1]),
        .Q(data_to_fabric_LVDS_707[1]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[20] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[20]),
        .Q(data_to_fabric_LVDS_707[20]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[21] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[21]),
        .Q(data_to_fabric_LVDS_707[21]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[22] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[22]),
        .Q(data_to_fabric_LVDS_707[22]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[23] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[23]),
        .Q(data_to_fabric_LVDS_707[23]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[24] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[24]),
        .Q(data_to_fabric_LVDS_707[24]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[25] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[25]),
        .Q(data_to_fabric_LVDS_707[25]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[26] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[26]),
        .Q(data_to_fabric_LVDS_707[26]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[27] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[27]),
        .Q(data_to_fabric_LVDS_707[27]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[28] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[28]),
        .Q(data_to_fabric_LVDS_707[28]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[29] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[29]),
        .Q(data_to_fabric_LVDS_707[29]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[2] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[2]),
        .Q(data_to_fabric_LVDS_707[2]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[30] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[30]),
        .Q(data_to_fabric_LVDS_707[30]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[31] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[31]),
        .Q(data_to_fabric_LVDS_707[31]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[32] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[32]),
        .Q(data_to_fabric_LVDS_707[32]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[33] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[33]),
        .Q(data_to_fabric_LVDS_707[33]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[34] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[34]),
        .Q(data_to_fabric_LVDS_707[34]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[35] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[35]),
        .Q(data_to_fabric_LVDS_707[35]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[36] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[36]),
        .Q(data_to_fabric_LVDS_707[36]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[37] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[37]),
        .Q(data_to_fabric_LVDS_707[37]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[38] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[38]),
        .Q(data_to_fabric_LVDS_707[38]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[39] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[39]),
        .Q(data_to_fabric_LVDS_707[39]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[3] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[3]),
        .Q(data_to_fabric_LVDS_707[3]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[40] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[40]),
        .Q(data_to_fabric_LVDS_707[40]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[41] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[41]),
        .Q(data_to_fabric_LVDS_707[41]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[42] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[42]),
        .Q(data_to_fabric_LVDS_707[42]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[43] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[43]),
        .Q(data_to_fabric_LVDS_707[43]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[44] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[44]),
        .Q(data_to_fabric_LVDS_707[44]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[45] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[45]),
        .Q(data_to_fabric_LVDS_707[45]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[46] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[46]),
        .Q(data_to_fabric_LVDS_707[46]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[47] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[47]),
        .Q(data_to_fabric_LVDS_707[47]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[48] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[48]),
        .Q(data_to_fabric_LVDS_707[48]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[49] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[49]),
        .Q(data_to_fabric_LVDS_707[49]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[4] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[4]),
        .Q(data_to_fabric_LVDS_707[4]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[50] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[50]),
        .Q(data_to_fabric_LVDS_707[50]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[51] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[51]),
        .Q(data_to_fabric_LVDS_707[51]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[52] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[52]),
        .Q(data_to_fabric_LVDS_707[52]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[53] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[53]),
        .Q(data_to_fabric_LVDS_707[53]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[54] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[54]),
        .Q(data_to_fabric_LVDS_707[54]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[55] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[55]),
        .Q(data_to_fabric_LVDS_707[55]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[56] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[56]),
        .Q(data_to_fabric_LVDS_707[56]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[57] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[57]),
        .Q(data_to_fabric_LVDS_707[57]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[58] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[58]),
        .Q(data_to_fabric_LVDS_707[58]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[59] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[59]),
        .Q(data_to_fabric_LVDS_707[59]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[5] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[5]),
        .Q(data_to_fabric_LVDS_707[5]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[60] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[60]),
        .Q(data_to_fabric_LVDS_707[60]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[61] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[61]),
        .Q(data_to_fabric_LVDS_707[61]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[62] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[62]),
        .Q(data_to_fabric_LVDS_707[62]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[63] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[63]),
        .Q(data_to_fabric_LVDS_707[63]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[64] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[64]),
        .Q(data_to_fabric_LVDS_707[64]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[65] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[65]),
        .Q(data_to_fabric_LVDS_707[65]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[66] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[66]),
        .Q(data_to_fabric_LVDS_707[66]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[67] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[67]),
        .Q(data_to_fabric_LVDS_707[67]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[68] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[68]),
        .Q(data_to_fabric_LVDS_707[68]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[69] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[69]),
        .Q(data_to_fabric_LVDS_707[69]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[6] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[6]),
        .Q(data_to_fabric_LVDS_707[6]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[70] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[70]),
        .Q(data_to_fabric_LVDS_707[70]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[71] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[71]),
        .Q(data_to_fabric_LVDS_707[71]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[7] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[7]),
        .Q(data_to_fabric_LVDS_707[7]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[8] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[8]),
        .Q(data_to_fabric_LVDS_707[8]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_707_reg[9] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_707_bli[9]),
        .Q(data_to_fabric_LVDS_707[9]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[0] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[0]),
        .Q(data_to_fabric_LVDS_708[0]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[10] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[10]),
        .Q(data_to_fabric_LVDS_708[10]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[11] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[11]),
        .Q(data_to_fabric_LVDS_708[11]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[12] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[12]),
        .Q(data_to_fabric_LVDS_708[12]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[13] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[13]),
        .Q(data_to_fabric_LVDS_708[13]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[14] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[14]),
        .Q(data_to_fabric_LVDS_708[14]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[15] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[15]),
        .Q(data_to_fabric_LVDS_708[15]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[16] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[16]),
        .Q(data_to_fabric_LVDS_708[16]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[17] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[17]),
        .Q(data_to_fabric_LVDS_708[17]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[18] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[18]),
        .Q(data_to_fabric_LVDS_708[18]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[19] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[19]),
        .Q(data_to_fabric_LVDS_708[19]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[1] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[1]),
        .Q(data_to_fabric_LVDS_708[1]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[20] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[20]),
        .Q(data_to_fabric_LVDS_708[20]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[21] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[21]),
        .Q(data_to_fabric_LVDS_708[21]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[22] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[22]),
        .Q(data_to_fabric_LVDS_708[22]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[23] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[23]),
        .Q(data_to_fabric_LVDS_708[23]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[24] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[24]),
        .Q(data_to_fabric_LVDS_708[24]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[25] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[25]),
        .Q(data_to_fabric_LVDS_708[25]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[26] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[26]),
        .Q(data_to_fabric_LVDS_708[26]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[27] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[27]),
        .Q(data_to_fabric_LVDS_708[27]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[28] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[28]),
        .Q(data_to_fabric_LVDS_708[28]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[29] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[29]),
        .Q(data_to_fabric_LVDS_708[29]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[2] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[2]),
        .Q(data_to_fabric_LVDS_708[2]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[30] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[30]),
        .Q(data_to_fabric_LVDS_708[30]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[31] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[31]),
        .Q(data_to_fabric_LVDS_708[31]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[32] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[32]),
        .Q(data_to_fabric_LVDS_708[32]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[33] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[33]),
        .Q(data_to_fabric_LVDS_708[33]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[34] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[34]),
        .Q(data_to_fabric_LVDS_708[34]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[35] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[35]),
        .Q(data_to_fabric_LVDS_708[35]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[36] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[36]),
        .Q(data_to_fabric_LVDS_708[36]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[37] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[37]),
        .Q(data_to_fabric_LVDS_708[37]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[38] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[38]),
        .Q(data_to_fabric_LVDS_708[38]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[39] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[39]),
        .Q(data_to_fabric_LVDS_708[39]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[3] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[3]),
        .Q(data_to_fabric_LVDS_708[3]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[40] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[40]),
        .Q(data_to_fabric_LVDS_708[40]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[41] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[41]),
        .Q(data_to_fabric_LVDS_708[41]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[42] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[42]),
        .Q(data_to_fabric_LVDS_708[42]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[43] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[43]),
        .Q(data_to_fabric_LVDS_708[43]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[44] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[44]),
        .Q(data_to_fabric_LVDS_708[44]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[45] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[45]),
        .Q(data_to_fabric_LVDS_708[45]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[46] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[46]),
        .Q(data_to_fabric_LVDS_708[46]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[47] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[47]),
        .Q(data_to_fabric_LVDS_708[47]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[48] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[48]),
        .Q(data_to_fabric_LVDS_708[48]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[49] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[49]),
        .Q(data_to_fabric_LVDS_708[49]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[4] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[4]),
        .Q(data_to_fabric_LVDS_708[4]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[50] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[50]),
        .Q(data_to_fabric_LVDS_708[50]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[51] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[51]),
        .Q(data_to_fabric_LVDS_708[51]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[52] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[52]),
        .Q(data_to_fabric_LVDS_708[52]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[53] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[53]),
        .Q(data_to_fabric_LVDS_708[53]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[54] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[54]),
        .Q(data_to_fabric_LVDS_708[54]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[55] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[55]),
        .Q(data_to_fabric_LVDS_708[55]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[56] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[56]),
        .Q(data_to_fabric_LVDS_708[56]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[57] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[57]),
        .Q(data_to_fabric_LVDS_708[57]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[58] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[58]),
        .Q(data_to_fabric_LVDS_708[58]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[59] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[59]),
        .Q(data_to_fabric_LVDS_708[59]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[5] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[5]),
        .Q(data_to_fabric_LVDS_708[5]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[60] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[60]),
        .Q(data_to_fabric_LVDS_708[60]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[61] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[61]),
        .Q(data_to_fabric_LVDS_708[61]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[62] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[62]),
        .Q(data_to_fabric_LVDS_708[62]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[63] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[63]),
        .Q(data_to_fabric_LVDS_708[63]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[64] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[64]),
        .Q(data_to_fabric_LVDS_708[64]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[65] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[65]),
        .Q(data_to_fabric_LVDS_708[65]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[66] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[66]),
        .Q(data_to_fabric_LVDS_708[66]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[67] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[67]),
        .Q(data_to_fabric_LVDS_708[67]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[68] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[68]),
        .Q(data_to_fabric_LVDS_708[68]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[69] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[69]),
        .Q(data_to_fabric_LVDS_708[69]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[6] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[6]),
        .Q(data_to_fabric_LVDS_708[6]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[70] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[70]),
        .Q(data_to_fabric_LVDS_708[70]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[71] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[71]),
        .Q(data_to_fabric_LVDS_708[71]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[72] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[72]),
        .Q(data_to_fabric_LVDS_708[72]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[73] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[73]),
        .Q(data_to_fabric_LVDS_708[73]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[74] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[74]),
        .Q(data_to_fabric_LVDS_708[74]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[75] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[75]),
        .Q(data_to_fabric_LVDS_708[75]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[76] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[76]),
        .Q(data_to_fabric_LVDS_708[76]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[77] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[77]),
        .Q(data_to_fabric_LVDS_708[77]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[78] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[78]),
        .Q(data_to_fabric_LVDS_708[78]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[79] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[79]),
        .Q(data_to_fabric_LVDS_708[79]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[7] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[7]),
        .Q(data_to_fabric_LVDS_708[7]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[80] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[80]),
        .Q(data_to_fabric_LVDS_708[80]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[81] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[81]),
        .Q(data_to_fabric_LVDS_708[81]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[82] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[82]),
        .Q(data_to_fabric_LVDS_708[82]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[83] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[83]),
        .Q(data_to_fabric_LVDS_708[83]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[84] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[84]),
        .Q(data_to_fabric_LVDS_708[84]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[85] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[85]),
        .Q(data_to_fabric_LVDS_708[85]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[86] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[86]),
        .Q(data_to_fabric_LVDS_708[86]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[87] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[87]),
        .Q(data_to_fabric_LVDS_708[87]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[8] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[8]),
        .Q(data_to_fabric_LVDS_708[8]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_LVDS_708_reg[9] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_LVDS_708_bli[9]),
        .Q(data_to_fabric_LVDS_708[9]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_RD_CLK_706_reg[0] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_RD_CLK_706_bli[0]),
        .Q(data_to_fabric_RD_CLK_706[0]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_RD_CLK_706_reg[1] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_RD_CLK_706_bli[1]),
        .Q(data_to_fabric_RD_CLK_706[1]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_RD_CLK_706_reg[2] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_RD_CLK_706_bli[2]),
        .Q(data_to_fabric_RD_CLK_706[2]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_RD_CLK_706_reg[3] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_RD_CLK_706_bli[3]),
        .Q(data_to_fabric_RD_CLK_706[3]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_RD_CLK_707_reg[0] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_RD_CLK_707_bli[0]),
        .Q(data_to_fabric_RD_CLK_707[0]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_RD_CLK_707_reg[1] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_RD_CLK_707_bli[1]),
        .Q(data_to_fabric_RD_CLK_707[1]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_RD_CLK_707_reg[2] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_RD_CLK_707_bli[2]),
        .Q(data_to_fabric_RD_CLK_707[2]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_RD_CLK_707_reg[3] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_RD_CLK_707_bli[3]),
        .Q(data_to_fabric_RD_CLK_707[3]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_RD_CLK_708_reg[0] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_RD_CLK_708_bli[0]),
        .Q(data_to_fabric_RD_CLK_708[0]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_RD_CLK_708_reg[1] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_RD_CLK_708_bli[1]),
        .Q(data_to_fabric_RD_CLK_708[1]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_RD_CLK_708_reg[2] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_RD_CLK_708_bli[2]),
        .Q(data_to_fabric_RD_CLK_708[2]),
        .R(1'b0));
  (* BLI = "true" *) 
  FDRE \data_to_fabric_RD_CLK_708_reg[3] 
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(data_to_fabric_RD_CLK_708_bli[3]),
        .Q(data_to_fabric_RD_CLK_708[3]),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "design_1_advanced_io_wizard_0_0_phy_test,design_1_advanced_io_wizard_0_0_phy_test_advanced_io_wizard_v1_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "design_1_advanced_io_wizard_0_0_phy_test_advanced_io_wizard_v1_0,Vivado 2020.3" *) 
  design_1_advanced_io_wizard_0_0_phy_test design_1_advanced_io_wizard_0_0_phy_i
       (.LVDS_706({LVDS_706_n[23],LVDS_706_p[23],LVDS_706_n[22],LVDS_706_p[22],LVDS_706_n[21],LVDS_706_p[21],LVDS_706_n[20],LVDS_706_p[20],LVDS_706_n[19],LVDS_706_p[19],LVDS_706_n[18],LVDS_706_p[18],LVDS_706_n[17],LVDS_706_p[17],LVDS_706_n[16],LVDS_706_p[16],LVDS_706_n[15],LVDS_706_p[15],LVDS_706_n[14],LVDS_706_p[14],LVDS_706_n[13],LVDS_706_p[13],LVDS_706_n[12],LVDS_706_p[12],LVDS_706_n[11],LVDS_706_p[11],LVDS_706_n[10],LVDS_706_p[10],LVDS_706_n[9],LVDS_706_p[9],LVDS_706_n[8],LVDS_706_p[8],LVDS_706_n[7],LVDS_706_p[7],LVDS_706_n[6],LVDS_706_p[6],LVDS_706_n[5],LVDS_706_p[5],LVDS_706_n[4],LVDS_706_p[4],LVDS_706_n[3],LVDS_706_p[3],LVDS_706_n[2],LVDS_706_p[2],LVDS_706_n[1],LVDS_706_p[1],LVDS_706_n[0],LVDS_706_p[0]}),
        .LVDS_707({LVDS_707_n[17],LVDS_707_p[17],LVDS_707_n[16],LVDS_707_p[16],LVDS_707_n[15],LVDS_707_p[15],LVDS_707_n[14],LVDS_707_p[14],LVDS_707_n[13],LVDS_707_p[13],LVDS_707_n[12],LVDS_707_p[12],LVDS_707_n[11],LVDS_707_p[11],LVDS_707_n[10],LVDS_707_p[10],LVDS_707_n[9],LVDS_707_p[9],LVDS_707_n[8],LVDS_707_p[8],LVDS_707_n[7],LVDS_707_p[7],LVDS_707_n[6],LVDS_707_p[6],LVDS_707_n[5],LVDS_707_p[5],LVDS_707_n[4],LVDS_707_p[4],LVDS_707_n[3],LVDS_707_p[3],LVDS_707_n[2],LVDS_707_p[2],LVDS_707_n[1],LVDS_707_p[1],LVDS_707_n[0],LVDS_707_p[0]}),
        .LVDS_708({LVDS_708_n[21],LVDS_708_p[21],LVDS_708_n[20],LVDS_708_p[20],LVDS_708_n[19],LVDS_708_p[19],LVDS_708_n[18],LVDS_708_p[18],LVDS_708_n[17],LVDS_708_p[17],LVDS_708_n[16],LVDS_708_p[16],LVDS_708_n[15],LVDS_708_p[15],LVDS_708_n[14],LVDS_708_p[14],LVDS_708_n[13],LVDS_708_p[13],LVDS_708_n[12],LVDS_708_p[12],LVDS_708_n[11],LVDS_708_p[11],LVDS_708_n[10],LVDS_708_p[10],LVDS_708_n[9],LVDS_708_p[9],LVDS_708_n[8],LVDS_708_p[8],LVDS_708_n[7],LVDS_708_p[7],LVDS_708_n[6],LVDS_708_p[6],LVDS_708_n[5],LVDS_708_p[5],LVDS_708_n[4],LVDS_708_p[4],LVDS_708_n[3],LVDS_708_p[3],LVDS_708_n[2],LVDS_708_p[2],LVDS_708_n[1],LVDS_708_p[1],LVDS_708_n[0],LVDS_708_p[0]}),
        .RD_CLK_706({RD_CLK_706_n,RD_CLK_706_p}),
        .RD_CLK_707({RD_CLK_707_n,RD_CLK_707_p}),
        .RD_CLK_708({RD_CLK_708_n,RD_CLK_708_p}),
        .bank0_pll_clkout0(bank0_pll_clkout0),
        .bank0_pll_clkoutphy(bank0_pll_clkoutphy),
        .bank0_pll_locked(bank0_pll_locked),
        .bank0_pll_locked_fb(bank0_pll_locked_fb_int),
        .bank1_pll_clkoutphy(bank1_pll_clkoutphy),
        .bank1_pll_locked(bank1_pll_locked),
        .bank1_pll_locked_fb(bank1_pll_locked_fb_int),
        .bank2_pll_clkoutphy(bank2_pll_clkoutphy),
        .bank2_pll_locked(bank2_pll_locked),
        .bank2_pll_locked_fb(bank2_pll_locked_fb_int),
        .ctrl_clk({ctrl_clk,ctrl_clk,ctrl_clk,ctrl_clk,ctrl_clk,ctrl_clk,ctrl_clk,ctrl_clk,ctrl_clk,ctrl_clk,ctrl_clk,ctrl_clk,ctrl_clk,ctrl_clk,ctrl_clk,ctrl_clk,ctrl_clk,ctrl_clk,ctrl_clk,ctrl_clk,ctrl_clk,ctrl_clk,ctrl_clk,ctrl_clk,ctrl_clk,ctrl_clk,ctrl_clk}),
        .data_to_fabric_LVDS_706(data_to_fabric_LVDS_706_bli),
        .data_to_fabric_LVDS_707(data_to_fabric_LVDS_707_bli),
        .data_to_fabric_LVDS_708(data_to_fabric_LVDS_708_bli),
        .data_to_fabric_RD_CLK_706(data_to_fabric_RD_CLK_706_bli),
        .data_to_fabric_RD_CLK_707(data_to_fabric_RD_CLK_707_bli),
        .data_to_fabric_RD_CLK_708(data_to_fabric_RD_CLK_708_bli),
        .dly_rdy(dly_rdy),
        .en_vtc(en_vtc),
        .fabric_vref_tune(fabric_vref_tune),
        .fifo_empty(fifo_empty_bli),
        .fifo_rd_clk(fifo_rd_clk),
        .fifo_rd_en(fifo_rd_en),
        .fifo_wr_clk(fifo_wr_clk),
        .gearbox_clk(gearbox_clk),
        .gt_status(NLW_design_1_advanced_io_wizard_0_0_phy_i_gt_status_UNCONNECTED[26:0]),
        .intf_rdy(intf_rdy),
        .phy_rdcs0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .phy_rdcs1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .phy_rden(phy_rden),
        .phy_rdy(phy_rdy),
        .phy_wrcs0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .phy_wrcs1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .phy_wren(phy_wren),
        .pll_clkoutphyen(shared_pll_clkoutphyen_out),
        .riu_addr(riu_addr),
        .riu_nibble_sel(riu_nibble_sel),
        .riu_rd_data(riu_rd_data),
        .riu_rd_valid(riu_rd_valid),
        .riu_wr_data(riu_wr_data),
        .riu_wr_en(riu_wr_en),
        .rst(rst),
        .vref_id(vref_id));
  FDRE fifo_empty_reg
       (.C(fifo_rd_clk),
        .CE(1'b1),
        .D(fifo_empty_bli),
        .Q(fifo_empty),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    pll_ibufds
       (.I(XPLL_IN_p),
        .IB(XPLL_IN_n),
        .O(pll_clkin_ibuf));
endmodule

(* ORIG_REF_NAME = "advanced_io_wizard_v1_0_4_clk_scheme" *) 
module design_1_advanced_io_wizard_0_0_advanced_io_wizard_v1_0_4_clk_scheme
   (bank1_pll_clkoutphy,
    bank1_pll_locked,
    pll1_locked_fb_out,
    bank1_pll_clkout0,
    bank1_pll_clkout1,
    bank1_pll_clkout2,
    bank1_pll_clkout3,
    bank2_pll_clkoutphy,
    bank2_pll_locked,
    pll2_locked_fb_out,
    bank2_pll_clkout0,
    bank2_pll_clkout1,
    bank2_pll_clkout2,
    bank2_pll_clkout3,
    bank0_pll_clkoutphy,
    bank0_pll_locked,
    pll0_locked_fb_out,
    bank0_pll_clkout0,
    bank0_pll_clkout1,
    bank0_pll_clkout2,
    bank0_pll_clkout3,
    pll2_clk_in,
    shared_pll_clkoutphyen_out,
    bank1_pll_rst_pll,
    bank2_pll_rst_pll,
    bank0_pll_rst_pll);
  output bank1_pll_clkoutphy;
  output bank1_pll_locked;
  output pll1_locked_fb_out;
  output bank1_pll_clkout0;
  output bank1_pll_clkout1;
  output bank1_pll_clkout2;
  output bank1_pll_clkout3;
  output bank2_pll_clkoutphy;
  output bank2_pll_locked;
  output pll2_locked_fb_out;
  output bank2_pll_clkout0;
  output bank2_pll_clkout1;
  output bank2_pll_clkout2;
  output bank2_pll_clkout3;
  output bank0_pll_clkoutphy;
  output bank0_pll_locked;
  output pll0_locked_fb_out;
  output bank0_pll_clkout0;
  output bank0_pll_clkout1;
  output bank0_pll_clkout2;
  output bank0_pll_clkout3;
  input pll2_clk_in;
  input shared_pll_clkoutphyen_out;
  input bank1_pll_rst_pll;
  input bank2_pll_rst_pll;
  input bank0_pll_rst_pll;

  wire bank0_pll_clkout0;
  wire bank0_pll_clkout1;
  wire bank0_pll_clkout2;
  wire bank0_pll_clkout3;
  wire bank0_pll_clkoutphy;
  wire bank0_pll_locked;
  wire bank0_pll_rst_pll;
  wire bank1_pll_clkout0;
  wire bank1_pll_clkout1;
  wire bank1_pll_clkout2;
  wire bank1_pll_clkout3;
  wire bank1_pll_clkoutphy;
  wire bank1_pll_locked;
  wire bank1_pll_rst_pll;
  wire bank2_pll_clkout0;
  wire bank2_pll_clkout1;
  wire bank2_pll_clkout2;
  wire bank2_pll_clkout3;
  wire bank2_pll_clkoutphy;
  wire bank2_pll_locked;
  wire bank2_pll_rst_pll;
  wire pll0_clkout0;
  wire pll0_clkout1;
  wire pll0_clkout2;
  wire pll0_clkout3;
  wire pll0_locked_fb_out;
  wire pll1_clkout0;
  wire pll1_clkout1;
  wire pll1_clkout2;
  wire pll1_clkout3;
  wire pll1_locked_fb_out;
  wire pll2_clk_in;
  wire pll2_clkout0;
  wire pll2_clkout1;
  wire pll2_clkout2;
  wire pll2_clkout3;
  wire pll2_locked_fb_out;
  wire shared_pll_clkoutphyen_out;
  wire u_mipi_bufgce_div2_n_0;
  wire u_mipi_bufgce_div4_n_0;
  wire xpll_pll0_inst_n_11;
  wire NLW_xpll_pll0_inst_CLKOUTPHY_CASC_IN_UNCONNECTED;
  wire NLW_xpll_pll0_inst_CLKOUTPHY_CASC_OUT_UNCONNECTED;
  wire NLW_xpll_pll0_inst_DRDY_UNCONNECTED;
  wire NLW_xpll_pll0_inst_LOCKED1_DESKEW_UNCONNECTED;
  wire NLW_xpll_pll0_inst_LOCKED2_DESKEW_UNCONNECTED;
  wire NLW_xpll_pll0_inst_RIU_VALID_UNCONNECTED;
  wire [15:0]NLW_xpll_pll0_inst_DO_UNCONNECTED;
  wire [15:0]NLW_xpll_pll0_inst_RIU_RD_DATA_UNCONNECTED;
  wire NLW_xpll_pll1_inst_CLKOUTPHY_CASC_IN_UNCONNECTED;
  wire NLW_xpll_pll1_inst_CLKOUTPHY_CASC_OUT_UNCONNECTED;
  wire NLW_xpll_pll1_inst_DRDY_UNCONNECTED;
  wire NLW_xpll_pll1_inst_LOCKED1_DESKEW_UNCONNECTED;
  wire NLW_xpll_pll1_inst_LOCKED2_DESKEW_UNCONNECTED;
  wire NLW_xpll_pll1_inst_PSDONE_UNCONNECTED;
  wire NLW_xpll_pll1_inst_RIU_VALID_UNCONNECTED;
  wire [15:0]NLW_xpll_pll1_inst_DO_UNCONNECTED;
  wire [15:0]NLW_xpll_pll1_inst_RIU_RD_DATA_UNCONNECTED;
  wire NLW_xpll_pll2_inst_CLKOUTPHY_CASC_IN_UNCONNECTED;
  wire NLW_xpll_pll2_inst_CLKOUTPHY_CASC_OUT_UNCONNECTED;
  wire NLW_xpll_pll2_inst_DRDY_UNCONNECTED;
  wire NLW_xpll_pll2_inst_LOCKED1_DESKEW_UNCONNECTED;
  wire NLW_xpll_pll2_inst_LOCKED2_DESKEW_UNCONNECTED;
  wire NLW_xpll_pll2_inst_PSDONE_UNCONNECTED;
  wire NLW_xpll_pll2_inst_RIU_VALID_UNCONNECTED;
  wire [15:0]NLW_xpll_pll2_inst_DO_UNCONNECTED;
  wire [15:0]NLW_xpll_pll2_inst_RIU_RD_DATA_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("SYNC"),
    .IS_CE_INVERTED(1'b0),
    .IS_I_INVERTED(1'b0),
    .SIM_DEVICE("VERSAL_AI_CORE"),
    .STARTUP_SYNC("TRUE")) 
    pll0_clkout0_buf
       (.CE(pll0_locked_fb_out),
        .I(pll0_clkout0),
        .O(bank0_pll_clkout0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("SYNC"),
    .IS_CE_INVERTED(1'b0),
    .IS_I_INVERTED(1'b0),
    .SIM_DEVICE("VERSAL_AI_CORE"),
    .STARTUP_SYNC("TRUE")) 
    pll0_clkout1_buf
       (.CE(bank0_pll_locked),
        .I(pll0_clkout1),
        .O(bank0_pll_clkout1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("SYNC"),
    .IS_CE_INVERTED(1'b0),
    .IS_I_INVERTED(1'b0),
    .SIM_DEVICE("VERSAL_AI_CORE"),
    .STARTUP_SYNC("TRUE")) 
    pll0_clkout2_buf
       (.CE(bank0_pll_locked),
        .I(pll0_clkout2),
        .O(bank0_pll_clkout2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("SYNC"),
    .IS_CE_INVERTED(1'b0),
    .IS_I_INVERTED(1'b0),
    .SIM_DEVICE("VERSAL_AI_CORE"),
    .STARTUP_SYNC("TRUE")) 
    pll0_clkout3_buf
       (.CE(bank0_pll_locked),
        .I(pll0_clkout3),
        .O(bank0_pll_clkout3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("SYNC"),
    .IS_CE_INVERTED(1'b0),
    .IS_I_INVERTED(1'b0),
    .SIM_DEVICE("VERSAL_AI_CORE"),
    .STARTUP_SYNC("TRUE")) 
    pll1_clkout0_buf
       (.CE(pll1_locked_fb_out),
        .I(pll1_clkout0),
        .O(bank1_pll_clkout0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("SYNC"),
    .IS_CE_INVERTED(1'b0),
    .IS_I_INVERTED(1'b0),
    .SIM_DEVICE("VERSAL_AI_CORE"),
    .STARTUP_SYNC("TRUE")) 
    pll1_clkout1_buf
       (.CE(bank1_pll_locked),
        .I(pll1_clkout1),
        .O(bank1_pll_clkout1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("SYNC"),
    .IS_CE_INVERTED(1'b0),
    .IS_I_INVERTED(1'b0),
    .SIM_DEVICE("VERSAL_AI_CORE"),
    .STARTUP_SYNC("TRUE")) 
    pll1_clkout2_buf
       (.CE(bank1_pll_locked),
        .I(pll1_clkout2),
        .O(bank1_pll_clkout2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("SYNC"),
    .IS_CE_INVERTED(1'b0),
    .IS_I_INVERTED(1'b0),
    .SIM_DEVICE("VERSAL_AI_CORE"),
    .STARTUP_SYNC("TRUE")) 
    pll1_clkout3_buf
       (.CE(bank1_pll_locked),
        .I(pll1_clkout3),
        .O(bank1_pll_clkout3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("SYNC"),
    .IS_CE_INVERTED(1'b0),
    .IS_I_INVERTED(1'b0),
    .SIM_DEVICE("VERSAL_AI_CORE"),
    .STARTUP_SYNC("TRUE")) 
    pll2_clkout0_buf
       (.CE(pll2_locked_fb_out),
        .I(pll2_clkout0),
        .O(bank2_pll_clkout0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("SYNC"),
    .IS_CE_INVERTED(1'b0),
    .IS_I_INVERTED(1'b0),
    .SIM_DEVICE("VERSAL_AI_CORE"),
    .STARTUP_SYNC("TRUE")) 
    pll2_clkout1_buf
       (.CE(bank2_pll_locked),
        .I(pll2_clkout1),
        .O(bank2_pll_clkout1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("SYNC"),
    .IS_CE_INVERTED(1'b0),
    .IS_I_INVERTED(1'b0),
    .SIM_DEVICE("VERSAL_AI_CORE"),
    .STARTUP_SYNC("TRUE")) 
    pll2_clkout2_buf
       (.CE(bank2_pll_locked),
        .I(pll2_clkout2),
        .O(bank2_pll_clkout2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("SYNC"),
    .IS_CE_INVERTED(1'b0),
    .IS_I_INVERTED(1'b0),
    .SIM_DEVICE("VERSAL_AI_CORE"),
    .STARTUP_SYNC("TRUE")) 
    pll2_clkout3_buf
       (.CE(bank2_pll_locked),
        .I(pll2_clkout3),
        .O(bank2_pll_clkout3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFGCE_DIV #(
    .BUFGCE_DIVIDE(2),
    .CE_TYPE("SYNC"),
    .HARDSYNC_CLR("FALSE"),
    .IS_CE_INVERTED(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_I_INVERTED(1'b0),
    .SIM_DEVICE("VERSAL_AI_CORE_ES1"),
    .STARTUP_SYNC("FALSE")) 
    u_mipi_bufgce_div2
       (.CE(pll0_locked_fb_out),
        .CLR(1'b0),
        .I(pll0_clkout0),
        .O(u_mipi_bufgce_div2_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFGCE_DIV #(
    .BUFGCE_DIVIDE(4),
    .CE_TYPE("SYNC"),
    .HARDSYNC_CLR("FALSE"),
    .IS_CE_INVERTED(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_I_INVERTED(1'b0),
    .SIM_DEVICE("VERSAL_AI_CORE_ES1"),
    .STARTUP_SYNC("FALSE")) 
    u_mipi_bufgce_div4
       (.CE(pll0_locked_fb_out),
        .CLR(1'b0),
        .I(pll0_clkout0),
        .O(u_mipi_bufgce_div4_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  XPLL #(
    .CLKFBOUT_MULT(16),
    .CLKFBOUT_PHASE(0.000000),
    .CLKIN_PERIOD(4.000000),
    .CLKOUT0_DIVIDE(16),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_PHASE_CTRL(2'b01),
    .CLKOUT1_DIVIDE(16),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_PHASE_CTRL(2'b00),
    .CLKOUT2_DIVIDE(16),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_PHASE_CTRL(2'b00),
    .CLKOUT3_DIVIDE(16),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(105.000000),
    .CLKOUT3_PHASE_CTRL(2'b00),
    .CLKOUTPHY_CASCIN_EN(1'b0),
    .CLKOUTPHY_CASCOUT_EN(1'b0),
    .CLKOUTPHY_DIVIDE("DIV4"),
    .DESKEW2_MUXIN_SEL(1'b0),
    .DESKEW_DELAY1(0),
    .DESKEW_DELAY2(0),
    .DESKEW_DELAY_EN1("FALSE"),
    .DESKEW_DELAY_EN2("FALSE"),
    .DESKEW_DELAY_PATH1("FALSE"),
    .DESKEW_DELAY_PATH2("FALSE"),
    .DESKEW_MUXIN_SEL(1'b0),
    .DIV4_CLKOUT012(1'b0),
    .DIV4_CLKOUT3(1'b0),
    .DIVCLK_DIVIDE(1),
    .IS_CLKFB1_DESKEW_INVERTED(1'b0),
    .IS_CLKFB2_DESKEW_INVERTED(1'b0),
    .IS_CLKIN1_DESKEW_INVERTED(1'b0),
    .IS_CLKIN2_DESKEW_INVERTED(1'b0),
    .IS_CLKIN_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .LOCK_WAIT("FALSE"),
    .REF_JITTER(0.010000),
    .XPLL_CONNECT_TO_NOCMC("NONE")) 
    xpll_pll0_inst
       (.CLKFB1_DESKEW(bank0_pll_clkout0),
        .CLKFB2_DESKEW(1'b0),
        .CLKIN(pll2_clk_in),
        .CLKIN1_DESKEW(pll0_clkout3),
        .CLKIN2_DESKEW(1'b0),
        .CLKOUT0(pll0_clkout0),
        .CLKOUT1(pll0_clkout1),
        .CLKOUT2(pll0_clkout2),
        .CLKOUT3(pll0_clkout3),
        .CLKOUTPHY(bank0_pll_clkoutphy),
        .CLKOUTPHYEN(shared_pll_clkoutphyen_out),
        .CLKOUTPHY_CASC_IN(NLW_xpll_pll0_inst_CLKOUTPHY_CASC_IN_UNCONNECTED),
        .CLKOUTPHY_CASC_OUT(NLW_xpll_pll0_inst_CLKOUTPHY_CASC_OUT_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_xpll_pll0_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_xpll_pll0_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(bank0_pll_locked),
        .LOCKED1_DESKEW(NLW_xpll_pll0_inst_LOCKED1_DESKEW_UNCONNECTED),
        .LOCKED2_DESKEW(NLW_xpll_pll0_inst_LOCKED2_DESKEW_UNCONNECTED),
        .LOCKED_FB(pll0_locked_fb_out),
        .PSCLK(1'b0),
        .PSDONE(xpll_pll0_inst_n_11),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RIU_ADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RIU_CLK(1'b0),
        .RIU_NIBBLE_SEL(1'b0),
        .RIU_RD_DATA(NLW_xpll_pll0_inst_RIU_RD_DATA_UNCONNECTED[15:0]),
        .RIU_VALID(NLW_xpll_pll0_inst_RIU_VALID_UNCONNECTED),
        .RIU_WR_DATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RIU_WR_EN(1'b0),
        .RST(bank0_pll_rst_pll));
  (* BOX_TYPE = "PRIMITIVE" *) 
  XPLL #(
    .CLKFBOUT_MULT(16),
    .CLKFBOUT_PHASE(0.000000),
    .CLKIN_PERIOD(4.000000),
    .CLKOUT0_DIVIDE(16),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_PHASE_CTRL(2'b01),
    .CLKOUT1_DIVIDE(16),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_PHASE_CTRL(2'b00),
    .CLKOUT2_DIVIDE(16),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_PHASE_CTRL(2'b00),
    .CLKOUT3_DIVIDE(16),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(105.000000),
    .CLKOUT3_PHASE_CTRL(2'b00),
    .CLKOUTPHY_CASCIN_EN(1'b0),
    .CLKOUTPHY_CASCOUT_EN(1'b0),
    .CLKOUTPHY_DIVIDE("DIV4"),
    .DESKEW2_MUXIN_SEL(1'b0),
    .DESKEW_DELAY1(0),
    .DESKEW_DELAY2(0),
    .DESKEW_DELAY_EN1("FALSE"),
    .DESKEW_DELAY_EN2("FALSE"),
    .DESKEW_DELAY_PATH1("FALSE"),
    .DESKEW_DELAY_PATH2("FALSE"),
    .DESKEW_MUXIN_SEL(1'b0),
    .DIV4_CLKOUT012(1'b0),
    .DIV4_CLKOUT3(1'b0),
    .DIVCLK_DIVIDE(1),
    .IS_CLKFB1_DESKEW_INVERTED(1'b0),
    .IS_CLKFB2_DESKEW_INVERTED(1'b0),
    .IS_CLKIN1_DESKEW_INVERTED(1'b0),
    .IS_CLKIN2_DESKEW_INVERTED(1'b0),
    .IS_CLKIN_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .LOCK_WAIT("FALSE"),
    .REF_JITTER(0.010000),
    .XPLL_CONNECT_TO_NOCMC("NONE")) 
    xpll_pll1_inst
       (.CLKFB1_DESKEW(bank1_pll_clkout0),
        .CLKFB2_DESKEW(1'b0),
        .CLKIN(pll2_clk_in),
        .CLKIN1_DESKEW(pll1_clkout3),
        .CLKIN2_DESKEW(1'b0),
        .CLKOUT0(pll1_clkout0),
        .CLKOUT1(pll1_clkout1),
        .CLKOUT2(pll1_clkout2),
        .CLKOUT3(pll1_clkout3),
        .CLKOUTPHY(bank1_pll_clkoutphy),
        .CLKOUTPHYEN(shared_pll_clkoutphyen_out),
        .CLKOUTPHY_CASC_IN(NLW_xpll_pll1_inst_CLKOUTPHY_CASC_IN_UNCONNECTED),
        .CLKOUTPHY_CASC_OUT(NLW_xpll_pll1_inst_CLKOUTPHY_CASC_OUT_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_xpll_pll1_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_xpll_pll1_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(bank1_pll_locked),
        .LOCKED1_DESKEW(NLW_xpll_pll1_inst_LOCKED1_DESKEW_UNCONNECTED),
        .LOCKED2_DESKEW(NLW_xpll_pll1_inst_LOCKED2_DESKEW_UNCONNECTED),
        .LOCKED_FB(pll1_locked_fb_out),
        .PSCLK(1'b0),
        .PSDONE(NLW_xpll_pll1_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RIU_ADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RIU_CLK(1'b0),
        .RIU_NIBBLE_SEL(1'b0),
        .RIU_RD_DATA(NLW_xpll_pll1_inst_RIU_RD_DATA_UNCONNECTED[15:0]),
        .RIU_VALID(NLW_xpll_pll1_inst_RIU_VALID_UNCONNECTED),
        .RIU_WR_DATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RIU_WR_EN(1'b0),
        .RST(bank1_pll_rst_pll));
  (* BOX_TYPE = "PRIMITIVE" *) 
  XPLL #(
    .CLKFBOUT_MULT(16),
    .CLKFBOUT_PHASE(0.000000),
    .CLKIN_PERIOD(4.000000),
    .CLKOUT0_DIVIDE(16),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_PHASE_CTRL(2'b01),
    .CLKOUT1_DIVIDE(16),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_PHASE_CTRL(2'b00),
    .CLKOUT2_DIVIDE(16),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_PHASE_CTRL(2'b00),
    .CLKOUT3_DIVIDE(16),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(105.000000),
    .CLKOUT3_PHASE_CTRL(2'b00),
    .CLKOUTPHY_CASCIN_EN(1'b0),
    .CLKOUTPHY_CASCOUT_EN(1'b0),
    .CLKOUTPHY_DIVIDE("DIV4"),
    .DESKEW2_MUXIN_SEL(1'b0),
    .DESKEW_DELAY1(0),
    .DESKEW_DELAY2(0),
    .DESKEW_DELAY_EN1("FALSE"),
    .DESKEW_DELAY_EN2("FALSE"),
    .DESKEW_DELAY_PATH1("FALSE"),
    .DESKEW_DELAY_PATH2("FALSE"),
    .DESKEW_MUXIN_SEL(1'b0),
    .DIV4_CLKOUT012(1'b0),
    .DIV4_CLKOUT3(1'b0),
    .DIVCLK_DIVIDE(1),
    .IS_CLKFB1_DESKEW_INVERTED(1'b0),
    .IS_CLKFB2_DESKEW_INVERTED(1'b0),
    .IS_CLKIN1_DESKEW_INVERTED(1'b0),
    .IS_CLKIN2_DESKEW_INVERTED(1'b0),
    .IS_CLKIN_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .LOCK_WAIT("FALSE"),
    .REF_JITTER(0.010000),
    .XPLL_CONNECT_TO_NOCMC("NONE")) 
    xpll_pll2_inst
       (.CLKFB1_DESKEW(bank2_pll_clkout0),
        .CLKFB2_DESKEW(1'b0),
        .CLKIN(pll2_clk_in),
        .CLKIN1_DESKEW(pll2_clkout3),
        .CLKIN2_DESKEW(1'b0),
        .CLKOUT0(pll2_clkout0),
        .CLKOUT1(pll2_clkout1),
        .CLKOUT2(pll2_clkout2),
        .CLKOUT3(pll2_clkout3),
        .CLKOUTPHY(bank2_pll_clkoutphy),
        .CLKOUTPHYEN(shared_pll_clkoutphyen_out),
        .CLKOUTPHY_CASC_IN(NLW_xpll_pll2_inst_CLKOUTPHY_CASC_IN_UNCONNECTED),
        .CLKOUTPHY_CASC_OUT(NLW_xpll_pll2_inst_CLKOUTPHY_CASC_OUT_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_xpll_pll2_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_xpll_pll2_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(bank2_pll_locked),
        .LOCKED1_DESKEW(NLW_xpll_pll2_inst_LOCKED1_DESKEW_UNCONNECTED),
        .LOCKED2_DESKEW(NLW_xpll_pll2_inst_LOCKED2_DESKEW_UNCONNECTED),
        .LOCKED_FB(pll2_locked_fb_out),
        .PSCLK(1'b0),
        .PSDONE(NLW_xpll_pll2_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RIU_ADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RIU_CLK(1'b0),
        .RIU_NIBBLE_SEL(1'b0),
        .RIU_RD_DATA(NLW_xpll_pll2_inst_RIU_RD_DATA_UNCONNECTED[15:0]),
        .RIU_VALID(NLW_xpll_pll2_inst_RIU_VALID_UNCONNECTED),
        .RIU_WR_DATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RIU_WR_EN(1'b0),
        .RST(bank2_pll_rst_pll));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_advanced_io_wizard_0_0_phy_test,design_1_advanced_io_wizard_0_0_phy_test_advanced_io_wizard_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "design_1_advanced_io_wizard_0_0_phy_test_advanced_io_wizard_v1_0,Vivado 2020.3" *) 
module design_1_advanced_io_wizard_0_0_phy_test
   (fifo_wr_clk,
    ctrl_clk,
    en_vtc,
    rst,
    fifo_rd_clk,
    phy_rdcs0,
    gt_status,
    phy_rdcs1,
    phy_wrcs0,
    phy_wrcs1,
    phy_rden,
    phy_wren,
    bank0_pll_clkout0,
    bank0_pll_clkoutphy,
    bank1_pll_clkoutphy,
    bank2_pll_clkoutphy,
    bank0_pll_locked,
    bank1_pll_locked,
    bank2_pll_locked,
    bank0_pll_locked_fb,
    bank1_pll_locked_fb,
    bank2_pll_locked_fb,
    intf_rdy,
    pll_clkoutphyen,
    fabric_vref_tune,
    vref_id,
    gearbox_clk,
    dly_rdy,
    phy_rdy,
    fifo_empty,
    fifo_rd_en,
    riu_wr_en,
    riu_wr_data,
    riu_addr,
    riu_nibble_sel,
    riu_rd_valid,
    riu_rd_data,
    LVDS_706,
    data_to_fabric_LVDS_706,
    RD_CLK_706,
    data_to_fabric_RD_CLK_706,
    LVDS_707,
    data_to_fabric_LVDS_707,
    RD_CLK_707,
    data_to_fabric_RD_CLK_707,
    LVDS_708,
    data_to_fabric_LVDS_708,
    RD_CLK_708,
    data_to_fabric_RD_CLK_708);
  output [26:0]fifo_wr_clk;
  input [26:0]ctrl_clk;
  input en_vtc;
  input rst;
  input fifo_rd_clk;
  input [107:0]phy_rdcs0;
  output [26:0]gt_status;
  input [107:0]phy_rdcs1;
  input [107:0]phy_wrcs0;
  input [107:0]phy_wrcs1;
  input [107:0]phy_rden;
  input [107:0]phy_wren;
  input bank0_pll_clkout0;
  input bank0_pll_clkoutphy;
  input bank1_pll_clkoutphy;
  input bank2_pll_clkoutphy;
  input bank0_pll_locked;
  input bank1_pll_locked;
  input bank2_pll_locked;
  input bank0_pll_locked_fb;
  input bank1_pll_locked_fb;
  input bank2_pll_locked_fb;
  output intf_rdy;
  output pll_clkoutphyen;
  input [29:0]fabric_vref_tune;
  input [11:0]vref_id;
  input gearbox_clk;
  output dly_rdy;
  output phy_rdy;
  output fifo_empty;
  input fifo_rd_en;
  input [26:0]riu_wr_en;
  input [431:0]riu_wr_data;
  input [215:0]riu_addr;
  input [26:0]riu_nibble_sel;
  output [26:0]riu_rd_valid;
  output [431:0]riu_rd_data;
  input [47:0]LVDS_706;
  output [95:0]data_to_fabric_LVDS_706;
  input [1:0]RD_CLK_706;
  output [3:0]data_to_fabric_RD_CLK_706;
  input [35:0]LVDS_707;
  output [71:0]data_to_fabric_LVDS_707;
  input [1:0]RD_CLK_707;
  output [3:0]data_to_fabric_RD_CLK_707;
  input [43:0]LVDS_708;
  output [87:0]data_to_fabric_LVDS_708;
  input [1:0]RD_CLK_708;
  output [3:0]data_to_fabric_RD_CLK_708;

  wire \<const0> ;
  wire \<const1> ;
  wire [47:0]LVDS_706;
  wire [35:0]LVDS_707;
  wire [43:0]LVDS_708;
  wire [1:0]RD_CLK_706;
  wire [1:0]RD_CLK_707;
  wire [1:0]RD_CLK_708;
  wire bank0_pll_clkout0;
  wire bank0_pll_clkoutphy;
  wire bank0_pll_locked;
  wire bank0_pll_locked_fb;
  wire bank1_pll_clkoutphy;
  wire bank1_pll_locked;
  wire bank1_pll_locked_fb;
  wire bank2_pll_clkoutphy;
  wire bank2_pll_locked;
  wire bank2_pll_locked_fb;
  wire [26:0]ctrl_clk;
  wire [95:0]data_to_fabric_LVDS_706;
  wire [71:0]data_to_fabric_LVDS_707;
  wire [87:0]data_to_fabric_LVDS_708;
  wire [3:0]data_to_fabric_RD_CLK_706;
  wire [3:0]data_to_fabric_RD_CLK_707;
  wire [3:0]data_to_fabric_RD_CLK_708;
  wire dly_rdy;
  wire en_vtc;
  wire fifo_empty;
  wire fifo_rd_clk;
  wire fifo_rd_en;
  wire [26:0]\^fifo_wr_clk ;
  wire [26:0]\^gt_status ;
  wire intf_rdy;
  wire [107:0]phy_rdcs0;
  wire [107:0]phy_rdcs1;
  wire phy_rdy;
  wire [107:0]phy_wrcs0;
  wire [107:0]phy_wrcs1;
  wire pll_clkoutphyen;
  wire [215:0]riu_addr;
  wire [26:0]riu_nibble_sel;
  wire [431:0]\^riu_rd_data ;
  wire [26:0]\^riu_rd_valid ;
  wire [431:0]riu_wr_data;
  wire [26:0]riu_wr_en;
  wire rst;

  assign fifo_wr_clk[26:20] = \^fifo_wr_clk [26:20];
  assign fifo_wr_clk[19] = \<const0> ;
  assign fifo_wr_clk[18] = \<const0> ;
  assign fifo_wr_clk[17] = \<const0> ;
  assign fifo_wr_clk[16:0] = \^fifo_wr_clk [16:0];
  assign gt_status[26:20] = \^gt_status [26:20];
  assign gt_status[19] = \<const0> ;
  assign gt_status[18] = \<const0> ;
  assign gt_status[17] = \<const0> ;
  assign gt_status[16:0] = \^gt_status [16:0];
  assign riu_rd_data[431:320] = \^riu_rd_data [431:320];
  assign riu_rd_data[319] = \<const0> ;
  assign riu_rd_data[318] = \<const0> ;
  assign riu_rd_data[317] = \<const0> ;
  assign riu_rd_data[316] = \<const0> ;
  assign riu_rd_data[315] = \<const0> ;
  assign riu_rd_data[314] = \<const0> ;
  assign riu_rd_data[313] = \<const0> ;
  assign riu_rd_data[312] = \<const0> ;
  assign riu_rd_data[311] = \<const0> ;
  assign riu_rd_data[310] = \<const0> ;
  assign riu_rd_data[309] = \<const0> ;
  assign riu_rd_data[308] = \<const0> ;
  assign riu_rd_data[307] = \<const0> ;
  assign riu_rd_data[306] = \<const0> ;
  assign riu_rd_data[305] = \<const0> ;
  assign riu_rd_data[304] = \<const0> ;
  assign riu_rd_data[303] = \<const0> ;
  assign riu_rd_data[302] = \<const0> ;
  assign riu_rd_data[301] = \<const0> ;
  assign riu_rd_data[300] = \<const0> ;
  assign riu_rd_data[299] = \<const0> ;
  assign riu_rd_data[298] = \<const0> ;
  assign riu_rd_data[297] = \<const0> ;
  assign riu_rd_data[296] = \<const0> ;
  assign riu_rd_data[295] = \<const0> ;
  assign riu_rd_data[294] = \<const0> ;
  assign riu_rd_data[293] = \<const0> ;
  assign riu_rd_data[292] = \<const0> ;
  assign riu_rd_data[291] = \<const0> ;
  assign riu_rd_data[290] = \<const0> ;
  assign riu_rd_data[289] = \<const0> ;
  assign riu_rd_data[288] = \<const0> ;
  assign riu_rd_data[287] = \<const0> ;
  assign riu_rd_data[286] = \<const0> ;
  assign riu_rd_data[285] = \<const0> ;
  assign riu_rd_data[284] = \<const0> ;
  assign riu_rd_data[283] = \<const0> ;
  assign riu_rd_data[282] = \<const0> ;
  assign riu_rd_data[281] = \<const0> ;
  assign riu_rd_data[280] = \<const0> ;
  assign riu_rd_data[279] = \<const0> ;
  assign riu_rd_data[278] = \<const0> ;
  assign riu_rd_data[277] = \<const0> ;
  assign riu_rd_data[276] = \<const0> ;
  assign riu_rd_data[275] = \<const0> ;
  assign riu_rd_data[274] = \<const0> ;
  assign riu_rd_data[273] = \<const0> ;
  assign riu_rd_data[272] = \<const0> ;
  assign riu_rd_data[271:0] = \^riu_rd_data [271:0];
  assign riu_rd_valid[26:20] = \^riu_rd_valid [26:20];
  assign riu_rd_valid[19] = \<const1> ;
  assign riu_rd_valid[18] = \<const1> ;
  assign riu_rd_valid[17] = \<const1> ;
  assign riu_rd_valid[16:0] = \^riu_rd_valid [16:0];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  design_1_advanced_io_wizard_0_0_phy_test_advanced_io_wizard_v1_0 inst
       (.LVDS_706(LVDS_706),
        .LVDS_707(LVDS_707),
        .LVDS_708(LVDS_708),
        .RD_CLK_706(RD_CLK_706),
        .RD_CLK_707(RD_CLK_707),
        .RD_CLK_708(RD_CLK_708),
        .bank0_pll_clkout0(bank0_pll_clkout0),
        .bank0_pll_clkoutphy(bank0_pll_clkoutphy),
        .bank0_pll_locked(bank0_pll_locked),
        .bank0_pll_locked_fb(bank0_pll_locked_fb),
        .bank1_pll_clkoutphy(bank1_pll_clkoutphy),
        .bank1_pll_locked(bank1_pll_locked),
        .bank1_pll_locked_fb(bank1_pll_locked_fb),
        .bank2_pll_clkoutphy(bank2_pll_clkoutphy),
        .bank2_pll_locked(bank2_pll_locked),
        .bank2_pll_locked_fb(bank2_pll_locked_fb),
        .ctrl_clk({ctrl_clk[26:20],ctrl_clk[16:0]}),
        .data_to_fabric_LVDS_706(data_to_fabric_LVDS_706),
        .data_to_fabric_LVDS_707(data_to_fabric_LVDS_707),
        .data_to_fabric_LVDS_708(data_to_fabric_LVDS_708),
        .data_to_fabric_RD_CLK_706(data_to_fabric_RD_CLK_706),
        .data_to_fabric_RD_CLK_707(data_to_fabric_RD_CLK_707),
        .data_to_fabric_RD_CLK_708(data_to_fabric_RD_CLK_708),
        .dly_rdy(dly_rdy),
        .en_vtc(en_vtc),
        .fifo_empty(fifo_empty),
        .fifo_rd_clk(fifo_rd_clk),
        .fifo_rd_en(fifo_rd_en),
        .fifo_wr_clk({\^fifo_wr_clk [26:20],\^fifo_wr_clk [16:0]}),
        .gt_status({\^gt_status [26:20],\^gt_status [16:0]}),
        .intf_rdy(intf_rdy),
        .phy_rdcs0({phy_rdcs0[107:80],phy_rdcs0[67:0]}),
        .phy_rdcs1({phy_rdcs1[107:80],phy_rdcs1[67:0]}),
        .phy_rdy(phy_rdy),
        .phy_wrcs0({phy_wrcs0[107:80],phy_wrcs0[67:0]}),
        .phy_wrcs1({phy_wrcs1[107:80],phy_wrcs1[67:0]}),
        .pll_clkoutphyen(pll_clkoutphyen),
        .riu_addr({riu_addr[215:160],riu_addr[135:0]}),
        .riu_nibble_sel({riu_nibble_sel[26:20],riu_nibble_sel[16:0]}),
        .riu_rd_data({\^riu_rd_data [431:320],\^riu_rd_data [271:0]}),
        .riu_rd_valid({\^riu_rd_valid [26:20],\^riu_rd_valid [16:0]}),
        .riu_wr_data({riu_wr_data[431:320],riu_wr_data[271:0]}),
        .riu_wr_en({riu_wr_en[26:20],riu_wr_en[16:0]}),
        .rst(rst));
endmodule

module design_1_advanced_io_wizard_0_0_phy_test_advanced_io_wizard_v1_0
   (fifo_wr_clk,
    gt_status,
    riu_rd_valid,
    riu_rd_data,
    data_to_fabric_LVDS_706,
    data_to_fabric_RD_CLK_706,
    data_to_fabric_LVDS_708,
    data_to_fabric_RD_CLK_708,
    data_to_fabric_RD_CLK_707,
    data_to_fabric_LVDS_707,
    phy_rdy,
    dly_rdy,
    fifo_empty,
    pll_clkoutphyen,
    intf_rdy,
    ctrl_clk,
    en_vtc,
    fifo_rd_en,
    fifo_rd_clk,
    bank0_pll_clkoutphy,
    riu_nibble_sel,
    riu_wr_en,
    riu_wr_data,
    phy_rdcs0,
    phy_rdcs1,
    phy_wrcs0,
    phy_wrcs1,
    riu_addr,
    LVDS_706,
    RD_CLK_706,
    bank1_pll_clkoutphy,
    LVDS_708,
    RD_CLK_708,
    bank2_pll_clkoutphy,
    RD_CLK_707,
    LVDS_707,
    bank0_pll_clkout0,
    rst,
    bank0_pll_locked,
    bank1_pll_locked,
    bank2_pll_locked,
    bank0_pll_locked_fb,
    bank1_pll_locked_fb,
    bank2_pll_locked_fb);
  output [23:0]fifo_wr_clk;
  output [23:0]gt_status;
  output [23:0]riu_rd_valid;
  output [383:0]riu_rd_data;
  output [95:0]data_to_fabric_LVDS_706;
  output [3:0]data_to_fabric_RD_CLK_706;
  output [87:0]data_to_fabric_LVDS_708;
  output [3:0]data_to_fabric_RD_CLK_708;
  output [3:0]data_to_fabric_RD_CLK_707;
  output [71:0]data_to_fabric_LVDS_707;
  output phy_rdy;
  output dly_rdy;
  output fifo_empty;
  output pll_clkoutphyen;
  output intf_rdy;
  input [23:0]ctrl_clk;
  input en_vtc;
  input fifo_rd_en;
  input fifo_rd_clk;
  input bank0_pll_clkoutphy;
  input [23:0]riu_nibble_sel;
  input [23:0]riu_wr_en;
  input [383:0]riu_wr_data;
  input [95:0]phy_rdcs0;
  input [95:0]phy_rdcs1;
  input [95:0]phy_wrcs0;
  input [95:0]phy_wrcs1;
  input [191:0]riu_addr;
  input [47:0]LVDS_706;
  input [1:0]RD_CLK_706;
  input bank1_pll_clkoutphy;
  input [43:0]LVDS_708;
  input [1:0]RD_CLK_708;
  input bank2_pll_clkoutphy;
  input [1:0]RD_CLK_707;
  input [35:0]LVDS_707;
  input bank0_pll_clkout0;
  input rst;
  input bank0_pll_locked;
  input bank1_pll_locked;
  input bank2_pll_locked;
  input bank0_pll_locked_fb;
  input bank1_pll_locked_fb;
  input bank2_pll_locked_fb;

  wire BANK_WRAPPER_INST0_n_0;
  wire BANK_WRAPPER_INST0_n_1;
  wire BANK_WRAPPER_INST0_n_10;
  wire BANK_WRAPPER_INST0_n_11;
  wire BANK_WRAPPER_INST0_n_12;
  wire BANK_WRAPPER_INST0_n_2;
  wire BANK_WRAPPER_INST0_n_3;
  wire BANK_WRAPPER_INST0_n_4;
  wire BANK_WRAPPER_INST0_n_5;
  wire BANK_WRAPPER_INST0_n_6;
  wire BANK_WRAPPER_INST0_n_7;
  wire BANK_WRAPPER_INST0_n_8;
  wire BANK_WRAPPER_INST0_n_9;
  wire BANK_WRAPPER_INST1_n_2;
  wire BANK_WRAPPER_INST1_n_3;
  wire BANK_WRAPPER_INST1_n_4;
  wire BANK_WRAPPER_INST1_n_5;
  wire BANK_WRAPPER_INST1_n_6;
  wire BANK_WRAPPER_INST1_n_7;
  wire BANK_WRAPPER_INST1_n_8;
  wire BANK_WRAPPER_INST1_n_9;
  wire BANK_WRAPPER_INST2_n_0;
  wire BANK_WRAPPER_INST2_n_1;
  wire BANK_WRAPPER_INST2_n_10;
  wire BANK_WRAPPER_INST2_n_11;
  wire BANK_WRAPPER_INST2_n_12;
  wire BANK_WRAPPER_INST2_n_13;
  wire BANK_WRAPPER_INST2_n_2;
  wire BANK_WRAPPER_INST2_n_28;
  wire BANK_WRAPPER_INST2_n_3;
  wire BANK_WRAPPER_INST2_n_4;
  wire BANK_WRAPPER_INST2_n_7;
  wire BANK_WRAPPER_INST2_n_8;
  wire BANK_WRAPPER_INST2_n_9;
  wire [47:0]LVDS_706;
  wire [35:0]LVDS_707;
  wire [43:0]LVDS_708;
  wire [1:0]RD_CLK_706;
  wire [1:0]RD_CLK_707;
  wire [1:0]RD_CLK_708;
  wire bank0_pll_clkout0;
  wire bank0_pll_clkoutphy;
  wire bank0_pll_locked;
  wire bank0_pll_locked_fb;
  wire bank1_pll_clkoutphy;
  wire bank1_pll_locked;
  wire bank1_pll_locked_fb;
  wire bank2_pll_clkoutphy;
  wire bank2_pll_locked;
  wire bank2_pll_locked_fb;
  wire [23:0]ctrl_clk;
  wire [95:0]data_to_fabric_LVDS_706;
  wire [71:0]data_to_fabric_LVDS_707;
  wire [87:0]data_to_fabric_LVDS_708;
  wire [3:0]data_to_fabric_RD_CLK_706;
  wire [3:0]data_to_fabric_RD_CLK_707;
  wire [3:0]data_to_fabric_RD_CLK_708;
  wire dly_rdy;
  wire en_vtc;
  wire fifo_empty;
  wire fifo_empty_INST_0_i_1_n_0;
  wire fifo_empty_INST_0_i_2_n_0;
  wire fifo_empty_INST_0_i_3_n_0;
  wire fifo_empty_INST_0_i_4_n_0;
  wire fifo_rd_clk;
  wire fifo_rd_en;
  wire [23:0]fifo_wr_clk;
  wire [23:0]gt_status;
  wire \if_reset\.LOCKED_FB ;
  wire \if_reset\.PD_LOCK ;
  wire intf_rdy;
  wire p_11_in;
  wire p_11_in13_in;
  wire p_14_in;
  wire p_14_in16_in;
  wire p_18_in;
  wire p_18_in20_in;
  wire p_19_in;
  wire p_19_in21_in;
  wire p_1_in;
  wire p_1_in3_in;
  wire p_21_in;
  wire p_21_in23_in;
  wire p_5_in;
  wire p_5_in7_in;
  wire p_9_in;
  wire p_9_in11_in;
  wire [95:0]phy_rdcs0;
  wire [95:0]phy_rdcs1;
  wire phy_rdy;
  wire [95:0]phy_wrcs0;
  wire [95:0]phy_wrcs1;
  wire pll_clkoutphyen;
  wire rdwr_en_mux_sel_all;
  wire reset_phy_sm_inst_n_1;
  wire [191:0]riu_addr;
  wire [23:0]riu_nibble_sel;
  wire [383:0]riu_rd_data;
  wire [23:0]riu_rd_valid;
  wire [383:0]riu_wr_data;
  wire [23:0]riu_wr_en;
  wire rst;
  wire NLW_xpm_cdc_PHY_RDEN_dest_out_UNCONNECTED;
  wire NLW_xpm_cdc_PHY_WREN_dest_out_UNCONNECTED;
  wire NLW_xpm_cdc_RDWR_EN_dest_out_UNCONNECTED;

  design_1_advanced_io_wizard_0_0_advanced_io_wizard_phy_v1_0_0_bank_wrapper BANK_WRAPPER_INST0
       (.DLY_RDY({BANK_WRAPPER_INST2_n_4,p_1_in3_in,p_5_in7_in}),
        .FIFO_EMPTY({BANK_WRAPPER_INST0_n_4,BANK_WRAPPER_INST0_n_5,BANK_WRAPPER_INST0_n_6,BANK_WRAPPER_INST0_n_7,BANK_WRAPPER_INST0_n_8,BANK_WRAPPER_INST0_n_9,BANK_WRAPPER_INST0_n_10,BANK_WRAPPER_INST0_n_11,BANK_WRAPPER_INST0_n_12}),
        .IOB({LVDS_706[47:22],LVDS_706[9:0],RD_CLK_706,LVDS_706[21:10]}),
        .PHY_RDY({BANK_WRAPPER_INST2_n_28,p_1_in,p_5_in}),
        .Q({data_to_fabric_LVDS_706[95:44],data_to_fabric_LVDS_706[19:0],data_to_fabric_RD_CLK_706,data_to_fabric_LVDS_706[43:20]}),
        .RX_RST(reset_phy_sm_inst_n_1),
        .bank0_pll_clkoutphy(bank0_pll_clkoutphy),
        .ctrl_clk(ctrl_clk[8:0]),
        .ctrl_clk_0(BANK_WRAPPER_INST0_n_0),
        .ctrl_clk_1(BANK_WRAPPER_INST0_n_1),
        .ctrl_clk_2(BANK_WRAPPER_INST0_n_2),
        .ctrl_clk_3(BANK_WRAPPER_INST0_n_3),
        .ctrl_clk_4({p_14_in16_in,p_18_in20_in,p_19_in21_in,p_21_in23_in}),
        .ctrl_clk_5({p_14_in,p_18_in,p_19_in,p_21_in}),
        .en_vtc(en_vtc),
        .fifo_rd_clk(fifo_rd_clk),
        .fifo_rd_en(fifo_rd_en),
        .fifo_wr_clk(fifo_wr_clk[8:0]),
        .gt_status(gt_status[8:0]),
        .phy_rdcs0(phy_rdcs0[35:0]),
        .phy_rdcs1(phy_rdcs1[35:0]),
        .phy_wrcs0(phy_wrcs0[35:0]),
        .phy_wrcs1(phy_wrcs1[35:0]),
        .riu_addr(riu_addr[71:0]),
        .riu_nibble_sel(riu_nibble_sel[8:0]),
        .riu_rd_data(riu_rd_data[143:0]),
        .riu_rd_valid(riu_rd_valid[8:0]),
        .riu_wr_data(riu_wr_data[143:0]),
        .riu_wr_en(riu_wr_en[8:0]));
  design_1_advanced_io_wizard_0_0_advanced_io_wizard_phy_v1_0_0_bank_wrapper__parameterized0 BANK_WRAPPER_INST1
       (.DLY_RDY({p_9_in11_in,p_11_in13_in}),
        .FIFO_EMPTY({BANK_WRAPPER_INST1_n_2,BANK_WRAPPER_INST1_n_3,BANK_WRAPPER_INST1_n_4,BANK_WRAPPER_INST1_n_5,BANK_WRAPPER_INST1_n_6,BANK_WRAPPER_INST1_n_7,BANK_WRAPPER_INST1_n_8,BANK_WRAPPER_INST1_n_9}),
        .IOB({LVDS_708[43:22],LVDS_708[9:0],RD_CLK_708,LVDS_708[21:10]}),
        .PHY_RDY({p_9_in,p_11_in}),
        .Q({data_to_fabric_LVDS_708[87:44],data_to_fabric_LVDS_708[19:0],data_to_fabric_RD_CLK_708,data_to_fabric_LVDS_708[43:20]}),
        .RX_RST(reset_phy_sm_inst_n_1),
        .bank1_pll_clkoutphy(bank1_pll_clkoutphy),
        .ctrl_clk(ctrl_clk[16:9]),
        .dly_rdy(dly_rdy),
        .en_vtc(en_vtc),
        .fifo_rd_clk(fifo_rd_clk),
        .fifo_rd_en(fifo_rd_en),
        .fifo_wr_clk(fifo_wr_clk[16:9]),
        .gt_status(gt_status[16:9]),
        .phy_rdcs0(phy_rdcs0[67:36]),
        .phy_rdcs1(phy_rdcs1[67:36]),
        .phy_rdy(phy_rdy),
        .phy_wrcs0(phy_wrcs0[67:36]),
        .phy_wrcs1(phy_wrcs1[67:36]),
        .riu_addr(riu_addr[135:72]),
        .riu_nibble_sel(riu_nibble_sel[16:9]),
        .riu_rd_data(riu_rd_data[271:144]),
        .riu_rd_valid(riu_rd_valid[16:9]),
        .riu_wr_data(riu_wr_data[271:144]),
        .riu_wr_en(riu_wr_en[16:9]),
        .\syncstages_ff_reg[0] (BANK_WRAPPER_INST0_n_0),
        .\syncstages_ff_reg[0]_0 (BANK_WRAPPER_INST2_n_0),
        .\syncstages_ff_reg[0]_1 (BANK_WRAPPER_INST0_n_1),
        .\syncstages_ff_reg[0]_2 (BANK_WRAPPER_INST2_n_1),
        .\syncstages_ff_reg[0]_3 ({p_19_in21_in,p_21_in23_in}),
        .\syncstages_ff_reg[0]_4 (BANK_WRAPPER_INST0_n_2),
        .\syncstages_ff_reg[0]_5 (BANK_WRAPPER_INST2_n_2),
        .\syncstages_ff_reg[0]_6 (BANK_WRAPPER_INST0_n_3),
        .\syncstages_ff_reg[0]_7 (BANK_WRAPPER_INST2_n_3),
        .\syncstages_ff_reg[0]_8 ({p_19_in,p_21_in}));
  design_1_advanced_io_wizard_0_0_advanced_io_wizard_phy_v1_0_0_bank_wrapper__parameterized1 BANK_WRAPPER_INST2
       (.DLY_RDY({p_9_in11_in,p_11_in13_in}),
        .FIFO_EMPTY({BANK_WRAPPER_INST2_n_7,BANK_WRAPPER_INST2_n_8,BANK_WRAPPER_INST2_n_9,BANK_WRAPPER_INST2_n_10,BANK_WRAPPER_INST2_n_11,BANK_WRAPPER_INST2_n_12,BANK_WRAPPER_INST2_n_13}),
        .IOB({LVDS_707,RD_CLK_707}),
        .PHY_RDY({p_9_in,p_11_in}),
        .Q({data_to_fabric_LVDS_707,data_to_fabric_RD_CLK_707}),
        .RX_RST(reset_phy_sm_inst_n_1),
        .bank2_pll_clkoutphy(bank2_pll_clkoutphy),
        .ctrl_clk(ctrl_clk[23:17]),
        .ctrl_clk_0(BANK_WRAPPER_INST2_n_0),
        .ctrl_clk_1(BANK_WRAPPER_INST2_n_1),
        .ctrl_clk_2(BANK_WRAPPER_INST2_n_2),
        .ctrl_clk_3(BANK_WRAPPER_INST2_n_3),
        .ctrl_clk_4({BANK_WRAPPER_INST2_n_4,p_1_in3_in,p_5_in7_in}),
        .ctrl_clk_5({BANK_WRAPPER_INST2_n_28,p_1_in,p_5_in}),
        .en_vtc(en_vtc),
        .fifo_rd_clk(fifo_rd_clk),
        .fifo_rd_en(fifo_rd_en),
        .fifo_wr_clk(fifo_wr_clk[23:17]),
        .gt_status(gt_status[23:17]),
        .phy_rdcs0(phy_rdcs0[95:68]),
        .phy_rdcs1(phy_rdcs1[95:68]),
        .phy_wrcs0(phy_wrcs0[95:68]),
        .phy_wrcs1(phy_wrcs1[95:68]),
        .riu_addr(riu_addr[191:136]),
        .riu_nibble_sel(riu_nibble_sel[23:17]),
        .riu_rd_data(riu_rd_data[383:272]),
        .riu_rd_valid(riu_rd_valid[23:17]),
        .riu_wr_data(riu_wr_data[383:272]),
        .riu_wr_en(riu_wr_en[23:17]),
        .\syncstages_ff_reg[0] ({p_14_in16_in,p_18_in20_in}),
        .\syncstages_ff_reg[0]_0 ({p_14_in,p_18_in}));
  LUT3 #(
    .INIT(8'h80)) 
    all_plls_locked_fb
       (.I0(bank0_pll_locked_fb),
        .I1(bank1_pll_locked_fb),
        .I2(bank2_pll_locked_fb),
        .O(\if_reset\.LOCKED_FB ));
  LUT3 #(
    .INIT(8'h80)) 
    all_plls_locked_pd
       (.I0(bank0_pll_locked),
        .I1(bank1_pll_locked),
        .I2(bank2_pll_locked),
        .O(\if_reset\.PD_LOCK ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    fifo_empty_INST_0
       (.I0(fifo_empty_INST_0_i_1_n_0),
        .I1(fifo_empty_INST_0_i_2_n_0),
        .I2(fifo_empty_INST_0_i_3_n_0),
        .I3(fifo_empty_INST_0_i_4_n_0),
        .O(fifo_empty));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    fifo_empty_INST_0_i_1
       (.I0(BANK_WRAPPER_INST1_n_8),
        .I1(BANK_WRAPPER_INST1_n_7),
        .I2(BANK_WRAPPER_INST0_n_4),
        .I3(BANK_WRAPPER_INST1_n_9),
        .I4(BANK_WRAPPER_INST0_n_5),
        .I5(BANK_WRAPPER_INST0_n_6),
        .O(fifo_empty_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    fifo_empty_INST_0_i_2
       (.I0(BANK_WRAPPER_INST0_n_8),
        .I1(BANK_WRAPPER_INST0_n_7),
        .I2(BANK_WRAPPER_INST0_n_10),
        .I3(BANK_WRAPPER_INST0_n_9),
        .I4(BANK_WRAPPER_INST0_n_11),
        .I5(BANK_WRAPPER_INST0_n_12),
        .O(fifo_empty_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    fifo_empty_INST_0_i_3
       (.I0(BANK_WRAPPER_INST2_n_8),
        .I1(BANK_WRAPPER_INST2_n_7),
        .I2(BANK_WRAPPER_INST2_n_10),
        .I3(BANK_WRAPPER_INST2_n_9),
        .I4(BANK_WRAPPER_INST2_n_11),
        .I5(BANK_WRAPPER_INST2_n_12),
        .O(fifo_empty_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    fifo_empty_INST_0_i_4
       (.I0(BANK_WRAPPER_INST1_n_2),
        .I1(BANK_WRAPPER_INST2_n_13),
        .I2(BANK_WRAPPER_INST1_n_4),
        .I3(BANK_WRAPPER_INST1_n_3),
        .I4(BANK_WRAPPER_INST1_n_5),
        .I5(BANK_WRAPPER_INST1_n_6),
        .O(fifo_empty_INST_0_i_4_n_0));
  design_1_advanced_io_wizard_0_0_advanced_io_wizard_phy_v1_0_0_reset_sm reset_phy_sm_inst
       (.RX_RST(reset_phy_sm_inst_n_1),
        .ctrl_clk(ctrl_clk[0]),
        .dly_rdy(dly_rdy),
        .intf_rdy(intf_rdy),
        .\next_state_reg[1]_0 (rdwr_en_mux_sel_all),
        .phy_rdy(phy_rdy),
        .pll_clkoutphyen(pll_clkoutphyen),
        .rst(rst),
        .src_in(\if_reset\.LOCKED_FB ),
        .\syncstages_ff_reg[0] (\if_reset\.PD_LOCK ));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_advanced_io_wizard_0_0_xpm_cdc_single__3 xpm_cdc_PHY_RDEN
       (.dest_clk(bank0_pll_clkout0),
        .dest_out(NLW_xpm_cdc_PHY_RDEN_dest_out_UNCONNECTED),
        .src_clk(ctrl_clk[0]),
        .src_in(1'b0));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_advanced_io_wizard_0_0_xpm_cdc_single__4 xpm_cdc_PHY_WREN
       (.dest_clk(bank0_pll_clkout0),
        .dest_out(NLW_xpm_cdc_PHY_WREN_dest_out_UNCONNECTED),
        .src_clk(ctrl_clk[0]),
        .src_in(1'b0));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_advanced_io_wizard_0_0_xpm_cdc_single xpm_cdc_RDWR_EN
       (.dest_clk(bank0_pll_clkout0),
        .dest_out(NLW_xpm_cdc_RDWR_EN_dest_out_UNCONNECTED),
        .src_clk(ctrl_clk[0]),
        .src_in(rdwr_en_mux_sel_all));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module design_1_advanced_io_wizard_0_0_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire [0:0]p_0_in;
  wire src_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [1:0]syncstages_ff;

  assign dest_out = syncstages_ff[1];
  FDRE src_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(p_0_in),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module design_1_advanced_io_wizard_0_0_xpm_cdc_single__3
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire [0:0]p_0_in;
  wire src_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [1:0]syncstages_ff;

  assign dest_out = syncstages_ff[1];
  FDRE src_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(p_0_in),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module design_1_advanced_io_wizard_0_0_xpm_cdc_single__4
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire [0:0]p_0_in;
  wire src_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [1:0]syncstages_ff;

  assign dest_out = syncstages_ff[1];
  FDRE src_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(p_0_in),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module design_1_advanced_io_wizard_0_0_xpm_cdc_single__parameterized0
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [1:0]syncstages_ff;

  assign dest_out = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module design_1_advanced_io_wizard_0_0_xpm_cdc_single__parameterized0__4
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [1:0]syncstages_ff;

  assign dest_out = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module design_1_advanced_io_wizard_0_0_xpm_cdc_single__parameterized0__5
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [1:0]syncstages_ff;

  assign dest_out = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module design_1_advanced_io_wizard_0_0_xpm_cdc_single__parameterized0__6
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [1:0]syncstages_ff;

  assign dest_out = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "2" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module design_1_advanced_io_wizard_0_0_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
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
