// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.3 (win64) Build 3173277 Wed Apr  7 05:07:49 MDT 2021
// Date        : Mon Jun 21 01:53:33 2021
// Host        : alexk-laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_axi_noc_0_0 -prefix
//               design_1_axi_noc_0_0_ design_1_axi_noc_0_0_stub.v
// Design      : design_1_axi_noc_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvc1802-vsva2197-2MP-e-S
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_8be5,Vivado 2020.3" *)
module design_1_axi_noc_0_0(S00_AXI_awaddr, S00_AXI_awlen, 
  S00_AXI_awsize, S00_AXI_awburst, S00_AXI_awlock, S00_AXI_awcache, S00_AXI_awprot, 
  S00_AXI_awregion, S00_AXI_awqos, S00_AXI_awvalid, S00_AXI_awready, S00_AXI_wdata, 
  S00_AXI_wstrb, S00_AXI_wlast, S00_AXI_wvalid, S00_AXI_wready, S00_AXI_bresp, 
  S00_AXI_bvalid, S00_AXI_bready, S00_AXI_araddr, S00_AXI_arlen, S00_AXI_arsize, 
  S00_AXI_arburst, S00_AXI_arlock, S00_AXI_arcache, S00_AXI_arprot, S00_AXI_arregion, 
  S00_AXI_arqos, S00_AXI_arvalid, S00_AXI_arready, S00_AXI_rdata, S00_AXI_rresp, 
  S00_AXI_rlast, S00_AXI_rvalid, S00_AXI_rready, S01_AXI_awaddr, S01_AXI_awlen, 
  S01_AXI_awsize, S01_AXI_awburst, S01_AXI_awlock, S01_AXI_awcache, S01_AXI_awprot, 
  S01_AXI_awregion, S01_AXI_awqos, S01_AXI_awvalid, S01_AXI_awready, S01_AXI_wdata, 
  S01_AXI_wstrb, S01_AXI_wlast, S01_AXI_wvalid, S01_AXI_wready, S01_AXI_bresp, 
  S01_AXI_bvalid, S01_AXI_bready, S01_AXI_araddr, S01_AXI_arlen, S01_AXI_arsize, 
  S01_AXI_arburst, S01_AXI_arlock, S01_AXI_arcache, S01_AXI_arprot, S01_AXI_arregion, 
  S01_AXI_arqos, S01_AXI_arvalid, S01_AXI_arready, S01_AXI_rdata, S01_AXI_rresp, 
  S01_AXI_rlast, S01_AXI_rvalid, S01_AXI_rready, S02_AXI_awaddr, S02_AXI_awlen, 
  S02_AXI_awsize, S02_AXI_awburst, S02_AXI_awlock, S02_AXI_awcache, S02_AXI_awprot, 
  S02_AXI_awregion, S02_AXI_awqos, S02_AXI_awvalid, S02_AXI_awready, S02_AXI_wdata, 
  S02_AXI_wstrb, S02_AXI_wlast, S02_AXI_wvalid, S02_AXI_wready, S02_AXI_bresp, 
  S02_AXI_bvalid, S02_AXI_bready, S02_AXI_araddr, S02_AXI_arlen, S02_AXI_arsize, 
  S02_AXI_arburst, S02_AXI_arlock, S02_AXI_arcache, S02_AXI_arprot, S02_AXI_arregion, 
  S02_AXI_arqos, S02_AXI_arvalid, S02_AXI_arready, S02_AXI_rdata, S02_AXI_rresp, 
  S02_AXI_rlast, S02_AXI_rvalid, S02_AXI_rready, S03_AXI_awaddr, S03_AXI_awlen, 
  S03_AXI_awsize, S03_AXI_awburst, S03_AXI_awlock, S03_AXI_awcache, S03_AXI_awprot, 
  S03_AXI_awregion, S03_AXI_awqos, S03_AXI_awvalid, S03_AXI_awready, S03_AXI_wdata, 
  S03_AXI_wstrb, S03_AXI_wlast, S03_AXI_wvalid, S03_AXI_wready, S03_AXI_bresp, 
  S03_AXI_bvalid, S03_AXI_bready, S03_AXI_araddr, S03_AXI_arlen, S03_AXI_arsize, 
  S03_AXI_arburst, S03_AXI_arlock, S03_AXI_arcache, S03_AXI_arprot, S03_AXI_arregion, 
  S03_AXI_arqos, S03_AXI_arvalid, S03_AXI_arready, S03_AXI_rdata, S03_AXI_rresp, 
  S03_AXI_rlast, S03_AXI_rvalid, S03_AXI_rready, S04_AXI_awaddr, S04_AXI_awlen, 
  S04_AXI_awsize, S04_AXI_awburst, S04_AXI_awlock, S04_AXI_awcache, S04_AXI_awprot, 
  S04_AXI_awregion, S04_AXI_awqos, S04_AXI_awvalid, S04_AXI_awready, S04_AXI_wdata, 
  S04_AXI_wstrb, S04_AXI_wlast, S04_AXI_wvalid, S04_AXI_wready, S04_AXI_bresp, 
  S04_AXI_bvalid, S04_AXI_bready, S04_AXI_araddr, S04_AXI_arlen, S04_AXI_arsize, 
  S04_AXI_arburst, S04_AXI_arlock, S04_AXI_arcache, S04_AXI_arprot, S04_AXI_arregion, 
  S04_AXI_arqos, S04_AXI_arvalid, S04_AXI_arready, S04_AXI_rdata, S04_AXI_rresp, 
  S04_AXI_rlast, S04_AXI_rvalid, S04_AXI_rready, S05_AXI_awaddr, S05_AXI_awlen, 
  S05_AXI_awsize, S05_AXI_awburst, S05_AXI_awlock, S05_AXI_awcache, S05_AXI_awprot, 
  S05_AXI_awregion, S05_AXI_awqos, S05_AXI_awvalid, S05_AXI_awready, S05_AXI_wdata, 
  S05_AXI_wstrb, S05_AXI_wlast, S05_AXI_wvalid, S05_AXI_wready, S05_AXI_bresp, 
  S05_AXI_bvalid, S05_AXI_bready, S05_AXI_araddr, S05_AXI_arlen, S05_AXI_arsize, 
  S05_AXI_arburst, S05_AXI_arlock, S05_AXI_arcache, S05_AXI_arprot, S05_AXI_arregion, 
  S05_AXI_arqos, S05_AXI_arvalid, S05_AXI_arready, S05_AXI_rdata, S05_AXI_rresp, 
  S05_AXI_rlast, S05_AXI_rvalid, S05_AXI_rready, S06_AXI_awaddr, S06_AXI_awlen, 
  S06_AXI_awsize, S06_AXI_awburst, S06_AXI_awlock, S06_AXI_awcache, S06_AXI_awprot, 
  S06_AXI_awregion, S06_AXI_awqos, S06_AXI_awvalid, S06_AXI_awready, S06_AXI_wdata, 
  S06_AXI_wstrb, S06_AXI_wlast, S06_AXI_wvalid, S06_AXI_wready, S06_AXI_bresp, 
  S06_AXI_bvalid, S06_AXI_bready, S06_AXI_araddr, S06_AXI_arlen, S06_AXI_arsize, 
  S06_AXI_arburst, S06_AXI_arlock, S06_AXI_arcache, S06_AXI_arprot, S06_AXI_arregion, 
  S06_AXI_arqos, S06_AXI_arvalid, S06_AXI_arready, S06_AXI_rdata, S06_AXI_rresp, 
  S06_AXI_rlast, S06_AXI_rvalid, S06_AXI_rready, S07_AXI_awaddr, S07_AXI_awlen, 
  S07_AXI_awsize, S07_AXI_awburst, S07_AXI_awlock, S07_AXI_awcache, S07_AXI_awprot, 
  S07_AXI_awregion, S07_AXI_awqos, S07_AXI_awvalid, S07_AXI_awready, S07_AXI_wdata, 
  S07_AXI_wstrb, S07_AXI_wlast, S07_AXI_wvalid, S07_AXI_wready, S07_AXI_bresp, 
  S07_AXI_bvalid, S07_AXI_bready, S07_AXI_araddr, S07_AXI_arlen, S07_AXI_arsize, 
  S07_AXI_arburst, S07_AXI_arlock, S07_AXI_arcache, S07_AXI_arprot, S07_AXI_arregion, 
  S07_AXI_arqos, S07_AXI_arvalid, S07_AXI_arready, S07_AXI_rdata, S07_AXI_rresp, 
  S07_AXI_rlast, S07_AXI_rvalid, S07_AXI_rready, S08_AXI_awaddr, S08_AXI_awlen, 
  S08_AXI_awsize, S08_AXI_awburst, S08_AXI_awlock, S08_AXI_awcache, S08_AXI_awprot, 
  S08_AXI_awregion, S08_AXI_awqos, S08_AXI_awvalid, S08_AXI_awready, S08_AXI_wdata, 
  S08_AXI_wstrb, S08_AXI_wlast, S08_AXI_wvalid, S08_AXI_wready, S08_AXI_bresp, 
  S08_AXI_bvalid, S08_AXI_bready, S08_AXI_araddr, S08_AXI_arlen, S08_AXI_arsize, 
  S08_AXI_arburst, S08_AXI_arlock, S08_AXI_arcache, S08_AXI_arprot, S08_AXI_arregion, 
  S08_AXI_arqos, S08_AXI_arvalid, S08_AXI_arready, S08_AXI_rdata, S08_AXI_rresp, 
  S08_AXI_rlast, S08_AXI_rvalid, S08_AXI_rready, M00_INI_internoc, M01_INI_internoc, 
  M02_INI_internoc, M03_INI_internoc, aclk0, aclk1, aclk2, aclk3, aclk4, aclk5, aclk6, aclk7, aclk8, 
  sys_clk0_clk_p, sys_clk0_clk_n, CH0_DDR4_0_dq, CH0_DDR4_0_dqs_t, CH0_DDR4_0_dqs_c, 
  CH0_DDR4_0_adr, CH0_DDR4_0_ba, CH0_DDR4_0_bg, CH0_DDR4_0_act_n, CH0_DDR4_0_reset_n, 
  CH0_DDR4_0_ck_t, CH0_DDR4_0_ck_c, CH0_DDR4_0_cke, CH0_DDR4_0_cs_n, CH0_DDR4_0_dm_n, 
  CH0_DDR4_0_odt, S06_AXI_arid, S06_AXI_aruser, S06_AXI_awid, S06_AXI_awuser, S06_AXI_bid, 
  S06_AXI_rid, S06_AXI_ruser, S06_AXI_wid, S06_AXI_wuser, S00_AXI_arid, S00_AXI_aruser, 
  S00_AXI_awid, S00_AXI_awuser, S00_AXI_bid, S00_AXI_rid, S00_AXI_ruser, S00_AXI_wid, 
  S00_AXI_wuser, S05_AXI_arid, S05_AXI_aruser, S05_AXI_awid, S05_AXI_awuser, S05_AXI_bid, 
  S05_AXI_rid, S05_AXI_ruser, S05_AXI_wid, S05_AXI_wuser, S01_AXI_arid, S01_AXI_aruser, 
  S01_AXI_awid, S01_AXI_awuser, S01_AXI_bid, S01_AXI_rid, S01_AXI_ruser, S01_AXI_wid, 
  S01_AXI_wuser, S02_AXI_arid, S02_AXI_aruser, S02_AXI_awid, S02_AXI_awuser, S02_AXI_bid, 
  S02_AXI_rid, S02_AXI_ruser, S02_AXI_wid, S02_AXI_wuser, S03_AXI_arid, S03_AXI_aruser, 
  S03_AXI_awid, S03_AXI_awuser, S03_AXI_bid, S03_AXI_rid, S03_AXI_ruser, S03_AXI_wid, 
  S03_AXI_wuser, S04_AXI_arid, S04_AXI_aruser, S04_AXI_awid, S04_AXI_awuser, S04_AXI_bid, 
  S04_AXI_rid, S04_AXI_ruser, S04_AXI_wid, S04_AXI_wuser, S07_AXI_arid, S07_AXI_aruser, 
  S07_AXI_awid, S07_AXI_awuser, S07_AXI_bid, S07_AXI_rid, S07_AXI_ruser, S07_AXI_wid, 
  S07_AXI_wuser, S08_AXI_arid, S08_AXI_aruser, S08_AXI_awid, S08_AXI_awuser, S08_AXI_bid, 
  S08_AXI_buser, S08_AXI_rid, S08_AXI_ruser, S08_AXI_wid, S08_AXI_wuser)
/* synthesis syn_black_box black_box_pad_pin="S00_AXI_awaddr[63:0],S00_AXI_awlen[7:0],S00_AXI_awsize[2:0],S00_AXI_awburst[1:0],S00_AXI_awlock[0:0],S00_AXI_awcache[3:0],S00_AXI_awprot[2:0],S00_AXI_awregion[3:0],S00_AXI_awqos[3:0],S00_AXI_awvalid[0:0],S00_AXI_awready[0:0],S00_AXI_wdata[127:0],S00_AXI_wstrb[15:0],S00_AXI_wlast[0:0],S00_AXI_wvalid[0:0],S00_AXI_wready[0:0],S00_AXI_bresp[1:0],S00_AXI_bvalid[0:0],S00_AXI_bready[0:0],S00_AXI_araddr[63:0],S00_AXI_arlen[7:0],S00_AXI_arsize[2:0],S00_AXI_arburst[1:0],S00_AXI_arlock[0:0],S00_AXI_arcache[3:0],S00_AXI_arprot[2:0],S00_AXI_arregion[3:0],S00_AXI_arqos[3:0],S00_AXI_arvalid[0:0],S00_AXI_arready[0:0],S00_AXI_rdata[127:0],S00_AXI_rresp[1:0],S00_AXI_rlast[0:0],S00_AXI_rvalid[0:0],S00_AXI_rready[0:0],S01_AXI_awaddr[63:0],S01_AXI_awlen[7:0],S01_AXI_awsize[2:0],S01_AXI_awburst[1:0],S01_AXI_awlock[0:0],S01_AXI_awcache[3:0],S01_AXI_awprot[2:0],S01_AXI_awregion[3:0],S01_AXI_awqos[3:0],S01_AXI_awvalid[0:0],S01_AXI_awready[0:0],S01_AXI_wdata[127:0],S01_AXI_wstrb[15:0],S01_AXI_wlast[0:0],S01_AXI_wvalid[0:0],S01_AXI_wready[0:0],S01_AXI_bresp[1:0],S01_AXI_bvalid[0:0],S01_AXI_bready[0:0],S01_AXI_araddr[63:0],S01_AXI_arlen[7:0],S01_AXI_arsize[2:0],S01_AXI_arburst[1:0],S01_AXI_arlock[0:0],S01_AXI_arcache[3:0],S01_AXI_arprot[2:0],S01_AXI_arregion[3:0],S01_AXI_arqos[3:0],S01_AXI_arvalid[0:0],S01_AXI_arready[0:0],S01_AXI_rdata[127:0],S01_AXI_rresp[1:0],S01_AXI_rlast[0:0],S01_AXI_rvalid[0:0],S01_AXI_rready[0:0],S02_AXI_awaddr[63:0],S02_AXI_awlen[7:0],S02_AXI_awsize[2:0],S02_AXI_awburst[1:0],S02_AXI_awlock[0:0],S02_AXI_awcache[3:0],S02_AXI_awprot[2:0],S02_AXI_awregion[3:0],S02_AXI_awqos[3:0],S02_AXI_awvalid[0:0],S02_AXI_awready[0:0],S02_AXI_wdata[127:0],S02_AXI_wstrb[15:0],S02_AXI_wlast[0:0],S02_AXI_wvalid[0:0],S02_AXI_wready[0:0],S02_AXI_bresp[1:0],S02_AXI_bvalid[0:0],S02_AXI_bready[0:0],S02_AXI_araddr[63:0],S02_AXI_arlen[7:0],S02_AXI_arsize[2:0],S02_AXI_arburst[1:0],S02_AXI_arlock[0:0],S02_AXI_arcache[3:0],S02_AXI_arprot[2:0],S02_AXI_arregion[3:0],S02_AXI_arqos[3:0],S02_AXI_arvalid[0:0],S02_AXI_arready[0:0],S02_AXI_rdata[127:0],S02_AXI_rresp[1:0],S02_AXI_rlast[0:0],S02_AXI_rvalid[0:0],S02_AXI_rready[0:0],S03_AXI_awaddr[63:0],S03_AXI_awlen[7:0],S03_AXI_awsize[2:0],S03_AXI_awburst[1:0],S03_AXI_awlock[0:0],S03_AXI_awcache[3:0],S03_AXI_awprot[2:0],S03_AXI_awregion[3:0],S03_AXI_awqos[3:0],S03_AXI_awvalid[0:0],S03_AXI_awready[0:0],S03_AXI_wdata[127:0],S03_AXI_wstrb[15:0],S03_AXI_wlast[0:0],S03_AXI_wvalid[0:0],S03_AXI_wready[0:0],S03_AXI_bresp[1:0],S03_AXI_bvalid[0:0],S03_AXI_bready[0:0],S03_AXI_araddr[63:0],S03_AXI_arlen[7:0],S03_AXI_arsize[2:0],S03_AXI_arburst[1:0],S03_AXI_arlock[0:0],S03_AXI_arcache[3:0],S03_AXI_arprot[2:0],S03_AXI_arregion[3:0],S03_AXI_arqos[3:0],S03_AXI_arvalid[0:0],S03_AXI_arready[0:0],S03_AXI_rdata[127:0],S03_AXI_rresp[1:0],S03_AXI_rlast[0:0],S03_AXI_rvalid[0:0],S03_AXI_rready[0:0],S04_AXI_awaddr[63:0],S04_AXI_awlen[7:0],S04_AXI_awsize[2:0],S04_AXI_awburst[1:0],S04_AXI_awlock[0:0],S04_AXI_awcache[3:0],S04_AXI_awprot[2:0],S04_AXI_awregion[3:0],S04_AXI_awqos[3:0],S04_AXI_awvalid[0:0],S04_AXI_awready[0:0],S04_AXI_wdata[127:0],S04_AXI_wstrb[15:0],S04_AXI_wlast[0:0],S04_AXI_wvalid[0:0],S04_AXI_wready[0:0],S04_AXI_bresp[1:0],S04_AXI_bvalid[0:0],S04_AXI_bready[0:0],S04_AXI_araddr[63:0],S04_AXI_arlen[7:0],S04_AXI_arsize[2:0],S04_AXI_arburst[1:0],S04_AXI_arlock[0:0],S04_AXI_arcache[3:0],S04_AXI_arprot[2:0],S04_AXI_arregion[3:0],S04_AXI_arqos[3:0],S04_AXI_arvalid[0:0],S04_AXI_arready[0:0],S04_AXI_rdata[127:0],S04_AXI_rresp[1:0],S04_AXI_rlast[0:0],S04_AXI_rvalid[0:0],S04_AXI_rready[0:0],S05_AXI_awaddr[63:0],S05_AXI_awlen[7:0],S05_AXI_awsize[2:0],S05_AXI_awburst[1:0],S05_AXI_awlock[0:0],S05_AXI_awcache[3:0],S05_AXI_awprot[2:0],S05_AXI_awregion[3:0],S05_AXI_awqos[3:0],S05_AXI_awvalid[0:0],S05_AXI_awready[0:0],S05_AXI_wdata[127:0],S05_AXI_wstrb[15:0],S05_AXI_wlast[0:0],S05_AXI_wvalid[0:0],S05_AXI_wready[0:0],S05_AXI_bresp[1:0],S05_AXI_bvalid[0:0],S05_AXI_bready[0:0],S05_AXI_araddr[63:0],S05_AXI_arlen[7:0],S05_AXI_arsize[2:0],S05_AXI_arburst[1:0],S05_AXI_arlock[0:0],S05_AXI_arcache[3:0],S05_AXI_arprot[2:0],S05_AXI_arregion[3:0],S05_AXI_arqos[3:0],S05_AXI_arvalid[0:0],S05_AXI_arready[0:0],S05_AXI_rdata[127:0],S05_AXI_rresp[1:0],S05_AXI_rlast[0:0],S05_AXI_rvalid[0:0],S05_AXI_rready[0:0],S06_AXI_awaddr[63:0],S06_AXI_awlen[7:0],S06_AXI_awsize[2:0],S06_AXI_awburst[1:0],S06_AXI_awlock[0:0],S06_AXI_awcache[3:0],S06_AXI_awprot[2:0],S06_AXI_awregion[3:0],S06_AXI_awqos[3:0],S06_AXI_awvalid[0:0],S06_AXI_awready[0:0],S06_AXI_wdata[127:0],S06_AXI_wstrb[15:0],S06_AXI_wlast[0:0],S06_AXI_wvalid[0:0],S06_AXI_wready[0:0],S06_AXI_bresp[1:0],S06_AXI_bvalid[0:0],S06_AXI_bready[0:0],S06_AXI_araddr[63:0],S06_AXI_arlen[7:0],S06_AXI_arsize[2:0],S06_AXI_arburst[1:0],S06_AXI_arlock[0:0],S06_AXI_arcache[3:0],S06_AXI_arprot[2:0],S06_AXI_arregion[3:0],S06_AXI_arqos[3:0],S06_AXI_arvalid[0:0],S06_AXI_arready[0:0],S06_AXI_rdata[127:0],S06_AXI_rresp[1:0],S06_AXI_rlast[0:0],S06_AXI_rvalid[0:0],S06_AXI_rready[0:0],S07_AXI_awaddr[63:0],S07_AXI_awlen[7:0],S07_AXI_awsize[2:0],S07_AXI_awburst[1:0],S07_AXI_awlock[0:0],S07_AXI_awcache[3:0],S07_AXI_awprot[2:0],S07_AXI_awregion[3:0],S07_AXI_awqos[3:0],S07_AXI_awvalid[0:0],S07_AXI_awready[0:0],S07_AXI_wdata[127:0],S07_AXI_wstrb[15:0],S07_AXI_wlast[0:0],S07_AXI_wvalid[0:0],S07_AXI_wready[0:0],S07_AXI_bresp[1:0],S07_AXI_bvalid[0:0],S07_AXI_bready[0:0],S07_AXI_araddr[63:0],S07_AXI_arlen[7:0],S07_AXI_arsize[2:0],S07_AXI_arburst[1:0],S07_AXI_arlock[0:0],S07_AXI_arcache[3:0],S07_AXI_arprot[2:0],S07_AXI_arregion[3:0],S07_AXI_arqos[3:0],S07_AXI_arvalid[0:0],S07_AXI_arready[0:0],S07_AXI_rdata[127:0],S07_AXI_rresp[1:0],S07_AXI_rlast[0:0],S07_AXI_rvalid[0:0],S07_AXI_rready[0:0],S08_AXI_awaddr[63:0],S08_AXI_awlen[7:0],S08_AXI_awsize[2:0],S08_AXI_awburst[1:0],S08_AXI_awlock[0:0],S08_AXI_awcache[3:0],S08_AXI_awprot[2:0],S08_AXI_awregion[3:0],S08_AXI_awqos[3:0],S08_AXI_awvalid[0:0],S08_AXI_awready[0:0],S08_AXI_wdata[127:0],S08_AXI_wstrb[15:0],S08_AXI_wlast[0:0],S08_AXI_wvalid[0:0],S08_AXI_wready[0:0],S08_AXI_bresp[1:0],S08_AXI_bvalid[0:0],S08_AXI_bready[0:0],S08_AXI_araddr[63:0],S08_AXI_arlen[7:0],S08_AXI_arsize[2:0],S08_AXI_arburst[1:0],S08_AXI_arlock[0:0],S08_AXI_arcache[3:0],S08_AXI_arprot[2:0],S08_AXI_arregion[3:0],S08_AXI_arqos[3:0],S08_AXI_arvalid[0:0],S08_AXI_arready[0:0],S08_AXI_rdata[127:0],S08_AXI_rresp[1:0],S08_AXI_rlast[0:0],S08_AXI_rvalid[0:0],S08_AXI_rready[0:0],M00_INI_internoc[0:0],M01_INI_internoc[0:0],M02_INI_internoc[0:0],M03_INI_internoc[0:0],aclk0,aclk1,aclk2,aclk3,aclk4,aclk5,aclk6,aclk7,aclk8,sys_clk0_clk_p[0:0],sys_clk0_clk_n[0:0],CH0_DDR4_0_dq[71:0],CH0_DDR4_0_dqs_t[8:0],CH0_DDR4_0_dqs_c[8:0],CH0_DDR4_0_adr[16:0],CH0_DDR4_0_ba[1:0],CH0_DDR4_0_bg[1:0],CH0_DDR4_0_act_n[0:0],CH0_DDR4_0_reset_n[0:0],CH0_DDR4_0_ck_t[1:0],CH0_DDR4_0_ck_c[1:0],CH0_DDR4_0_cke[1:0],CH0_DDR4_0_cs_n[1:0],CH0_DDR4_0_dm_n[8:0],CH0_DDR4_0_odt[1:0],S06_AXI_arid[15:0],S06_AXI_aruser[17:0],S06_AXI_awid[15:0],S06_AXI_awuser[17:0],S06_AXI_bid[15:0],S06_AXI_rid[15:0],S06_AXI_ruser[16:0],S06_AXI_wid[15:0],S06_AXI_wuser[16:0],S00_AXI_arid[15:0],S00_AXI_aruser[17:0],S00_AXI_awid[15:0],S00_AXI_awuser[17:0],S00_AXI_bid[15:0],S00_AXI_rid[15:0],S00_AXI_ruser[16:0],S00_AXI_wid[15:0],S00_AXI_wuser[16:0],S05_AXI_arid[15:0],S05_AXI_aruser[17:0],S05_AXI_awid[15:0],S05_AXI_awuser[17:0],S05_AXI_bid[15:0],S05_AXI_rid[15:0],S05_AXI_ruser[16:0],S05_AXI_wid[15:0],S05_AXI_wuser[16:0],S01_AXI_arid[15:0],S01_AXI_aruser[17:0],S01_AXI_awid[15:0],S01_AXI_awuser[17:0],S01_AXI_bid[15:0],S01_AXI_rid[15:0],S01_AXI_ruser[16:0],S01_AXI_wid[15:0],S01_AXI_wuser[16:0],S02_AXI_arid[15:0],S02_AXI_aruser[17:0],S02_AXI_awid[15:0],S02_AXI_awuser[17:0],S02_AXI_bid[15:0],S02_AXI_rid[15:0],S02_AXI_ruser[16:0],S02_AXI_wid[15:0],S02_AXI_wuser[16:0],S03_AXI_arid[15:0],S03_AXI_aruser[17:0],S03_AXI_awid[15:0],S03_AXI_awuser[17:0],S03_AXI_bid[15:0],S03_AXI_rid[15:0],S03_AXI_ruser[16:0],S03_AXI_wid[15:0],S03_AXI_wuser[16:0],S04_AXI_arid[15:0],S04_AXI_aruser[17:0],S04_AXI_awid[15:0],S04_AXI_awuser[17:0],S04_AXI_bid[15:0],S04_AXI_rid[15:0],S04_AXI_ruser[16:0],S04_AXI_wid[15:0],S04_AXI_wuser[16:0],S07_AXI_arid[15:0],S07_AXI_aruser[17:0],S07_AXI_awid[15:0],S07_AXI_awuser[17:0],S07_AXI_bid[15:0],S07_AXI_rid[15:0],S07_AXI_ruser[16:0],S07_AXI_wid[15:0],S07_AXI_wuser[16:0],S08_AXI_arid[15:0],S08_AXI_aruser[17:0],S08_AXI_awid[15:0],S08_AXI_awuser[17:0],S08_AXI_bid[15:0],S08_AXI_buser[15:0],S08_AXI_rid[15:0],S08_AXI_ruser[16:0],S08_AXI_wid[15:0],S08_AXI_wuser[16:0]" */;
  input [63:0]S00_AXI_awaddr;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awsize;
  input [1:0]S00_AXI_awburst;
  input [0:0]S00_AXI_awlock;
  input [3:0]S00_AXI_awcache;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awregion;
  input [3:0]S00_AXI_awqos;
  input [0:0]S00_AXI_awvalid;
  output [0:0]S00_AXI_awready;
  input [127:0]S00_AXI_wdata;
  input [15:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wlast;
  input [0:0]S00_AXI_wvalid;
  output [0:0]S00_AXI_wready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  input [0:0]S00_AXI_bready;
  input [63:0]S00_AXI_araddr;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arsize;
  input [1:0]S00_AXI_arburst;
  input [0:0]S00_AXI_arlock;
  input [3:0]S00_AXI_arcache;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arregion;
  input [3:0]S00_AXI_arqos;
  input [0:0]S00_AXI_arvalid;
  output [0:0]S00_AXI_arready;
  output [127:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rlast;
  output [0:0]S00_AXI_rvalid;
  input [0:0]S00_AXI_rready;
  input [63:0]S01_AXI_awaddr;
  input [7:0]S01_AXI_awlen;
  input [2:0]S01_AXI_awsize;
  input [1:0]S01_AXI_awburst;
  input [0:0]S01_AXI_awlock;
  input [3:0]S01_AXI_awcache;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awregion;
  input [3:0]S01_AXI_awqos;
  input [0:0]S01_AXI_awvalid;
  output [0:0]S01_AXI_awready;
  input [127:0]S01_AXI_wdata;
  input [15:0]S01_AXI_wstrb;
  input [0:0]S01_AXI_wlast;
  input [0:0]S01_AXI_wvalid;
  output [0:0]S01_AXI_wready;
  output [1:0]S01_AXI_bresp;
  output [0:0]S01_AXI_bvalid;
  input [0:0]S01_AXI_bready;
  input [63:0]S01_AXI_araddr;
  input [7:0]S01_AXI_arlen;
  input [2:0]S01_AXI_arsize;
  input [1:0]S01_AXI_arburst;
  input [0:0]S01_AXI_arlock;
  input [3:0]S01_AXI_arcache;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arregion;
  input [3:0]S01_AXI_arqos;
  input [0:0]S01_AXI_arvalid;
  output [0:0]S01_AXI_arready;
  output [127:0]S01_AXI_rdata;
  output [1:0]S01_AXI_rresp;
  output [0:0]S01_AXI_rlast;
  output [0:0]S01_AXI_rvalid;
  input [0:0]S01_AXI_rready;
  input [63:0]S02_AXI_awaddr;
  input [7:0]S02_AXI_awlen;
  input [2:0]S02_AXI_awsize;
  input [1:0]S02_AXI_awburst;
  input [0:0]S02_AXI_awlock;
  input [3:0]S02_AXI_awcache;
  input [2:0]S02_AXI_awprot;
  input [3:0]S02_AXI_awregion;
  input [3:0]S02_AXI_awqos;
  input [0:0]S02_AXI_awvalid;
  output [0:0]S02_AXI_awready;
  input [127:0]S02_AXI_wdata;
  input [15:0]S02_AXI_wstrb;
  input [0:0]S02_AXI_wlast;
  input [0:0]S02_AXI_wvalid;
  output [0:0]S02_AXI_wready;
  output [1:0]S02_AXI_bresp;
  output [0:0]S02_AXI_bvalid;
  input [0:0]S02_AXI_bready;
  input [63:0]S02_AXI_araddr;
  input [7:0]S02_AXI_arlen;
  input [2:0]S02_AXI_arsize;
  input [1:0]S02_AXI_arburst;
  input [0:0]S02_AXI_arlock;
  input [3:0]S02_AXI_arcache;
  input [2:0]S02_AXI_arprot;
  input [3:0]S02_AXI_arregion;
  input [3:0]S02_AXI_arqos;
  input [0:0]S02_AXI_arvalid;
  output [0:0]S02_AXI_arready;
  output [127:0]S02_AXI_rdata;
  output [1:0]S02_AXI_rresp;
  output [0:0]S02_AXI_rlast;
  output [0:0]S02_AXI_rvalid;
  input [0:0]S02_AXI_rready;
  input [63:0]S03_AXI_awaddr;
  input [7:0]S03_AXI_awlen;
  input [2:0]S03_AXI_awsize;
  input [1:0]S03_AXI_awburst;
  input [0:0]S03_AXI_awlock;
  input [3:0]S03_AXI_awcache;
  input [2:0]S03_AXI_awprot;
  input [3:0]S03_AXI_awregion;
  input [3:0]S03_AXI_awqos;
  input [0:0]S03_AXI_awvalid;
  output [0:0]S03_AXI_awready;
  input [127:0]S03_AXI_wdata;
  input [15:0]S03_AXI_wstrb;
  input [0:0]S03_AXI_wlast;
  input [0:0]S03_AXI_wvalid;
  output [0:0]S03_AXI_wready;
  output [1:0]S03_AXI_bresp;
  output [0:0]S03_AXI_bvalid;
  input [0:0]S03_AXI_bready;
  input [63:0]S03_AXI_araddr;
  input [7:0]S03_AXI_arlen;
  input [2:0]S03_AXI_arsize;
  input [1:0]S03_AXI_arburst;
  input [0:0]S03_AXI_arlock;
  input [3:0]S03_AXI_arcache;
  input [2:0]S03_AXI_arprot;
  input [3:0]S03_AXI_arregion;
  input [3:0]S03_AXI_arqos;
  input [0:0]S03_AXI_arvalid;
  output [0:0]S03_AXI_arready;
  output [127:0]S03_AXI_rdata;
  output [1:0]S03_AXI_rresp;
  output [0:0]S03_AXI_rlast;
  output [0:0]S03_AXI_rvalid;
  input [0:0]S03_AXI_rready;
  input [63:0]S04_AXI_awaddr;
  input [7:0]S04_AXI_awlen;
  input [2:0]S04_AXI_awsize;
  input [1:0]S04_AXI_awburst;
  input [0:0]S04_AXI_awlock;
  input [3:0]S04_AXI_awcache;
  input [2:0]S04_AXI_awprot;
  input [3:0]S04_AXI_awregion;
  input [3:0]S04_AXI_awqos;
  input [0:0]S04_AXI_awvalid;
  output [0:0]S04_AXI_awready;
  input [127:0]S04_AXI_wdata;
  input [15:0]S04_AXI_wstrb;
  input [0:0]S04_AXI_wlast;
  input [0:0]S04_AXI_wvalid;
  output [0:0]S04_AXI_wready;
  output [1:0]S04_AXI_bresp;
  output [0:0]S04_AXI_bvalid;
  input [0:0]S04_AXI_bready;
  input [63:0]S04_AXI_araddr;
  input [7:0]S04_AXI_arlen;
  input [2:0]S04_AXI_arsize;
  input [1:0]S04_AXI_arburst;
  input [0:0]S04_AXI_arlock;
  input [3:0]S04_AXI_arcache;
  input [2:0]S04_AXI_arprot;
  input [3:0]S04_AXI_arregion;
  input [3:0]S04_AXI_arqos;
  input [0:0]S04_AXI_arvalid;
  output [0:0]S04_AXI_arready;
  output [127:0]S04_AXI_rdata;
  output [1:0]S04_AXI_rresp;
  output [0:0]S04_AXI_rlast;
  output [0:0]S04_AXI_rvalid;
  input [0:0]S04_AXI_rready;
  input [63:0]S05_AXI_awaddr;
  input [7:0]S05_AXI_awlen;
  input [2:0]S05_AXI_awsize;
  input [1:0]S05_AXI_awburst;
  input [0:0]S05_AXI_awlock;
  input [3:0]S05_AXI_awcache;
  input [2:0]S05_AXI_awprot;
  input [3:0]S05_AXI_awregion;
  input [3:0]S05_AXI_awqos;
  input [0:0]S05_AXI_awvalid;
  output [0:0]S05_AXI_awready;
  input [127:0]S05_AXI_wdata;
  input [15:0]S05_AXI_wstrb;
  input [0:0]S05_AXI_wlast;
  input [0:0]S05_AXI_wvalid;
  output [0:0]S05_AXI_wready;
  output [1:0]S05_AXI_bresp;
  output [0:0]S05_AXI_bvalid;
  input [0:0]S05_AXI_bready;
  input [63:0]S05_AXI_araddr;
  input [7:0]S05_AXI_arlen;
  input [2:0]S05_AXI_arsize;
  input [1:0]S05_AXI_arburst;
  input [0:0]S05_AXI_arlock;
  input [3:0]S05_AXI_arcache;
  input [2:0]S05_AXI_arprot;
  input [3:0]S05_AXI_arregion;
  input [3:0]S05_AXI_arqos;
  input [0:0]S05_AXI_arvalid;
  output [0:0]S05_AXI_arready;
  output [127:0]S05_AXI_rdata;
  output [1:0]S05_AXI_rresp;
  output [0:0]S05_AXI_rlast;
  output [0:0]S05_AXI_rvalid;
  input [0:0]S05_AXI_rready;
  input [63:0]S06_AXI_awaddr;
  input [7:0]S06_AXI_awlen;
  input [2:0]S06_AXI_awsize;
  input [1:0]S06_AXI_awburst;
  input [0:0]S06_AXI_awlock;
  input [3:0]S06_AXI_awcache;
  input [2:0]S06_AXI_awprot;
  input [3:0]S06_AXI_awregion;
  input [3:0]S06_AXI_awqos;
  input [0:0]S06_AXI_awvalid;
  output [0:0]S06_AXI_awready;
  input [127:0]S06_AXI_wdata;
  input [15:0]S06_AXI_wstrb;
  input [0:0]S06_AXI_wlast;
  input [0:0]S06_AXI_wvalid;
  output [0:0]S06_AXI_wready;
  output [1:0]S06_AXI_bresp;
  output [0:0]S06_AXI_bvalid;
  input [0:0]S06_AXI_bready;
  input [63:0]S06_AXI_araddr;
  input [7:0]S06_AXI_arlen;
  input [2:0]S06_AXI_arsize;
  input [1:0]S06_AXI_arburst;
  input [0:0]S06_AXI_arlock;
  input [3:0]S06_AXI_arcache;
  input [2:0]S06_AXI_arprot;
  input [3:0]S06_AXI_arregion;
  input [3:0]S06_AXI_arqos;
  input [0:0]S06_AXI_arvalid;
  output [0:0]S06_AXI_arready;
  output [127:0]S06_AXI_rdata;
  output [1:0]S06_AXI_rresp;
  output [0:0]S06_AXI_rlast;
  output [0:0]S06_AXI_rvalid;
  input [0:0]S06_AXI_rready;
  input [63:0]S07_AXI_awaddr;
  input [7:0]S07_AXI_awlen;
  input [2:0]S07_AXI_awsize;
  input [1:0]S07_AXI_awburst;
  input [0:0]S07_AXI_awlock;
  input [3:0]S07_AXI_awcache;
  input [2:0]S07_AXI_awprot;
  input [3:0]S07_AXI_awregion;
  input [3:0]S07_AXI_awqos;
  input [0:0]S07_AXI_awvalid;
  output [0:0]S07_AXI_awready;
  input [127:0]S07_AXI_wdata;
  input [15:0]S07_AXI_wstrb;
  input [0:0]S07_AXI_wlast;
  input [0:0]S07_AXI_wvalid;
  output [0:0]S07_AXI_wready;
  output [1:0]S07_AXI_bresp;
  output [0:0]S07_AXI_bvalid;
  input [0:0]S07_AXI_bready;
  input [63:0]S07_AXI_araddr;
  input [7:0]S07_AXI_arlen;
  input [2:0]S07_AXI_arsize;
  input [1:0]S07_AXI_arburst;
  input [0:0]S07_AXI_arlock;
  input [3:0]S07_AXI_arcache;
  input [2:0]S07_AXI_arprot;
  input [3:0]S07_AXI_arregion;
  input [3:0]S07_AXI_arqos;
  input [0:0]S07_AXI_arvalid;
  output [0:0]S07_AXI_arready;
  output [127:0]S07_AXI_rdata;
  output [1:0]S07_AXI_rresp;
  output [0:0]S07_AXI_rlast;
  output [0:0]S07_AXI_rvalid;
  input [0:0]S07_AXI_rready;
  input [63:0]S08_AXI_awaddr;
  input [7:0]S08_AXI_awlen;
  input [2:0]S08_AXI_awsize;
  input [1:0]S08_AXI_awburst;
  input [0:0]S08_AXI_awlock;
  input [3:0]S08_AXI_awcache;
  input [2:0]S08_AXI_awprot;
  input [3:0]S08_AXI_awregion;
  input [3:0]S08_AXI_awqos;
  input [0:0]S08_AXI_awvalid;
  output [0:0]S08_AXI_awready;
  input [127:0]S08_AXI_wdata;
  input [15:0]S08_AXI_wstrb;
  input [0:0]S08_AXI_wlast;
  input [0:0]S08_AXI_wvalid;
  output [0:0]S08_AXI_wready;
  output [1:0]S08_AXI_bresp;
  output [0:0]S08_AXI_bvalid;
  input [0:0]S08_AXI_bready;
  input [63:0]S08_AXI_araddr;
  input [7:0]S08_AXI_arlen;
  input [2:0]S08_AXI_arsize;
  input [1:0]S08_AXI_arburst;
  input [0:0]S08_AXI_arlock;
  input [3:0]S08_AXI_arcache;
  input [2:0]S08_AXI_arprot;
  input [3:0]S08_AXI_arregion;
  input [3:0]S08_AXI_arqos;
  input [0:0]S08_AXI_arvalid;
  output [0:0]S08_AXI_arready;
  output [127:0]S08_AXI_rdata;
  output [1:0]S08_AXI_rresp;
  output [0:0]S08_AXI_rlast;
  output [0:0]S08_AXI_rvalid;
  input [0:0]S08_AXI_rready;
  output [0:0]M00_INI_internoc;
  output [0:0]M01_INI_internoc;
  output [0:0]M02_INI_internoc;
  output [0:0]M03_INI_internoc;
  input aclk0;
  input aclk1;
  input aclk2;
  input aclk3;
  input aclk4;
  input aclk5;
  input aclk6;
  input aclk7;
  input aclk8;
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
  input [15:0]S06_AXI_arid;
  input [17:0]S06_AXI_aruser;
  input [15:0]S06_AXI_awid;
  input [17:0]S06_AXI_awuser;
  output [15:0]S06_AXI_bid;
  output [15:0]S06_AXI_rid;
  output [16:0]S06_AXI_ruser;
  input [15:0]S06_AXI_wid;
  input [16:0]S06_AXI_wuser;
  input [15:0]S00_AXI_arid;
  input [17:0]S00_AXI_aruser;
  input [15:0]S00_AXI_awid;
  input [17:0]S00_AXI_awuser;
  output [15:0]S00_AXI_bid;
  output [15:0]S00_AXI_rid;
  output [16:0]S00_AXI_ruser;
  input [15:0]S00_AXI_wid;
  input [16:0]S00_AXI_wuser;
  input [15:0]S05_AXI_arid;
  input [17:0]S05_AXI_aruser;
  input [15:0]S05_AXI_awid;
  input [17:0]S05_AXI_awuser;
  output [15:0]S05_AXI_bid;
  output [15:0]S05_AXI_rid;
  output [16:0]S05_AXI_ruser;
  input [15:0]S05_AXI_wid;
  input [16:0]S05_AXI_wuser;
  input [15:0]S01_AXI_arid;
  input [17:0]S01_AXI_aruser;
  input [15:0]S01_AXI_awid;
  input [17:0]S01_AXI_awuser;
  output [15:0]S01_AXI_bid;
  output [15:0]S01_AXI_rid;
  output [16:0]S01_AXI_ruser;
  input [15:0]S01_AXI_wid;
  input [16:0]S01_AXI_wuser;
  input [15:0]S02_AXI_arid;
  input [17:0]S02_AXI_aruser;
  input [15:0]S02_AXI_awid;
  input [17:0]S02_AXI_awuser;
  output [15:0]S02_AXI_bid;
  output [15:0]S02_AXI_rid;
  output [16:0]S02_AXI_ruser;
  input [15:0]S02_AXI_wid;
  input [16:0]S02_AXI_wuser;
  input [15:0]S03_AXI_arid;
  input [17:0]S03_AXI_aruser;
  input [15:0]S03_AXI_awid;
  input [17:0]S03_AXI_awuser;
  output [15:0]S03_AXI_bid;
  output [15:0]S03_AXI_rid;
  output [16:0]S03_AXI_ruser;
  input [15:0]S03_AXI_wid;
  input [16:0]S03_AXI_wuser;
  input [15:0]S04_AXI_arid;
  input [17:0]S04_AXI_aruser;
  input [15:0]S04_AXI_awid;
  input [17:0]S04_AXI_awuser;
  output [15:0]S04_AXI_bid;
  output [15:0]S04_AXI_rid;
  output [16:0]S04_AXI_ruser;
  input [15:0]S04_AXI_wid;
  input [16:0]S04_AXI_wuser;
  input [15:0]S07_AXI_arid;
  input [17:0]S07_AXI_aruser;
  input [15:0]S07_AXI_awid;
  input [17:0]S07_AXI_awuser;
  output [15:0]S07_AXI_bid;
  output [15:0]S07_AXI_rid;
  output [16:0]S07_AXI_ruser;
  input [15:0]S07_AXI_wid;
  input [16:0]S07_AXI_wuser;
  input [15:0]S08_AXI_arid;
  input [17:0]S08_AXI_aruser;
  input [15:0]S08_AXI_awid;
  input [17:0]S08_AXI_awuser;
  output [15:0]S08_AXI_bid;
  output [15:0]S08_AXI_buser;
  output [15:0]S08_AXI_rid;
  output [16:0]S08_AXI_ruser;
  input [15:0]S08_AXI_wid;
  input [16:0]S08_AXI_wuser;
endmodule
