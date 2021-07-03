//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.3 (win64) Build 3173277 Wed Apr  7 05:07:49 MDT 2021
//Date        : Sun Jun 20 17:43:59 2021
//Host        : alexk-laptop running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (COMe_VSL_PCIE_grx_n,
    COMe_VSL_PCIE_grx_p,
    COMe_VSL_PCIE_gtx_n,
    COMe_VSL_PCIE_gtx_p,
    OMe_VSL1_PCIE_grx_n,
    OMe_VSL1_PCIE_grx_p,
    OMe_VSL1_PCIE_gtx_n,
    OMe_VSL1_PCIE_gtx_p,
    PCIe_0_REFCLK_clk_n,
    PCIe_0_REFCLK_clk_p,
    PCIe_1_REFCLK_clk_n,
    PCIe_1_REFCLK_clk_p,
    VSL_DIMM0_REF_CLK_clk_n,
    VSL_DIMM0_REF_CLK_clk_p,
    VSL_DIMM0_act_n,
    VSL_DIMM0_adr,
    VSL_DIMM0_ba,
    VSL_DIMM0_bg,
    VSL_DIMM0_ck_c,
    VSL_DIMM0_ck_t,
    VSL_DIMM0_cke,
    VSL_DIMM0_cs_n,
    VSL_DIMM0_dm_n,
    VSL_DIMM0_dq,
    VSL_DIMM0_dqs_c,
    VSL_DIMM0_dqs_t,
    VSL_DIMM0_odt,
    VSL_DIMM0_reset_n,
    VSL_DIMM1_REF_CLK_clk_n,
    VSL_DIMM1_REF_CLK_clk_p,
    VSL_DIMM1_act_n,
    VSL_DIMM1_adr,
    VSL_DIMM1_ba,
    VSL_DIMM1_bg,
    VSL_DIMM1_ck_c,
    VSL_DIMM1_ck_t,
    VSL_DIMM1_cke,
    VSL_DIMM1_cs_n,
    VSL_DIMM1_dm_n,
    VSL_DIMM1_dq,
    VSL_DIMM1_dqs_c,
    VSL_DIMM1_dqs_t,
    VSL_DIMM1_odt,
    VSL_DIMM1_reset_n,
    VSL_DIMM2_REF_CLK_clk_n,
    VSL_DIMM2_REF_CLK_clk_p,
    VSL_DIMM2_act_n,
    VSL_DIMM2_adr,
    VSL_DIMM2_ba,
    VSL_DIMM2_bg,
    VSL_DIMM2_ck_c,
    VSL_DIMM2_ck_t,
    VSL_DIMM2_cke,
    VSL_DIMM2_cs_n,
    VSL_DIMM2_dm_n,
    VSL_DIMM2_dq,
    VSL_DIMM2_dqs_c,
    VSL_DIMM2_dqs_t,
    VSL_DIMM2_odt,
    VSL_DIMM2_reset_n);
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 COMe_VSL_PCIE GRX_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME COMe_VSL_PCIE, CAN_DEBUG false" *) input [7:0]COMe_VSL_PCIE_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 COMe_VSL_PCIE GRX_P" *) input [7:0]COMe_VSL_PCIE_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 COMe_VSL_PCIE GTX_N" *) output [7:0]COMe_VSL_PCIE_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 COMe_VSL_PCIE GTX_P" *) output [7:0]COMe_VSL_PCIE_gtx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 OMe_VSL1_PCIE GRX_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME OMe_VSL1_PCIE, CAN_DEBUG false" *) input [7:0]OMe_VSL1_PCIE_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 OMe_VSL1_PCIE GRX_P" *) input [7:0]OMe_VSL1_PCIE_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 OMe_VSL1_PCIE GTX_N" *) output [7:0]OMe_VSL1_PCIE_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 OMe_VSL1_PCIE GTX_P" *) output [7:0]OMe_VSL1_PCIE_gtx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 PCIe_0_REFCLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PCIe_0_REFCLK, CAN_DEBUG false, FREQ_HZ 100000000" *) input PCIe_0_REFCLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 PCIe_0_REFCLK CLK_P" *) input PCIe_0_REFCLK_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 PCIe_1_REFCLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PCIe_1_REFCLK, CAN_DEBUG false, FREQ_HZ 100000000" *) input PCIe_1_REFCLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 PCIe_1_REFCLK CLK_P" *) input PCIe_1_REFCLK_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 VSL_DIMM0_REF_CLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME VSL_DIMM0_REF_CLK, CAN_DEBUG false, FREQ_HZ 250000000" *) input [0:0]VSL_DIMM0_REF_CLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 VSL_DIMM0_REF_CLK CLK_P" *) input [0:0]VSL_DIMM0_REF_CLK_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM0 ACT_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME VSL_DIMM0, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) output [0:0]VSL_DIMM0_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM0 ADR" *) output [16:0]VSL_DIMM0_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM0 BA" *) output [1:0]VSL_DIMM0_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM0 BG" *) output [1:0]VSL_DIMM0_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM0 CK_C" *) output [1:0]VSL_DIMM0_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM0 CK_T" *) output [1:0]VSL_DIMM0_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM0 CKE" *) output [1:0]VSL_DIMM0_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM0 CS_N" *) output [1:0]VSL_DIMM0_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM0 DM_N" *) inout [8:0]VSL_DIMM0_dm_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM0 DQ" *) inout [71:0]VSL_DIMM0_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM0 DQS_C" *) inout [8:0]VSL_DIMM0_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM0 DQS_T" *) inout [8:0]VSL_DIMM0_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM0 ODT" *) output [1:0]VSL_DIMM0_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM0 RESET_N" *) output [0:0]VSL_DIMM0_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 VSL_DIMM1_REF_CLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME VSL_DIMM1_REF_CLK, CAN_DEBUG false, FREQ_HZ 250000000" *) input [0:0]VSL_DIMM1_REF_CLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 VSL_DIMM1_REF_CLK CLK_P" *) input [0:0]VSL_DIMM1_REF_CLK_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM1 ACT_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME VSL_DIMM1, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) output [0:0]VSL_DIMM1_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM1 ADR" *) output [16:0]VSL_DIMM1_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM1 BA" *) output [1:0]VSL_DIMM1_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM1 BG" *) output [1:0]VSL_DIMM1_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM1 CK_C" *) output [1:0]VSL_DIMM1_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM1 CK_T" *) output [1:0]VSL_DIMM1_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM1 CKE" *) output [1:0]VSL_DIMM1_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM1 CS_N" *) output [1:0]VSL_DIMM1_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM1 DM_N" *) inout [8:0]VSL_DIMM1_dm_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM1 DQ" *) inout [71:0]VSL_DIMM1_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM1 DQS_C" *) inout [8:0]VSL_DIMM1_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM1 DQS_T" *) inout [8:0]VSL_DIMM1_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM1 ODT" *) output [1:0]VSL_DIMM1_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM1 RESET_N" *) output [0:0]VSL_DIMM1_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 VSL_DIMM2_REF_CLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME VSL_DIMM2_REF_CLK, CAN_DEBUG false, FREQ_HZ 250000000" *) input [0:0]VSL_DIMM2_REF_CLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 VSL_DIMM2_REF_CLK CLK_P" *) input [0:0]VSL_DIMM2_REF_CLK_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM2 ACT_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME VSL_DIMM2, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) output [0:0]VSL_DIMM2_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM2 ADR" *) output [16:0]VSL_DIMM2_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM2 BA" *) output [1:0]VSL_DIMM2_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM2 BG" *) output [1:0]VSL_DIMM2_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM2 CK_C" *) output [1:0]VSL_DIMM2_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM2 CK_T" *) output [1:0]VSL_DIMM2_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM2 CKE" *) output [1:0]VSL_DIMM2_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM2 CS_N" *) output [1:0]VSL_DIMM2_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM2 DM_N" *) inout [8:0]VSL_DIMM2_dm_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM2 DQ" *) inout [71:0]VSL_DIMM2_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM2 DQS_C" *) inout [8:0]VSL_DIMM2_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM2 DQS_T" *) inout [8:0]VSL_DIMM2_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM2 ODT" *) output [1:0]VSL_DIMM2_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 VSL_DIMM2 RESET_N" *) output [0:0]VSL_DIMM2_reset_n;

  wire [0:0]axi_noc_0_CH0_DDR4_0_ACT_N;
  wire [16:0]axi_noc_0_CH0_DDR4_0_ADR;
  wire [1:0]axi_noc_0_CH0_DDR4_0_BA;
  wire [1:0]axi_noc_0_CH0_DDR4_0_BG;
  wire [1:0]axi_noc_0_CH0_DDR4_0_CKE;
  wire [1:0]axi_noc_0_CH0_DDR4_0_CK_C;
  wire [1:0]axi_noc_0_CH0_DDR4_0_CK_T;
  wire [1:0]axi_noc_0_CH0_DDR4_0_CS_N;
  wire [8:0]axi_noc_0_CH0_DDR4_0_DM_N;
  wire [71:0]axi_noc_0_CH0_DDR4_0_DQ;
  wire [8:0]axi_noc_0_CH0_DDR4_0_DQS_C;
  wire [8:0]axi_noc_0_CH0_DDR4_0_DQS_T;
  wire [1:0]axi_noc_0_CH0_DDR4_0_ODT;
  wire [0:0]axi_noc_0_CH0_DDR4_0_RESET_N;
  wire [0:0]axi_noc_0_M00_INI_INTERNOC;
  wire [0:0]axi_noc_0_M01_INI_INTERNOC;
  wire [0:0]axi_noc_0_M02_INI_INTERNOC;
  wire [0:0]axi_noc_0_M03_INI_INTERNOC;
  wire [0:0]axi_noc_2_CH0_DDR4_0_ACT_N;
  wire [16:0]axi_noc_2_CH0_DDR4_0_ADR;
  wire [1:0]axi_noc_2_CH0_DDR4_0_BA;
  wire [1:0]axi_noc_2_CH0_DDR4_0_BG;
  wire [1:0]axi_noc_2_CH0_DDR4_0_CKE;
  wire [1:0]axi_noc_2_CH0_DDR4_0_CK_C;
  wire [1:0]axi_noc_2_CH0_DDR4_0_CK_T;
  wire [1:0]axi_noc_2_CH0_DDR4_0_CS_N;
  wire [8:0]axi_noc_2_CH0_DDR4_0_DM_N;
  wire [71:0]axi_noc_2_CH0_DDR4_0_DQ;
  wire [8:0]axi_noc_2_CH0_DDR4_0_DQS_C;
  wire [8:0]axi_noc_2_CH0_DDR4_0_DQS_T;
  wire [1:0]axi_noc_2_CH0_DDR4_0_ODT;
  wire [0:0]axi_noc_2_CH0_DDR4_0_RESET_N;
  wire [0:0]axi_noc_2_CH0_DDR4_1_ACT_N;
  wire [16:0]axi_noc_2_CH0_DDR4_1_ADR;
  wire [1:0]axi_noc_2_CH0_DDR4_1_BA;
  wire [1:0]axi_noc_2_CH0_DDR4_1_BG;
  wire [1:0]axi_noc_2_CH0_DDR4_1_CKE;
  wire [1:0]axi_noc_2_CH0_DDR4_1_CK_C;
  wire [1:0]axi_noc_2_CH0_DDR4_1_CK_T;
  wire [1:0]axi_noc_2_CH0_DDR4_1_CS_N;
  wire [8:0]axi_noc_2_CH0_DDR4_1_DM_N;
  wire [71:0]axi_noc_2_CH0_DDR4_1_DQ;
  wire [8:0]axi_noc_2_CH0_DDR4_1_DQS_C;
  wire [8:0]axi_noc_2_CH0_DDR4_1_DQS_T;
  wire [1:0]axi_noc_2_CH0_DDR4_1_ODT;
  wire [0:0]axi_noc_2_CH0_DDR4_1_RESET_N;
  wire gt_refclk0_0_1_CLK_N;
  wire gt_refclk0_0_1_CLK_P;
  wire gt_refclk1_0_1_CLK_N;
  wire gt_refclk1_0_1_CLK_P;
  wire [0:0]sys_clk0_0_1_CLK_N;
  wire [0:0]sys_clk0_0_1_CLK_P;
  wire [0:0]sys_clk0_0_3_CLK_N;
  wire [0:0]sys_clk0_0_3_CLK_P;
  wire [0:0]sys_clk1_0_1_CLK_N;
  wire [0:0]sys_clk1_0_1_CLK_P;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_CPM_PCIE_NOC_0_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_CPM_PCIE_NOC_0_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_CPM_PCIE_NOC_0_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_CPM_PCIE_NOC_0_ARID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_CPM_PCIE_NOC_0_ARLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_0_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_CPM_PCIE_NOC_0_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_CPM_PCIE_NOC_0_ARQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_0_ARREADY;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_CPM_PCIE_NOC_0_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_CPM_PCIE_NOC_0_ARUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_0_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_CPM_PCIE_NOC_0_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_CPM_PCIE_NOC_0_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_CPM_PCIE_NOC_0_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_CPM_PCIE_NOC_0_AWID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_CPM_PCIE_NOC_0_AWLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_0_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_CPM_PCIE_NOC_0_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_CPM_PCIE_NOC_0_AWQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_0_AWREADY;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_CPM_PCIE_NOC_0_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_CPM_PCIE_NOC_0_AWUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_0_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_CPM_PCIE_NOC_0_BID;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_0_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_CPM_PCIE_NOC_0_BRESP;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_0_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_CPM_PCIE_NOC_0_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_CPM_PCIE_NOC_0_RID;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_0_RLAST;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_0_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_CPM_PCIE_NOC_0_RRESP;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_0_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_CPM_PCIE_NOC_0_WDATA;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_0_WLAST;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_0_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_CPM_PCIE_NOC_0_WSTRB;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_0_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_CPM_PCIE_NOC_1_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_CPM_PCIE_NOC_1_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_CPM_PCIE_NOC_1_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_CPM_PCIE_NOC_1_ARID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_CPM_PCIE_NOC_1_ARLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_1_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_CPM_PCIE_NOC_1_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_CPM_PCIE_NOC_1_ARQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_1_ARREADY;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_CPM_PCIE_NOC_1_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_CPM_PCIE_NOC_1_ARUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_1_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_CPM_PCIE_NOC_1_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_CPM_PCIE_NOC_1_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_CPM_PCIE_NOC_1_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_CPM_PCIE_NOC_1_AWID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_CPM_PCIE_NOC_1_AWLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_1_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_CPM_PCIE_NOC_1_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_CPM_PCIE_NOC_1_AWQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_1_AWREADY;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_CPM_PCIE_NOC_1_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_CPM_PCIE_NOC_1_AWUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_1_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_CPM_PCIE_NOC_1_BID;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_1_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_CPM_PCIE_NOC_1_BRESP;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_1_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_CPM_PCIE_NOC_1_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_CPM_PCIE_NOC_1_RID;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_1_RLAST;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_1_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_CPM_PCIE_NOC_1_RRESP;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_1_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_CPM_PCIE_NOC_1_WDATA;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_1_WLAST;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_CPM_PCIE_NOC_1_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_CPM_PCIE_NOC_1_WSTRB;
  (* HARD_CONN = "true" *) wire versal_cips_0_CPM_PCIE_NOC_1_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_FPD_AXI_NOC_0_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_AXI_NOC_0_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_AXI_NOC_0_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_AXI_NOC_0_ARID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_FPD_AXI_NOC_0_ARLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_AXI_NOC_0_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_AXI_NOC_0_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_AXI_NOC_0_ARQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_AXI_NOC_0_ARREADY;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_AXI_NOC_0_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_FPD_AXI_NOC_0_ARUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_AXI_NOC_0_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_FPD_AXI_NOC_0_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_AXI_NOC_0_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_AXI_NOC_0_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_AXI_NOC_0_AWID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_FPD_AXI_NOC_0_AWLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_AXI_NOC_0_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_AXI_NOC_0_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_AXI_NOC_0_AWQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_AXI_NOC_0_AWREADY;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_AXI_NOC_0_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_FPD_AXI_NOC_0_AWUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_AXI_NOC_0_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_AXI_NOC_0_BID;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_AXI_NOC_0_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_AXI_NOC_0_BRESP;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_AXI_NOC_0_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_FPD_AXI_NOC_0_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_AXI_NOC_0_RID;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_AXI_NOC_0_RLAST;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_AXI_NOC_0_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_AXI_NOC_0_RRESP;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_AXI_NOC_0_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_FPD_AXI_NOC_0_WDATA;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_AXI_NOC_0_WLAST;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_AXI_NOC_0_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_AXI_NOC_0_WSTRB;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_AXI_NOC_0_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_FPD_CCI_NOC_0_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_CCI_NOC_0_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_CCI_NOC_0_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_0_ARID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_FPD_CCI_NOC_0_ARLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_0_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_CCI_NOC_0_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_CCI_NOC_0_ARQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_0_ARREADY;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_CCI_NOC_0_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_FPD_CCI_NOC_0_ARUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_0_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_FPD_CCI_NOC_0_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_CCI_NOC_0_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_CCI_NOC_0_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_0_AWID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_FPD_CCI_NOC_0_AWLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_0_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_CCI_NOC_0_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_CCI_NOC_0_AWQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_0_AWREADY;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_CCI_NOC_0_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_FPD_CCI_NOC_0_AWUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_0_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_0_BID;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_0_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_CCI_NOC_0_BRESP;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_0_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_FPD_CCI_NOC_0_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_0_RID;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_0_RLAST;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_0_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_CCI_NOC_0_RRESP;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_0_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_FPD_CCI_NOC_0_WDATA;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_0_WLAST;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_0_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_0_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]versal_cips_0_FPD_CCI_NOC_0_WUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_0_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_FPD_CCI_NOC_1_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_CCI_NOC_1_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_CCI_NOC_1_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_1_ARID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_FPD_CCI_NOC_1_ARLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_1_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_CCI_NOC_1_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_CCI_NOC_1_ARQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_1_ARREADY;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_CCI_NOC_1_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_FPD_CCI_NOC_1_ARUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_1_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_FPD_CCI_NOC_1_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_CCI_NOC_1_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_CCI_NOC_1_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_1_AWID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_FPD_CCI_NOC_1_AWLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_1_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_CCI_NOC_1_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_CCI_NOC_1_AWQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_1_AWREADY;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_CCI_NOC_1_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_FPD_CCI_NOC_1_AWUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_1_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_1_BID;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_1_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_CCI_NOC_1_BRESP;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_1_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_FPD_CCI_NOC_1_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_1_RID;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_1_RLAST;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_1_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_CCI_NOC_1_RRESP;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_1_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_FPD_CCI_NOC_1_WDATA;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_1_WLAST;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_1_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_1_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]versal_cips_0_FPD_CCI_NOC_1_WUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_1_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_FPD_CCI_NOC_2_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_CCI_NOC_2_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_CCI_NOC_2_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_2_ARID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_FPD_CCI_NOC_2_ARLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_2_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_CCI_NOC_2_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_CCI_NOC_2_ARQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_2_ARREADY;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_CCI_NOC_2_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_FPD_CCI_NOC_2_ARUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_2_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_FPD_CCI_NOC_2_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_CCI_NOC_2_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_CCI_NOC_2_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_2_AWID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_FPD_CCI_NOC_2_AWLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_2_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_CCI_NOC_2_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_CCI_NOC_2_AWQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_2_AWREADY;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_CCI_NOC_2_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_FPD_CCI_NOC_2_AWUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_2_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_2_BID;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_2_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_CCI_NOC_2_BRESP;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_2_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_FPD_CCI_NOC_2_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_2_RID;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_2_RLAST;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_2_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_CCI_NOC_2_RRESP;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_2_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_FPD_CCI_NOC_2_WDATA;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_2_WLAST;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_2_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_2_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]versal_cips_0_FPD_CCI_NOC_2_WUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_2_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_FPD_CCI_NOC_3_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_CCI_NOC_3_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_CCI_NOC_3_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_3_ARID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_FPD_CCI_NOC_3_ARLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_3_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_CCI_NOC_3_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_CCI_NOC_3_ARQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_3_ARREADY;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_CCI_NOC_3_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_FPD_CCI_NOC_3_ARUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_3_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_FPD_CCI_NOC_3_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_CCI_NOC_3_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_CCI_NOC_3_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_3_AWID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_FPD_CCI_NOC_3_AWLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_3_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_CCI_NOC_3_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_FPD_CCI_NOC_3_AWQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_3_AWREADY;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_FPD_CCI_NOC_3_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_FPD_CCI_NOC_3_AWUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_3_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_3_BID;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_3_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_CCI_NOC_3_BRESP;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_3_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_FPD_CCI_NOC_3_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_3_RID;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_3_RLAST;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_3_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_FPD_CCI_NOC_3_RRESP;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_3_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_FPD_CCI_NOC_3_WDATA;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_3_WLAST;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_FPD_CCI_NOC_3_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_FPD_CCI_NOC_3_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]versal_cips_0_FPD_CCI_NOC_3_WUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_FPD_CCI_NOC_3_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_NOC_LPD_AXI_0_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_NOC_LPD_AXI_0_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_NOC_LPD_AXI_0_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_NOC_LPD_AXI_0_ARID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_NOC_LPD_AXI_0_ARLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_NOC_LPD_AXI_0_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_NOC_LPD_AXI_0_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_NOC_LPD_AXI_0_ARQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_NOC_LPD_AXI_0_ARREADY;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_NOC_LPD_AXI_0_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_NOC_LPD_AXI_0_ARUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_NOC_LPD_AXI_0_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_NOC_LPD_AXI_0_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_NOC_LPD_AXI_0_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_NOC_LPD_AXI_0_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_NOC_LPD_AXI_0_AWID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_NOC_LPD_AXI_0_AWLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_NOC_LPD_AXI_0_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_NOC_LPD_AXI_0_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_NOC_LPD_AXI_0_AWQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_NOC_LPD_AXI_0_AWREADY;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_NOC_LPD_AXI_0_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_NOC_LPD_AXI_0_AWUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_NOC_LPD_AXI_0_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_NOC_LPD_AXI_0_BID;
  (* HARD_CONN = "true" *) wire versal_cips_0_NOC_LPD_AXI_0_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_NOC_LPD_AXI_0_BRESP;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_NOC_LPD_AXI_0_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_NOC_LPD_AXI_0_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_NOC_LPD_AXI_0_RID;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_NOC_LPD_AXI_0_RLAST;
  (* HARD_CONN = "true" *) wire versal_cips_0_NOC_LPD_AXI_0_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_NOC_LPD_AXI_0_RRESP;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_NOC_LPD_AXI_0_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_NOC_LPD_AXI_0_WDATA;
  (* HARD_CONN = "true" *) wire versal_cips_0_NOC_LPD_AXI_0_WLAST;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_NOC_LPD_AXI_0_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_NOC_LPD_AXI_0_WSTRB;
  (* HARD_CONN = "true" *) wire versal_cips_0_NOC_LPD_AXI_0_WVALID;
  wire [7:0]versal_cips_0_PCIE0_GT_GRX_N;
  wire [7:0]versal_cips_0_PCIE0_GT_GRX_P;
  wire [7:0]versal_cips_0_PCIE0_GT_GTX_N;
  wire [7:0]versal_cips_0_PCIE0_GT_GTX_P;
  wire [7:0]versal_cips_0_PCIE1_GT_GRX_N;
  wire [7:0]versal_cips_0_PCIE1_GT_GRX_P;
  wire [7:0]versal_cips_0_PCIE1_GT_GTX_N;
  wire [7:0]versal_cips_0_PCIE1_GT_GTX_P;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_PMC_NOC_AXI_0_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_PMC_NOC_AXI_0_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_PMC_NOC_AXI_0_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_PMC_NOC_AXI_0_ARID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_PMC_NOC_AXI_0_ARLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_PMC_NOC_AXI_0_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_PMC_NOC_AXI_0_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_PMC_NOC_AXI_0_ARQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_PMC_NOC_AXI_0_ARREADY;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_PMC_NOC_AXI_0_ARREGION;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_PMC_NOC_AXI_0_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_PMC_NOC_AXI_0_ARUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_PMC_NOC_AXI_0_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]versal_cips_0_PMC_NOC_AXI_0_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_PMC_NOC_AXI_0_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_PMC_NOC_AXI_0_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_PMC_NOC_AXI_0_AWID;
  (* HARD_CONN = "true" *) wire [7:0]versal_cips_0_PMC_NOC_AXI_0_AWLEN;
  (* HARD_CONN = "true" *) wire versal_cips_0_PMC_NOC_AXI_0_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_PMC_NOC_AXI_0_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_PMC_NOC_AXI_0_AWQOS;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_PMC_NOC_AXI_0_AWREADY;
  (* HARD_CONN = "true" *) wire [3:0]versal_cips_0_PMC_NOC_AXI_0_AWREGION;
  (* HARD_CONN = "true" *) wire [2:0]versal_cips_0_PMC_NOC_AXI_0_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]versal_cips_0_PMC_NOC_AXI_0_AWUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_PMC_NOC_AXI_0_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_PMC_NOC_AXI_0_BID;
  (* HARD_CONN = "true" *) wire versal_cips_0_PMC_NOC_AXI_0_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_PMC_NOC_AXI_0_BRESP;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_PMC_NOC_AXI_0_BUSER;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_PMC_NOC_AXI_0_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_PMC_NOC_AXI_0_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_PMC_NOC_AXI_0_RID;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_PMC_NOC_AXI_0_RLAST;
  (* HARD_CONN = "true" *) wire versal_cips_0_PMC_NOC_AXI_0_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]versal_cips_0_PMC_NOC_AXI_0_RRESP;
  (* HARD_CONN = "true" *) wire [16:0]versal_cips_0_PMC_NOC_AXI_0_RUSER;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_PMC_NOC_AXI_0_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]versal_cips_0_PMC_NOC_AXI_0_WDATA;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_PMC_NOC_AXI_0_WID;
  (* HARD_CONN = "true" *) wire versal_cips_0_PMC_NOC_AXI_0_WLAST;
  (* HARD_CONN = "true" *) wire [0:0]versal_cips_0_PMC_NOC_AXI_0_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]versal_cips_0_PMC_NOC_AXI_0_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]versal_cips_0_PMC_NOC_AXI_0_WUSER;
  (* HARD_CONN = "true" *) wire versal_cips_0_PMC_NOC_AXI_0_WVALID;
  (* HARD_CONN = "true" *) wire versal_cips_0_cpm_pcie_noc_axi0_clk;
  (* HARD_CONN = "true" *) wire versal_cips_0_cpm_pcie_noc_axi1_clk;
  (* HARD_CONN = "true" *) wire versal_cips_0_fpd_axi_noc_axi0_clk;
  (* HARD_CONN = "true" *) wire versal_cips_0_fpd_cci_noc_axi0_clk;
  (* HARD_CONN = "true" *) wire versal_cips_0_fpd_cci_noc_axi1_clk;
  (* HARD_CONN = "true" *) wire versal_cips_0_fpd_cci_noc_axi2_clk;
  (* HARD_CONN = "true" *) wire versal_cips_0_fpd_cci_noc_axi3_clk;
  (* HARD_CONN = "true" *) wire versal_cips_0_lpd_axi_noc_clk;
  (* HARD_CONN = "true" *) wire versal_cips_0_pmc_axi_noc_axi0_clk;

  assign COMe_VSL_PCIE_gtx_n[7:0] = versal_cips_0_PCIE0_GT_GTX_N;
  assign COMe_VSL_PCIE_gtx_p[7:0] = versal_cips_0_PCIE0_GT_GTX_P;
  assign OMe_VSL1_PCIE_gtx_n[7:0] = versal_cips_0_PCIE1_GT_GTX_N;
  assign OMe_VSL1_PCIE_gtx_p[7:0] = versal_cips_0_PCIE1_GT_GTX_P;
  assign VSL_DIMM0_act_n[0] = axi_noc_0_CH0_DDR4_0_ACT_N;
  assign VSL_DIMM0_adr[16:0] = axi_noc_0_CH0_DDR4_0_ADR;
  assign VSL_DIMM0_ba[1:0] = axi_noc_0_CH0_DDR4_0_BA;
  assign VSL_DIMM0_bg[1:0] = axi_noc_0_CH0_DDR4_0_BG;
  assign VSL_DIMM0_ck_c[1:0] = axi_noc_0_CH0_DDR4_0_CK_C;
  assign VSL_DIMM0_ck_t[1:0] = axi_noc_0_CH0_DDR4_0_CK_T;
  assign VSL_DIMM0_cke[1:0] = axi_noc_0_CH0_DDR4_0_CKE;
  assign VSL_DIMM0_cs_n[1:0] = axi_noc_0_CH0_DDR4_0_CS_N;
  assign VSL_DIMM0_odt[1:0] = axi_noc_0_CH0_DDR4_0_ODT;
  assign VSL_DIMM0_reset_n[0] = axi_noc_0_CH0_DDR4_0_RESET_N;
  assign VSL_DIMM1_act_n[0] = axi_noc_2_CH0_DDR4_0_ACT_N;
  assign VSL_DIMM1_adr[16:0] = axi_noc_2_CH0_DDR4_0_ADR;
  assign VSL_DIMM1_ba[1:0] = axi_noc_2_CH0_DDR4_0_BA;
  assign VSL_DIMM1_bg[1:0] = axi_noc_2_CH0_DDR4_0_BG;
  assign VSL_DIMM1_ck_c[1:0] = axi_noc_2_CH0_DDR4_0_CK_C;
  assign VSL_DIMM1_ck_t[1:0] = axi_noc_2_CH0_DDR4_0_CK_T;
  assign VSL_DIMM1_cke[1:0] = axi_noc_2_CH0_DDR4_0_CKE;
  assign VSL_DIMM1_cs_n[1:0] = axi_noc_2_CH0_DDR4_0_CS_N;
  assign VSL_DIMM1_odt[1:0] = axi_noc_2_CH0_DDR4_0_ODT;
  assign VSL_DIMM1_reset_n[0] = axi_noc_2_CH0_DDR4_0_RESET_N;
  assign VSL_DIMM2_act_n[0] = axi_noc_2_CH0_DDR4_1_ACT_N;
  assign VSL_DIMM2_adr[16:0] = axi_noc_2_CH0_DDR4_1_ADR;
  assign VSL_DIMM2_ba[1:0] = axi_noc_2_CH0_DDR4_1_BA;
  assign VSL_DIMM2_bg[1:0] = axi_noc_2_CH0_DDR4_1_BG;
  assign VSL_DIMM2_ck_c[1:0] = axi_noc_2_CH0_DDR4_1_CK_C;
  assign VSL_DIMM2_ck_t[1:0] = axi_noc_2_CH0_DDR4_1_CK_T;
  assign VSL_DIMM2_cke[1:0] = axi_noc_2_CH0_DDR4_1_CKE;
  assign VSL_DIMM2_cs_n[1:0] = axi_noc_2_CH0_DDR4_1_CS_N;
  assign VSL_DIMM2_odt[1:0] = axi_noc_2_CH0_DDR4_1_ODT;
  assign VSL_DIMM2_reset_n[0] = axi_noc_2_CH0_DDR4_1_RESET_N;
  assign gt_refclk0_0_1_CLK_N = PCIe_0_REFCLK_clk_n;
  assign gt_refclk0_0_1_CLK_P = PCIe_0_REFCLK_clk_p;
  assign gt_refclk1_0_1_CLK_N = PCIe_1_REFCLK_clk_n;
  assign gt_refclk1_0_1_CLK_P = PCIe_1_REFCLK_clk_p;
  assign sys_clk0_0_1_CLK_N = VSL_DIMM0_REF_CLK_clk_n[0];
  assign sys_clk0_0_1_CLK_P = VSL_DIMM0_REF_CLK_clk_p[0];
  assign sys_clk0_0_3_CLK_N = VSL_DIMM1_REF_CLK_clk_n[0];
  assign sys_clk0_0_3_CLK_P = VSL_DIMM1_REF_CLK_clk_p[0];
  assign sys_clk1_0_1_CLK_N = VSL_DIMM2_REF_CLK_clk_n[0];
  assign sys_clk1_0_1_CLK_P = VSL_DIMM2_REF_CLK_clk_p[0];
  assign versal_cips_0_PCIE0_GT_GRX_N = COMe_VSL_PCIE_grx_n[7:0];
  assign versal_cips_0_PCIE0_GT_GRX_P = COMe_VSL_PCIE_grx_p[7:0];
  assign versal_cips_0_PCIE1_GT_GRX_N = OMe_VSL1_PCIE_grx_n[7:0];
  assign versal_cips_0_PCIE1_GT_GRX_P = OMe_VSL1_PCIE_grx_p[7:0];
  design_1_axi_noc_0_0 axi_noc_0
       (.CH0_DDR4_0_act_n(axi_noc_0_CH0_DDR4_0_ACT_N),
        .CH0_DDR4_0_adr(axi_noc_0_CH0_DDR4_0_ADR),
        .CH0_DDR4_0_ba(axi_noc_0_CH0_DDR4_0_BA),
        .CH0_DDR4_0_bg(axi_noc_0_CH0_DDR4_0_BG),
        .CH0_DDR4_0_ck_c(axi_noc_0_CH0_DDR4_0_CK_C),
        .CH0_DDR4_0_ck_t(axi_noc_0_CH0_DDR4_0_CK_T),
        .CH0_DDR4_0_cke(axi_noc_0_CH0_DDR4_0_CKE),
        .CH0_DDR4_0_cs_n(axi_noc_0_CH0_DDR4_0_CS_N),
        .CH0_DDR4_0_dm_n(VSL_DIMM0_dm_n[8:0]),
        .CH0_DDR4_0_dq(VSL_DIMM0_dq[71:0]),
        .CH0_DDR4_0_dqs_c(VSL_DIMM0_dqs_c[8:0]),
        .CH0_DDR4_0_dqs_t(VSL_DIMM0_dqs_t[8:0]),
        .CH0_DDR4_0_odt(axi_noc_0_CH0_DDR4_0_ODT),
        .CH0_DDR4_0_reset_n(axi_noc_0_CH0_DDR4_0_RESET_N),
        .M00_INI_internoc(axi_noc_0_M00_INI_INTERNOC),
        .M01_INI_internoc(axi_noc_0_M01_INI_INTERNOC),
        .M02_INI_internoc(axi_noc_0_M02_INI_INTERNOC),
        .M03_INI_internoc(axi_noc_0_M03_INI_INTERNOC),
        .S00_AXI_araddr(versal_cips_0_FPD_CCI_NOC_0_ARADDR),
        .S00_AXI_arburst(versal_cips_0_FPD_CCI_NOC_0_ARBURST),
        .S00_AXI_arcache(versal_cips_0_FPD_CCI_NOC_0_ARCACHE),
        .S00_AXI_arid(versal_cips_0_FPD_CCI_NOC_0_ARID),
        .S00_AXI_arlen(versal_cips_0_FPD_CCI_NOC_0_ARLEN),
        .S00_AXI_arlock(versal_cips_0_FPD_CCI_NOC_0_ARLOCK),
        .S00_AXI_arprot(versal_cips_0_FPD_CCI_NOC_0_ARPROT),
        .S00_AXI_arqos(versal_cips_0_FPD_CCI_NOC_0_ARQOS),
        .S00_AXI_arready(versal_cips_0_FPD_CCI_NOC_0_ARREADY),
        .S00_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arsize(versal_cips_0_FPD_CCI_NOC_0_ARSIZE),
        .S00_AXI_aruser(versal_cips_0_FPD_CCI_NOC_0_ARUSER),
        .S00_AXI_arvalid(versal_cips_0_FPD_CCI_NOC_0_ARVALID),
        .S00_AXI_awaddr(versal_cips_0_FPD_CCI_NOC_0_AWADDR),
        .S00_AXI_awburst(versal_cips_0_FPD_CCI_NOC_0_AWBURST),
        .S00_AXI_awcache(versal_cips_0_FPD_CCI_NOC_0_AWCACHE),
        .S00_AXI_awid(versal_cips_0_FPD_CCI_NOC_0_AWID),
        .S00_AXI_awlen(versal_cips_0_FPD_CCI_NOC_0_AWLEN),
        .S00_AXI_awlock(versal_cips_0_FPD_CCI_NOC_0_AWLOCK),
        .S00_AXI_awprot(versal_cips_0_FPD_CCI_NOC_0_AWPROT),
        .S00_AXI_awqos(versal_cips_0_FPD_CCI_NOC_0_AWQOS),
        .S00_AXI_awready(versal_cips_0_FPD_CCI_NOC_0_AWREADY),
        .S00_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awsize(versal_cips_0_FPD_CCI_NOC_0_AWSIZE),
        .S00_AXI_awuser(versal_cips_0_FPD_CCI_NOC_0_AWUSER),
        .S00_AXI_awvalid(versal_cips_0_FPD_CCI_NOC_0_AWVALID),
        .S00_AXI_bid(versal_cips_0_FPD_CCI_NOC_0_BID),
        .S00_AXI_bready(versal_cips_0_FPD_CCI_NOC_0_BREADY),
        .S00_AXI_bresp(versal_cips_0_FPD_CCI_NOC_0_BRESP),
        .S00_AXI_bvalid(versal_cips_0_FPD_CCI_NOC_0_BVALID),
        .S00_AXI_rdata(versal_cips_0_FPD_CCI_NOC_0_RDATA),
        .S00_AXI_rid(versal_cips_0_FPD_CCI_NOC_0_RID),
        .S00_AXI_rlast(versal_cips_0_FPD_CCI_NOC_0_RLAST),
        .S00_AXI_rready(versal_cips_0_FPD_CCI_NOC_0_RREADY),
        .S00_AXI_rresp(versal_cips_0_FPD_CCI_NOC_0_RRESP),
        .S00_AXI_rvalid(versal_cips_0_FPD_CCI_NOC_0_RVALID),
        .S00_AXI_wdata(versal_cips_0_FPD_CCI_NOC_0_WDATA),
        .S00_AXI_wid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_wlast(versal_cips_0_FPD_CCI_NOC_0_WLAST),
        .S00_AXI_wready(versal_cips_0_FPD_CCI_NOC_0_WREADY),
        .S00_AXI_wstrb(versal_cips_0_FPD_CCI_NOC_0_WSTRB),
        .S00_AXI_wuser(versal_cips_0_FPD_CCI_NOC_0_WUSER),
        .S00_AXI_wvalid(versal_cips_0_FPD_CCI_NOC_0_WVALID),
        .S01_AXI_araddr(versal_cips_0_FPD_CCI_NOC_1_ARADDR),
        .S01_AXI_arburst(versal_cips_0_FPD_CCI_NOC_1_ARBURST),
        .S01_AXI_arcache(versal_cips_0_FPD_CCI_NOC_1_ARCACHE),
        .S01_AXI_arid(versal_cips_0_FPD_CCI_NOC_1_ARID),
        .S01_AXI_arlen(versal_cips_0_FPD_CCI_NOC_1_ARLEN),
        .S01_AXI_arlock(versal_cips_0_FPD_CCI_NOC_1_ARLOCK),
        .S01_AXI_arprot(versal_cips_0_FPD_CCI_NOC_1_ARPROT),
        .S01_AXI_arqos(versal_cips_0_FPD_CCI_NOC_1_ARQOS),
        .S01_AXI_arready(versal_cips_0_FPD_CCI_NOC_1_ARREADY),
        .S01_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_arsize(versal_cips_0_FPD_CCI_NOC_1_ARSIZE),
        .S01_AXI_aruser(versal_cips_0_FPD_CCI_NOC_1_ARUSER),
        .S01_AXI_arvalid(versal_cips_0_FPD_CCI_NOC_1_ARVALID),
        .S01_AXI_awaddr(versal_cips_0_FPD_CCI_NOC_1_AWADDR),
        .S01_AXI_awburst(versal_cips_0_FPD_CCI_NOC_1_AWBURST),
        .S01_AXI_awcache(versal_cips_0_FPD_CCI_NOC_1_AWCACHE),
        .S01_AXI_awid(versal_cips_0_FPD_CCI_NOC_1_AWID),
        .S01_AXI_awlen(versal_cips_0_FPD_CCI_NOC_1_AWLEN),
        .S01_AXI_awlock(versal_cips_0_FPD_CCI_NOC_1_AWLOCK),
        .S01_AXI_awprot(versal_cips_0_FPD_CCI_NOC_1_AWPROT),
        .S01_AXI_awqos(versal_cips_0_FPD_CCI_NOC_1_AWQOS),
        .S01_AXI_awready(versal_cips_0_FPD_CCI_NOC_1_AWREADY),
        .S01_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_awsize(versal_cips_0_FPD_CCI_NOC_1_AWSIZE),
        .S01_AXI_awuser(versal_cips_0_FPD_CCI_NOC_1_AWUSER),
        .S01_AXI_awvalid(versal_cips_0_FPD_CCI_NOC_1_AWVALID),
        .S01_AXI_bid(versal_cips_0_FPD_CCI_NOC_1_BID),
        .S01_AXI_bready(versal_cips_0_FPD_CCI_NOC_1_BREADY),
        .S01_AXI_bresp(versal_cips_0_FPD_CCI_NOC_1_BRESP),
        .S01_AXI_bvalid(versal_cips_0_FPD_CCI_NOC_1_BVALID),
        .S01_AXI_rdata(versal_cips_0_FPD_CCI_NOC_1_RDATA),
        .S01_AXI_rid(versal_cips_0_FPD_CCI_NOC_1_RID),
        .S01_AXI_rlast(versal_cips_0_FPD_CCI_NOC_1_RLAST),
        .S01_AXI_rready(versal_cips_0_FPD_CCI_NOC_1_RREADY),
        .S01_AXI_rresp(versal_cips_0_FPD_CCI_NOC_1_RRESP),
        .S01_AXI_rvalid(versal_cips_0_FPD_CCI_NOC_1_RVALID),
        .S01_AXI_wdata(versal_cips_0_FPD_CCI_NOC_1_WDATA),
        .S01_AXI_wid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_wlast(versal_cips_0_FPD_CCI_NOC_1_WLAST),
        .S01_AXI_wready(versal_cips_0_FPD_CCI_NOC_1_WREADY),
        .S01_AXI_wstrb(versal_cips_0_FPD_CCI_NOC_1_WSTRB),
        .S01_AXI_wuser(versal_cips_0_FPD_CCI_NOC_1_WUSER),
        .S01_AXI_wvalid(versal_cips_0_FPD_CCI_NOC_1_WVALID),
        .S02_AXI_araddr(versal_cips_0_FPD_CCI_NOC_2_ARADDR),
        .S02_AXI_arburst(versal_cips_0_FPD_CCI_NOC_2_ARBURST),
        .S02_AXI_arcache(versal_cips_0_FPD_CCI_NOC_2_ARCACHE),
        .S02_AXI_arid(versal_cips_0_FPD_CCI_NOC_2_ARID),
        .S02_AXI_arlen(versal_cips_0_FPD_CCI_NOC_2_ARLEN),
        .S02_AXI_arlock(versal_cips_0_FPD_CCI_NOC_2_ARLOCK),
        .S02_AXI_arprot(versal_cips_0_FPD_CCI_NOC_2_ARPROT),
        .S02_AXI_arqos(versal_cips_0_FPD_CCI_NOC_2_ARQOS),
        .S02_AXI_arready(versal_cips_0_FPD_CCI_NOC_2_ARREADY),
        .S02_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S02_AXI_arsize(versal_cips_0_FPD_CCI_NOC_2_ARSIZE),
        .S02_AXI_aruser(versal_cips_0_FPD_CCI_NOC_2_ARUSER),
        .S02_AXI_arvalid(versal_cips_0_FPD_CCI_NOC_2_ARVALID),
        .S02_AXI_awaddr(versal_cips_0_FPD_CCI_NOC_2_AWADDR),
        .S02_AXI_awburst(versal_cips_0_FPD_CCI_NOC_2_AWBURST),
        .S02_AXI_awcache(versal_cips_0_FPD_CCI_NOC_2_AWCACHE),
        .S02_AXI_awid(versal_cips_0_FPD_CCI_NOC_2_AWID),
        .S02_AXI_awlen(versal_cips_0_FPD_CCI_NOC_2_AWLEN),
        .S02_AXI_awlock(versal_cips_0_FPD_CCI_NOC_2_AWLOCK),
        .S02_AXI_awprot(versal_cips_0_FPD_CCI_NOC_2_AWPROT),
        .S02_AXI_awqos(versal_cips_0_FPD_CCI_NOC_2_AWQOS),
        .S02_AXI_awready(versal_cips_0_FPD_CCI_NOC_2_AWREADY),
        .S02_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S02_AXI_awsize(versal_cips_0_FPD_CCI_NOC_2_AWSIZE),
        .S02_AXI_awuser(versal_cips_0_FPD_CCI_NOC_2_AWUSER),
        .S02_AXI_awvalid(versal_cips_0_FPD_CCI_NOC_2_AWVALID),
        .S02_AXI_bid(versal_cips_0_FPD_CCI_NOC_2_BID),
        .S02_AXI_bready(versal_cips_0_FPD_CCI_NOC_2_BREADY),
        .S02_AXI_bresp(versal_cips_0_FPD_CCI_NOC_2_BRESP),
        .S02_AXI_bvalid(versal_cips_0_FPD_CCI_NOC_2_BVALID),
        .S02_AXI_rdata(versal_cips_0_FPD_CCI_NOC_2_RDATA),
        .S02_AXI_rid(versal_cips_0_FPD_CCI_NOC_2_RID),
        .S02_AXI_rlast(versal_cips_0_FPD_CCI_NOC_2_RLAST),
        .S02_AXI_rready(versal_cips_0_FPD_CCI_NOC_2_RREADY),
        .S02_AXI_rresp(versal_cips_0_FPD_CCI_NOC_2_RRESP),
        .S02_AXI_rvalid(versal_cips_0_FPD_CCI_NOC_2_RVALID),
        .S02_AXI_wdata(versal_cips_0_FPD_CCI_NOC_2_WDATA),
        .S02_AXI_wid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S02_AXI_wlast(versal_cips_0_FPD_CCI_NOC_2_WLAST),
        .S02_AXI_wready(versal_cips_0_FPD_CCI_NOC_2_WREADY),
        .S02_AXI_wstrb(versal_cips_0_FPD_CCI_NOC_2_WSTRB),
        .S02_AXI_wuser(versal_cips_0_FPD_CCI_NOC_2_WUSER),
        .S02_AXI_wvalid(versal_cips_0_FPD_CCI_NOC_2_WVALID),
        .S03_AXI_araddr(versal_cips_0_FPD_CCI_NOC_3_ARADDR),
        .S03_AXI_arburst(versal_cips_0_FPD_CCI_NOC_3_ARBURST),
        .S03_AXI_arcache(versal_cips_0_FPD_CCI_NOC_3_ARCACHE),
        .S03_AXI_arid(versal_cips_0_FPD_CCI_NOC_3_ARID),
        .S03_AXI_arlen(versal_cips_0_FPD_CCI_NOC_3_ARLEN),
        .S03_AXI_arlock(versal_cips_0_FPD_CCI_NOC_3_ARLOCK),
        .S03_AXI_arprot(versal_cips_0_FPD_CCI_NOC_3_ARPROT),
        .S03_AXI_arqos(versal_cips_0_FPD_CCI_NOC_3_ARQOS),
        .S03_AXI_arready(versal_cips_0_FPD_CCI_NOC_3_ARREADY),
        .S03_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S03_AXI_arsize(versal_cips_0_FPD_CCI_NOC_3_ARSIZE),
        .S03_AXI_aruser(versal_cips_0_FPD_CCI_NOC_3_ARUSER),
        .S03_AXI_arvalid(versal_cips_0_FPD_CCI_NOC_3_ARVALID),
        .S03_AXI_awaddr(versal_cips_0_FPD_CCI_NOC_3_AWADDR),
        .S03_AXI_awburst(versal_cips_0_FPD_CCI_NOC_3_AWBURST),
        .S03_AXI_awcache(versal_cips_0_FPD_CCI_NOC_3_AWCACHE),
        .S03_AXI_awid(versal_cips_0_FPD_CCI_NOC_3_AWID),
        .S03_AXI_awlen(versal_cips_0_FPD_CCI_NOC_3_AWLEN),
        .S03_AXI_awlock(versal_cips_0_FPD_CCI_NOC_3_AWLOCK),
        .S03_AXI_awprot(versal_cips_0_FPD_CCI_NOC_3_AWPROT),
        .S03_AXI_awqos(versal_cips_0_FPD_CCI_NOC_3_AWQOS),
        .S03_AXI_awready(versal_cips_0_FPD_CCI_NOC_3_AWREADY),
        .S03_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S03_AXI_awsize(versal_cips_0_FPD_CCI_NOC_3_AWSIZE),
        .S03_AXI_awuser(versal_cips_0_FPD_CCI_NOC_3_AWUSER),
        .S03_AXI_awvalid(versal_cips_0_FPD_CCI_NOC_3_AWVALID),
        .S03_AXI_bid(versal_cips_0_FPD_CCI_NOC_3_BID),
        .S03_AXI_bready(versal_cips_0_FPD_CCI_NOC_3_BREADY),
        .S03_AXI_bresp(versal_cips_0_FPD_CCI_NOC_3_BRESP),
        .S03_AXI_bvalid(versal_cips_0_FPD_CCI_NOC_3_BVALID),
        .S03_AXI_rdata(versal_cips_0_FPD_CCI_NOC_3_RDATA),
        .S03_AXI_rid(versal_cips_0_FPD_CCI_NOC_3_RID),
        .S03_AXI_rlast(versal_cips_0_FPD_CCI_NOC_3_RLAST),
        .S03_AXI_rready(versal_cips_0_FPD_CCI_NOC_3_RREADY),
        .S03_AXI_rresp(versal_cips_0_FPD_CCI_NOC_3_RRESP),
        .S03_AXI_rvalid(versal_cips_0_FPD_CCI_NOC_3_RVALID),
        .S03_AXI_wdata(versal_cips_0_FPD_CCI_NOC_3_WDATA),
        .S03_AXI_wid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S03_AXI_wlast(versal_cips_0_FPD_CCI_NOC_3_WLAST),
        .S03_AXI_wready(versal_cips_0_FPD_CCI_NOC_3_WREADY),
        .S03_AXI_wstrb(versal_cips_0_FPD_CCI_NOC_3_WSTRB),
        .S03_AXI_wuser(versal_cips_0_FPD_CCI_NOC_3_WUSER),
        .S03_AXI_wvalid(versal_cips_0_FPD_CCI_NOC_3_WVALID),
        .S04_AXI_araddr(versal_cips_0_FPD_AXI_NOC_0_ARADDR),
        .S04_AXI_arburst(versal_cips_0_FPD_AXI_NOC_0_ARBURST),
        .S04_AXI_arcache(versal_cips_0_FPD_AXI_NOC_0_ARCACHE),
        .S04_AXI_arid(versal_cips_0_FPD_AXI_NOC_0_ARID),
        .S04_AXI_arlen(versal_cips_0_FPD_AXI_NOC_0_ARLEN),
        .S04_AXI_arlock(versal_cips_0_FPD_AXI_NOC_0_ARLOCK),
        .S04_AXI_arprot(versal_cips_0_FPD_AXI_NOC_0_ARPROT),
        .S04_AXI_arqos(versal_cips_0_FPD_AXI_NOC_0_ARQOS),
        .S04_AXI_arready(versal_cips_0_FPD_AXI_NOC_0_ARREADY),
        .S04_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S04_AXI_arsize(versal_cips_0_FPD_AXI_NOC_0_ARSIZE),
        .S04_AXI_aruser(versal_cips_0_FPD_AXI_NOC_0_ARUSER),
        .S04_AXI_arvalid(versal_cips_0_FPD_AXI_NOC_0_ARVALID),
        .S04_AXI_awaddr(versal_cips_0_FPD_AXI_NOC_0_AWADDR),
        .S04_AXI_awburst(versal_cips_0_FPD_AXI_NOC_0_AWBURST),
        .S04_AXI_awcache(versal_cips_0_FPD_AXI_NOC_0_AWCACHE),
        .S04_AXI_awid(versal_cips_0_FPD_AXI_NOC_0_AWID),
        .S04_AXI_awlen(versal_cips_0_FPD_AXI_NOC_0_AWLEN),
        .S04_AXI_awlock(versal_cips_0_FPD_AXI_NOC_0_AWLOCK),
        .S04_AXI_awprot(versal_cips_0_FPD_AXI_NOC_0_AWPROT),
        .S04_AXI_awqos(versal_cips_0_FPD_AXI_NOC_0_AWQOS),
        .S04_AXI_awready(versal_cips_0_FPD_AXI_NOC_0_AWREADY),
        .S04_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S04_AXI_awsize(versal_cips_0_FPD_AXI_NOC_0_AWSIZE),
        .S04_AXI_awuser(versal_cips_0_FPD_AXI_NOC_0_AWUSER),
        .S04_AXI_awvalid(versal_cips_0_FPD_AXI_NOC_0_AWVALID),
        .S04_AXI_bid(versal_cips_0_FPD_AXI_NOC_0_BID),
        .S04_AXI_bready(versal_cips_0_FPD_AXI_NOC_0_BREADY),
        .S04_AXI_bresp(versal_cips_0_FPD_AXI_NOC_0_BRESP),
        .S04_AXI_bvalid(versal_cips_0_FPD_AXI_NOC_0_BVALID),
        .S04_AXI_rdata(versal_cips_0_FPD_AXI_NOC_0_RDATA),
        .S04_AXI_rid(versal_cips_0_FPD_AXI_NOC_0_RID),
        .S04_AXI_rlast(versal_cips_0_FPD_AXI_NOC_0_RLAST),
        .S04_AXI_rready(versal_cips_0_FPD_AXI_NOC_0_RREADY),
        .S04_AXI_rresp(versal_cips_0_FPD_AXI_NOC_0_RRESP),
        .S04_AXI_rvalid(versal_cips_0_FPD_AXI_NOC_0_RVALID),
        .S04_AXI_wdata(versal_cips_0_FPD_AXI_NOC_0_WDATA),
        .S04_AXI_wid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S04_AXI_wlast(versal_cips_0_FPD_AXI_NOC_0_WLAST),
        .S04_AXI_wready(versal_cips_0_FPD_AXI_NOC_0_WREADY),
        .S04_AXI_wstrb(versal_cips_0_FPD_AXI_NOC_0_WSTRB),
        .S04_AXI_wuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S04_AXI_wvalid(versal_cips_0_FPD_AXI_NOC_0_WVALID),
        .S05_AXI_araddr(versal_cips_0_CPM_PCIE_NOC_0_ARADDR),
        .S05_AXI_arburst(versal_cips_0_CPM_PCIE_NOC_0_ARBURST),
        .S05_AXI_arcache(versal_cips_0_CPM_PCIE_NOC_0_ARCACHE),
        .S05_AXI_arid(versal_cips_0_CPM_PCIE_NOC_0_ARID),
        .S05_AXI_arlen(versal_cips_0_CPM_PCIE_NOC_0_ARLEN),
        .S05_AXI_arlock(versal_cips_0_CPM_PCIE_NOC_0_ARLOCK),
        .S05_AXI_arprot(versal_cips_0_CPM_PCIE_NOC_0_ARPROT),
        .S05_AXI_arqos(versal_cips_0_CPM_PCIE_NOC_0_ARQOS),
        .S05_AXI_arready(versal_cips_0_CPM_PCIE_NOC_0_ARREADY),
        .S05_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S05_AXI_arsize(versal_cips_0_CPM_PCIE_NOC_0_ARSIZE),
        .S05_AXI_aruser(versal_cips_0_CPM_PCIE_NOC_0_ARUSER),
        .S05_AXI_arvalid(versal_cips_0_CPM_PCIE_NOC_0_ARVALID),
        .S05_AXI_awaddr(versal_cips_0_CPM_PCIE_NOC_0_AWADDR),
        .S05_AXI_awburst(versal_cips_0_CPM_PCIE_NOC_0_AWBURST),
        .S05_AXI_awcache(versal_cips_0_CPM_PCIE_NOC_0_AWCACHE),
        .S05_AXI_awid(versal_cips_0_CPM_PCIE_NOC_0_AWID),
        .S05_AXI_awlen(versal_cips_0_CPM_PCIE_NOC_0_AWLEN),
        .S05_AXI_awlock(versal_cips_0_CPM_PCIE_NOC_0_AWLOCK),
        .S05_AXI_awprot(versal_cips_0_CPM_PCIE_NOC_0_AWPROT),
        .S05_AXI_awqos(versal_cips_0_CPM_PCIE_NOC_0_AWQOS),
        .S05_AXI_awready(versal_cips_0_CPM_PCIE_NOC_0_AWREADY),
        .S05_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S05_AXI_awsize(versal_cips_0_CPM_PCIE_NOC_0_AWSIZE),
        .S05_AXI_awuser(versal_cips_0_CPM_PCIE_NOC_0_AWUSER),
        .S05_AXI_awvalid(versal_cips_0_CPM_PCIE_NOC_0_AWVALID),
        .S05_AXI_bid(versal_cips_0_CPM_PCIE_NOC_0_BID),
        .S05_AXI_bready(versal_cips_0_CPM_PCIE_NOC_0_BREADY),
        .S05_AXI_bresp(versal_cips_0_CPM_PCIE_NOC_0_BRESP),
        .S05_AXI_bvalid(versal_cips_0_CPM_PCIE_NOC_0_BVALID),
        .S05_AXI_rdata(versal_cips_0_CPM_PCIE_NOC_0_RDATA),
        .S05_AXI_rid(versal_cips_0_CPM_PCIE_NOC_0_RID),
        .S05_AXI_rlast(versal_cips_0_CPM_PCIE_NOC_0_RLAST),
        .S05_AXI_rready(versal_cips_0_CPM_PCIE_NOC_0_RREADY),
        .S05_AXI_rresp(versal_cips_0_CPM_PCIE_NOC_0_RRESP),
        .S05_AXI_rvalid(versal_cips_0_CPM_PCIE_NOC_0_RVALID),
        .S05_AXI_wdata(versal_cips_0_CPM_PCIE_NOC_0_WDATA),
        .S05_AXI_wid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S05_AXI_wlast(versal_cips_0_CPM_PCIE_NOC_0_WLAST),
        .S05_AXI_wready(versal_cips_0_CPM_PCIE_NOC_0_WREADY),
        .S05_AXI_wstrb(versal_cips_0_CPM_PCIE_NOC_0_WSTRB),
        .S05_AXI_wuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S05_AXI_wvalid(versal_cips_0_CPM_PCIE_NOC_0_WVALID),
        .S06_AXI_araddr(versal_cips_0_CPM_PCIE_NOC_1_ARADDR),
        .S06_AXI_arburst(versal_cips_0_CPM_PCIE_NOC_1_ARBURST),
        .S06_AXI_arcache(versal_cips_0_CPM_PCIE_NOC_1_ARCACHE),
        .S06_AXI_arid(versal_cips_0_CPM_PCIE_NOC_1_ARID),
        .S06_AXI_arlen(versal_cips_0_CPM_PCIE_NOC_1_ARLEN),
        .S06_AXI_arlock(versal_cips_0_CPM_PCIE_NOC_1_ARLOCK),
        .S06_AXI_arprot(versal_cips_0_CPM_PCIE_NOC_1_ARPROT),
        .S06_AXI_arqos(versal_cips_0_CPM_PCIE_NOC_1_ARQOS),
        .S06_AXI_arready(versal_cips_0_CPM_PCIE_NOC_1_ARREADY),
        .S06_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S06_AXI_arsize(versal_cips_0_CPM_PCIE_NOC_1_ARSIZE),
        .S06_AXI_aruser(versal_cips_0_CPM_PCIE_NOC_1_ARUSER),
        .S06_AXI_arvalid(versal_cips_0_CPM_PCIE_NOC_1_ARVALID),
        .S06_AXI_awaddr(versal_cips_0_CPM_PCIE_NOC_1_AWADDR),
        .S06_AXI_awburst(versal_cips_0_CPM_PCIE_NOC_1_AWBURST),
        .S06_AXI_awcache(versal_cips_0_CPM_PCIE_NOC_1_AWCACHE),
        .S06_AXI_awid(versal_cips_0_CPM_PCIE_NOC_1_AWID),
        .S06_AXI_awlen(versal_cips_0_CPM_PCIE_NOC_1_AWLEN),
        .S06_AXI_awlock(versal_cips_0_CPM_PCIE_NOC_1_AWLOCK),
        .S06_AXI_awprot(versal_cips_0_CPM_PCIE_NOC_1_AWPROT),
        .S06_AXI_awqos(versal_cips_0_CPM_PCIE_NOC_1_AWQOS),
        .S06_AXI_awready(versal_cips_0_CPM_PCIE_NOC_1_AWREADY),
        .S06_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S06_AXI_awsize(versal_cips_0_CPM_PCIE_NOC_1_AWSIZE),
        .S06_AXI_awuser(versal_cips_0_CPM_PCIE_NOC_1_AWUSER),
        .S06_AXI_awvalid(versal_cips_0_CPM_PCIE_NOC_1_AWVALID),
        .S06_AXI_bid(versal_cips_0_CPM_PCIE_NOC_1_BID),
        .S06_AXI_bready(versal_cips_0_CPM_PCIE_NOC_1_BREADY),
        .S06_AXI_bresp(versal_cips_0_CPM_PCIE_NOC_1_BRESP),
        .S06_AXI_bvalid(versal_cips_0_CPM_PCIE_NOC_1_BVALID),
        .S06_AXI_rdata(versal_cips_0_CPM_PCIE_NOC_1_RDATA),
        .S06_AXI_rid(versal_cips_0_CPM_PCIE_NOC_1_RID),
        .S06_AXI_rlast(versal_cips_0_CPM_PCIE_NOC_1_RLAST),
        .S06_AXI_rready(versal_cips_0_CPM_PCIE_NOC_1_RREADY),
        .S06_AXI_rresp(versal_cips_0_CPM_PCIE_NOC_1_RRESP),
        .S06_AXI_rvalid(versal_cips_0_CPM_PCIE_NOC_1_RVALID),
        .S06_AXI_wdata(versal_cips_0_CPM_PCIE_NOC_1_WDATA),
        .S06_AXI_wid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S06_AXI_wlast(versal_cips_0_CPM_PCIE_NOC_1_WLAST),
        .S06_AXI_wready(versal_cips_0_CPM_PCIE_NOC_1_WREADY),
        .S06_AXI_wstrb(versal_cips_0_CPM_PCIE_NOC_1_WSTRB),
        .S06_AXI_wuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S06_AXI_wvalid(versal_cips_0_CPM_PCIE_NOC_1_WVALID),
        .S07_AXI_araddr(versal_cips_0_NOC_LPD_AXI_0_ARADDR),
        .S07_AXI_arburst(versal_cips_0_NOC_LPD_AXI_0_ARBURST),
        .S07_AXI_arcache(versal_cips_0_NOC_LPD_AXI_0_ARCACHE),
        .S07_AXI_arid(versal_cips_0_NOC_LPD_AXI_0_ARID),
        .S07_AXI_arlen(versal_cips_0_NOC_LPD_AXI_0_ARLEN),
        .S07_AXI_arlock(versal_cips_0_NOC_LPD_AXI_0_ARLOCK),
        .S07_AXI_arprot(versal_cips_0_NOC_LPD_AXI_0_ARPROT),
        .S07_AXI_arqos(versal_cips_0_NOC_LPD_AXI_0_ARQOS),
        .S07_AXI_arready(versal_cips_0_NOC_LPD_AXI_0_ARREADY),
        .S07_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S07_AXI_arsize(versal_cips_0_NOC_LPD_AXI_0_ARSIZE),
        .S07_AXI_aruser(versal_cips_0_NOC_LPD_AXI_0_ARUSER),
        .S07_AXI_arvalid(versal_cips_0_NOC_LPD_AXI_0_ARVALID),
        .S07_AXI_awaddr(versal_cips_0_NOC_LPD_AXI_0_AWADDR),
        .S07_AXI_awburst(versal_cips_0_NOC_LPD_AXI_0_AWBURST),
        .S07_AXI_awcache(versal_cips_0_NOC_LPD_AXI_0_AWCACHE),
        .S07_AXI_awid(versal_cips_0_NOC_LPD_AXI_0_AWID),
        .S07_AXI_awlen(versal_cips_0_NOC_LPD_AXI_0_AWLEN),
        .S07_AXI_awlock(versal_cips_0_NOC_LPD_AXI_0_AWLOCK),
        .S07_AXI_awprot(versal_cips_0_NOC_LPD_AXI_0_AWPROT),
        .S07_AXI_awqos(versal_cips_0_NOC_LPD_AXI_0_AWQOS),
        .S07_AXI_awready(versal_cips_0_NOC_LPD_AXI_0_AWREADY),
        .S07_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S07_AXI_awsize(versal_cips_0_NOC_LPD_AXI_0_AWSIZE),
        .S07_AXI_awuser(versal_cips_0_NOC_LPD_AXI_0_AWUSER),
        .S07_AXI_awvalid(versal_cips_0_NOC_LPD_AXI_0_AWVALID),
        .S07_AXI_bid(versal_cips_0_NOC_LPD_AXI_0_BID),
        .S07_AXI_bready(versal_cips_0_NOC_LPD_AXI_0_BREADY),
        .S07_AXI_bresp(versal_cips_0_NOC_LPD_AXI_0_BRESP),
        .S07_AXI_bvalid(versal_cips_0_NOC_LPD_AXI_0_BVALID),
        .S07_AXI_rdata(versal_cips_0_NOC_LPD_AXI_0_RDATA),
        .S07_AXI_rid(versal_cips_0_NOC_LPD_AXI_0_RID),
        .S07_AXI_rlast(versal_cips_0_NOC_LPD_AXI_0_RLAST),
        .S07_AXI_rready(versal_cips_0_NOC_LPD_AXI_0_RREADY),
        .S07_AXI_rresp(versal_cips_0_NOC_LPD_AXI_0_RRESP),
        .S07_AXI_rvalid(versal_cips_0_NOC_LPD_AXI_0_RVALID),
        .S07_AXI_wdata(versal_cips_0_NOC_LPD_AXI_0_WDATA),
        .S07_AXI_wid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S07_AXI_wlast(versal_cips_0_NOC_LPD_AXI_0_WLAST),
        .S07_AXI_wready(versal_cips_0_NOC_LPD_AXI_0_WREADY),
        .S07_AXI_wstrb(versal_cips_0_NOC_LPD_AXI_0_WSTRB),
        .S07_AXI_wuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S07_AXI_wvalid(versal_cips_0_NOC_LPD_AXI_0_WVALID),
        .S08_AXI_araddr(versal_cips_0_PMC_NOC_AXI_0_ARADDR),
        .S08_AXI_arburst(versal_cips_0_PMC_NOC_AXI_0_ARBURST),
        .S08_AXI_arcache(versal_cips_0_PMC_NOC_AXI_0_ARCACHE),
        .S08_AXI_arid(versal_cips_0_PMC_NOC_AXI_0_ARID),
        .S08_AXI_arlen(versal_cips_0_PMC_NOC_AXI_0_ARLEN),
        .S08_AXI_arlock(versal_cips_0_PMC_NOC_AXI_0_ARLOCK),
        .S08_AXI_arprot(versal_cips_0_PMC_NOC_AXI_0_ARPROT),
        .S08_AXI_arqos(versal_cips_0_PMC_NOC_AXI_0_ARQOS),
        .S08_AXI_arready(versal_cips_0_PMC_NOC_AXI_0_ARREADY),
        .S08_AXI_arregion(versal_cips_0_PMC_NOC_AXI_0_ARREGION),
        .S08_AXI_arsize(versal_cips_0_PMC_NOC_AXI_0_ARSIZE),
        .S08_AXI_aruser(versal_cips_0_PMC_NOC_AXI_0_ARUSER),
        .S08_AXI_arvalid(versal_cips_0_PMC_NOC_AXI_0_ARVALID),
        .S08_AXI_awaddr(versal_cips_0_PMC_NOC_AXI_0_AWADDR),
        .S08_AXI_awburst(versal_cips_0_PMC_NOC_AXI_0_AWBURST),
        .S08_AXI_awcache(versal_cips_0_PMC_NOC_AXI_0_AWCACHE),
        .S08_AXI_awid(versal_cips_0_PMC_NOC_AXI_0_AWID),
        .S08_AXI_awlen(versal_cips_0_PMC_NOC_AXI_0_AWLEN),
        .S08_AXI_awlock(versal_cips_0_PMC_NOC_AXI_0_AWLOCK),
        .S08_AXI_awprot(versal_cips_0_PMC_NOC_AXI_0_AWPROT),
        .S08_AXI_awqos(versal_cips_0_PMC_NOC_AXI_0_AWQOS),
        .S08_AXI_awready(versal_cips_0_PMC_NOC_AXI_0_AWREADY),
        .S08_AXI_awregion(versal_cips_0_PMC_NOC_AXI_0_AWREGION),
        .S08_AXI_awsize(versal_cips_0_PMC_NOC_AXI_0_AWSIZE),
        .S08_AXI_awuser(versal_cips_0_PMC_NOC_AXI_0_AWUSER),
        .S08_AXI_awvalid(versal_cips_0_PMC_NOC_AXI_0_AWVALID),
        .S08_AXI_bid(versal_cips_0_PMC_NOC_AXI_0_BID),
        .S08_AXI_bready(versal_cips_0_PMC_NOC_AXI_0_BREADY),
        .S08_AXI_bresp(versal_cips_0_PMC_NOC_AXI_0_BRESP),
        .S08_AXI_buser(versal_cips_0_PMC_NOC_AXI_0_BUSER),
        .S08_AXI_bvalid(versal_cips_0_PMC_NOC_AXI_0_BVALID),
        .S08_AXI_rdata(versal_cips_0_PMC_NOC_AXI_0_RDATA),
        .S08_AXI_rid(versal_cips_0_PMC_NOC_AXI_0_RID),
        .S08_AXI_rlast(versal_cips_0_PMC_NOC_AXI_0_RLAST),
        .S08_AXI_rready(versal_cips_0_PMC_NOC_AXI_0_RREADY),
        .S08_AXI_rresp(versal_cips_0_PMC_NOC_AXI_0_RRESP),
        .S08_AXI_ruser(versal_cips_0_PMC_NOC_AXI_0_RUSER),
        .S08_AXI_rvalid(versal_cips_0_PMC_NOC_AXI_0_RVALID),
        .S08_AXI_wdata(versal_cips_0_PMC_NOC_AXI_0_WDATA),
        .S08_AXI_wid(versal_cips_0_PMC_NOC_AXI_0_WID),
        .S08_AXI_wlast(versal_cips_0_PMC_NOC_AXI_0_WLAST),
        .S08_AXI_wready(versal_cips_0_PMC_NOC_AXI_0_WREADY),
        .S08_AXI_wstrb(versal_cips_0_PMC_NOC_AXI_0_WSTRB),
        .S08_AXI_wuser(versal_cips_0_PMC_NOC_AXI_0_WUSER),
        .S08_AXI_wvalid(versal_cips_0_PMC_NOC_AXI_0_WVALID),
        .aclk0(versal_cips_0_fpd_cci_noc_axi0_clk),
        .aclk1(versal_cips_0_fpd_cci_noc_axi1_clk),
        .aclk2(versal_cips_0_fpd_cci_noc_axi2_clk),
        .aclk3(versal_cips_0_fpd_cci_noc_axi3_clk),
        .aclk4(versal_cips_0_fpd_axi_noc_axi0_clk),
        .aclk5(versal_cips_0_cpm_pcie_noc_axi0_clk),
        .aclk6(versal_cips_0_cpm_pcie_noc_axi1_clk),
        .aclk7(versal_cips_0_lpd_axi_noc_clk),
        .aclk8(versal_cips_0_pmc_axi_noc_axi0_clk),
        .sys_clk0_clk_n(sys_clk0_0_1_CLK_N),
        .sys_clk0_clk_p(sys_clk0_0_1_CLK_P));
  design_1_axi_noc_2_1 axi_noc_2
       (.CH0_DDR4_0_act_n(axi_noc_2_CH0_DDR4_0_ACT_N),
        .CH0_DDR4_0_adr(axi_noc_2_CH0_DDR4_0_ADR),
        .CH0_DDR4_0_ba(axi_noc_2_CH0_DDR4_0_BA),
        .CH0_DDR4_0_bg(axi_noc_2_CH0_DDR4_0_BG),
        .CH0_DDR4_0_ck_c(axi_noc_2_CH0_DDR4_0_CK_C),
        .CH0_DDR4_0_ck_t(axi_noc_2_CH0_DDR4_0_CK_T),
        .CH0_DDR4_0_cke(axi_noc_2_CH0_DDR4_0_CKE),
        .CH0_DDR4_0_cs_n(axi_noc_2_CH0_DDR4_0_CS_N),
        .CH0_DDR4_0_dm_n(VSL_DIMM1_dm_n[8:0]),
        .CH0_DDR4_0_dq(VSL_DIMM1_dq[71:0]),
        .CH0_DDR4_0_dqs_c(VSL_DIMM1_dqs_c[8:0]),
        .CH0_DDR4_0_dqs_t(VSL_DIMM1_dqs_t[8:0]),
        .CH0_DDR4_0_odt(axi_noc_2_CH0_DDR4_0_ODT),
        .CH0_DDR4_0_reset_n(axi_noc_2_CH0_DDR4_0_RESET_N),
        .CH0_DDR4_1_act_n(axi_noc_2_CH0_DDR4_1_ACT_N),
        .CH0_DDR4_1_adr(axi_noc_2_CH0_DDR4_1_ADR),
        .CH0_DDR4_1_ba(axi_noc_2_CH0_DDR4_1_BA),
        .CH0_DDR4_1_bg(axi_noc_2_CH0_DDR4_1_BG),
        .CH0_DDR4_1_ck_c(axi_noc_2_CH0_DDR4_1_CK_C),
        .CH0_DDR4_1_ck_t(axi_noc_2_CH0_DDR4_1_CK_T),
        .CH0_DDR4_1_cke(axi_noc_2_CH0_DDR4_1_CKE),
        .CH0_DDR4_1_cs_n(axi_noc_2_CH0_DDR4_1_CS_N),
        .CH0_DDR4_1_dm_n(VSL_DIMM2_dm_n[8:0]),
        .CH0_DDR4_1_dq(VSL_DIMM2_dq[71:0]),
        .CH0_DDR4_1_dqs_c(VSL_DIMM2_dqs_c[8:0]),
        .CH0_DDR4_1_dqs_t(VSL_DIMM2_dqs_t[8:0]),
        .CH0_DDR4_1_odt(axi_noc_2_CH0_DDR4_1_ODT),
        .CH0_DDR4_1_reset_n(axi_noc_2_CH0_DDR4_1_RESET_N),
        .S00_INI_internoc(axi_noc_0_M00_INI_INTERNOC),
        .S01_INI_internoc(axi_noc_0_M01_INI_INTERNOC),
        .S02_INI_internoc(axi_noc_0_M02_INI_INTERNOC),
        .S03_INI_internoc(axi_noc_0_M03_INI_INTERNOC),
        .sys_clk0_clk_n(sys_clk0_0_3_CLK_N),
        .sys_clk0_clk_p(sys_clk0_0_3_CLK_P),
        .sys_clk1_clk_n(sys_clk1_0_1_CLK_N),
        .sys_clk1_clk_p(sys_clk1_0_1_CLK_P));
  design_1_versal_cips_0_0 versal_cips_0
       (.cpm_irq0(1'b0),
        .cpm_irq1(1'b0),
        .cpm_pcie_noc_axi0_araddr(versal_cips_0_CPM_PCIE_NOC_0_ARADDR),
        .cpm_pcie_noc_axi0_arburst(versal_cips_0_CPM_PCIE_NOC_0_ARBURST),
        .cpm_pcie_noc_axi0_arcache(versal_cips_0_CPM_PCIE_NOC_0_ARCACHE),
        .cpm_pcie_noc_axi0_arid(versal_cips_0_CPM_PCIE_NOC_0_ARID),
        .cpm_pcie_noc_axi0_arlen(versal_cips_0_CPM_PCIE_NOC_0_ARLEN),
        .cpm_pcie_noc_axi0_arlock(versal_cips_0_CPM_PCIE_NOC_0_ARLOCK),
        .cpm_pcie_noc_axi0_arprot(versal_cips_0_CPM_PCIE_NOC_0_ARPROT),
        .cpm_pcie_noc_axi0_arqos(versal_cips_0_CPM_PCIE_NOC_0_ARQOS),
        .cpm_pcie_noc_axi0_arready(versal_cips_0_CPM_PCIE_NOC_0_ARREADY),
        .cpm_pcie_noc_axi0_arsize(versal_cips_0_CPM_PCIE_NOC_0_ARSIZE),
        .cpm_pcie_noc_axi0_aruser(versal_cips_0_CPM_PCIE_NOC_0_ARUSER),
        .cpm_pcie_noc_axi0_arvalid(versal_cips_0_CPM_PCIE_NOC_0_ARVALID),
        .cpm_pcie_noc_axi0_awaddr(versal_cips_0_CPM_PCIE_NOC_0_AWADDR),
        .cpm_pcie_noc_axi0_awburst(versal_cips_0_CPM_PCIE_NOC_0_AWBURST),
        .cpm_pcie_noc_axi0_awcache(versal_cips_0_CPM_PCIE_NOC_0_AWCACHE),
        .cpm_pcie_noc_axi0_awid(versal_cips_0_CPM_PCIE_NOC_0_AWID),
        .cpm_pcie_noc_axi0_awlen(versal_cips_0_CPM_PCIE_NOC_0_AWLEN),
        .cpm_pcie_noc_axi0_awlock(versal_cips_0_CPM_PCIE_NOC_0_AWLOCK),
        .cpm_pcie_noc_axi0_awprot(versal_cips_0_CPM_PCIE_NOC_0_AWPROT),
        .cpm_pcie_noc_axi0_awqos(versal_cips_0_CPM_PCIE_NOC_0_AWQOS),
        .cpm_pcie_noc_axi0_awready(versal_cips_0_CPM_PCIE_NOC_0_AWREADY),
        .cpm_pcie_noc_axi0_awsize(versal_cips_0_CPM_PCIE_NOC_0_AWSIZE),
        .cpm_pcie_noc_axi0_awuser(versal_cips_0_CPM_PCIE_NOC_0_AWUSER),
        .cpm_pcie_noc_axi0_awvalid(versal_cips_0_CPM_PCIE_NOC_0_AWVALID),
        .cpm_pcie_noc_axi0_bid(versal_cips_0_CPM_PCIE_NOC_0_BID),
        .cpm_pcie_noc_axi0_bready(versal_cips_0_CPM_PCIE_NOC_0_BREADY),
        .cpm_pcie_noc_axi0_bresp(versal_cips_0_CPM_PCIE_NOC_0_BRESP),
        .cpm_pcie_noc_axi0_bvalid(versal_cips_0_CPM_PCIE_NOC_0_BVALID),
        .cpm_pcie_noc_axi0_clk(versal_cips_0_cpm_pcie_noc_axi0_clk),
        .cpm_pcie_noc_axi0_rdata(versal_cips_0_CPM_PCIE_NOC_0_RDATA),
        .cpm_pcie_noc_axi0_rid(versal_cips_0_CPM_PCIE_NOC_0_RID),
        .cpm_pcie_noc_axi0_rlast(versal_cips_0_CPM_PCIE_NOC_0_RLAST),
        .cpm_pcie_noc_axi0_rready(versal_cips_0_CPM_PCIE_NOC_0_RREADY),
        .cpm_pcie_noc_axi0_rresp(versal_cips_0_CPM_PCIE_NOC_0_RRESP),
        .cpm_pcie_noc_axi0_rvalid(versal_cips_0_CPM_PCIE_NOC_0_RVALID),
        .cpm_pcie_noc_axi0_wdata(versal_cips_0_CPM_PCIE_NOC_0_WDATA),
        .cpm_pcie_noc_axi0_wlast(versal_cips_0_CPM_PCIE_NOC_0_WLAST),
        .cpm_pcie_noc_axi0_wready(versal_cips_0_CPM_PCIE_NOC_0_WREADY),
        .cpm_pcie_noc_axi0_wstrb(versal_cips_0_CPM_PCIE_NOC_0_WSTRB),
        .cpm_pcie_noc_axi0_wvalid(versal_cips_0_CPM_PCIE_NOC_0_WVALID),
        .cpm_pcie_noc_axi1_araddr(versal_cips_0_CPM_PCIE_NOC_1_ARADDR),
        .cpm_pcie_noc_axi1_arburst(versal_cips_0_CPM_PCIE_NOC_1_ARBURST),
        .cpm_pcie_noc_axi1_arcache(versal_cips_0_CPM_PCIE_NOC_1_ARCACHE),
        .cpm_pcie_noc_axi1_arid(versal_cips_0_CPM_PCIE_NOC_1_ARID),
        .cpm_pcie_noc_axi1_arlen(versal_cips_0_CPM_PCIE_NOC_1_ARLEN),
        .cpm_pcie_noc_axi1_arlock(versal_cips_0_CPM_PCIE_NOC_1_ARLOCK),
        .cpm_pcie_noc_axi1_arprot(versal_cips_0_CPM_PCIE_NOC_1_ARPROT),
        .cpm_pcie_noc_axi1_arqos(versal_cips_0_CPM_PCIE_NOC_1_ARQOS),
        .cpm_pcie_noc_axi1_arready(versal_cips_0_CPM_PCIE_NOC_1_ARREADY),
        .cpm_pcie_noc_axi1_arsize(versal_cips_0_CPM_PCIE_NOC_1_ARSIZE),
        .cpm_pcie_noc_axi1_aruser(versal_cips_0_CPM_PCIE_NOC_1_ARUSER),
        .cpm_pcie_noc_axi1_arvalid(versal_cips_0_CPM_PCIE_NOC_1_ARVALID),
        .cpm_pcie_noc_axi1_awaddr(versal_cips_0_CPM_PCIE_NOC_1_AWADDR),
        .cpm_pcie_noc_axi1_awburst(versal_cips_0_CPM_PCIE_NOC_1_AWBURST),
        .cpm_pcie_noc_axi1_awcache(versal_cips_0_CPM_PCIE_NOC_1_AWCACHE),
        .cpm_pcie_noc_axi1_awid(versal_cips_0_CPM_PCIE_NOC_1_AWID),
        .cpm_pcie_noc_axi1_awlen(versal_cips_0_CPM_PCIE_NOC_1_AWLEN),
        .cpm_pcie_noc_axi1_awlock(versal_cips_0_CPM_PCIE_NOC_1_AWLOCK),
        .cpm_pcie_noc_axi1_awprot(versal_cips_0_CPM_PCIE_NOC_1_AWPROT),
        .cpm_pcie_noc_axi1_awqos(versal_cips_0_CPM_PCIE_NOC_1_AWQOS),
        .cpm_pcie_noc_axi1_awready(versal_cips_0_CPM_PCIE_NOC_1_AWREADY),
        .cpm_pcie_noc_axi1_awsize(versal_cips_0_CPM_PCIE_NOC_1_AWSIZE),
        .cpm_pcie_noc_axi1_awuser(versal_cips_0_CPM_PCIE_NOC_1_AWUSER),
        .cpm_pcie_noc_axi1_awvalid(versal_cips_0_CPM_PCIE_NOC_1_AWVALID),
        .cpm_pcie_noc_axi1_bid(versal_cips_0_CPM_PCIE_NOC_1_BID),
        .cpm_pcie_noc_axi1_bready(versal_cips_0_CPM_PCIE_NOC_1_BREADY),
        .cpm_pcie_noc_axi1_bresp(versal_cips_0_CPM_PCIE_NOC_1_BRESP),
        .cpm_pcie_noc_axi1_bvalid(versal_cips_0_CPM_PCIE_NOC_1_BVALID),
        .cpm_pcie_noc_axi1_clk(versal_cips_0_cpm_pcie_noc_axi1_clk),
        .cpm_pcie_noc_axi1_rdata(versal_cips_0_CPM_PCIE_NOC_1_RDATA),
        .cpm_pcie_noc_axi1_rid(versal_cips_0_CPM_PCIE_NOC_1_RID),
        .cpm_pcie_noc_axi1_rlast(versal_cips_0_CPM_PCIE_NOC_1_RLAST),
        .cpm_pcie_noc_axi1_rready(versal_cips_0_CPM_PCIE_NOC_1_RREADY),
        .cpm_pcie_noc_axi1_rresp(versal_cips_0_CPM_PCIE_NOC_1_RRESP),
        .cpm_pcie_noc_axi1_rvalid(versal_cips_0_CPM_PCIE_NOC_1_RVALID),
        .cpm_pcie_noc_axi1_wdata(versal_cips_0_CPM_PCIE_NOC_1_WDATA),
        .cpm_pcie_noc_axi1_wlast(versal_cips_0_CPM_PCIE_NOC_1_WLAST),
        .cpm_pcie_noc_axi1_wready(versal_cips_0_CPM_PCIE_NOC_1_WREADY),
        .cpm_pcie_noc_axi1_wstrb(versal_cips_0_CPM_PCIE_NOC_1_WSTRB),
        .cpm_pcie_noc_axi1_wvalid(versal_cips_0_CPM_PCIE_NOC_1_WVALID),
        .dma0_soft_resetn(1'b1),
        .dma0_st_rx_msg_rdy(1'b1),
        .fpd_axi_noc_axi0_araddr(versal_cips_0_FPD_AXI_NOC_0_ARADDR),
        .fpd_axi_noc_axi0_arburst(versal_cips_0_FPD_AXI_NOC_0_ARBURST),
        .fpd_axi_noc_axi0_arcache(versal_cips_0_FPD_AXI_NOC_0_ARCACHE),
        .fpd_axi_noc_axi0_arid(versal_cips_0_FPD_AXI_NOC_0_ARID),
        .fpd_axi_noc_axi0_arlen(versal_cips_0_FPD_AXI_NOC_0_ARLEN),
        .fpd_axi_noc_axi0_arlock(versal_cips_0_FPD_AXI_NOC_0_ARLOCK),
        .fpd_axi_noc_axi0_arprot(versal_cips_0_FPD_AXI_NOC_0_ARPROT),
        .fpd_axi_noc_axi0_arqos(versal_cips_0_FPD_AXI_NOC_0_ARQOS),
        .fpd_axi_noc_axi0_arready(versal_cips_0_FPD_AXI_NOC_0_ARREADY),
        .fpd_axi_noc_axi0_arsize(versal_cips_0_FPD_AXI_NOC_0_ARSIZE),
        .fpd_axi_noc_axi0_aruser(versal_cips_0_FPD_AXI_NOC_0_ARUSER),
        .fpd_axi_noc_axi0_arvalid(versal_cips_0_FPD_AXI_NOC_0_ARVALID),
        .fpd_axi_noc_axi0_awaddr(versal_cips_0_FPD_AXI_NOC_0_AWADDR),
        .fpd_axi_noc_axi0_awburst(versal_cips_0_FPD_AXI_NOC_0_AWBURST),
        .fpd_axi_noc_axi0_awcache(versal_cips_0_FPD_AXI_NOC_0_AWCACHE),
        .fpd_axi_noc_axi0_awid(versal_cips_0_FPD_AXI_NOC_0_AWID),
        .fpd_axi_noc_axi0_awlen(versal_cips_0_FPD_AXI_NOC_0_AWLEN),
        .fpd_axi_noc_axi0_awlock(versal_cips_0_FPD_AXI_NOC_0_AWLOCK),
        .fpd_axi_noc_axi0_awprot(versal_cips_0_FPD_AXI_NOC_0_AWPROT),
        .fpd_axi_noc_axi0_awqos(versal_cips_0_FPD_AXI_NOC_0_AWQOS),
        .fpd_axi_noc_axi0_awready(versal_cips_0_FPD_AXI_NOC_0_AWREADY),
        .fpd_axi_noc_axi0_awsize(versal_cips_0_FPD_AXI_NOC_0_AWSIZE),
        .fpd_axi_noc_axi0_awuser(versal_cips_0_FPD_AXI_NOC_0_AWUSER),
        .fpd_axi_noc_axi0_awvalid(versal_cips_0_FPD_AXI_NOC_0_AWVALID),
        .fpd_axi_noc_axi0_bid(versal_cips_0_FPD_AXI_NOC_0_BID),
        .fpd_axi_noc_axi0_bready(versal_cips_0_FPD_AXI_NOC_0_BREADY),
        .fpd_axi_noc_axi0_bresp(versal_cips_0_FPD_AXI_NOC_0_BRESP),
        .fpd_axi_noc_axi0_bvalid(versal_cips_0_FPD_AXI_NOC_0_BVALID),
        .fpd_axi_noc_axi0_clk(versal_cips_0_fpd_axi_noc_axi0_clk),
        .fpd_axi_noc_axi0_rdata(versal_cips_0_FPD_AXI_NOC_0_RDATA),
        .fpd_axi_noc_axi0_rid(versal_cips_0_FPD_AXI_NOC_0_RID),
        .fpd_axi_noc_axi0_rlast(versal_cips_0_FPD_AXI_NOC_0_RLAST),
        .fpd_axi_noc_axi0_rready(versal_cips_0_FPD_AXI_NOC_0_RREADY),
        .fpd_axi_noc_axi0_rresp(versal_cips_0_FPD_AXI_NOC_0_RRESP),
        .fpd_axi_noc_axi0_rvalid(versal_cips_0_FPD_AXI_NOC_0_RVALID),
        .fpd_axi_noc_axi0_wdata(versal_cips_0_FPD_AXI_NOC_0_WDATA),
        .fpd_axi_noc_axi0_wlast(versal_cips_0_FPD_AXI_NOC_0_WLAST),
        .fpd_axi_noc_axi0_wready(versal_cips_0_FPD_AXI_NOC_0_WREADY),
        .fpd_axi_noc_axi0_wstrb(versal_cips_0_FPD_AXI_NOC_0_WSTRB),
        .fpd_axi_noc_axi0_wvalid(versal_cips_0_FPD_AXI_NOC_0_WVALID),
        .fpd_cci_noc_axi0_araddr(versal_cips_0_FPD_CCI_NOC_0_ARADDR),
        .fpd_cci_noc_axi0_arburst(versal_cips_0_FPD_CCI_NOC_0_ARBURST),
        .fpd_cci_noc_axi0_arcache(versal_cips_0_FPD_CCI_NOC_0_ARCACHE),
        .fpd_cci_noc_axi0_arid(versal_cips_0_FPD_CCI_NOC_0_ARID),
        .fpd_cci_noc_axi0_arlen(versal_cips_0_FPD_CCI_NOC_0_ARLEN),
        .fpd_cci_noc_axi0_arlock(versal_cips_0_FPD_CCI_NOC_0_ARLOCK),
        .fpd_cci_noc_axi0_arprot(versal_cips_0_FPD_CCI_NOC_0_ARPROT),
        .fpd_cci_noc_axi0_arqos(versal_cips_0_FPD_CCI_NOC_0_ARQOS),
        .fpd_cci_noc_axi0_arready(versal_cips_0_FPD_CCI_NOC_0_ARREADY),
        .fpd_cci_noc_axi0_arsize(versal_cips_0_FPD_CCI_NOC_0_ARSIZE),
        .fpd_cci_noc_axi0_aruser(versal_cips_0_FPD_CCI_NOC_0_ARUSER),
        .fpd_cci_noc_axi0_arvalid(versal_cips_0_FPD_CCI_NOC_0_ARVALID),
        .fpd_cci_noc_axi0_awaddr(versal_cips_0_FPD_CCI_NOC_0_AWADDR),
        .fpd_cci_noc_axi0_awburst(versal_cips_0_FPD_CCI_NOC_0_AWBURST),
        .fpd_cci_noc_axi0_awcache(versal_cips_0_FPD_CCI_NOC_0_AWCACHE),
        .fpd_cci_noc_axi0_awid(versal_cips_0_FPD_CCI_NOC_0_AWID),
        .fpd_cci_noc_axi0_awlen(versal_cips_0_FPD_CCI_NOC_0_AWLEN),
        .fpd_cci_noc_axi0_awlock(versal_cips_0_FPD_CCI_NOC_0_AWLOCK),
        .fpd_cci_noc_axi0_awprot(versal_cips_0_FPD_CCI_NOC_0_AWPROT),
        .fpd_cci_noc_axi0_awqos(versal_cips_0_FPD_CCI_NOC_0_AWQOS),
        .fpd_cci_noc_axi0_awready(versal_cips_0_FPD_CCI_NOC_0_AWREADY),
        .fpd_cci_noc_axi0_awsize(versal_cips_0_FPD_CCI_NOC_0_AWSIZE),
        .fpd_cci_noc_axi0_awuser(versal_cips_0_FPD_CCI_NOC_0_AWUSER),
        .fpd_cci_noc_axi0_awvalid(versal_cips_0_FPD_CCI_NOC_0_AWVALID),
        .fpd_cci_noc_axi0_bid(versal_cips_0_FPD_CCI_NOC_0_BID),
        .fpd_cci_noc_axi0_bready(versal_cips_0_FPD_CCI_NOC_0_BREADY),
        .fpd_cci_noc_axi0_bresp(versal_cips_0_FPD_CCI_NOC_0_BRESP),
        .fpd_cci_noc_axi0_bvalid(versal_cips_0_FPD_CCI_NOC_0_BVALID),
        .fpd_cci_noc_axi0_clk(versal_cips_0_fpd_cci_noc_axi0_clk),
        .fpd_cci_noc_axi0_rdata(versal_cips_0_FPD_CCI_NOC_0_RDATA),
        .fpd_cci_noc_axi0_rid(versal_cips_0_FPD_CCI_NOC_0_RID),
        .fpd_cci_noc_axi0_rlast(versal_cips_0_FPD_CCI_NOC_0_RLAST),
        .fpd_cci_noc_axi0_rready(versal_cips_0_FPD_CCI_NOC_0_RREADY),
        .fpd_cci_noc_axi0_rresp(versal_cips_0_FPD_CCI_NOC_0_RRESP),
        .fpd_cci_noc_axi0_rvalid(versal_cips_0_FPD_CCI_NOC_0_RVALID),
        .fpd_cci_noc_axi0_wdata(versal_cips_0_FPD_CCI_NOC_0_WDATA),
        .fpd_cci_noc_axi0_wlast(versal_cips_0_FPD_CCI_NOC_0_WLAST),
        .fpd_cci_noc_axi0_wready(versal_cips_0_FPD_CCI_NOC_0_WREADY),
        .fpd_cci_noc_axi0_wstrb(versal_cips_0_FPD_CCI_NOC_0_WSTRB),
        .fpd_cci_noc_axi0_wuser(versal_cips_0_FPD_CCI_NOC_0_WUSER),
        .fpd_cci_noc_axi0_wvalid(versal_cips_0_FPD_CCI_NOC_0_WVALID),
        .fpd_cci_noc_axi1_araddr(versal_cips_0_FPD_CCI_NOC_1_ARADDR),
        .fpd_cci_noc_axi1_arburst(versal_cips_0_FPD_CCI_NOC_1_ARBURST),
        .fpd_cci_noc_axi1_arcache(versal_cips_0_FPD_CCI_NOC_1_ARCACHE),
        .fpd_cci_noc_axi1_arid(versal_cips_0_FPD_CCI_NOC_1_ARID),
        .fpd_cci_noc_axi1_arlen(versal_cips_0_FPD_CCI_NOC_1_ARLEN),
        .fpd_cci_noc_axi1_arlock(versal_cips_0_FPD_CCI_NOC_1_ARLOCK),
        .fpd_cci_noc_axi1_arprot(versal_cips_0_FPD_CCI_NOC_1_ARPROT),
        .fpd_cci_noc_axi1_arqos(versal_cips_0_FPD_CCI_NOC_1_ARQOS),
        .fpd_cci_noc_axi1_arready(versal_cips_0_FPD_CCI_NOC_1_ARREADY),
        .fpd_cci_noc_axi1_arsize(versal_cips_0_FPD_CCI_NOC_1_ARSIZE),
        .fpd_cci_noc_axi1_aruser(versal_cips_0_FPD_CCI_NOC_1_ARUSER),
        .fpd_cci_noc_axi1_arvalid(versal_cips_0_FPD_CCI_NOC_1_ARVALID),
        .fpd_cci_noc_axi1_awaddr(versal_cips_0_FPD_CCI_NOC_1_AWADDR),
        .fpd_cci_noc_axi1_awburst(versal_cips_0_FPD_CCI_NOC_1_AWBURST),
        .fpd_cci_noc_axi1_awcache(versal_cips_0_FPD_CCI_NOC_1_AWCACHE),
        .fpd_cci_noc_axi1_awid(versal_cips_0_FPD_CCI_NOC_1_AWID),
        .fpd_cci_noc_axi1_awlen(versal_cips_0_FPD_CCI_NOC_1_AWLEN),
        .fpd_cci_noc_axi1_awlock(versal_cips_0_FPD_CCI_NOC_1_AWLOCK),
        .fpd_cci_noc_axi1_awprot(versal_cips_0_FPD_CCI_NOC_1_AWPROT),
        .fpd_cci_noc_axi1_awqos(versal_cips_0_FPD_CCI_NOC_1_AWQOS),
        .fpd_cci_noc_axi1_awready(versal_cips_0_FPD_CCI_NOC_1_AWREADY),
        .fpd_cci_noc_axi1_awsize(versal_cips_0_FPD_CCI_NOC_1_AWSIZE),
        .fpd_cci_noc_axi1_awuser(versal_cips_0_FPD_CCI_NOC_1_AWUSER),
        .fpd_cci_noc_axi1_awvalid(versal_cips_0_FPD_CCI_NOC_1_AWVALID),
        .fpd_cci_noc_axi1_bid(versal_cips_0_FPD_CCI_NOC_1_BID),
        .fpd_cci_noc_axi1_bready(versal_cips_0_FPD_CCI_NOC_1_BREADY),
        .fpd_cci_noc_axi1_bresp(versal_cips_0_FPD_CCI_NOC_1_BRESP),
        .fpd_cci_noc_axi1_bvalid(versal_cips_0_FPD_CCI_NOC_1_BVALID),
        .fpd_cci_noc_axi1_clk(versal_cips_0_fpd_cci_noc_axi1_clk),
        .fpd_cci_noc_axi1_rdata(versal_cips_0_FPD_CCI_NOC_1_RDATA),
        .fpd_cci_noc_axi1_rid(versal_cips_0_FPD_CCI_NOC_1_RID),
        .fpd_cci_noc_axi1_rlast(versal_cips_0_FPD_CCI_NOC_1_RLAST),
        .fpd_cci_noc_axi1_rready(versal_cips_0_FPD_CCI_NOC_1_RREADY),
        .fpd_cci_noc_axi1_rresp(versal_cips_0_FPD_CCI_NOC_1_RRESP),
        .fpd_cci_noc_axi1_rvalid(versal_cips_0_FPD_CCI_NOC_1_RVALID),
        .fpd_cci_noc_axi1_wdata(versal_cips_0_FPD_CCI_NOC_1_WDATA),
        .fpd_cci_noc_axi1_wlast(versal_cips_0_FPD_CCI_NOC_1_WLAST),
        .fpd_cci_noc_axi1_wready(versal_cips_0_FPD_CCI_NOC_1_WREADY),
        .fpd_cci_noc_axi1_wstrb(versal_cips_0_FPD_CCI_NOC_1_WSTRB),
        .fpd_cci_noc_axi1_wuser(versal_cips_0_FPD_CCI_NOC_1_WUSER),
        .fpd_cci_noc_axi1_wvalid(versal_cips_0_FPD_CCI_NOC_1_WVALID),
        .fpd_cci_noc_axi2_araddr(versal_cips_0_FPD_CCI_NOC_2_ARADDR),
        .fpd_cci_noc_axi2_arburst(versal_cips_0_FPD_CCI_NOC_2_ARBURST),
        .fpd_cci_noc_axi2_arcache(versal_cips_0_FPD_CCI_NOC_2_ARCACHE),
        .fpd_cci_noc_axi2_arid(versal_cips_0_FPD_CCI_NOC_2_ARID),
        .fpd_cci_noc_axi2_arlen(versal_cips_0_FPD_CCI_NOC_2_ARLEN),
        .fpd_cci_noc_axi2_arlock(versal_cips_0_FPD_CCI_NOC_2_ARLOCK),
        .fpd_cci_noc_axi2_arprot(versal_cips_0_FPD_CCI_NOC_2_ARPROT),
        .fpd_cci_noc_axi2_arqos(versal_cips_0_FPD_CCI_NOC_2_ARQOS),
        .fpd_cci_noc_axi2_arready(versal_cips_0_FPD_CCI_NOC_2_ARREADY),
        .fpd_cci_noc_axi2_arsize(versal_cips_0_FPD_CCI_NOC_2_ARSIZE),
        .fpd_cci_noc_axi2_aruser(versal_cips_0_FPD_CCI_NOC_2_ARUSER),
        .fpd_cci_noc_axi2_arvalid(versal_cips_0_FPD_CCI_NOC_2_ARVALID),
        .fpd_cci_noc_axi2_awaddr(versal_cips_0_FPD_CCI_NOC_2_AWADDR),
        .fpd_cci_noc_axi2_awburst(versal_cips_0_FPD_CCI_NOC_2_AWBURST),
        .fpd_cci_noc_axi2_awcache(versal_cips_0_FPD_CCI_NOC_2_AWCACHE),
        .fpd_cci_noc_axi2_awid(versal_cips_0_FPD_CCI_NOC_2_AWID),
        .fpd_cci_noc_axi2_awlen(versal_cips_0_FPD_CCI_NOC_2_AWLEN),
        .fpd_cci_noc_axi2_awlock(versal_cips_0_FPD_CCI_NOC_2_AWLOCK),
        .fpd_cci_noc_axi2_awprot(versal_cips_0_FPD_CCI_NOC_2_AWPROT),
        .fpd_cci_noc_axi2_awqos(versal_cips_0_FPD_CCI_NOC_2_AWQOS),
        .fpd_cci_noc_axi2_awready(versal_cips_0_FPD_CCI_NOC_2_AWREADY),
        .fpd_cci_noc_axi2_awsize(versal_cips_0_FPD_CCI_NOC_2_AWSIZE),
        .fpd_cci_noc_axi2_awuser(versal_cips_0_FPD_CCI_NOC_2_AWUSER),
        .fpd_cci_noc_axi2_awvalid(versal_cips_0_FPD_CCI_NOC_2_AWVALID),
        .fpd_cci_noc_axi2_bid(versal_cips_0_FPD_CCI_NOC_2_BID),
        .fpd_cci_noc_axi2_bready(versal_cips_0_FPD_CCI_NOC_2_BREADY),
        .fpd_cci_noc_axi2_bresp(versal_cips_0_FPD_CCI_NOC_2_BRESP),
        .fpd_cci_noc_axi2_bvalid(versal_cips_0_FPD_CCI_NOC_2_BVALID),
        .fpd_cci_noc_axi2_clk(versal_cips_0_fpd_cci_noc_axi2_clk),
        .fpd_cci_noc_axi2_rdata(versal_cips_0_FPD_CCI_NOC_2_RDATA),
        .fpd_cci_noc_axi2_rid(versal_cips_0_FPD_CCI_NOC_2_RID),
        .fpd_cci_noc_axi2_rlast(versal_cips_0_FPD_CCI_NOC_2_RLAST),
        .fpd_cci_noc_axi2_rready(versal_cips_0_FPD_CCI_NOC_2_RREADY),
        .fpd_cci_noc_axi2_rresp(versal_cips_0_FPD_CCI_NOC_2_RRESP),
        .fpd_cci_noc_axi2_rvalid(versal_cips_0_FPD_CCI_NOC_2_RVALID),
        .fpd_cci_noc_axi2_wdata(versal_cips_0_FPD_CCI_NOC_2_WDATA),
        .fpd_cci_noc_axi2_wlast(versal_cips_0_FPD_CCI_NOC_2_WLAST),
        .fpd_cci_noc_axi2_wready(versal_cips_0_FPD_CCI_NOC_2_WREADY),
        .fpd_cci_noc_axi2_wstrb(versal_cips_0_FPD_CCI_NOC_2_WSTRB),
        .fpd_cci_noc_axi2_wuser(versal_cips_0_FPD_CCI_NOC_2_WUSER),
        .fpd_cci_noc_axi2_wvalid(versal_cips_0_FPD_CCI_NOC_2_WVALID),
        .fpd_cci_noc_axi3_araddr(versal_cips_0_FPD_CCI_NOC_3_ARADDR),
        .fpd_cci_noc_axi3_arburst(versal_cips_0_FPD_CCI_NOC_3_ARBURST),
        .fpd_cci_noc_axi3_arcache(versal_cips_0_FPD_CCI_NOC_3_ARCACHE),
        .fpd_cci_noc_axi3_arid(versal_cips_0_FPD_CCI_NOC_3_ARID),
        .fpd_cci_noc_axi3_arlen(versal_cips_0_FPD_CCI_NOC_3_ARLEN),
        .fpd_cci_noc_axi3_arlock(versal_cips_0_FPD_CCI_NOC_3_ARLOCK),
        .fpd_cci_noc_axi3_arprot(versal_cips_0_FPD_CCI_NOC_3_ARPROT),
        .fpd_cci_noc_axi3_arqos(versal_cips_0_FPD_CCI_NOC_3_ARQOS),
        .fpd_cci_noc_axi3_arready(versal_cips_0_FPD_CCI_NOC_3_ARREADY),
        .fpd_cci_noc_axi3_arsize(versal_cips_0_FPD_CCI_NOC_3_ARSIZE),
        .fpd_cci_noc_axi3_aruser(versal_cips_0_FPD_CCI_NOC_3_ARUSER),
        .fpd_cci_noc_axi3_arvalid(versal_cips_0_FPD_CCI_NOC_3_ARVALID),
        .fpd_cci_noc_axi3_awaddr(versal_cips_0_FPD_CCI_NOC_3_AWADDR),
        .fpd_cci_noc_axi3_awburst(versal_cips_0_FPD_CCI_NOC_3_AWBURST),
        .fpd_cci_noc_axi3_awcache(versal_cips_0_FPD_CCI_NOC_3_AWCACHE),
        .fpd_cci_noc_axi3_awid(versal_cips_0_FPD_CCI_NOC_3_AWID),
        .fpd_cci_noc_axi3_awlen(versal_cips_0_FPD_CCI_NOC_3_AWLEN),
        .fpd_cci_noc_axi3_awlock(versal_cips_0_FPD_CCI_NOC_3_AWLOCK),
        .fpd_cci_noc_axi3_awprot(versal_cips_0_FPD_CCI_NOC_3_AWPROT),
        .fpd_cci_noc_axi3_awqos(versal_cips_0_FPD_CCI_NOC_3_AWQOS),
        .fpd_cci_noc_axi3_awready(versal_cips_0_FPD_CCI_NOC_3_AWREADY),
        .fpd_cci_noc_axi3_awsize(versal_cips_0_FPD_CCI_NOC_3_AWSIZE),
        .fpd_cci_noc_axi3_awuser(versal_cips_0_FPD_CCI_NOC_3_AWUSER),
        .fpd_cci_noc_axi3_awvalid(versal_cips_0_FPD_CCI_NOC_3_AWVALID),
        .fpd_cci_noc_axi3_bid(versal_cips_0_FPD_CCI_NOC_3_BID),
        .fpd_cci_noc_axi3_bready(versal_cips_0_FPD_CCI_NOC_3_BREADY),
        .fpd_cci_noc_axi3_bresp(versal_cips_0_FPD_CCI_NOC_3_BRESP),
        .fpd_cci_noc_axi3_bvalid(versal_cips_0_FPD_CCI_NOC_3_BVALID),
        .fpd_cci_noc_axi3_clk(versal_cips_0_fpd_cci_noc_axi3_clk),
        .fpd_cci_noc_axi3_rdata(versal_cips_0_FPD_CCI_NOC_3_RDATA),
        .fpd_cci_noc_axi3_rid(versal_cips_0_FPD_CCI_NOC_3_RID),
        .fpd_cci_noc_axi3_rlast(versal_cips_0_FPD_CCI_NOC_3_RLAST),
        .fpd_cci_noc_axi3_rready(versal_cips_0_FPD_CCI_NOC_3_RREADY),
        .fpd_cci_noc_axi3_rresp(versal_cips_0_FPD_CCI_NOC_3_RRESP),
        .fpd_cci_noc_axi3_rvalid(versal_cips_0_FPD_CCI_NOC_3_RVALID),
        .fpd_cci_noc_axi3_wdata(versal_cips_0_FPD_CCI_NOC_3_WDATA),
        .fpd_cci_noc_axi3_wlast(versal_cips_0_FPD_CCI_NOC_3_WLAST),
        .fpd_cci_noc_axi3_wready(versal_cips_0_FPD_CCI_NOC_3_WREADY),
        .fpd_cci_noc_axi3_wstrb(versal_cips_0_FPD_CCI_NOC_3_WSTRB),
        .fpd_cci_noc_axi3_wuser(versal_cips_0_FPD_CCI_NOC_3_WUSER),
        .fpd_cci_noc_axi3_wvalid(versal_cips_0_FPD_CCI_NOC_3_WVALID),
        .gt_refclk0_n(gt_refclk0_0_1_CLK_N),
        .gt_refclk0_p(gt_refclk0_0_1_CLK_P),
        .gt_refclk1_n(gt_refclk1_0_1_CLK_N),
        .gt_refclk1_p(gt_refclk1_0_1_CLK_P),
        .lpd_axi_noc_clk(versal_cips_0_lpd_axi_noc_clk),
        .noc_lpd_axi_axi0_araddr(versal_cips_0_NOC_LPD_AXI_0_ARADDR),
        .noc_lpd_axi_axi0_arburst(versal_cips_0_NOC_LPD_AXI_0_ARBURST),
        .noc_lpd_axi_axi0_arcache(versal_cips_0_NOC_LPD_AXI_0_ARCACHE),
        .noc_lpd_axi_axi0_arid(versal_cips_0_NOC_LPD_AXI_0_ARID),
        .noc_lpd_axi_axi0_arlen(versal_cips_0_NOC_LPD_AXI_0_ARLEN),
        .noc_lpd_axi_axi0_arlock(versal_cips_0_NOC_LPD_AXI_0_ARLOCK),
        .noc_lpd_axi_axi0_arprot(versal_cips_0_NOC_LPD_AXI_0_ARPROT),
        .noc_lpd_axi_axi0_arqos(versal_cips_0_NOC_LPD_AXI_0_ARQOS),
        .noc_lpd_axi_axi0_arready(versal_cips_0_NOC_LPD_AXI_0_ARREADY),
        .noc_lpd_axi_axi0_arsize(versal_cips_0_NOC_LPD_AXI_0_ARSIZE),
        .noc_lpd_axi_axi0_aruser(versal_cips_0_NOC_LPD_AXI_0_ARUSER),
        .noc_lpd_axi_axi0_arvalid(versal_cips_0_NOC_LPD_AXI_0_ARVALID),
        .noc_lpd_axi_axi0_awaddr(versal_cips_0_NOC_LPD_AXI_0_AWADDR),
        .noc_lpd_axi_axi0_awburst(versal_cips_0_NOC_LPD_AXI_0_AWBURST),
        .noc_lpd_axi_axi0_awcache(versal_cips_0_NOC_LPD_AXI_0_AWCACHE),
        .noc_lpd_axi_axi0_awid(versal_cips_0_NOC_LPD_AXI_0_AWID),
        .noc_lpd_axi_axi0_awlen(versal_cips_0_NOC_LPD_AXI_0_AWLEN),
        .noc_lpd_axi_axi0_awlock(versal_cips_0_NOC_LPD_AXI_0_AWLOCK),
        .noc_lpd_axi_axi0_awprot(versal_cips_0_NOC_LPD_AXI_0_AWPROT),
        .noc_lpd_axi_axi0_awqos(versal_cips_0_NOC_LPD_AXI_0_AWQOS),
        .noc_lpd_axi_axi0_awready(versal_cips_0_NOC_LPD_AXI_0_AWREADY),
        .noc_lpd_axi_axi0_awsize(versal_cips_0_NOC_LPD_AXI_0_AWSIZE),
        .noc_lpd_axi_axi0_awuser(versal_cips_0_NOC_LPD_AXI_0_AWUSER),
        .noc_lpd_axi_axi0_awvalid(versal_cips_0_NOC_LPD_AXI_0_AWVALID),
        .noc_lpd_axi_axi0_bid(versal_cips_0_NOC_LPD_AXI_0_BID),
        .noc_lpd_axi_axi0_bready(versal_cips_0_NOC_LPD_AXI_0_BREADY),
        .noc_lpd_axi_axi0_bresp(versal_cips_0_NOC_LPD_AXI_0_BRESP),
        .noc_lpd_axi_axi0_bvalid(versal_cips_0_NOC_LPD_AXI_0_BVALID),
        .noc_lpd_axi_axi0_rdata(versal_cips_0_NOC_LPD_AXI_0_RDATA),
        .noc_lpd_axi_axi0_rid(versal_cips_0_NOC_LPD_AXI_0_RID),
        .noc_lpd_axi_axi0_rlast(versal_cips_0_NOC_LPD_AXI_0_RLAST),
        .noc_lpd_axi_axi0_rready(versal_cips_0_NOC_LPD_AXI_0_RREADY),
        .noc_lpd_axi_axi0_rresp(versal_cips_0_NOC_LPD_AXI_0_RRESP),
        .noc_lpd_axi_axi0_rvalid(versal_cips_0_NOC_LPD_AXI_0_RVALID),
        .noc_lpd_axi_axi0_wdata(versal_cips_0_NOC_LPD_AXI_0_WDATA),
        .noc_lpd_axi_axi0_wlast(versal_cips_0_NOC_LPD_AXI_0_WLAST),
        .noc_lpd_axi_axi0_wready(versal_cips_0_NOC_LPD_AXI_0_WREADY),
        .noc_lpd_axi_axi0_wstrb(versal_cips_0_NOC_LPD_AXI_0_WSTRB),
        .noc_lpd_axi_axi0_wvalid(versal_cips_0_NOC_LPD_AXI_0_WVALID),
        .pcie0_gt_rxn(versal_cips_0_PCIE0_GT_GRX_N),
        .pcie0_gt_rxp(versal_cips_0_PCIE0_GT_GRX_P),
        .pcie0_gt_txn(versal_cips_0_PCIE0_GT_GTX_N),
        .pcie0_gt_txp(versal_cips_0_PCIE0_GT_GTX_P),
        .pcie1_cfg_interrupt_int({1'b0,1'b0,1'b0,1'b0}),
        .pcie1_cfg_interrupt_pending({1'b0,1'b0,1'b0,1'b0}),
        .pcie1_cfg_msi_attr({1'b0,1'b0,1'b0}),
        .pcie1_cfg_msi_function_number({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pcie1_cfg_msi_int_vector({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pcie1_cfg_msi_pending_status({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pcie1_cfg_msi_pending_status_data_enable(1'b0),
        .pcie1_cfg_msi_pending_status_function_number({1'b0,1'b0}),
        .pcie1_cfg_msi_select({1'b0,1'b0}),
        .pcie1_cfg_msi_tph_present(1'b0),
        .pcie1_cfg_msi_tph_st_tag({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pcie1_cfg_msi_tph_type({1'b0,1'b0}),
        .pcie1_cfg_msix_address({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pcie1_cfg_msix_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pcie1_cfg_msix_int_vector(1'b0),
        .pcie1_cfg_msix_mint_vector({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pcie1_cfg_msix_vec_pending({1'b0,1'b0}),
        .pcie1_gt_rxn(versal_cips_0_PCIE1_GT_GRX_N),
        .pcie1_gt_rxp(versal_cips_0_PCIE1_GT_GRX_P),
        .pcie1_gt_txn(versal_cips_0_PCIE1_GT_GTX_N),
        .pcie1_gt_txp(versal_cips_0_PCIE1_GT_GTX_P),
        .pcie1_m_axis_cq_tready(1'b1),
        .pcie1_m_axis_rc_tready(1'b1),
        .pcie1_s_axis_cc_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pcie1_s_axis_cc_tkeep({1'b1,1'b1}),
        .pcie1_s_axis_cc_tlast(1'b0),
        .pcie1_s_axis_cc_tuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pcie1_s_axis_cc_tvalid(1'b0),
        .pcie1_s_axis_rq_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pcie1_s_axis_rq_tkeep({1'b1,1'b1}),
        .pcie1_s_axis_rq_tlast(1'b0),
        .pcie1_s_axis_rq_tuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pcie1_s_axis_rq_tvalid(1'b0),
        .pmc_axi_noc_axi0_clk(versal_cips_0_pmc_axi_noc_axi0_clk),
        .pmc_noc_axi0_araddr(versal_cips_0_PMC_NOC_AXI_0_ARADDR),
        .pmc_noc_axi0_arburst(versal_cips_0_PMC_NOC_AXI_0_ARBURST),
        .pmc_noc_axi0_arcache(versal_cips_0_PMC_NOC_AXI_0_ARCACHE),
        .pmc_noc_axi0_arid(versal_cips_0_PMC_NOC_AXI_0_ARID),
        .pmc_noc_axi0_arlen(versal_cips_0_PMC_NOC_AXI_0_ARLEN),
        .pmc_noc_axi0_arlock(versal_cips_0_PMC_NOC_AXI_0_ARLOCK),
        .pmc_noc_axi0_arprot(versal_cips_0_PMC_NOC_AXI_0_ARPROT),
        .pmc_noc_axi0_arqos(versal_cips_0_PMC_NOC_AXI_0_ARQOS),
        .pmc_noc_axi0_arready(versal_cips_0_PMC_NOC_AXI_0_ARREADY),
        .pmc_noc_axi0_arregion(versal_cips_0_PMC_NOC_AXI_0_ARREGION),
        .pmc_noc_axi0_arsize(versal_cips_0_PMC_NOC_AXI_0_ARSIZE),
        .pmc_noc_axi0_aruser(versal_cips_0_PMC_NOC_AXI_0_ARUSER),
        .pmc_noc_axi0_arvalid(versal_cips_0_PMC_NOC_AXI_0_ARVALID),
        .pmc_noc_axi0_awaddr(versal_cips_0_PMC_NOC_AXI_0_AWADDR),
        .pmc_noc_axi0_awburst(versal_cips_0_PMC_NOC_AXI_0_AWBURST),
        .pmc_noc_axi0_awcache(versal_cips_0_PMC_NOC_AXI_0_AWCACHE),
        .pmc_noc_axi0_awid(versal_cips_0_PMC_NOC_AXI_0_AWID),
        .pmc_noc_axi0_awlen(versal_cips_0_PMC_NOC_AXI_0_AWLEN),
        .pmc_noc_axi0_awlock(versal_cips_0_PMC_NOC_AXI_0_AWLOCK),
        .pmc_noc_axi0_awprot(versal_cips_0_PMC_NOC_AXI_0_AWPROT),
        .pmc_noc_axi0_awqos(versal_cips_0_PMC_NOC_AXI_0_AWQOS),
        .pmc_noc_axi0_awready(versal_cips_0_PMC_NOC_AXI_0_AWREADY),
        .pmc_noc_axi0_awregion(versal_cips_0_PMC_NOC_AXI_0_AWREGION),
        .pmc_noc_axi0_awsize(versal_cips_0_PMC_NOC_AXI_0_AWSIZE),
        .pmc_noc_axi0_awuser(versal_cips_0_PMC_NOC_AXI_0_AWUSER),
        .pmc_noc_axi0_awvalid(versal_cips_0_PMC_NOC_AXI_0_AWVALID),
        .pmc_noc_axi0_bid(versal_cips_0_PMC_NOC_AXI_0_BID),
        .pmc_noc_axi0_bready(versal_cips_0_PMC_NOC_AXI_0_BREADY),
        .pmc_noc_axi0_bresp(versal_cips_0_PMC_NOC_AXI_0_BRESP),
        .pmc_noc_axi0_buser(versal_cips_0_PMC_NOC_AXI_0_BUSER),
        .pmc_noc_axi0_bvalid(versal_cips_0_PMC_NOC_AXI_0_BVALID),
        .pmc_noc_axi0_rdata(versal_cips_0_PMC_NOC_AXI_0_RDATA),
        .pmc_noc_axi0_rid(versal_cips_0_PMC_NOC_AXI_0_RID),
        .pmc_noc_axi0_rlast(versal_cips_0_PMC_NOC_AXI_0_RLAST),
        .pmc_noc_axi0_rready(versal_cips_0_PMC_NOC_AXI_0_RREADY),
        .pmc_noc_axi0_rresp(versal_cips_0_PMC_NOC_AXI_0_RRESP),
        .pmc_noc_axi0_ruser(versal_cips_0_PMC_NOC_AXI_0_RUSER),
        .pmc_noc_axi0_rvalid(versal_cips_0_PMC_NOC_AXI_0_RVALID),
        .pmc_noc_axi0_wdata(versal_cips_0_PMC_NOC_AXI_0_WDATA),
        .pmc_noc_axi0_wid(versal_cips_0_PMC_NOC_AXI_0_WID),
        .pmc_noc_axi0_wlast(versal_cips_0_PMC_NOC_AXI_0_WLAST),
        .pmc_noc_axi0_wready(versal_cips_0_PMC_NOC_AXI_0_WREADY),
        .pmc_noc_axi0_wstrb(versal_cips_0_PMC_NOC_AXI_0_WSTRB),
        .pmc_noc_axi0_wuser(versal_cips_0_PMC_NOC_AXI_0_WUSER),
        .pmc_noc_axi0_wvalid(versal_cips_0_PMC_NOC_AXI_0_WVALID),
        .xdma0_usr_irq_req(1'b0));
endmodule
