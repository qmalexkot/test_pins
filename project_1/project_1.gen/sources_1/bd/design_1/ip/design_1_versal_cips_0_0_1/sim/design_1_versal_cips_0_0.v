// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:versal_cips:2.1
// IP Revision: 3

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
(* DONT_TOUCH = "true" *)
module design_1_versal_cips_0_0 (
  fpd_cci_noc_axi0_clk,
  fpd_cci_noc_axi0_awid,
  fpd_cci_noc_axi0_awaddr,
  fpd_cci_noc_axi0_awlen,
  fpd_cci_noc_axi0_awsize,
  fpd_cci_noc_axi0_awburst,
  fpd_cci_noc_axi0_awlock,
  fpd_cci_noc_axi0_awcache,
  fpd_cci_noc_axi0_awprot,
  fpd_cci_noc_axi0_awvalid,
  fpd_cci_noc_axi0_awuser,
  fpd_cci_noc_axi0_awready,
  fpd_cci_noc_axi0_wdata,
  fpd_cci_noc_axi0_wstrb,
  fpd_cci_noc_axi0_wuser,
  fpd_cci_noc_axi0_wlast,
  fpd_cci_noc_axi0_wvalid,
  fpd_cci_noc_axi0_wready,
  fpd_cci_noc_axi0_bid,
  fpd_cci_noc_axi0_bresp,
  fpd_cci_noc_axi0_bvalid,
  fpd_cci_noc_axi0_bready,
  fpd_cci_noc_axi0_arid,
  fpd_cci_noc_axi0_araddr,
  fpd_cci_noc_axi0_arlen,
  fpd_cci_noc_axi0_arsize,
  fpd_cci_noc_axi0_arburst,
  fpd_cci_noc_axi0_arlock,
  fpd_cci_noc_axi0_arcache,
  fpd_cci_noc_axi0_arprot,
  fpd_cci_noc_axi0_arvalid,
  fpd_cci_noc_axi0_aruser,
  fpd_cci_noc_axi0_arready,
  fpd_cci_noc_axi0_rid,
  fpd_cci_noc_axi0_rdata,
  fpd_cci_noc_axi0_rresp,
  fpd_cci_noc_axi0_rlast,
  fpd_cci_noc_axi0_rvalid,
  fpd_cci_noc_axi0_rready,
  fpd_cci_noc_axi0_awqos,
  fpd_cci_noc_axi0_arqos,
  fpd_cci_noc_axi1_clk,
  fpd_cci_noc_axi1_awid,
  fpd_cci_noc_axi1_awaddr,
  fpd_cci_noc_axi1_awlen,
  fpd_cci_noc_axi1_awsize,
  fpd_cci_noc_axi1_awburst,
  fpd_cci_noc_axi1_awlock,
  fpd_cci_noc_axi1_awcache,
  fpd_cci_noc_axi1_awprot,
  fpd_cci_noc_axi1_awvalid,
  fpd_cci_noc_axi1_awuser,
  fpd_cci_noc_axi1_awready,
  fpd_cci_noc_axi1_wdata,
  fpd_cci_noc_axi1_wstrb,
  fpd_cci_noc_axi1_wuser,
  fpd_cci_noc_axi1_wlast,
  fpd_cci_noc_axi1_wvalid,
  fpd_cci_noc_axi1_wready,
  fpd_cci_noc_axi1_bid,
  fpd_cci_noc_axi1_bresp,
  fpd_cci_noc_axi1_bvalid,
  fpd_cci_noc_axi1_bready,
  fpd_cci_noc_axi1_arid,
  fpd_cci_noc_axi1_araddr,
  fpd_cci_noc_axi1_arlen,
  fpd_cci_noc_axi1_arsize,
  fpd_cci_noc_axi1_arburst,
  fpd_cci_noc_axi1_arlock,
  fpd_cci_noc_axi1_arcache,
  fpd_cci_noc_axi1_arprot,
  fpd_cci_noc_axi1_arvalid,
  fpd_cci_noc_axi1_aruser,
  fpd_cci_noc_axi1_arready,
  fpd_cci_noc_axi1_rid,
  fpd_cci_noc_axi1_rdata,
  fpd_cci_noc_axi1_rresp,
  fpd_cci_noc_axi1_rlast,
  fpd_cci_noc_axi1_rvalid,
  fpd_cci_noc_axi1_rready,
  fpd_cci_noc_axi1_awqos,
  fpd_cci_noc_axi1_arqos,
  fpd_cci_noc_axi2_clk,
  fpd_cci_noc_axi2_awid,
  fpd_cci_noc_axi2_awaddr,
  fpd_cci_noc_axi2_awlen,
  fpd_cci_noc_axi2_awsize,
  fpd_cci_noc_axi2_awburst,
  fpd_cci_noc_axi2_awlock,
  fpd_cci_noc_axi2_awcache,
  fpd_cci_noc_axi2_awprot,
  fpd_cci_noc_axi2_awvalid,
  fpd_cci_noc_axi2_awuser,
  fpd_cci_noc_axi2_awready,
  fpd_cci_noc_axi2_wdata,
  fpd_cci_noc_axi2_wstrb,
  fpd_cci_noc_axi2_wuser,
  fpd_cci_noc_axi2_wlast,
  fpd_cci_noc_axi2_wvalid,
  fpd_cci_noc_axi2_wready,
  fpd_cci_noc_axi2_bid,
  fpd_cci_noc_axi2_bresp,
  fpd_cci_noc_axi2_bvalid,
  fpd_cci_noc_axi2_bready,
  fpd_cci_noc_axi2_arid,
  fpd_cci_noc_axi2_araddr,
  fpd_cci_noc_axi2_arlen,
  fpd_cci_noc_axi2_arsize,
  fpd_cci_noc_axi2_arburst,
  fpd_cci_noc_axi2_arlock,
  fpd_cci_noc_axi2_arcache,
  fpd_cci_noc_axi2_arprot,
  fpd_cci_noc_axi2_arvalid,
  fpd_cci_noc_axi2_aruser,
  fpd_cci_noc_axi2_arready,
  fpd_cci_noc_axi2_rid,
  fpd_cci_noc_axi2_rdata,
  fpd_cci_noc_axi2_rresp,
  fpd_cci_noc_axi2_rlast,
  fpd_cci_noc_axi2_rvalid,
  fpd_cci_noc_axi2_rready,
  fpd_cci_noc_axi2_awqos,
  fpd_cci_noc_axi2_arqos,
  fpd_cci_noc_axi3_clk,
  fpd_cci_noc_axi3_awid,
  fpd_cci_noc_axi3_awaddr,
  fpd_cci_noc_axi3_awlen,
  fpd_cci_noc_axi3_awsize,
  fpd_cci_noc_axi3_awburst,
  fpd_cci_noc_axi3_awlock,
  fpd_cci_noc_axi3_awcache,
  fpd_cci_noc_axi3_awprot,
  fpd_cci_noc_axi3_awvalid,
  fpd_cci_noc_axi3_awuser,
  fpd_cci_noc_axi3_wuser,
  fpd_cci_noc_axi3_awready,
  fpd_cci_noc_axi3_wdata,
  fpd_cci_noc_axi3_wstrb,
  fpd_cci_noc_axi3_wlast,
  fpd_cci_noc_axi3_wvalid,
  fpd_cci_noc_axi3_wready,
  fpd_cci_noc_axi3_bid,
  fpd_cci_noc_axi3_bresp,
  fpd_cci_noc_axi3_bvalid,
  fpd_cci_noc_axi3_bready,
  fpd_cci_noc_axi3_arid,
  fpd_cci_noc_axi3_araddr,
  fpd_cci_noc_axi3_arlen,
  fpd_cci_noc_axi3_arsize,
  fpd_cci_noc_axi3_arburst,
  fpd_cci_noc_axi3_arlock,
  fpd_cci_noc_axi3_arcache,
  fpd_cci_noc_axi3_arprot,
  fpd_cci_noc_axi3_arvalid,
  fpd_cci_noc_axi3_aruser,
  fpd_cci_noc_axi3_arready,
  fpd_cci_noc_axi3_rid,
  fpd_cci_noc_axi3_rdata,
  fpd_cci_noc_axi3_rresp,
  fpd_cci_noc_axi3_rlast,
  fpd_cci_noc_axi3_rvalid,
  fpd_cci_noc_axi3_rready,
  fpd_cci_noc_axi3_awqos,
  fpd_cci_noc_axi3_arqos,
  fpd_axi_noc_axi0_clk,
  fpd_axi_noc_axi0_awid,
  fpd_axi_noc_axi0_awaddr,
  fpd_axi_noc_axi0_awlen,
  fpd_axi_noc_axi0_awsize,
  fpd_axi_noc_axi0_awburst,
  fpd_axi_noc_axi0_awlock,
  fpd_axi_noc_axi0_awcache,
  fpd_axi_noc_axi0_awprot,
  fpd_axi_noc_axi0_awvalid,
  fpd_axi_noc_axi0_awuser,
  fpd_axi_noc_axi0_awready,
  fpd_axi_noc_axi0_wdata,
  fpd_axi_noc_axi0_wstrb,
  fpd_axi_noc_axi0_wlast,
  fpd_axi_noc_axi0_wvalid,
  fpd_axi_noc_axi0_wready,
  fpd_axi_noc_axi0_bid,
  fpd_axi_noc_axi0_bresp,
  fpd_axi_noc_axi0_bvalid,
  fpd_axi_noc_axi0_bready,
  fpd_axi_noc_axi0_arid,
  fpd_axi_noc_axi0_araddr,
  fpd_axi_noc_axi0_arlen,
  fpd_axi_noc_axi0_arsize,
  fpd_axi_noc_axi0_arburst,
  fpd_axi_noc_axi0_arlock,
  fpd_axi_noc_axi0_arcache,
  fpd_axi_noc_axi0_arprot,
  fpd_axi_noc_axi0_arvalid,
  fpd_axi_noc_axi0_aruser,
  fpd_axi_noc_axi0_arready,
  fpd_axi_noc_axi0_rid,
  fpd_axi_noc_axi0_rdata,
  fpd_axi_noc_axi0_rresp,
  fpd_axi_noc_axi0_rlast,
  fpd_axi_noc_axi0_rvalid,
  fpd_axi_noc_axi0_rready,
  fpd_axi_noc_axi0_awqos,
  fpd_axi_noc_axi0_arqos,
  cpm_pcie_noc_axi0_clk,
  cpm_pcie_noc_axi0_awid,
  cpm_pcie_noc_axi0_awaddr,
  cpm_pcie_noc_axi0_awlen,
  cpm_pcie_noc_axi0_awsize,
  cpm_pcie_noc_axi0_awburst,
  cpm_pcie_noc_axi0_awlock,
  cpm_pcie_noc_axi0_awcache,
  cpm_pcie_noc_axi0_awprot,
  cpm_pcie_noc_axi0_awvalid,
  cpm_pcie_noc_axi0_awuser,
  cpm_pcie_noc_axi0_awready,
  cpm_pcie_noc_axi0_wdata,
  cpm_pcie_noc_axi0_wstrb,
  cpm_pcie_noc_axi0_wlast,
  cpm_pcie_noc_axi0_wvalid,
  cpm_pcie_noc_axi0_wready,
  cpm_pcie_noc_axi0_bid,
  cpm_pcie_noc_axi0_bresp,
  cpm_pcie_noc_axi0_bvalid,
  cpm_pcie_noc_axi0_bready,
  cpm_pcie_noc_axi0_arid,
  cpm_pcie_noc_axi0_araddr,
  cpm_pcie_noc_axi0_arlen,
  cpm_pcie_noc_axi0_arsize,
  cpm_pcie_noc_axi0_arburst,
  cpm_pcie_noc_axi0_arlock,
  cpm_pcie_noc_axi0_arcache,
  cpm_pcie_noc_axi0_arprot,
  cpm_pcie_noc_axi0_arvalid,
  cpm_pcie_noc_axi0_aruser,
  cpm_pcie_noc_axi0_arready,
  cpm_pcie_noc_axi0_rid,
  cpm_pcie_noc_axi0_rdata,
  cpm_pcie_noc_axi0_rresp,
  cpm_pcie_noc_axi0_rlast,
  cpm_pcie_noc_axi0_rvalid,
  cpm_pcie_noc_axi0_rready,
  cpm_pcie_noc_axi0_awqos,
  cpm_pcie_noc_axi0_arqos,
  cpm_pcie_noc_axi1_clk,
  cpm_pcie_noc_axi1_awid,
  cpm_pcie_noc_axi1_awaddr,
  cpm_pcie_noc_axi1_awlen,
  cpm_pcie_noc_axi1_awsize,
  cpm_pcie_noc_axi1_awburst,
  cpm_pcie_noc_axi1_awlock,
  cpm_pcie_noc_axi1_awcache,
  cpm_pcie_noc_axi1_awprot,
  cpm_pcie_noc_axi1_awvalid,
  cpm_pcie_noc_axi1_awuser,
  cpm_pcie_noc_axi1_awready,
  cpm_pcie_noc_axi1_wdata,
  cpm_pcie_noc_axi1_wstrb,
  cpm_pcie_noc_axi1_wlast,
  cpm_pcie_noc_axi1_wvalid,
  cpm_pcie_noc_axi1_wready,
  cpm_pcie_noc_axi1_bid,
  cpm_pcie_noc_axi1_bresp,
  cpm_pcie_noc_axi1_bvalid,
  cpm_pcie_noc_axi1_bready,
  cpm_pcie_noc_axi1_arid,
  cpm_pcie_noc_axi1_araddr,
  cpm_pcie_noc_axi1_arlen,
  cpm_pcie_noc_axi1_arsize,
  cpm_pcie_noc_axi1_arburst,
  cpm_pcie_noc_axi1_arlock,
  cpm_pcie_noc_axi1_arcache,
  cpm_pcie_noc_axi1_arprot,
  cpm_pcie_noc_axi1_arvalid,
  cpm_pcie_noc_axi1_aruser,
  cpm_pcie_noc_axi1_arready,
  cpm_pcie_noc_axi1_rid,
  cpm_pcie_noc_axi1_rdata,
  cpm_pcie_noc_axi1_rresp,
  cpm_pcie_noc_axi1_rlast,
  cpm_pcie_noc_axi1_rvalid,
  cpm_pcie_noc_axi1_rready,
  cpm_pcie_noc_axi1_awqos,
  cpm_pcie_noc_axi1_arqos,
  lpd_axi_noc_clk,
  noc_lpd_axi_axi0_awid,
  noc_lpd_axi_axi0_awaddr,
  noc_lpd_axi_axi0_awlen,
  noc_lpd_axi_axi0_awsize,
  noc_lpd_axi_axi0_awburst,
  noc_lpd_axi_axi0_awlock,
  noc_lpd_axi_axi0_awcache,
  noc_lpd_axi_axi0_awprot,
  noc_lpd_axi_axi0_awvalid,
  noc_lpd_axi_axi0_awuser,
  noc_lpd_axi_axi0_awready,
  noc_lpd_axi_axi0_wdata,
  noc_lpd_axi_axi0_wstrb,
  noc_lpd_axi_axi0_wlast,
  noc_lpd_axi_axi0_wvalid,
  noc_lpd_axi_axi0_wready,
  noc_lpd_axi_axi0_bid,
  noc_lpd_axi_axi0_bresp,
  noc_lpd_axi_axi0_bvalid,
  noc_lpd_axi_axi0_bready,
  noc_lpd_axi_axi0_arid,
  noc_lpd_axi_axi0_araddr,
  noc_lpd_axi_axi0_arlen,
  noc_lpd_axi_axi0_arsize,
  noc_lpd_axi_axi0_arburst,
  noc_lpd_axi_axi0_arlock,
  noc_lpd_axi_axi0_arcache,
  noc_lpd_axi_axi0_arprot,
  noc_lpd_axi_axi0_arvalid,
  noc_lpd_axi_axi0_aruser,
  noc_lpd_axi_axi0_arready,
  noc_lpd_axi_axi0_rid,
  noc_lpd_axi_axi0_rdata,
  noc_lpd_axi_axi0_rresp,
  noc_lpd_axi_axi0_rlast,
  noc_lpd_axi_axi0_rvalid,
  noc_lpd_axi_axi0_rready,
  noc_lpd_axi_axi0_awqos,
  noc_lpd_axi_axi0_arqos,
  pmc_noc_axi0_araddr,
  pmc_noc_axi0_arburst,
  pmc_noc_axi0_arcache,
  pmc_noc_axi0_arid,
  pmc_noc_axi0_arlen,
  pmc_noc_axi0_arlock,
  pmc_noc_axi0_arprot,
  pmc_noc_axi0_arqos,
  pmc_noc_axi0_arregion,
  pmc_noc_axi0_arsize,
  pmc_noc_axi0_aruser,
  pmc_noc_axi0_arvalid,
  pmc_noc_axi0_awaddr,
  pmc_noc_axi0_awburst,
  pmc_noc_axi0_awcache,
  pmc_noc_axi0_awid,
  pmc_noc_axi0_awlen,
  pmc_noc_axi0_awlock,
  pmc_noc_axi0_awprot,
  pmc_noc_axi0_awqos,
  pmc_noc_axi0_awregion,
  pmc_noc_axi0_awsize,
  pmc_noc_axi0_awuser,
  pmc_noc_axi0_awvalid,
  pmc_noc_axi0_bready,
  pmc_noc_axi0_rready,
  pmc_noc_axi0_wdata,
  pmc_noc_axi0_wid,
  pmc_noc_axi0_wlast,
  pmc_noc_axi0_wstrb,
  pmc_noc_axi0_wuser,
  pmc_noc_axi0_wvalid,
  pmc_axi_noc_axi0_clk,
  pmc_noc_axi0_arready,
  pmc_noc_axi0_awready,
  pmc_noc_axi0_bid,
  pmc_noc_axi0_bresp,
  pmc_noc_axi0_buser,
  pmc_noc_axi0_bvalid,
  pmc_noc_axi0_rdata,
  pmc_noc_axi0_rid,
  pmc_noc_axi0_rlast,
  pmc_noc_axi0_rresp,
  pmc_noc_axi0_ruser,
  pmc_noc_axi0_rvalid,
  pmc_noc_axi0_wready,
  gem0_tsu_timer_cnt,
  pcie0_user_clk,
  pcie1_user_clk,
  dma0_axi_aresetn,
  dma0_soft_resetn,
  pcie1_user_reset,
  cpm_cor_irq,
  cpm_irq0,
  cpm_irq1,
  cpm_misc_irq,
  cpm_uncor_irq,
  dma0_irq,
  pcie0_user_lnk_up,
  pcie1_user_lnk_up,
  pcie1_s_axis_rq_tdata,
  pcie1_s_axis_rq_tkeep,
  pcie1_s_axis_rq_tlast,
  pcie1_s_axis_rq_tuser,
  pcie1_s_axis_rq_tvalid,
  pcie1_s_axis_rq_tready,
  pcie1_s_axis_cc_tdata,
  pcie1_s_axis_cc_tkeep,
  pcie1_s_axis_cc_tlast,
  pcie1_s_axis_cc_tuser,
  pcie1_s_axis_cc_tvalid,
  pcie1_s_axis_cc_tready,
  pcie1_m_axis_rc_tdata,
  pcie1_m_axis_rc_tkeep,
  pcie1_m_axis_rc_tlast,
  pcie1_m_axis_rc_tuser,
  pcie1_m_axis_rc_tvalid,
  pcie1_m_axis_rc_tready,
  pcie1_m_axis_cq_tdata,
  pcie1_m_axis_cq_tkeep,
  pcie1_m_axis_cq_tlast,
  pcie1_m_axis_cq_tuser,
  pcie1_m_axis_cq_tvalid,
  pcie1_m_axis_cq_tready,
  pcie1_cfg_interrupt_int,
  pcie1_cfg_interrupt_sent,
  pcie1_cfg_interrupt_pending,
  xdma0_usr_irq_req,
  xdma0_usr_irq_ack,
  pcie1_cfg_msi_enable,
  pcie1_cfg_msi_mmenable,
  pcie1_cfg_msi_data,
  pcie1_cfg_msi_attr,
  pcie1_cfg_msi_function_number,
  pcie1_cfg_msi_int_vector,
  pcie1_cfg_msi_pending_status,
  pcie1_cfg_msi_pending_status_data_enable,
  pcie1_cfg_msi_pending_status_function_number,
  pcie1_cfg_msi_select,
  pcie1_cfg_msi_tph_present,
  pcie1_cfg_msi_tph_st_tag,
  pcie1_cfg_msi_tph_type,
  pcie0_gt_rxn,
  pcie0_gt_rxp,
  pcie0_gt_txn,
  pcie0_gt_txp,
  pcie1_gt_rxn,
  pcie1_gt_rxp,
  pcie1_gt_txn,
  pcie1_gt_txp,
  gt_refclk0_n,
  gt_refclk0_p,
  gt_refclk1_n,
  gt_refclk1_p,
  dma0_st_rx_msg_rdy,
  dma0_st_rx_msg_data,
  dma0_st_rx_msg_valid,
  dma0_st_rx_msg_last
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fpd_cci_noc_axi0_clk, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU, ASSOCIATED_BUSIF FPD_CCI_NOC_0, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_fpd_cci_noc_axi0_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fpd_cci_noc_axi0_clk CLK" *)
output wire fpd_cci_noc_axi0_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWID" *)
output wire [15 : 0] fpd_cci_noc_axi0_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWADDR" *)
output wire [63 : 0] fpd_cci_noc_axi0_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWLEN" *)
output wire [7 : 0] fpd_cci_noc_axi0_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWSIZE" *)
output wire [2 : 0] fpd_cci_noc_axi0_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWBURST" *)
output wire [1 : 0] fpd_cci_noc_axi0_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWLOCK" *)
output wire fpd_cci_noc_axi0_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWCACHE" *)
output wire [3 : 0] fpd_cci_noc_axi0_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWPROT" *)
output wire [2 : 0] fpd_cci_noc_axi0_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWVALID" *)
output wire fpd_cci_noc_axi0_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWUSER" *)
output wire [17 : 0] fpd_cci_noc_axi0_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWREADY" *)
input wire fpd_cci_noc_axi0_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 WDATA" *)
output wire [127 : 0] fpd_cci_noc_axi0_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 WSTRB" *)
output wire [15 : 0] fpd_cci_noc_axi0_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 WUSER" *)
output wire [16 : 0] fpd_cci_noc_axi0_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 WLAST" *)
output wire fpd_cci_noc_axi0_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 WVALID" *)
output wire fpd_cci_noc_axi0_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 WREADY" *)
input wire fpd_cci_noc_axi0_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 BID" *)
input wire [15 : 0] fpd_cci_noc_axi0_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 BRESP" *)
input wire [1 : 0] fpd_cci_noc_axi0_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 BVALID" *)
input wire fpd_cci_noc_axi0_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 BREADY" *)
output wire fpd_cci_noc_axi0_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARID" *)
output wire [15 : 0] fpd_cci_noc_axi0_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARADDR" *)
output wire [63 : 0] fpd_cci_noc_axi0_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARLEN" *)
output wire [7 : 0] fpd_cci_noc_axi0_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARSIZE" *)
output wire [2 : 0] fpd_cci_noc_axi0_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARBURST" *)
output wire [1 : 0] fpd_cci_noc_axi0_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARLOCK" *)
output wire fpd_cci_noc_axi0_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARCACHE" *)
output wire [3 : 0] fpd_cci_noc_axi0_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARPROT" *)
output wire [2 : 0] fpd_cci_noc_axi0_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARVALID" *)
output wire fpd_cci_noc_axi0_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARUSER" *)
output wire [17 : 0] fpd_cci_noc_axi0_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARREADY" *)
input wire fpd_cci_noc_axi0_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 RID" *)
input wire [15 : 0] fpd_cci_noc_axi0_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 RDATA" *)
input wire [127 : 0] fpd_cci_noc_axi0_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 RRESP" *)
input wire [1 : 0] fpd_cci_noc_axi0_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 RLAST" *)
input wire fpd_cci_noc_axi0_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 RVALID" *)
input wire fpd_cci_noc_axi0_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 RREADY" *)
output wire fpd_cci_noc_axi0_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWQOS" *)
output wire [3 : 0] fpd_cci_noc_axi0_awqos;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FPD_CCI_NOC_0, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU, INDEX 0, CATEGORY noc, MY_CATEGORY ps_cci, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 824991760, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 17, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 64, MAX_BURST_LE\
NGTH 256, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_fpd_cci_noc_axi0_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARQOS" *)
output wire [3 : 0] fpd_cci_noc_axi0_arqos;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fpd_cci_noc_axi1_clk, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU, ASSOCIATED_BUSIF FPD_CCI_NOC_1, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_fpd_cci_noc_axi1_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fpd_cci_noc_axi1_clk CLK" *)
output wire fpd_cci_noc_axi1_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWID" *)
output wire [15 : 0] fpd_cci_noc_axi1_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWADDR" *)
output wire [63 : 0] fpd_cci_noc_axi1_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWLEN" *)
output wire [7 : 0] fpd_cci_noc_axi1_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWSIZE" *)
output wire [2 : 0] fpd_cci_noc_axi1_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWBURST" *)
output wire [1 : 0] fpd_cci_noc_axi1_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWLOCK" *)
output wire fpd_cci_noc_axi1_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWCACHE" *)
output wire [3 : 0] fpd_cci_noc_axi1_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWPROT" *)
output wire [2 : 0] fpd_cci_noc_axi1_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWVALID" *)
output wire fpd_cci_noc_axi1_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWUSER" *)
output wire [17 : 0] fpd_cci_noc_axi1_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWREADY" *)
input wire fpd_cci_noc_axi1_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 WDATA" *)
output wire [127 : 0] fpd_cci_noc_axi1_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 WSTRB" *)
output wire [15 : 0] fpd_cci_noc_axi1_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 WUSER" *)
output wire [16 : 0] fpd_cci_noc_axi1_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 WLAST" *)
output wire fpd_cci_noc_axi1_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 WVALID" *)
output wire fpd_cci_noc_axi1_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 WREADY" *)
input wire fpd_cci_noc_axi1_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 BID" *)
input wire [15 : 0] fpd_cci_noc_axi1_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 BRESP" *)
input wire [1 : 0] fpd_cci_noc_axi1_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 BVALID" *)
input wire fpd_cci_noc_axi1_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 BREADY" *)
output wire fpd_cci_noc_axi1_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARID" *)
output wire [15 : 0] fpd_cci_noc_axi1_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARADDR" *)
output wire [63 : 0] fpd_cci_noc_axi1_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARLEN" *)
output wire [7 : 0] fpd_cci_noc_axi1_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARSIZE" *)
output wire [2 : 0] fpd_cci_noc_axi1_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARBURST" *)
output wire [1 : 0] fpd_cci_noc_axi1_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARLOCK" *)
output wire fpd_cci_noc_axi1_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARCACHE" *)
output wire [3 : 0] fpd_cci_noc_axi1_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARPROT" *)
output wire [2 : 0] fpd_cci_noc_axi1_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARVALID" *)
output wire fpd_cci_noc_axi1_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARUSER" *)
output wire [17 : 0] fpd_cci_noc_axi1_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARREADY" *)
input wire fpd_cci_noc_axi1_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 RID" *)
input wire [15 : 0] fpd_cci_noc_axi1_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 RDATA" *)
input wire [127 : 0] fpd_cci_noc_axi1_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 RRESP" *)
input wire [1 : 0] fpd_cci_noc_axi1_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 RLAST" *)
input wire fpd_cci_noc_axi1_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 RVALID" *)
input wire fpd_cci_noc_axi1_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 RREADY" *)
output wire fpd_cci_noc_axi1_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWQOS" *)
output wire [3 : 0] fpd_cci_noc_axi1_awqos;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FPD_CCI_NOC_1, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU, INDEX 1, CATEGORY noc, MY_CATEGORY ps_cci, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 824991760, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 17, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 64, MAX_BURST_LE\
NGTH 256, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_fpd_cci_noc_axi1_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARQOS" *)
output wire [3 : 0] fpd_cci_noc_axi1_arqos;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fpd_cci_noc_axi2_clk, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU, ASSOCIATED_BUSIF FPD_CCI_NOC_2, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_fpd_cci_noc_axi2_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fpd_cci_noc_axi2_clk CLK" *)
output wire fpd_cci_noc_axi2_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWID" *)
output wire [15 : 0] fpd_cci_noc_axi2_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWADDR" *)
output wire [63 : 0] fpd_cci_noc_axi2_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWLEN" *)
output wire [7 : 0] fpd_cci_noc_axi2_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWSIZE" *)
output wire [2 : 0] fpd_cci_noc_axi2_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWBURST" *)
output wire [1 : 0] fpd_cci_noc_axi2_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWLOCK" *)
output wire fpd_cci_noc_axi2_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWCACHE" *)
output wire [3 : 0] fpd_cci_noc_axi2_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWPROT" *)
output wire [2 : 0] fpd_cci_noc_axi2_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWVALID" *)
output wire fpd_cci_noc_axi2_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWUSER" *)
output wire [17 : 0] fpd_cci_noc_axi2_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWREADY" *)
input wire fpd_cci_noc_axi2_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 WDATA" *)
output wire [127 : 0] fpd_cci_noc_axi2_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 WSTRB" *)
output wire [15 : 0] fpd_cci_noc_axi2_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 WUSER" *)
output wire [16 : 0] fpd_cci_noc_axi2_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 WLAST" *)
output wire fpd_cci_noc_axi2_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 WVALID" *)
output wire fpd_cci_noc_axi2_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 WREADY" *)
input wire fpd_cci_noc_axi2_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 BID" *)
input wire [15 : 0] fpd_cci_noc_axi2_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 BRESP" *)
input wire [1 : 0] fpd_cci_noc_axi2_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 BVALID" *)
input wire fpd_cci_noc_axi2_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 BREADY" *)
output wire fpd_cci_noc_axi2_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARID" *)
output wire [15 : 0] fpd_cci_noc_axi2_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARADDR" *)
output wire [63 : 0] fpd_cci_noc_axi2_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARLEN" *)
output wire [7 : 0] fpd_cci_noc_axi2_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARSIZE" *)
output wire [2 : 0] fpd_cci_noc_axi2_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARBURST" *)
output wire [1 : 0] fpd_cci_noc_axi2_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARLOCK" *)
output wire fpd_cci_noc_axi2_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARCACHE" *)
output wire [3 : 0] fpd_cci_noc_axi2_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARPROT" *)
output wire [2 : 0] fpd_cci_noc_axi2_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARVALID" *)
output wire fpd_cci_noc_axi2_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARUSER" *)
output wire [17 : 0] fpd_cci_noc_axi2_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARREADY" *)
input wire fpd_cci_noc_axi2_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 RID" *)
input wire [15 : 0] fpd_cci_noc_axi2_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 RDATA" *)
input wire [127 : 0] fpd_cci_noc_axi2_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 RRESP" *)
input wire [1 : 0] fpd_cci_noc_axi2_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 RLAST" *)
input wire fpd_cci_noc_axi2_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 RVALID" *)
input wire fpd_cci_noc_axi2_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 RREADY" *)
output wire fpd_cci_noc_axi2_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWQOS" *)
output wire [3 : 0] fpd_cci_noc_axi2_awqos;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FPD_CCI_NOC_2, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU, INDEX 2, CATEGORY noc, MY_CATEGORY ps_cci, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 824991760, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 17, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 64, MAX_BURST_LE\
NGTH 256, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_fpd_cci_noc_axi2_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARQOS" *)
output wire [3 : 0] fpd_cci_noc_axi2_arqos;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fpd_cci_noc_axi3_clk, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU, ASSOCIATED_BUSIF FPD_CCI_NOC_3, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_fpd_cci_noc_axi3_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fpd_cci_noc_axi3_clk CLK" *)
output wire fpd_cci_noc_axi3_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWID" *)
output wire [15 : 0] fpd_cci_noc_axi3_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWADDR" *)
output wire [63 : 0] fpd_cci_noc_axi3_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWLEN" *)
output wire [7 : 0] fpd_cci_noc_axi3_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWSIZE" *)
output wire [2 : 0] fpd_cci_noc_axi3_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWBURST" *)
output wire [1 : 0] fpd_cci_noc_axi3_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWLOCK" *)
output wire fpd_cci_noc_axi3_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWCACHE" *)
output wire [3 : 0] fpd_cci_noc_axi3_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWPROT" *)
output wire [2 : 0] fpd_cci_noc_axi3_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWVALID" *)
output wire fpd_cci_noc_axi3_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWUSER" *)
output wire [17 : 0] fpd_cci_noc_axi3_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 WUSER" *)
output wire [16 : 0] fpd_cci_noc_axi3_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWREADY" *)
input wire fpd_cci_noc_axi3_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 WDATA" *)
output wire [127 : 0] fpd_cci_noc_axi3_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 WSTRB" *)
output wire [15 : 0] fpd_cci_noc_axi3_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 WLAST" *)
output wire fpd_cci_noc_axi3_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 WVALID" *)
output wire fpd_cci_noc_axi3_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 WREADY" *)
input wire fpd_cci_noc_axi3_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 BID" *)
input wire [15 : 0] fpd_cci_noc_axi3_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 BRESP" *)
input wire [1 : 0] fpd_cci_noc_axi3_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 BVALID" *)
input wire fpd_cci_noc_axi3_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 BREADY" *)
output wire fpd_cci_noc_axi3_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARID" *)
output wire [15 : 0] fpd_cci_noc_axi3_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARADDR" *)
output wire [63 : 0] fpd_cci_noc_axi3_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARLEN" *)
output wire [7 : 0] fpd_cci_noc_axi3_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARSIZE" *)
output wire [2 : 0] fpd_cci_noc_axi3_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARBURST" *)
output wire [1 : 0] fpd_cci_noc_axi3_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARLOCK" *)
output wire fpd_cci_noc_axi3_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARCACHE" *)
output wire [3 : 0] fpd_cci_noc_axi3_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARPROT" *)
output wire [2 : 0] fpd_cci_noc_axi3_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARVALID" *)
output wire fpd_cci_noc_axi3_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARUSER" *)
output wire [17 : 0] fpd_cci_noc_axi3_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARREADY" *)
input wire fpd_cci_noc_axi3_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 RID" *)
input wire [15 : 0] fpd_cci_noc_axi3_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 RDATA" *)
input wire [127 : 0] fpd_cci_noc_axi3_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 RRESP" *)
input wire [1 : 0] fpd_cci_noc_axi3_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 RLAST" *)
input wire fpd_cci_noc_axi3_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 RVALID" *)
input wire fpd_cci_noc_axi3_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 RREADY" *)
output wire fpd_cci_noc_axi3_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWQOS" *)
output wire [3 : 0] fpd_cci_noc_axi3_awqos;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FPD_CCI_NOC_3, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU, INDEX 3, CATEGORY noc, MY_CATEGORY ps_cci, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 824991760, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 17, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 64, MAX_BURST_LE\
NGTH 256, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_fpd_cci_noc_axi3_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARQOS" *)
output wire [3 : 0] fpd_cci_noc_axi3_arqos;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fpd_axi_noc_axi0_clk, PHYSICAL_CHANNEL PS_NCI_TO_NOC_NMU, ASSOCIATED_BUSIF FPD_AXI_NOC_0, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_fpd_axi_noc_axi0_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fpd_axi_noc_axi0_clk CLK" *)
output wire fpd_axi_noc_axi0_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWID" *)
output wire [15 : 0] fpd_axi_noc_axi0_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWADDR" *)
output wire [63 : 0] fpd_axi_noc_axi0_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWLEN" *)
output wire [7 : 0] fpd_axi_noc_axi0_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWSIZE" *)
output wire [2 : 0] fpd_axi_noc_axi0_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWBURST" *)
output wire [1 : 0] fpd_axi_noc_axi0_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWLOCK" *)
output wire fpd_axi_noc_axi0_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWCACHE" *)
output wire [3 : 0] fpd_axi_noc_axi0_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWPROT" *)
output wire [2 : 0] fpd_axi_noc_axi0_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWVALID" *)
output wire fpd_axi_noc_axi0_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWUSER" *)
output wire [17 : 0] fpd_axi_noc_axi0_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWREADY" *)
input wire fpd_axi_noc_axi0_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 WDATA" *)
output wire [127 : 0] fpd_axi_noc_axi0_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 WSTRB" *)
output wire [15 : 0] fpd_axi_noc_axi0_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 WLAST" *)
output wire fpd_axi_noc_axi0_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 WVALID" *)
output wire fpd_axi_noc_axi0_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 WREADY" *)
input wire fpd_axi_noc_axi0_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 BID" *)
input wire [15 : 0] fpd_axi_noc_axi0_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 BRESP" *)
input wire [1 : 0] fpd_axi_noc_axi0_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 BVALID" *)
input wire fpd_axi_noc_axi0_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 BREADY" *)
output wire fpd_axi_noc_axi0_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARID" *)
output wire [15 : 0] fpd_axi_noc_axi0_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARADDR" *)
output wire [63 : 0] fpd_axi_noc_axi0_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARLEN" *)
output wire [7 : 0] fpd_axi_noc_axi0_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARSIZE" *)
output wire [2 : 0] fpd_axi_noc_axi0_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARBURST" *)
output wire [1 : 0] fpd_axi_noc_axi0_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARLOCK" *)
output wire fpd_axi_noc_axi0_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARCACHE" *)
output wire [3 : 0] fpd_axi_noc_axi0_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARPROT" *)
output wire [2 : 0] fpd_axi_noc_axi0_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARVALID" *)
output wire fpd_axi_noc_axi0_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARUSER" *)
output wire [17 : 0] fpd_axi_noc_axi0_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARREADY" *)
input wire fpd_axi_noc_axi0_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 RID" *)
input wire [15 : 0] fpd_axi_noc_axi0_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 RDATA" *)
input wire [127 : 0] fpd_axi_noc_axi0_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 RRESP" *)
input wire [1 : 0] fpd_axi_noc_axi0_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 RLAST" *)
input wire fpd_axi_noc_axi0_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 RVALID" *)
input wire fpd_axi_noc_axi0_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 RREADY" *)
output wire fpd_axi_noc_axi0_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWQOS" *)
output wire [3 : 0] fpd_axi_noc_axi0_awqos;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FPD_AXI_NOC_0, PHYSICAL_CHANNEL PS_NCI_TO_NOC_NMU, INDEX 0, CATEGORY noc, MY_CATEGORY ps_nci, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 824991760, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 64, MAX_BURST_LEN\
GTH 256, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_fpd_axi_noc_axi0_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARQOS" *)
output wire [3 : 0] fpd_axi_noc_axi0_arqos;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cpm_pcie_noc_axi0_clk, PHYSICAL_CHANNEL PS_PCIE_TO_NOC_NMU, ASSOCIATED_BUSIF CPM_PCIE_NOC_0, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_cpm_pcie_noc_axi0_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 cpm_pcie_noc_axi0_clk CLK" *)
output wire cpm_pcie_noc_axi0_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWID" *)
output wire [15 : 0] cpm_pcie_noc_axi0_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWADDR" *)
output wire [63 : 0] cpm_pcie_noc_axi0_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWLEN" *)
output wire [7 : 0] cpm_pcie_noc_axi0_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWSIZE" *)
output wire [2 : 0] cpm_pcie_noc_axi0_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWBURST" *)
output wire [1 : 0] cpm_pcie_noc_axi0_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWLOCK" *)
output wire cpm_pcie_noc_axi0_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWCACHE" *)
output wire [3 : 0] cpm_pcie_noc_axi0_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWPROT" *)
output wire [2 : 0] cpm_pcie_noc_axi0_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWVALID" *)
output wire cpm_pcie_noc_axi0_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWUSER" *)
output wire [17 : 0] cpm_pcie_noc_axi0_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWREADY" *)
input wire cpm_pcie_noc_axi0_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 WDATA" *)
output wire [127 : 0] cpm_pcie_noc_axi0_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 WSTRB" *)
output wire [15 : 0] cpm_pcie_noc_axi0_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 WLAST" *)
output wire cpm_pcie_noc_axi0_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 WVALID" *)
output wire cpm_pcie_noc_axi0_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 WREADY" *)
input wire cpm_pcie_noc_axi0_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 BID" *)
input wire [15 : 0] cpm_pcie_noc_axi0_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 BRESP" *)
input wire [1 : 0] cpm_pcie_noc_axi0_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 BVALID" *)
input wire cpm_pcie_noc_axi0_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 BREADY" *)
output wire cpm_pcie_noc_axi0_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARID" *)
output wire [15 : 0] cpm_pcie_noc_axi0_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARADDR" *)
output wire [63 : 0] cpm_pcie_noc_axi0_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARLEN" *)
output wire [7 : 0] cpm_pcie_noc_axi0_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARSIZE" *)
output wire [2 : 0] cpm_pcie_noc_axi0_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARBURST" *)
output wire [1 : 0] cpm_pcie_noc_axi0_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARLOCK" *)
output wire cpm_pcie_noc_axi0_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARCACHE" *)
output wire [3 : 0] cpm_pcie_noc_axi0_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARPROT" *)
output wire [2 : 0] cpm_pcie_noc_axi0_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARVALID" *)
output wire cpm_pcie_noc_axi0_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARUSER" *)
output wire [17 : 0] cpm_pcie_noc_axi0_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARREADY" *)
input wire cpm_pcie_noc_axi0_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RID" *)
input wire [15 : 0] cpm_pcie_noc_axi0_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RDATA" *)
input wire [127 : 0] cpm_pcie_noc_axi0_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RRESP" *)
input wire [1 : 0] cpm_pcie_noc_axi0_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RLAST" *)
input wire cpm_pcie_noc_axi0_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RVALID" *)
input wire cpm_pcie_noc_axi0_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RREADY" *)
output wire cpm_pcie_noc_axi0_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWQOS" *)
output wire [3 : 0] cpm_pcie_noc_axi0_awqos;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CPM_PCIE_NOC_0, PHYSICAL_CHANNEL PS_PCIE_TO_NOC_NMU, INDEX 0, CATEGORY noc, MY_CATEGORY ps_pcie, HD_TANDEM 0, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 824991760, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 6\
4, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_cpm_pcie_noc_axi0_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARQOS" *)
output wire [3 : 0] cpm_pcie_noc_axi0_arqos;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cpm_pcie_noc_axi1_clk, PHYSICAL_CHANNEL PS_PCIE_TO_NOC_NMU, ASSOCIATED_BUSIF CPM_PCIE_NOC_1, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_cpm_pcie_noc_axi1_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 cpm_pcie_noc_axi1_clk CLK" *)
output wire cpm_pcie_noc_axi1_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWID" *)
output wire [15 : 0] cpm_pcie_noc_axi1_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWADDR" *)
output wire [63 : 0] cpm_pcie_noc_axi1_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWLEN" *)
output wire [7 : 0] cpm_pcie_noc_axi1_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWSIZE" *)
output wire [2 : 0] cpm_pcie_noc_axi1_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWBURST" *)
output wire [1 : 0] cpm_pcie_noc_axi1_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWLOCK" *)
output wire cpm_pcie_noc_axi1_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWCACHE" *)
output wire [3 : 0] cpm_pcie_noc_axi1_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWPROT" *)
output wire [2 : 0] cpm_pcie_noc_axi1_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWVALID" *)
output wire cpm_pcie_noc_axi1_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWUSER" *)
output wire [17 : 0] cpm_pcie_noc_axi1_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWREADY" *)
input wire cpm_pcie_noc_axi1_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 WDATA" *)
output wire [127 : 0] cpm_pcie_noc_axi1_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 WSTRB" *)
output wire [15 : 0] cpm_pcie_noc_axi1_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 WLAST" *)
output wire cpm_pcie_noc_axi1_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 WVALID" *)
output wire cpm_pcie_noc_axi1_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 WREADY" *)
input wire cpm_pcie_noc_axi1_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 BID" *)
input wire [15 : 0] cpm_pcie_noc_axi1_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 BRESP" *)
input wire [1 : 0] cpm_pcie_noc_axi1_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 BVALID" *)
input wire cpm_pcie_noc_axi1_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 BREADY" *)
output wire cpm_pcie_noc_axi1_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARID" *)
output wire [15 : 0] cpm_pcie_noc_axi1_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARADDR" *)
output wire [63 : 0] cpm_pcie_noc_axi1_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARLEN" *)
output wire [7 : 0] cpm_pcie_noc_axi1_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARSIZE" *)
output wire [2 : 0] cpm_pcie_noc_axi1_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARBURST" *)
output wire [1 : 0] cpm_pcie_noc_axi1_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARLOCK" *)
output wire cpm_pcie_noc_axi1_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARCACHE" *)
output wire [3 : 0] cpm_pcie_noc_axi1_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARPROT" *)
output wire [2 : 0] cpm_pcie_noc_axi1_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARVALID" *)
output wire cpm_pcie_noc_axi1_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARUSER" *)
output wire [17 : 0] cpm_pcie_noc_axi1_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARREADY" *)
input wire cpm_pcie_noc_axi1_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RID" *)
input wire [15 : 0] cpm_pcie_noc_axi1_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RDATA" *)
input wire [127 : 0] cpm_pcie_noc_axi1_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RRESP" *)
input wire [1 : 0] cpm_pcie_noc_axi1_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RLAST" *)
input wire cpm_pcie_noc_axi1_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RVALID" *)
input wire cpm_pcie_noc_axi1_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RREADY" *)
output wire cpm_pcie_noc_axi1_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWQOS" *)
output wire [3 : 0] cpm_pcie_noc_axi1_awqos;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CPM_PCIE_NOC_1, PHYSICAL_CHANNEL PS_PCIE_TO_NOC_NMU, INDEX 1, CATEGORY noc, MY_CATEGORY ps_pcie, HD_TANDEM 0, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 824991760, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 6\
4, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_cpm_pcie_noc_axi1_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARQOS" *)
output wire [3 : 0] cpm_pcie_noc_axi1_arqos;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lpd_axi_noc_clk, PHYSICAL_CHANNEL PS_RPU_TO_NOC_NMU, ASSOCIATED_BUSIF NOC_LPD_AXI_0, FREQ_HZ 599994019, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_lpd_axi_noc_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 lpd_axi_noc_clk CLK" *)
output wire lpd_axi_noc_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 AWID" *)
output wire [15 : 0] noc_lpd_axi_axi0_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 AWADDR" *)
output wire [63 : 0] noc_lpd_axi_axi0_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 AWLEN" *)
output wire [7 : 0] noc_lpd_axi_axi0_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 AWSIZE" *)
output wire [2 : 0] noc_lpd_axi_axi0_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 AWBURST" *)
output wire [1 : 0] noc_lpd_axi_axi0_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 AWLOCK" *)
output wire noc_lpd_axi_axi0_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 AWCACHE" *)
output wire [3 : 0] noc_lpd_axi_axi0_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 AWPROT" *)
output wire [2 : 0] noc_lpd_axi_axi0_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 AWVALID" *)
output wire noc_lpd_axi_axi0_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 AWUSER" *)
output wire [17 : 0] noc_lpd_axi_axi0_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 AWREADY" *)
input wire noc_lpd_axi_axi0_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 WDATA" *)
output wire [127 : 0] noc_lpd_axi_axi0_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 WSTRB" *)
output wire [15 : 0] noc_lpd_axi_axi0_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 WLAST" *)
output wire noc_lpd_axi_axi0_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 WVALID" *)
output wire noc_lpd_axi_axi0_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 WREADY" *)
input wire noc_lpd_axi_axi0_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 BID" *)
input wire [15 : 0] noc_lpd_axi_axi0_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 BRESP" *)
input wire [1 : 0] noc_lpd_axi_axi0_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 BVALID" *)
input wire noc_lpd_axi_axi0_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 BREADY" *)
output wire noc_lpd_axi_axi0_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 ARID" *)
output wire [15 : 0] noc_lpd_axi_axi0_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 ARADDR" *)
output wire [63 : 0] noc_lpd_axi_axi0_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 ARLEN" *)
output wire [7 : 0] noc_lpd_axi_axi0_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 ARSIZE" *)
output wire [2 : 0] noc_lpd_axi_axi0_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 ARBURST" *)
output wire [1 : 0] noc_lpd_axi_axi0_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 ARLOCK" *)
output wire noc_lpd_axi_axi0_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 ARCACHE" *)
output wire [3 : 0] noc_lpd_axi_axi0_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 ARPROT" *)
output wire [2 : 0] noc_lpd_axi_axi0_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 ARVALID" *)
output wire noc_lpd_axi_axi0_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 ARUSER" *)
output wire [17 : 0] noc_lpd_axi_axi0_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 ARREADY" *)
input wire noc_lpd_axi_axi0_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 RID" *)
input wire [15 : 0] noc_lpd_axi_axi0_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 RDATA" *)
input wire [127 : 0] noc_lpd_axi_axi0_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 RRESP" *)
input wire [1 : 0] noc_lpd_axi_axi0_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 RLAST" *)
input wire noc_lpd_axi_axi0_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 RVALID" *)
input wire noc_lpd_axi_axi0_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 RREADY" *)
output wire noc_lpd_axi_axi0_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 AWQOS" *)
output wire [3 : 0] noc_lpd_axi_axi0_awqos;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME NOC_LPD_AXI_0, PHYSICAL_CHANNEL PS_RPU_TO_NOC_NMU, INDEX 0, CATEGORY noc, MY_CATEGORY ps_rpu, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 599994019, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 64, MAX_BURST_LEN\
GTH 256, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_lpd_axi_noc_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 ARQOS" *)
output wire [3 : 0] noc_lpd_axi_axi0_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARADDR" *)
output wire [63 : 0] pmc_noc_axi0_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARBURST" *)
output wire [1 : 0] pmc_noc_axi0_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARCACHE" *)
output wire [3 : 0] pmc_noc_axi0_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARID" *)
output wire [15 : 0] pmc_noc_axi0_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARLEN" *)
output wire [7 : 0] pmc_noc_axi0_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARLOCK" *)
output wire pmc_noc_axi0_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARPROT" *)
output wire [2 : 0] pmc_noc_axi0_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARQOS" *)
output wire [3 : 0] pmc_noc_axi0_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARREGION" *)
output wire [3 : 0] pmc_noc_axi0_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARSIZE" *)
output wire [2 : 0] pmc_noc_axi0_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARUSER" *)
output wire [17 : 0] pmc_noc_axi0_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARVALID" *)
output wire pmc_noc_axi0_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWADDR" *)
output wire [63 : 0] pmc_noc_axi0_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWBURST" *)
output wire [1 : 0] pmc_noc_axi0_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWCACHE" *)
output wire [3 : 0] pmc_noc_axi0_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWID" *)
output wire [15 : 0] pmc_noc_axi0_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWLEN" *)
output wire [7 : 0] pmc_noc_axi0_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWLOCK" *)
output wire pmc_noc_axi0_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWPROT" *)
output wire [2 : 0] pmc_noc_axi0_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWQOS" *)
output wire [3 : 0] pmc_noc_axi0_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWREGION" *)
output wire [3 : 0] pmc_noc_axi0_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWSIZE" *)
output wire [2 : 0] pmc_noc_axi0_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWUSER" *)
output wire [17 : 0] pmc_noc_axi0_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWVALID" *)
output wire pmc_noc_axi0_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 BREADY" *)
output wire pmc_noc_axi0_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RREADY" *)
output wire pmc_noc_axi0_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WDATA" *)
output wire [127 : 0] pmc_noc_axi0_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WID" *)
output wire [15 : 0] pmc_noc_axi0_wid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WLAST" *)
output wire pmc_noc_axi0_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WSTRB" *)
output wire [15 : 0] pmc_noc_axi0_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WUSER" *)
output wire [16 : 0] pmc_noc_axi0_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WVALID" *)
output wire pmc_noc_axi0_wvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pmc_axi_noc_axi0_clk, PHYSICAL_CHANNEL PS_PMC_TO_NOC_NMU, ASSOCIATED_BUSIF PMC_NOC_AXI_0, FREQ_HZ 400000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_pmc_axi_noc_axi0_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pmc_axi_noc_axi0_clk CLK" *)
output wire pmc_axi_noc_axi0_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARREADY" *)
input wire pmc_noc_axi0_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWREADY" *)
input wire pmc_noc_axi0_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 BID" *)
input wire [15 : 0] pmc_noc_axi0_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 BRESP" *)
input wire [1 : 0] pmc_noc_axi0_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 BUSER" *)
input wire [15 : 0] pmc_noc_axi0_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 BVALID" *)
input wire pmc_noc_axi0_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RDATA" *)
input wire [127 : 0] pmc_noc_axi0_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RID" *)
input wire [15 : 0] pmc_noc_axi0_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RLAST" *)
input wire pmc_noc_axi0_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RRESP" *)
input wire [1 : 0] pmc_noc_axi0_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RUSER" *)
input wire [16 : 0] pmc_noc_axi0_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RVALID" *)
input wire pmc_noc_axi0_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PMC_NOC_AXI_0, PHYSICAL_CHANNEL PS_PMC_TO_NOC_NMU, INDEX 0, CATEGORY noc, MY_CATEGORY ps_pmc, HD_TANDEM 0, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 400000000, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 17, RUSER_WIDTH 17, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 6\
4, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_pmc_axi_noc_axi0_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WREADY" *)
input wire pmc_noc_axi0_wready;
output wire [93 : 0] gem0_tsu_timer_cnt;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.pcie0_user_clk, ASSOCIATED_BUSIF pcie0_s_axis_rq:pcie0_s_axis_cc:pcie0_m_axis_cq:pcie0_m_axis_rc:dma0_s_axis_c2h:dma0_m_axis_h2c:dma0_s_axis_c2h_0:dma0_m_axis_h2c_0:dma0_s_axis_c2h_1:dma0_m_axis_h2c_1:dma0_s_axis_c2h_2:dma0_m_axis_h2c_2:dma0_s_axis_c2h_3:dma0_m_axis_h2c_3:dma0_st_rx_msg, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_pcie0_user_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.pcie0_user_clk CLK" *)
output wire pcie0_user_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.pcie1_user_clk, ASSOCIATED_BUSIF pcie1_s_axis_rq:pcie1_s_axis_cc:pcie1_m_axis_cq:pcie1_m_axis_rc, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_pcie1_user_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.pcie1_user_clk CLK" *)
output wire pcie1_user_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.dma0_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.dma0_axi_aresetn RST" *)
output wire dma0_axi_aresetn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.dma0_soft_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.dma0_soft_resetn RST" *)
input wire dma0_soft_resetn;
output wire pcie1_user_reset;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTERRUPT.cpm_cor_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTERRUPT.cpm_cor_irq INTERRUPT" *)
output wire cpm_cor_irq;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTERRUPT.cpm_irq0, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTERRUPT.cpm_irq0 INTERRUPT" *)
input wire cpm_irq0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTERRUPT.cpm_irq1, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTERRUPT.cpm_irq1 INTERRUPT" *)
input wire cpm_irq1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTERRUPT.cpm_misc_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTERRUPT.cpm_misc_irq INTERRUPT" *)
output wire cpm_misc_irq;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTERRUPT.cpm_uncor_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTERRUPT.cpm_uncor_irq INTERRUPT" *)
output wire cpm_uncor_irq;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTERRUPT.dma0_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTERRUPT.dma0_irq INTERRUPT" *)
output wire dma0_irq;
output wire pcie0_user_lnk_up;
output wire pcie1_user_lnk_up;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_rq TDATA" *)
input wire [511 : 0] pcie1_s_axis_rq_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_rq TKEEP" *)
input wire [15 : 0] pcie1_s_axis_rq_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_rq TLAST" *)
input wire pcie1_s_axis_rq_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_rq TUSER" *)
input wire [178 : 0] pcie1_s_axis_rq_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_rq TVALID" *)
input wire pcie1_s_axis_rq_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie1_s_axis_rq, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 179, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_pcie1_user_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_rq TREADY" *)
output wire pcie1_s_axis_rq_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_cc TDATA" *)
input wire [511 : 0] pcie1_s_axis_cc_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_cc TKEEP" *)
input wire [15 : 0] pcie1_s_axis_cc_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_cc TLAST" *)
input wire pcie1_s_axis_cc_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_cc TUSER" *)
input wire [80 : 0] pcie1_s_axis_cc_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_cc TVALID" *)
input wire pcie1_s_axis_cc_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie1_s_axis_cc, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 81, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_pcie1_user_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_s_axis_cc TREADY" *)
output wire pcie1_s_axis_cc_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_rc TDATA" *)
output wire [511 : 0] pcie1_m_axis_rc_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_rc TKEEP" *)
output wire [15 : 0] pcie1_m_axis_rc_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_rc TLAST" *)
output wire pcie1_m_axis_rc_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_rc TUSER" *)
output wire [160 : 0] pcie1_m_axis_rc_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_rc TVALID" *)
output wire pcie1_m_axis_rc_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie1_m_axis_rc, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 161, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_pcie1_user_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_rc TREADY" *)
input wire pcie1_m_axis_rc_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_cq TDATA" *)
output wire [511 : 0] pcie1_m_axis_cq_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_cq TKEEP" *)
output wire [15 : 0] pcie1_m_axis_cq_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_cq TLAST" *)
output wire pcie1_m_axis_cq_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_cq TUSER" *)
output wire [182 : 0] pcie1_m_axis_cq_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_cq TVALID" *)
output wire pcie1_m_axis_cq_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie1_m_axis_cq, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 183, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_pcie1_user_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 pcie1_m_axis_cq TREADY" *)
input wire pcie1_m_axis_cq_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_interrupt:1.0 pcie1_cfg_interrupt INTx_VECTOR" *)
input wire [3 : 0] pcie1_cfg_interrupt_int;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_interrupt:1.0 pcie1_cfg_interrupt SENT" *)
output wire pcie1_cfg_interrupt_sent;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_interrupt:1.0 pcie1_cfg_interrupt PENDING" *)
input wire [3 : 0] pcie1_cfg_interrupt_pending;
input wire [0 : 0] xdma0_usr_irq_req;
output wire [0 : 0] xdma0_usr_irq_ack;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi enable" *)
output wire [3 : 0] pcie1_cfg_msi_enable;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi mmenable" *)
output wire [11 : 0] pcie1_cfg_msi_mmenable;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi data" *)
output wire [31 : 0] pcie1_cfg_msi_data;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi attr" *)
input wire [2 : 0] pcie1_cfg_msi_attr;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi function_number" *)
input wire [7 : 0] pcie1_cfg_msi_function_number;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi int_vector" *)
input wire [31 : 0] pcie1_cfg_msi_int_vector;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi pending_status" *)
input wire [31 : 0] pcie1_cfg_msi_pending_status;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi pending_status_data_enable" *)
input wire pcie1_cfg_msi_pending_status_data_enable;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi pending_status_function_num" *)
input wire [1 : 0] pcie1_cfg_msi_pending_status_function_number;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi select" *)
input wire [1 : 0] pcie1_cfg_msi_select;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi tph_present" *)
input wire pcie1_cfg_msi_tph_present;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi tph_st_tag" *)
input wire [7 : 0] pcie1_cfg_msi_tph_st_tag;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi tph_type" *)
input wire [1 : 0] pcie1_cfg_msi_tph_type;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE0_GT GRX_N" *)
input wire [7 : 0] pcie0_gt_rxn;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE0_GT GRX_P" *)
input wire [7 : 0] pcie0_gt_rxp;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE0_GT GTX_N" *)
output wire [7 : 0] pcie0_gt_txn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PCIE0_GT, CAN_DEBUG false" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE0_GT GTX_P" *)
output wire [7 : 0] pcie0_gt_txp;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT GRX_N" *)
input wire [7 : 0] pcie1_gt_rxn;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT GRX_P" *)
input wire [7 : 0] pcie1_gt_rxp;
(* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT GTX_N" *)
output wire [7 : 0] pcie1_gt_txn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PCIE1_GT, CAN_DEBUG false" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 PCIE1_GT GTX_P" *)
output wire [7 : 0] pcie1_gt_txp;
(* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gt_refclk0 CLK_N" *)
input wire gt_refclk0_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME gt_refclk0, CAN_DEBUG false, FREQ_HZ 100000000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gt_refclk0 CLK_P" *)
input wire gt_refclk0_p;
(* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gt_refclk1 CLK_N" *)
input wire gt_refclk1_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME gt_refclk1, CAN_DEBUG false, FREQ_HZ 100000000" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gt_refclk1 CLK_P" *)
input wire gt_refclk1_p;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma0_st_rx_msg TREADY" *)
input wire dma0_st_rx_msg_rdy;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma0_st_rx_msg TDATA" *)
output wire [31 : 0] dma0_st_rx_msg_data;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma0_st_rx_msg TVALID" *)
output wire dma0_st_rx_msg_valid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dma0_st_rx_msg, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_pcie0_user_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 dma0_st_rx_msg TLAST" *)
output wire dma0_st_rx_msg_last;

  versal_cips_v2_1_3_versal_cips #(
    .C_M_AXI_GP0_DATA_WIDTH(128),
    .C_M_AXI_GP2_DATA_WIDTH(128),
    .C_DIFF_RW_CLK_S_AXI_GP0(0),
    .C_DIFF_RW_CLK_S_AXI_GP2(0),
    .C_DIFF_RW_CLK_S_AXI_GP4(0),
    .C_S_AXI_GP0_DATA_WIDTH(128),
    .C_S_AXI_GP2_DATA_WIDTH(128),
    .C_S_AXI_GP4_DATA_WIDTH(128),
    .C_S_AXI_ACP_DATA_WIDTH(128),
    .C_S_AXI_ACE_DATA_WIDTH(128),
    .C_PS_NOC_CCI_DATA_WIDTH(128),
    .C_PS_NOC_NCI_DATA_WIDTH(128),
    .C_NOC_PS_CCI_DATA_WIDTH(128),
    .C_PS_NOC_PCI_DATA_WIDTH(128),
    .C_NOC_PS_PCI_DATA_WIDTH(128),
    .C_PS_NOC_PMC_DATA_WIDTH(128),
    .C_NOC_PS_PMC_DATA_WIDTH(128),
    .C_PS_NOC_RPU_DATA_WIDTH(128),
    .C_PS_EMIO_GPIO_WIDTH(32),
    .C_PMC_EMIO_GPIO_WIDTH(64),
    .C_PMC_NOC_ADDR_WIDTH(64),
    .C_PMC_NOC_DATA_WIDTH(128),
    .C_NOC_PMC_ADDR_WIDTH(64),
    .C_NOC_PMC_DATA_WIDTH(128),
    .C_XDEVICE("xcvc1802"),
    .C_SIM_DEVICE("VERSAL_AI_CORE"),
    .C_SPP_PSPMC_TO_CORE_WIDTH(12000),
    .C_SPP_PSPMC_FROM_CORE_WIDTH(12000),
    .C_NUM_F2P0_INTR_INPUTS("1"),
    .C_NUM_F2P1_INTR_INPUTS("1"),
    .C_PMCPL_CLK0_BUF(1),
    .C_PMCPL_CLK1_BUF(1),
    .C_PMCPL_CLK2_BUF(1),
    .C_PMCPL_CLK3_BUF(1),
    .C_PMCPL_IRO_CLK_BUF(1),
    .C_ACE_LITE(0),
    .C_AXI4_EXT_USER_BITS(0),
    .C_SUBCORE_NAME("versal_cips_v2_1_gt_quad_base"),
    .C_CORE_NAME("versal_cips_v2_1"),
    .C_SD0_DATA_WIDTH(4),
    .C_SD1_DATA_WIDTH(8),
    .C_PS_TRACE_WIDTH(32),
    .C_VIP_SUBCORE_NAME("versal_cips_ps_vip"),
    .C_PS_HSDP_INGRESS_TRAFFIC("JTAG"),
    .C_CPM_PERIPHERAL_EN(1),
    .C_CPM_PCIE0_CONTROLLER_ENABLE(1),
    .C_CPM_PCIE1_CONTROLLER_ENABLE(1),
    .C_CPM_PCIE0_USER_CLK_FREQ("250_MHz"),
    .C_CPM_PCIE1_USER_CLK_FREQ("250_MHz"),
    .C_PS_ENABLE_HSDP(0),
    .C_PS_HSDP_MODE("NONE"),
    .C_CPM_USE_MODES(4),
    .C_CPM_PCIE0_PL_LINK_CAP_MAX_LINK_WIDTH(8),
    .C_CPM_PCIE1_PL_LINK_CAP_MAX_LINK_WIDTH(8),
    .C_CPM_PCIE0_AXISTEN_IF_WIDTH(512),
    .C_CPM_PCIE1_AXISTEN_IF_WIDTH(512),
    .C_CPM_PCIE0_MODES("DMA"),
    .C_CPM_PCIE1_MODES("PCIE"),
    .C_CPM_PCIE0_TL_PF_ENABLE_REG(1),
    .C_CPM_PCIE0_PF0_SRIOV_CAP_TOTAL_VF(0),
    .C_CPM_PCIE0_PF1_SRIOV_CAP_TOTAL_VF(0),
    .C_CPM_PCIE0_PF2_SRIOV_CAP_TOTAL_VF(0),
    .C_CPM_PCIE0_PF3_SRIOV_CAP_TOTAL_VF(0),
    .C_CPM_PCIE0_PF0_SRIOV_FIRST_VF_OFFSET(4),
    .C_CPM_PCIE0_PF1_SRIOV_FIRST_VF_OFFSET(7),
    .C_CPM_PCIE0_PF2_SRIOV_FIRST_VF_OFFSET(10),
    .C_CPM_PCIE0_PF3_SRIOV_FIRST_VF_OFFSET(13),
    .C_CPM_PCIE0_SRIOV_CAP_ENABLE(0),
    .C_CPM_PCIE1_SRIOV_CAP_ENABLE(0),
    .C_CPM_PCIE0_ARI_CAP_ENABLE(1),
    .C_CPM_PCIE1_ARI_CAP_ENABLE(1),
    .C_CPM_PCIE0_PF0_PRI_CAP_ON(0),
    .C_CPM_PCIE0_PF1_PRI_CAP_ON(0),
    .C_CPM_PCIE0_PF2_PRI_CAP_ON(0),
    .C_CPM_PCIE0_PF3_PRI_CAP_ON(0),
    .C_CPM_PCIE0_PF0_ATS_CAP_ON(0),
    .C_CPM_PCIE0_PF1_ATS_CAP_ON(0),
    .C_CPM_PCIE0_PF2_ATS_CAP_ON(0),
    .C_CPM_PCIE0_PF3_ATS_CAP_ON(0),
    .C_CPM_PCIE0_VFG0_ATS_CAP_ON(0),
    .C_CPM_PCIE0_VFG1_ATS_CAP_ON(0),
    .C_CPM_PCIE0_VFG2_ATS_CAP_ON(0),
    .C_CPM_PCIE0_VFG3_ATS_CAP_ON(0),
    .C_CPM_PCIE0_VFG0_PRI_CAP_ON(0),
    .C_CPM_PCIE0_VFG1_PRI_CAP_ON(0),
    .C_CPM_PCIE0_VFG2_PRI_CAP_ON(0),
    .C_CPM_PCIE0_VFG3_PRI_CAP_ON(0),
    .C_CPM_PCIE0_AXIS_CC_TUSER_WIDTH(81),
    .C_CPM_PCIE1_AXIS_CC_TUSER_WIDTH(81),
    .C_CPM_PCIE0_AXIS_RC_TUSER_WIDTH(161),
    .C_CPM_PCIE1_AXIS_RC_TUSER_WIDTH(161),
    .C_CPM_PCIE0_AXIS_RQ_TUSER_WIDTH(179),
    .C_CPM_PCIE1_AXIS_RQ_TUSER_WIDTH(179),
    .C_CPM_PCIE0_AXIS_CQ_TUSER_WIDTH(183),
    .C_CPM_PCIE1_AXIS_CQ_TUSER_WIDTH(183),
    .C_CPM_PCIE0_PF0_PASID_CAP_ON(0),
    .C_CPM_PCIE0_PL_UPSTREAM_FACING(1),
    .C_CPM_PCIE0_FUNCTIONAL_MODE("DMA"),
    .C_CPM_PCIE1_TL_PF_ENABLE_REG(1),
    .C_CPM_PCIE1_PF0_SRIOV_CAP_TOTAL_VF(0),
    .C_CPM_PCIE1_PF1_SRIOV_CAP_TOTAL_VF(0),
    .C_CPM_PCIE1_PF2_SRIOV_CAP_TOTAL_VF(0),
    .C_CPM_PCIE1_PF3_SRIOV_CAP_TOTAL_VF(0),
    .C_CPM_PCIE1_PF0_SRIOV_FIRST_VF_OFFSET(4),
    .C_CPM_PCIE1_PF1_SRIOV_FIRST_VF_OFFSET(4),
    .C_CPM_PCIE1_PF2_SRIOV_FIRST_VF_OFFSET(4),
    .C_CPM_PCIE1_PF3_SRIOV_FIRST_VF_OFFSET(4),
    .C_CPM_PCIE0_LINK_WIDTH_FOR_POWER(8),
    .C_CPM_PCIE1_LINK_WIDTH_FOR_POWER(8),
    .C_CPM_PCIE_CHANNELS_FOR_POWER(2),
    .C_CPM_PCIE0_MODE_FOR_POWER("CPM_STREAM_W_DMA"),
    .C_CPM_PCIE1_MODE_FOR_POWER("CPM_STREAM"),
    .C_CPM_PCIE0_LINK_SPEED_FOR_POWER("GEN4"),
    .C_CPM_PCIE1_LINK_SPEED_FOR_POWER("GEN4"),
    .C_CPM_PCIE1_PF0_PRI_CAP_ON(0),
    .C_CPM_PCIE1_PF1_PRI_CAP_ON(0),
    .C_CPM_PCIE1_PF2_PRI_CAP_ON(0),
    .C_CPM_PCIE1_PF3_PRI_CAP_ON(0),
    .C_CPM_PCIE1_PF0_ATS_CAP_ON(0),
    .C_CPM_PCIE1_PF1_ATS_CAP_ON(0),
    .C_CPM_PCIE1_PF2_ATS_CAP_ON(0),
    .C_CPM_PCIE1_PF3_ATS_CAP_ON(0),
    .C_CPM_PCIE1_VFG0_ATS_CAP_ON(0),
    .C_CPM_PCIE1_VFG1_ATS_CAP_ON(0),
    .C_CPM_PCIE1_VFG2_ATS_CAP_ON(0),
    .C_CPM_PCIE1_VFG3_ATS_CAP_ON(0),
    .C_CPM_PCIE1_VFG0_PRI_CAP_ON(0),
    .C_CPM_PCIE1_VFG1_PRI_CAP_ON(0),
    .C_CPM_PCIE1_VFG2_PRI_CAP_ON(0),
    .C_CPM_PCIE1_VFG3_PRI_CAP_ON(0),
    .C_CPM_PCIE1_PF0_PASID_CAP_ON(0),
    .C_CPM_PCIE1_PL_UPSTREAM_FACING(1),
    .C_XPIPE_0_CLKDLY_CFG(268485632),
    .C_XPIPE_0_CLK_CFG(348164),
    .C_XPIPE_0_INSTANTIATED(1),
    .C_XPIPE_0_LINK0_CFG("X8"),
    .C_XPIPE_0_LINK1_CFG("X8"),
    .C_XPIPE_0_LOC("QUAD0"),
    .C_XPIPE_0_MODE(1),
    .C_XPIPE_0_REG_CFG(8146),
    .C_XPIPE_0_RSVD(0),
    .C_XPIPE_1_CLKDLY_CFG(33557632),
    .C_XPIPE_1_CLK_CFG(1004804),
    .C_XPIPE_1_INSTANTIATED(1),
    .C_XPIPE_1_LINK0_CFG("X8"),
    .C_XPIPE_1_LINK1_CFG("X8"),
    .C_XPIPE_1_LOC("QUAD1"),
    .C_XPIPE_1_MODE(1),
    .C_XPIPE_1_REG_CFG(8137),
    .C_XPIPE_1_RSVD(0),
    .C_XPIPE_2_CLKDLY_CFG(318767234),
    .C_XPIPE_2_CLK_CFG(1045840),
    .C_XPIPE_2_INSTANTIATED(1),
    .C_XPIPE_2_LINK0_CFG("X8"),
    .C_XPIPE_2_LINK1_CFG("X8"),
    .C_XPIPE_2_LOC("QUAD2"),
    .C_XPIPE_2_MODE(1),
    .C_XPIPE_2_REG_CFG(8146),
    .C_XPIPE_2_RSVD(0),
    .C_XPIPE_3_CLKDLY_CFG(16777218),
    .C_XPIPE_3_CLK_CFG(1048400),
    .C_XPIPE_3_INSTANTIATED(1),
    .C_XPIPE_3_LINK0_CFG("X8"),
    .C_XPIPE_3_LINK1_CFG("X8"),
    .C_XPIPE_3_LOC("QUAD3"),
    .C_XPIPE_3_MODE(1),
    .C_XPIPE_3_REG_CFG(8137),
    .C_XPIPE_3_RSVD(0),
    .C_CPM_PCIE0_NUM_USR_IRQ(1),
    .C_CPM_PCIE0_PF0_MSI_ENABLED(0),
    .C_CPM_PCIE1_PF0_MSI_ENABLED(1)
  ) inst (
    .m_axi_fpd_aclk(1'B0),
    .m_axi_fpd_awid(),
    .m_axi_fpd_awaddr(),
    .m_axi_fpd_awlen(),
    .m_axi_fpd_awsize(),
    .m_axi_fpd_awburst(),
    .m_axi_fpd_awlock(),
    .m_axi_fpd_awcache(),
    .m_axi_fpd_awprot(),
    .m_axi_fpd_awvalid(),
    .m_axi_fpd_awuser(),
    .m_axi_fpd_awready(1'B0),
    .m_axi_fpd_wdata(),
    .m_axi_fpd_wstrb(),
    .m_axi_fpd_wlast(),
    .m_axi_fpd_wvalid(),
    .m_axi_fpd_wready(1'B0),
    .m_axi_fpd_bid(16'B0),
    .m_axi_fpd_bresp(2'B0),
    .m_axi_fpd_bvalid(1'B0),
    .m_axi_fpd_bready(),
    .m_axi_fpd_arid(),
    .m_axi_fpd_araddr(),
    .m_axi_fpd_arlen(),
    .m_axi_fpd_arsize(),
    .m_axi_fpd_arburst(),
    .m_axi_fpd_arlock(),
    .m_axi_fpd_arcache(),
    .m_axi_fpd_arprot(),
    .m_axi_fpd_arvalid(),
    .m_axi_fpd_aruser(),
    .m_axi_fpd_arready(1'B0),
    .m_axi_fpd_rid(16'B0),
    .m_axi_fpd_rdata(128'B0),
    .m_axi_fpd_rresp(2'B0),
    .m_axi_fpd_rlast(1'B0),
    .m_axi_fpd_rvalid(1'B0),
    .m_axi_fpd_rready(),
    .m_axi_fpd_awqos(),
    .m_axi_fpd_arqos(),
    .m_axi_lpd_aclk(1'B0),
    .m_axi_lpd_awid(),
    .m_axi_lpd_awaddr(),
    .m_axi_lpd_awlen(),
    .m_axi_lpd_awsize(),
    .m_axi_lpd_awburst(),
    .m_axi_lpd_awlock(),
    .m_axi_lpd_awcache(),
    .m_axi_lpd_awprot(),
    .m_axi_lpd_awvalid(),
    .m_axi_lpd_awuser(),
    .m_axi_lpd_awready(1'B0),
    .m_axi_lpd_wdata(),
    .m_axi_lpd_wstrb(),
    .m_axi_lpd_wlast(),
    .m_axi_lpd_wvalid(),
    .m_axi_lpd_wready(1'B0),
    .m_axi_lpd_bid(16'B0),
    .m_axi_lpd_bresp(2'B0),
    .m_axi_lpd_bvalid(1'B0),
    .m_axi_lpd_bready(),
    .m_axi_lpd_arid(),
    .m_axi_lpd_araddr(),
    .m_axi_lpd_arlen(),
    .m_axi_lpd_arsize(),
    .m_axi_lpd_arburst(),
    .m_axi_lpd_arlock(),
    .m_axi_lpd_arcache(),
    .m_axi_lpd_arprot(),
    .m_axi_lpd_arvalid(),
    .m_axi_lpd_aruser(),
    .m_axi_lpd_arready(1'B0),
    .m_axi_lpd_rid(16'B0),
    .m_axi_lpd_rdata(128'B0),
    .m_axi_lpd_rresp(2'B0),
    .m_axi_lpd_rlast(1'B0),
    .m_axi_lpd_rvalid(1'B0),
    .m_axi_lpd_rready(),
    .m_axi_lpd_awqos(),
    .m_axi_lpd_arqos(),
    .s_axi_fpd_araddr(49'B0),
    .s_axi_fpd_arburst(2'B0),
    .s_axi_fpd_arcache(4'B0),
    .s_axi_fpd_arid(6'B0),
    .s_axi_fpd_arlen(8'B0),
    .s_axi_fpd_arlock(1'B0),
    .s_axi_fpd_arprot(3'B0),
    .s_axi_fpd_arqos(4'B0),
    .s_axi_fpd_arsize(3'B0),
    .s_axi_fpd_aruser(10'B0),
    .s_axi_fpd_awaddr(49'B0),
    .s_axi_fpd_awburst(2'B0),
    .s_axi_fpd_awcache(4'B0),
    .s_axi_fpd_awid(6'B0),
    .s_axi_fpd_awlen(8'B0),
    .s_axi_fpd_awlock(1'B0),
    .s_axi_fpd_awprot(3'B0),
    .s_axi_fpd_awqos(4'B0),
    .s_axi_fpd_awsize(3'B0),
    .s_axi_fpd_awuser(10'B0),
    .s_axi_fpd_awvalid(1'B0),
    .s_axi_fpd_bready(1'B0),
    .s_axi_fpd_rclk(1'B0),
    .s_axi_fpd_aclk(1'B0),
    .s_axi_fpd_rready(1'B0),
    .s_axi_fpd_wclk(1'B0),
    .s_axi_fpd_wdata(128'B0),
    .s_axi_fpd_wlast(1'B0),
    .s_axi_fpd_wstrb(16'B0),
    .s_axi_fpd_wvalid(1'B0),
    .s_axi_fpd_arready(),
    .s_axi_fpd_arvalid(1'B0),
    .s_axi_fpd_awready(),
    .s_axi_fpd_bid(),
    .s_axi_fpd_bresp(),
    .s_axi_fpd_bvalid(),
    .s_axi_fpd_racount(),
    .s_axi_fpd_rcount(),
    .s_axi_fpd_rdata(),
    .s_axi_fpd_rid(),
    .s_axi_fpd_rlast(),
    .s_axi_fpd_rresp(),
    .s_axi_fpd_rvalid(),
    .s_axi_fpd_wacount(),
    .s_axi_fpd_wcount(),
    .s_axi_fpd_wready(),
    .s_cci_fpd_araddr(49'B0),
    .s_cci_fpd_arburst(2'B0),
    .s_cci_fpd_arcache(4'B0),
    .s_cci_fpd_arid(6'B0),
    .s_cci_fpd_arlen(8'B0),
    .s_cci_fpd_arlock(1'B0),
    .s_cci_fpd_arprot(3'B0),
    .s_cci_fpd_arqos(4'B0),
    .s_cci_fpd_arsize(3'B0),
    .s_cci_fpd_aruser(10'B0),
    .s_cci_fpd_arvalid(1'B0),
    .s_cci_fpd_awaddr(49'B0),
    .s_cci_fpd_awburst(2'B0),
    .s_cci_fpd_awcache(4'B0),
    .s_cci_fpd_awid(6'B0),
    .s_cci_fpd_awlen(8'B0),
    .s_cci_fpd_awlock(1'B0),
    .s_cci_fpd_awprot(3'B0),
    .s_cci_fpd_awqos(4'B0),
    .s_cci_fpd_awsize(3'B0),
    .s_cci_fpd_awuser(10'B0),
    .s_cci_fpd_awvalid(1'B0),
    .s_cci_fpd_bready(1'B0),
    .s_cci_fpd_rclk(1'B0),
    .s_cci_fpd_aclk(1'B0),
    .s_cci_fpd_rready(1'B0),
    .s_cci_fpd_wclk(1'B0),
    .s_cci_fpd_wdata(128'B0),
    .s_cci_fpd_wlast(1'B0),
    .s_cci_fpd_wstrb(16'B0),
    .s_cci_fpd_wvalid(1'B0),
    .s_cci_fpd_arready(),
    .s_cci_fpd_awready(),
    .s_cci_fpd_bid(),
    .s_cci_fpd_bresp(),
    .s_cci_fpd_bvalid(),
    .s_cci_fpd_racount(),
    .s_cci_fpd_rcount(),
    .s_cci_fpd_rdata(),
    .s_cci_fpd_rid(),
    .s_cci_fpd_rlast(),
    .s_cci_fpd_rresp(),
    .s_cci_fpd_rvalid(),
    .s_cci_fpd_wacount(),
    .s_cci_fpd_wcount(),
    .s_cci_fpd_wready(),
    .s_cci_fpd_arsnoop(4'B0),
    .s_cci_fpd_ardomain(2'B0),
    .s_cci_fpd_awsnoop(3'B0),
    .s_cci_fpd_awdomain(2'B0),
    .s_axi_gp2_araddr(49'B0),
    .s_axi_gp2_arburst(2'B0),
    .s_axi_gp2_arcache(4'B0),
    .s_axi_gp2_arid(6'B0),
    .s_axi_gp2_arlen(8'B0),
    .s_axi_gp2_arlock(1'B0),
    .s_axi_gp2_arprot(3'B0),
    .s_axi_gp2_arqos(4'B0),
    .s_axi_gp2_arsize(3'B0),
    .s_axi_gp2_aruser(18'B0),
    .s_axi_gp2_arvalid(1'B0),
    .s_axi_gp2_awaddr(49'B0),
    .s_axi_gp2_awburst(2'B0),
    .s_axi_gp2_awcache(4'B0),
    .s_axi_gp2_awid(6'B0),
    .s_axi_gp2_awlen(8'B0),
    .s_axi_gp2_awlock(1'B0),
    .s_axi_gp2_awprot(3'B0),
    .s_axi_gp2_awqos(4'B0),
    .s_axi_gp2_awsize(3'B0),
    .s_axi_gp2_awuser(18'B0),
    .s_axi_gp2_awvalid(1'B0),
    .s_axi_gp2_bready(1'B0),
    .s_axi_gp2_rclk(1'B0),
    .s_axi_gp2_aclk(1'B0),
    .s_axi_gp2_rready(1'B0),
    .s_axi_gp2_wclk(1'B0),
    .s_axi_gp2_wdata(128'B0),
    .s_axi_gp2_wlast(1'B0),
    .s_axi_gp2_wstrb(16'B0),
    .s_axi_gp2_wvalid(1'B0),
    .s_axi_gp2_arready(),
    .s_axi_gp2_awready(),
    .s_axi_gp2_bid(),
    .s_axi_gp2_bresp(),
    .s_axi_gp2_bvalid(),
    .s_axi_gp2_racount(),
    .s_axi_gp2_rcount(),
    .s_axi_gp2_rdata(),
    .s_axi_gp2_rid(),
    .s_axi_gp2_rlast(),
    .s_axi_gp2_rresp(),
    .s_axi_gp2_rvalid(),
    .s_axi_gp2_wacount(),
    .s_axi_gp2_wcount(),
    .s_axi_gp2_wready(),
    .s_axi_lpd_araddr(49'B0),
    .s_axi_lpd_arburst(2'B0),
    .s_axi_lpd_arcache(4'B0),
    .s_axi_lpd_arid(6'B0),
    .s_axi_lpd_arlen(8'B0),
    .s_axi_lpd_arlock(1'B0),
    .s_axi_lpd_arprot(3'B0),
    .s_axi_lpd_arqos(4'B0),
    .s_axi_lpd_arsize(3'B0),
    .s_axi_lpd_aruser(11'B0),
    .s_axi_lpd_arvalid(1'B0),
    .s_axi_lpd_awaddr(49'B0),
    .s_axi_lpd_awburst(2'B0),
    .s_axi_lpd_awcache(4'B0),
    .s_axi_lpd_awid(6'B0),
    .s_axi_lpd_awlen(8'B0),
    .s_axi_lpd_awlock(1'B0),
    .s_axi_lpd_awprot(3'B0),
    .s_axi_lpd_awqos(4'B0),
    .s_axi_lpd_awsize(3'B0),
    .s_axi_lpd_awuser(11'B0),
    .s_axi_lpd_awvalid(1'B0),
    .s_axi_lpd_bready(1'B0),
    .s_axi_lpd_rclk(1'B0),
    .s_axi_lpd_aclk(1'B0),
    .s_axi_lpd_rready(1'B0),
    .s_axi_lpd_wclk(1'B0),
    .s_axi_lpd_wdata(128'B0),
    .s_axi_lpd_wlast(1'B0),
    .s_axi_lpd_wstrb(16'B0),
    .s_axi_lpd_wvalid(1'B0),
    .s_axi_lpd_arready(),
    .s_axi_lpd_awready(),
    .s_axi_lpd_bid(),
    .s_axi_lpd_bresp(),
    .s_axi_lpd_bvalid(),
    .s_axi_lpd_racount(),
    .s_axi_lpd_rcount(),
    .s_axi_lpd_rdata(),
    .s_axi_lpd_rid(),
    .s_axi_lpd_rlast(),
    .s_axi_lpd_rresp(),
    .s_axi_lpd_rvalid(),
    .s_axi_lpd_wacount(),
    .s_axi_lpd_wcount(),
    .s_axi_lpd_wready(),
    .s_acp_fpd_aclk(1'B0),
    .s_acp_fpd_awid(5'B0),
    .s_acp_fpd_awaddr(44'B0),
    .s_acp_fpd_awlen(8'B0),
    .s_acp_fpd_awcache(4'B0),
    .s_acp_fpd_awprot(3'B0),
    .s_acp_fpd_awvalid(1'B0),
    .s_acp_fpd_awuser(2'B0),
    .s_acp_fpd_wdata(128'B0),
    .s_acp_fpd_wstrb(16'B0),
    .s_acp_fpd_wlast(1'B0),
    .s_acp_fpd_wvalid(1'B0),
    .s_acp_fpd_bready(1'B0),
    .s_acp_fpd_arid(5'B0),
    .s_acp_fpd_araddr(44'B0),
    .s_acp_fpd_arlen(8'B0),
    .s_acp_fpd_arcache(4'B0),
    .s_acp_fpd_arprot(3'B0),
    .s_acp_fpd_arvalid(1'B0),
    .s_acp_fpd_aruser(2'B0),
    .s_acp_fpd_rready(1'B0),
    .s_acp_fpd_awready(),
    .s_acp_fpd_wready(),
    .s_acp_fpd_bid(),
    .s_acp_fpd_bresp(),
    .s_acp_fpd_bvalid(),
    .s_acp_fpd_arready(),
    .s_acp_fpd_rid(),
    .s_acp_fpd_rdata(),
    .s_acp_fpd_rresp(),
    .s_acp_fpd_rlast(),
    .s_acp_fpd_rvalid(),
    .s_acp_fpd_inact(1'B0),
    .s_ace_fpd_aclk(1'B0),
    .s_ace_fpd_awid(6'B0),
    .s_ace_fpd_arbar(2'B0),
    .s_ace_fpd_ardomain(2'B0),
    .s_ace_fpd_arregion(4'B0),
    .s_ace_fpd_arsnoop(4'B0),
    .s_ace_fpd_awbar(2'B0),
    .s_ace_fpd_awdomain(2'B0),
    .s_ace_fpd_awregion(4'B0),
    .s_ace_fpd_awsnoop(3'B0),
    .s_ace_fpd_cdlast(1'B0),
    .s_ace_fpd_cdvalid(1'B0),
    .s_ace_fpd_crresp(5'B0),
    .s_ace_fpd_crvalid(1'B0),
    .s_ace_fpd_rack(1'B0),
    .s_ace_fpd_wack(1'B0),
    .s_ace_fpd_awaddr(44'B0),
    .s_ace_fpd_awlen(8'B0),
    .s_ace_fpd_awsize(3'B0),
    .s_ace_fpd_awburst(2'B0),
    .s_ace_fpd_awlock(1'B0),
    .s_ace_fpd_awcache(4'B0),
    .s_ace_fpd_awprot(3'B0),
    .s_ace_fpd_awvalid(1'B0),
    .s_ace_fpd_awuser(16'B0),
    .s_ace_fpd_wstrb(16'B0),
    .s_ace_fpd_wlast(1'B0),
    .s_ace_fpd_wvalid(1'B0),
    .s_ace_fpd_bready(1'B0),
    .s_ace_fpd_arid(6'B0),
    .s_ace_fpd_araddr(44'B0),
    .s_ace_fpd_arlen(8'B0),
    .s_ace_fpd_arsize(3'B0),
    .s_ace_fpd_arburst(2'B0),
    .s_ace_fpd_arlock(1'B0),
    .s_ace_fpd_arcache(4'B0),
    .s_ace_fpd_arprot(3'B0),
    .s_ace_fpd_arvalid(1'B0),
    .s_ace_fpd_aruser(16'B0),
    .s_ace_fpd_rready(1'B0),
    .s_ace_fpd_awqos(4'B0),
    .s_ace_fpd_arqos(4'B0),
    .s_ace_fpd_wdata(128'B0),
    .s_ace_fpd_cddata(128'B0),
    .s_ace_fpd_acready(1'B0),
    .s_ace_fpd_acaddr(),
    .s_ace_fpd_acprot(),
    .s_ace_fpd_acsnoop(),
    .s_ace_fpd_acvalid(),
    .s_ace_fpd_awready(),
    .s_ace_fpd_wready(),
    .s_ace_fpd_bid(),
    .s_ace_fpd_bresp(),
    .s_ace_fpd_buser(),
    .s_ace_fpd_bvalid(),
    .s_ace_fpd_cdready(),
    .s_ace_fpd_crready(),
    .s_ace_fpd_arready(),
    .s_ace_fpd_rid(),
    .s_ace_fpd_rdata(),
    .s_ace_fpd_rresp(),
    .s_ace_fpd_rlast(),
    .s_ace_fpd_ruser(),
    .s_ace_fpd_rvalid(),
    .canfd0_phy_tx(),
    .canfd0_phy_rx(1'B0),
    .canfd1_phy_tx(),
    .canfd1_phy_rx(1'B0),
    .gem0_gmii_rx_clk(1'B0),
    .gem0_gmii_crs(1'B0),
    .gem0_gmii_col(1'B0),
    .gem0_gmii_rx_d(8'B0),
    .gem0_gmii_rx_err(1'B0),
    .gem0_gmii_rx_dv(1'B0),
    .gem0_gmii_tx_clk(1'B0),
    .gem0_gmii_tx_d(),
    .gem0_gmii_tx_en(),
    .gem0_gmii_tx_err(),
    .gem0_mdio_mdc(),
    .gem0_mdio_i(1'B0),
    .gem0_mdio_o(),
    .gem0_mdio_t_n(),
    .gem1_gmii_rx_clk(1'B0),
    .gem1_gmii_crs(1'B0),
    .gem1_gmii_col(1'B0),
    .gem1_gmii_rx_d(8'B0),
    .gem1_gmii_rx_err(1'B0),
    .gem1_gmii_rx_dv(1'B0),
    .gem1_gmii_tx_clk(1'B0),
    .gem1_gmii_tx_d(),
    .gem1_gmii_tx_en(),
    .gem1_gmii_tx_err(),
    .gem1_mdio_mdc(),
    .gem1_mdio_i(1'B0),
    .gem1_mdio_o(),
    .gem1_mdio_t_n(),
    .gem0_ptp_tx_sof(),
    .gem0_ptp_sync_frame_tx(),
    .gem0_ptp_delay_req_tx(),
    .gem0_ptp_pdelay_req_tx(),
    .gem0_ptp_pdelay_resp_tx(),
    .gem0_ptp_rx_sof(),
    .gem0_ptp_sync_frame_rx(),
    .gem0_ptp_delay_req_rx(),
    .gem0_ptp_pdelay_req_rx(),
    .gem0_ptp_pdelay_resp_rx(),
    .gem0_tsu_inc_ctrl(2'B0),
    .gem0_tsu_timer_cmp_val(),
    .gem1_ptp_tx_sof(),
    .gem1_ptp_sync_frame_tx(),
    .gem1_ptp_delay_req_tx(),
    .gem1_ptp_pdelay_req_tx(),
    .gem1_ptp_pdelay_resp_tx(),
    .gem1_ptp_rx_sof(),
    .gem1_ptp_sync_frame_rx(),
    .gem1_ptp_delay_req_rx(),
    .gem1_ptp_pdelay_req_rx(),
    .gem1_ptp_pdelay_resp_rx(),
    .gem1_tsu_inc_ctrl(2'B0),
    .gem1_tsu_timer_cmp_val(),
    .i2c0_scl_i(1'B0),
    .i2c0_scl_o(),
    .i2c0_scl_t(),
    .i2c0_sda_i(1'B0),
    .i2c0_sda_o(),
    .i2c0_sda_tn(),
    .i2c1_scl_i(1'B0),
    .i2c1_scl_o(),
    .i2c1_scl_t(),
    .i2c1_sda_i(1'B0),
    .i2c1_sda_o(),
    .i2c1_sda_tn(),
    .pmc_i2c_scl_oen(),
    .pmc_i2c_scl_out(),
    .pmc_i2c_sda_oen(),
    .pmc_i2c_sda_out(),
    .pmc_i2c_scl_in(1'B0),
    .pmc_i2c_sda_in(1'B0),
    .spi0_sclk_i(1'B0),
    .spi0_sclk_o(),
    .spi0_sclk_t_n(),
    .spi0_m_i(1'B0),
    .spi0_m_o(),
    .spi0_m_o_t_n(),
    .spi0_s_i(1'B0),
    .spi0_s_o(),
    .spi0_s_t_n(),
    .spi0_ss_i_n(1'B0),
    .spi0_ss_o_n(),
    .spi0_ss_n_t_n(),
    .spi1_sclk_i(1'B0),
    .spi1_sclk_o(),
    .spi1_sclk_t_n(),
    .spi1_m_i(1'B0),
    .spi1_m_o(),
    .spi1_m_o_t_n(),
    .spi1_s_i(1'B0),
    .spi1_s_o(),
    .spi1_s_t_n(),
    .spi1_ss_i_n(1'B0),
    .spi1_ss_o_n(),
    .spi1_ss_n_t_n(),
    .emio_hub_port_overcrnt_usb2_0(1'B0),
    .emio_u2dsport_vbus_ctrl_usb3_0(),
    .gem0_fifo_tx_r_data_rdy(2'B0),
    .gem0_fifo_tx_r_rd(),
    .gem0_fifo_tx_r_valid(1'B0),
    .gem0_fifo_tx_r_data(8'B0),
    .gem0_fifo_tx_r_sop(1'B0),
    .gem0_fifo_tx_r_eop(1'B0),
    .gem0_fifo_tx_r_err(1'B0),
    .gem0_fifo_tx_r_underflow(1'B0),
    .gem0_fifo_tx_r_flushed(1'B0),
    .gem0_fifo_tx_r_control(1'B0),
    .gem0_fifo_dma_tx_end_tog(),
    .gem0_fifo_dma_tx_status_tog(1'B0),
    .gem0_fifo_tx_r_status(),
    .gem0_fifo_rx_w_wr(),
    .gem0_fifo_rx_w_data(),
    .gem0_fifo_rx_w_sop(),
    .gem0_fifo_rx_w_eop(),
    .gem0_fifo_rx_w_status(),
    .gem0_fifo_rx_w_err(),
    .gem0_fifo_rx_w_overflow(1'B0),
    .fmio_gem0_signal_detect(1'B0),
    .gem0_fifo_rx_w_flush(),
    .emio_gem0_tx_r_fixed_lat(),
    .gem1_fifo_tx_r_data_rdy(2'B0),
    .gem1_fifo_tx_r_data(8'B0),
    .gem1_fifo_tx_r_rd(),
    .gem1_fifo_tx_r_valid(1'B0),
    .gem1_fifo_tx_r_sop(1'B0),
    .gem1_fifo_tx_r_eop(1'B0),
    .gem1_fifo_tx_r_err(1'B0),
    .gem1_fifo_tx_r_underflow(1'B0),
    .gem1_fifo_tx_r_flushed(1'B0),
    .gem1_fifo_tx_r_control(1'B0),
    .gem1_fifo_dma_tx_end_tog(),
    .gem1_fifo_dma_tx_status_tog(1'B0),
    .gem1_fifo_tx_r_status(),
    .gem1_fifo_rx_w_wr(),
    .gem1_fifo_rx_w_data(),
    .gem1_fifo_rx_w_sop(),
    .gem1_fifo_rx_w_eop(),
    .gem1_fifo_rx_w_status(),
    .gem1_fifo_rx_w_err(),
    .gem1_fifo_rx_w_overflow(1'B0),
    .fmio_gem1_signal_detect(1'B0),
    .gem1_fifo_rx_w_flush(),
    .emio_gem1_tx_r_fixed_lat(),
    .lpd_gpio_o(),
    .lpd_gpio_tn(),
    .lpd_gpio_i(32'B0),
    .pmc_gpio_out(),
    .pmc_gpio_oen(),
    .pmc_gpio_in(64'B0),
    .trace_ref_clk(1'B0),
    .trace_ctrl(),
    .trace_data(),
    .trace_clk(),
    .fpd_cci_noc_axi0_clk(fpd_cci_noc_axi0_clk),
    .fpd_cci_noc_axi0_awid(fpd_cci_noc_axi0_awid),
    .fpd_cci_noc_axi0_awaddr(fpd_cci_noc_axi0_awaddr),
    .fpd_cci_noc_axi0_awlen(fpd_cci_noc_axi0_awlen),
    .fpd_cci_noc_axi0_awsize(fpd_cci_noc_axi0_awsize),
    .fpd_cci_noc_axi0_awburst(fpd_cci_noc_axi0_awburst),
    .fpd_cci_noc_axi0_awlock(fpd_cci_noc_axi0_awlock),
    .fpd_cci_noc_axi0_awcache(fpd_cci_noc_axi0_awcache),
    .fpd_cci_noc_axi0_awprot(fpd_cci_noc_axi0_awprot),
    .fpd_cci_noc_axi0_awvalid(fpd_cci_noc_axi0_awvalid),
    .fpd_cci_noc_axi0_awuser(fpd_cci_noc_axi0_awuser),
    .fpd_cci_noc_axi0_awready(fpd_cci_noc_axi0_awready),
    .fpd_cci_noc_axi0_wdata(fpd_cci_noc_axi0_wdata),
    .fpd_cci_noc_axi0_wstrb(fpd_cci_noc_axi0_wstrb),
    .fpd_cci_noc_axi0_wuser(fpd_cci_noc_axi0_wuser),
    .fpd_cci_noc_axi0_wlast(fpd_cci_noc_axi0_wlast),
    .fpd_cci_noc_axi0_wvalid(fpd_cci_noc_axi0_wvalid),
    .fpd_cci_noc_axi0_wready(fpd_cci_noc_axi0_wready),
    .fpd_cci_noc_axi0_bid(fpd_cci_noc_axi0_bid),
    .fpd_cci_noc_axi0_bresp(fpd_cci_noc_axi0_bresp),
    .fpd_cci_noc_axi0_bvalid(fpd_cci_noc_axi0_bvalid),
    .fpd_cci_noc_axi0_bready(fpd_cci_noc_axi0_bready),
    .fpd_cci_noc_axi0_arid(fpd_cci_noc_axi0_arid),
    .fpd_cci_noc_axi0_araddr(fpd_cci_noc_axi0_araddr),
    .fpd_cci_noc_axi0_arlen(fpd_cci_noc_axi0_arlen),
    .fpd_cci_noc_axi0_arsize(fpd_cci_noc_axi0_arsize),
    .fpd_cci_noc_axi0_arburst(fpd_cci_noc_axi0_arburst),
    .fpd_cci_noc_axi0_arlock(fpd_cci_noc_axi0_arlock),
    .fpd_cci_noc_axi0_arcache(fpd_cci_noc_axi0_arcache),
    .fpd_cci_noc_axi0_arprot(fpd_cci_noc_axi0_arprot),
    .fpd_cci_noc_axi0_arvalid(fpd_cci_noc_axi0_arvalid),
    .fpd_cci_noc_axi0_aruser(fpd_cci_noc_axi0_aruser),
    .fpd_cci_noc_axi0_arready(fpd_cci_noc_axi0_arready),
    .fpd_cci_noc_axi0_rid(fpd_cci_noc_axi0_rid),
    .fpd_cci_noc_axi0_rdata(fpd_cci_noc_axi0_rdata),
    .fpd_cci_noc_axi0_rresp(fpd_cci_noc_axi0_rresp),
    .fpd_cci_noc_axi0_rlast(fpd_cci_noc_axi0_rlast),
    .fpd_cci_noc_axi0_rvalid(fpd_cci_noc_axi0_rvalid),
    .fpd_cci_noc_axi0_rready(fpd_cci_noc_axi0_rready),
    .fpd_cci_noc_axi0_awqos(fpd_cci_noc_axi0_awqos),
    .fpd_cci_noc_axi0_arqos(fpd_cci_noc_axi0_arqos),
    .fpd_cci_noc_axi1_clk(fpd_cci_noc_axi1_clk),
    .fpd_cci_noc_axi1_awid(fpd_cci_noc_axi1_awid),
    .fpd_cci_noc_axi1_awaddr(fpd_cci_noc_axi1_awaddr),
    .fpd_cci_noc_axi1_awlen(fpd_cci_noc_axi1_awlen),
    .fpd_cci_noc_axi1_awsize(fpd_cci_noc_axi1_awsize),
    .fpd_cci_noc_axi1_awburst(fpd_cci_noc_axi1_awburst),
    .fpd_cci_noc_axi1_awlock(fpd_cci_noc_axi1_awlock),
    .fpd_cci_noc_axi1_awcache(fpd_cci_noc_axi1_awcache),
    .fpd_cci_noc_axi1_awprot(fpd_cci_noc_axi1_awprot),
    .fpd_cci_noc_axi1_awvalid(fpd_cci_noc_axi1_awvalid),
    .fpd_cci_noc_axi1_awuser(fpd_cci_noc_axi1_awuser),
    .fpd_cci_noc_axi1_awready(fpd_cci_noc_axi1_awready),
    .fpd_cci_noc_axi1_wdata(fpd_cci_noc_axi1_wdata),
    .fpd_cci_noc_axi1_wstrb(fpd_cci_noc_axi1_wstrb),
    .fpd_cci_noc_axi1_wuser(fpd_cci_noc_axi1_wuser),
    .fpd_cci_noc_axi1_wlast(fpd_cci_noc_axi1_wlast),
    .fpd_cci_noc_axi1_wvalid(fpd_cci_noc_axi1_wvalid),
    .fpd_cci_noc_axi1_wready(fpd_cci_noc_axi1_wready),
    .fpd_cci_noc_axi1_bid(fpd_cci_noc_axi1_bid),
    .fpd_cci_noc_axi1_bresp(fpd_cci_noc_axi1_bresp),
    .fpd_cci_noc_axi1_bvalid(fpd_cci_noc_axi1_bvalid),
    .fpd_cci_noc_axi1_bready(fpd_cci_noc_axi1_bready),
    .fpd_cci_noc_axi1_arid(fpd_cci_noc_axi1_arid),
    .fpd_cci_noc_axi1_araddr(fpd_cci_noc_axi1_araddr),
    .fpd_cci_noc_axi1_arlen(fpd_cci_noc_axi1_arlen),
    .fpd_cci_noc_axi1_arsize(fpd_cci_noc_axi1_arsize),
    .fpd_cci_noc_axi1_arburst(fpd_cci_noc_axi1_arburst),
    .fpd_cci_noc_axi1_arlock(fpd_cci_noc_axi1_arlock),
    .fpd_cci_noc_axi1_arcache(fpd_cci_noc_axi1_arcache),
    .fpd_cci_noc_axi1_arprot(fpd_cci_noc_axi1_arprot),
    .fpd_cci_noc_axi1_arvalid(fpd_cci_noc_axi1_arvalid),
    .fpd_cci_noc_axi1_aruser(fpd_cci_noc_axi1_aruser),
    .fpd_cci_noc_axi1_arready(fpd_cci_noc_axi1_arready),
    .fpd_cci_noc_axi1_rid(fpd_cci_noc_axi1_rid),
    .fpd_cci_noc_axi1_rdata(fpd_cci_noc_axi1_rdata),
    .fpd_cci_noc_axi1_rresp(fpd_cci_noc_axi1_rresp),
    .fpd_cci_noc_axi1_rlast(fpd_cci_noc_axi1_rlast),
    .fpd_cci_noc_axi1_rvalid(fpd_cci_noc_axi1_rvalid),
    .fpd_cci_noc_axi1_rready(fpd_cci_noc_axi1_rready),
    .fpd_cci_noc_axi1_awqos(fpd_cci_noc_axi1_awqos),
    .fpd_cci_noc_axi1_arqos(fpd_cci_noc_axi1_arqos),
    .fpd_cci_noc_axi2_clk(fpd_cci_noc_axi2_clk),
    .fpd_cci_noc_axi2_awid(fpd_cci_noc_axi2_awid),
    .fpd_cci_noc_axi2_awaddr(fpd_cci_noc_axi2_awaddr),
    .fpd_cci_noc_axi2_awlen(fpd_cci_noc_axi2_awlen),
    .fpd_cci_noc_axi2_awsize(fpd_cci_noc_axi2_awsize),
    .fpd_cci_noc_axi2_awburst(fpd_cci_noc_axi2_awburst),
    .fpd_cci_noc_axi2_awlock(fpd_cci_noc_axi2_awlock),
    .fpd_cci_noc_axi2_awcache(fpd_cci_noc_axi2_awcache),
    .fpd_cci_noc_axi2_awprot(fpd_cci_noc_axi2_awprot),
    .fpd_cci_noc_axi2_awvalid(fpd_cci_noc_axi2_awvalid),
    .fpd_cci_noc_axi2_awuser(fpd_cci_noc_axi2_awuser),
    .fpd_cci_noc_axi2_awready(fpd_cci_noc_axi2_awready),
    .fpd_cci_noc_axi2_wdata(fpd_cci_noc_axi2_wdata),
    .fpd_cci_noc_axi2_wstrb(fpd_cci_noc_axi2_wstrb),
    .fpd_cci_noc_axi2_wuser(fpd_cci_noc_axi2_wuser),
    .fpd_cci_noc_axi2_wlast(fpd_cci_noc_axi2_wlast),
    .fpd_cci_noc_axi2_wvalid(fpd_cci_noc_axi2_wvalid),
    .fpd_cci_noc_axi2_wready(fpd_cci_noc_axi2_wready),
    .fpd_cci_noc_axi2_bid(fpd_cci_noc_axi2_bid),
    .fpd_cci_noc_axi2_bresp(fpd_cci_noc_axi2_bresp),
    .fpd_cci_noc_axi2_bvalid(fpd_cci_noc_axi2_bvalid),
    .fpd_cci_noc_axi2_bready(fpd_cci_noc_axi2_bready),
    .fpd_cci_noc_axi2_arid(fpd_cci_noc_axi2_arid),
    .fpd_cci_noc_axi2_araddr(fpd_cci_noc_axi2_araddr),
    .fpd_cci_noc_axi2_arlen(fpd_cci_noc_axi2_arlen),
    .fpd_cci_noc_axi2_arsize(fpd_cci_noc_axi2_arsize),
    .fpd_cci_noc_axi2_arburst(fpd_cci_noc_axi2_arburst),
    .fpd_cci_noc_axi2_arlock(fpd_cci_noc_axi2_arlock),
    .fpd_cci_noc_axi2_arcache(fpd_cci_noc_axi2_arcache),
    .fpd_cci_noc_axi2_arprot(fpd_cci_noc_axi2_arprot),
    .fpd_cci_noc_axi2_arvalid(fpd_cci_noc_axi2_arvalid),
    .fpd_cci_noc_axi2_aruser(fpd_cci_noc_axi2_aruser),
    .fpd_cci_noc_axi2_arready(fpd_cci_noc_axi2_arready),
    .fpd_cci_noc_axi2_rid(fpd_cci_noc_axi2_rid),
    .fpd_cci_noc_axi2_rdata(fpd_cci_noc_axi2_rdata),
    .fpd_cci_noc_axi2_rresp(fpd_cci_noc_axi2_rresp),
    .fpd_cci_noc_axi2_rlast(fpd_cci_noc_axi2_rlast),
    .fpd_cci_noc_axi2_rvalid(fpd_cci_noc_axi2_rvalid),
    .fpd_cci_noc_axi2_rready(fpd_cci_noc_axi2_rready),
    .fpd_cci_noc_axi2_awqos(fpd_cci_noc_axi2_awqos),
    .fpd_cci_noc_axi2_arqos(fpd_cci_noc_axi2_arqos),
    .fpd_cci_noc_axi3_clk(fpd_cci_noc_axi3_clk),
    .fpd_cci_noc_axi3_awid(fpd_cci_noc_axi3_awid),
    .fpd_cci_noc_axi3_awaddr(fpd_cci_noc_axi3_awaddr),
    .fpd_cci_noc_axi3_awlen(fpd_cci_noc_axi3_awlen),
    .fpd_cci_noc_axi3_awsize(fpd_cci_noc_axi3_awsize),
    .fpd_cci_noc_axi3_awburst(fpd_cci_noc_axi3_awburst),
    .fpd_cci_noc_axi3_awlock(fpd_cci_noc_axi3_awlock),
    .fpd_cci_noc_axi3_awcache(fpd_cci_noc_axi3_awcache),
    .fpd_cci_noc_axi3_awprot(fpd_cci_noc_axi3_awprot),
    .fpd_cci_noc_axi3_awvalid(fpd_cci_noc_axi3_awvalid),
    .fpd_cci_noc_axi3_awuser(fpd_cci_noc_axi3_awuser),
    .fpd_cci_noc_axi3_wuser(fpd_cci_noc_axi3_wuser),
    .fpd_cci_noc_axi3_awready(fpd_cci_noc_axi3_awready),
    .fpd_cci_noc_axi3_wdata(fpd_cci_noc_axi3_wdata),
    .fpd_cci_noc_axi3_wstrb(fpd_cci_noc_axi3_wstrb),
    .fpd_cci_noc_axi3_wlast(fpd_cci_noc_axi3_wlast),
    .fpd_cci_noc_axi3_wvalid(fpd_cci_noc_axi3_wvalid),
    .fpd_cci_noc_axi3_wready(fpd_cci_noc_axi3_wready),
    .fpd_cci_noc_axi3_bid(fpd_cci_noc_axi3_bid),
    .fpd_cci_noc_axi3_bresp(fpd_cci_noc_axi3_bresp),
    .fpd_cci_noc_axi3_bvalid(fpd_cci_noc_axi3_bvalid),
    .fpd_cci_noc_axi3_bready(fpd_cci_noc_axi3_bready),
    .fpd_cci_noc_axi3_arid(fpd_cci_noc_axi3_arid),
    .fpd_cci_noc_axi3_araddr(fpd_cci_noc_axi3_araddr),
    .fpd_cci_noc_axi3_arlen(fpd_cci_noc_axi3_arlen),
    .fpd_cci_noc_axi3_arsize(fpd_cci_noc_axi3_arsize),
    .fpd_cci_noc_axi3_arburst(fpd_cci_noc_axi3_arburst),
    .fpd_cci_noc_axi3_arlock(fpd_cci_noc_axi3_arlock),
    .fpd_cci_noc_axi3_arcache(fpd_cci_noc_axi3_arcache),
    .fpd_cci_noc_axi3_arprot(fpd_cci_noc_axi3_arprot),
    .fpd_cci_noc_axi3_arvalid(fpd_cci_noc_axi3_arvalid),
    .fpd_cci_noc_axi3_aruser(fpd_cci_noc_axi3_aruser),
    .fpd_cci_noc_axi3_arready(fpd_cci_noc_axi3_arready),
    .fpd_cci_noc_axi3_rid(fpd_cci_noc_axi3_rid),
    .fpd_cci_noc_axi3_rdata(fpd_cci_noc_axi3_rdata),
    .fpd_cci_noc_axi3_rresp(fpd_cci_noc_axi3_rresp),
    .fpd_cci_noc_axi3_rlast(fpd_cci_noc_axi3_rlast),
    .fpd_cci_noc_axi3_rvalid(fpd_cci_noc_axi3_rvalid),
    .fpd_cci_noc_axi3_rready(fpd_cci_noc_axi3_rready),
    .fpd_cci_noc_axi3_awqos(fpd_cci_noc_axi3_awqos),
    .fpd_cci_noc_axi3_arqos(fpd_cci_noc_axi3_arqos),
    .fpd_axi_noc_axi0_clk(fpd_axi_noc_axi0_clk),
    .fpd_axi_noc_axi0_awid(fpd_axi_noc_axi0_awid),
    .fpd_axi_noc_axi0_awaddr(fpd_axi_noc_axi0_awaddr),
    .fpd_axi_noc_axi0_awlen(fpd_axi_noc_axi0_awlen),
    .fpd_axi_noc_axi0_awsize(fpd_axi_noc_axi0_awsize),
    .fpd_axi_noc_axi0_awburst(fpd_axi_noc_axi0_awburst),
    .fpd_axi_noc_axi0_awlock(fpd_axi_noc_axi0_awlock),
    .fpd_axi_noc_axi0_awcache(fpd_axi_noc_axi0_awcache),
    .fpd_axi_noc_axi0_awprot(fpd_axi_noc_axi0_awprot),
    .fpd_axi_noc_axi0_awvalid(fpd_axi_noc_axi0_awvalid),
    .fpd_axi_noc_axi0_awuser(fpd_axi_noc_axi0_awuser),
    .fpd_axi_noc_axi0_awready(fpd_axi_noc_axi0_awready),
    .fpd_axi_noc_axi0_wdata(fpd_axi_noc_axi0_wdata),
    .fpd_axi_noc_axi0_wstrb(fpd_axi_noc_axi0_wstrb),
    .fpd_axi_noc_axi0_wlast(fpd_axi_noc_axi0_wlast),
    .fpd_axi_noc_axi0_wvalid(fpd_axi_noc_axi0_wvalid),
    .fpd_axi_noc_axi0_wready(fpd_axi_noc_axi0_wready),
    .fpd_axi_noc_axi0_bid(fpd_axi_noc_axi0_bid),
    .fpd_axi_noc_axi0_bresp(fpd_axi_noc_axi0_bresp),
    .fpd_axi_noc_axi0_bvalid(fpd_axi_noc_axi0_bvalid),
    .fpd_axi_noc_axi0_bready(fpd_axi_noc_axi0_bready),
    .fpd_axi_noc_axi0_arid(fpd_axi_noc_axi0_arid),
    .fpd_axi_noc_axi0_araddr(fpd_axi_noc_axi0_araddr),
    .fpd_axi_noc_axi0_arlen(fpd_axi_noc_axi0_arlen),
    .fpd_axi_noc_axi0_arsize(fpd_axi_noc_axi0_arsize),
    .fpd_axi_noc_axi0_arburst(fpd_axi_noc_axi0_arburst),
    .fpd_axi_noc_axi0_arlock(fpd_axi_noc_axi0_arlock),
    .fpd_axi_noc_axi0_arcache(fpd_axi_noc_axi0_arcache),
    .fpd_axi_noc_axi0_arprot(fpd_axi_noc_axi0_arprot),
    .fpd_axi_noc_axi0_arvalid(fpd_axi_noc_axi0_arvalid),
    .fpd_axi_noc_axi0_aruser(fpd_axi_noc_axi0_aruser),
    .fpd_axi_noc_axi0_arready(fpd_axi_noc_axi0_arready),
    .fpd_axi_noc_axi0_rid(fpd_axi_noc_axi0_rid),
    .fpd_axi_noc_axi0_rdata(fpd_axi_noc_axi0_rdata),
    .fpd_axi_noc_axi0_rresp(fpd_axi_noc_axi0_rresp),
    .fpd_axi_noc_axi0_rlast(fpd_axi_noc_axi0_rlast),
    .fpd_axi_noc_axi0_rvalid(fpd_axi_noc_axi0_rvalid),
    .fpd_axi_noc_axi0_rready(fpd_axi_noc_axi0_rready),
    .fpd_axi_noc_axi0_awqos(fpd_axi_noc_axi0_awqos),
    .fpd_axi_noc_axi0_arqos(fpd_axi_noc_axi0_arqos),
    .noc_fpd_axi_axi1_clk(),
    .fpd_axi_noc_axi1_awid(),
    .fpd_axi_noc_axi1_awaddr(),
    .fpd_axi_noc_axi1_awlen(),
    .fpd_axi_noc_axi1_awsize(),
    .fpd_axi_noc_axi1_awburst(),
    .fpd_axi_noc_axi1_awlock(),
    .fpd_axi_noc_axi1_awcache(),
    .fpd_axi_noc_axi1_awprot(),
    .fpd_axi_noc_axi1_awvalid(),
    .fpd_axi_noc_axi1_awuser(),
    .fpd_axi_noc_axi1_awready(1'B0),
    .fpd_axi_noc_axi1_wdata(),
    .fpd_axi_noc_axi1_wstrb(),
    .fpd_axi_noc_axi1_wlast(),
    .fpd_axi_noc_axi1_wvalid(),
    .fpd_axi_noc_axi1_wready(1'B0),
    .fpd_axi_noc_axi1_bid(16'B0),
    .fpd_axi_noc_axi1_bresp(2'B0),
    .fpd_axi_noc_axi1_bvalid(1'B0),
    .fpd_axi_noc_axi1_bready(),
    .fpd_axi_noc_axi1_arid(),
    .fpd_axi_noc_axi1_araddr(),
    .fpd_axi_noc_axi1_arlen(),
    .fpd_axi_noc_axi1_arsize(),
    .fpd_axi_noc_axi1_arburst(),
    .fpd_axi_noc_axi1_arlock(),
    .fpd_axi_noc_axi1_arcache(),
    .fpd_axi_noc_axi1_arprot(),
    .fpd_axi_noc_axi1_arvalid(),
    .fpd_axi_noc_axi1_aruser(),
    .fpd_axi_noc_axi1_arready(1'B0),
    .fpd_axi_noc_axi1_rid(16'B0),
    .fpd_axi_noc_axi1_rdata(128'B0),
    .fpd_axi_noc_axi1_rresp(2'B0),
    .fpd_axi_noc_axi1_rlast(1'B0),
    .fpd_axi_noc_axi1_rvalid(1'B0),
    .fpd_axi_noc_axi1_rready(),
    .fpd_axi_noc_axi1_awqos(),
    .fpd_axi_noc_axi1_arqos(),
    .noc_fpd_cci_axi0_arready(),
    .noc_fpd_cci_axi0_awready(),
    .noc_fpd_cci_axi0_bid(),
    .noc_fpd_cci_axi0_bresp(),
    .noc_fpd_cci_axi0_buser(),
    .noc_fpd_cci_axi0_bvalid(),
    .noc_fpd_cci_axi0_rdata(),
    .noc_fpd_cci_axi0_rid(),
    .noc_fpd_cci_axi0_rlast(),
    .noc_fpd_cci_axi0_rresp(),
    .noc_fpd_cci_axi0_ruser(),
    .noc_fpd_cci_axi0_rvalid(),
    .noc_fpd_cci_axi0_wready(),
    .noc_fpd_cci_axi0_araddr(64'B0),
    .noc_fpd_cci_axi0_arburst(2'B0),
    .noc_fpd_cci_axi0_arcache(4'B0),
    .noc_fpd_cci_axi0_arid(2'B0),
    .noc_fpd_cci_axi0_arlen(8'B0),
    .noc_fpd_cci_axi0_arlock(1'B0),
    .noc_fpd_cci_axi0_arprot(3'B0),
    .noc_fpd_cci_axi0_arqos(4'B0),
    .noc_fpd_cci_axi0_arregion(4'B0),
    .noc_fpd_cci_axi0_arsize(3'B0),
    .noc_fpd_cci_axi0_aruser(18'B0),
    .noc_fpd_cci_axi0_arvalid(1'B0),
    .noc_fpd_cci_axi0_awaddr(64'B0),
    .noc_fpd_cci_axi0_awburst(2'B0),
    .noc_fpd_cci_axi0_awcache(4'B0),
    .noc_fpd_cci_axi0_awid(2'B0),
    .noc_fpd_cci_axi0_awlen(8'B0),
    .noc_fpd_cci_axi0_awlock(1'B0),
    .noc_fpd_cci_axi0_awprot(3'B0),
    .noc_fpd_cci_axi0_awqos(4'B0),
    .noc_fpd_cci_axi0_awregion(4'B0),
    .noc_fpd_cci_axi0_awsize(3'B0),
    .noc_fpd_cci_axi0_awuser(18'B0),
    .noc_fpd_cci_axi0_awvalid(1'B0),
    .noc_fpd_cci_axi0_bready(1'B0),
    .noc_fpd_cci_axi0_rready(1'B0),
    .noc_fpd_cci_axi0_wdata(128'B0),
    .noc_fpd_cci_axi0_wid(4'B0),
    .noc_fpd_cci_axi0_wlast(1'B0),
    .noc_fpd_cci_axi0_wstrb(16'B0),
    .noc_fpd_cci_axi0_wuser(17'B0),
    .noc_fpd_cci_axi0_wvalid(1'B0),
    .noc_fpd_cci_axi0_clk(),
    .noc_fpd_cci_axi1_arready(),
    .noc_fpd_cci_axi1_awready(),
    .noc_fpd_cci_axi1_bid(),
    .noc_fpd_cci_axi1_bresp(),
    .noc_fpd_cci_axi1_buser(),
    .noc_fpd_cci_axi1_bvalid(),
    .noc_fpd_cci_axi1_rdata(),
    .noc_fpd_cci_axi1_rid(),
    .noc_fpd_cci_axi1_rlast(),
    .noc_fpd_cci_axi1_rresp(),
    .noc_fpd_cci_axi1_ruser(),
    .noc_fpd_cci_axi1_rvalid(),
    .noc_fpd_cci_axi1_wready(),
    .noc_fpd_cci_axi1_araddr(64'B0),
    .noc_fpd_cci_axi1_arburst(2'B0),
    .noc_fpd_cci_axi1_arcache(4'B0),
    .noc_fpd_cci_axi1_arid(2'B0),
    .noc_fpd_cci_axi1_arlen(8'B0),
    .noc_fpd_cci_axi1_arlock(1'B0),
    .noc_fpd_cci_axi1_arprot(3'B0),
    .noc_fpd_cci_axi1_arqos(4'B0),
    .noc_fpd_cci_axi1_arregion(4'B0),
    .noc_fpd_cci_axi1_arsize(3'B0),
    .noc_fpd_cci_axi1_aruser(18'B0),
    .noc_fpd_cci_axi1_arvalid(1'B0),
    .noc_fpd_cci_axi1_awaddr(64'B0),
    .noc_fpd_cci_axi1_awburst(2'B0),
    .noc_fpd_cci_axi1_awcache(4'B0),
    .noc_fpd_cci_axi1_awid(2'B0),
    .noc_fpd_cci_axi1_awlen(8'B0),
    .noc_fpd_cci_axi1_awlock(1'B0),
    .noc_fpd_cci_axi1_awprot(3'B0),
    .noc_fpd_cci_axi1_awqos(4'B0),
    .noc_fpd_cci_axi1_awregion(4'B0),
    .noc_fpd_cci_axi1_awsize(3'B0),
    .noc_fpd_cci_axi1_awuser(18'B0),
    .noc_fpd_cci_axi1_awvalid(1'B0),
    .noc_fpd_cci_axi1_bready(1'B0),
    .noc_fpd_cci_axi1_rready(1'B0),
    .noc_fpd_cci_axi1_wdata(128'B0),
    .noc_fpd_cci_axi1_wid(4'B0),
    .noc_fpd_cci_axi1_wlast(1'B0),
    .noc_fpd_cci_axi1_wstrb(16'B0),
    .noc_fpd_cci_axi1_wuser(17'B0),
    .noc_fpd_cci_axi1_wvalid(1'B0),
    .noc_fpd_cci_axi1_clk(),
    .cpm_pcie_noc_axi0_clk(cpm_pcie_noc_axi0_clk),
    .cpm_pcie_noc_axi0_awid(cpm_pcie_noc_axi0_awid),
    .cpm_pcie_noc_axi0_awaddr(cpm_pcie_noc_axi0_awaddr),
    .cpm_pcie_noc_axi0_awlen(cpm_pcie_noc_axi0_awlen),
    .cpm_pcie_noc_axi0_awsize(cpm_pcie_noc_axi0_awsize),
    .cpm_pcie_noc_axi0_awburst(cpm_pcie_noc_axi0_awburst),
    .cpm_pcie_noc_axi0_awlock(cpm_pcie_noc_axi0_awlock),
    .cpm_pcie_noc_axi0_awcache(cpm_pcie_noc_axi0_awcache),
    .cpm_pcie_noc_axi0_awprot(cpm_pcie_noc_axi0_awprot),
    .cpm_pcie_noc_axi0_awvalid(cpm_pcie_noc_axi0_awvalid),
    .cpm_pcie_noc_axi0_awuser(cpm_pcie_noc_axi0_awuser),
    .cpm_pcie_noc_axi0_awready(cpm_pcie_noc_axi0_awready),
    .cpm_pcie_noc_axi0_wdata(cpm_pcie_noc_axi0_wdata),
    .cpm_pcie_noc_axi0_wstrb(cpm_pcie_noc_axi0_wstrb),
    .cpm_pcie_noc_axi0_wlast(cpm_pcie_noc_axi0_wlast),
    .cpm_pcie_noc_axi0_wvalid(cpm_pcie_noc_axi0_wvalid),
    .cpm_pcie_noc_axi0_wready(cpm_pcie_noc_axi0_wready),
    .cpm_pcie_noc_axi0_bid(cpm_pcie_noc_axi0_bid),
    .cpm_pcie_noc_axi0_bresp(cpm_pcie_noc_axi0_bresp),
    .cpm_pcie_noc_axi0_bvalid(cpm_pcie_noc_axi0_bvalid),
    .cpm_pcie_noc_axi0_bready(cpm_pcie_noc_axi0_bready),
    .cpm_pcie_noc_axi0_arid(cpm_pcie_noc_axi0_arid),
    .cpm_pcie_noc_axi0_araddr(cpm_pcie_noc_axi0_araddr),
    .cpm_pcie_noc_axi0_arlen(cpm_pcie_noc_axi0_arlen),
    .cpm_pcie_noc_axi0_arsize(cpm_pcie_noc_axi0_arsize),
    .cpm_pcie_noc_axi0_arburst(cpm_pcie_noc_axi0_arburst),
    .cpm_pcie_noc_axi0_arlock(cpm_pcie_noc_axi0_arlock),
    .cpm_pcie_noc_axi0_arcache(cpm_pcie_noc_axi0_arcache),
    .cpm_pcie_noc_axi0_arprot(cpm_pcie_noc_axi0_arprot),
    .cpm_pcie_noc_axi0_arvalid(cpm_pcie_noc_axi0_arvalid),
    .cpm_pcie_noc_axi0_aruser(cpm_pcie_noc_axi0_aruser),
    .cpm_pcie_noc_axi0_arready(cpm_pcie_noc_axi0_arready),
    .cpm_pcie_noc_axi0_rid(cpm_pcie_noc_axi0_rid),
    .cpm_pcie_noc_axi0_rdata(cpm_pcie_noc_axi0_rdata),
    .cpm_pcie_noc_axi0_rresp(cpm_pcie_noc_axi0_rresp),
    .cpm_pcie_noc_axi0_rlast(cpm_pcie_noc_axi0_rlast),
    .cpm_pcie_noc_axi0_rvalid(cpm_pcie_noc_axi0_rvalid),
    .cpm_pcie_noc_axi0_rready(cpm_pcie_noc_axi0_rready),
    .cpm_pcie_noc_axi0_awqos(cpm_pcie_noc_axi0_awqos),
    .cpm_pcie_noc_axi0_arqos(cpm_pcie_noc_axi0_arqos),
    .cpm_pcie_noc_axi1_clk(cpm_pcie_noc_axi1_clk),
    .cpm_pcie_noc_axi1_awid(cpm_pcie_noc_axi1_awid),
    .cpm_pcie_noc_axi1_awaddr(cpm_pcie_noc_axi1_awaddr),
    .cpm_pcie_noc_axi1_awlen(cpm_pcie_noc_axi1_awlen),
    .cpm_pcie_noc_axi1_awsize(cpm_pcie_noc_axi1_awsize),
    .cpm_pcie_noc_axi1_awburst(cpm_pcie_noc_axi1_awburst),
    .cpm_pcie_noc_axi1_awlock(cpm_pcie_noc_axi1_awlock),
    .cpm_pcie_noc_axi1_awcache(cpm_pcie_noc_axi1_awcache),
    .cpm_pcie_noc_axi1_awprot(cpm_pcie_noc_axi1_awprot),
    .cpm_pcie_noc_axi1_awvalid(cpm_pcie_noc_axi1_awvalid),
    .cpm_pcie_noc_axi1_awuser(cpm_pcie_noc_axi1_awuser),
    .cpm_pcie_noc_axi1_awready(cpm_pcie_noc_axi1_awready),
    .cpm_pcie_noc_axi1_wdata(cpm_pcie_noc_axi1_wdata),
    .cpm_pcie_noc_axi1_wstrb(cpm_pcie_noc_axi1_wstrb),
    .cpm_pcie_noc_axi1_wlast(cpm_pcie_noc_axi1_wlast),
    .cpm_pcie_noc_axi1_wvalid(cpm_pcie_noc_axi1_wvalid),
    .cpm_pcie_noc_axi1_wready(cpm_pcie_noc_axi1_wready),
    .cpm_pcie_noc_axi1_bid(cpm_pcie_noc_axi1_bid),
    .cpm_pcie_noc_axi1_bresp(cpm_pcie_noc_axi1_bresp),
    .cpm_pcie_noc_axi1_bvalid(cpm_pcie_noc_axi1_bvalid),
    .cpm_pcie_noc_axi1_bready(cpm_pcie_noc_axi1_bready),
    .cpm_pcie_noc_axi1_arid(cpm_pcie_noc_axi1_arid),
    .cpm_pcie_noc_axi1_araddr(cpm_pcie_noc_axi1_araddr),
    .cpm_pcie_noc_axi1_arlen(cpm_pcie_noc_axi1_arlen),
    .cpm_pcie_noc_axi1_arsize(cpm_pcie_noc_axi1_arsize),
    .cpm_pcie_noc_axi1_arburst(cpm_pcie_noc_axi1_arburst),
    .cpm_pcie_noc_axi1_arlock(cpm_pcie_noc_axi1_arlock),
    .cpm_pcie_noc_axi1_arcache(cpm_pcie_noc_axi1_arcache),
    .cpm_pcie_noc_axi1_arprot(cpm_pcie_noc_axi1_arprot),
    .cpm_pcie_noc_axi1_arvalid(cpm_pcie_noc_axi1_arvalid),
    .cpm_pcie_noc_axi1_aruser(cpm_pcie_noc_axi1_aruser),
    .cpm_pcie_noc_axi1_arready(cpm_pcie_noc_axi1_arready),
    .cpm_pcie_noc_axi1_rid(cpm_pcie_noc_axi1_rid),
    .cpm_pcie_noc_axi1_rdata(cpm_pcie_noc_axi1_rdata),
    .cpm_pcie_noc_axi1_rresp(cpm_pcie_noc_axi1_rresp),
    .cpm_pcie_noc_axi1_rlast(cpm_pcie_noc_axi1_rlast),
    .cpm_pcie_noc_axi1_rvalid(cpm_pcie_noc_axi1_rvalid),
    .cpm_pcie_noc_axi1_rready(cpm_pcie_noc_axi1_rready),
    .cpm_pcie_noc_axi1_awqos(cpm_pcie_noc_axi1_awqos),
    .cpm_pcie_noc_axi1_arqos(cpm_pcie_noc_axi1_arqos),
    .noc_cpm_pcie_axi0_clk(),
    .lpd_axi_noc_clk(lpd_axi_noc_clk),
    .noc_lpd_axi_axi0_awid(noc_lpd_axi_axi0_awid),
    .noc_lpd_axi_axi0_awaddr(noc_lpd_axi_axi0_awaddr),
    .noc_lpd_axi_axi0_awlen(noc_lpd_axi_axi0_awlen),
    .noc_lpd_axi_axi0_awsize(noc_lpd_axi_axi0_awsize),
    .noc_lpd_axi_axi0_awburst(noc_lpd_axi_axi0_awburst),
    .noc_lpd_axi_axi0_awlock(noc_lpd_axi_axi0_awlock),
    .noc_lpd_axi_axi0_awcache(noc_lpd_axi_axi0_awcache),
    .noc_lpd_axi_axi0_awprot(noc_lpd_axi_axi0_awprot),
    .noc_lpd_axi_axi0_awvalid(noc_lpd_axi_axi0_awvalid),
    .noc_lpd_axi_axi0_awuser(noc_lpd_axi_axi0_awuser),
    .noc_lpd_axi_axi0_awready(noc_lpd_axi_axi0_awready),
    .noc_lpd_axi_axi0_wdata(noc_lpd_axi_axi0_wdata),
    .noc_lpd_axi_axi0_wstrb(noc_lpd_axi_axi0_wstrb),
    .noc_lpd_axi_axi0_wlast(noc_lpd_axi_axi0_wlast),
    .noc_lpd_axi_axi0_wvalid(noc_lpd_axi_axi0_wvalid),
    .noc_lpd_axi_axi0_wready(noc_lpd_axi_axi0_wready),
    .noc_lpd_axi_axi0_bid(noc_lpd_axi_axi0_bid),
    .noc_lpd_axi_axi0_bresp(noc_lpd_axi_axi0_bresp),
    .noc_lpd_axi_axi0_bvalid(noc_lpd_axi_axi0_bvalid),
    .noc_lpd_axi_axi0_bready(noc_lpd_axi_axi0_bready),
    .noc_lpd_axi_axi0_arid(noc_lpd_axi_axi0_arid),
    .noc_lpd_axi_axi0_araddr(noc_lpd_axi_axi0_araddr),
    .noc_lpd_axi_axi0_arlen(noc_lpd_axi_axi0_arlen),
    .noc_lpd_axi_axi0_arsize(noc_lpd_axi_axi0_arsize),
    .noc_lpd_axi_axi0_arburst(noc_lpd_axi_axi0_arburst),
    .noc_lpd_axi_axi0_arlock(noc_lpd_axi_axi0_arlock),
    .noc_lpd_axi_axi0_arcache(noc_lpd_axi_axi0_arcache),
    .noc_lpd_axi_axi0_arprot(noc_lpd_axi_axi0_arprot),
    .noc_lpd_axi_axi0_arvalid(noc_lpd_axi_axi0_arvalid),
    .noc_lpd_axi_axi0_aruser(noc_lpd_axi_axi0_aruser),
    .noc_lpd_axi_axi0_arready(noc_lpd_axi_axi0_arready),
    .noc_lpd_axi_axi0_rid(noc_lpd_axi_axi0_rid),
    .noc_lpd_axi_axi0_rdata(noc_lpd_axi_axi0_rdata),
    .noc_lpd_axi_axi0_rresp(noc_lpd_axi_axi0_rresp),
    .noc_lpd_axi_axi0_rlast(noc_lpd_axi_axi0_rlast),
    .noc_lpd_axi_axi0_rvalid(noc_lpd_axi_axi0_rvalid),
    .noc_lpd_axi_axi0_rready(noc_lpd_axi_axi0_rready),
    .noc_lpd_axi_axi0_awqos(noc_lpd_axi_axi0_awqos),
    .noc_lpd_axi_axi0_arqos(noc_lpd_axi_axi0_arqos),
    .ttc0_waveo(),
    .ttc0_clk(3'B0),
    .ttc1_waveo(),
    .ttc1_clk(3'B0),
    .ttc2_waveo(),
    .ttc2_clk(3'B0),
    .ttc3_waveo(),
    .ttc3_clk(3'B0),
    .lpd_dma_clk0(1'B0),
    .lpd_dma0_cvld(1'B0),
    .lpd_dma0_tack(1'B0),
    .lpd_dma0_cack(),
    .lpd_dma0_tvld(),
    .lpd_dma_clk1(1'B0),
    .lpd_dma1_cvld(1'B0),
    .lpd_dma1_tack(1'B0),
    .lpd_dma1_cack(),
    .lpd_dma1_tvld(),
    .lpd_dma_clk2(1'B0),
    .lpd_dma2_cvld(1'B0),
    .lpd_dma2_tack(1'B0),
    .lpd_dma2_cack(),
    .lpd_dma2_tvld(),
    .lpd_dma_clk3(1'B0),
    .lpd_dma3_cvld(1'B0),
    .lpd_dma3_tack(1'B0),
    .lpd_dma3_cack(),
    .lpd_dma3_tvld(),
    .lpd_dma_clk4(1'B0),
    .lpd_dma4_cvld(1'B0),
    .lpd_dma4_tack(1'B0),
    .lpd_dma4_cack(),
    .lpd_dma4_tvld(),
    .lpd_dma_clk5(1'B0),
    .lpd_dma5_cvld(1'B0),
    .lpd_dma5_tack(1'B0),
    .lpd_dma5_cack(),
    .lpd_dma5_tvld(),
    .lpd_dma_clk6(1'B0),
    .lpd_dma6_cvld(1'B0),
    .lpd_dma6_tack(1'B0),
    .lpd_dma6_cack(),
    .lpd_dma6_tvld(),
    .lpd_dma_clk7(1'B0),
    .lpd_dma7_cvld(1'B0),
    .lpd_dma7_tack(1'B0),
    .lpd_dma7_cack(),
    .lpd_dma7_tvld(),
    .apu_event_i(1'B0),
    .apu_event_o(),
    .apu_event_standby_wfe(),
    .apu_event_standby_wfi(),
    .pl_ps_apu_gic_irq(2'B0),
    .pl_ps_apu_gic_fiq(2'B0),
    .lpd_rpu_event_i0(1'B0),
    .lpd_rpu_event_i1(1'B0),
    .lpd_rpu_event_o0(),
    .lpd_rpu_event_o1(),
    .lpd_rpu_fiq0n(1'B1),
    .lpd_rpu_fiq1n(1'B1),
    .lpd_rpu_irq0n(1'B1),
    .lpd_rpu_irq1n(1'B1),
    .stm_event(60'B0),
    .pl_ps_trig0_ack(),
    .pl_ps_trig0_req(1'B0),
    .pl_ps_trig1_ack(),
    .pl_ps_trig1_req(1'B0),
    .pl_ps_trig2_ack(),
    .pl_ps_trig2_req(1'B0),
    .pl_ps_trig3_ack(),
    .pl_ps_trig3_req(1'B0),
    .ps_pl_trig0_req(),
    .ps_pl_trig0_ack(1'B0),
    .ps_pl_trig1_req(),
    .ps_pl_trig1_ack(1'B0),
    .ps_pl_trig2_req(),
    .ps_pl_trig2_ack(1'B0),
    .ps_pl_trig3_req(),
    .ps_pl_trig3_ack(1'B0),
    .pl_ps_irq0(1'B0),
    .pl_ps_irq1(1'B0),
    .pl_ps_irq2(1'B0),
    .pl_ps_irq3(1'B0),
    .pl_ps_irq4(1'B0),
    .pl_ps_irq5(1'B0),
    .pl_ps_irq6(1'B0),
    .pl_ps_irq7(1'B0),
    .pl_ps_irq8(1'B0),
    .pl_ps_irq9(1'B0),
    .pl_ps_irq10(1'B0),
    .pl_ps_irq11(1'B0),
    .pl_ps_irq12(1'B0),
    .pl_ps_irq13(1'B0),
    .pl_ps_irq14(1'B0),
    .pl_ps_irq15(1'B0),
    .rtc_clk(),
    .aib_pmu_afi_fm_lpd_ack(1'B0),
    .aib_pmu_afi_fm_fpd_ack(1'B0),
    .pmu_aib_afi_fm_fpd_req(),
    .pmu_aib_afi_fm_lpd_req(),
    .pmu_error_from_pl(4'B0),
    .pmu_error_to_pl(),
    .fpd_axi_noc_axi1_clk(),
    .noc_fpd_axi_axi0_clk(),
    .noc_fpd_axi_axi0_awaddr(64'B0),
    .noc_fpd_axi_axi0_awlen(8'B0),
    .noc_fpd_axi_axi0_awsize(3'B0),
    .noc_fpd_axi_axi0_awburst(2'B0),
    .noc_fpd_axi_axi0_awlock(1'B0),
    .noc_fpd_axi_axi0_awcache(4'B0),
    .noc_fpd_axi_axi0_awid(2'B0),
    .noc_fpd_axi_axi0_awprot(3'B0),
    .noc_fpd_axi_axi0_awvalid(1'B0),
    .noc_fpd_axi_axi0_bready(1'B0),
    .noc_fpd_axi_axi0_awuser(18'B0),
    .noc_fpd_axi_axi0_wdata(128'B0),
    .noc_fpd_axi_axi0_wid(4'B0),
    .noc_fpd_axi_axi0_wstrb(16'B0),
    .noc_fpd_axi_axi0_wuser(17'B0),
    .noc_fpd_axi_axi0_wlast(1'B0),
    .noc_fpd_axi_axi0_wvalid(1'B0),
    .noc_fpd_axi_axi0_araddr(64'B0),
    .noc_fpd_axi_axi0_arlen(8'B0),
    .noc_fpd_axi_axi0_arsize(3'B0),
    .noc_fpd_axi_axi0_arburst(2'B0),
    .noc_fpd_axi_axi0_arlock(1'B0),
    .noc_fpd_axi_axi0_arcache(4'B0),
    .noc_fpd_axi_axi0_arid(2'B0),
    .noc_fpd_axi_axi0_arprot(3'B0),
    .noc_fpd_axi_axi0_arvalid(1'B0),
    .noc_fpd_axi_axi0_aruser(18'B0),
    .noc_fpd_axi_axi0_rready(1'B0),
    .noc_fpd_axi_axi0_awqos(4'B0),
    .noc_fpd_axi_axi0_awregion(4'B0),
    .noc_fpd_axi_axi0_arqos(4'B0),
    .noc_fpd_axi_axi0_arregion(4'B0),
    .noc_fpd_axi_axi0_arready(),
    .noc_fpd_axi_axi0_awready(),
    .noc_fpd_axi_axi0_bid(),
    .noc_fpd_axi_axi0_bresp(),
    .noc_fpd_axi_axi0_buser(),
    .noc_fpd_axi_axi0_bvalid(),
    .noc_fpd_axi_axi0_rdata(),
    .noc_fpd_axi_axi0_rid(),
    .noc_fpd_axi_axi0_rlast(),
    .noc_fpd_axi_axi0_rresp(),
    .noc_fpd_axi_axi0_ruser(),
    .noc_fpd_axi_axi0_rvalid(),
    .noc_fpd_axi_axi0_wready(),
    .noc_fpd_axi_axi1_awaddr(64'B0),
    .noc_fpd_axi_axi1_awlen(8'B0),
    .noc_fpd_axi_axi1_awsize(3'B0),
    .noc_fpd_axi_axi1_awburst(2'B0),
    .noc_fpd_axi_axi1_awlock(1'B0),
    .noc_fpd_axi_axi1_awcache(4'B0),
    .noc_fpd_axi_axi1_awid(2'B0),
    .noc_fpd_axi_axi1_awprot(3'B0),
    .noc_fpd_axi_axi1_awvalid(1'B0),
    .noc_fpd_axi_axi1_bready(1'B0),
    .noc_fpd_axi_axi1_awuser(18'B0),
    .noc_fpd_axi_axi1_wdata(128'B0),
    .noc_fpd_axi_axi1_wid(4'B0),
    .noc_fpd_axi_axi1_wstrb(16'B0),
    .noc_fpd_axi_axi1_wuser(17'B0),
    .noc_fpd_axi_axi1_wlast(1'B0),
    .noc_fpd_axi_axi1_wvalid(1'B0),
    .noc_fpd_axi_axi1_araddr(64'B0),
    .noc_fpd_axi_axi1_arlen(8'B0),
    .noc_fpd_axi_axi1_arsize(3'B0),
    .noc_fpd_axi_axi1_arburst(2'B0),
    .noc_fpd_axi_axi1_arlock(1'B0),
    .noc_fpd_axi_axi1_arcache(4'B0),
    .noc_fpd_axi_axi1_arid(2'B0),
    .noc_fpd_axi_axi1_arprot(3'B0),
    .noc_fpd_axi_axi1_arvalid(1'B0),
    .noc_fpd_axi_axi1_aruser(18'B0),
    .noc_fpd_axi_axi1_rready(1'B0),
    .noc_fpd_axi_axi1_awqos(4'B0),
    .noc_fpd_axi_axi1_awregion(4'B0),
    .noc_fpd_axi_axi1_arqos(4'B0),
    .noc_fpd_axi_axi1_arregion(4'B0),
    .noc_fpd_axi_axi1_arready(),
    .noc_fpd_axi_axi1_awready(),
    .noc_fpd_axi_axi1_bid(),
    .noc_fpd_axi_axi1_bresp(),
    .noc_fpd_axi_axi1_buser(),
    .noc_fpd_axi_axi1_bvalid(),
    .noc_fpd_axi_axi1_rdata(),
    .noc_fpd_axi_axi1_rid(),
    .noc_fpd_axi_axi1_rlast(),
    .noc_fpd_axi_axi1_rresp(),
    .noc_fpd_axi_axi1_ruser(),
    .noc_fpd_axi_axi1_rvalid(),
    .noc_fpd_axi_axi1_wready(),
    .noc_cpm_pcie_axi0_arready(),
    .noc_cpm_pcie_axi0_awready(),
    .noc_cpm_pcie_axi0_bid(),
    .noc_cpm_pcie_axi0_bresp(),
    .noc_cpm_pcie_axi0_buser(),
    .noc_cpm_pcie_axi0_bvalid(),
    .noc_cpm_pcie_axi0_rdata(),
    .noc_cpm_pcie_axi0_rid(),
    .noc_cpm_pcie_axi0_rlast(),
    .noc_cpm_pcie_axi0_rresp(),
    .noc_cpm_pcie_axi0_ruser(),
    .noc_cpm_pcie_axi0_rvalid(),
    .noc_cpm_pcie_axi0_wready(),
    .noc_cpm_pcie_axi0_araddr(64'B0),
    .noc_cpm_pcie_axi0_arburst(2'B0),
    .noc_cpm_pcie_axi0_arcache(4'B0),
    .noc_cpm_pcie_axi0_arid(2'B0),
    .noc_cpm_pcie_axi0_arlen(8'B0),
    .noc_cpm_pcie_axi0_arlock(1'B0),
    .noc_cpm_pcie_axi0_arprot(3'B0),
    .noc_cpm_pcie_axi0_arqos(4'B0),
    .noc_cpm_pcie_axi0_arregion(4'B0),
    .noc_cpm_pcie_axi0_arsize(3'B0),
    .noc_cpm_pcie_axi0_aruser(18'B0),
    .noc_cpm_pcie_axi0_arvalid(1'B0),
    .noc_cpm_pcie_axi0_awaddr(64'B0),
    .noc_cpm_pcie_axi0_awburst(2'B0),
    .noc_cpm_pcie_axi0_awcache(4'B0),
    .noc_cpm_pcie_axi0_awid(2'B0),
    .noc_cpm_pcie_axi0_awlen(8'B0),
    .noc_cpm_pcie_axi0_awlock(1'B0),
    .noc_cpm_pcie_axi0_awprot(3'B0),
    .noc_cpm_pcie_axi0_awqos(4'B0),
    .noc_cpm_pcie_axi0_awregion(4'B0),
    .noc_cpm_pcie_axi0_awsize(3'B0),
    .noc_cpm_pcie_axi0_awuser(18'B0),
    .noc_cpm_pcie_axi0_awvalid(1'B0),
    .noc_cpm_pcie_axi0_bready(1'B0),
    .noc_cpm_pcie_axi0_rready(1'B0),
    .noc_cpm_pcie_axi0_wdata(128'B0),
    .noc_cpm_pcie_axi0_wid(4'B0),
    .noc_cpm_pcie_axi0_wlast(1'B0),
    .noc_cpm_pcie_axi0_wstrb(16'B0),
    .noc_cpm_pcie_axi0_wvalid(1'B0),
    .pl_pmc_aux_ref_clk(1'B0),
    .pl_fpd_aux_ref_clk(1'B0),
    .pl_lpd_aux_ref_clk(1'B0),
    .pmc_iro_clk(),
    .pl0_ref_clk(),
    .pl1_ref_clk(),
    .pl2_ref_clk(),
    .pl3_ref_clk(),
    .pl0_resetn(),
    .pl1_resetn(),
    .pl2_resetn(),
    .pl3_resetn(),
    .uart0_sir_outn(),
    .uart0_dtrn(),
    .uart0_out1n(),
    .uart0_out2n(),
    .uart0_rtsn(),
    .uart0_txd(),
    .uart0_ctsn(1'B0),
    .uart0_dcdn(1'B0),
    .uart0_dsrn(1'B0),
    .uart0_rin(1'B0),
    .uart0_rxd(1'B0),
    .fmio_uart0_sir_in(1'B0),
    .uart1_sir_outn(),
    .uart1_dtrn(),
    .uart1_out1n(),
    .uart1_out2n(),
    .uart1_rtsn(),
    .uart1_txd(),
    .uart1_ctsn(1'B0),
    .uart1_dcdn(1'B0),
    .uart1_dsrn(1'B0),
    .uart1_rin(1'B0),
    .uart1_rxd(1'B0),
    .fmio_uart1_sir_in(1'B0),
    .pmc_noc_axi0_araddr(pmc_noc_axi0_araddr),
    .pmc_noc_axi0_arburst(pmc_noc_axi0_arburst),
    .pmc_noc_axi0_arcache(pmc_noc_axi0_arcache),
    .pmc_noc_axi0_arid(pmc_noc_axi0_arid),
    .pmc_noc_axi0_arlen(pmc_noc_axi0_arlen),
    .pmc_noc_axi0_arlock(pmc_noc_axi0_arlock),
    .pmc_noc_axi0_arprot(pmc_noc_axi0_arprot),
    .pmc_noc_axi0_arqos(pmc_noc_axi0_arqos),
    .pmc_noc_axi0_arregion(pmc_noc_axi0_arregion),
    .pmc_noc_axi0_arsize(pmc_noc_axi0_arsize),
    .pmc_noc_axi0_aruser(pmc_noc_axi0_aruser),
    .pmc_noc_axi0_arvalid(pmc_noc_axi0_arvalid),
    .pmc_noc_axi0_awaddr(pmc_noc_axi0_awaddr),
    .pmc_noc_axi0_awburst(pmc_noc_axi0_awburst),
    .pmc_noc_axi0_awcache(pmc_noc_axi0_awcache),
    .pmc_noc_axi0_awid(pmc_noc_axi0_awid),
    .pmc_noc_axi0_awlen(pmc_noc_axi0_awlen),
    .pmc_noc_axi0_awlock(pmc_noc_axi0_awlock),
    .pmc_noc_axi0_awprot(pmc_noc_axi0_awprot),
    .pmc_noc_axi0_awqos(pmc_noc_axi0_awqos),
    .pmc_noc_axi0_awregion(pmc_noc_axi0_awregion),
    .pmc_noc_axi0_awsize(pmc_noc_axi0_awsize),
    .pmc_noc_axi0_awuser(pmc_noc_axi0_awuser),
    .pmc_noc_axi0_awvalid(pmc_noc_axi0_awvalid),
    .pmc_noc_axi0_bready(pmc_noc_axi0_bready),
    .pmc_noc_axi0_rready(pmc_noc_axi0_rready),
    .pmc_noc_axi0_wdata(pmc_noc_axi0_wdata),
    .pmc_noc_axi0_wid(pmc_noc_axi0_wid),
    .pmc_noc_axi0_wlast(pmc_noc_axi0_wlast),
    .pmc_noc_axi0_wstrb(pmc_noc_axi0_wstrb),
    .pmc_noc_axi0_wuser(pmc_noc_axi0_wuser),
    .pmc_noc_axi0_wvalid(pmc_noc_axi0_wvalid),
    .pmc_axi_noc_axi0_clk(pmc_axi_noc_axi0_clk),
    .pmc_noc_axi0_arready(pmc_noc_axi0_arready),
    .pmc_noc_axi0_awready(pmc_noc_axi0_awready),
    .pmc_noc_axi0_bid(pmc_noc_axi0_bid),
    .pmc_noc_axi0_bresp(pmc_noc_axi0_bresp),
    .pmc_noc_axi0_buser(pmc_noc_axi0_buser),
    .pmc_noc_axi0_bvalid(pmc_noc_axi0_bvalid),
    .pmc_noc_axi0_rdata(pmc_noc_axi0_rdata),
    .pmc_noc_axi0_rid(pmc_noc_axi0_rid),
    .pmc_noc_axi0_rlast(pmc_noc_axi0_rlast),
    .pmc_noc_axi0_rresp(pmc_noc_axi0_rresp),
    .pmc_noc_axi0_ruser(pmc_noc_axi0_ruser),
    .pmc_noc_axi0_rvalid(pmc_noc_axi0_rvalid),
    .pmc_noc_axi0_wready(pmc_noc_axi0_wready),
    .noc_pmc_axi0_arready(),
    .noc_pmc_axi0_awready(),
    .noc_pmc_axi0_bid(),
    .noc_pmc_axi0_bresp(),
    .noc_pmc_axi0_buser(),
    .noc_pmc_axi0_bvalid(),
    .noc_pmc_axi0_rdata(),
    .noc_pmc_axi0_rid(),
    .noc_pmc_axi0_rlast(),
    .noc_pmc_axi0_rresp(),
    .noc_pmc_axi0_ruser(),
    .noc_pmc_axi0_rvalid(),
    .noc_pmc_axi0_wready(),
    .noc_pmc_axi_axi0_clk(),
    .noc_pmc_axi0_araddr(64'B0),
    .noc_pmc_axi0_arburst(2'B0),
    .noc_pmc_axi0_arcache(4'B0),
    .noc_pmc_axi0_arid(2'B0),
    .noc_pmc_axi0_arlen(8'B0),
    .noc_pmc_axi0_arlock(1'B0),
    .noc_pmc_axi0_arprot(3'B0),
    .noc_pmc_axi0_arqos(4'B0),
    .noc_pmc_axi0_arregion(4'B0),
    .noc_pmc_axi0_arsize(3'B0),
    .noc_pmc_axi0_aruser(18'B0),
    .noc_pmc_axi0_arvalid(1'B0),
    .noc_pmc_axi0_awaddr(64'B0),
    .noc_pmc_axi0_awburst(2'B0),
    .noc_pmc_axi0_awcache(4'B0),
    .noc_pmc_axi0_awid(2'B0),
    .noc_pmc_axi0_awlen(8'B0),
    .noc_pmc_axi0_awlock(1'B0),
    .noc_pmc_axi0_awprot(3'B0),
    .noc_pmc_axi0_awqos(4'B0),
    .noc_pmc_axi0_awregion(4'B0),
    .noc_pmc_axi0_awsize(3'B0),
    .noc_pmc_axi0_awuser(18'B0),
    .noc_pmc_axi0_awvalid(1'B0),
    .noc_pmc_axi0_bready(1'B0),
    .noc_pmc_axi0_rready(1'B0),
    .noc_pmc_axi0_wdata(128'B0),
    .noc_pmc_axi0_wid(4'B0),
    .noc_pmc_axi0_wlast(1'B0),
    .noc_pmc_axi0_wstrb(16'B0),
    .noc_pmc_axi0_wuser(17'B0),
    .noc_pmc_axi0_wvalid(1'B0),
    .bscan_user1_usr_capture(),
    .bscan_user1_usr_drck(),
    .bscan_user1_usr_reset(),
    .bscan_user1_usr_runtest(),
    .bscan_user1_usr_sel(),
    .bscan_user1_usr_shift(),
    .bscan_user1_usr_tck(),
    .bscan_user1_usr_tdi(),
    .bscan_user1_usr_tms(),
    .bscan_user1_usr_tdo(1'B0),
    .bscan_user1_usr_update(),
    .bscan_user2_usr_capture(),
    .bscan_user2_usr_drck(),
    .bscan_user2_usr_reset(),
    .bscan_user2_usr_runtest(),
    .bscan_user2_usr_sel(),
    .bscan_user2_usr_shift(),
    .bscan_user2_usr_tck(),
    .bscan_user2_usr_tdi(),
    .bscan_user2_usr_tms(),
    .bscan_user2_usr_tdo(1'B0),
    .bscan_user2_usr_update(),
    .bscan_user3_usr_capture(),
    .bscan_user3_usr_drck(),
    .bscan_user3_usr_reset(),
    .bscan_user3_usr_runtest(),
    .bscan_user3_usr_sel(),
    .bscan_user3_usr_shift(),
    .bscan_user3_usr_tck(),
    .bscan_user3_usr_tdi(),
    .bscan_user3_usr_tms(),
    .bscan_user3_usr_tdo(1'B0),
    .bscan_user3_usr_update(),
    .bscan_user4_usr_capture(),
    .bscan_user4_usr_drck(),
    .bscan_user4_usr_reset(),
    .bscan_user4_usr_runtest(),
    .bscan_user4_usr_sel(),
    .bscan_user4_usr_shift(),
    .bscan_user4_usr_tck(),
    .bscan_user4_usr_tdi(),
    .bscan_user4_usr_tms(),
    .bscan_user4_usr_tdo(1'B0),
    .bscan_user4_usr_update(),
    .m_smmu_arready(1'B0),
    .m_smmu_awready(1'B0),
    .m_smmu_bready(1'B0),
    .m_smmu_rready(1'B0),
    .m_smmu_araddr(),
    .m_smmu_arcache(),
    .m_smmu_arid(),
    .m_smmu_arvalid(),
    .m_smmu_awaddr(),
    .m_smmu_awcache(),
    .m_smmu_awid(),
    .m_smmu_awvalid(),
    .m_smmu_bid(),
    .m_smmu_bresp(),
    .m_smmu_bvalid(),
    .m_smmu_rerr(),
    .m_smmu_rid(),
    .m_smmu_rns(),
    .m_smmu_rresp(),
    .m_smmu_rvalid(),
    .m_smmu_werr(),
    .m_smmu_wns(),
    .s_smmu_arready(),
    .s_smmu_awready(),
    .s_smmu_comprdready(),
    .s_smmu_compwrready(),
    .s_smmu_araddr(49'B0),
    .s_smmu_arcache(4'B0),
    .s_smmu_arid(8'B0),
    .s_smmu_arvalid(1'B0),
    .s_smmu_awaddr(49'B0),
    .s_smmu_awcache(4'B0),
    .s_smmu_awid(8'B0),
    .s_smmu_awvalid(1'B0),
    .smmu_ref_clk(1'B0),
    .s_smmu_comprdid(8'B0),
    .s_smmu_comprdval(1'B0),
    .s_smmu_compwrid(8'B0),
    .s_smmu_compwrval(1'B0),
    .s_smmu_rns(1'B0),
    .s_smmu_rsmid(10'B0),
    .s_smmu_wns(1'B0),
    .s_smmu_wsmid(10'B0),
    .ps_pmc_from_core(12000'B0),
    .ps_pmc_to_core(),
    .dbg0(),
    .dbg0_ext(),
    .dbg1(),
    .dbg1_ext(),
    .dbg2(),
    .dbg2_ext(),
    .dbg3(),
    .dbg3_ext(),
    .dbg4(),
    .dbg4_ext(),
    .dbg_sel(32'B0),
    .hsdp_ref_clk(1'B0),
    .s_axis_hsdp_egress_tdata(),
    .s_axis_hsdp_egress_tkeep(),
    .s_axis_hsdp_egress_tlast(),
    .s_axis_hsdp_egress_tuser(),
    .s_axis_hsdp_egress_tvalid(),
    .s_axis_hsdp_egress_tready(1'B0),
    .s_axis_hsdp_ingress_tdata(64'B0),
    .s_axis_hsdp_ingress_tkeep(8'B0),
    .s_axis_hsdp_ingress_tlast(1'B0),
    .s_axis_hsdp_ingress_tvalid(1'B0),
    .s_axis_hsdp_ingress_tready(),
    .pl_config_done(1'B0),
    .sd0_buspwr(),
    .sd0_busvolt_sel(),
    .sd0_dll_test_clk0(),
    .sd0_dll_test_clk_rx(),
    .sd0_dll_test_clk_tx(),
    .sd0_dll_test_out(),
    .sd0_led_ctrl(),
    .sd0_clk(),
    .sd0_cmd_oe(),
    .sd0_cmd_out(),
    .sd0_data_oe(),
    .sd0_data_out(),
    .sd0_dll_test_in(4'B0),
    .sd0_cd_n(1'B0),
    .sd0_cmd_in(1'B0),
    .sd0_data_in(4'B0),
    .sd0_wp(1'B0),
    .sd0_rx_clk(1'B0),
    .sd1_rx_clk(1'B0),
    .sd1_bus_pwr(),
    .sd1_busvolt_sel(),
    .sd1_dll_test_clk0(),
    .sd1_dll_test_clk_rx(),
    .sd1_dll_test_clk_tx(),
    .sd1_dll_test_out(),
    .sd1_led_ctrl(),
    .sd1_clk(),
    .sd1_cmd_oe(),
    .sd1_cmd_out(),
    .sd1_data_oe(),
    .sd1_data_out(),
    .sd1_dll_test_in(4'B0),
    .sd1_cd_n(1'B0),
    .sd1_cmd_in(1'B0),
    .sd1_data_in(8'B0),
    .sd1_wp(1'B0),
    .pl_ref_clk_mux_monitor(),
    .pmc_pl_sysmon_i2c_scl_trib(),
    .pmc_pl_sysmon_i2c_sda_trib(),
    .pmc_pl_sysmon_i2c_smb_alert_trib(),
    .pmc_pl_sysmon_i2c_scl_input(1'B0),
    .pmc_pl_sysmon_i2c_sda_input(1'B0),
    .pmc_pl_sysmon_root_alarm(),
    .pmc_pl_sysmon_root_new_data(),
    .debug_seu_crcerror(),
    .debug_seu_eccerror(),
    .debug_seu_endofcalib(),
    .debug_seu_halted(),
    .debug_seu_heartbeat(),
    .lpd_swdt_wwdt_irq(),
    .lpd_swdt_wwdt_reset(),
    .lpd_swdt_wwdt_reset_pending(),
    .lpd_swdt_wwdt_clk(1'B0),
    .lpd_swdt_gwdt_ws0(),
    .lpd_swdt_gwdt_ws1(),
    .fpd_swdt_wwdt_irq(),
    .fpd_swdt_wwdt_reset(),
    .fpd_swdt_wwdt_reset_pending(),
    .fpd_swdt_wwdt_clk(1'B0),
    .fpd_swdt_gwdt_ws0(),
    .fpd_swdt_gwdt_ws1(),
    .pl0_sem(),
    .pl1_sem(),
    .pl2_sem(),
    .pl3_sem(),
    .atb_clk(1'B0),
    .atbtbytes(2'B0),
    .pl_ps_atdata(32'B0),
    .pl_ps_atid(7'B0),
    .pl_ps_atvalid(1'B0),
    .pspl_atready(),
    .ps_pl_irq_perfmonirq0_rpu_pl(),
    .ps_pl_irq_perfmonirq1_rpu_pl(),
    .ps_pl_irq_lpd_ocm_isr_lpd(),
    .ps_pl_irq_lpd_rpu0_critical_err(),
    .ps_pl_irq_lpd_rpu1_critical_err(),
    .ps_pl_irq_lpd_gpio_lpd(),
    .ps_pl_irq_lpd_i2c0(),
    .ps_pl_irq_lpd_i2c1(),
    .ps_pl_irq_lpd_spi0(),
    .ps_pl_irq_lpd_spi1(),
    .ps_pl_irq_lpd_uart0(),
    .ps_pl_irq_lpd_uart1(),
    .ps_pl_irq_lpd_can0(),
    .ps_pl_irq_lpd_can1(),
    .ps_pl_irq_lpd_usb2_interrupt(),
    .ps_pl_irq_lpd_usb2_otg_interrupt(),
    .ps_pl_irq_lpd_ipi_pmc(),
    .ps_pl_irq_lpd_ipi_pmc_nobuf(),
    .ps_pl_irq_lpd_ipi_psm(),
    .ps_pl_irq_lpd_ipi_ipi0(),
    .ps_pl_irq_lpd_ipi_ipi1(),
    .ps_pl_irq_lpd_ipi_ipi2(),
    .ps_pl_irq_lpd_ipi_ipi3(),
    .ps_pl_irq_lpd_ipi_ipi4(),
    .ps_pl_irq_lpd_ipi_ipi5(),
    .ps_pl_irq_lpd_ipi_ipi6(),
    .ps_pl_irq_lpd_ttc0(),
    .ps_pl_irq_lpd_ttc1(),
    .ps_pl_irq_lpd_ttc2(),
    .ps_pl_irq_lpd_ttc3(),
    .ps_pl_irq_lpd_wwdt(),
    .ps_pl_irq_lpd_psm_mb(),
    .ps_pl_irq_lpd_xppu_err_interrupt(),
    .ps_pl_irq_lpd_int_ir_status(),
    .ps_pl_irq_lpd_ams_isr(),
    .ps_pl_irq_lpd_gem1(),
    .ps_pl_irq_lpd_gem0_wol(),
    .ps_pl_irq_lpd_gem2(),
    .ps_pl_irq_lpd_gem1_wol(),
    .ps_pl_irq_lpd_dma(),
    .ps_pl_irq_lpd_xmpu_err_interrupt(),
    .ps_pl_irq_lpd_wwdt_reset_pending(),
    .ps_pl_irq_lpd_gwdt_ws0(),
    .ps_pl_irq_lpd_gwdt_ws1(),
    .ps_pl_irq_lpd_cpm_ps_isr_misc(),
    .ps_pl_irq_lpd_cpm_ps_isr_corr(),
    .ps_pl_irq_lpd_usb2_core_pme_generation(),
    .ps_pl_irq_lpd_cpm_ps_isr_uncorr(),
    .ps_pl_irq_lpd_ocm2_lpd(),
    .ps_pl_irq_lpd_ocm2_lpd_uncor_err(),
    .ps_pl_irq_fpd_wd(),
    .ps_pl_irq_fpd_ams_isr_fpd(),
    .ps_pl_irq_fpd_fpd_psm_tz_err(),
    .ps_pl_irq_fpd_apu_gic_l2err(),
    .ps_pl_irq_fpd_apu_gic_exterr(),
    .ps_pl_irq_fpd_apu_gic_regs(),
    .ps_pl_irq_fpd_cci_isr(),
    .ps_pl_irq_fpd_smmu_isr(),
    .ps_pl_irq_fpd_gwdt_ws1(),
    .ps_pl_irq_fpd_wwdt_reset_pending(),
    .ps_pl_irq_fpd_gwdt_ws2(),
    .ps_pl_irq_pmc_cfu_interrupt(),
    .ps_pl_irq_pmc_cframe_seu_interrupt(),
    .ps_pl_irq_pmc_gpio_pmc(),
    .ps_pl_irq_pmc_i2c(),
    .ps_pl_irq_pmc_ospi(),
    .ps_pl_irq_pmc_qspi(),
    .ps_pl_irq_pmc_sd0_axi(),
    .ps_pl_irq_pmc_sd0_axi_wkup(),
    .ps_pl_irq_pmc_sd1_axi(),
    .ps_pl_irq_pmc_sd1_axi_wkup(),
    .ps_pl_irq_pmc_debug(),
    .ps_pl_irq_pmc_dma0(),
    .ps_pl_irq_pmc_dma1(),
    .ps_pl_irq_pmc_int_ir_status(),
    .ps_pl_irq_pmc_xppu(),
    .ps_pl_irq_pmc_xmpu(),
    .ps_pl_irq_pmc_sbi(),
    .ps_pl_irq_pmc_aes(),
    .ps_pl_irq_pmc_ecdsa_rsa(),
    .ps_pl_irq_pmc_efuse_isr(),
    .ps_pl_irq_pmc_sha(),
    .ps_pl_irq_pmc_trng(),
    .ps_pl_irq_pmc_rtc_alarm_int(),
    .ps_pl_irq_pmc_rtc_seconds_int(),
    .ps_pl_irq_pmc_sysmon_interrupt(),
    .ps_pl_irq_pmc_npi_interrupt_out(),
    .ps_pl_irq_pmc_ocm_isr(),
    .ps_pl_irq_pmc_vccint_glitch_detect(),
    .fmio_gem0_fifo_rx_clk_from_pl(1'B0),
    .fmio_gem0_fifo_tx_clk_from_pl(1'B0),
    .fmio_gem1_fifo_rx_clk_from_pl(1'B0),
    .fmio_gem1_fifo_tx_clk_from_pl(1'B0),
    .fmio_gem_tsu_clk_from_pl(1'B0),
    .fmio_gem_tsu_clk_to_pl(),
    .emio_enet_tsu_clk(1'B0),
    .gem1_fifo_rx_clk_to_pl(),
    .gem1_fifo_tx_clk_to_pl(),
    .gem0_fifo_rx_clk_to_pl(),
    .gem0_fifo_tx_clk_to_pl(),
    .gem0_tsu_timer_cnt(gem0_tsu_timer_cnt),
    .gem0_ext_int_in(1'B0),
    .gem0_dma_bus_width(),
    .hsdp0_gt_rxn(1'B0),
    .hsdp0_gt_rxp(1'B0),
    .hsdp0_gt_txn(),
    .hsdp0_gt_txp(),
    .hsdp1_gt_rxn(1'B0),
    .hsdp1_gt_rxp(1'B0),
    .hsdp1_gt_txn(),
    .hsdp1_gt_txp(),
    .eos(),
    .usrgsrb(1'B1),
    .usrgtsb(1'B1),
    .captureb(1'B1),
    .captureclk(1'B1),
    .dummy(),
    .chi0_clk(1'B0),
    .chi1_clk(1'B0),
    .pcie0_user_clk(pcie0_user_clk),
    .pcie1_user_clk(pcie1_user_clk),
    .pl_ref_clk(1'B0),
    .dma0_axi_aresetn(dma0_axi_aresetn),
    .dma0_soft_resetn(dma0_soft_resetn),
    .pcie0_user_reset(),
    .pcie1_user_reset(pcie1_user_reset),
    .cpm_cor_irq(cpm_cor_irq),
    .cpm_irq0(cpm_irq0),
    .cpm_irq1(cpm_irq1),
    .cpm_misc_irq(cpm_misc_irq),
    .cpm_uncor_irq(cpm_uncor_irq),
    .dma0_irq(dma0_irq),
    .chi0_reqflitpend(1'B0),
    .chi0_reqflitv(1'B0),
    .chi0_reqflit(121'B0),
    .chi0_reqlcrdv(),
    .chi0_crspflitpend(),
    .chi0_crspflitv(),
    .chi0_crspflit(),
    .chi0_crsplcrdv(1'B0),
    .chi0_rdatflitpend(),
    .chi0_rdatflitv(),
    .chi0_rdatflit(),
    .chi0_rdatlcrdv(1'B0),
    .chi0_snpflitpend(),
    .chi0_snpflitv(),
    .chi0_snpflit(),
    .chi0_snplcrdv(1'B0),
    .chi0_srspflitpend(1'B0),
    .chi0_srspflitv(1'B0),
    .chi0_srspflit(51'B0),
    .chi0_srsplcrdv(),
    .chi0_wdatflitpend(1'B0),
    .chi0_wdatflitv(1'B0),
    .chi0_wdatflit(705'B0),
    .chi0_wdatlcrdv(),
    .chi0_mlinkactivereq(1'B0),
    .chi0_mlinkactiveack(),
    .chi0_msactive(1'B0),
    .chi0_slinkactivereq(),
    .chi0_slinkactiveack(1'B0),
    .chi0_ssactive(),
    .chi0_syscoreq(1'B0),
    .chi0_syscoack(),
    .chi1_reqflitpend(1'B0),
    .chi1_reqflitv(1'B0),
    .chi1_reqflit(121'B0),
    .chi1_reqlcrdv(),
    .chi1_crspflitpend(),
    .chi1_crspflitv(),
    .chi1_crspflit(),
    .chi1_crsplcrdv(1'B0),
    .chi1_rdatflitpend(),
    .chi1_rdatflitv(),
    .chi1_rdatflit(),
    .chi1_rdatlcrdv(1'B0),
    .chi1_snpflitpend(),
    .chi1_snpflitv(),
    .chi1_snpflit(),
    .chi1_snplcrdv(1'B0),
    .chi1_srspflitpend(1'B0),
    .chi1_srspflitv(1'B0),
    .chi1_srspflit(51'B0),
    .chi1_srsplcrdv(),
    .chi1_wdatflitpend(1'B0),
    .chi1_wdatflitv(1'B0),
    .chi1_wdatflit(705'B0),
    .chi1_wdatlcrdv(),
    .chi1_mlinkactivereq(1'B0),
    .chi1_mlinkactiveack(),
    .chi1_msactive(1'B0),
    .chi1_slinkactivereq(),
    .chi1_slinkactiveack(1'B0),
    .chi1_ssactive(),
    .chi1_syscoreq(1'B0),
    .chi1_syscoack(),
    .dma0_m_axis_h2c_0_tdata(),
    .dma0_m_axis_h2c_0_tkeep(),
    .dma0_m_axis_h2c_0_tlast(),
    .dma0_m_axis_h2c_0_tuser(),
    .dma0_m_axis_h2c_0_tvalid(),
    .dma0_m_axis_h2c_0_tready(1'B1),
    .dma0_m_axis_h2c_1_tdata(),
    .dma0_m_axis_h2c_1_tkeep(),
    .dma0_m_axis_h2c_1_tlast(),
    .dma0_m_axis_h2c_1_tuser(),
    .dma0_m_axis_h2c_1_tvalid(),
    .dma0_m_axis_h2c_1_tready(1'B1),
    .dma0_m_axis_h2c_2_tdata(),
    .dma0_m_axis_h2c_2_tkeep(),
    .dma0_m_axis_h2c_2_tlast(),
    .dma0_m_axis_h2c_2_tuser(),
    .dma0_m_axis_h2c_2_tvalid(),
    .dma0_m_axis_h2c_2_tready(1'B1),
    .dma0_m_axis_h2c_3_tdata(),
    .dma0_m_axis_h2c_3_tkeep(),
    .dma0_m_axis_h2c_3_tlast(),
    .dma0_m_axis_h2c_3_tuser(),
    .dma0_m_axis_h2c_3_tvalid(),
    .dma0_m_axis_h2c_3_tready(1'B1),
    .dma0_s_axis_c2h_0_tdata(512'B0),
    .dma0_s_axis_c2h_0_tkeep(64'B0),
    .dma0_s_axis_c2h_0_tlast(1'B0),
    .dma0_s_axis_c2h_0_tuser(64'B0),
    .dma0_s_axis_c2h_0_tvalid(1'B0),
    .dma0_s_axis_c2h_0_tready(),
    .dma0_s_axis_c2h_1_tdata(512'B0),
    .dma0_s_axis_c2h_1_tkeep(64'B0),
    .dma0_s_axis_c2h_1_tlast(1'B0),
    .dma0_s_axis_c2h_1_tuser(64'B0),
    .dma0_s_axis_c2h_1_tvalid(1'B0),
    .dma0_s_axis_c2h_1_tready(),
    .dma0_s_axis_c2h_2_tdata(512'B0),
    .dma0_s_axis_c2h_2_tkeep(64'B0),
    .dma0_s_axis_c2h_2_tlast(1'B0),
    .dma0_s_axis_c2h_2_tuser(64'B0),
    .dma0_s_axis_c2h_2_tvalid(1'B0),
    .dma0_s_axis_c2h_2_tready(),
    .dma0_s_axis_c2h_3_tdata(512'B0),
    .dma0_s_axis_c2h_3_tkeep(64'B0),
    .dma0_s_axis_c2h_3_tlast(1'B0),
    .dma0_s_axis_c2h_3_tuser(64'B0),
    .dma0_s_axis_c2h_3_tvalid(1'B0),
    .dma0_s_axis_c2h_3_tready(),
    .pcie0_user_lnk_up(pcie0_user_lnk_up),
    .pcie1_user_lnk_up(pcie1_user_lnk_up),
    .pcie0_s_axis_rq_tdata(512'B0),
    .pcie0_s_axis_rq_tkeep(16'B0),
    .pcie0_s_axis_rq_tlast(1'B0),
    .pcie0_s_axis_rq_tuser(179'B0),
    .pcie0_s_axis_rq_tvalid(1'B0),
    .pcie0_s_axis_rq_tready(),
    .pcie0_s_axis_cc_tdata(512'B0),
    .pcie0_s_axis_cc_tkeep(16'B0),
    .pcie0_s_axis_cc_tlast(1'B0),
    .pcie0_s_axis_cc_tuser(81'B0),
    .pcie0_s_axis_cc_tvalid(1'B0),
    .pcie0_s_axis_cc_tready(),
    .pcie0_m_axis_rc_tdata(),
    .pcie0_m_axis_rc_tkeep(),
    .pcie0_m_axis_rc_tlast(),
    .pcie0_m_axis_rc_tuser(),
    .pcie0_m_axis_rc_tvalid(),
    .pcie0_m_axis_rc_tready(1'B1),
    .pcie0_m_axis_cq_tdata(),
    .pcie0_m_axis_cq_tkeep(),
    .pcie0_m_axis_cq_tlast(),
    .pcie0_m_axis_cq_tuser(),
    .pcie0_m_axis_cq_tvalid(),
    .pcie0_m_axis_cq_tready(1'B1),
    .pcie1_s_axis_rq_tdata(pcie1_s_axis_rq_tdata),
    .pcie1_s_axis_rq_tkeep(pcie1_s_axis_rq_tkeep),
    .pcie1_s_axis_rq_tlast(pcie1_s_axis_rq_tlast),
    .pcie1_s_axis_rq_tuser(pcie1_s_axis_rq_tuser),
    .pcie1_s_axis_rq_tvalid(pcie1_s_axis_rq_tvalid),
    .pcie1_s_axis_rq_tready(pcie1_s_axis_rq_tready),
    .pcie1_s_axis_cc_tdata(pcie1_s_axis_cc_tdata),
    .pcie1_s_axis_cc_tkeep(pcie1_s_axis_cc_tkeep),
    .pcie1_s_axis_cc_tlast(pcie1_s_axis_cc_tlast),
    .pcie1_s_axis_cc_tuser(pcie1_s_axis_cc_tuser),
    .pcie1_s_axis_cc_tvalid(pcie1_s_axis_cc_tvalid),
    .pcie1_s_axis_cc_tready(pcie1_s_axis_cc_tready),
    .pcie1_m_axis_rc_tdata(pcie1_m_axis_rc_tdata),
    .pcie1_m_axis_rc_tkeep(pcie1_m_axis_rc_tkeep),
    .pcie1_m_axis_rc_tlast(pcie1_m_axis_rc_tlast),
    .pcie1_m_axis_rc_tuser(pcie1_m_axis_rc_tuser),
    .pcie1_m_axis_rc_tvalid(pcie1_m_axis_rc_tvalid),
    .pcie1_m_axis_rc_tready(pcie1_m_axis_rc_tready),
    .pcie1_m_axis_cq_tdata(pcie1_m_axis_cq_tdata),
    .pcie1_m_axis_cq_tkeep(pcie1_m_axis_cq_tkeep),
    .pcie1_m_axis_cq_tlast(pcie1_m_axis_cq_tlast),
    .pcie1_m_axis_cq_tuser(pcie1_m_axis_cq_tuser),
    .pcie1_m_axis_cq_tvalid(pcie1_m_axis_cq_tvalid),
    .pcie1_m_axis_cq_tready(pcie1_m_axis_cq_tready),
    .pcie0_cfg_mgmt_addr(10'B0),
    .pcie0_cfg_mgmt_byte_en(4'B0),
    .pcie0_cfg_mgmt_debug_access(1'B0),
    .pcie0_cfg_mgmt_read_en(1'B0),
    .pcie0_cfg_mgmt_write_en(1'B0),
    .pcie0_cfg_mgmt_write_data(32'B0),
    .pcie0_cfg_mgmt_read_data(),
    .pcie0_cfg_mgmt_read_write_done(),
    .pcie0_cfg_mgmt_function_number(8'B0),
    .pcie1_cfg_mgmt_addr(10'B0),
    .pcie1_cfg_mgmt_byte_en(4'B0),
    .pcie1_cfg_mgmt_debug_access(1'B0),
    .pcie1_cfg_mgmt_read_en(1'B0),
    .pcie1_cfg_mgmt_write_en(1'B0),
    .pcie1_cfg_mgmt_write_data(32'B0),
    .pcie1_cfg_mgmt_read_data(),
    .pcie1_cfg_mgmt_read_write_done(),
    .pcie1_cfg_mgmt_function_number(8'B0),
    .pcie0_cfg_msg_transmit(1'B0),
    .pcie0_cfg_msg_transmit_data(32'B0),
    .pcie0_cfg_msg_transmit_type(3'B0),
    .pcie0_cfg_msg_transmit_done(),
    .pcie0_cfg_msg_received(),
    .pcie0_cfg_msg_received_data(),
    .pcie0_cfg_msg_received_type(),
    .pcie1_cfg_msg_transmit(1'B0),
    .pcie1_cfg_msg_transmit_data(32'B0),
    .pcie1_cfg_msg_transmit_type(3'B0),
    .pcie0_cfg_interrupt_int(4'B0),
    .pcie0_cfg_interrupt_pending(4'B0),
    .pcie0_cfg_interrupt_sent(),
    .pcie1_cfg_interrupt_int(pcie1_cfg_interrupt_int),
    .pcie1_cfg_interrupt_sent(pcie1_cfg_interrupt_sent),
    .pcie1_cfg_interrupt_pending(pcie1_cfg_interrupt_pending),
    .pcie0_cfg_fc_sel(3'B0),
    .pcie0_cfg_fc_vc_sel(1'B0),
    .pcie0_cfg_fc_npd(),
    .pcie0_cfg_fc_npd_scale(),
    .pcie0_cfg_fc_nph(),
    .pcie0_cfg_fc_nph_scale(),
    .pcie0_cfg_fc_pd(),
    .pcie0_cfg_fc_pd_scale(),
    .pcie0_cfg_fc_ph(),
    .pcie0_cfg_fc_ph_scale(),
    .pcie0_cfg_fc_cpld(),
    .pcie0_cfg_fc_cpld_scale(),
    .pcie0_cfg_fc_cplh(),
    .pcie0_cfg_fc_cplh_scale(),
    .pcie1_cfg_fc_sel(3'B0),
    .pcie1_cfg_fc_vc_sel(1'B0),
    .pcie1_cfg_fc_npd(),
    .pcie1_cfg_fc_npd_scale(),
    .pcie1_cfg_fc_nph(),
    .pcie1_cfg_fc_nph_scale(),
    .pcie1_cfg_fc_pd(),
    .pcie1_cfg_fc_pd_scale(),
    .pcie1_cfg_fc_ph(),
    .pcie1_cfg_fc_ph_scale(),
    .pcie0_cfg_err_cor_in(1'B0),
    .pcie0_cfg_err_uncor_in(1'B0),
    .pcie0_cfg_flr_done(4'B0),
    .pcie0_cfg_flr_in_process(),
    .pcie0_cfg_hot_reset_in(1'B0),
    .pcie0_cfg_hot_reset_out(),
    .pcie0_cfg_power_state_change_ack(1'B0),
    .pcie0_cfg_power_state_change_interrupt(),
    .pcie0_cfg_vf_flr_done(1'B0),
    .pcie0_cfg_vf_flr_func_num(8'B0),
    .pcie0_cfg_vf_flr_in_process(),
    .pcie1_cfg_err_cor_in(1'B0),
    .pcie1_cfg_err_uncor_in(1'B0),
    .pcie1_cfg_flr_done(4'B0),
    .pcie1_cfg_flr_in_process(),
    .pcie1_cfg_hot_reset_in(1'B0),
    .pcie1_cfg_hot_reset_out(),
    .pcie1_cfg_power_state_change_ack(1'B0),
    .pcie1_cfg_power_state_change_interrupt(),
    .pcie1_cfg_vf_flr_done(1'B0),
    .pcie1_cfg_vf_flr_func_num(8'B0),
    .pcie1_cfg_vf_flr_in_process(),
    .pcie0_cfg_10b_tag_requester_enable(),
    .pcie0_cfg_atomic_requester_enable(),
    .pcie0_cfg_ats_control_enable(),
    .pcie0_cfg_current_speed(),
    .pcie0_cfg_err_cor_out(),
    .pcie0_cfg_err_fatal_out(),
    .pcie0_cfg_err_nonfatal_out(),
    .pcie0_cfg_ext_tag_enable(),
    .pcie0_cfg_function_power_state(),
    .pcie0_cfg_function_status(),
    .pcie0_cfg_link_power_state(),
    .pcie0_cfg_local_error_out(),
    .pcie0_cfg_local_error_valid(),
    .pcie0_cfg_ltssm_state(),
    .pcie0_cfg_max_pasid_width_control(),
    .pcie0_cfg_max_payload(),
    .pcie0_cfg_max_read_req(),
    .pcie0_cfg_negotiated_width(),
    .pcie0_cfg_pasid_control(),
    .pcie0_cfg_pasid_enable(),
    .pcie0_cfg_pasid_exec_permission_enable(),
    .pcie0_cfg_pasid_privil_mode_enable(),
    .pcie0_cfg_phy_link_down(),
    .pcie0_cfg_phy_link_status(),
    .pcie0_cfg_pl_status_change(),
    .pcie0_cfg_pri_control(),
    .pcie0_cfg_rcb_status(),
    .pcie0_cfg_rx_pm_state(),
    .pcie0_cfg_tph_requester_enable(),
    .pcie0_cfg_tph_st_mode(),
    .pcie0_cfg_tx_pm_state(),
    .pcie0_cfg_vc1_enable(),
    .pcie0_cfg_vc1_negotiation_pending(),
    .pcie0_cfg_vf_ats_control_enable(),
    .pcie0_cfg_vf_power_state(),
    .pcie0_cfg_vf_status(),
    .pcie0_cfg_vf_tph_requester_enable(),
    .pcie0_cfg_vf_tph_st_mode(),
    .pcie1_cfg_10b_tag_requester_enable(),
    .pcie1_cfg_ats_control_enable(),
    .pcie1_cfg_current_speed(),
    .pcie1_cfg_err_cor_out(),
    .pcie1_cfg_err_fatal_out(),
    .pcie1_cfg_err_nonfatal_out(),
    .pcie1_cfg_ext_tag_enable(),
    .pcie1_cfg_function_status(),
    .pcie1_cfg_link_power_state(),
    .pcie1_cfg_local_error_out(),
    .pcie1_cfg_local_error_valid(),
    .pcie1_cfg_ltssm_state(),
    .pcie1_cfg_max_pasid_width_control(),
    .pcie1_cfg_max_payload(),
    .pcie1_cfg_max_read_req(),
    .pcie1_cfg_negotiated_width(),
    .pcie1_cfg_pasid_control(),
    .pcie1_cfg_pasid_enable(),
    .pcie1_cfg_pasid_exec_permission_enable(),
    .pcie1_cfg_pasid_privil_mode_enable(),
    .pcie1_cfg_phy_link_down(),
    .pcie1_cfg_phy_link_status(),
    .pcie1_cfg_pl_status_change(),
    .pcie1_cfg_pri_control(),
    .pcie1_cfg_rcb_status(),
    .pcie1_cfg_rx_pm_state(),
    .pcie1_cfg_tph_requester_enable(),
    .pcie1_cfg_tph_st_mode(),
    .pcie1_cfg_tx_pm_state(),
    .pcie1_cfg_vf_ats_control_enable(),
    .pcie1_cfg_vf_power_state(),
    .pcie1_cfg_vf_status(),
    .pcie1_cfg_vf_tph_requester_enable(),
    .pcie1_cfg_vf_tph_st_mode(),
    .pcie0_cq_np_req(2'B0),
    .pcie0_cq_np_req_count(),
    .pcie0_rq_seq_num0(),
    .pcie0_rq_seq_num1(),
    .pcie0_rq_seq_num_vld0(),
    .pcie0_rq_seq_num_vld1(),
    .pcie0_rq_tag0(),
    .pcie0_rq_tag1(),
    .pcie0_rq_tag_av(),
    .pcie0_rq_tag_vld0(),
    .pcie0_rq_tag_vld1(),
    .pcie1_cq_np_req(2'B0),
    .pcie1_cq_np_req_count(),
    .pcie1_rq_seq_num0(),
    .pcie1_rq_seq_num1(),
    .pcie1_rq_seq_num_vld0(),
    .pcie1_rq_seq_num_vld1(),
    .pcie1_rq_tag0(),
    .pcie1_rq_tag1(),
    .pcie1_rq_tag_av(),
    .pcie1_rq_tag_vld0(),
    .pcie1_rq_tag_vld1(),
    .pcie0_cfg_ext_read_data(32'B0),
    .pcie0_cfg_ext_read_received(),
    .pcie0_cfg_ext_register_number(),
    .pcie0_cfg_ext_read_data_valid(1'B0),
    .pcie0_cfg_ext_write_byte_enable(),
    .pcie0_cfg_ext_write_data(),
    .pcie0_cfg_ext_write_received(),
    .pcie0_cfg_ext_function_number(),
    .pcie1_cfg_ext_read_data(32'B0),
    .pcie1_cfg_ext_read_received(),
    .pcie1_cfg_ext_register_number(),
    .pcie1_cfg_ext_read_data_valid(1'B0),
    .pcie1_cfg_ext_write_byte_enable(),
    .pcie1_cfg_ext_write_data(),
    .pcie1_cfg_ext_write_received(),
    .pcie1_cfg_ext_function_number(),
    .pcie0_tfc_npd_av(),
    .pcie0_tfc_nph_av(),
    .pcie1_tfc_npd_av(),
    .pcie1_tfc_nph_av(),
    .pcie0_edr_datarate_change_ack(1'B0),
    .pcie0_edr_datarate_change_req(),
    .pcie0_edr_enable(),
    .pcie1_edr_datarate_change_ack(1'B0),
    .pcie1_edr_datarate_change_req(),
    .pcie1_edr_enable(),
    .xdma0_usr_irq_req(xdma0_usr_irq_req),
    .xdma0_usr_irq_ack(xdma0_usr_irq_ack),
    .xdma0_usr_irq_fnc(8'B0),
    .dma0_usr_flr_done_fnc(8'B0),
    .dma0_usr_flr_done_vld(1'B0),
    .dma0_usr_flr_fnc(),
    .dma0_usr_flr_set(),
    .dma0_usr_flr_clr(),
    .dma0_mgmt_req_vld(1'B0),
    .dma0_mgmt_req_dat(32'B0),
    .dma0_mgmt_req_adr(32'B0),
    .dma0_mgmt_req_fnc(8'B0),
    .dma0_mgmt_req_msc(6'B0),
    .dma0_mgmt_req_cmd(2'B0),
    .dma0_mgmt_req_rdy(),
    .dma0_mgmt_cpl_vld(),
    .dma0_mgmt_cpl_sts(),
    .dma0_mgmt_cpl_dat(),
    .dma0_mgmt_cpl_rdy(1'B1),
    .dma0_c2h_dsc_byp_0_ready(),
    .dma0_c2h_dsc_byp_0_src_addr(64'B0),
    .dma0_c2h_dsc_byp_0_dst_addr(64'B0),
    .dma0_c2h_dsc_byp_0_len(28'B0),
    .dma0_c2h_dsc_byp_0_ctl(16'B0),
    .dma0_c2h_dsc_byp_0_load(1'B0),
    .dma0_h2c_dsc_byp_0_ready(),
    .dma0_h2c_dsc_byp_0_src_addr(64'B0),
    .dma0_h2c_dsc_byp_0_dst_addr(64'B0),
    .dma0_h2c_dsc_byp_0_len(28'B0),
    .dma0_h2c_dsc_byp_0_ctl(16'B0),
    .dma0_h2c_dsc_byp_0_load(1'B0),
    .dma0_c2h_dsc_byp_1_ready(),
    .dma0_c2h_dsc_byp_1_src_addr(64'B0),
    .dma0_c2h_dsc_byp_1_dst_addr(64'B0),
    .dma0_c2h_dsc_byp_1_len(28'B0),
    .dma0_c2h_dsc_byp_1_ctl(16'B0),
    .dma0_c2h_dsc_byp_1_load(1'B0),
    .dma0_h2c_dsc_byp_1_ready(),
    .dma0_h2c_dsc_byp_1_src_addr(64'B0),
    .dma0_h2c_dsc_byp_1_dst_addr(64'B0),
    .dma0_h2c_dsc_byp_1_len(28'B0),
    .dma0_h2c_dsc_byp_1_ctl(16'B0),
    .dma0_h2c_dsc_byp_1_load(1'B0),
    .dma0_c2h_dsc_byp_2_ready(),
    .dma0_c2h_dsc_byp_2_src_addr(64'B0),
    .dma0_c2h_dsc_byp_2_dst_addr(64'B0),
    .dma0_c2h_dsc_byp_2_len(28'B0),
    .dma0_c2h_dsc_byp_2_ctl(16'B0),
    .dma0_c2h_dsc_byp_2_load(1'B0),
    .dma0_h2c_dsc_byp_2_ready(),
    .dma0_h2c_dsc_byp_2_src_addr(64'B0),
    .dma0_h2c_dsc_byp_2_dst_addr(64'B0),
    .dma0_h2c_dsc_byp_2_len(28'B0),
    .dma0_h2c_dsc_byp_2_ctl(16'B0),
    .dma0_h2c_dsc_byp_2_load(1'B0),
    .dma0_c2h_dsc_byp_3_ready(),
    .dma0_c2h_dsc_byp_3_src_addr(64'B0),
    .dma0_c2h_dsc_byp_3_dst_addr(64'B0),
    .dma0_c2h_dsc_byp_3_len(28'B0),
    .dma0_c2h_dsc_byp_3_ctl(16'B0),
    .dma0_c2h_dsc_byp_3_load(1'B0),
    .dma0_h2c_dsc_byp_3_ready(),
    .dma0_h2c_dsc_byp_3_src_addr(64'B0),
    .dma0_h2c_dsc_byp_3_dst_addr(64'B0),
    .dma0_h2c_dsc_byp_3_len(28'B0),
    .dma0_h2c_dsc_byp_3_ctl(16'B0),
    .dma0_h2c_dsc_byp_3_load(1'B0),
    .dma0_c2h_sts_0(),
    .dma0_c2h_sts_1(),
    .dma0_c2h_sts_2(),
    .dma0_c2h_sts_3(),
    .dma0_h2c_sts_0(),
    .dma0_h2c_sts_1(),
    .dma0_h2c_sts_2(),
    .dma0_h2c_sts_3(),
    .pcie0_cfg_msi_attr(3'B0),
    .pcie0_cfg_msi_function_number(8'B0),
    .pcie0_cfg_msi_int_vector(32'B0),
    .pcie0_cfg_msi_pending_status(32'B0),
    .pcie0_cfg_msi_pending_status_data_enable(1'B0),
    .pcie0_cfg_msi_pending_status_function_number(2'B0),
    .pcie0_cfg_msi_select(2'B0),
    .pcie0_cfg_msi_tph_present(1'B0),
    .pcie0_cfg_msi_tph_st_tag(8'B0),
    .pcie0_cfg_msi_tph_type(2'B0),
    .pcie0_cfg_msi_data(),
    .pcie0_cfg_msi_enable(),
    .pcie0_cfg_msi_fail(),
    .pcie0_cfg_msi_mask_update(),
    .pcie0_cfg_msi_mmenable(),
    .pcie0_cfg_msi_sent(),
    .pcie0_cfg_msix_attr(3'B0),
    .pcie0_cfg_msix_fail(),
    .pcie0_cfg_msix_function_number(8'B0),
    .pcie0_cfg_msix_mint_vector(32'B0),
    .pcie0_cfg_msix_sent(),
    .pcie0_cfg_msix_tph_present(1'B0),
    .pcie0_cfg_msix_tph_st_tag(8'B0),
    .pcie0_cfg_msix_tph_type(2'B0),
    .pcie0_cfg_msix_enable(),
    .pcie0_cfg_msix_mask(),
    .pcie0_cfg_msix_vec_pending_status(),
    .pcie0_cfg_msix_address(64'B0),
    .pcie0_cfg_msix_data(32'B0),
    .pcie0_cfg_msix_int_vector(1'B0),
    .pcie0_cfg_msix_vec_pending(2'B0),
    .pcie0_cfg_msix_vf_enable(),
    .pcie0_cfg_msix_vf_mask(),
    .pcie1_cfg_msi_enable(pcie1_cfg_msi_enable),
    .pcie1_cfg_msi_mmenable(pcie1_cfg_msi_mmenable),
    .pcie1_cfg_msi_data(pcie1_cfg_msi_data),
    .pcie1_cfg_msi_attr(pcie1_cfg_msi_attr),
    .pcie1_cfg_msi_function_number(pcie1_cfg_msi_function_number),
    .pcie1_cfg_msi_int_vector(pcie1_cfg_msi_int_vector),
    .pcie1_cfg_msi_pending_status(pcie1_cfg_msi_pending_status),
    .pcie1_cfg_msi_pending_status_data_enable(pcie1_cfg_msi_pending_status_data_enable),
    .pcie1_cfg_msi_pending_status_function_number(pcie1_cfg_msi_pending_status_function_number),
    .pcie1_cfg_msi_select(pcie1_cfg_msi_select),
    .pcie1_cfg_msi_tph_present(pcie1_cfg_msi_tph_present),
    .pcie1_cfg_msi_tph_st_tag(pcie1_cfg_msi_tph_st_tag),
    .pcie1_cfg_msi_tph_type(pcie1_cfg_msi_tph_type),
    .pcie1_cfg_msix_enable(),
    .pcie1_cfg_msix_mask(),
    .pcie1_cfg_msix_attr(3'B0),
    .pcie1_cfg_msix_function_number(8'B0),
    .pcie1_cfg_msix_mint_vector(32'B0),
    .pcie1_cfg_msix_tph_present(1'B0),
    .pcie1_cfg_msix_tph_st_tag(8'B0),
    .pcie1_cfg_msix_tph_type(2'B0),
    .pcie1_cfg_msix_address(64'B0),
    .pcie1_cfg_msix_data(32'B0),
    .pcie1_cfg_msix_int_vector(1'B0),
    .pcie1_cfg_msix_vec_pending(2'B0),
    .pcie1_cfg_msix_vf_enable(),
    .pcie1_cfg_msix_vf_mask(),
    .pcie0_gt_rxn(pcie0_gt_rxn),
    .pcie0_gt_rxp(pcie0_gt_rxp),
    .pcie0_gt_txn(pcie0_gt_txn),
    .pcie0_gt_txp(pcie0_gt_txp),
    .pcie1_gt_rxn(pcie1_gt_rxn),
    .pcie1_gt_rxp(pcie1_gt_rxp),
    .pcie1_gt_txn(pcie1_gt_txn),
    .pcie1_gt_txp(pcie1_gt_txp),
    .gt_refclk0_n(gt_refclk0_n),
    .gt_refclk0_p(gt_refclk0_p),
    .gt_refclk1_n(gt_refclk1_n),
    .gt_refclk1_p(gt_refclk1_p),
    .dma0_st_rx_msg_rdy(dma0_st_rx_msg_rdy),
    .dma0_st_rx_msg_data(dma0_st_rx_msg_data),
    .dma0_st_rx_msg_valid(dma0_st_rx_msg_valid),
    .dma0_st_rx_msg_last(dma0_st_rx_msg_last),
    .dma0_s_axis_c2h_tdata(512'B0),
    .dma0_s_axis_c2h_dpar(64'B0),
    .dma0_s_axis_c2h_ctrl_marker(1'B0),
    .dma0_s_axis_c2h_ctrl_port_id(3'B0),
    .dma0_s_axis_c2h_ctrl_imm_data(1'B0),
    .dma0_s_axis_c2h_ctrl_dis_cmpt(1'B0),
    .dma0_s_axis_c2h_ctrl_user_trig(1'B0),
    .dma0_s_axis_c2h_ctrl_qid(11'B0),
    .dma0_s_axis_c2h_ctrl_len(16'B0),
    .dma0_s_axis_c2h_tvalid(1'B0),
    .dma0_s_axis_c2h_tlast(1'B0),
    .dma0_s_axis_c2h_mty(6'B0),
    .dma0_s_axis_c2h_tready(),
    .dma0_s_axis_c2h_cmpt_tdata(128'B0),
    .dma0_s_axis_c2h_cmpt_type(2'B0),
    .dma0_s_axis_c2h_cmpt_dpar(4'B0),
    .dma0_s_axis_c2h_cmpt_tvalid(1'B0),
    .dma0_s_axis_c2h_cmpt_tlast(1'B0),
    .dma0_s_axis_c2h_cmpt_tready(),
    .dma0_m_axis_h2c_tdata(),
    .dma0_m_axis_h2c_dpar(),
    .dma0_m_axis_h2c_tuser_err(),
    .dma0_m_axis_h2c_tuser_mty(),
    .dma0_m_axis_h2c_tuser_qid(),
    .dma0_m_axis_h2c_tuser_mdata(),
    .dma0_m_axis_h2c_tuser_port_id(),
    .dma0_m_axis_h2c_tuser_zero_byte(),
    .dma0_m_axis_h2c_tlast(),
    .dma0_m_axis_h2c_tvalid(),
    .dma0_m_axis_h2c_tready(1'B1),
    .dma0_h2c_byp_out_cidx(),
    .dma0_h2c_byp_out_dsc(),
    .dma0_h2c_byp_out_dsc_sz(),
    .dma0_h2c_byp_out_error(),
    .dma0_h2c_byp_out_func(),
    .dma0_h2c_byp_out_mrkr_rsp(),
    .dma0_h2c_byp_out_port_id(),
    .dma0_h2c_byp_out_qid(),
    .dma0_h2c_byp_out_rdy(1'B1),
    .dma0_h2c_byp_out_st_mm(),
    .dma0_h2c_byp_out_vld(),
    .dma0_c2h_byp_out_cidx(),
    .dma0_c2h_byp_out_dsc(),
    .dma0_c2h_byp_out_dsc_sz(),
    .dma0_c2h_byp_out_error(),
    .dma0_c2h_byp_out_func(),
    .dma0_c2h_byp_out_mrkr_rsp(),
    .dma0_c2h_byp_out_port_id(),
    .dma0_c2h_byp_out_qid(),
    .dma0_c2h_byp_out_rdy(1'B1),
    .dma0_c2h_byp_out_st_mm(),
    .dma0_c2h_byp_out_vld(),
    .dma0_h2c_byp_in_mm_cidx(16'B0),
    .dma0_h2c_byp_in_mm_error(1'B0),
    .dma0_h2c_byp_in_mm_func(8'B0),
    .dma0_h2c_byp_in_mm_len(28'B0),
    .dma0_h2c_byp_in_mm_mrkr_req(1'B0),
    .dma0_h2c_byp_in_mm_port_id(3'B0),
    .dma0_h2c_byp_in_mm_qid(11'B0),
    .dma0_h2c_byp_in_mm_radr(64'B0),
    .dma0_h2c_byp_in_mm_rdy(),
    .dma0_h2c_byp_in_mm_sdi(1'B0),
    .dma0_h2c_byp_in_mm_vld(1'B0),
    .dma0_h2c_byp_in_mm_wadr(64'B0),
    .dma0_h2c_byp_in_st_addr(64'B0),
    .dma0_h2c_byp_in_st_cidx(16'B0),
    .dma0_h2c_byp_in_st_eop(1'B0),
    .dma0_h2c_byp_in_st_error(1'B0),
    .dma0_h2c_byp_in_st_func(8'B0),
    .dma0_h2c_byp_in_st_len(16'B0),
    .dma0_h2c_byp_in_st_mrkr_req(1'B0),
    .dma0_h2c_byp_in_st_no_dma(1'B0),
    .dma0_h2c_byp_in_st_port_id(3'B0),
    .dma0_h2c_byp_in_st_qid(11'B0),
    .dma0_h2c_byp_in_st_rdy(),
    .dma0_h2c_byp_in_st_sdi(1'B0),
    .dma0_h2c_byp_in_st_sop(1'B0),
    .dma0_h2c_byp_in_st_vld(1'B0),
    .dma0_c2h_byp_in_mm_cidx(16'B0),
    .dma0_c2h_byp_in_mm_error(1'B0),
    .dma0_c2h_byp_in_mm_func(8'B0),
    .dma0_c2h_byp_in_mm_len(28'B0),
    .dma0_c2h_byp_in_mm_mrkr_req(1'B0),
    .dma0_c2h_byp_in_mm_port_id(3'B0),
    .dma0_c2h_byp_in_mm_qid(11'B0),
    .dma0_c2h_byp_in_mm_radr(64'B0),
    .dma0_c2h_byp_in_mm_rdy(),
    .dma0_c2h_byp_in_mm_sdi(1'B0),
    .dma0_c2h_byp_in_mm_vld(1'B0),
    .dma0_c2h_byp_in_mm_wadr(64'B0),
    .dma0_c2h_byp_in_st_sim_addr(64'B0),
    .dma0_c2h_byp_in_st_sim_error(1'B0),
    .dma0_c2h_byp_in_st_sim_func(8'B0),
    .dma0_c2h_byp_in_st_sim_port_id(3'B0),
    .dma0_c2h_byp_in_st_sim_qid(11'B0),
    .dma0_c2h_byp_in_st_sim_rdy(),
    .dma0_c2h_byp_in_st_sim_vld(1'B0),
    .dma0_c2h_byp_in_st_csh_addr(64'B0),
    .dma0_c2h_byp_in_st_csh_error(1'B0),
    .dma0_c2h_byp_in_st_csh_func(8'B0),
    .dma0_c2h_byp_in_st_csh_port_id(3'B0),
    .dma0_c2h_byp_in_st_csh_qid(11'B0),
    .dma0_c2h_byp_in_st_csh_rdy(),
    .dma0_c2h_byp_in_st_csh_vld(1'B0),
    .dma0_tm_dsc_sts_vld(),
    .dma0_tm_dsc_sts_qen(),
    .dma0_tm_dsc_sts_port_id(),
    .dma0_tm_dsc_sts_err(),
    .dma0_tm_dsc_sts_byp(),
    .dma0_tm_dsc_sts_dir(),
    .dma0_tm_dsc_sts_mm(),
    .dma0_tm_dsc_sts_qid(),
    .dma0_tm_dsc_sts_avl(),
    .dma0_tm_dsc_sts_qinv(),
    .dma0_tm_dsc_sts_irq_arm(),
    .dma0_tm_dsc_sts_rdy(1'B1),
    .dma0_dsc_crdt_in_vld(1'B0),
    .dma0_dsc_crdt_in_rdy(),
    .dma0_dsc_crdt_in_sel(1'B0),
    .dma0_dsc_crdt_in_qid(11'B0),
    .dma0_dsc_crdt_in_crdt(16'B0),
    .dma0_usr_irq_vld(1'B0),
    .dma0_usr_irq_vec(5'B0),
    .dma0_usr_irq_fnc(8'B0),
    .dma0_usr_irq_ack(),
    .dma0_usr_irq_fail(),
    .dma0_axis_c2h_status_valid(),
    .dma0_axis_c2h_status_drop(),
    .dma0_axis_c2h_status_qid(),
    .pcie0_m_axis_dbg_tdata(),
    .pcie0_m_axis_dbg_tlast(),
    .pcie0_m_axis_dbg_tready(1'B1),
    .pcie0_m_axis_dbg_tvalid(),
    .pcie1_m_axis_dbg_tdata(),
    .pcie1_m_axis_dbg_tlast(),
    .pcie1_m_axis_dbg_tready(1'B1),
    .pcie1_m_axis_dbg_tvalid(),
    .pcie0_s_axis_dbg_tdata(32'B0),
    .pcie0_s_axis_dbg_tlast(1'B0),
    .pcie0_s_axis_dbg_tready(),
    .pcie0_s_axis_dbg_tvalid(1'B0),
    .pcie1_s_axis_dbg_tdata(32'B0),
    .pcie1_s_axis_dbg_tlast(1'B0),
    .pcie1_s_axis_dbg_tready(),
    .pcie1_s_axis_dbg_tvalid(1'B0),
    .pcie0_dbg_aclk(1'B0),
    .pcie1_dbg_aclk(1'B0),
    .pcie0_dbg_aresetn(1'B1),
    .pcie1_dbg_aresetn(1'B1),
    .mio_pl_18(),
    .mio_pl_19(),
    .mio_pl_24(),
    .mio_pl_25(),
    .mio_pl_38(),
    .mio_pl_39()
  );
endmodule
