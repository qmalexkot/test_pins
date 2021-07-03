//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_8be5.bd
//Design : bd_8be5
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_8be5,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_8be5,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=29,numReposBlks=28,numNonXlnxBlks=0,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Global}" *) (* HW_HANDOFF = "design_1_axi_noc_0_0.hwdef" *) 
module bd_8be5
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
    M00_INI_internoc,
    M01_INI_internoc,
    M02_INI_internoc,
    M03_INI_internoc,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_ruser,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wuser,
    S00_AXI_wvalid,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arid,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arregion,
    S01_AXI_arsize,
    S01_AXI_aruser,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awid,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awregion,
    S01_AXI_awsize,
    S01_AXI_awuser,
    S01_AXI_awvalid,
    S01_AXI_bid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rid,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_ruser,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wid,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wuser,
    S01_AXI_wvalid,
    S02_AXI_araddr,
    S02_AXI_arburst,
    S02_AXI_arcache,
    S02_AXI_arid,
    S02_AXI_arlen,
    S02_AXI_arlock,
    S02_AXI_arprot,
    S02_AXI_arqos,
    S02_AXI_arready,
    S02_AXI_arregion,
    S02_AXI_arsize,
    S02_AXI_aruser,
    S02_AXI_arvalid,
    S02_AXI_awaddr,
    S02_AXI_awburst,
    S02_AXI_awcache,
    S02_AXI_awid,
    S02_AXI_awlen,
    S02_AXI_awlock,
    S02_AXI_awprot,
    S02_AXI_awqos,
    S02_AXI_awready,
    S02_AXI_awregion,
    S02_AXI_awsize,
    S02_AXI_awuser,
    S02_AXI_awvalid,
    S02_AXI_bid,
    S02_AXI_bready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_rdata,
    S02_AXI_rid,
    S02_AXI_rlast,
    S02_AXI_rready,
    S02_AXI_rresp,
    S02_AXI_ruser,
    S02_AXI_rvalid,
    S02_AXI_wdata,
    S02_AXI_wid,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wuser,
    S02_AXI_wvalid,
    S03_AXI_araddr,
    S03_AXI_arburst,
    S03_AXI_arcache,
    S03_AXI_arid,
    S03_AXI_arlen,
    S03_AXI_arlock,
    S03_AXI_arprot,
    S03_AXI_arqos,
    S03_AXI_arready,
    S03_AXI_arregion,
    S03_AXI_arsize,
    S03_AXI_aruser,
    S03_AXI_arvalid,
    S03_AXI_awaddr,
    S03_AXI_awburst,
    S03_AXI_awcache,
    S03_AXI_awid,
    S03_AXI_awlen,
    S03_AXI_awlock,
    S03_AXI_awprot,
    S03_AXI_awqos,
    S03_AXI_awready,
    S03_AXI_awregion,
    S03_AXI_awsize,
    S03_AXI_awuser,
    S03_AXI_awvalid,
    S03_AXI_bid,
    S03_AXI_bready,
    S03_AXI_bresp,
    S03_AXI_bvalid,
    S03_AXI_rdata,
    S03_AXI_rid,
    S03_AXI_rlast,
    S03_AXI_rready,
    S03_AXI_rresp,
    S03_AXI_ruser,
    S03_AXI_rvalid,
    S03_AXI_wdata,
    S03_AXI_wid,
    S03_AXI_wlast,
    S03_AXI_wready,
    S03_AXI_wstrb,
    S03_AXI_wuser,
    S03_AXI_wvalid,
    S04_AXI_araddr,
    S04_AXI_arburst,
    S04_AXI_arcache,
    S04_AXI_arid,
    S04_AXI_arlen,
    S04_AXI_arlock,
    S04_AXI_arprot,
    S04_AXI_arqos,
    S04_AXI_arready,
    S04_AXI_arregion,
    S04_AXI_arsize,
    S04_AXI_aruser,
    S04_AXI_arvalid,
    S04_AXI_awaddr,
    S04_AXI_awburst,
    S04_AXI_awcache,
    S04_AXI_awid,
    S04_AXI_awlen,
    S04_AXI_awlock,
    S04_AXI_awprot,
    S04_AXI_awqos,
    S04_AXI_awready,
    S04_AXI_awregion,
    S04_AXI_awsize,
    S04_AXI_awuser,
    S04_AXI_awvalid,
    S04_AXI_bid,
    S04_AXI_bready,
    S04_AXI_bresp,
    S04_AXI_bvalid,
    S04_AXI_rdata,
    S04_AXI_rid,
    S04_AXI_rlast,
    S04_AXI_rready,
    S04_AXI_rresp,
    S04_AXI_ruser,
    S04_AXI_rvalid,
    S04_AXI_wdata,
    S04_AXI_wid,
    S04_AXI_wlast,
    S04_AXI_wready,
    S04_AXI_wstrb,
    S04_AXI_wuser,
    S04_AXI_wvalid,
    S05_AXI_araddr,
    S05_AXI_arburst,
    S05_AXI_arcache,
    S05_AXI_arid,
    S05_AXI_arlen,
    S05_AXI_arlock,
    S05_AXI_arprot,
    S05_AXI_arqos,
    S05_AXI_arready,
    S05_AXI_arregion,
    S05_AXI_arsize,
    S05_AXI_aruser,
    S05_AXI_arvalid,
    S05_AXI_awaddr,
    S05_AXI_awburst,
    S05_AXI_awcache,
    S05_AXI_awid,
    S05_AXI_awlen,
    S05_AXI_awlock,
    S05_AXI_awprot,
    S05_AXI_awqos,
    S05_AXI_awready,
    S05_AXI_awregion,
    S05_AXI_awsize,
    S05_AXI_awuser,
    S05_AXI_awvalid,
    S05_AXI_bid,
    S05_AXI_bready,
    S05_AXI_bresp,
    S05_AXI_bvalid,
    S05_AXI_rdata,
    S05_AXI_rid,
    S05_AXI_rlast,
    S05_AXI_rready,
    S05_AXI_rresp,
    S05_AXI_ruser,
    S05_AXI_rvalid,
    S05_AXI_wdata,
    S05_AXI_wid,
    S05_AXI_wlast,
    S05_AXI_wready,
    S05_AXI_wstrb,
    S05_AXI_wuser,
    S05_AXI_wvalid,
    S06_AXI_araddr,
    S06_AXI_arburst,
    S06_AXI_arcache,
    S06_AXI_arid,
    S06_AXI_arlen,
    S06_AXI_arlock,
    S06_AXI_arprot,
    S06_AXI_arqos,
    S06_AXI_arready,
    S06_AXI_arregion,
    S06_AXI_arsize,
    S06_AXI_aruser,
    S06_AXI_arvalid,
    S06_AXI_awaddr,
    S06_AXI_awburst,
    S06_AXI_awcache,
    S06_AXI_awid,
    S06_AXI_awlen,
    S06_AXI_awlock,
    S06_AXI_awprot,
    S06_AXI_awqos,
    S06_AXI_awready,
    S06_AXI_awregion,
    S06_AXI_awsize,
    S06_AXI_awuser,
    S06_AXI_awvalid,
    S06_AXI_bid,
    S06_AXI_bready,
    S06_AXI_bresp,
    S06_AXI_bvalid,
    S06_AXI_rdata,
    S06_AXI_rid,
    S06_AXI_rlast,
    S06_AXI_rready,
    S06_AXI_rresp,
    S06_AXI_ruser,
    S06_AXI_rvalid,
    S06_AXI_wdata,
    S06_AXI_wid,
    S06_AXI_wlast,
    S06_AXI_wready,
    S06_AXI_wstrb,
    S06_AXI_wuser,
    S06_AXI_wvalid,
    S07_AXI_araddr,
    S07_AXI_arburst,
    S07_AXI_arcache,
    S07_AXI_arid,
    S07_AXI_arlen,
    S07_AXI_arlock,
    S07_AXI_arprot,
    S07_AXI_arqos,
    S07_AXI_arready,
    S07_AXI_arregion,
    S07_AXI_arsize,
    S07_AXI_aruser,
    S07_AXI_arvalid,
    S07_AXI_awaddr,
    S07_AXI_awburst,
    S07_AXI_awcache,
    S07_AXI_awid,
    S07_AXI_awlen,
    S07_AXI_awlock,
    S07_AXI_awprot,
    S07_AXI_awqos,
    S07_AXI_awready,
    S07_AXI_awregion,
    S07_AXI_awsize,
    S07_AXI_awuser,
    S07_AXI_awvalid,
    S07_AXI_bid,
    S07_AXI_bready,
    S07_AXI_bresp,
    S07_AXI_bvalid,
    S07_AXI_rdata,
    S07_AXI_rid,
    S07_AXI_rlast,
    S07_AXI_rready,
    S07_AXI_rresp,
    S07_AXI_ruser,
    S07_AXI_rvalid,
    S07_AXI_wdata,
    S07_AXI_wid,
    S07_AXI_wlast,
    S07_AXI_wready,
    S07_AXI_wstrb,
    S07_AXI_wuser,
    S07_AXI_wvalid,
    S08_AXI_araddr,
    S08_AXI_arburst,
    S08_AXI_arcache,
    S08_AXI_arid,
    S08_AXI_arlen,
    S08_AXI_arlock,
    S08_AXI_arprot,
    S08_AXI_arqos,
    S08_AXI_arready,
    S08_AXI_arregion,
    S08_AXI_arsize,
    S08_AXI_aruser,
    S08_AXI_arvalid,
    S08_AXI_awaddr,
    S08_AXI_awburst,
    S08_AXI_awcache,
    S08_AXI_awid,
    S08_AXI_awlen,
    S08_AXI_awlock,
    S08_AXI_awprot,
    S08_AXI_awqos,
    S08_AXI_awready,
    S08_AXI_awregion,
    S08_AXI_awsize,
    S08_AXI_awuser,
    S08_AXI_awvalid,
    S08_AXI_bid,
    S08_AXI_bready,
    S08_AXI_bresp,
    S08_AXI_buser,
    S08_AXI_bvalid,
    S08_AXI_rdata,
    S08_AXI_rid,
    S08_AXI_rlast,
    S08_AXI_rready,
    S08_AXI_rresp,
    S08_AXI_ruser,
    S08_AXI_rvalid,
    S08_AXI_wdata,
    S08_AXI_wid,
    S08_AXI_wlast,
    S08_AXI_wready,
    S08_AXI_wstrb,
    S08_AXI_wuser,
    S08_AXI_wvalid,
    aclk0,
    aclk1,
    aclk2,
    aclk3,
    aclk4,
    aclk5,
    aclk6,
    aclk7,
    aclk8,
    sys_clk0_clk_n,
    sys_clk0_clk_p);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 ACT_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CH0_DDR4_0, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, MY_CATEGORY pl, NOC_ID -1, SLOT Single, TIMEPERIOD_PS 1250, WRITE_BUFFER_SIZE 80" *) output [0:0]CH0_DDR4_0_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 ADR" *) output [16:0]CH0_DDR4_0_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 BA" *) output [1:0]CH0_DDR4_0_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 BG" *) output [1:0]CH0_DDR4_0_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 CK_C" *) output [1:0]CH0_DDR4_0_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 CK_T" *) output [1:0]CH0_DDR4_0_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 CKE" *) output [1:0]CH0_DDR4_0_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 CS_N" *) output [1:0]CH0_DDR4_0_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 DM_N" *) inout [8:0]CH0_DDR4_0_dm_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 DQ" *) inout [71:0]CH0_DDR4_0_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 DQS_C" *) inout [8:0]CH0_DDR4_0_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 DQS_T" *) inout [8:0]CH0_DDR4_0_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 ODT" *) output [1:0]CH0_DDR4_0_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_0 RESET_N" *) output [0:0]CH0_DDR4_0_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:inimm:1.0 M00_INI INTERNOC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_INI, ADDR_WIDTH 64, CATEGORY pl, COMPUTED_STRATEGY load, INI_STRATEGY auto, MY_CATEGORY pl, NOC_ID -1, WRITE_BUFFER_SIZE 80" *) output [0:0]M00_INI_internoc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:inimm:1.0 M01_INI INTERNOC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M01_INI, ADDR_WIDTH 64, CATEGORY pl, COMPUTED_STRATEGY load, INI_STRATEGY auto, MY_CATEGORY pl, NOC_ID -1, WRITE_BUFFER_SIZE 80" *) output [0:0]M01_INI_internoc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:inimm:1.0 M02_INI INTERNOC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M02_INI, ADDR_WIDTH 64, CATEGORY pl, COMPUTED_STRATEGY load, INI_STRATEGY auto, MY_CATEGORY pl, NOC_ID -1, WRITE_BUFFER_SIZE 80" *) output [0:0]M02_INI_internoc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:inimm:1.0 M03_INI INTERNOC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M03_INI, ADDR_WIDTH 64, CATEGORY pl, COMPUTED_STRATEGY load, INI_STRATEGY auto, MY_CATEGORY pl, NOC_ID -1, WRITE_BUFFER_SIZE 80" *) output [0:0]M03_INI_internoc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 0, CATEGORY ps_cci, CLK_DOMAIN design_1_versal_cips_0_0_fpd_cci_noc_axi0_clk, CONNECTIONS MC_0 { read_bw {300} write_bw {300} read_avg_burst {4} write_avg_burst {4}} M00_INI { read_bw {300} write_bw {300}} , DATA_WIDTH 128, FREQ_HZ 824991760, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 64, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 64, NUM_WRITE_THREADS 1, PHASE 0.000, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 17, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 17, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]S00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST" *) input [1:0]S00_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE" *) input [3:0]S00_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARID" *) input [15:0]S00_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN" *) input [7:0]S00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK" *) input [0:0]S00_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]S00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS" *) input [3:0]S00_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output [0:0]S00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREGION" *) input [3:0]S00_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE" *) input [2:0]S00_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARUSER" *) input [17:0]S00_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input [0:0]S00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [63:0]S00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST" *) input [1:0]S00_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE" *) input [3:0]S00_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWID" *) input [15:0]S00_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN" *) input [7:0]S00_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK" *) input [0:0]S00_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]S00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS" *) input [3:0]S00_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output [0:0]S00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREGION" *) input [3:0]S00_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE" *) input [2:0]S00_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWUSER" *) input [17:0]S00_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input [0:0]S00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BID" *) output [15:0]S00_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input [0:0]S00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]S00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output [0:0]S00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [127:0]S00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RID" *) output [15:0]S00_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RLAST" *) output [0:0]S00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input [0:0]S00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]S00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RUSER" *) output [16:0]S00_AXI_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output [0:0]S00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [127:0]S00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WID" *) input [15:0]S00_AXI_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WLAST" *) input [0:0]S00_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output [0:0]S00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [15:0]S00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WUSER" *) input [16:0]S00_AXI_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input [0:0]S00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S01_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 0, CATEGORY ps_cci, CLK_DOMAIN design_1_versal_cips_0_0_fpd_cci_noc_axi1_clk, CONNECTIONS M01_INI { read_bw {300} write_bw {300}} MC_1 { read_bw {300} write_bw {300} read_avg_burst {4} write_avg_burst {4}} , DATA_WIDTH 128, FREQ_HZ 824991760, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 64, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 64, NUM_WRITE_THREADS 1, PHASE 0.000, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 17, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 17, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]S01_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARBURST" *) input [1:0]S01_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARCACHE" *) input [3:0]S01_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARID" *) input [15:0]S01_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARLEN" *) input [7:0]S01_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARLOCK" *) input [0:0]S01_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARPROT" *) input [2:0]S01_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARQOS" *) input [3:0]S01_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARREADY" *) output [0:0]S01_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARREGION" *) input [3:0]S01_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARSIZE" *) input [2:0]S01_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARUSER" *) input [17:0]S01_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARVALID" *) input [0:0]S01_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWADDR" *) input [63:0]S01_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWBURST" *) input [1:0]S01_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWCACHE" *) input [3:0]S01_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWID" *) input [15:0]S01_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWLEN" *) input [7:0]S01_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWLOCK" *) input [0:0]S01_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWPROT" *) input [2:0]S01_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWQOS" *) input [3:0]S01_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWREADY" *) output [0:0]S01_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWREGION" *) input [3:0]S01_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWSIZE" *) input [2:0]S01_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWUSER" *) input [17:0]S01_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWVALID" *) input [0:0]S01_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BID" *) output [15:0]S01_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BREADY" *) input [0:0]S01_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BRESP" *) output [1:0]S01_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BVALID" *) output [0:0]S01_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RDATA" *) output [127:0]S01_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RID" *) output [15:0]S01_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RLAST" *) output [0:0]S01_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RREADY" *) input [0:0]S01_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RRESP" *) output [1:0]S01_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RUSER" *) output [16:0]S01_AXI_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RVALID" *) output [0:0]S01_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WDATA" *) input [127:0]S01_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WID" *) input [15:0]S01_AXI_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WLAST" *) input [0:0]S01_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WREADY" *) output [0:0]S01_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WSTRB" *) input [15:0]S01_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WUSER" *) input [16:0]S01_AXI_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WVALID" *) input [0:0]S01_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S02_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 0, CATEGORY ps_cci, CLK_DOMAIN design_1_versal_cips_0_0_fpd_cci_noc_axi2_clk, CONNECTIONS M02_INI { read_bw {1720} write_bw {1720}} MC_2 { read_bw {300} write_bw {300} read_avg_burst {4} write_avg_burst {4}} , DATA_WIDTH 128, FREQ_HZ 824991760, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 64, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 64, NUM_WRITE_THREADS 1, PHASE 0.000, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 17, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 17, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]S02_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARBURST" *) input [1:0]S02_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARCACHE" *) input [3:0]S02_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARID" *) input [15:0]S02_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARLEN" *) input [7:0]S02_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARLOCK" *) input [0:0]S02_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARPROT" *) input [2:0]S02_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARQOS" *) input [3:0]S02_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARREADY" *) output [0:0]S02_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARREGION" *) input [3:0]S02_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARSIZE" *) input [2:0]S02_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARUSER" *) input [17:0]S02_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARVALID" *) input [0:0]S02_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWADDR" *) input [63:0]S02_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWBURST" *) input [1:0]S02_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWCACHE" *) input [3:0]S02_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWID" *) input [15:0]S02_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWLEN" *) input [7:0]S02_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWLOCK" *) input [0:0]S02_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWPROT" *) input [2:0]S02_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWQOS" *) input [3:0]S02_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWREADY" *) output [0:0]S02_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWREGION" *) input [3:0]S02_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWSIZE" *) input [2:0]S02_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWUSER" *) input [17:0]S02_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWVALID" *) input [0:0]S02_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BID" *) output [15:0]S02_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BREADY" *) input [0:0]S02_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BRESP" *) output [1:0]S02_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BVALID" *) output [0:0]S02_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RDATA" *) output [127:0]S02_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RID" *) output [15:0]S02_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RLAST" *) output [0:0]S02_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RREADY" *) input [0:0]S02_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RRESP" *) output [1:0]S02_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RUSER" *) output [16:0]S02_AXI_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RVALID" *) output [0:0]S02_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WDATA" *) input [127:0]S02_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WID" *) input [15:0]S02_AXI_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WLAST" *) input [0:0]S02_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WREADY" *) output [0:0]S02_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WSTRB" *) input [15:0]S02_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WUSER" *) input [16:0]S02_AXI_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WVALID" *) input [0:0]S02_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S03_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 0, CATEGORY ps_cci, CLK_DOMAIN design_1_versal_cips_0_0_fpd_cci_noc_axi3_clk, CONNECTIONS M03_INI { read_bw {1720} write_bw {1720}} MC_3 { read_bw {300} write_bw {300} read_avg_burst {4} write_avg_burst {4}} , DATA_WIDTH 128, FREQ_HZ 824991760, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 64, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 64, NUM_WRITE_THREADS 1, PHASE 0.000, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 17, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 17, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]S03_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARBURST" *) input [1:0]S03_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARCACHE" *) input [3:0]S03_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARID" *) input [15:0]S03_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARLEN" *) input [7:0]S03_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARLOCK" *) input [0:0]S03_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARPROT" *) input [2:0]S03_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARQOS" *) input [3:0]S03_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARREADY" *) output [0:0]S03_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARREGION" *) input [3:0]S03_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARSIZE" *) input [2:0]S03_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARUSER" *) input [17:0]S03_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARVALID" *) input [0:0]S03_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWADDR" *) input [63:0]S03_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWBURST" *) input [1:0]S03_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWCACHE" *) input [3:0]S03_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWID" *) input [15:0]S03_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWLEN" *) input [7:0]S03_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWLOCK" *) input [0:0]S03_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWPROT" *) input [2:0]S03_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWQOS" *) input [3:0]S03_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWREADY" *) output [0:0]S03_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWREGION" *) input [3:0]S03_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWSIZE" *) input [2:0]S03_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWUSER" *) input [17:0]S03_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWVALID" *) input [0:0]S03_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI BID" *) output [15:0]S03_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI BREADY" *) input [0:0]S03_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI BRESP" *) output [1:0]S03_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI BVALID" *) output [0:0]S03_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RDATA" *) output [127:0]S03_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RID" *) output [15:0]S03_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RLAST" *) output [0:0]S03_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RREADY" *) input [0:0]S03_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RRESP" *) output [1:0]S03_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RUSER" *) output [16:0]S03_AXI_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RVALID" *) output [0:0]S03_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WDATA" *) input [127:0]S03_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WID" *) input [15:0]S03_AXI_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WLAST" *) input [0:0]S03_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WREADY" *) output [0:0]S03_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WSTRB" *) input [15:0]S03_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WUSER" *) input [16:0]S03_AXI_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WVALID" *) input [0:0]S03_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S04_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 0, CATEGORY ps_nci, CLK_DOMAIN design_1_versal_cips_0_0_fpd_axi_noc_axi0_clk, CONNECTIONS M00_INI { read_bw {300} write_bw {300}} , DATA_WIDTH 128, FREQ_HZ 824991760, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 64, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 64, NUM_WRITE_THREADS 1, PHASE 0.000, PHYSICAL_CHANNEL PS_NCI_TO_NOC_NMU, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 17, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 17, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]S04_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARBURST" *) input [1:0]S04_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARCACHE" *) input [3:0]S04_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARID" *) input [15:0]S04_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARLEN" *) input [7:0]S04_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARLOCK" *) input [0:0]S04_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARPROT" *) input [2:0]S04_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARQOS" *) input [3:0]S04_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARREADY" *) output [0:0]S04_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARREGION" *) input [3:0]S04_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARSIZE" *) input [2:0]S04_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARUSER" *) input [17:0]S04_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARVALID" *) input [0:0]S04_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWADDR" *) input [63:0]S04_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWBURST" *) input [1:0]S04_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWCACHE" *) input [3:0]S04_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWID" *) input [15:0]S04_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWLEN" *) input [7:0]S04_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWLOCK" *) input [0:0]S04_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWPROT" *) input [2:0]S04_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWQOS" *) input [3:0]S04_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWREADY" *) output [0:0]S04_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWREGION" *) input [3:0]S04_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWSIZE" *) input [2:0]S04_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWUSER" *) input [17:0]S04_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWVALID" *) input [0:0]S04_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI BID" *) output [15:0]S04_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI BREADY" *) input [0:0]S04_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI BRESP" *) output [1:0]S04_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI BVALID" *) output [0:0]S04_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI RDATA" *) output [127:0]S04_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI RID" *) output [15:0]S04_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI RLAST" *) output [0:0]S04_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI RREADY" *) input [0:0]S04_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI RRESP" *) output [1:0]S04_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI RUSER" *) output [16:0]S04_AXI_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI RVALID" *) output [0:0]S04_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI WDATA" *) input [127:0]S04_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI WID" *) input [15:0]S04_AXI_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI WLAST" *) input [0:0]S04_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI WREADY" *) output [0:0]S04_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI WSTRB" *) input [15:0]S04_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI WUSER" *) input [16:0]S04_AXI_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI WVALID" *) input [0:0]S04_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S05_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 0, CATEGORY ps_pcie, CLK_DOMAIN design_1_versal_cips_0_0_cpm_pcie_noc_axi0_clk, CONNECTIONS M00_INI { read_bw {300} write_bw {300}} , DATA_WIDTH 128, FREQ_HZ 824991760, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 64, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 64, NUM_WRITE_THREADS 1, PHASE 0.000, PHYSICAL_CHANNEL PS_PCIE_TO_NOC_NMU, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 17, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 17, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]S05_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARBURST" *) input [1:0]S05_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARCACHE" *) input [3:0]S05_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARID" *) input [15:0]S05_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARLEN" *) input [7:0]S05_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARLOCK" *) input [0:0]S05_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARPROT" *) input [2:0]S05_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARQOS" *) input [3:0]S05_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARREADY" *) output [0:0]S05_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARREGION" *) input [3:0]S05_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARSIZE" *) input [2:0]S05_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARUSER" *) input [17:0]S05_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARVALID" *) input [0:0]S05_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWADDR" *) input [63:0]S05_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWBURST" *) input [1:0]S05_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWCACHE" *) input [3:0]S05_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWID" *) input [15:0]S05_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWLEN" *) input [7:0]S05_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWLOCK" *) input [0:0]S05_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWPROT" *) input [2:0]S05_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWQOS" *) input [3:0]S05_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWREADY" *) output [0:0]S05_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWREGION" *) input [3:0]S05_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWSIZE" *) input [2:0]S05_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWUSER" *) input [17:0]S05_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWVALID" *) input [0:0]S05_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI BID" *) output [15:0]S05_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI BREADY" *) input [0:0]S05_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI BRESP" *) output [1:0]S05_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI BVALID" *) output [0:0]S05_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI RDATA" *) output [127:0]S05_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI RID" *) output [15:0]S05_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI RLAST" *) output [0:0]S05_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI RREADY" *) input [0:0]S05_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI RRESP" *) output [1:0]S05_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI RUSER" *) output [16:0]S05_AXI_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI RVALID" *) output [0:0]S05_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI WDATA" *) input [127:0]S05_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI WID" *) input [15:0]S05_AXI_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI WLAST" *) input [0:0]S05_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI WREADY" *) output [0:0]S05_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI WSTRB" *) input [15:0]S05_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI WUSER" *) input [16:0]S05_AXI_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI WVALID" *) input [0:0]S05_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S06_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 0, CATEGORY ps_pcie, CLK_DOMAIN design_1_versal_cips_0_0_cpm_pcie_noc_axi1_clk, CONNECTIONS M00_INI { read_bw {300} write_bw {300}} , DATA_WIDTH 128, FREQ_HZ 824991760, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 64, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 64, NUM_WRITE_THREADS 1, PHASE 0.000, PHYSICAL_CHANNEL PS_PCIE_TO_NOC_NMU, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 17, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 17, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]S06_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARBURST" *) input [1:0]S06_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARCACHE" *) input [3:0]S06_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARID" *) input [15:0]S06_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARLEN" *) input [7:0]S06_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARLOCK" *) input [0:0]S06_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARPROT" *) input [2:0]S06_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARQOS" *) input [3:0]S06_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARREADY" *) output [0:0]S06_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARREGION" *) input [3:0]S06_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARSIZE" *) input [2:0]S06_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARUSER" *) input [17:0]S06_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARVALID" *) input [0:0]S06_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWADDR" *) input [63:0]S06_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWBURST" *) input [1:0]S06_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWCACHE" *) input [3:0]S06_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWID" *) input [15:0]S06_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWLEN" *) input [7:0]S06_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWLOCK" *) input [0:0]S06_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWPROT" *) input [2:0]S06_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWQOS" *) input [3:0]S06_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWREADY" *) output [0:0]S06_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWREGION" *) input [3:0]S06_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWSIZE" *) input [2:0]S06_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWUSER" *) input [17:0]S06_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWVALID" *) input [0:0]S06_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI BID" *) output [15:0]S06_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI BREADY" *) input [0:0]S06_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI BRESP" *) output [1:0]S06_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI BVALID" *) output [0:0]S06_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI RDATA" *) output [127:0]S06_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI RID" *) output [15:0]S06_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI RLAST" *) output [0:0]S06_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI RREADY" *) input [0:0]S06_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI RRESP" *) output [1:0]S06_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI RUSER" *) output [16:0]S06_AXI_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI RVALID" *) output [0:0]S06_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI WDATA" *) input [127:0]S06_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI WID" *) input [15:0]S06_AXI_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI WLAST" *) input [0:0]S06_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI WREADY" *) output [0:0]S06_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI WSTRB" *) input [15:0]S06_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI WUSER" *) input [16:0]S06_AXI_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI WVALID" *) input [0:0]S06_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S07_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 0, CATEGORY ps_rpu, CLK_DOMAIN design_1_versal_cips_0_0_lpd_axi_noc_clk, CONNECTIONS M00_INI { read_bw {300} write_bw {300}} , DATA_WIDTH 128, FREQ_HZ 599994019, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 64, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 64, NUM_WRITE_THREADS 1, PHASE 0.000, PHYSICAL_CHANNEL PS_RPU_TO_NOC_NMU, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 17, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 17, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]S07_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI ARBURST" *) input [1:0]S07_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI ARCACHE" *) input [3:0]S07_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI ARID" *) input [15:0]S07_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI ARLEN" *) input [7:0]S07_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI ARLOCK" *) input [0:0]S07_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI ARPROT" *) input [2:0]S07_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI ARQOS" *) input [3:0]S07_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI ARREADY" *) output [0:0]S07_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI ARREGION" *) input [3:0]S07_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI ARSIZE" *) input [2:0]S07_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI ARUSER" *) input [17:0]S07_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI ARVALID" *) input [0:0]S07_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWADDR" *) input [63:0]S07_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWBURST" *) input [1:0]S07_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWCACHE" *) input [3:0]S07_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWID" *) input [15:0]S07_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWLEN" *) input [7:0]S07_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWLOCK" *) input [0:0]S07_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWPROT" *) input [2:0]S07_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWQOS" *) input [3:0]S07_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWREADY" *) output [0:0]S07_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWREGION" *) input [3:0]S07_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWSIZE" *) input [2:0]S07_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWUSER" *) input [17:0]S07_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWVALID" *) input [0:0]S07_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI BID" *) output [15:0]S07_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI BREADY" *) input [0:0]S07_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI BRESP" *) output [1:0]S07_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI BVALID" *) output [0:0]S07_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI RDATA" *) output [127:0]S07_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI RID" *) output [15:0]S07_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI RLAST" *) output [0:0]S07_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI RREADY" *) input [0:0]S07_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI RRESP" *) output [1:0]S07_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI RUSER" *) output [16:0]S07_AXI_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI RVALID" *) output [0:0]S07_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI WDATA" *) input [127:0]S07_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI WID" *) input [15:0]S07_AXI_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI WLAST" *) input [0:0]S07_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI WREADY" *) output [0:0]S07_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI WSTRB" *) input [15:0]S07_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI WUSER" *) input [16:0]S07_AXI_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI WVALID" *) input [0:0]S07_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S08_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 16, CATEGORY ps_pmc, CLK_DOMAIN design_1_versal_cips_0_0_pmc_axi_noc_axi0_clk, CONNECTIONS M00_INI { read_bw {300} write_bw {300}} , DATA_WIDTH 128, FREQ_HZ 400000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NUM_READ_OUTSTANDING 64, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 64, NUM_WRITE_THREADS 1, PHASE 0.000, PHYSICAL_CHANNEL PS_PMC_TO_NOC_NMU, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 17, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 17, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [63:0]S08_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI ARBURST" *) input [1:0]S08_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI ARCACHE" *) input [3:0]S08_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI ARID" *) input [15:0]S08_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI ARLEN" *) input [7:0]S08_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI ARLOCK" *) input [0:0]S08_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI ARPROT" *) input [2:0]S08_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI ARQOS" *) input [3:0]S08_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI ARREADY" *) output [0:0]S08_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI ARREGION" *) input [3:0]S08_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI ARSIZE" *) input [2:0]S08_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI ARUSER" *) input [17:0]S08_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI ARVALID" *) input [0:0]S08_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI AWADDR" *) input [63:0]S08_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI AWBURST" *) input [1:0]S08_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI AWCACHE" *) input [3:0]S08_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI AWID" *) input [15:0]S08_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI AWLEN" *) input [7:0]S08_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI AWLOCK" *) input [0:0]S08_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI AWPROT" *) input [2:0]S08_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI AWQOS" *) input [3:0]S08_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI AWREADY" *) output [0:0]S08_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI AWREGION" *) input [3:0]S08_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI AWSIZE" *) input [2:0]S08_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI AWUSER" *) input [17:0]S08_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI AWVALID" *) input [0:0]S08_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI BID" *) output [15:0]S08_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI BREADY" *) input [0:0]S08_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI BRESP" *) output [1:0]S08_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI BUSER" *) output [15:0]S08_AXI_buser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI BVALID" *) output [0:0]S08_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI RDATA" *) output [127:0]S08_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI RID" *) output [15:0]S08_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI RLAST" *) output [0:0]S08_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI RREADY" *) input [0:0]S08_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI RRESP" *) output [1:0]S08_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI RUSER" *) output [16:0]S08_AXI_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI RVALID" *) output [0:0]S08_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI WDATA" *) input [127:0]S08_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI WID" *) input [15:0]S08_AXI_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI WLAST" *) input [0:0]S08_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI WREADY" *) output [0:0]S08_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI WSTRB" *) input [15:0]S08_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI WUSER" *) input [16:0]S08_AXI_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S08_AXI WVALID" *) input [0:0]S08_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK0, ASSOCIATED_BUSIF S00_AXI, CLK_DOMAIN design_1_versal_cips_0_0_fpd_cci_noc_axi0_clk, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU" *) input aclk0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK1 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK1, ASSOCIATED_BUSIF S01_AXI, CLK_DOMAIN design_1_versal_cips_0_0_fpd_cci_noc_axi1_clk, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU" *) input aclk1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK2 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK2, ASSOCIATED_BUSIF S02_AXI, CLK_DOMAIN design_1_versal_cips_0_0_fpd_cci_noc_axi2_clk, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU" *) input aclk2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK3 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK3, ASSOCIATED_BUSIF S03_AXI, CLK_DOMAIN design_1_versal_cips_0_0_fpd_cci_noc_axi3_clk, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU" *) input aclk3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK4 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK4, ASSOCIATED_BUSIF S04_AXI, CLK_DOMAIN design_1_versal_cips_0_0_fpd_axi_noc_axi0_clk, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000, PHYSICAL_CHANNEL PS_NCI_TO_NOC_NMU" *) input aclk4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK5 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK5, ASSOCIATED_BUSIF S05_AXI, CLK_DOMAIN design_1_versal_cips_0_0_cpm_pcie_noc_axi0_clk, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000, PHYSICAL_CHANNEL PS_PCIE_TO_NOC_NMU" *) input aclk5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK6 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK6, ASSOCIATED_BUSIF S06_AXI, CLK_DOMAIN design_1_versal_cips_0_0_cpm_pcie_noc_axi1_clk, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000, PHYSICAL_CHANNEL PS_PCIE_TO_NOC_NMU" *) input aclk6;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK7 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK7, ASSOCIATED_BUSIF S07_AXI, CLK_DOMAIN design_1_versal_cips_0_0_lpd_axi_noc_clk, FREQ_HZ 599994019, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000, PHYSICAL_CHANNEL PS_RPU_TO_NOC_NMU" *) input aclk7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK8 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK8, ASSOCIATED_BUSIF S08_AXI, CLK_DOMAIN design_1_versal_cips_0_0_pmc_axi_noc_axi0_clk, FREQ_HZ 400000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000, PHYSICAL_CHANNEL PS_PMC_TO_NOC_NMU" *) input aclk8;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_clk0 CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk0, CAN_DEBUG false, FREQ_HZ 250000000" *) input [0:0]sys_clk0_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_clk0 CLK_P" *) input [0:0]sys_clk0_clk_p;

  wire MC0_ddrc_CH0_DDR4_ACT_N;
  wire [16:0]MC0_ddrc_CH0_DDR4_ADR;
  wire [1:0]MC0_ddrc_CH0_DDR4_BA;
  wire [1:0]MC0_ddrc_CH0_DDR4_BG;
  wire [1:0]MC0_ddrc_CH0_DDR4_CKE;
  wire [1:0]MC0_ddrc_CH0_DDR4_CK_C;
  wire [1:0]MC0_ddrc_CH0_DDR4_CK_T;
  wire [1:0]MC0_ddrc_CH0_DDR4_CS_N;
  wire [8:0]MC0_ddrc_CH0_DDR4_DM_N;
  wire [71:0]MC0_ddrc_CH0_DDR4_DQ;
  wire [8:0]MC0_ddrc_CH0_DDR4_DQS_C;
  wire [8:0]MC0_ddrc_CH0_DDR4_DQS_T;
  wire [1:0]MC0_ddrc_CH0_DDR4_ODT;
  wire MC0_ddrc_CH0_DDR4_RESET_N;
  (* HARD_CONN = "true" *) wire [63:0]S00_AXI_1_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]S00_AXI_1_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]S00_AXI_1_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]S00_AXI_1_ARID;
  (* HARD_CONN = "true" *) wire [7:0]S00_AXI_1_ARLEN;
  (* HARD_CONN = "true" *) wire [0:0]S00_AXI_1_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]S00_AXI_1_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]S00_AXI_1_ARQOS;
  (* HARD_CONN = "true" *) wire S00_AXI_1_ARREADY;
  (* HARD_CONN = "true" *) wire [3:0]S00_AXI_1_ARREGION;
  (* HARD_CONN = "true" *) wire [2:0]S00_AXI_1_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]S00_AXI_1_ARUSER;
  (* HARD_CONN = "true" *) wire [0:0]S00_AXI_1_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]S00_AXI_1_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]S00_AXI_1_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]S00_AXI_1_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]S00_AXI_1_AWID;
  (* HARD_CONN = "true" *) wire [7:0]S00_AXI_1_AWLEN;
  (* HARD_CONN = "true" *) wire [0:0]S00_AXI_1_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]S00_AXI_1_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]S00_AXI_1_AWQOS;
  (* HARD_CONN = "true" *) wire S00_AXI_1_AWREADY;
  (* HARD_CONN = "true" *) wire [3:0]S00_AXI_1_AWREGION;
  (* HARD_CONN = "true" *) wire [2:0]S00_AXI_1_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]S00_AXI_1_AWUSER;
  (* HARD_CONN = "true" *) wire [0:0]S00_AXI_1_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]S00_AXI_1_BID;
  (* HARD_CONN = "true" *) wire [0:0]S00_AXI_1_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]S00_AXI_1_BRESP;
  (* HARD_CONN = "true" *) wire S00_AXI_1_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]S00_AXI_1_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]S00_AXI_1_RID;
  (* HARD_CONN = "true" *) wire [0:0]S00_AXI_1_RLAST;
  (* HARD_CONN = "true" *) wire [0:0]S00_AXI_1_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]S00_AXI_1_RRESP;
  (* HARD_CONN = "true" *) wire [16:0]S00_AXI_1_RUSER;
  (* HARD_CONN = "true" *) wire S00_AXI_1_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]S00_AXI_1_WDATA;
  (* HARD_CONN = "true" *) wire [15:0]S00_AXI_1_WID;
  (* HARD_CONN = "true" *) wire [0:0]S00_AXI_1_WLAST;
  (* HARD_CONN = "true" *) wire S00_AXI_1_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]S00_AXI_1_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]S00_AXI_1_WUSER;
  (* HARD_CONN = "true" *) wire [0:0]S00_AXI_1_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]S01_AXI_1_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]S01_AXI_1_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]S01_AXI_1_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]S01_AXI_1_ARID;
  (* HARD_CONN = "true" *) wire [7:0]S01_AXI_1_ARLEN;
  (* HARD_CONN = "true" *) wire [0:0]S01_AXI_1_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]S01_AXI_1_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]S01_AXI_1_ARQOS;
  (* HARD_CONN = "true" *) wire S01_AXI_1_ARREADY;
  (* HARD_CONN = "true" *) wire [3:0]S01_AXI_1_ARREGION;
  (* HARD_CONN = "true" *) wire [2:0]S01_AXI_1_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]S01_AXI_1_ARUSER;
  (* HARD_CONN = "true" *) wire [0:0]S01_AXI_1_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]S01_AXI_1_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]S01_AXI_1_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]S01_AXI_1_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]S01_AXI_1_AWID;
  (* HARD_CONN = "true" *) wire [7:0]S01_AXI_1_AWLEN;
  (* HARD_CONN = "true" *) wire [0:0]S01_AXI_1_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]S01_AXI_1_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]S01_AXI_1_AWQOS;
  (* HARD_CONN = "true" *) wire S01_AXI_1_AWREADY;
  (* HARD_CONN = "true" *) wire [3:0]S01_AXI_1_AWREGION;
  (* HARD_CONN = "true" *) wire [2:0]S01_AXI_1_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]S01_AXI_1_AWUSER;
  (* HARD_CONN = "true" *) wire [0:0]S01_AXI_1_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]S01_AXI_1_BID;
  (* HARD_CONN = "true" *) wire [0:0]S01_AXI_1_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]S01_AXI_1_BRESP;
  (* HARD_CONN = "true" *) wire S01_AXI_1_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]S01_AXI_1_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]S01_AXI_1_RID;
  (* HARD_CONN = "true" *) wire [0:0]S01_AXI_1_RLAST;
  (* HARD_CONN = "true" *) wire [0:0]S01_AXI_1_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]S01_AXI_1_RRESP;
  (* HARD_CONN = "true" *) wire [16:0]S01_AXI_1_RUSER;
  (* HARD_CONN = "true" *) wire S01_AXI_1_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]S01_AXI_1_WDATA;
  (* HARD_CONN = "true" *) wire [15:0]S01_AXI_1_WID;
  (* HARD_CONN = "true" *) wire [0:0]S01_AXI_1_WLAST;
  (* HARD_CONN = "true" *) wire S01_AXI_1_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]S01_AXI_1_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]S01_AXI_1_WUSER;
  (* HARD_CONN = "true" *) wire [0:0]S01_AXI_1_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]S02_AXI_1_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]S02_AXI_1_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]S02_AXI_1_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]S02_AXI_1_ARID;
  (* HARD_CONN = "true" *) wire [7:0]S02_AXI_1_ARLEN;
  (* HARD_CONN = "true" *) wire [0:0]S02_AXI_1_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]S02_AXI_1_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]S02_AXI_1_ARQOS;
  (* HARD_CONN = "true" *) wire S02_AXI_1_ARREADY;
  (* HARD_CONN = "true" *) wire [3:0]S02_AXI_1_ARREGION;
  (* HARD_CONN = "true" *) wire [2:0]S02_AXI_1_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]S02_AXI_1_ARUSER;
  (* HARD_CONN = "true" *) wire [0:0]S02_AXI_1_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]S02_AXI_1_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]S02_AXI_1_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]S02_AXI_1_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]S02_AXI_1_AWID;
  (* HARD_CONN = "true" *) wire [7:0]S02_AXI_1_AWLEN;
  (* HARD_CONN = "true" *) wire [0:0]S02_AXI_1_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]S02_AXI_1_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]S02_AXI_1_AWQOS;
  (* HARD_CONN = "true" *) wire S02_AXI_1_AWREADY;
  (* HARD_CONN = "true" *) wire [3:0]S02_AXI_1_AWREGION;
  (* HARD_CONN = "true" *) wire [2:0]S02_AXI_1_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]S02_AXI_1_AWUSER;
  (* HARD_CONN = "true" *) wire [0:0]S02_AXI_1_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]S02_AXI_1_BID;
  (* HARD_CONN = "true" *) wire [0:0]S02_AXI_1_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]S02_AXI_1_BRESP;
  (* HARD_CONN = "true" *) wire S02_AXI_1_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]S02_AXI_1_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]S02_AXI_1_RID;
  (* HARD_CONN = "true" *) wire [0:0]S02_AXI_1_RLAST;
  (* HARD_CONN = "true" *) wire [0:0]S02_AXI_1_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]S02_AXI_1_RRESP;
  (* HARD_CONN = "true" *) wire [16:0]S02_AXI_1_RUSER;
  (* HARD_CONN = "true" *) wire S02_AXI_1_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]S02_AXI_1_WDATA;
  (* HARD_CONN = "true" *) wire [15:0]S02_AXI_1_WID;
  (* HARD_CONN = "true" *) wire [0:0]S02_AXI_1_WLAST;
  (* HARD_CONN = "true" *) wire S02_AXI_1_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]S02_AXI_1_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]S02_AXI_1_WUSER;
  (* HARD_CONN = "true" *) wire [0:0]S02_AXI_1_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]S03_AXI_1_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]S03_AXI_1_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]S03_AXI_1_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]S03_AXI_1_ARID;
  (* HARD_CONN = "true" *) wire [7:0]S03_AXI_1_ARLEN;
  (* HARD_CONN = "true" *) wire [0:0]S03_AXI_1_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]S03_AXI_1_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]S03_AXI_1_ARQOS;
  (* HARD_CONN = "true" *) wire S03_AXI_1_ARREADY;
  (* HARD_CONN = "true" *) wire [3:0]S03_AXI_1_ARREGION;
  (* HARD_CONN = "true" *) wire [2:0]S03_AXI_1_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]S03_AXI_1_ARUSER;
  (* HARD_CONN = "true" *) wire [0:0]S03_AXI_1_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]S03_AXI_1_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]S03_AXI_1_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]S03_AXI_1_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]S03_AXI_1_AWID;
  (* HARD_CONN = "true" *) wire [7:0]S03_AXI_1_AWLEN;
  (* HARD_CONN = "true" *) wire [0:0]S03_AXI_1_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]S03_AXI_1_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]S03_AXI_1_AWQOS;
  (* HARD_CONN = "true" *) wire S03_AXI_1_AWREADY;
  (* HARD_CONN = "true" *) wire [3:0]S03_AXI_1_AWREGION;
  (* HARD_CONN = "true" *) wire [2:0]S03_AXI_1_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]S03_AXI_1_AWUSER;
  (* HARD_CONN = "true" *) wire [0:0]S03_AXI_1_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]S03_AXI_1_BID;
  (* HARD_CONN = "true" *) wire [0:0]S03_AXI_1_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]S03_AXI_1_BRESP;
  (* HARD_CONN = "true" *) wire S03_AXI_1_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]S03_AXI_1_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]S03_AXI_1_RID;
  (* HARD_CONN = "true" *) wire [0:0]S03_AXI_1_RLAST;
  (* HARD_CONN = "true" *) wire [0:0]S03_AXI_1_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]S03_AXI_1_RRESP;
  (* HARD_CONN = "true" *) wire [16:0]S03_AXI_1_RUSER;
  (* HARD_CONN = "true" *) wire S03_AXI_1_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]S03_AXI_1_WDATA;
  (* HARD_CONN = "true" *) wire [15:0]S03_AXI_1_WID;
  (* HARD_CONN = "true" *) wire [0:0]S03_AXI_1_WLAST;
  (* HARD_CONN = "true" *) wire S03_AXI_1_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]S03_AXI_1_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]S03_AXI_1_WUSER;
  (* HARD_CONN = "true" *) wire [0:0]S03_AXI_1_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]S04_AXI_1_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]S04_AXI_1_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]S04_AXI_1_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]S04_AXI_1_ARID;
  (* HARD_CONN = "true" *) wire [7:0]S04_AXI_1_ARLEN;
  (* HARD_CONN = "true" *) wire [0:0]S04_AXI_1_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]S04_AXI_1_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]S04_AXI_1_ARQOS;
  (* HARD_CONN = "true" *) wire S04_AXI_1_ARREADY;
  (* HARD_CONN = "true" *) wire [3:0]S04_AXI_1_ARREGION;
  (* HARD_CONN = "true" *) wire [2:0]S04_AXI_1_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]S04_AXI_1_ARUSER;
  (* HARD_CONN = "true" *) wire [0:0]S04_AXI_1_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]S04_AXI_1_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]S04_AXI_1_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]S04_AXI_1_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]S04_AXI_1_AWID;
  (* HARD_CONN = "true" *) wire [7:0]S04_AXI_1_AWLEN;
  (* HARD_CONN = "true" *) wire [0:0]S04_AXI_1_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]S04_AXI_1_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]S04_AXI_1_AWQOS;
  (* HARD_CONN = "true" *) wire S04_AXI_1_AWREADY;
  (* HARD_CONN = "true" *) wire [3:0]S04_AXI_1_AWREGION;
  (* HARD_CONN = "true" *) wire [2:0]S04_AXI_1_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]S04_AXI_1_AWUSER;
  (* HARD_CONN = "true" *) wire [0:0]S04_AXI_1_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]S04_AXI_1_BID;
  (* HARD_CONN = "true" *) wire [0:0]S04_AXI_1_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]S04_AXI_1_BRESP;
  (* HARD_CONN = "true" *) wire S04_AXI_1_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]S04_AXI_1_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]S04_AXI_1_RID;
  (* HARD_CONN = "true" *) wire [0:0]S04_AXI_1_RLAST;
  (* HARD_CONN = "true" *) wire [0:0]S04_AXI_1_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]S04_AXI_1_RRESP;
  (* HARD_CONN = "true" *) wire [16:0]S04_AXI_1_RUSER;
  (* HARD_CONN = "true" *) wire S04_AXI_1_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]S04_AXI_1_WDATA;
  (* HARD_CONN = "true" *) wire [15:0]S04_AXI_1_WID;
  (* HARD_CONN = "true" *) wire [0:0]S04_AXI_1_WLAST;
  (* HARD_CONN = "true" *) wire S04_AXI_1_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]S04_AXI_1_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]S04_AXI_1_WUSER;
  (* HARD_CONN = "true" *) wire [0:0]S04_AXI_1_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]S05_AXI_1_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]S05_AXI_1_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]S05_AXI_1_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]S05_AXI_1_ARID;
  (* HARD_CONN = "true" *) wire [7:0]S05_AXI_1_ARLEN;
  (* HARD_CONN = "true" *) wire [0:0]S05_AXI_1_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]S05_AXI_1_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]S05_AXI_1_ARQOS;
  (* HARD_CONN = "true" *) wire S05_AXI_1_ARREADY;
  (* HARD_CONN = "true" *) wire [3:0]S05_AXI_1_ARREGION;
  (* HARD_CONN = "true" *) wire [2:0]S05_AXI_1_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]S05_AXI_1_ARUSER;
  (* HARD_CONN = "true" *) wire [0:0]S05_AXI_1_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]S05_AXI_1_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]S05_AXI_1_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]S05_AXI_1_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]S05_AXI_1_AWID;
  (* HARD_CONN = "true" *) wire [7:0]S05_AXI_1_AWLEN;
  (* HARD_CONN = "true" *) wire [0:0]S05_AXI_1_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]S05_AXI_1_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]S05_AXI_1_AWQOS;
  (* HARD_CONN = "true" *) wire S05_AXI_1_AWREADY;
  (* HARD_CONN = "true" *) wire [3:0]S05_AXI_1_AWREGION;
  (* HARD_CONN = "true" *) wire [2:0]S05_AXI_1_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]S05_AXI_1_AWUSER;
  (* HARD_CONN = "true" *) wire [0:0]S05_AXI_1_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]S05_AXI_1_BID;
  (* HARD_CONN = "true" *) wire [0:0]S05_AXI_1_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]S05_AXI_1_BRESP;
  (* HARD_CONN = "true" *) wire S05_AXI_1_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]S05_AXI_1_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]S05_AXI_1_RID;
  (* HARD_CONN = "true" *) wire [0:0]S05_AXI_1_RLAST;
  (* HARD_CONN = "true" *) wire [0:0]S05_AXI_1_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]S05_AXI_1_RRESP;
  (* HARD_CONN = "true" *) wire [16:0]S05_AXI_1_RUSER;
  (* HARD_CONN = "true" *) wire S05_AXI_1_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]S05_AXI_1_WDATA;
  (* HARD_CONN = "true" *) wire [15:0]S05_AXI_1_WID;
  (* HARD_CONN = "true" *) wire [0:0]S05_AXI_1_WLAST;
  (* HARD_CONN = "true" *) wire S05_AXI_1_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]S05_AXI_1_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]S05_AXI_1_WUSER;
  (* HARD_CONN = "true" *) wire [0:0]S05_AXI_1_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]S06_AXI_1_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]S06_AXI_1_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]S06_AXI_1_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]S06_AXI_1_ARID;
  (* HARD_CONN = "true" *) wire [7:0]S06_AXI_1_ARLEN;
  (* HARD_CONN = "true" *) wire [0:0]S06_AXI_1_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]S06_AXI_1_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]S06_AXI_1_ARQOS;
  (* HARD_CONN = "true" *) wire S06_AXI_1_ARREADY;
  (* HARD_CONN = "true" *) wire [3:0]S06_AXI_1_ARREGION;
  (* HARD_CONN = "true" *) wire [2:0]S06_AXI_1_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]S06_AXI_1_ARUSER;
  (* HARD_CONN = "true" *) wire [0:0]S06_AXI_1_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]S06_AXI_1_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]S06_AXI_1_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]S06_AXI_1_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]S06_AXI_1_AWID;
  (* HARD_CONN = "true" *) wire [7:0]S06_AXI_1_AWLEN;
  (* HARD_CONN = "true" *) wire [0:0]S06_AXI_1_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]S06_AXI_1_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]S06_AXI_1_AWQOS;
  (* HARD_CONN = "true" *) wire S06_AXI_1_AWREADY;
  (* HARD_CONN = "true" *) wire [3:0]S06_AXI_1_AWREGION;
  (* HARD_CONN = "true" *) wire [2:0]S06_AXI_1_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]S06_AXI_1_AWUSER;
  (* HARD_CONN = "true" *) wire [0:0]S06_AXI_1_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]S06_AXI_1_BID;
  (* HARD_CONN = "true" *) wire [0:0]S06_AXI_1_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]S06_AXI_1_BRESP;
  (* HARD_CONN = "true" *) wire S06_AXI_1_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]S06_AXI_1_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]S06_AXI_1_RID;
  (* HARD_CONN = "true" *) wire [0:0]S06_AXI_1_RLAST;
  (* HARD_CONN = "true" *) wire [0:0]S06_AXI_1_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]S06_AXI_1_RRESP;
  (* HARD_CONN = "true" *) wire [16:0]S06_AXI_1_RUSER;
  (* HARD_CONN = "true" *) wire S06_AXI_1_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]S06_AXI_1_WDATA;
  (* HARD_CONN = "true" *) wire [15:0]S06_AXI_1_WID;
  (* HARD_CONN = "true" *) wire [0:0]S06_AXI_1_WLAST;
  (* HARD_CONN = "true" *) wire S06_AXI_1_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]S06_AXI_1_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]S06_AXI_1_WUSER;
  (* HARD_CONN = "true" *) wire [0:0]S06_AXI_1_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]S07_AXI_1_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]S07_AXI_1_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]S07_AXI_1_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]S07_AXI_1_ARID;
  (* HARD_CONN = "true" *) wire [7:0]S07_AXI_1_ARLEN;
  (* HARD_CONN = "true" *) wire [0:0]S07_AXI_1_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]S07_AXI_1_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]S07_AXI_1_ARQOS;
  (* HARD_CONN = "true" *) wire S07_AXI_1_ARREADY;
  (* HARD_CONN = "true" *) wire [3:0]S07_AXI_1_ARREGION;
  (* HARD_CONN = "true" *) wire [2:0]S07_AXI_1_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]S07_AXI_1_ARUSER;
  (* HARD_CONN = "true" *) wire [0:0]S07_AXI_1_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]S07_AXI_1_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]S07_AXI_1_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]S07_AXI_1_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]S07_AXI_1_AWID;
  (* HARD_CONN = "true" *) wire [7:0]S07_AXI_1_AWLEN;
  (* HARD_CONN = "true" *) wire [0:0]S07_AXI_1_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]S07_AXI_1_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]S07_AXI_1_AWQOS;
  (* HARD_CONN = "true" *) wire S07_AXI_1_AWREADY;
  (* HARD_CONN = "true" *) wire [3:0]S07_AXI_1_AWREGION;
  (* HARD_CONN = "true" *) wire [2:0]S07_AXI_1_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]S07_AXI_1_AWUSER;
  (* HARD_CONN = "true" *) wire [0:0]S07_AXI_1_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]S07_AXI_1_BID;
  (* HARD_CONN = "true" *) wire [0:0]S07_AXI_1_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]S07_AXI_1_BRESP;
  (* HARD_CONN = "true" *) wire S07_AXI_1_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]S07_AXI_1_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]S07_AXI_1_RID;
  (* HARD_CONN = "true" *) wire [0:0]S07_AXI_1_RLAST;
  (* HARD_CONN = "true" *) wire [0:0]S07_AXI_1_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]S07_AXI_1_RRESP;
  (* HARD_CONN = "true" *) wire [16:0]S07_AXI_1_RUSER;
  (* HARD_CONN = "true" *) wire S07_AXI_1_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]S07_AXI_1_WDATA;
  (* HARD_CONN = "true" *) wire [15:0]S07_AXI_1_WID;
  (* HARD_CONN = "true" *) wire [0:0]S07_AXI_1_WLAST;
  (* HARD_CONN = "true" *) wire S07_AXI_1_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]S07_AXI_1_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]S07_AXI_1_WUSER;
  (* HARD_CONN = "true" *) wire [0:0]S07_AXI_1_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]S08_AXI_1_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]S08_AXI_1_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]S08_AXI_1_ARCACHE;
  (* HARD_CONN = "true" *) wire [15:0]S08_AXI_1_ARID;
  (* HARD_CONN = "true" *) wire [7:0]S08_AXI_1_ARLEN;
  (* HARD_CONN = "true" *) wire [0:0]S08_AXI_1_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]S08_AXI_1_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]S08_AXI_1_ARQOS;
  (* HARD_CONN = "true" *) wire S08_AXI_1_ARREADY;
  (* HARD_CONN = "true" *) wire [3:0]S08_AXI_1_ARREGION;
  (* HARD_CONN = "true" *) wire [2:0]S08_AXI_1_ARSIZE;
  (* HARD_CONN = "true" *) wire [17:0]S08_AXI_1_ARUSER;
  (* HARD_CONN = "true" *) wire [0:0]S08_AXI_1_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]S08_AXI_1_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]S08_AXI_1_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]S08_AXI_1_AWCACHE;
  (* HARD_CONN = "true" *) wire [15:0]S08_AXI_1_AWID;
  (* HARD_CONN = "true" *) wire [7:0]S08_AXI_1_AWLEN;
  (* HARD_CONN = "true" *) wire [0:0]S08_AXI_1_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]S08_AXI_1_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]S08_AXI_1_AWQOS;
  (* HARD_CONN = "true" *) wire S08_AXI_1_AWREADY;
  (* HARD_CONN = "true" *) wire [3:0]S08_AXI_1_AWREGION;
  (* HARD_CONN = "true" *) wire [2:0]S08_AXI_1_AWSIZE;
  (* HARD_CONN = "true" *) wire [17:0]S08_AXI_1_AWUSER;
  (* HARD_CONN = "true" *) wire [0:0]S08_AXI_1_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]S08_AXI_1_BID;
  (* HARD_CONN = "true" *) wire [0:0]S08_AXI_1_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]S08_AXI_1_BRESP;
  (* HARD_CONN = "true" *) wire [15:0]S08_AXI_1_BUSER;
  (* HARD_CONN = "true" *) wire S08_AXI_1_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]S08_AXI_1_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]S08_AXI_1_RID;
  (* HARD_CONN = "true" *) wire [0:0]S08_AXI_1_RLAST;
  (* HARD_CONN = "true" *) wire [0:0]S08_AXI_1_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]S08_AXI_1_RRESP;
  (* HARD_CONN = "true" *) wire [16:0]S08_AXI_1_RUSER;
  (* HARD_CONN = "true" *) wire S08_AXI_1_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]S08_AXI_1_WDATA;
  (* HARD_CONN = "true" *) wire [15:0]S08_AXI_1_WID;
  (* HARD_CONN = "true" *) wire [0:0]S08_AXI_1_WLAST;
  (* HARD_CONN = "true" *) wire S08_AXI_1_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]S08_AXI_1_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]S08_AXI_1_WUSER;
  (* HARD_CONN = "true" *) wire [0:0]S08_AXI_1_WVALID;
  (* HARD_CONN = "true" *) wire aclk0_1;
  (* HARD_CONN = "true" *) wire aclk1_1;
  (* HARD_CONN = "true" *) wire aclk2_1;
  (* HARD_CONN = "true" *) wire aclk3_1;
  (* HARD_CONN = "true" *) wire aclk4_1;
  (* HARD_CONN = "true" *) wire aclk5_1;
  (* HARD_CONN = "true" *) wire aclk6_1;
  (* HARD_CONN = "true" *) wire aclk7_1;
  (* HARD_CONN = "true" *) wire aclk8_1;
  wire [0:0]const_0_dout;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc0_ddrc_dmc2noc_credit_rdy_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc0_ddrc_dmc2noc_credit_rdy_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc0_ddrc_dmc2noc_credit_rdy_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc0_ddrc_dmc2noc_credit_rdy_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc0_ddrc_dmc2noc_credit_rtn_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc0_ddrc_dmc2noc_credit_rtn_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc0_ddrc_dmc2noc_credit_rtn_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc0_ddrc_dmc2noc_credit_rtn_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc0_ddrc_dmc2noc_data_out_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc0_ddrc_dmc2noc_data_out_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc0_ddrc_dmc2noc_data_out_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc0_ddrc_dmc2noc_data_out_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc0_ddrc_dmc2noc_valid_out_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc0_ddrc_dmc2noc_valid_out_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc0_ddrc_dmc2noc_valid_out_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc0_ddrc_dmc2noc_valid_out_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc0_ddrc_noc2dmc_credit_rdy_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc0_ddrc_noc2dmc_credit_rdy_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc0_ddrc_noc2dmc_credit_rdy_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire mc0_ddrc_noc2dmc_credit_rdy_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc0_ddrc_noc2dmc_credit_rtn_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc0_ddrc_noc2dmc_credit_rtn_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc0_ddrc_noc2dmc_credit_rtn_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc0_ddrc_noc2dmc_credit_rtn_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc0_ddrc_noc2dmc_data_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc0_ddrc_noc2dmc_data_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc0_ddrc_noc2dmc_data_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]mc0_ddrc_noc2dmc_data_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc0_ddrc_noc2dmc_valid_in_0;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc0_ddrc_noc2dmc_valid_in_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc0_ddrc_noc2dmc_valid_in_2;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]mc0_ddrc_noc2dmc_valid_in_3;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire s00_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s00_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]s00_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s00_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire s00_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s00_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]s00_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s00_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire s01_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s01_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]s01_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s01_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire s01_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s01_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]s01_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s01_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire s02_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s02_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]s02_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s02_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire s02_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s02_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]s02_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s02_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire s03_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s03_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]s03_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s03_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire s03_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s03_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]s03_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s03_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire s04_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s04_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]s04_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s04_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire s04_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s04_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]s04_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s04_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire s05_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s05_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]s05_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s05_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire s05_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s05_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]s05_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s05_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire s06_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s06_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]s06_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s06_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire s06_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s06_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]s06_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s06_axi_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire s07_axi_rpu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s07_axi_rpu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]s07_axi_rpu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s07_axi_rpu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire s07_axi_rpu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s07_axi_rpu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]s07_axi_rpu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s07_axi_rpu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire s08_axi_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s08_axi_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]s08_axi_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s08_axi_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire s08_axi_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s08_axi_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]s08_axi_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]s08_axi_nmu_if_noc_npp_out_noc_valid;
  wire [0:0]sys_clk0_1_CLK_N;
  wire [0:0]sys_clk0_1_CLK_P;

  assign CH0_DDR4_0_act_n[0] = MC0_ddrc_CH0_DDR4_ACT_N;
  assign CH0_DDR4_0_adr[16:0] = MC0_ddrc_CH0_DDR4_ADR;
  assign CH0_DDR4_0_ba[1:0] = MC0_ddrc_CH0_DDR4_BA;
  assign CH0_DDR4_0_bg[1:0] = MC0_ddrc_CH0_DDR4_BG;
  assign CH0_DDR4_0_ck_c[1:0] = MC0_ddrc_CH0_DDR4_CK_C;
  assign CH0_DDR4_0_ck_t[1:0] = MC0_ddrc_CH0_DDR4_CK_T;
  assign CH0_DDR4_0_cke[1:0] = MC0_ddrc_CH0_DDR4_CKE;
  assign CH0_DDR4_0_cs_n[1:0] = MC0_ddrc_CH0_DDR4_CS_N;
  assign CH0_DDR4_0_odt[1:0] = MC0_ddrc_CH0_DDR4_ODT;
  assign CH0_DDR4_0_reset_n[0] = MC0_ddrc_CH0_DDR4_RESET_N;
  assign S00_AXI_1_ARADDR = S00_AXI_araddr[63:0];
  assign S00_AXI_1_ARBURST = S00_AXI_arburst[1:0];
  assign S00_AXI_1_ARCACHE = S00_AXI_arcache[3:0];
  assign S00_AXI_1_ARID = S00_AXI_arid[15:0];
  assign S00_AXI_1_ARLEN = S00_AXI_arlen[7:0];
  assign S00_AXI_1_ARLOCK = S00_AXI_arlock[0];
  assign S00_AXI_1_ARPROT = S00_AXI_arprot[2:0];
  assign S00_AXI_1_ARQOS = S00_AXI_arqos[3:0];
  assign S00_AXI_1_ARREGION = S00_AXI_arregion[3:0];
  assign S00_AXI_1_ARSIZE = S00_AXI_arsize[2:0];
  assign S00_AXI_1_ARUSER = S00_AXI_aruser[17:0];
  assign S00_AXI_1_ARVALID = S00_AXI_arvalid[0];
  assign S00_AXI_1_AWADDR = S00_AXI_awaddr[63:0];
  assign S00_AXI_1_AWBURST = S00_AXI_awburst[1:0];
  assign S00_AXI_1_AWCACHE = S00_AXI_awcache[3:0];
  assign S00_AXI_1_AWID = S00_AXI_awid[15:0];
  assign S00_AXI_1_AWLEN = S00_AXI_awlen[7:0];
  assign S00_AXI_1_AWLOCK = S00_AXI_awlock[0];
  assign S00_AXI_1_AWPROT = S00_AXI_awprot[2:0];
  assign S00_AXI_1_AWQOS = S00_AXI_awqos[3:0];
  assign S00_AXI_1_AWREGION = S00_AXI_awregion[3:0];
  assign S00_AXI_1_AWSIZE = S00_AXI_awsize[2:0];
  assign S00_AXI_1_AWUSER = S00_AXI_awuser[17:0];
  assign S00_AXI_1_AWVALID = S00_AXI_awvalid[0];
  assign S00_AXI_1_BREADY = S00_AXI_bready[0];
  assign S00_AXI_1_RREADY = S00_AXI_rready[0];
  assign S00_AXI_1_WDATA = S00_AXI_wdata[127:0];
  assign S00_AXI_1_WID = S00_AXI_wid[15:0];
  assign S00_AXI_1_WLAST = S00_AXI_wlast[0];
  assign S00_AXI_1_WSTRB = S00_AXI_wstrb[15:0];
  assign S00_AXI_1_WUSER = S00_AXI_wuser[16:0];
  assign S00_AXI_1_WVALID = S00_AXI_wvalid[0];
  assign S00_AXI_arready[0] = S00_AXI_1_ARREADY;
  assign S00_AXI_awready[0] = S00_AXI_1_AWREADY;
  assign S00_AXI_bid[15:0] = S00_AXI_1_BID;
  assign S00_AXI_bresp[1:0] = S00_AXI_1_BRESP;
  assign S00_AXI_bvalid[0] = S00_AXI_1_BVALID;
  assign S00_AXI_rdata[127:0] = S00_AXI_1_RDATA;
  assign S00_AXI_rid[15:0] = S00_AXI_1_RID;
  assign S00_AXI_rlast[0] = S00_AXI_1_RLAST;
  assign S00_AXI_rresp[1:0] = S00_AXI_1_RRESP;
  assign S00_AXI_ruser[16:0] = S00_AXI_1_RUSER;
  assign S00_AXI_rvalid[0] = S00_AXI_1_RVALID;
  assign S00_AXI_wready[0] = S00_AXI_1_WREADY;
  assign S01_AXI_1_ARADDR = S01_AXI_araddr[63:0];
  assign S01_AXI_1_ARBURST = S01_AXI_arburst[1:0];
  assign S01_AXI_1_ARCACHE = S01_AXI_arcache[3:0];
  assign S01_AXI_1_ARID = S01_AXI_arid[15:0];
  assign S01_AXI_1_ARLEN = S01_AXI_arlen[7:0];
  assign S01_AXI_1_ARLOCK = S01_AXI_arlock[0];
  assign S01_AXI_1_ARPROT = S01_AXI_arprot[2:0];
  assign S01_AXI_1_ARQOS = S01_AXI_arqos[3:0];
  assign S01_AXI_1_ARREGION = S01_AXI_arregion[3:0];
  assign S01_AXI_1_ARSIZE = S01_AXI_arsize[2:0];
  assign S01_AXI_1_ARUSER = S01_AXI_aruser[17:0];
  assign S01_AXI_1_ARVALID = S01_AXI_arvalid[0];
  assign S01_AXI_1_AWADDR = S01_AXI_awaddr[63:0];
  assign S01_AXI_1_AWBURST = S01_AXI_awburst[1:0];
  assign S01_AXI_1_AWCACHE = S01_AXI_awcache[3:0];
  assign S01_AXI_1_AWID = S01_AXI_awid[15:0];
  assign S01_AXI_1_AWLEN = S01_AXI_awlen[7:0];
  assign S01_AXI_1_AWLOCK = S01_AXI_awlock[0];
  assign S01_AXI_1_AWPROT = S01_AXI_awprot[2:0];
  assign S01_AXI_1_AWQOS = S01_AXI_awqos[3:0];
  assign S01_AXI_1_AWREGION = S01_AXI_awregion[3:0];
  assign S01_AXI_1_AWSIZE = S01_AXI_awsize[2:0];
  assign S01_AXI_1_AWUSER = S01_AXI_awuser[17:0];
  assign S01_AXI_1_AWVALID = S01_AXI_awvalid[0];
  assign S01_AXI_1_BREADY = S01_AXI_bready[0];
  assign S01_AXI_1_RREADY = S01_AXI_rready[0];
  assign S01_AXI_1_WDATA = S01_AXI_wdata[127:0];
  assign S01_AXI_1_WID = S01_AXI_wid[15:0];
  assign S01_AXI_1_WLAST = S01_AXI_wlast[0];
  assign S01_AXI_1_WSTRB = S01_AXI_wstrb[15:0];
  assign S01_AXI_1_WUSER = S01_AXI_wuser[16:0];
  assign S01_AXI_1_WVALID = S01_AXI_wvalid[0];
  assign S01_AXI_arready[0] = S01_AXI_1_ARREADY;
  assign S01_AXI_awready[0] = S01_AXI_1_AWREADY;
  assign S01_AXI_bid[15:0] = S01_AXI_1_BID;
  assign S01_AXI_bresp[1:0] = S01_AXI_1_BRESP;
  assign S01_AXI_bvalid[0] = S01_AXI_1_BVALID;
  assign S01_AXI_rdata[127:0] = S01_AXI_1_RDATA;
  assign S01_AXI_rid[15:0] = S01_AXI_1_RID;
  assign S01_AXI_rlast[0] = S01_AXI_1_RLAST;
  assign S01_AXI_rresp[1:0] = S01_AXI_1_RRESP;
  assign S01_AXI_ruser[16:0] = S01_AXI_1_RUSER;
  assign S01_AXI_rvalid[0] = S01_AXI_1_RVALID;
  assign S01_AXI_wready[0] = S01_AXI_1_WREADY;
  assign S02_AXI_1_ARADDR = S02_AXI_araddr[63:0];
  assign S02_AXI_1_ARBURST = S02_AXI_arburst[1:0];
  assign S02_AXI_1_ARCACHE = S02_AXI_arcache[3:0];
  assign S02_AXI_1_ARID = S02_AXI_arid[15:0];
  assign S02_AXI_1_ARLEN = S02_AXI_arlen[7:0];
  assign S02_AXI_1_ARLOCK = S02_AXI_arlock[0];
  assign S02_AXI_1_ARPROT = S02_AXI_arprot[2:0];
  assign S02_AXI_1_ARQOS = S02_AXI_arqos[3:0];
  assign S02_AXI_1_ARREGION = S02_AXI_arregion[3:0];
  assign S02_AXI_1_ARSIZE = S02_AXI_arsize[2:0];
  assign S02_AXI_1_ARUSER = S02_AXI_aruser[17:0];
  assign S02_AXI_1_ARVALID = S02_AXI_arvalid[0];
  assign S02_AXI_1_AWADDR = S02_AXI_awaddr[63:0];
  assign S02_AXI_1_AWBURST = S02_AXI_awburst[1:0];
  assign S02_AXI_1_AWCACHE = S02_AXI_awcache[3:0];
  assign S02_AXI_1_AWID = S02_AXI_awid[15:0];
  assign S02_AXI_1_AWLEN = S02_AXI_awlen[7:0];
  assign S02_AXI_1_AWLOCK = S02_AXI_awlock[0];
  assign S02_AXI_1_AWPROT = S02_AXI_awprot[2:0];
  assign S02_AXI_1_AWQOS = S02_AXI_awqos[3:0];
  assign S02_AXI_1_AWREGION = S02_AXI_awregion[3:0];
  assign S02_AXI_1_AWSIZE = S02_AXI_awsize[2:0];
  assign S02_AXI_1_AWUSER = S02_AXI_awuser[17:0];
  assign S02_AXI_1_AWVALID = S02_AXI_awvalid[0];
  assign S02_AXI_1_BREADY = S02_AXI_bready[0];
  assign S02_AXI_1_RREADY = S02_AXI_rready[0];
  assign S02_AXI_1_WDATA = S02_AXI_wdata[127:0];
  assign S02_AXI_1_WID = S02_AXI_wid[15:0];
  assign S02_AXI_1_WLAST = S02_AXI_wlast[0];
  assign S02_AXI_1_WSTRB = S02_AXI_wstrb[15:0];
  assign S02_AXI_1_WUSER = S02_AXI_wuser[16:0];
  assign S02_AXI_1_WVALID = S02_AXI_wvalid[0];
  assign S02_AXI_arready[0] = S02_AXI_1_ARREADY;
  assign S02_AXI_awready[0] = S02_AXI_1_AWREADY;
  assign S02_AXI_bid[15:0] = S02_AXI_1_BID;
  assign S02_AXI_bresp[1:0] = S02_AXI_1_BRESP;
  assign S02_AXI_bvalid[0] = S02_AXI_1_BVALID;
  assign S02_AXI_rdata[127:0] = S02_AXI_1_RDATA;
  assign S02_AXI_rid[15:0] = S02_AXI_1_RID;
  assign S02_AXI_rlast[0] = S02_AXI_1_RLAST;
  assign S02_AXI_rresp[1:0] = S02_AXI_1_RRESP;
  assign S02_AXI_ruser[16:0] = S02_AXI_1_RUSER;
  assign S02_AXI_rvalid[0] = S02_AXI_1_RVALID;
  assign S02_AXI_wready[0] = S02_AXI_1_WREADY;
  assign S03_AXI_1_ARADDR = S03_AXI_araddr[63:0];
  assign S03_AXI_1_ARBURST = S03_AXI_arburst[1:0];
  assign S03_AXI_1_ARCACHE = S03_AXI_arcache[3:0];
  assign S03_AXI_1_ARID = S03_AXI_arid[15:0];
  assign S03_AXI_1_ARLEN = S03_AXI_arlen[7:0];
  assign S03_AXI_1_ARLOCK = S03_AXI_arlock[0];
  assign S03_AXI_1_ARPROT = S03_AXI_arprot[2:0];
  assign S03_AXI_1_ARQOS = S03_AXI_arqos[3:0];
  assign S03_AXI_1_ARREGION = S03_AXI_arregion[3:0];
  assign S03_AXI_1_ARSIZE = S03_AXI_arsize[2:0];
  assign S03_AXI_1_ARUSER = S03_AXI_aruser[17:0];
  assign S03_AXI_1_ARVALID = S03_AXI_arvalid[0];
  assign S03_AXI_1_AWADDR = S03_AXI_awaddr[63:0];
  assign S03_AXI_1_AWBURST = S03_AXI_awburst[1:0];
  assign S03_AXI_1_AWCACHE = S03_AXI_awcache[3:0];
  assign S03_AXI_1_AWID = S03_AXI_awid[15:0];
  assign S03_AXI_1_AWLEN = S03_AXI_awlen[7:0];
  assign S03_AXI_1_AWLOCK = S03_AXI_awlock[0];
  assign S03_AXI_1_AWPROT = S03_AXI_awprot[2:0];
  assign S03_AXI_1_AWQOS = S03_AXI_awqos[3:0];
  assign S03_AXI_1_AWREGION = S03_AXI_awregion[3:0];
  assign S03_AXI_1_AWSIZE = S03_AXI_awsize[2:0];
  assign S03_AXI_1_AWUSER = S03_AXI_awuser[17:0];
  assign S03_AXI_1_AWVALID = S03_AXI_awvalid[0];
  assign S03_AXI_1_BREADY = S03_AXI_bready[0];
  assign S03_AXI_1_RREADY = S03_AXI_rready[0];
  assign S03_AXI_1_WDATA = S03_AXI_wdata[127:0];
  assign S03_AXI_1_WID = S03_AXI_wid[15:0];
  assign S03_AXI_1_WLAST = S03_AXI_wlast[0];
  assign S03_AXI_1_WSTRB = S03_AXI_wstrb[15:0];
  assign S03_AXI_1_WUSER = S03_AXI_wuser[16:0];
  assign S03_AXI_1_WVALID = S03_AXI_wvalid[0];
  assign S03_AXI_arready[0] = S03_AXI_1_ARREADY;
  assign S03_AXI_awready[0] = S03_AXI_1_AWREADY;
  assign S03_AXI_bid[15:0] = S03_AXI_1_BID;
  assign S03_AXI_bresp[1:0] = S03_AXI_1_BRESP;
  assign S03_AXI_bvalid[0] = S03_AXI_1_BVALID;
  assign S03_AXI_rdata[127:0] = S03_AXI_1_RDATA;
  assign S03_AXI_rid[15:0] = S03_AXI_1_RID;
  assign S03_AXI_rlast[0] = S03_AXI_1_RLAST;
  assign S03_AXI_rresp[1:0] = S03_AXI_1_RRESP;
  assign S03_AXI_ruser[16:0] = S03_AXI_1_RUSER;
  assign S03_AXI_rvalid[0] = S03_AXI_1_RVALID;
  assign S03_AXI_wready[0] = S03_AXI_1_WREADY;
  assign S04_AXI_1_ARADDR = S04_AXI_araddr[63:0];
  assign S04_AXI_1_ARBURST = S04_AXI_arburst[1:0];
  assign S04_AXI_1_ARCACHE = S04_AXI_arcache[3:0];
  assign S04_AXI_1_ARID = S04_AXI_arid[15:0];
  assign S04_AXI_1_ARLEN = S04_AXI_arlen[7:0];
  assign S04_AXI_1_ARLOCK = S04_AXI_arlock[0];
  assign S04_AXI_1_ARPROT = S04_AXI_arprot[2:0];
  assign S04_AXI_1_ARQOS = S04_AXI_arqos[3:0];
  assign S04_AXI_1_ARREGION = S04_AXI_arregion[3:0];
  assign S04_AXI_1_ARSIZE = S04_AXI_arsize[2:0];
  assign S04_AXI_1_ARUSER = S04_AXI_aruser[17:0];
  assign S04_AXI_1_ARVALID = S04_AXI_arvalid[0];
  assign S04_AXI_1_AWADDR = S04_AXI_awaddr[63:0];
  assign S04_AXI_1_AWBURST = S04_AXI_awburst[1:0];
  assign S04_AXI_1_AWCACHE = S04_AXI_awcache[3:0];
  assign S04_AXI_1_AWID = S04_AXI_awid[15:0];
  assign S04_AXI_1_AWLEN = S04_AXI_awlen[7:0];
  assign S04_AXI_1_AWLOCK = S04_AXI_awlock[0];
  assign S04_AXI_1_AWPROT = S04_AXI_awprot[2:0];
  assign S04_AXI_1_AWQOS = S04_AXI_awqos[3:0];
  assign S04_AXI_1_AWREGION = S04_AXI_awregion[3:0];
  assign S04_AXI_1_AWSIZE = S04_AXI_awsize[2:0];
  assign S04_AXI_1_AWUSER = S04_AXI_awuser[17:0];
  assign S04_AXI_1_AWVALID = S04_AXI_awvalid[0];
  assign S04_AXI_1_BREADY = S04_AXI_bready[0];
  assign S04_AXI_1_RREADY = S04_AXI_rready[0];
  assign S04_AXI_1_WDATA = S04_AXI_wdata[127:0];
  assign S04_AXI_1_WID = S04_AXI_wid[15:0];
  assign S04_AXI_1_WLAST = S04_AXI_wlast[0];
  assign S04_AXI_1_WSTRB = S04_AXI_wstrb[15:0];
  assign S04_AXI_1_WUSER = S04_AXI_wuser[16:0];
  assign S04_AXI_1_WVALID = S04_AXI_wvalid[0];
  assign S04_AXI_arready[0] = S04_AXI_1_ARREADY;
  assign S04_AXI_awready[0] = S04_AXI_1_AWREADY;
  assign S04_AXI_bid[15:0] = S04_AXI_1_BID;
  assign S04_AXI_bresp[1:0] = S04_AXI_1_BRESP;
  assign S04_AXI_bvalid[0] = S04_AXI_1_BVALID;
  assign S04_AXI_rdata[127:0] = S04_AXI_1_RDATA;
  assign S04_AXI_rid[15:0] = S04_AXI_1_RID;
  assign S04_AXI_rlast[0] = S04_AXI_1_RLAST;
  assign S04_AXI_rresp[1:0] = S04_AXI_1_RRESP;
  assign S04_AXI_ruser[16:0] = S04_AXI_1_RUSER;
  assign S04_AXI_rvalid[0] = S04_AXI_1_RVALID;
  assign S04_AXI_wready[0] = S04_AXI_1_WREADY;
  assign S05_AXI_1_ARADDR = S05_AXI_araddr[63:0];
  assign S05_AXI_1_ARBURST = S05_AXI_arburst[1:0];
  assign S05_AXI_1_ARCACHE = S05_AXI_arcache[3:0];
  assign S05_AXI_1_ARID = S05_AXI_arid[15:0];
  assign S05_AXI_1_ARLEN = S05_AXI_arlen[7:0];
  assign S05_AXI_1_ARLOCK = S05_AXI_arlock[0];
  assign S05_AXI_1_ARPROT = S05_AXI_arprot[2:0];
  assign S05_AXI_1_ARQOS = S05_AXI_arqos[3:0];
  assign S05_AXI_1_ARREGION = S05_AXI_arregion[3:0];
  assign S05_AXI_1_ARSIZE = S05_AXI_arsize[2:0];
  assign S05_AXI_1_ARUSER = S05_AXI_aruser[17:0];
  assign S05_AXI_1_ARVALID = S05_AXI_arvalid[0];
  assign S05_AXI_1_AWADDR = S05_AXI_awaddr[63:0];
  assign S05_AXI_1_AWBURST = S05_AXI_awburst[1:0];
  assign S05_AXI_1_AWCACHE = S05_AXI_awcache[3:0];
  assign S05_AXI_1_AWID = S05_AXI_awid[15:0];
  assign S05_AXI_1_AWLEN = S05_AXI_awlen[7:0];
  assign S05_AXI_1_AWLOCK = S05_AXI_awlock[0];
  assign S05_AXI_1_AWPROT = S05_AXI_awprot[2:0];
  assign S05_AXI_1_AWQOS = S05_AXI_awqos[3:0];
  assign S05_AXI_1_AWREGION = S05_AXI_awregion[3:0];
  assign S05_AXI_1_AWSIZE = S05_AXI_awsize[2:0];
  assign S05_AXI_1_AWUSER = S05_AXI_awuser[17:0];
  assign S05_AXI_1_AWVALID = S05_AXI_awvalid[0];
  assign S05_AXI_1_BREADY = S05_AXI_bready[0];
  assign S05_AXI_1_RREADY = S05_AXI_rready[0];
  assign S05_AXI_1_WDATA = S05_AXI_wdata[127:0];
  assign S05_AXI_1_WID = S05_AXI_wid[15:0];
  assign S05_AXI_1_WLAST = S05_AXI_wlast[0];
  assign S05_AXI_1_WSTRB = S05_AXI_wstrb[15:0];
  assign S05_AXI_1_WUSER = S05_AXI_wuser[16:0];
  assign S05_AXI_1_WVALID = S05_AXI_wvalid[0];
  assign S05_AXI_arready[0] = S05_AXI_1_ARREADY;
  assign S05_AXI_awready[0] = S05_AXI_1_AWREADY;
  assign S05_AXI_bid[15:0] = S05_AXI_1_BID;
  assign S05_AXI_bresp[1:0] = S05_AXI_1_BRESP;
  assign S05_AXI_bvalid[0] = S05_AXI_1_BVALID;
  assign S05_AXI_rdata[127:0] = S05_AXI_1_RDATA;
  assign S05_AXI_rid[15:0] = S05_AXI_1_RID;
  assign S05_AXI_rlast[0] = S05_AXI_1_RLAST;
  assign S05_AXI_rresp[1:0] = S05_AXI_1_RRESP;
  assign S05_AXI_ruser[16:0] = S05_AXI_1_RUSER;
  assign S05_AXI_rvalid[0] = S05_AXI_1_RVALID;
  assign S05_AXI_wready[0] = S05_AXI_1_WREADY;
  assign S06_AXI_1_ARADDR = S06_AXI_araddr[63:0];
  assign S06_AXI_1_ARBURST = S06_AXI_arburst[1:0];
  assign S06_AXI_1_ARCACHE = S06_AXI_arcache[3:0];
  assign S06_AXI_1_ARID = S06_AXI_arid[15:0];
  assign S06_AXI_1_ARLEN = S06_AXI_arlen[7:0];
  assign S06_AXI_1_ARLOCK = S06_AXI_arlock[0];
  assign S06_AXI_1_ARPROT = S06_AXI_arprot[2:0];
  assign S06_AXI_1_ARQOS = S06_AXI_arqos[3:0];
  assign S06_AXI_1_ARREGION = S06_AXI_arregion[3:0];
  assign S06_AXI_1_ARSIZE = S06_AXI_arsize[2:0];
  assign S06_AXI_1_ARUSER = S06_AXI_aruser[17:0];
  assign S06_AXI_1_ARVALID = S06_AXI_arvalid[0];
  assign S06_AXI_1_AWADDR = S06_AXI_awaddr[63:0];
  assign S06_AXI_1_AWBURST = S06_AXI_awburst[1:0];
  assign S06_AXI_1_AWCACHE = S06_AXI_awcache[3:0];
  assign S06_AXI_1_AWID = S06_AXI_awid[15:0];
  assign S06_AXI_1_AWLEN = S06_AXI_awlen[7:0];
  assign S06_AXI_1_AWLOCK = S06_AXI_awlock[0];
  assign S06_AXI_1_AWPROT = S06_AXI_awprot[2:0];
  assign S06_AXI_1_AWQOS = S06_AXI_awqos[3:0];
  assign S06_AXI_1_AWREGION = S06_AXI_awregion[3:0];
  assign S06_AXI_1_AWSIZE = S06_AXI_awsize[2:0];
  assign S06_AXI_1_AWUSER = S06_AXI_awuser[17:0];
  assign S06_AXI_1_AWVALID = S06_AXI_awvalid[0];
  assign S06_AXI_1_BREADY = S06_AXI_bready[0];
  assign S06_AXI_1_RREADY = S06_AXI_rready[0];
  assign S06_AXI_1_WDATA = S06_AXI_wdata[127:0];
  assign S06_AXI_1_WID = S06_AXI_wid[15:0];
  assign S06_AXI_1_WLAST = S06_AXI_wlast[0];
  assign S06_AXI_1_WSTRB = S06_AXI_wstrb[15:0];
  assign S06_AXI_1_WUSER = S06_AXI_wuser[16:0];
  assign S06_AXI_1_WVALID = S06_AXI_wvalid[0];
  assign S06_AXI_arready[0] = S06_AXI_1_ARREADY;
  assign S06_AXI_awready[0] = S06_AXI_1_AWREADY;
  assign S06_AXI_bid[15:0] = S06_AXI_1_BID;
  assign S06_AXI_bresp[1:0] = S06_AXI_1_BRESP;
  assign S06_AXI_bvalid[0] = S06_AXI_1_BVALID;
  assign S06_AXI_rdata[127:0] = S06_AXI_1_RDATA;
  assign S06_AXI_rid[15:0] = S06_AXI_1_RID;
  assign S06_AXI_rlast[0] = S06_AXI_1_RLAST;
  assign S06_AXI_rresp[1:0] = S06_AXI_1_RRESP;
  assign S06_AXI_ruser[16:0] = S06_AXI_1_RUSER;
  assign S06_AXI_rvalid[0] = S06_AXI_1_RVALID;
  assign S06_AXI_wready[0] = S06_AXI_1_WREADY;
  assign S07_AXI_1_ARADDR = S07_AXI_araddr[63:0];
  assign S07_AXI_1_ARBURST = S07_AXI_arburst[1:0];
  assign S07_AXI_1_ARCACHE = S07_AXI_arcache[3:0];
  assign S07_AXI_1_ARID = S07_AXI_arid[15:0];
  assign S07_AXI_1_ARLEN = S07_AXI_arlen[7:0];
  assign S07_AXI_1_ARLOCK = S07_AXI_arlock[0];
  assign S07_AXI_1_ARPROT = S07_AXI_arprot[2:0];
  assign S07_AXI_1_ARQOS = S07_AXI_arqos[3:0];
  assign S07_AXI_1_ARREGION = S07_AXI_arregion[3:0];
  assign S07_AXI_1_ARSIZE = S07_AXI_arsize[2:0];
  assign S07_AXI_1_ARUSER = S07_AXI_aruser[17:0];
  assign S07_AXI_1_ARVALID = S07_AXI_arvalid[0];
  assign S07_AXI_1_AWADDR = S07_AXI_awaddr[63:0];
  assign S07_AXI_1_AWBURST = S07_AXI_awburst[1:0];
  assign S07_AXI_1_AWCACHE = S07_AXI_awcache[3:0];
  assign S07_AXI_1_AWID = S07_AXI_awid[15:0];
  assign S07_AXI_1_AWLEN = S07_AXI_awlen[7:0];
  assign S07_AXI_1_AWLOCK = S07_AXI_awlock[0];
  assign S07_AXI_1_AWPROT = S07_AXI_awprot[2:0];
  assign S07_AXI_1_AWQOS = S07_AXI_awqos[3:0];
  assign S07_AXI_1_AWREGION = S07_AXI_awregion[3:0];
  assign S07_AXI_1_AWSIZE = S07_AXI_awsize[2:0];
  assign S07_AXI_1_AWUSER = S07_AXI_awuser[17:0];
  assign S07_AXI_1_AWVALID = S07_AXI_awvalid[0];
  assign S07_AXI_1_BREADY = S07_AXI_bready[0];
  assign S07_AXI_1_RREADY = S07_AXI_rready[0];
  assign S07_AXI_1_WDATA = S07_AXI_wdata[127:0];
  assign S07_AXI_1_WID = S07_AXI_wid[15:0];
  assign S07_AXI_1_WLAST = S07_AXI_wlast[0];
  assign S07_AXI_1_WSTRB = S07_AXI_wstrb[15:0];
  assign S07_AXI_1_WUSER = S07_AXI_wuser[16:0];
  assign S07_AXI_1_WVALID = S07_AXI_wvalid[0];
  assign S07_AXI_arready[0] = S07_AXI_1_ARREADY;
  assign S07_AXI_awready[0] = S07_AXI_1_AWREADY;
  assign S07_AXI_bid[15:0] = S07_AXI_1_BID;
  assign S07_AXI_bresp[1:0] = S07_AXI_1_BRESP;
  assign S07_AXI_bvalid[0] = S07_AXI_1_BVALID;
  assign S07_AXI_rdata[127:0] = S07_AXI_1_RDATA;
  assign S07_AXI_rid[15:0] = S07_AXI_1_RID;
  assign S07_AXI_rlast[0] = S07_AXI_1_RLAST;
  assign S07_AXI_rresp[1:0] = S07_AXI_1_RRESP;
  assign S07_AXI_ruser[16:0] = S07_AXI_1_RUSER;
  assign S07_AXI_rvalid[0] = S07_AXI_1_RVALID;
  assign S07_AXI_wready[0] = S07_AXI_1_WREADY;
  assign S08_AXI_1_ARADDR = S08_AXI_araddr[63:0];
  assign S08_AXI_1_ARBURST = S08_AXI_arburst[1:0];
  assign S08_AXI_1_ARCACHE = S08_AXI_arcache[3:0];
  assign S08_AXI_1_ARID = S08_AXI_arid[15:0];
  assign S08_AXI_1_ARLEN = S08_AXI_arlen[7:0];
  assign S08_AXI_1_ARLOCK = S08_AXI_arlock[0];
  assign S08_AXI_1_ARPROT = S08_AXI_arprot[2:0];
  assign S08_AXI_1_ARQOS = S08_AXI_arqos[3:0];
  assign S08_AXI_1_ARREGION = S08_AXI_arregion[3:0];
  assign S08_AXI_1_ARSIZE = S08_AXI_arsize[2:0];
  assign S08_AXI_1_ARUSER = S08_AXI_aruser[17:0];
  assign S08_AXI_1_ARVALID = S08_AXI_arvalid[0];
  assign S08_AXI_1_AWADDR = S08_AXI_awaddr[63:0];
  assign S08_AXI_1_AWBURST = S08_AXI_awburst[1:0];
  assign S08_AXI_1_AWCACHE = S08_AXI_awcache[3:0];
  assign S08_AXI_1_AWID = S08_AXI_awid[15:0];
  assign S08_AXI_1_AWLEN = S08_AXI_awlen[7:0];
  assign S08_AXI_1_AWLOCK = S08_AXI_awlock[0];
  assign S08_AXI_1_AWPROT = S08_AXI_awprot[2:0];
  assign S08_AXI_1_AWQOS = S08_AXI_awqos[3:0];
  assign S08_AXI_1_AWREGION = S08_AXI_awregion[3:0];
  assign S08_AXI_1_AWSIZE = S08_AXI_awsize[2:0];
  assign S08_AXI_1_AWUSER = S08_AXI_awuser[17:0];
  assign S08_AXI_1_AWVALID = S08_AXI_awvalid[0];
  assign S08_AXI_1_BREADY = S08_AXI_bready[0];
  assign S08_AXI_1_RREADY = S08_AXI_rready[0];
  assign S08_AXI_1_WDATA = S08_AXI_wdata[127:0];
  assign S08_AXI_1_WID = S08_AXI_wid[15:0];
  assign S08_AXI_1_WLAST = S08_AXI_wlast[0];
  assign S08_AXI_1_WSTRB = S08_AXI_wstrb[15:0];
  assign S08_AXI_1_WUSER = S08_AXI_wuser[16:0];
  assign S08_AXI_1_WVALID = S08_AXI_wvalid[0];
  assign S08_AXI_arready[0] = S08_AXI_1_ARREADY;
  assign S08_AXI_awready[0] = S08_AXI_1_AWREADY;
  assign S08_AXI_bid[15:0] = S08_AXI_1_BID;
  assign S08_AXI_bresp[1:0] = S08_AXI_1_BRESP;
  assign S08_AXI_buser[15:0] = S08_AXI_1_BUSER;
  assign S08_AXI_bvalid[0] = S08_AXI_1_BVALID;
  assign S08_AXI_rdata[127:0] = S08_AXI_1_RDATA;
  assign S08_AXI_rid[15:0] = S08_AXI_1_RID;
  assign S08_AXI_rlast[0] = S08_AXI_1_RLAST;
  assign S08_AXI_rresp[1:0] = S08_AXI_1_RRESP;
  assign S08_AXI_ruser[16:0] = S08_AXI_1_RUSER;
  assign S08_AXI_rvalid[0] = S08_AXI_1_RVALID;
  assign S08_AXI_wready[0] = S08_AXI_1_WREADY;
  assign aclk0_1 = aclk0;
  assign aclk1_1 = aclk1;
  assign aclk2_1 = aclk2;
  assign aclk3_1 = aclk3;
  assign aclk4_1 = aclk4;
  assign aclk5_1 = aclk5;
  assign aclk6_1 = aclk6;
  assign aclk7_1 = aclk7;
  assign aclk8_1 = aclk8;
  assign sys_clk0_1_CLK_N = sys_clk0_clk_n[0];
  assign sys_clk0_1_CLK_P = sys_clk0_clk_p[0];
  (* DONT_TOUCH *) 
  bd_8be5_MC0_ddrc_0 MC0_ddrc
       (.ch0_ddr4_act_n(MC0_ddrc_CH0_DDR4_ACT_N),
        .ch0_ddr4_adr(MC0_ddrc_CH0_DDR4_ADR),
        .ch0_ddr4_ba(MC0_ddrc_CH0_DDR4_BA),
        .ch0_ddr4_bg(MC0_ddrc_CH0_DDR4_BG),
        .ch0_ddr4_ck_c(MC0_ddrc_CH0_DDR4_CK_C),
        .ch0_ddr4_ck_t(MC0_ddrc_CH0_DDR4_CK_T),
        .ch0_ddr4_cke(MC0_ddrc_CH0_DDR4_CKE),
        .ch0_ddr4_cs_n(MC0_ddrc_CH0_DDR4_CS_N),
        .ch0_ddr4_dm_dbi_n(CH0_DDR4_0_dm_n[8:0]),
        .ch0_ddr4_dq(CH0_DDR4_0_dq[71:0]),
        .ch0_ddr4_dqs_c(CH0_DDR4_0_dqs_c[8:0]),
        .ch0_ddr4_dqs_t(CH0_DDR4_0_dqs_t[8:0]),
        .ch0_ddr4_odt(MC0_ddrc_CH0_DDR4_ODT),
        .ch0_ddr4_reset_n(MC0_ddrc_CH0_DDR4_RESET_N),
        .dmc2noc_credit_rdy_0(mc0_ddrc_dmc2noc_credit_rdy_0),
        .dmc2noc_credit_rdy_1(mc0_ddrc_dmc2noc_credit_rdy_1),
        .dmc2noc_credit_rdy_2(mc0_ddrc_dmc2noc_credit_rdy_2),
        .dmc2noc_credit_rdy_3(mc0_ddrc_dmc2noc_credit_rdy_3),
        .dmc2noc_credit_rtn_0(mc0_ddrc_dmc2noc_credit_rtn_0),
        .dmc2noc_credit_rtn_1(mc0_ddrc_dmc2noc_credit_rtn_1),
        .dmc2noc_credit_rtn_2(mc0_ddrc_dmc2noc_credit_rtn_2),
        .dmc2noc_credit_rtn_3(mc0_ddrc_dmc2noc_credit_rtn_3),
        .dmc2noc_data_out_0(mc0_ddrc_dmc2noc_data_out_0),
        .dmc2noc_data_out_1(mc0_ddrc_dmc2noc_data_out_1),
        .dmc2noc_data_out_2(mc0_ddrc_dmc2noc_data_out_2),
        .dmc2noc_data_out_3(mc0_ddrc_dmc2noc_data_out_3),
        .dmc2noc_valid_out_0(mc0_ddrc_dmc2noc_valid_out_0),
        .dmc2noc_valid_out_1(mc0_ddrc_dmc2noc_valid_out_1),
        .dmc2noc_valid_out_2(mc0_ddrc_dmc2noc_valid_out_2),
        .dmc2noc_valid_out_3(mc0_ddrc_dmc2noc_valid_out_3),
        .noc2dmc_credit_rdy_0(mc0_ddrc_noc2dmc_credit_rdy_0),
        .noc2dmc_credit_rdy_1(mc0_ddrc_noc2dmc_credit_rdy_1),
        .noc2dmc_credit_rdy_2(mc0_ddrc_noc2dmc_credit_rdy_2),
        .noc2dmc_credit_rdy_3(mc0_ddrc_noc2dmc_credit_rdy_3),
        .noc2dmc_credit_rtn_0(mc0_ddrc_noc2dmc_credit_rtn_0),
        .noc2dmc_credit_rtn_1(mc0_ddrc_noc2dmc_credit_rtn_1),
        .noc2dmc_credit_rtn_2(mc0_ddrc_noc2dmc_credit_rtn_2),
        .noc2dmc_credit_rtn_3(mc0_ddrc_noc2dmc_credit_rtn_3),
        .noc2dmc_data_in_0(mc0_ddrc_noc2dmc_data_in_0),
        .noc2dmc_data_in_1(mc0_ddrc_noc2dmc_data_in_1),
        .noc2dmc_data_in_2(mc0_ddrc_noc2dmc_data_in_2),
        .noc2dmc_data_in_3(mc0_ddrc_noc2dmc_data_in_3),
        .noc2dmc_valid_in_0(mc0_ddrc_noc2dmc_valid_in_0),
        .noc2dmc_valid_in_1(mc0_ddrc_noc2dmc_valid_in_1),
        .noc2dmc_valid_in_2(mc0_ddrc_noc2dmc_valid_in_2),
        .noc2dmc_valid_in_3(mc0_ddrc_noc2dmc_valid_in_3),
        .sys_clk_n(sys_clk0_1_CLK_N),
        .sys_clk_p(sys_clk0_1_CLK_P));
  (* DONT_TOUCH *) 
  bd_8be5_S00_AXI_nmu_0 S00_AXI_nmu
       (.AXI_IN(1'b0),
        .IF_NOC_AXI_ARADDR(S00_AXI_1_ARADDR),
        .IF_NOC_AXI_ARBURST(S00_AXI_1_ARBURST),
        .IF_NOC_AXI_ARCACHE(S00_AXI_1_ARCACHE),
        .IF_NOC_AXI_ARID(S00_AXI_1_ARID),
        .IF_NOC_AXI_ARLEN(S00_AXI_1_ARLEN),
        .IF_NOC_AXI_ARLOCK(S00_AXI_1_ARLOCK),
        .IF_NOC_AXI_ARPROT(S00_AXI_1_ARPROT),
        .IF_NOC_AXI_ARQOS(S00_AXI_1_ARQOS),
        .IF_NOC_AXI_ARREADY(S00_AXI_1_ARREADY),
        .IF_NOC_AXI_ARREGION(S00_AXI_1_ARREGION),
        .IF_NOC_AXI_ARSIZE(S00_AXI_1_ARSIZE),
        .IF_NOC_AXI_ARUSER(S00_AXI_1_ARUSER),
        .IF_NOC_AXI_ARVALID(S00_AXI_1_ARVALID),
        .IF_NOC_AXI_AWADDR(S00_AXI_1_AWADDR),
        .IF_NOC_AXI_AWBURST(S00_AXI_1_AWBURST),
        .IF_NOC_AXI_AWCACHE(S00_AXI_1_AWCACHE),
        .IF_NOC_AXI_AWID(S00_AXI_1_AWID),
        .IF_NOC_AXI_AWLEN(S00_AXI_1_AWLEN),
        .IF_NOC_AXI_AWLOCK(S00_AXI_1_AWLOCK),
        .IF_NOC_AXI_AWPROT(S00_AXI_1_AWPROT),
        .IF_NOC_AXI_AWQOS(S00_AXI_1_AWQOS),
        .IF_NOC_AXI_AWREADY(S00_AXI_1_AWREADY),
        .IF_NOC_AXI_AWREGION(S00_AXI_1_AWREGION),
        .IF_NOC_AXI_AWSIZE(S00_AXI_1_AWSIZE),
        .IF_NOC_AXI_AWUSER(S00_AXI_1_AWUSER),
        .IF_NOC_AXI_AWVALID(S00_AXI_1_AWVALID),
        .IF_NOC_AXI_BID(S00_AXI_1_BID),
        .IF_NOC_AXI_BREADY(S00_AXI_1_BREADY),
        .IF_NOC_AXI_BRESP(S00_AXI_1_BRESP),
        .IF_NOC_AXI_BVALID(S00_AXI_1_BVALID),
        .IF_NOC_AXI_RDATA(S00_AXI_1_RDATA),
        .IF_NOC_AXI_RID(S00_AXI_1_RID),
        .IF_NOC_AXI_RLAST(S00_AXI_1_RLAST),
        .IF_NOC_AXI_RREADY(S00_AXI_1_RREADY),
        .IF_NOC_AXI_RRESP(S00_AXI_1_RRESP),
        .IF_NOC_AXI_RUSER(S00_AXI_1_RUSER),
        .IF_NOC_AXI_RVALID(S00_AXI_1_RVALID),
        .IF_NOC_AXI_WDATA(S00_AXI_1_WDATA),
        .IF_NOC_AXI_WID(S00_AXI_1_WID),
        .IF_NOC_AXI_WLAST(S00_AXI_1_WLAST),
        .IF_NOC_AXI_WREADY(S00_AXI_1_WREADY),
        .IF_NOC_AXI_WSTRB(S00_AXI_1_WSTRB),
        .IF_NOC_AXI_WUSER(S00_AXI_1_WUSER),
        .IF_NOC_AXI_WVALID(S00_AXI_1_WVALID),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(s00_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(s00_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(s00_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(s00_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(s00_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(s00_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(s00_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(s00_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aclk(aclk0_1));
  (* DONT_TOUCH *) 
  bd_8be5_S01_AXI_nmu_0 S01_AXI_nmu
       (.AXI_IN(1'b0),
        .IF_NOC_AXI_ARADDR(S01_AXI_1_ARADDR),
        .IF_NOC_AXI_ARBURST(S01_AXI_1_ARBURST),
        .IF_NOC_AXI_ARCACHE(S01_AXI_1_ARCACHE),
        .IF_NOC_AXI_ARID(S01_AXI_1_ARID),
        .IF_NOC_AXI_ARLEN(S01_AXI_1_ARLEN),
        .IF_NOC_AXI_ARLOCK(S01_AXI_1_ARLOCK),
        .IF_NOC_AXI_ARPROT(S01_AXI_1_ARPROT),
        .IF_NOC_AXI_ARQOS(S01_AXI_1_ARQOS),
        .IF_NOC_AXI_ARREADY(S01_AXI_1_ARREADY),
        .IF_NOC_AXI_ARREGION(S01_AXI_1_ARREGION),
        .IF_NOC_AXI_ARSIZE(S01_AXI_1_ARSIZE),
        .IF_NOC_AXI_ARUSER(S01_AXI_1_ARUSER),
        .IF_NOC_AXI_ARVALID(S01_AXI_1_ARVALID),
        .IF_NOC_AXI_AWADDR(S01_AXI_1_AWADDR),
        .IF_NOC_AXI_AWBURST(S01_AXI_1_AWBURST),
        .IF_NOC_AXI_AWCACHE(S01_AXI_1_AWCACHE),
        .IF_NOC_AXI_AWID(S01_AXI_1_AWID),
        .IF_NOC_AXI_AWLEN(S01_AXI_1_AWLEN),
        .IF_NOC_AXI_AWLOCK(S01_AXI_1_AWLOCK),
        .IF_NOC_AXI_AWPROT(S01_AXI_1_AWPROT),
        .IF_NOC_AXI_AWQOS(S01_AXI_1_AWQOS),
        .IF_NOC_AXI_AWREADY(S01_AXI_1_AWREADY),
        .IF_NOC_AXI_AWREGION(S01_AXI_1_AWREGION),
        .IF_NOC_AXI_AWSIZE(S01_AXI_1_AWSIZE),
        .IF_NOC_AXI_AWUSER(S01_AXI_1_AWUSER),
        .IF_NOC_AXI_AWVALID(S01_AXI_1_AWVALID),
        .IF_NOC_AXI_BID(S01_AXI_1_BID),
        .IF_NOC_AXI_BREADY(S01_AXI_1_BREADY),
        .IF_NOC_AXI_BRESP(S01_AXI_1_BRESP),
        .IF_NOC_AXI_BVALID(S01_AXI_1_BVALID),
        .IF_NOC_AXI_RDATA(S01_AXI_1_RDATA),
        .IF_NOC_AXI_RID(S01_AXI_1_RID),
        .IF_NOC_AXI_RLAST(S01_AXI_1_RLAST),
        .IF_NOC_AXI_RREADY(S01_AXI_1_RREADY),
        .IF_NOC_AXI_RRESP(S01_AXI_1_RRESP),
        .IF_NOC_AXI_RUSER(S01_AXI_1_RUSER),
        .IF_NOC_AXI_RVALID(S01_AXI_1_RVALID),
        .IF_NOC_AXI_WDATA(S01_AXI_1_WDATA),
        .IF_NOC_AXI_WID(S01_AXI_1_WID),
        .IF_NOC_AXI_WLAST(S01_AXI_1_WLAST),
        .IF_NOC_AXI_WREADY(S01_AXI_1_WREADY),
        .IF_NOC_AXI_WSTRB(S01_AXI_1_WSTRB),
        .IF_NOC_AXI_WUSER(S01_AXI_1_WUSER),
        .IF_NOC_AXI_WVALID(S01_AXI_1_WVALID),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(s01_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(s01_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(s01_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(s01_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(s01_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(s01_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(s01_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(s01_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aclk(aclk1_1));
  (* DONT_TOUCH *) 
  bd_8be5_S02_AXI_nmu_0 S02_AXI_nmu
       (.AXI_IN(1'b0),
        .IF_NOC_AXI_ARADDR(S02_AXI_1_ARADDR),
        .IF_NOC_AXI_ARBURST(S02_AXI_1_ARBURST),
        .IF_NOC_AXI_ARCACHE(S02_AXI_1_ARCACHE),
        .IF_NOC_AXI_ARID(S02_AXI_1_ARID),
        .IF_NOC_AXI_ARLEN(S02_AXI_1_ARLEN),
        .IF_NOC_AXI_ARLOCK(S02_AXI_1_ARLOCK),
        .IF_NOC_AXI_ARPROT(S02_AXI_1_ARPROT),
        .IF_NOC_AXI_ARQOS(S02_AXI_1_ARQOS),
        .IF_NOC_AXI_ARREADY(S02_AXI_1_ARREADY),
        .IF_NOC_AXI_ARREGION(S02_AXI_1_ARREGION),
        .IF_NOC_AXI_ARSIZE(S02_AXI_1_ARSIZE),
        .IF_NOC_AXI_ARUSER(S02_AXI_1_ARUSER),
        .IF_NOC_AXI_ARVALID(S02_AXI_1_ARVALID),
        .IF_NOC_AXI_AWADDR(S02_AXI_1_AWADDR),
        .IF_NOC_AXI_AWBURST(S02_AXI_1_AWBURST),
        .IF_NOC_AXI_AWCACHE(S02_AXI_1_AWCACHE),
        .IF_NOC_AXI_AWID(S02_AXI_1_AWID),
        .IF_NOC_AXI_AWLEN(S02_AXI_1_AWLEN),
        .IF_NOC_AXI_AWLOCK(S02_AXI_1_AWLOCK),
        .IF_NOC_AXI_AWPROT(S02_AXI_1_AWPROT),
        .IF_NOC_AXI_AWQOS(S02_AXI_1_AWQOS),
        .IF_NOC_AXI_AWREADY(S02_AXI_1_AWREADY),
        .IF_NOC_AXI_AWREGION(S02_AXI_1_AWREGION),
        .IF_NOC_AXI_AWSIZE(S02_AXI_1_AWSIZE),
        .IF_NOC_AXI_AWUSER(S02_AXI_1_AWUSER),
        .IF_NOC_AXI_AWVALID(S02_AXI_1_AWVALID),
        .IF_NOC_AXI_BID(S02_AXI_1_BID),
        .IF_NOC_AXI_BREADY(S02_AXI_1_BREADY),
        .IF_NOC_AXI_BRESP(S02_AXI_1_BRESP),
        .IF_NOC_AXI_BVALID(S02_AXI_1_BVALID),
        .IF_NOC_AXI_RDATA(S02_AXI_1_RDATA),
        .IF_NOC_AXI_RID(S02_AXI_1_RID),
        .IF_NOC_AXI_RLAST(S02_AXI_1_RLAST),
        .IF_NOC_AXI_RREADY(S02_AXI_1_RREADY),
        .IF_NOC_AXI_RRESP(S02_AXI_1_RRESP),
        .IF_NOC_AXI_RUSER(S02_AXI_1_RUSER),
        .IF_NOC_AXI_RVALID(S02_AXI_1_RVALID),
        .IF_NOC_AXI_WDATA(S02_AXI_1_WDATA),
        .IF_NOC_AXI_WID(S02_AXI_1_WID),
        .IF_NOC_AXI_WLAST(S02_AXI_1_WLAST),
        .IF_NOC_AXI_WREADY(S02_AXI_1_WREADY),
        .IF_NOC_AXI_WSTRB(S02_AXI_1_WSTRB),
        .IF_NOC_AXI_WUSER(S02_AXI_1_WUSER),
        .IF_NOC_AXI_WVALID(S02_AXI_1_WVALID),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(s02_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(s02_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(s02_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(s02_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(s02_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(s02_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(s02_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(s02_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aclk(aclk2_1));
  (* DONT_TOUCH *) 
  bd_8be5_S03_AXI_nmu_0 S03_AXI_nmu
       (.AXI_IN(1'b0),
        .IF_NOC_AXI_ARADDR(S03_AXI_1_ARADDR),
        .IF_NOC_AXI_ARBURST(S03_AXI_1_ARBURST),
        .IF_NOC_AXI_ARCACHE(S03_AXI_1_ARCACHE),
        .IF_NOC_AXI_ARID(S03_AXI_1_ARID),
        .IF_NOC_AXI_ARLEN(S03_AXI_1_ARLEN),
        .IF_NOC_AXI_ARLOCK(S03_AXI_1_ARLOCK),
        .IF_NOC_AXI_ARPROT(S03_AXI_1_ARPROT),
        .IF_NOC_AXI_ARQOS(S03_AXI_1_ARQOS),
        .IF_NOC_AXI_ARREADY(S03_AXI_1_ARREADY),
        .IF_NOC_AXI_ARREGION(S03_AXI_1_ARREGION),
        .IF_NOC_AXI_ARSIZE(S03_AXI_1_ARSIZE),
        .IF_NOC_AXI_ARUSER(S03_AXI_1_ARUSER),
        .IF_NOC_AXI_ARVALID(S03_AXI_1_ARVALID),
        .IF_NOC_AXI_AWADDR(S03_AXI_1_AWADDR),
        .IF_NOC_AXI_AWBURST(S03_AXI_1_AWBURST),
        .IF_NOC_AXI_AWCACHE(S03_AXI_1_AWCACHE),
        .IF_NOC_AXI_AWID(S03_AXI_1_AWID),
        .IF_NOC_AXI_AWLEN(S03_AXI_1_AWLEN),
        .IF_NOC_AXI_AWLOCK(S03_AXI_1_AWLOCK),
        .IF_NOC_AXI_AWPROT(S03_AXI_1_AWPROT),
        .IF_NOC_AXI_AWQOS(S03_AXI_1_AWQOS),
        .IF_NOC_AXI_AWREADY(S03_AXI_1_AWREADY),
        .IF_NOC_AXI_AWREGION(S03_AXI_1_AWREGION),
        .IF_NOC_AXI_AWSIZE(S03_AXI_1_AWSIZE),
        .IF_NOC_AXI_AWUSER(S03_AXI_1_AWUSER),
        .IF_NOC_AXI_AWVALID(S03_AXI_1_AWVALID),
        .IF_NOC_AXI_BID(S03_AXI_1_BID),
        .IF_NOC_AXI_BREADY(S03_AXI_1_BREADY),
        .IF_NOC_AXI_BRESP(S03_AXI_1_BRESP),
        .IF_NOC_AXI_BVALID(S03_AXI_1_BVALID),
        .IF_NOC_AXI_RDATA(S03_AXI_1_RDATA),
        .IF_NOC_AXI_RID(S03_AXI_1_RID),
        .IF_NOC_AXI_RLAST(S03_AXI_1_RLAST),
        .IF_NOC_AXI_RREADY(S03_AXI_1_RREADY),
        .IF_NOC_AXI_RRESP(S03_AXI_1_RRESP),
        .IF_NOC_AXI_RUSER(S03_AXI_1_RUSER),
        .IF_NOC_AXI_RVALID(S03_AXI_1_RVALID),
        .IF_NOC_AXI_WDATA(S03_AXI_1_WDATA),
        .IF_NOC_AXI_WID(S03_AXI_1_WID),
        .IF_NOC_AXI_WLAST(S03_AXI_1_WLAST),
        .IF_NOC_AXI_WREADY(S03_AXI_1_WREADY),
        .IF_NOC_AXI_WSTRB(S03_AXI_1_WSTRB),
        .IF_NOC_AXI_WUSER(S03_AXI_1_WUSER),
        .IF_NOC_AXI_WVALID(S03_AXI_1_WVALID),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(s03_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(s03_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(s03_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(s03_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(s03_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(s03_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(s03_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(s03_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aclk(aclk3_1));
  (* DONT_TOUCH *) 
  bd_8be5_S04_AXI_nmu_0 S04_AXI_nmu
       (.AXI_IN(1'b0),
        .IF_NOC_AXI_ARADDR(S04_AXI_1_ARADDR),
        .IF_NOC_AXI_ARBURST(S04_AXI_1_ARBURST),
        .IF_NOC_AXI_ARCACHE(S04_AXI_1_ARCACHE),
        .IF_NOC_AXI_ARID(S04_AXI_1_ARID),
        .IF_NOC_AXI_ARLEN(S04_AXI_1_ARLEN),
        .IF_NOC_AXI_ARLOCK(S04_AXI_1_ARLOCK),
        .IF_NOC_AXI_ARPROT(S04_AXI_1_ARPROT),
        .IF_NOC_AXI_ARQOS(S04_AXI_1_ARQOS),
        .IF_NOC_AXI_ARREADY(S04_AXI_1_ARREADY),
        .IF_NOC_AXI_ARREGION(S04_AXI_1_ARREGION),
        .IF_NOC_AXI_ARSIZE(S04_AXI_1_ARSIZE),
        .IF_NOC_AXI_ARUSER(S04_AXI_1_ARUSER),
        .IF_NOC_AXI_ARVALID(S04_AXI_1_ARVALID),
        .IF_NOC_AXI_AWADDR(S04_AXI_1_AWADDR),
        .IF_NOC_AXI_AWBURST(S04_AXI_1_AWBURST),
        .IF_NOC_AXI_AWCACHE(S04_AXI_1_AWCACHE),
        .IF_NOC_AXI_AWID(S04_AXI_1_AWID),
        .IF_NOC_AXI_AWLEN(S04_AXI_1_AWLEN),
        .IF_NOC_AXI_AWLOCK(S04_AXI_1_AWLOCK),
        .IF_NOC_AXI_AWPROT(S04_AXI_1_AWPROT),
        .IF_NOC_AXI_AWQOS(S04_AXI_1_AWQOS),
        .IF_NOC_AXI_AWREADY(S04_AXI_1_AWREADY),
        .IF_NOC_AXI_AWREGION(S04_AXI_1_AWREGION),
        .IF_NOC_AXI_AWSIZE(S04_AXI_1_AWSIZE),
        .IF_NOC_AXI_AWUSER(S04_AXI_1_AWUSER),
        .IF_NOC_AXI_AWVALID(S04_AXI_1_AWVALID),
        .IF_NOC_AXI_BID(S04_AXI_1_BID),
        .IF_NOC_AXI_BREADY(S04_AXI_1_BREADY),
        .IF_NOC_AXI_BRESP(S04_AXI_1_BRESP),
        .IF_NOC_AXI_BVALID(S04_AXI_1_BVALID),
        .IF_NOC_AXI_RDATA(S04_AXI_1_RDATA),
        .IF_NOC_AXI_RID(S04_AXI_1_RID),
        .IF_NOC_AXI_RLAST(S04_AXI_1_RLAST),
        .IF_NOC_AXI_RREADY(S04_AXI_1_RREADY),
        .IF_NOC_AXI_RRESP(S04_AXI_1_RRESP),
        .IF_NOC_AXI_RUSER(S04_AXI_1_RUSER),
        .IF_NOC_AXI_RVALID(S04_AXI_1_RVALID),
        .IF_NOC_AXI_WDATA(S04_AXI_1_WDATA),
        .IF_NOC_AXI_WID(S04_AXI_1_WID),
        .IF_NOC_AXI_WLAST(S04_AXI_1_WLAST),
        .IF_NOC_AXI_WREADY(S04_AXI_1_WREADY),
        .IF_NOC_AXI_WSTRB(S04_AXI_1_WSTRB),
        .IF_NOC_AXI_WUSER(S04_AXI_1_WUSER),
        .IF_NOC_AXI_WVALID(S04_AXI_1_WVALID),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(s04_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(s04_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(s04_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(s04_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(s04_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(s04_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(s04_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(s04_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aclk(aclk4_1));
  (* DONT_TOUCH *) 
  bd_8be5_S05_AXI_nmu_0 S05_AXI_nmu
       (.AXI_IN(1'b0),
        .IF_NOC_AXI_ARADDR(S05_AXI_1_ARADDR),
        .IF_NOC_AXI_ARBURST(S05_AXI_1_ARBURST),
        .IF_NOC_AXI_ARCACHE(S05_AXI_1_ARCACHE),
        .IF_NOC_AXI_ARID(S05_AXI_1_ARID),
        .IF_NOC_AXI_ARLEN(S05_AXI_1_ARLEN),
        .IF_NOC_AXI_ARLOCK(S05_AXI_1_ARLOCK),
        .IF_NOC_AXI_ARPROT(S05_AXI_1_ARPROT),
        .IF_NOC_AXI_ARQOS(S05_AXI_1_ARQOS),
        .IF_NOC_AXI_ARREADY(S05_AXI_1_ARREADY),
        .IF_NOC_AXI_ARREGION(S05_AXI_1_ARREGION),
        .IF_NOC_AXI_ARSIZE(S05_AXI_1_ARSIZE),
        .IF_NOC_AXI_ARUSER(S05_AXI_1_ARUSER),
        .IF_NOC_AXI_ARVALID(S05_AXI_1_ARVALID),
        .IF_NOC_AXI_AWADDR(S05_AXI_1_AWADDR),
        .IF_NOC_AXI_AWBURST(S05_AXI_1_AWBURST),
        .IF_NOC_AXI_AWCACHE(S05_AXI_1_AWCACHE),
        .IF_NOC_AXI_AWID(S05_AXI_1_AWID),
        .IF_NOC_AXI_AWLEN(S05_AXI_1_AWLEN),
        .IF_NOC_AXI_AWLOCK(S05_AXI_1_AWLOCK),
        .IF_NOC_AXI_AWPROT(S05_AXI_1_AWPROT),
        .IF_NOC_AXI_AWQOS(S05_AXI_1_AWQOS),
        .IF_NOC_AXI_AWREADY(S05_AXI_1_AWREADY),
        .IF_NOC_AXI_AWREGION(S05_AXI_1_AWREGION),
        .IF_NOC_AXI_AWSIZE(S05_AXI_1_AWSIZE),
        .IF_NOC_AXI_AWUSER(S05_AXI_1_AWUSER),
        .IF_NOC_AXI_AWVALID(S05_AXI_1_AWVALID),
        .IF_NOC_AXI_BID(S05_AXI_1_BID),
        .IF_NOC_AXI_BREADY(S05_AXI_1_BREADY),
        .IF_NOC_AXI_BRESP(S05_AXI_1_BRESP),
        .IF_NOC_AXI_BVALID(S05_AXI_1_BVALID),
        .IF_NOC_AXI_RDATA(S05_AXI_1_RDATA),
        .IF_NOC_AXI_RID(S05_AXI_1_RID),
        .IF_NOC_AXI_RLAST(S05_AXI_1_RLAST),
        .IF_NOC_AXI_RREADY(S05_AXI_1_RREADY),
        .IF_NOC_AXI_RRESP(S05_AXI_1_RRESP),
        .IF_NOC_AXI_RUSER(S05_AXI_1_RUSER),
        .IF_NOC_AXI_RVALID(S05_AXI_1_RVALID),
        .IF_NOC_AXI_WDATA(S05_AXI_1_WDATA),
        .IF_NOC_AXI_WID(S05_AXI_1_WID),
        .IF_NOC_AXI_WLAST(S05_AXI_1_WLAST),
        .IF_NOC_AXI_WREADY(S05_AXI_1_WREADY),
        .IF_NOC_AXI_WSTRB(S05_AXI_1_WSTRB),
        .IF_NOC_AXI_WUSER(S05_AXI_1_WUSER),
        .IF_NOC_AXI_WVALID(S05_AXI_1_WVALID),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(s05_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(s05_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(s05_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(s05_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(s05_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(s05_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(s05_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(s05_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aclk(aclk5_1));
  (* DONT_TOUCH *) 
  bd_8be5_S06_AXI_nmu_0 S06_AXI_nmu
       (.AXI_IN(1'b0),
        .IF_NOC_AXI_ARADDR(S06_AXI_1_ARADDR),
        .IF_NOC_AXI_ARBURST(S06_AXI_1_ARBURST),
        .IF_NOC_AXI_ARCACHE(S06_AXI_1_ARCACHE),
        .IF_NOC_AXI_ARID(S06_AXI_1_ARID),
        .IF_NOC_AXI_ARLEN(S06_AXI_1_ARLEN),
        .IF_NOC_AXI_ARLOCK(S06_AXI_1_ARLOCK),
        .IF_NOC_AXI_ARPROT(S06_AXI_1_ARPROT),
        .IF_NOC_AXI_ARQOS(S06_AXI_1_ARQOS),
        .IF_NOC_AXI_ARREADY(S06_AXI_1_ARREADY),
        .IF_NOC_AXI_ARREGION(S06_AXI_1_ARREGION),
        .IF_NOC_AXI_ARSIZE(S06_AXI_1_ARSIZE),
        .IF_NOC_AXI_ARUSER(S06_AXI_1_ARUSER),
        .IF_NOC_AXI_ARVALID(S06_AXI_1_ARVALID),
        .IF_NOC_AXI_AWADDR(S06_AXI_1_AWADDR),
        .IF_NOC_AXI_AWBURST(S06_AXI_1_AWBURST),
        .IF_NOC_AXI_AWCACHE(S06_AXI_1_AWCACHE),
        .IF_NOC_AXI_AWID(S06_AXI_1_AWID),
        .IF_NOC_AXI_AWLEN(S06_AXI_1_AWLEN),
        .IF_NOC_AXI_AWLOCK(S06_AXI_1_AWLOCK),
        .IF_NOC_AXI_AWPROT(S06_AXI_1_AWPROT),
        .IF_NOC_AXI_AWQOS(S06_AXI_1_AWQOS),
        .IF_NOC_AXI_AWREADY(S06_AXI_1_AWREADY),
        .IF_NOC_AXI_AWREGION(S06_AXI_1_AWREGION),
        .IF_NOC_AXI_AWSIZE(S06_AXI_1_AWSIZE),
        .IF_NOC_AXI_AWUSER(S06_AXI_1_AWUSER),
        .IF_NOC_AXI_AWVALID(S06_AXI_1_AWVALID),
        .IF_NOC_AXI_BID(S06_AXI_1_BID),
        .IF_NOC_AXI_BREADY(S06_AXI_1_BREADY),
        .IF_NOC_AXI_BRESP(S06_AXI_1_BRESP),
        .IF_NOC_AXI_BVALID(S06_AXI_1_BVALID),
        .IF_NOC_AXI_RDATA(S06_AXI_1_RDATA),
        .IF_NOC_AXI_RID(S06_AXI_1_RID),
        .IF_NOC_AXI_RLAST(S06_AXI_1_RLAST),
        .IF_NOC_AXI_RREADY(S06_AXI_1_RREADY),
        .IF_NOC_AXI_RRESP(S06_AXI_1_RRESP),
        .IF_NOC_AXI_RUSER(S06_AXI_1_RUSER),
        .IF_NOC_AXI_RVALID(S06_AXI_1_RVALID),
        .IF_NOC_AXI_WDATA(S06_AXI_1_WDATA),
        .IF_NOC_AXI_WID(S06_AXI_1_WID),
        .IF_NOC_AXI_WLAST(S06_AXI_1_WLAST),
        .IF_NOC_AXI_WREADY(S06_AXI_1_WREADY),
        .IF_NOC_AXI_WSTRB(S06_AXI_1_WSTRB),
        .IF_NOC_AXI_WUSER(S06_AXI_1_WUSER),
        .IF_NOC_AXI_WVALID(S06_AXI_1_WVALID),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(s06_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(s06_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(s06_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(s06_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(s06_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(s06_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(s06_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(s06_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aclk(aclk6_1));
  (* DONT_TOUCH *) 
  bd_8be5_S07_AXI_rpu_0 S07_AXI_rpu
       (.AXI_IN(1'b0),
        .IF_NOC_AXI_ARADDR(S07_AXI_1_ARADDR),
        .IF_NOC_AXI_ARBURST(S07_AXI_1_ARBURST),
        .IF_NOC_AXI_ARCACHE(S07_AXI_1_ARCACHE),
        .IF_NOC_AXI_ARID(S07_AXI_1_ARID),
        .IF_NOC_AXI_ARLEN(S07_AXI_1_ARLEN),
        .IF_NOC_AXI_ARLOCK(S07_AXI_1_ARLOCK),
        .IF_NOC_AXI_ARPROT(S07_AXI_1_ARPROT),
        .IF_NOC_AXI_ARQOS(S07_AXI_1_ARQOS),
        .IF_NOC_AXI_ARREADY(S07_AXI_1_ARREADY),
        .IF_NOC_AXI_ARREGION(S07_AXI_1_ARREGION),
        .IF_NOC_AXI_ARSIZE(S07_AXI_1_ARSIZE),
        .IF_NOC_AXI_ARUSER(S07_AXI_1_ARUSER),
        .IF_NOC_AXI_ARVALID(S07_AXI_1_ARVALID),
        .IF_NOC_AXI_AWADDR(S07_AXI_1_AWADDR),
        .IF_NOC_AXI_AWBURST(S07_AXI_1_AWBURST),
        .IF_NOC_AXI_AWCACHE(S07_AXI_1_AWCACHE),
        .IF_NOC_AXI_AWID(S07_AXI_1_AWID),
        .IF_NOC_AXI_AWLEN(S07_AXI_1_AWLEN),
        .IF_NOC_AXI_AWLOCK(S07_AXI_1_AWLOCK),
        .IF_NOC_AXI_AWPROT(S07_AXI_1_AWPROT),
        .IF_NOC_AXI_AWQOS(S07_AXI_1_AWQOS),
        .IF_NOC_AXI_AWREADY(S07_AXI_1_AWREADY),
        .IF_NOC_AXI_AWREGION(S07_AXI_1_AWREGION),
        .IF_NOC_AXI_AWSIZE(S07_AXI_1_AWSIZE),
        .IF_NOC_AXI_AWUSER(S07_AXI_1_AWUSER),
        .IF_NOC_AXI_AWVALID(S07_AXI_1_AWVALID),
        .IF_NOC_AXI_BID(S07_AXI_1_BID),
        .IF_NOC_AXI_BREADY(S07_AXI_1_BREADY),
        .IF_NOC_AXI_BRESP(S07_AXI_1_BRESP),
        .IF_NOC_AXI_BVALID(S07_AXI_1_BVALID),
        .IF_NOC_AXI_RDATA(S07_AXI_1_RDATA),
        .IF_NOC_AXI_RID(S07_AXI_1_RID),
        .IF_NOC_AXI_RLAST(S07_AXI_1_RLAST),
        .IF_NOC_AXI_RREADY(S07_AXI_1_RREADY),
        .IF_NOC_AXI_RRESP(S07_AXI_1_RRESP),
        .IF_NOC_AXI_RUSER(S07_AXI_1_RUSER),
        .IF_NOC_AXI_RVALID(S07_AXI_1_RVALID),
        .IF_NOC_AXI_WDATA(S07_AXI_1_WDATA),
        .IF_NOC_AXI_WID(S07_AXI_1_WID),
        .IF_NOC_AXI_WLAST(S07_AXI_1_WLAST),
        .IF_NOC_AXI_WREADY(S07_AXI_1_WREADY),
        .IF_NOC_AXI_WSTRB(S07_AXI_1_WSTRB),
        .IF_NOC_AXI_WUSER(S07_AXI_1_WUSER),
        .IF_NOC_AXI_WVALID(S07_AXI_1_WVALID),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(s07_axi_rpu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(s07_axi_rpu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(s07_axi_rpu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(s07_axi_rpu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(s07_axi_rpu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(s07_axi_rpu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(s07_axi_rpu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(s07_axi_rpu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aclk(aclk7_1));
  (* DONT_TOUCH *) 
  bd_8be5_S08_AXI_nmu_0 S08_AXI_nmu
       (.AXI_IN(1'b0),
        .IF_NOC_AXI_ARADDR(S08_AXI_1_ARADDR),
        .IF_NOC_AXI_ARBURST(S08_AXI_1_ARBURST),
        .IF_NOC_AXI_ARCACHE(S08_AXI_1_ARCACHE),
        .IF_NOC_AXI_ARID(S08_AXI_1_ARID),
        .IF_NOC_AXI_ARLEN(S08_AXI_1_ARLEN),
        .IF_NOC_AXI_ARLOCK(S08_AXI_1_ARLOCK),
        .IF_NOC_AXI_ARPROT(S08_AXI_1_ARPROT),
        .IF_NOC_AXI_ARQOS(S08_AXI_1_ARQOS),
        .IF_NOC_AXI_ARREADY(S08_AXI_1_ARREADY),
        .IF_NOC_AXI_ARREGION(S08_AXI_1_ARREGION),
        .IF_NOC_AXI_ARSIZE(S08_AXI_1_ARSIZE),
        .IF_NOC_AXI_ARUSER(S08_AXI_1_ARUSER),
        .IF_NOC_AXI_ARVALID(S08_AXI_1_ARVALID),
        .IF_NOC_AXI_AWADDR(S08_AXI_1_AWADDR),
        .IF_NOC_AXI_AWBURST(S08_AXI_1_AWBURST),
        .IF_NOC_AXI_AWCACHE(S08_AXI_1_AWCACHE),
        .IF_NOC_AXI_AWID(S08_AXI_1_AWID),
        .IF_NOC_AXI_AWLEN(S08_AXI_1_AWLEN),
        .IF_NOC_AXI_AWLOCK(S08_AXI_1_AWLOCK),
        .IF_NOC_AXI_AWPROT(S08_AXI_1_AWPROT),
        .IF_NOC_AXI_AWQOS(S08_AXI_1_AWQOS),
        .IF_NOC_AXI_AWREADY(S08_AXI_1_AWREADY),
        .IF_NOC_AXI_AWREGION(S08_AXI_1_AWREGION),
        .IF_NOC_AXI_AWSIZE(S08_AXI_1_AWSIZE),
        .IF_NOC_AXI_AWUSER(S08_AXI_1_AWUSER),
        .IF_NOC_AXI_AWVALID(S08_AXI_1_AWVALID),
        .IF_NOC_AXI_BID(S08_AXI_1_BID),
        .IF_NOC_AXI_BREADY(S08_AXI_1_BREADY),
        .IF_NOC_AXI_BRESP(S08_AXI_1_BRESP),
        .IF_NOC_AXI_BUSER(S08_AXI_1_BUSER),
        .IF_NOC_AXI_BVALID(S08_AXI_1_BVALID),
        .IF_NOC_AXI_RDATA(S08_AXI_1_RDATA),
        .IF_NOC_AXI_RID(S08_AXI_1_RID),
        .IF_NOC_AXI_RLAST(S08_AXI_1_RLAST),
        .IF_NOC_AXI_RREADY(S08_AXI_1_RREADY),
        .IF_NOC_AXI_RRESP(S08_AXI_1_RRESP),
        .IF_NOC_AXI_RUSER(S08_AXI_1_RUSER),
        .IF_NOC_AXI_RVALID(S08_AXI_1_RVALID),
        .IF_NOC_AXI_WDATA(S08_AXI_1_WDATA),
        .IF_NOC_AXI_WID(S08_AXI_1_WID),
        .IF_NOC_AXI_WLAST(S08_AXI_1_WLAST),
        .IF_NOC_AXI_WREADY(S08_AXI_1_WREADY),
        .IF_NOC_AXI_WSTRB(S08_AXI_1_WSTRB),
        .IF_NOC_AXI_WUSER(S08_AXI_1_WUSER),
        .IF_NOC_AXI_WVALID(S08_AXI_1_WVALID),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(s08_axi_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(s08_axi_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(s08_axi_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(s08_axi_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(s08_axi_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(s08_axi_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(s08_axi_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(s08_axi_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(const_0_dout),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(const_0_dout),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aclk(aclk8_1));
  (* DONT_TOUCH *) 
  bd_8be5_const_0_0 const_0
       (.dout(const_0_dout));
endmodule
