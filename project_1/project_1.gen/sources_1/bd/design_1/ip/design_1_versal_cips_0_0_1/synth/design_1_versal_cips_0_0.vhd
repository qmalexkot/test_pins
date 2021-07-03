-- (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:versal_cips:2.1
-- IP Revision: 3

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_versal_cips_0_0 IS
  PORT (
    fpd_cci_noc_axi0_clk : OUT STD_LOGIC;
    fpd_cci_noc_axi0_awid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    fpd_cci_noc_axi0_awaddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    fpd_cci_noc_axi0_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    fpd_cci_noc_axi0_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    fpd_cci_noc_axi0_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    fpd_cci_noc_axi0_awlock : OUT STD_LOGIC;
    fpd_cci_noc_axi0_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    fpd_cci_noc_axi0_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    fpd_cci_noc_axi0_awvalid : OUT STD_LOGIC;
    fpd_cci_noc_axi0_awuser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    fpd_cci_noc_axi0_awready : IN STD_LOGIC;
    fpd_cci_noc_axi0_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    fpd_cci_noc_axi0_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    fpd_cci_noc_axi0_wuser : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
    fpd_cci_noc_axi0_wlast : OUT STD_LOGIC;
    fpd_cci_noc_axi0_wvalid : OUT STD_LOGIC;
    fpd_cci_noc_axi0_wready : IN STD_LOGIC;
    fpd_cci_noc_axi0_bid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    fpd_cci_noc_axi0_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    fpd_cci_noc_axi0_bvalid : IN STD_LOGIC;
    fpd_cci_noc_axi0_bready : OUT STD_LOGIC;
    fpd_cci_noc_axi0_arid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    fpd_cci_noc_axi0_araddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    fpd_cci_noc_axi0_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    fpd_cci_noc_axi0_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    fpd_cci_noc_axi0_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    fpd_cci_noc_axi0_arlock : OUT STD_LOGIC;
    fpd_cci_noc_axi0_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    fpd_cci_noc_axi0_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    fpd_cci_noc_axi0_arvalid : OUT STD_LOGIC;
    fpd_cci_noc_axi0_aruser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    fpd_cci_noc_axi0_arready : IN STD_LOGIC;
    fpd_cci_noc_axi0_rid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    fpd_cci_noc_axi0_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    fpd_cci_noc_axi0_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    fpd_cci_noc_axi0_rlast : IN STD_LOGIC;
    fpd_cci_noc_axi0_rvalid : IN STD_LOGIC;
    fpd_cci_noc_axi0_rready : OUT STD_LOGIC;
    fpd_cci_noc_axi0_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    fpd_cci_noc_axi0_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    fpd_cci_noc_axi1_clk : OUT STD_LOGIC;
    fpd_cci_noc_axi1_awid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    fpd_cci_noc_axi1_awaddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    fpd_cci_noc_axi1_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    fpd_cci_noc_axi1_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    fpd_cci_noc_axi1_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    fpd_cci_noc_axi1_awlock : OUT STD_LOGIC;
    fpd_cci_noc_axi1_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    fpd_cci_noc_axi1_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    fpd_cci_noc_axi1_awvalid : OUT STD_LOGIC;
    fpd_cci_noc_axi1_awuser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    fpd_cci_noc_axi1_awready : IN STD_LOGIC;
    fpd_cci_noc_axi1_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    fpd_cci_noc_axi1_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    fpd_cci_noc_axi1_wuser : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
    fpd_cci_noc_axi1_wlast : OUT STD_LOGIC;
    fpd_cci_noc_axi1_wvalid : OUT STD_LOGIC;
    fpd_cci_noc_axi1_wready : IN STD_LOGIC;
    fpd_cci_noc_axi1_bid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    fpd_cci_noc_axi1_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    fpd_cci_noc_axi1_bvalid : IN STD_LOGIC;
    fpd_cci_noc_axi1_bready : OUT STD_LOGIC;
    fpd_cci_noc_axi1_arid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    fpd_cci_noc_axi1_araddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    fpd_cci_noc_axi1_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    fpd_cci_noc_axi1_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    fpd_cci_noc_axi1_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    fpd_cci_noc_axi1_arlock : OUT STD_LOGIC;
    fpd_cci_noc_axi1_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    fpd_cci_noc_axi1_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    fpd_cci_noc_axi1_arvalid : OUT STD_LOGIC;
    fpd_cci_noc_axi1_aruser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    fpd_cci_noc_axi1_arready : IN STD_LOGIC;
    fpd_cci_noc_axi1_rid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    fpd_cci_noc_axi1_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    fpd_cci_noc_axi1_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    fpd_cci_noc_axi1_rlast : IN STD_LOGIC;
    fpd_cci_noc_axi1_rvalid : IN STD_LOGIC;
    fpd_cci_noc_axi1_rready : OUT STD_LOGIC;
    fpd_cci_noc_axi1_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    fpd_cci_noc_axi1_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    fpd_cci_noc_axi2_clk : OUT STD_LOGIC;
    fpd_cci_noc_axi2_awid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    fpd_cci_noc_axi2_awaddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    fpd_cci_noc_axi2_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    fpd_cci_noc_axi2_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    fpd_cci_noc_axi2_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    fpd_cci_noc_axi2_awlock : OUT STD_LOGIC;
    fpd_cci_noc_axi2_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    fpd_cci_noc_axi2_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    fpd_cci_noc_axi2_awvalid : OUT STD_LOGIC;
    fpd_cci_noc_axi2_awuser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    fpd_cci_noc_axi2_awready : IN STD_LOGIC;
    fpd_cci_noc_axi2_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    fpd_cci_noc_axi2_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    fpd_cci_noc_axi2_wuser : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
    fpd_cci_noc_axi2_wlast : OUT STD_LOGIC;
    fpd_cci_noc_axi2_wvalid : OUT STD_LOGIC;
    fpd_cci_noc_axi2_wready : IN STD_LOGIC;
    fpd_cci_noc_axi2_bid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    fpd_cci_noc_axi2_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    fpd_cci_noc_axi2_bvalid : IN STD_LOGIC;
    fpd_cci_noc_axi2_bready : OUT STD_LOGIC;
    fpd_cci_noc_axi2_arid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    fpd_cci_noc_axi2_araddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    fpd_cci_noc_axi2_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    fpd_cci_noc_axi2_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    fpd_cci_noc_axi2_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    fpd_cci_noc_axi2_arlock : OUT STD_LOGIC;
    fpd_cci_noc_axi2_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    fpd_cci_noc_axi2_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    fpd_cci_noc_axi2_arvalid : OUT STD_LOGIC;
    fpd_cci_noc_axi2_aruser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    fpd_cci_noc_axi2_arready : IN STD_LOGIC;
    fpd_cci_noc_axi2_rid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    fpd_cci_noc_axi2_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    fpd_cci_noc_axi2_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    fpd_cci_noc_axi2_rlast : IN STD_LOGIC;
    fpd_cci_noc_axi2_rvalid : IN STD_LOGIC;
    fpd_cci_noc_axi2_rready : OUT STD_LOGIC;
    fpd_cci_noc_axi2_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    fpd_cci_noc_axi2_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    fpd_cci_noc_axi3_clk : OUT STD_LOGIC;
    fpd_cci_noc_axi3_awid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    fpd_cci_noc_axi3_awaddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    fpd_cci_noc_axi3_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    fpd_cci_noc_axi3_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    fpd_cci_noc_axi3_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    fpd_cci_noc_axi3_awlock : OUT STD_LOGIC;
    fpd_cci_noc_axi3_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    fpd_cci_noc_axi3_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    fpd_cci_noc_axi3_awvalid : OUT STD_LOGIC;
    fpd_cci_noc_axi3_awuser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    fpd_cci_noc_axi3_wuser : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
    fpd_cci_noc_axi3_awready : IN STD_LOGIC;
    fpd_cci_noc_axi3_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    fpd_cci_noc_axi3_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    fpd_cci_noc_axi3_wlast : OUT STD_LOGIC;
    fpd_cci_noc_axi3_wvalid : OUT STD_LOGIC;
    fpd_cci_noc_axi3_wready : IN STD_LOGIC;
    fpd_cci_noc_axi3_bid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    fpd_cci_noc_axi3_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    fpd_cci_noc_axi3_bvalid : IN STD_LOGIC;
    fpd_cci_noc_axi3_bready : OUT STD_LOGIC;
    fpd_cci_noc_axi3_arid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    fpd_cci_noc_axi3_araddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    fpd_cci_noc_axi3_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    fpd_cci_noc_axi3_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    fpd_cci_noc_axi3_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    fpd_cci_noc_axi3_arlock : OUT STD_LOGIC;
    fpd_cci_noc_axi3_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    fpd_cci_noc_axi3_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    fpd_cci_noc_axi3_arvalid : OUT STD_LOGIC;
    fpd_cci_noc_axi3_aruser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    fpd_cci_noc_axi3_arready : IN STD_LOGIC;
    fpd_cci_noc_axi3_rid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    fpd_cci_noc_axi3_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    fpd_cci_noc_axi3_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    fpd_cci_noc_axi3_rlast : IN STD_LOGIC;
    fpd_cci_noc_axi3_rvalid : IN STD_LOGIC;
    fpd_cci_noc_axi3_rready : OUT STD_LOGIC;
    fpd_cci_noc_axi3_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    fpd_cci_noc_axi3_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    fpd_axi_noc_axi0_clk : OUT STD_LOGIC;
    fpd_axi_noc_axi0_awid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    fpd_axi_noc_axi0_awaddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    fpd_axi_noc_axi0_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    fpd_axi_noc_axi0_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    fpd_axi_noc_axi0_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    fpd_axi_noc_axi0_awlock : OUT STD_LOGIC;
    fpd_axi_noc_axi0_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    fpd_axi_noc_axi0_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    fpd_axi_noc_axi0_awvalid : OUT STD_LOGIC;
    fpd_axi_noc_axi0_awuser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    fpd_axi_noc_axi0_awready : IN STD_LOGIC;
    fpd_axi_noc_axi0_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    fpd_axi_noc_axi0_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    fpd_axi_noc_axi0_wlast : OUT STD_LOGIC;
    fpd_axi_noc_axi0_wvalid : OUT STD_LOGIC;
    fpd_axi_noc_axi0_wready : IN STD_LOGIC;
    fpd_axi_noc_axi0_bid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    fpd_axi_noc_axi0_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    fpd_axi_noc_axi0_bvalid : IN STD_LOGIC;
    fpd_axi_noc_axi0_bready : OUT STD_LOGIC;
    fpd_axi_noc_axi0_arid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    fpd_axi_noc_axi0_araddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    fpd_axi_noc_axi0_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    fpd_axi_noc_axi0_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    fpd_axi_noc_axi0_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    fpd_axi_noc_axi0_arlock : OUT STD_LOGIC;
    fpd_axi_noc_axi0_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    fpd_axi_noc_axi0_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    fpd_axi_noc_axi0_arvalid : OUT STD_LOGIC;
    fpd_axi_noc_axi0_aruser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    fpd_axi_noc_axi0_arready : IN STD_LOGIC;
    fpd_axi_noc_axi0_rid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    fpd_axi_noc_axi0_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    fpd_axi_noc_axi0_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    fpd_axi_noc_axi0_rlast : IN STD_LOGIC;
    fpd_axi_noc_axi0_rvalid : IN STD_LOGIC;
    fpd_axi_noc_axi0_rready : OUT STD_LOGIC;
    fpd_axi_noc_axi0_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    fpd_axi_noc_axi0_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    cpm_pcie_noc_axi0_clk : OUT STD_LOGIC;
    cpm_pcie_noc_axi0_awid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    cpm_pcie_noc_axi0_awaddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    cpm_pcie_noc_axi0_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    cpm_pcie_noc_axi0_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    cpm_pcie_noc_axi0_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    cpm_pcie_noc_axi0_awlock : OUT STD_LOGIC;
    cpm_pcie_noc_axi0_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    cpm_pcie_noc_axi0_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    cpm_pcie_noc_axi0_awvalid : OUT STD_LOGIC;
    cpm_pcie_noc_axi0_awuser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    cpm_pcie_noc_axi0_awready : IN STD_LOGIC;
    cpm_pcie_noc_axi0_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    cpm_pcie_noc_axi0_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    cpm_pcie_noc_axi0_wlast : OUT STD_LOGIC;
    cpm_pcie_noc_axi0_wvalid : OUT STD_LOGIC;
    cpm_pcie_noc_axi0_wready : IN STD_LOGIC;
    cpm_pcie_noc_axi0_bid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    cpm_pcie_noc_axi0_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    cpm_pcie_noc_axi0_bvalid : IN STD_LOGIC;
    cpm_pcie_noc_axi0_bready : OUT STD_LOGIC;
    cpm_pcie_noc_axi0_arid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    cpm_pcie_noc_axi0_araddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    cpm_pcie_noc_axi0_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    cpm_pcie_noc_axi0_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    cpm_pcie_noc_axi0_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    cpm_pcie_noc_axi0_arlock : OUT STD_LOGIC;
    cpm_pcie_noc_axi0_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    cpm_pcie_noc_axi0_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    cpm_pcie_noc_axi0_arvalid : OUT STD_LOGIC;
    cpm_pcie_noc_axi0_aruser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    cpm_pcie_noc_axi0_arready : IN STD_LOGIC;
    cpm_pcie_noc_axi0_rid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    cpm_pcie_noc_axi0_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    cpm_pcie_noc_axi0_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    cpm_pcie_noc_axi0_rlast : IN STD_LOGIC;
    cpm_pcie_noc_axi0_rvalid : IN STD_LOGIC;
    cpm_pcie_noc_axi0_rready : OUT STD_LOGIC;
    cpm_pcie_noc_axi0_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    cpm_pcie_noc_axi0_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    cpm_pcie_noc_axi1_clk : OUT STD_LOGIC;
    cpm_pcie_noc_axi1_awid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    cpm_pcie_noc_axi1_awaddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    cpm_pcie_noc_axi1_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    cpm_pcie_noc_axi1_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    cpm_pcie_noc_axi1_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    cpm_pcie_noc_axi1_awlock : OUT STD_LOGIC;
    cpm_pcie_noc_axi1_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    cpm_pcie_noc_axi1_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    cpm_pcie_noc_axi1_awvalid : OUT STD_LOGIC;
    cpm_pcie_noc_axi1_awuser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    cpm_pcie_noc_axi1_awready : IN STD_LOGIC;
    cpm_pcie_noc_axi1_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    cpm_pcie_noc_axi1_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    cpm_pcie_noc_axi1_wlast : OUT STD_LOGIC;
    cpm_pcie_noc_axi1_wvalid : OUT STD_LOGIC;
    cpm_pcie_noc_axi1_wready : IN STD_LOGIC;
    cpm_pcie_noc_axi1_bid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    cpm_pcie_noc_axi1_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    cpm_pcie_noc_axi1_bvalid : IN STD_LOGIC;
    cpm_pcie_noc_axi1_bready : OUT STD_LOGIC;
    cpm_pcie_noc_axi1_arid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    cpm_pcie_noc_axi1_araddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    cpm_pcie_noc_axi1_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    cpm_pcie_noc_axi1_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    cpm_pcie_noc_axi1_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    cpm_pcie_noc_axi1_arlock : OUT STD_LOGIC;
    cpm_pcie_noc_axi1_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    cpm_pcie_noc_axi1_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    cpm_pcie_noc_axi1_arvalid : OUT STD_LOGIC;
    cpm_pcie_noc_axi1_aruser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    cpm_pcie_noc_axi1_arready : IN STD_LOGIC;
    cpm_pcie_noc_axi1_rid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    cpm_pcie_noc_axi1_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    cpm_pcie_noc_axi1_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    cpm_pcie_noc_axi1_rlast : IN STD_LOGIC;
    cpm_pcie_noc_axi1_rvalid : IN STD_LOGIC;
    cpm_pcie_noc_axi1_rready : OUT STD_LOGIC;
    cpm_pcie_noc_axi1_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    cpm_pcie_noc_axi1_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    lpd_axi_noc_clk : OUT STD_LOGIC;
    noc_lpd_axi_axi0_awid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    noc_lpd_axi_axi0_awaddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    noc_lpd_axi_axi0_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    noc_lpd_axi_axi0_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    noc_lpd_axi_axi0_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    noc_lpd_axi_axi0_awlock : OUT STD_LOGIC;
    noc_lpd_axi_axi0_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    noc_lpd_axi_axi0_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    noc_lpd_axi_axi0_awvalid : OUT STD_LOGIC;
    noc_lpd_axi_axi0_awuser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    noc_lpd_axi_axi0_awready : IN STD_LOGIC;
    noc_lpd_axi_axi0_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    noc_lpd_axi_axi0_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    noc_lpd_axi_axi0_wlast : OUT STD_LOGIC;
    noc_lpd_axi_axi0_wvalid : OUT STD_LOGIC;
    noc_lpd_axi_axi0_wready : IN STD_LOGIC;
    noc_lpd_axi_axi0_bid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    noc_lpd_axi_axi0_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    noc_lpd_axi_axi0_bvalid : IN STD_LOGIC;
    noc_lpd_axi_axi0_bready : OUT STD_LOGIC;
    noc_lpd_axi_axi0_arid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    noc_lpd_axi_axi0_araddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    noc_lpd_axi_axi0_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    noc_lpd_axi_axi0_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    noc_lpd_axi_axi0_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    noc_lpd_axi_axi0_arlock : OUT STD_LOGIC;
    noc_lpd_axi_axi0_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    noc_lpd_axi_axi0_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    noc_lpd_axi_axi0_arvalid : OUT STD_LOGIC;
    noc_lpd_axi_axi0_aruser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    noc_lpd_axi_axi0_arready : IN STD_LOGIC;
    noc_lpd_axi_axi0_rid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    noc_lpd_axi_axi0_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    noc_lpd_axi_axi0_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    noc_lpd_axi_axi0_rlast : IN STD_LOGIC;
    noc_lpd_axi_axi0_rvalid : IN STD_LOGIC;
    noc_lpd_axi_axi0_rready : OUT STD_LOGIC;
    noc_lpd_axi_axi0_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    noc_lpd_axi_axi0_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    pmc_noc_axi0_araddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    pmc_noc_axi0_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    pmc_noc_axi0_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    pmc_noc_axi0_arid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    pmc_noc_axi0_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    pmc_noc_axi0_arlock : OUT STD_LOGIC;
    pmc_noc_axi0_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    pmc_noc_axi0_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    pmc_noc_axi0_arregion : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    pmc_noc_axi0_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    pmc_noc_axi0_aruser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    pmc_noc_axi0_arvalid : OUT STD_LOGIC;
    pmc_noc_axi0_awaddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    pmc_noc_axi0_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    pmc_noc_axi0_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    pmc_noc_axi0_awid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    pmc_noc_axi0_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    pmc_noc_axi0_awlock : OUT STD_LOGIC;
    pmc_noc_axi0_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    pmc_noc_axi0_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    pmc_noc_axi0_awregion : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    pmc_noc_axi0_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    pmc_noc_axi0_awuser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    pmc_noc_axi0_awvalid : OUT STD_LOGIC;
    pmc_noc_axi0_bready : OUT STD_LOGIC;
    pmc_noc_axi0_rready : OUT STD_LOGIC;
    pmc_noc_axi0_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    pmc_noc_axi0_wid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    pmc_noc_axi0_wlast : OUT STD_LOGIC;
    pmc_noc_axi0_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    pmc_noc_axi0_wuser : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
    pmc_noc_axi0_wvalid : OUT STD_LOGIC;
    pmc_axi_noc_axi0_clk : OUT STD_LOGIC;
    pmc_noc_axi0_arready : IN STD_LOGIC;
    pmc_noc_axi0_awready : IN STD_LOGIC;
    pmc_noc_axi0_bid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    pmc_noc_axi0_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    pmc_noc_axi0_buser : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    pmc_noc_axi0_bvalid : IN STD_LOGIC;
    pmc_noc_axi0_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    pmc_noc_axi0_rid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    pmc_noc_axi0_rlast : IN STD_LOGIC;
    pmc_noc_axi0_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    pmc_noc_axi0_ruser : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
    pmc_noc_axi0_rvalid : IN STD_LOGIC;
    pmc_noc_axi0_wready : IN STD_LOGIC;
    gem0_tsu_timer_cnt : OUT STD_LOGIC_VECTOR(93 DOWNTO 0);
    pcie0_user_clk : OUT STD_LOGIC;
    pcie1_user_clk : OUT STD_LOGIC;
    dma0_axi_aresetn : OUT STD_LOGIC;
    dma0_soft_resetn : IN STD_LOGIC;
    pcie1_user_reset : OUT STD_LOGIC;
    cpm_cor_irq : OUT STD_LOGIC;
    cpm_irq0 : IN STD_LOGIC;
    cpm_irq1 : IN STD_LOGIC;
    cpm_misc_irq : OUT STD_LOGIC;
    cpm_uncor_irq : OUT STD_LOGIC;
    dma0_irq : OUT STD_LOGIC;
    pcie0_user_lnk_up : OUT STD_LOGIC;
    pcie1_user_lnk_up : OUT STD_LOGIC;
    pcie1_s_axis_rq_tdata : IN STD_LOGIC_VECTOR(511 DOWNTO 0);
    pcie1_s_axis_rq_tkeep : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    pcie1_s_axis_rq_tlast : IN STD_LOGIC;
    pcie1_s_axis_rq_tuser : IN STD_LOGIC_VECTOR(178 DOWNTO 0);
    pcie1_s_axis_rq_tvalid : IN STD_LOGIC;
    pcie1_s_axis_rq_tready : OUT STD_LOGIC;
    pcie1_s_axis_cc_tdata : IN STD_LOGIC_VECTOR(511 DOWNTO 0);
    pcie1_s_axis_cc_tkeep : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    pcie1_s_axis_cc_tlast : IN STD_LOGIC;
    pcie1_s_axis_cc_tuser : IN STD_LOGIC_VECTOR(80 DOWNTO 0);
    pcie1_s_axis_cc_tvalid : IN STD_LOGIC;
    pcie1_s_axis_cc_tready : OUT STD_LOGIC;
    pcie1_m_axis_rc_tdata : OUT STD_LOGIC_VECTOR(511 DOWNTO 0);
    pcie1_m_axis_rc_tkeep : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    pcie1_m_axis_rc_tlast : OUT STD_LOGIC;
    pcie1_m_axis_rc_tuser : OUT STD_LOGIC_VECTOR(160 DOWNTO 0);
    pcie1_m_axis_rc_tvalid : OUT STD_LOGIC;
    pcie1_m_axis_rc_tready : IN STD_LOGIC;
    pcie1_m_axis_cq_tdata : OUT STD_LOGIC_VECTOR(511 DOWNTO 0);
    pcie1_m_axis_cq_tkeep : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    pcie1_m_axis_cq_tlast : OUT STD_LOGIC;
    pcie1_m_axis_cq_tuser : OUT STD_LOGIC_VECTOR(182 DOWNTO 0);
    pcie1_m_axis_cq_tvalid : OUT STD_LOGIC;
    pcie1_m_axis_cq_tready : IN STD_LOGIC;
    pcie1_cfg_interrupt_int : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    pcie1_cfg_interrupt_sent : OUT STD_LOGIC;
    pcie1_cfg_interrupt_pending : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    xdma0_usr_irq_req : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    xdma0_usr_irq_ack : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    pcie1_cfg_msi_enable : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    pcie1_cfg_msi_mmenable : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    pcie1_cfg_msi_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    pcie1_cfg_msi_attr : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    pcie1_cfg_msi_function_number : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    pcie1_cfg_msi_int_vector : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    pcie1_cfg_msi_pending_status : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    pcie1_cfg_msi_pending_status_data_enable : IN STD_LOGIC;
    pcie1_cfg_msi_pending_status_function_number : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    pcie1_cfg_msi_select : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    pcie1_cfg_msi_tph_present : IN STD_LOGIC;
    pcie1_cfg_msi_tph_st_tag : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    pcie1_cfg_msi_tph_type : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    pcie0_gt_rxn : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    pcie0_gt_rxp : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    pcie0_gt_txn : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    pcie0_gt_txp : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    pcie1_gt_rxn : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    pcie1_gt_rxp : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    pcie1_gt_txn : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    pcie1_gt_txp : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    gt_refclk0_n : IN STD_LOGIC;
    gt_refclk0_p : IN STD_LOGIC;
    gt_refclk1_n : IN STD_LOGIC;
    gt_refclk1_p : IN STD_LOGIC;
    dma0_st_rx_msg_rdy : IN STD_LOGIC;
    dma0_st_rx_msg_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    dma0_st_rx_msg_valid : OUT STD_LOGIC;
    dma0_st_rx_msg_last : OUT STD_LOGIC
  );
END design_1_versal_cips_0_0;

ARCHITECTURE design_1_versal_cips_0_0_arch OF design_1_versal_cips_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_versal_cips_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT versal_cips_v2_1_3_versal_cips IS
    GENERIC (
      C_M_AXI_GP0_DATA_WIDTH : INTEGER;
      C_M_AXI_GP2_DATA_WIDTH : INTEGER;
      C_DIFF_RW_CLK_S_AXI_GP0 : INTEGER;
      C_DIFF_RW_CLK_S_AXI_GP2 : INTEGER;
      C_DIFF_RW_CLK_S_AXI_GP4 : INTEGER;
      C_S_AXI_GP0_DATA_WIDTH : INTEGER;
      C_S_AXI_GP2_DATA_WIDTH : INTEGER;
      C_S_AXI_GP4_DATA_WIDTH : INTEGER;
      C_S_AXI_ACP_DATA_WIDTH : INTEGER;
      C_S_AXI_ACE_DATA_WIDTH : INTEGER;
      C_PS_NOC_CCI_DATA_WIDTH : INTEGER;
      C_PS_NOC_NCI_DATA_WIDTH : INTEGER;
      C_NOC_PS_CCI_DATA_WIDTH : INTEGER;
      C_PS_NOC_PCI_DATA_WIDTH : INTEGER;
      C_NOC_PS_PCI_DATA_WIDTH : INTEGER;
      C_PS_NOC_PMC_DATA_WIDTH : INTEGER;
      C_NOC_PS_PMC_DATA_WIDTH : INTEGER;
      C_PS_NOC_RPU_DATA_WIDTH : INTEGER;
      C_PS_EMIO_GPIO_WIDTH : INTEGER;
      C_PMC_EMIO_GPIO_WIDTH : INTEGER;
      C_PMC_NOC_ADDR_WIDTH : INTEGER;
      C_PMC_NOC_DATA_WIDTH : INTEGER;
      C_NOC_PMC_ADDR_WIDTH : INTEGER;
      C_NOC_PMC_DATA_WIDTH : INTEGER;
      C_XDEVICE : STRING;
      C_SIM_DEVICE : STRING;
      C_SPP_PSPMC_TO_CORE_WIDTH : INTEGER;
      C_SPP_PSPMC_FROM_CORE_WIDTH : INTEGER;
      C_NUM_F2P0_INTR_INPUTS : STRING;
      C_NUM_F2P1_INTR_INPUTS : STRING;
      C_PMCPL_CLK0_BUF : INTEGER;
      C_PMCPL_CLK1_BUF : INTEGER;
      C_PMCPL_CLK2_BUF : INTEGER;
      C_PMCPL_CLK3_BUF : INTEGER;
      C_PMCPL_IRO_CLK_BUF : INTEGER;
      C_ACE_LITE : INTEGER;
      C_AXI4_EXT_USER_BITS : INTEGER;
      C_SUBCORE_NAME : STRING;
      C_CORE_NAME : STRING;
      C_SD0_DATA_WIDTH : INTEGER;
      C_SD1_DATA_WIDTH : INTEGER;
      C_PS_TRACE_WIDTH : INTEGER;
      C_VIP_SUBCORE_NAME : STRING;
      C_PS_HSDP_INGRESS_TRAFFIC : STRING;
      C_CPM_PERIPHERAL_EN : INTEGER;
      C_CPM_PCIE0_CONTROLLER_ENABLE : INTEGER;
      C_CPM_PCIE1_CONTROLLER_ENABLE : INTEGER;
      C_CPM_PCIE0_USER_CLK_FREQ : STRING;
      C_CPM_PCIE1_USER_CLK_FREQ : STRING;
      C_PS_ENABLE_HSDP : INTEGER;
      C_PS_HSDP_MODE : STRING;
      C_CPM_USE_MODES : INTEGER;
      C_CPM_PCIE0_PL_LINK_CAP_MAX_LINK_WIDTH : INTEGER;
      C_CPM_PCIE1_PL_LINK_CAP_MAX_LINK_WIDTH : INTEGER;
      C_CPM_PCIE0_AXISTEN_IF_WIDTH : INTEGER;
      C_CPM_PCIE1_AXISTEN_IF_WIDTH : INTEGER;
      C_CPM_PCIE0_MODES : STRING;
      C_CPM_PCIE1_MODES : STRING;
      C_CPM_PCIE0_TL_PF_ENABLE_REG : INTEGER;
      C_CPM_PCIE0_PF0_SRIOV_CAP_TOTAL_VF : INTEGER;
      C_CPM_PCIE0_PF1_SRIOV_CAP_TOTAL_VF : INTEGER;
      C_CPM_PCIE0_PF2_SRIOV_CAP_TOTAL_VF : INTEGER;
      C_CPM_PCIE0_PF3_SRIOV_CAP_TOTAL_VF : INTEGER;
      C_CPM_PCIE0_PF0_SRIOV_FIRST_VF_OFFSET : INTEGER;
      C_CPM_PCIE0_PF1_SRIOV_FIRST_VF_OFFSET : INTEGER;
      C_CPM_PCIE0_PF2_SRIOV_FIRST_VF_OFFSET : INTEGER;
      C_CPM_PCIE0_PF3_SRIOV_FIRST_VF_OFFSET : INTEGER;
      C_CPM_PCIE0_SRIOV_CAP_ENABLE : INTEGER;
      C_CPM_PCIE1_SRIOV_CAP_ENABLE : INTEGER;
      C_CPM_PCIE0_ARI_CAP_ENABLE : INTEGER;
      C_CPM_PCIE1_ARI_CAP_ENABLE : INTEGER;
      C_CPM_PCIE0_PF0_PRI_CAP_ON : INTEGER;
      C_CPM_PCIE0_PF1_PRI_CAP_ON : INTEGER;
      C_CPM_PCIE0_PF2_PRI_CAP_ON : INTEGER;
      C_CPM_PCIE0_PF3_PRI_CAP_ON : INTEGER;
      C_CPM_PCIE0_PF0_ATS_CAP_ON : INTEGER;
      C_CPM_PCIE0_PF1_ATS_CAP_ON : INTEGER;
      C_CPM_PCIE0_PF2_ATS_CAP_ON : INTEGER;
      C_CPM_PCIE0_PF3_ATS_CAP_ON : INTEGER;
      C_CPM_PCIE0_VFG0_ATS_CAP_ON : INTEGER;
      C_CPM_PCIE0_VFG1_ATS_CAP_ON : INTEGER;
      C_CPM_PCIE0_VFG2_ATS_CAP_ON : INTEGER;
      C_CPM_PCIE0_VFG3_ATS_CAP_ON : INTEGER;
      C_CPM_PCIE0_VFG0_PRI_CAP_ON : INTEGER;
      C_CPM_PCIE0_VFG1_PRI_CAP_ON : INTEGER;
      C_CPM_PCIE0_VFG2_PRI_CAP_ON : INTEGER;
      C_CPM_PCIE0_VFG3_PRI_CAP_ON : INTEGER;
      C_CPM_PCIE0_AXIS_CC_TUSER_WIDTH : INTEGER;
      C_CPM_PCIE1_AXIS_CC_TUSER_WIDTH : INTEGER;
      C_CPM_PCIE0_AXIS_RC_TUSER_WIDTH : INTEGER;
      C_CPM_PCIE1_AXIS_RC_TUSER_WIDTH : INTEGER;
      C_CPM_PCIE0_AXIS_RQ_TUSER_WIDTH : INTEGER;
      C_CPM_PCIE1_AXIS_RQ_TUSER_WIDTH : INTEGER;
      C_CPM_PCIE0_AXIS_CQ_TUSER_WIDTH : INTEGER;
      C_CPM_PCIE1_AXIS_CQ_TUSER_WIDTH : INTEGER;
      C_CPM_PCIE0_PF0_PASID_CAP_ON : INTEGER;
      C_CPM_PCIE0_PL_UPSTREAM_FACING : INTEGER;
      C_CPM_PCIE0_FUNCTIONAL_MODE : STRING;
      C_CPM_PCIE1_TL_PF_ENABLE_REG : INTEGER;
      C_CPM_PCIE1_PF0_SRIOV_CAP_TOTAL_VF : INTEGER;
      C_CPM_PCIE1_PF1_SRIOV_CAP_TOTAL_VF : INTEGER;
      C_CPM_PCIE1_PF2_SRIOV_CAP_TOTAL_VF : INTEGER;
      C_CPM_PCIE1_PF3_SRIOV_CAP_TOTAL_VF : INTEGER;
      C_CPM_PCIE1_PF0_SRIOV_FIRST_VF_OFFSET : INTEGER;
      C_CPM_PCIE1_PF1_SRIOV_FIRST_VF_OFFSET : INTEGER;
      C_CPM_PCIE1_PF2_SRIOV_FIRST_VF_OFFSET : INTEGER;
      C_CPM_PCIE1_PF3_SRIOV_FIRST_VF_OFFSET : INTEGER;
      C_CPM_PCIE0_LINK_WIDTH_FOR_POWER : INTEGER;
      C_CPM_PCIE1_LINK_WIDTH_FOR_POWER : INTEGER;
      C_CPM_PCIE_CHANNELS_FOR_POWER : INTEGER;
      C_CPM_PCIE0_MODE_FOR_POWER : STRING;
      C_CPM_PCIE1_MODE_FOR_POWER : STRING;
      C_CPM_PCIE0_LINK_SPEED_FOR_POWER : STRING;
      C_CPM_PCIE1_LINK_SPEED_FOR_POWER : STRING;
      C_CPM_PCIE1_PF0_PRI_CAP_ON : INTEGER;
      C_CPM_PCIE1_PF1_PRI_CAP_ON : INTEGER;
      C_CPM_PCIE1_PF2_PRI_CAP_ON : INTEGER;
      C_CPM_PCIE1_PF3_PRI_CAP_ON : INTEGER;
      C_CPM_PCIE1_PF0_ATS_CAP_ON : INTEGER;
      C_CPM_PCIE1_PF1_ATS_CAP_ON : INTEGER;
      C_CPM_PCIE1_PF2_ATS_CAP_ON : INTEGER;
      C_CPM_PCIE1_PF3_ATS_CAP_ON : INTEGER;
      C_CPM_PCIE1_VFG0_ATS_CAP_ON : INTEGER;
      C_CPM_PCIE1_VFG1_ATS_CAP_ON : INTEGER;
      C_CPM_PCIE1_VFG2_ATS_CAP_ON : INTEGER;
      C_CPM_PCIE1_VFG3_ATS_CAP_ON : INTEGER;
      C_CPM_PCIE1_VFG0_PRI_CAP_ON : INTEGER;
      C_CPM_PCIE1_VFG1_PRI_CAP_ON : INTEGER;
      C_CPM_PCIE1_VFG2_PRI_CAP_ON : INTEGER;
      C_CPM_PCIE1_VFG3_PRI_CAP_ON : INTEGER;
      C_CPM_PCIE1_PF0_PASID_CAP_ON : INTEGER;
      C_CPM_PCIE1_PL_UPSTREAM_FACING : INTEGER;
      C_XPIPE_0_CLKDLY_CFG : INTEGER;
      C_XPIPE_0_CLK_CFG : INTEGER;
      C_XPIPE_0_INSTANTIATED : INTEGER;
      C_XPIPE_0_LINK0_CFG : STRING;
      C_XPIPE_0_LINK1_CFG : STRING;
      C_XPIPE_0_LOC : STRING;
      C_XPIPE_0_MODE : INTEGER;
      C_XPIPE_0_REG_CFG : INTEGER;
      C_XPIPE_0_RSVD : INTEGER;
      C_XPIPE_1_CLKDLY_CFG : INTEGER;
      C_XPIPE_1_CLK_CFG : INTEGER;
      C_XPIPE_1_INSTANTIATED : INTEGER;
      C_XPIPE_1_LINK0_CFG : STRING;
      C_XPIPE_1_LINK1_CFG : STRING;
      C_XPIPE_1_LOC : STRING;
      C_XPIPE_1_MODE : INTEGER;
      C_XPIPE_1_REG_CFG : INTEGER;
      C_XPIPE_1_RSVD : INTEGER;
      C_XPIPE_2_CLKDLY_CFG : INTEGER;
      C_XPIPE_2_CLK_CFG : INTEGER;
      C_XPIPE_2_INSTANTIATED : INTEGER;
      C_XPIPE_2_LINK0_CFG : STRING;
      C_XPIPE_2_LINK1_CFG : STRING;
      C_XPIPE_2_LOC : STRING;
      C_XPIPE_2_MODE : INTEGER;
      C_XPIPE_2_REG_CFG : INTEGER;
      C_XPIPE_2_RSVD : INTEGER;
      C_XPIPE_3_CLKDLY_CFG : INTEGER;
      C_XPIPE_3_CLK_CFG : INTEGER;
      C_XPIPE_3_INSTANTIATED : INTEGER;
      C_XPIPE_3_LINK0_CFG : STRING;
      C_XPIPE_3_LINK1_CFG : STRING;
      C_XPIPE_3_LOC : STRING;
      C_XPIPE_3_MODE : INTEGER;
      C_XPIPE_3_REG_CFG : INTEGER;
      C_XPIPE_3_RSVD : INTEGER;
      C_CPM_PCIE0_NUM_USR_IRQ : INTEGER;
      C_CPM_PCIE0_PF0_MSI_ENABLED : INTEGER;
      C_CPM_PCIE1_PF0_MSI_ENABLED : INTEGER
    );
    PORT (
      m_axi_fpd_aclk : IN STD_LOGIC;
      m_axi_fpd_awid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axi_fpd_awaddr : OUT STD_LOGIC_VECTOR(43 DOWNTO 0);
      m_axi_fpd_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_fpd_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_fpd_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_fpd_awlock : OUT STD_LOGIC;
      m_axi_fpd_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_fpd_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_fpd_awvalid : OUT STD_LOGIC;
      m_axi_fpd_awuser : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axi_fpd_awready : IN STD_LOGIC;
      m_axi_fpd_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      m_axi_fpd_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axi_fpd_wlast : OUT STD_LOGIC;
      m_axi_fpd_wvalid : OUT STD_LOGIC;
      m_axi_fpd_wready : IN STD_LOGIC;
      m_axi_fpd_bid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axi_fpd_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_fpd_bvalid : IN STD_LOGIC;
      m_axi_fpd_bready : OUT STD_LOGIC;
      m_axi_fpd_arid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axi_fpd_araddr : OUT STD_LOGIC_VECTOR(43 DOWNTO 0);
      m_axi_fpd_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_fpd_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_fpd_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_fpd_arlock : OUT STD_LOGIC;
      m_axi_fpd_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_fpd_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_fpd_arvalid : OUT STD_LOGIC;
      m_axi_fpd_aruser : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axi_fpd_arready : IN STD_LOGIC;
      m_axi_fpd_rid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axi_fpd_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      m_axi_fpd_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_fpd_rlast : IN STD_LOGIC;
      m_axi_fpd_rvalid : IN STD_LOGIC;
      m_axi_fpd_rready : OUT STD_LOGIC;
      m_axi_fpd_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_fpd_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_lpd_aclk : IN STD_LOGIC;
      m_axi_lpd_awid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axi_lpd_awaddr : OUT STD_LOGIC_VECTOR(43 DOWNTO 0);
      m_axi_lpd_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_lpd_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_lpd_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_lpd_awlock : OUT STD_LOGIC;
      m_axi_lpd_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_lpd_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_lpd_awvalid : OUT STD_LOGIC;
      m_axi_lpd_awuser : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axi_lpd_awready : IN STD_LOGIC;
      m_axi_lpd_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      m_axi_lpd_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axi_lpd_wlast : OUT STD_LOGIC;
      m_axi_lpd_wvalid : OUT STD_LOGIC;
      m_axi_lpd_wready : IN STD_LOGIC;
      m_axi_lpd_bid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axi_lpd_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_lpd_bvalid : IN STD_LOGIC;
      m_axi_lpd_bready : OUT STD_LOGIC;
      m_axi_lpd_arid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axi_lpd_araddr : OUT STD_LOGIC_VECTOR(43 DOWNTO 0);
      m_axi_lpd_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_lpd_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_lpd_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_lpd_arlock : OUT STD_LOGIC;
      m_axi_lpd_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_lpd_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_lpd_arvalid : OUT STD_LOGIC;
      m_axi_lpd_aruser : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axi_lpd_arready : IN STD_LOGIC;
      m_axi_lpd_rid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axi_lpd_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      m_axi_lpd_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_lpd_rlast : IN STD_LOGIC;
      m_axi_lpd_rvalid : IN STD_LOGIC;
      m_axi_lpd_rready : OUT STD_LOGIC;
      m_axi_lpd_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_lpd_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_fpd_araddr : IN STD_LOGIC_VECTOR(48 DOWNTO 0);
      s_axi_fpd_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_fpd_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_fpd_arid : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_fpd_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi_fpd_arlock : IN STD_LOGIC;
      s_axi_fpd_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_fpd_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_fpd_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_fpd_aruser : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      s_axi_fpd_awaddr : IN STD_LOGIC_VECTOR(48 DOWNTO 0);
      s_axi_fpd_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_fpd_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_fpd_awid : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_fpd_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi_fpd_awlock : IN STD_LOGIC;
      s_axi_fpd_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_fpd_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_fpd_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_fpd_awuser : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      s_axi_fpd_awvalid : IN STD_LOGIC;
      s_axi_fpd_bready : IN STD_LOGIC;
      s_axi_fpd_rclk : IN STD_LOGIC;
      s_axi_fpd_aclk : IN STD_LOGIC;
      s_axi_fpd_rready : IN STD_LOGIC;
      s_axi_fpd_wclk : IN STD_LOGIC;
      s_axi_fpd_wdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      s_axi_fpd_wlast : IN STD_LOGIC;
      s_axi_fpd_wstrb : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_axi_fpd_wvalid : IN STD_LOGIC;
      s_axi_fpd_arready : OUT STD_LOGIC;
      s_axi_fpd_arvalid : IN STD_LOGIC;
      s_axi_fpd_awready : OUT STD_LOGIC;
      s_axi_fpd_bid : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_fpd_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_fpd_bvalid : OUT STD_LOGIC;
      s_axi_fpd_racount : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_fpd_rcount : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi_fpd_rdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      s_axi_fpd_rid : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_fpd_rlast : OUT STD_LOGIC;
      s_axi_fpd_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_fpd_rvalid : OUT STD_LOGIC;
      s_axi_fpd_wacount : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_fpd_wcount : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi_fpd_wready : OUT STD_LOGIC;
      s_cci_fpd_araddr : IN STD_LOGIC_VECTOR(48 DOWNTO 0);
      s_cci_fpd_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_cci_fpd_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_cci_fpd_arid : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_cci_fpd_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_cci_fpd_arlock : IN STD_LOGIC;
      s_cci_fpd_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_cci_fpd_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_cci_fpd_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_cci_fpd_aruser : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      s_cci_fpd_arvalid : IN STD_LOGIC;
      s_cci_fpd_awaddr : IN STD_LOGIC_VECTOR(48 DOWNTO 0);
      s_cci_fpd_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_cci_fpd_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_cci_fpd_awid : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_cci_fpd_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_cci_fpd_awlock : IN STD_LOGIC;
      s_cci_fpd_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_cci_fpd_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_cci_fpd_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_cci_fpd_awuser : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      s_cci_fpd_awvalid : IN STD_LOGIC;
      s_cci_fpd_bready : IN STD_LOGIC;
      s_cci_fpd_rclk : IN STD_LOGIC;
      s_cci_fpd_aclk : IN STD_LOGIC;
      s_cci_fpd_rready : IN STD_LOGIC;
      s_cci_fpd_wclk : IN STD_LOGIC;
      s_cci_fpd_wdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      s_cci_fpd_wlast : IN STD_LOGIC;
      s_cci_fpd_wstrb : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_cci_fpd_wvalid : IN STD_LOGIC;
      s_cci_fpd_arready : OUT STD_LOGIC;
      s_cci_fpd_awready : OUT STD_LOGIC;
      s_cci_fpd_bid : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_cci_fpd_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_cci_fpd_bvalid : OUT STD_LOGIC;
      s_cci_fpd_racount : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_cci_fpd_rcount : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_cci_fpd_rdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      s_cci_fpd_rid : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_cci_fpd_rlast : OUT STD_LOGIC;
      s_cci_fpd_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_cci_fpd_rvalid : OUT STD_LOGIC;
      s_cci_fpd_wacount : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_cci_fpd_wcount : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_cci_fpd_wready : OUT STD_LOGIC;
      s_cci_fpd_arsnoop : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_cci_fpd_ardomain : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_cci_fpd_awsnoop : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_cci_fpd_awdomain : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_gp2_araddr : IN STD_LOGIC_VECTOR(48 DOWNTO 0);
      s_axi_gp2_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_gp2_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_gp2_arid : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_gp2_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi_gp2_arlock : IN STD_LOGIC;
      s_axi_gp2_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_gp2_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_gp2_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_gp2_aruser : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      s_axi_gp2_arvalid : IN STD_LOGIC;
      s_axi_gp2_awaddr : IN STD_LOGIC_VECTOR(48 DOWNTO 0);
      s_axi_gp2_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_gp2_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_gp2_awid : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_gp2_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi_gp2_awlock : IN STD_LOGIC;
      s_axi_gp2_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_gp2_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_gp2_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_gp2_awuser : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      s_axi_gp2_awvalid : IN STD_LOGIC;
      s_axi_gp2_bready : IN STD_LOGIC;
      s_axi_gp2_rclk : IN STD_LOGIC;
      s_axi_gp2_aclk : IN STD_LOGIC;
      s_axi_gp2_rready : IN STD_LOGIC;
      s_axi_gp2_wclk : IN STD_LOGIC;
      s_axi_gp2_wdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      s_axi_gp2_wlast : IN STD_LOGIC;
      s_axi_gp2_wstrb : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_axi_gp2_wvalid : IN STD_LOGIC;
      s_axi_gp2_arready : OUT STD_LOGIC;
      s_axi_gp2_awready : OUT STD_LOGIC;
      s_axi_gp2_bid : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_gp2_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_gp2_bvalid : OUT STD_LOGIC;
      s_axi_gp2_racount : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_gp2_rcount : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi_gp2_rdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      s_axi_gp2_rid : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_gp2_rlast : OUT STD_LOGIC;
      s_axi_gp2_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_gp2_rvalid : OUT STD_LOGIC;
      s_axi_gp2_wacount : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_gp2_wcount : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi_gp2_wready : OUT STD_LOGIC;
      s_axi_lpd_araddr : IN STD_LOGIC_VECTOR(48 DOWNTO 0);
      s_axi_lpd_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_lpd_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_lpd_arid : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_lpd_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi_lpd_arlock : IN STD_LOGIC;
      s_axi_lpd_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_lpd_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_lpd_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_lpd_aruser : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
      s_axi_lpd_arvalid : IN STD_LOGIC;
      s_axi_lpd_awaddr : IN STD_LOGIC_VECTOR(48 DOWNTO 0);
      s_axi_lpd_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_lpd_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_lpd_awid : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_lpd_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi_lpd_awlock : IN STD_LOGIC;
      s_axi_lpd_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_lpd_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_lpd_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_lpd_awuser : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
      s_axi_lpd_awvalid : IN STD_LOGIC;
      s_axi_lpd_bready : IN STD_LOGIC;
      s_axi_lpd_rclk : IN STD_LOGIC;
      s_axi_lpd_aclk : IN STD_LOGIC;
      s_axi_lpd_rready : IN STD_LOGIC;
      s_axi_lpd_wclk : IN STD_LOGIC;
      s_axi_lpd_wdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      s_axi_lpd_wlast : IN STD_LOGIC;
      s_axi_lpd_wstrb : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_axi_lpd_wvalid : IN STD_LOGIC;
      s_axi_lpd_arready : OUT STD_LOGIC;
      s_axi_lpd_awready : OUT STD_LOGIC;
      s_axi_lpd_bid : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_lpd_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_lpd_bvalid : OUT STD_LOGIC;
      s_axi_lpd_racount : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_lpd_rcount : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi_lpd_rdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      s_axi_lpd_rid : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_lpd_rlast : OUT STD_LOGIC;
      s_axi_lpd_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_lpd_rvalid : OUT STD_LOGIC;
      s_axi_lpd_wacount : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_lpd_wcount : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi_lpd_wready : OUT STD_LOGIC;
      s_acp_fpd_aclk : IN STD_LOGIC;
      s_acp_fpd_awid : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      s_acp_fpd_awaddr : IN STD_LOGIC_VECTOR(43 DOWNTO 0);
      s_acp_fpd_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_acp_fpd_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_acp_fpd_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_acp_fpd_awvalid : IN STD_LOGIC;
      s_acp_fpd_awuser : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_acp_fpd_wdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      s_acp_fpd_wstrb : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_acp_fpd_wlast : IN STD_LOGIC;
      s_acp_fpd_wvalid : IN STD_LOGIC;
      s_acp_fpd_bready : IN STD_LOGIC;
      s_acp_fpd_arid : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      s_acp_fpd_araddr : IN STD_LOGIC_VECTOR(43 DOWNTO 0);
      s_acp_fpd_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_acp_fpd_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_acp_fpd_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_acp_fpd_arvalid : IN STD_LOGIC;
      s_acp_fpd_aruser : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_acp_fpd_rready : IN STD_LOGIC;
      s_acp_fpd_awready : OUT STD_LOGIC;
      s_acp_fpd_wready : OUT STD_LOGIC;
      s_acp_fpd_bid : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      s_acp_fpd_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_acp_fpd_bvalid : OUT STD_LOGIC;
      s_acp_fpd_arready : OUT STD_LOGIC;
      s_acp_fpd_rid : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      s_acp_fpd_rdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      s_acp_fpd_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_acp_fpd_rlast : OUT STD_LOGIC;
      s_acp_fpd_rvalid : OUT STD_LOGIC;
      s_acp_fpd_inact : IN STD_LOGIC;
      s_ace_fpd_aclk : IN STD_LOGIC;
      s_ace_fpd_awid : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_ace_fpd_arbar : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_ace_fpd_ardomain : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_ace_fpd_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_ace_fpd_arsnoop : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_ace_fpd_awbar : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_ace_fpd_awdomain : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_ace_fpd_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_ace_fpd_awsnoop : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_ace_fpd_cdlast : IN STD_LOGIC;
      s_ace_fpd_cdvalid : IN STD_LOGIC;
      s_ace_fpd_crresp : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      s_ace_fpd_crvalid : IN STD_LOGIC;
      s_ace_fpd_rack : IN STD_LOGIC;
      s_ace_fpd_wack : IN STD_LOGIC;
      s_ace_fpd_awaddr : IN STD_LOGIC_VECTOR(43 DOWNTO 0);
      s_ace_fpd_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_ace_fpd_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_ace_fpd_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_ace_fpd_awlock : IN STD_LOGIC;
      s_ace_fpd_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_ace_fpd_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_ace_fpd_awvalid : IN STD_LOGIC;
      s_ace_fpd_awuser : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_ace_fpd_wstrb : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_ace_fpd_wlast : IN STD_LOGIC;
      s_ace_fpd_wvalid : IN STD_LOGIC;
      s_ace_fpd_bready : IN STD_LOGIC;
      s_ace_fpd_arid : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_ace_fpd_araddr : IN STD_LOGIC_VECTOR(43 DOWNTO 0);
      s_ace_fpd_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_ace_fpd_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_ace_fpd_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_ace_fpd_arlock : IN STD_LOGIC;
      s_ace_fpd_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_ace_fpd_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_ace_fpd_arvalid : IN STD_LOGIC;
      s_ace_fpd_aruser : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_ace_fpd_rready : IN STD_LOGIC;
      s_ace_fpd_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_ace_fpd_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_ace_fpd_wdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      s_ace_fpd_cddata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      s_ace_fpd_acready : IN STD_LOGIC;
      s_ace_fpd_acaddr : OUT STD_LOGIC_VECTOR(43 DOWNTO 0);
      s_ace_fpd_acprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_ace_fpd_acsnoop : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_ace_fpd_acvalid : OUT STD_LOGIC;
      s_ace_fpd_awready : OUT STD_LOGIC;
      s_ace_fpd_wready : OUT STD_LOGIC;
      s_ace_fpd_bid : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_ace_fpd_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_ace_fpd_buser : OUT STD_LOGIC;
      s_ace_fpd_bvalid : OUT STD_LOGIC;
      s_ace_fpd_cdready : OUT STD_LOGIC;
      s_ace_fpd_crready : OUT STD_LOGIC;
      s_ace_fpd_arready : OUT STD_LOGIC;
      s_ace_fpd_rid : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_ace_fpd_rdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      s_ace_fpd_rresp : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_ace_fpd_rlast : OUT STD_LOGIC;
      s_ace_fpd_ruser : OUT STD_LOGIC;
      s_ace_fpd_rvalid : OUT STD_LOGIC;
      canfd0_phy_tx : OUT STD_LOGIC;
      canfd0_phy_rx : IN STD_LOGIC;
      canfd1_phy_tx : OUT STD_LOGIC;
      canfd1_phy_rx : IN STD_LOGIC;
      gem0_gmii_rx_clk : IN STD_LOGIC;
      gem0_gmii_crs : IN STD_LOGIC;
      gem0_gmii_col : IN STD_LOGIC;
      gem0_gmii_rx_d : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      gem0_gmii_rx_err : IN STD_LOGIC;
      gem0_gmii_rx_dv : IN STD_LOGIC;
      gem0_gmii_tx_clk : IN STD_LOGIC;
      gem0_gmii_tx_d : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      gem0_gmii_tx_en : OUT STD_LOGIC;
      gem0_gmii_tx_err : OUT STD_LOGIC;
      gem0_mdio_mdc : OUT STD_LOGIC;
      gem0_mdio_i : IN STD_LOGIC;
      gem0_mdio_o : OUT STD_LOGIC;
      gem0_mdio_t_n : OUT STD_LOGIC;
      gem1_gmii_rx_clk : IN STD_LOGIC;
      gem1_gmii_crs : IN STD_LOGIC;
      gem1_gmii_col : IN STD_LOGIC;
      gem1_gmii_rx_d : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      gem1_gmii_rx_err : IN STD_LOGIC;
      gem1_gmii_rx_dv : IN STD_LOGIC;
      gem1_gmii_tx_clk : IN STD_LOGIC;
      gem1_gmii_tx_d : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      gem1_gmii_tx_en : OUT STD_LOGIC;
      gem1_gmii_tx_err : OUT STD_LOGIC;
      gem1_mdio_mdc : OUT STD_LOGIC;
      gem1_mdio_i : IN STD_LOGIC;
      gem1_mdio_o : OUT STD_LOGIC;
      gem1_mdio_t_n : OUT STD_LOGIC;
      gem0_ptp_tx_sof : OUT STD_LOGIC;
      gem0_ptp_sync_frame_tx : OUT STD_LOGIC;
      gem0_ptp_delay_req_tx : OUT STD_LOGIC;
      gem0_ptp_pdelay_req_tx : OUT STD_LOGIC;
      gem0_ptp_pdelay_resp_tx : OUT STD_LOGIC;
      gem0_ptp_rx_sof : OUT STD_LOGIC;
      gem0_ptp_sync_frame_rx : OUT STD_LOGIC;
      gem0_ptp_delay_req_rx : OUT STD_LOGIC;
      gem0_ptp_pdelay_req_rx : OUT STD_LOGIC;
      gem0_ptp_pdelay_resp_rx : OUT STD_LOGIC;
      gem0_tsu_inc_ctrl : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      gem0_tsu_timer_cmp_val : OUT STD_LOGIC;
      gem1_ptp_tx_sof : OUT STD_LOGIC;
      gem1_ptp_sync_frame_tx : OUT STD_LOGIC;
      gem1_ptp_delay_req_tx : OUT STD_LOGIC;
      gem1_ptp_pdelay_req_tx : OUT STD_LOGIC;
      gem1_ptp_pdelay_resp_tx : OUT STD_LOGIC;
      gem1_ptp_rx_sof : OUT STD_LOGIC;
      gem1_ptp_sync_frame_rx : OUT STD_LOGIC;
      gem1_ptp_delay_req_rx : OUT STD_LOGIC;
      gem1_ptp_pdelay_req_rx : OUT STD_LOGIC;
      gem1_ptp_pdelay_resp_rx : OUT STD_LOGIC;
      gem1_tsu_inc_ctrl : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      gem1_tsu_timer_cmp_val : OUT STD_LOGIC;
      i2c0_scl_i : IN STD_LOGIC;
      i2c0_scl_o : OUT STD_LOGIC;
      i2c0_scl_t : OUT STD_LOGIC;
      i2c0_sda_i : IN STD_LOGIC;
      i2c0_sda_o : OUT STD_LOGIC;
      i2c0_sda_tn : OUT STD_LOGIC;
      i2c1_scl_i : IN STD_LOGIC;
      i2c1_scl_o : OUT STD_LOGIC;
      i2c1_scl_t : OUT STD_LOGIC;
      i2c1_sda_i : IN STD_LOGIC;
      i2c1_sda_o : OUT STD_LOGIC;
      i2c1_sda_tn : OUT STD_LOGIC;
      pmc_i2c_scl_oen : OUT STD_LOGIC;
      pmc_i2c_scl_out : OUT STD_LOGIC;
      pmc_i2c_sda_oen : OUT STD_LOGIC;
      pmc_i2c_sda_out : OUT STD_LOGIC;
      pmc_i2c_scl_in : IN STD_LOGIC;
      pmc_i2c_sda_in : IN STD_LOGIC;
      spi0_sclk_i : IN STD_LOGIC;
      spi0_sclk_o : OUT STD_LOGIC;
      spi0_sclk_t_n : OUT STD_LOGIC;
      spi0_m_i : IN STD_LOGIC;
      spi0_m_o : OUT STD_LOGIC;
      spi0_m_o_t_n : OUT STD_LOGIC;
      spi0_s_i : IN STD_LOGIC;
      spi0_s_o : OUT STD_LOGIC;
      spi0_s_t_n : OUT STD_LOGIC;
      spi0_ss_i_n : IN STD_LOGIC;
      spi0_ss_o_n : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      spi0_ss_n_t_n : OUT STD_LOGIC;
      spi1_sclk_i : IN STD_LOGIC;
      spi1_sclk_o : OUT STD_LOGIC;
      spi1_sclk_t_n : OUT STD_LOGIC;
      spi1_m_i : IN STD_LOGIC;
      spi1_m_o : OUT STD_LOGIC;
      spi1_m_o_t_n : OUT STD_LOGIC;
      spi1_s_i : IN STD_LOGIC;
      spi1_s_o : OUT STD_LOGIC;
      spi1_s_t_n : OUT STD_LOGIC;
      spi1_ss_i_n : IN STD_LOGIC;
      spi1_ss_o_n : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      spi1_ss_n_t_n : OUT STD_LOGIC;
      emio_hub_port_overcrnt_usb2_0 : IN STD_LOGIC;
      emio_u2dsport_vbus_ctrl_usb3_0 : OUT STD_LOGIC;
      gem0_fifo_tx_r_data_rdy : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      gem0_fifo_tx_r_rd : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      gem0_fifo_tx_r_valid : IN STD_LOGIC;
      gem0_fifo_tx_r_data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      gem0_fifo_tx_r_sop : IN STD_LOGIC;
      gem0_fifo_tx_r_eop : IN STD_LOGIC;
      gem0_fifo_tx_r_err : IN STD_LOGIC;
      gem0_fifo_tx_r_underflow : IN STD_LOGIC;
      gem0_fifo_tx_r_flushed : IN STD_LOGIC;
      gem0_fifo_tx_r_control : IN STD_LOGIC;
      gem0_fifo_dma_tx_end_tog : OUT STD_LOGIC;
      gem0_fifo_dma_tx_status_tog : IN STD_LOGIC;
      gem0_fifo_tx_r_status : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      gem0_fifo_rx_w_wr : OUT STD_LOGIC;
      gem0_fifo_rx_w_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      gem0_fifo_rx_w_sop : OUT STD_LOGIC;
      gem0_fifo_rx_w_eop : OUT STD_LOGIC;
      gem0_fifo_rx_w_status : OUT STD_LOGIC_VECTOR(44 DOWNTO 0);
      gem0_fifo_rx_w_err : OUT STD_LOGIC;
      gem0_fifo_rx_w_overflow : IN STD_LOGIC;
      fmio_gem0_signal_detect : IN STD_LOGIC;
      gem0_fifo_rx_w_flush : OUT STD_LOGIC;
      emio_gem0_tx_r_fixed_lat : OUT STD_LOGIC;
      gem1_fifo_tx_r_data_rdy : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      gem1_fifo_tx_r_data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      gem1_fifo_tx_r_rd : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      gem1_fifo_tx_r_valid : IN STD_LOGIC;
      gem1_fifo_tx_r_sop : IN STD_LOGIC;
      gem1_fifo_tx_r_eop : IN STD_LOGIC;
      gem1_fifo_tx_r_err : IN STD_LOGIC;
      gem1_fifo_tx_r_underflow : IN STD_LOGIC;
      gem1_fifo_tx_r_flushed : IN STD_LOGIC;
      gem1_fifo_tx_r_control : IN STD_LOGIC;
      gem1_fifo_dma_tx_end_tog : OUT STD_LOGIC;
      gem1_fifo_dma_tx_status_tog : IN STD_LOGIC;
      gem1_fifo_tx_r_status : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      gem1_fifo_rx_w_wr : OUT STD_LOGIC;
      gem1_fifo_rx_w_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      gem1_fifo_rx_w_sop : OUT STD_LOGIC;
      gem1_fifo_rx_w_eop : OUT STD_LOGIC;
      gem1_fifo_rx_w_status : OUT STD_LOGIC_VECTOR(44 DOWNTO 0);
      gem1_fifo_rx_w_err : OUT STD_LOGIC;
      gem1_fifo_rx_w_overflow : IN STD_LOGIC;
      fmio_gem1_signal_detect : IN STD_LOGIC;
      gem1_fifo_rx_w_flush : OUT STD_LOGIC;
      emio_gem1_tx_r_fixed_lat : OUT STD_LOGIC;
      lpd_gpio_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      lpd_gpio_tn : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      lpd_gpio_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      pmc_gpio_out : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      pmc_gpio_oen : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      pmc_gpio_in : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      trace_ref_clk : IN STD_LOGIC;
      trace_ctrl : OUT STD_LOGIC;
      trace_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      trace_clk : OUT STD_LOGIC;
      fpd_cci_noc_axi0_clk : OUT STD_LOGIC;
      fpd_cci_noc_axi0_awid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_cci_noc_axi0_awaddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      fpd_cci_noc_axi0_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      fpd_cci_noc_axi0_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      fpd_cci_noc_axi0_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      fpd_cci_noc_axi0_awlock : OUT STD_LOGIC;
      fpd_cci_noc_axi0_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      fpd_cci_noc_axi0_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      fpd_cci_noc_axi0_awvalid : OUT STD_LOGIC;
      fpd_cci_noc_axi0_awuser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      fpd_cci_noc_axi0_awready : IN STD_LOGIC;
      fpd_cci_noc_axi0_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      fpd_cci_noc_axi0_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_cci_noc_axi0_wuser : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
      fpd_cci_noc_axi0_wlast : OUT STD_LOGIC;
      fpd_cci_noc_axi0_wvalid : OUT STD_LOGIC;
      fpd_cci_noc_axi0_wready : IN STD_LOGIC;
      fpd_cci_noc_axi0_bid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_cci_noc_axi0_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      fpd_cci_noc_axi0_bvalid : IN STD_LOGIC;
      fpd_cci_noc_axi0_bready : OUT STD_LOGIC;
      fpd_cci_noc_axi0_arid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_cci_noc_axi0_araddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      fpd_cci_noc_axi0_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      fpd_cci_noc_axi0_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      fpd_cci_noc_axi0_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      fpd_cci_noc_axi0_arlock : OUT STD_LOGIC;
      fpd_cci_noc_axi0_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      fpd_cci_noc_axi0_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      fpd_cci_noc_axi0_arvalid : OUT STD_LOGIC;
      fpd_cci_noc_axi0_aruser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      fpd_cci_noc_axi0_arready : IN STD_LOGIC;
      fpd_cci_noc_axi0_rid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_cci_noc_axi0_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      fpd_cci_noc_axi0_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      fpd_cci_noc_axi0_rlast : IN STD_LOGIC;
      fpd_cci_noc_axi0_rvalid : IN STD_LOGIC;
      fpd_cci_noc_axi0_rready : OUT STD_LOGIC;
      fpd_cci_noc_axi0_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      fpd_cci_noc_axi0_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      fpd_cci_noc_axi1_clk : OUT STD_LOGIC;
      fpd_cci_noc_axi1_awid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_cci_noc_axi1_awaddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      fpd_cci_noc_axi1_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      fpd_cci_noc_axi1_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      fpd_cci_noc_axi1_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      fpd_cci_noc_axi1_awlock : OUT STD_LOGIC;
      fpd_cci_noc_axi1_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      fpd_cci_noc_axi1_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      fpd_cci_noc_axi1_awvalid : OUT STD_LOGIC;
      fpd_cci_noc_axi1_awuser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      fpd_cci_noc_axi1_awready : IN STD_LOGIC;
      fpd_cci_noc_axi1_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      fpd_cci_noc_axi1_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_cci_noc_axi1_wuser : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
      fpd_cci_noc_axi1_wlast : OUT STD_LOGIC;
      fpd_cci_noc_axi1_wvalid : OUT STD_LOGIC;
      fpd_cci_noc_axi1_wready : IN STD_LOGIC;
      fpd_cci_noc_axi1_bid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_cci_noc_axi1_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      fpd_cci_noc_axi1_bvalid : IN STD_LOGIC;
      fpd_cci_noc_axi1_bready : OUT STD_LOGIC;
      fpd_cci_noc_axi1_arid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_cci_noc_axi1_araddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      fpd_cci_noc_axi1_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      fpd_cci_noc_axi1_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      fpd_cci_noc_axi1_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      fpd_cci_noc_axi1_arlock : OUT STD_LOGIC;
      fpd_cci_noc_axi1_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      fpd_cci_noc_axi1_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      fpd_cci_noc_axi1_arvalid : OUT STD_LOGIC;
      fpd_cci_noc_axi1_aruser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      fpd_cci_noc_axi1_arready : IN STD_LOGIC;
      fpd_cci_noc_axi1_rid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_cci_noc_axi1_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      fpd_cci_noc_axi1_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      fpd_cci_noc_axi1_rlast : IN STD_LOGIC;
      fpd_cci_noc_axi1_rvalid : IN STD_LOGIC;
      fpd_cci_noc_axi1_rready : OUT STD_LOGIC;
      fpd_cci_noc_axi1_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      fpd_cci_noc_axi1_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      fpd_cci_noc_axi2_clk : OUT STD_LOGIC;
      fpd_cci_noc_axi2_awid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_cci_noc_axi2_awaddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      fpd_cci_noc_axi2_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      fpd_cci_noc_axi2_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      fpd_cci_noc_axi2_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      fpd_cci_noc_axi2_awlock : OUT STD_LOGIC;
      fpd_cci_noc_axi2_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      fpd_cci_noc_axi2_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      fpd_cci_noc_axi2_awvalid : OUT STD_LOGIC;
      fpd_cci_noc_axi2_awuser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      fpd_cci_noc_axi2_awready : IN STD_LOGIC;
      fpd_cci_noc_axi2_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      fpd_cci_noc_axi2_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_cci_noc_axi2_wuser : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
      fpd_cci_noc_axi2_wlast : OUT STD_LOGIC;
      fpd_cci_noc_axi2_wvalid : OUT STD_LOGIC;
      fpd_cci_noc_axi2_wready : IN STD_LOGIC;
      fpd_cci_noc_axi2_bid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_cci_noc_axi2_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      fpd_cci_noc_axi2_bvalid : IN STD_LOGIC;
      fpd_cci_noc_axi2_bready : OUT STD_LOGIC;
      fpd_cci_noc_axi2_arid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_cci_noc_axi2_araddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      fpd_cci_noc_axi2_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      fpd_cci_noc_axi2_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      fpd_cci_noc_axi2_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      fpd_cci_noc_axi2_arlock : OUT STD_LOGIC;
      fpd_cci_noc_axi2_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      fpd_cci_noc_axi2_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      fpd_cci_noc_axi2_arvalid : OUT STD_LOGIC;
      fpd_cci_noc_axi2_aruser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      fpd_cci_noc_axi2_arready : IN STD_LOGIC;
      fpd_cci_noc_axi2_rid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_cci_noc_axi2_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      fpd_cci_noc_axi2_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      fpd_cci_noc_axi2_rlast : IN STD_LOGIC;
      fpd_cci_noc_axi2_rvalid : IN STD_LOGIC;
      fpd_cci_noc_axi2_rready : OUT STD_LOGIC;
      fpd_cci_noc_axi2_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      fpd_cci_noc_axi2_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      fpd_cci_noc_axi3_clk : OUT STD_LOGIC;
      fpd_cci_noc_axi3_awid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_cci_noc_axi3_awaddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      fpd_cci_noc_axi3_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      fpd_cci_noc_axi3_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      fpd_cci_noc_axi3_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      fpd_cci_noc_axi3_awlock : OUT STD_LOGIC;
      fpd_cci_noc_axi3_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      fpd_cci_noc_axi3_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      fpd_cci_noc_axi3_awvalid : OUT STD_LOGIC;
      fpd_cci_noc_axi3_awuser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      fpd_cci_noc_axi3_wuser : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
      fpd_cci_noc_axi3_awready : IN STD_LOGIC;
      fpd_cci_noc_axi3_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      fpd_cci_noc_axi3_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_cci_noc_axi3_wlast : OUT STD_LOGIC;
      fpd_cci_noc_axi3_wvalid : OUT STD_LOGIC;
      fpd_cci_noc_axi3_wready : IN STD_LOGIC;
      fpd_cci_noc_axi3_bid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_cci_noc_axi3_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      fpd_cci_noc_axi3_bvalid : IN STD_LOGIC;
      fpd_cci_noc_axi3_bready : OUT STD_LOGIC;
      fpd_cci_noc_axi3_arid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_cci_noc_axi3_araddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      fpd_cci_noc_axi3_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      fpd_cci_noc_axi3_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      fpd_cci_noc_axi3_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      fpd_cci_noc_axi3_arlock : OUT STD_LOGIC;
      fpd_cci_noc_axi3_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      fpd_cci_noc_axi3_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      fpd_cci_noc_axi3_arvalid : OUT STD_LOGIC;
      fpd_cci_noc_axi3_aruser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      fpd_cci_noc_axi3_arready : IN STD_LOGIC;
      fpd_cci_noc_axi3_rid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_cci_noc_axi3_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      fpd_cci_noc_axi3_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      fpd_cci_noc_axi3_rlast : IN STD_LOGIC;
      fpd_cci_noc_axi3_rvalid : IN STD_LOGIC;
      fpd_cci_noc_axi3_rready : OUT STD_LOGIC;
      fpd_cci_noc_axi3_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      fpd_cci_noc_axi3_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      fpd_axi_noc_axi0_clk : OUT STD_LOGIC;
      fpd_axi_noc_axi0_awid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_axi_noc_axi0_awaddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      fpd_axi_noc_axi0_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      fpd_axi_noc_axi0_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      fpd_axi_noc_axi0_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      fpd_axi_noc_axi0_awlock : OUT STD_LOGIC;
      fpd_axi_noc_axi0_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      fpd_axi_noc_axi0_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      fpd_axi_noc_axi0_awvalid : OUT STD_LOGIC;
      fpd_axi_noc_axi0_awuser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      fpd_axi_noc_axi0_awready : IN STD_LOGIC;
      fpd_axi_noc_axi0_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      fpd_axi_noc_axi0_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_axi_noc_axi0_wlast : OUT STD_LOGIC;
      fpd_axi_noc_axi0_wvalid : OUT STD_LOGIC;
      fpd_axi_noc_axi0_wready : IN STD_LOGIC;
      fpd_axi_noc_axi0_bid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_axi_noc_axi0_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      fpd_axi_noc_axi0_bvalid : IN STD_LOGIC;
      fpd_axi_noc_axi0_bready : OUT STD_LOGIC;
      fpd_axi_noc_axi0_arid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_axi_noc_axi0_araddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      fpd_axi_noc_axi0_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      fpd_axi_noc_axi0_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      fpd_axi_noc_axi0_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      fpd_axi_noc_axi0_arlock : OUT STD_LOGIC;
      fpd_axi_noc_axi0_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      fpd_axi_noc_axi0_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      fpd_axi_noc_axi0_arvalid : OUT STD_LOGIC;
      fpd_axi_noc_axi0_aruser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      fpd_axi_noc_axi0_arready : IN STD_LOGIC;
      fpd_axi_noc_axi0_rid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_axi_noc_axi0_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      fpd_axi_noc_axi0_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      fpd_axi_noc_axi0_rlast : IN STD_LOGIC;
      fpd_axi_noc_axi0_rvalid : IN STD_LOGIC;
      fpd_axi_noc_axi0_rready : OUT STD_LOGIC;
      fpd_axi_noc_axi0_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      fpd_axi_noc_axi0_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_fpd_axi_axi1_clk : OUT STD_LOGIC;
      fpd_axi_noc_axi1_awid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_axi_noc_axi1_awaddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      fpd_axi_noc_axi1_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      fpd_axi_noc_axi1_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      fpd_axi_noc_axi1_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      fpd_axi_noc_axi1_awlock : OUT STD_LOGIC;
      fpd_axi_noc_axi1_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      fpd_axi_noc_axi1_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      fpd_axi_noc_axi1_awvalid : OUT STD_LOGIC;
      fpd_axi_noc_axi1_awuser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      fpd_axi_noc_axi1_awready : IN STD_LOGIC;
      fpd_axi_noc_axi1_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      fpd_axi_noc_axi1_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_axi_noc_axi1_wlast : OUT STD_LOGIC;
      fpd_axi_noc_axi1_wvalid : OUT STD_LOGIC;
      fpd_axi_noc_axi1_wready : IN STD_LOGIC;
      fpd_axi_noc_axi1_bid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_axi_noc_axi1_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      fpd_axi_noc_axi1_bvalid : IN STD_LOGIC;
      fpd_axi_noc_axi1_bready : OUT STD_LOGIC;
      fpd_axi_noc_axi1_arid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_axi_noc_axi1_araddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      fpd_axi_noc_axi1_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      fpd_axi_noc_axi1_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      fpd_axi_noc_axi1_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      fpd_axi_noc_axi1_arlock : OUT STD_LOGIC;
      fpd_axi_noc_axi1_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      fpd_axi_noc_axi1_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      fpd_axi_noc_axi1_arvalid : OUT STD_LOGIC;
      fpd_axi_noc_axi1_aruser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      fpd_axi_noc_axi1_arready : IN STD_LOGIC;
      fpd_axi_noc_axi1_rid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      fpd_axi_noc_axi1_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      fpd_axi_noc_axi1_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      fpd_axi_noc_axi1_rlast : IN STD_LOGIC;
      fpd_axi_noc_axi1_rvalid : IN STD_LOGIC;
      fpd_axi_noc_axi1_rready : OUT STD_LOGIC;
      fpd_axi_noc_axi1_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      fpd_axi_noc_axi1_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_fpd_cci_axi0_arready : OUT STD_LOGIC;
      noc_fpd_cci_axi0_awready : OUT STD_LOGIC;
      noc_fpd_cci_axi0_bid : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_fpd_cci_axi0_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_fpd_cci_axi0_buser : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      noc_fpd_cci_axi0_bvalid : OUT STD_LOGIC;
      noc_fpd_cci_axi0_rdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      noc_fpd_cci_axi0_rid : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_fpd_cci_axi0_rlast : OUT STD_LOGIC;
      noc_fpd_cci_axi0_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_fpd_cci_axi0_ruser : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
      noc_fpd_cci_axi0_rvalid : OUT STD_LOGIC;
      noc_fpd_cci_axi0_wready : OUT STD_LOGIC;
      noc_fpd_cci_axi0_araddr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      noc_fpd_cci_axi0_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_fpd_cci_axi0_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_fpd_cci_axi0_arid : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_fpd_cci_axi0_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      noc_fpd_cci_axi0_arlock : IN STD_LOGIC;
      noc_fpd_cci_axi0_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      noc_fpd_cci_axi0_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_fpd_cci_axi0_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_fpd_cci_axi0_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      noc_fpd_cci_axi0_aruser : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      noc_fpd_cci_axi0_arvalid : IN STD_LOGIC;
      noc_fpd_cci_axi0_awaddr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      noc_fpd_cci_axi0_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_fpd_cci_axi0_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_fpd_cci_axi0_awid : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_fpd_cci_axi0_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      noc_fpd_cci_axi0_awlock : IN STD_LOGIC;
      noc_fpd_cci_axi0_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      noc_fpd_cci_axi0_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_fpd_cci_axi0_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_fpd_cci_axi0_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      noc_fpd_cci_axi0_awuser : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      noc_fpd_cci_axi0_awvalid : IN STD_LOGIC;
      noc_fpd_cci_axi0_bready : IN STD_LOGIC;
      noc_fpd_cci_axi0_rready : IN STD_LOGIC;
      noc_fpd_cci_axi0_wdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      noc_fpd_cci_axi0_wid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_fpd_cci_axi0_wlast : IN STD_LOGIC;
      noc_fpd_cci_axi0_wstrb : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      noc_fpd_cci_axi0_wuser : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
      noc_fpd_cci_axi0_wvalid : IN STD_LOGIC;
      noc_fpd_cci_axi0_clk : OUT STD_LOGIC;
      noc_fpd_cci_axi1_arready : OUT STD_LOGIC;
      noc_fpd_cci_axi1_awready : OUT STD_LOGIC;
      noc_fpd_cci_axi1_bid : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_fpd_cci_axi1_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_fpd_cci_axi1_buser : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      noc_fpd_cci_axi1_bvalid : OUT STD_LOGIC;
      noc_fpd_cci_axi1_rdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      noc_fpd_cci_axi1_rid : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_fpd_cci_axi1_rlast : OUT STD_LOGIC;
      noc_fpd_cci_axi1_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_fpd_cci_axi1_ruser : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
      noc_fpd_cci_axi1_rvalid : OUT STD_LOGIC;
      noc_fpd_cci_axi1_wready : OUT STD_LOGIC;
      noc_fpd_cci_axi1_araddr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      noc_fpd_cci_axi1_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_fpd_cci_axi1_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_fpd_cci_axi1_arid : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_fpd_cci_axi1_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      noc_fpd_cci_axi1_arlock : IN STD_LOGIC;
      noc_fpd_cci_axi1_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      noc_fpd_cci_axi1_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_fpd_cci_axi1_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_fpd_cci_axi1_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      noc_fpd_cci_axi1_aruser : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      noc_fpd_cci_axi1_arvalid : IN STD_LOGIC;
      noc_fpd_cci_axi1_awaddr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      noc_fpd_cci_axi1_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_fpd_cci_axi1_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_fpd_cci_axi1_awid : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_fpd_cci_axi1_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      noc_fpd_cci_axi1_awlock : IN STD_LOGIC;
      noc_fpd_cci_axi1_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      noc_fpd_cci_axi1_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_fpd_cci_axi1_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_fpd_cci_axi1_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      noc_fpd_cci_axi1_awuser : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      noc_fpd_cci_axi1_awvalid : IN STD_LOGIC;
      noc_fpd_cci_axi1_bready : IN STD_LOGIC;
      noc_fpd_cci_axi1_rready : IN STD_LOGIC;
      noc_fpd_cci_axi1_wdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      noc_fpd_cci_axi1_wid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_fpd_cci_axi1_wlast : IN STD_LOGIC;
      noc_fpd_cci_axi1_wstrb : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      noc_fpd_cci_axi1_wuser : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
      noc_fpd_cci_axi1_wvalid : IN STD_LOGIC;
      noc_fpd_cci_axi1_clk : OUT STD_LOGIC;
      cpm_pcie_noc_axi0_clk : OUT STD_LOGIC;
      cpm_pcie_noc_axi0_awid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      cpm_pcie_noc_axi0_awaddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      cpm_pcie_noc_axi0_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      cpm_pcie_noc_axi0_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      cpm_pcie_noc_axi0_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      cpm_pcie_noc_axi0_awlock : OUT STD_LOGIC;
      cpm_pcie_noc_axi0_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      cpm_pcie_noc_axi0_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      cpm_pcie_noc_axi0_awvalid : OUT STD_LOGIC;
      cpm_pcie_noc_axi0_awuser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      cpm_pcie_noc_axi0_awready : IN STD_LOGIC;
      cpm_pcie_noc_axi0_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      cpm_pcie_noc_axi0_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      cpm_pcie_noc_axi0_wlast : OUT STD_LOGIC;
      cpm_pcie_noc_axi0_wvalid : OUT STD_LOGIC;
      cpm_pcie_noc_axi0_wready : IN STD_LOGIC;
      cpm_pcie_noc_axi0_bid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      cpm_pcie_noc_axi0_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      cpm_pcie_noc_axi0_bvalid : IN STD_LOGIC;
      cpm_pcie_noc_axi0_bready : OUT STD_LOGIC;
      cpm_pcie_noc_axi0_arid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      cpm_pcie_noc_axi0_araddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      cpm_pcie_noc_axi0_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      cpm_pcie_noc_axi0_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      cpm_pcie_noc_axi0_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      cpm_pcie_noc_axi0_arlock : OUT STD_LOGIC;
      cpm_pcie_noc_axi0_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      cpm_pcie_noc_axi0_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      cpm_pcie_noc_axi0_arvalid : OUT STD_LOGIC;
      cpm_pcie_noc_axi0_aruser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      cpm_pcie_noc_axi0_arready : IN STD_LOGIC;
      cpm_pcie_noc_axi0_rid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      cpm_pcie_noc_axi0_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      cpm_pcie_noc_axi0_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      cpm_pcie_noc_axi0_rlast : IN STD_LOGIC;
      cpm_pcie_noc_axi0_rvalid : IN STD_LOGIC;
      cpm_pcie_noc_axi0_rready : OUT STD_LOGIC;
      cpm_pcie_noc_axi0_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      cpm_pcie_noc_axi0_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      cpm_pcie_noc_axi1_clk : OUT STD_LOGIC;
      cpm_pcie_noc_axi1_awid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      cpm_pcie_noc_axi1_awaddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      cpm_pcie_noc_axi1_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      cpm_pcie_noc_axi1_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      cpm_pcie_noc_axi1_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      cpm_pcie_noc_axi1_awlock : OUT STD_LOGIC;
      cpm_pcie_noc_axi1_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      cpm_pcie_noc_axi1_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      cpm_pcie_noc_axi1_awvalid : OUT STD_LOGIC;
      cpm_pcie_noc_axi1_awuser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      cpm_pcie_noc_axi1_awready : IN STD_LOGIC;
      cpm_pcie_noc_axi1_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      cpm_pcie_noc_axi1_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      cpm_pcie_noc_axi1_wlast : OUT STD_LOGIC;
      cpm_pcie_noc_axi1_wvalid : OUT STD_LOGIC;
      cpm_pcie_noc_axi1_wready : IN STD_LOGIC;
      cpm_pcie_noc_axi1_bid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      cpm_pcie_noc_axi1_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      cpm_pcie_noc_axi1_bvalid : IN STD_LOGIC;
      cpm_pcie_noc_axi1_bready : OUT STD_LOGIC;
      cpm_pcie_noc_axi1_arid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      cpm_pcie_noc_axi1_araddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      cpm_pcie_noc_axi1_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      cpm_pcie_noc_axi1_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      cpm_pcie_noc_axi1_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      cpm_pcie_noc_axi1_arlock : OUT STD_LOGIC;
      cpm_pcie_noc_axi1_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      cpm_pcie_noc_axi1_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      cpm_pcie_noc_axi1_arvalid : OUT STD_LOGIC;
      cpm_pcie_noc_axi1_aruser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      cpm_pcie_noc_axi1_arready : IN STD_LOGIC;
      cpm_pcie_noc_axi1_rid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      cpm_pcie_noc_axi1_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      cpm_pcie_noc_axi1_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      cpm_pcie_noc_axi1_rlast : IN STD_LOGIC;
      cpm_pcie_noc_axi1_rvalid : IN STD_LOGIC;
      cpm_pcie_noc_axi1_rready : OUT STD_LOGIC;
      cpm_pcie_noc_axi1_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      cpm_pcie_noc_axi1_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_cpm_pcie_axi0_clk : OUT STD_LOGIC;
      lpd_axi_noc_clk : OUT STD_LOGIC;
      noc_lpd_axi_axi0_awid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      noc_lpd_axi_axi0_awaddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      noc_lpd_axi_axi0_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      noc_lpd_axi_axi0_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      noc_lpd_axi_axi0_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_lpd_axi_axi0_awlock : OUT STD_LOGIC;
      noc_lpd_axi_axi0_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_lpd_axi_axi0_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      noc_lpd_axi_axi0_awvalid : OUT STD_LOGIC;
      noc_lpd_axi_axi0_awuser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      noc_lpd_axi_axi0_awready : IN STD_LOGIC;
      noc_lpd_axi_axi0_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      noc_lpd_axi_axi0_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      noc_lpd_axi_axi0_wlast : OUT STD_LOGIC;
      noc_lpd_axi_axi0_wvalid : OUT STD_LOGIC;
      noc_lpd_axi_axi0_wready : IN STD_LOGIC;
      noc_lpd_axi_axi0_bid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      noc_lpd_axi_axi0_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_lpd_axi_axi0_bvalid : IN STD_LOGIC;
      noc_lpd_axi_axi0_bready : OUT STD_LOGIC;
      noc_lpd_axi_axi0_arid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      noc_lpd_axi_axi0_araddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      noc_lpd_axi_axi0_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      noc_lpd_axi_axi0_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      noc_lpd_axi_axi0_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_lpd_axi_axi0_arlock : OUT STD_LOGIC;
      noc_lpd_axi_axi0_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_lpd_axi_axi0_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      noc_lpd_axi_axi0_arvalid : OUT STD_LOGIC;
      noc_lpd_axi_axi0_aruser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      noc_lpd_axi_axi0_arready : IN STD_LOGIC;
      noc_lpd_axi_axi0_rid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      noc_lpd_axi_axi0_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      noc_lpd_axi_axi0_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_lpd_axi_axi0_rlast : IN STD_LOGIC;
      noc_lpd_axi_axi0_rvalid : IN STD_LOGIC;
      noc_lpd_axi_axi0_rready : OUT STD_LOGIC;
      noc_lpd_axi_axi0_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_lpd_axi_axi0_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      ttc0_waveo : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      ttc0_clk : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      ttc1_waveo : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      ttc1_clk : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      ttc2_waveo : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      ttc2_clk : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      ttc3_waveo : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      ttc3_clk : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      lpd_dma_clk0 : IN STD_LOGIC;
      lpd_dma0_cvld : IN STD_LOGIC;
      lpd_dma0_tack : IN STD_LOGIC;
      lpd_dma0_cack : OUT STD_LOGIC;
      lpd_dma0_tvld : OUT STD_LOGIC;
      lpd_dma_clk1 : IN STD_LOGIC;
      lpd_dma1_cvld : IN STD_LOGIC;
      lpd_dma1_tack : IN STD_LOGIC;
      lpd_dma1_cack : OUT STD_LOGIC;
      lpd_dma1_tvld : OUT STD_LOGIC;
      lpd_dma_clk2 : IN STD_LOGIC;
      lpd_dma2_cvld : IN STD_LOGIC;
      lpd_dma2_tack : IN STD_LOGIC;
      lpd_dma2_cack : OUT STD_LOGIC;
      lpd_dma2_tvld : OUT STD_LOGIC;
      lpd_dma_clk3 : IN STD_LOGIC;
      lpd_dma3_cvld : IN STD_LOGIC;
      lpd_dma3_tack : IN STD_LOGIC;
      lpd_dma3_cack : OUT STD_LOGIC;
      lpd_dma3_tvld : OUT STD_LOGIC;
      lpd_dma_clk4 : IN STD_LOGIC;
      lpd_dma4_cvld : IN STD_LOGIC;
      lpd_dma4_tack : IN STD_LOGIC;
      lpd_dma4_cack : OUT STD_LOGIC;
      lpd_dma4_tvld : OUT STD_LOGIC;
      lpd_dma_clk5 : IN STD_LOGIC;
      lpd_dma5_cvld : IN STD_LOGIC;
      lpd_dma5_tack : IN STD_LOGIC;
      lpd_dma5_cack : OUT STD_LOGIC;
      lpd_dma5_tvld : OUT STD_LOGIC;
      lpd_dma_clk6 : IN STD_LOGIC;
      lpd_dma6_cvld : IN STD_LOGIC;
      lpd_dma6_tack : IN STD_LOGIC;
      lpd_dma6_cack : OUT STD_LOGIC;
      lpd_dma6_tvld : OUT STD_LOGIC;
      lpd_dma_clk7 : IN STD_LOGIC;
      lpd_dma7_cvld : IN STD_LOGIC;
      lpd_dma7_tack : IN STD_LOGIC;
      lpd_dma7_cack : OUT STD_LOGIC;
      lpd_dma7_tvld : OUT STD_LOGIC;
      apu_event_i : IN STD_LOGIC;
      apu_event_o : OUT STD_LOGIC;
      apu_event_standby_wfe : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      apu_event_standby_wfi : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      pl_ps_apu_gic_irq : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      pl_ps_apu_gic_fiq : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      lpd_rpu_event_i0 : IN STD_LOGIC;
      lpd_rpu_event_i1 : IN STD_LOGIC;
      lpd_rpu_event_o0 : OUT STD_LOGIC;
      lpd_rpu_event_o1 : OUT STD_LOGIC;
      lpd_rpu_fiq0n : IN STD_LOGIC;
      lpd_rpu_fiq1n : IN STD_LOGIC;
      lpd_rpu_irq0n : IN STD_LOGIC;
      lpd_rpu_irq1n : IN STD_LOGIC;
      stm_event : IN STD_LOGIC_VECTOR(59 DOWNTO 0);
      pl_ps_trig0_ack : OUT STD_LOGIC;
      pl_ps_trig0_req : IN STD_LOGIC;
      pl_ps_trig1_ack : OUT STD_LOGIC;
      pl_ps_trig1_req : IN STD_LOGIC;
      pl_ps_trig2_ack : OUT STD_LOGIC;
      pl_ps_trig2_req : IN STD_LOGIC;
      pl_ps_trig3_ack : OUT STD_LOGIC;
      pl_ps_trig3_req : IN STD_LOGIC;
      ps_pl_trig0_req : OUT STD_LOGIC;
      ps_pl_trig0_ack : IN STD_LOGIC;
      ps_pl_trig1_req : OUT STD_LOGIC;
      ps_pl_trig1_ack : IN STD_LOGIC;
      ps_pl_trig2_req : OUT STD_LOGIC;
      ps_pl_trig2_ack : IN STD_LOGIC;
      ps_pl_trig3_req : OUT STD_LOGIC;
      ps_pl_trig3_ack : IN STD_LOGIC;
      pl_ps_irq0 : IN STD_LOGIC;
      pl_ps_irq1 : IN STD_LOGIC;
      pl_ps_irq2 : IN STD_LOGIC;
      pl_ps_irq3 : IN STD_LOGIC;
      pl_ps_irq4 : IN STD_LOGIC;
      pl_ps_irq5 : IN STD_LOGIC;
      pl_ps_irq6 : IN STD_LOGIC;
      pl_ps_irq7 : IN STD_LOGIC;
      pl_ps_irq8 : IN STD_LOGIC;
      pl_ps_irq9 : IN STD_LOGIC;
      pl_ps_irq10 : IN STD_LOGIC;
      pl_ps_irq11 : IN STD_LOGIC;
      pl_ps_irq12 : IN STD_LOGIC;
      pl_ps_irq13 : IN STD_LOGIC;
      pl_ps_irq14 : IN STD_LOGIC;
      pl_ps_irq15 : IN STD_LOGIC;
      rtc_clk : OUT STD_LOGIC;
      aib_pmu_afi_fm_lpd_ack : IN STD_LOGIC;
      aib_pmu_afi_fm_fpd_ack : IN STD_LOGIC;
      pmu_aib_afi_fm_fpd_req : OUT STD_LOGIC;
      pmu_aib_afi_fm_lpd_req : OUT STD_LOGIC;
      pmu_error_from_pl : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      pmu_error_to_pl : OUT STD_LOGIC_VECTOR(46 DOWNTO 0);
      fpd_axi_noc_axi1_clk : OUT STD_LOGIC;
      noc_fpd_axi_axi0_clk : OUT STD_LOGIC;
      noc_fpd_axi_axi0_awaddr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      noc_fpd_axi_axi0_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      noc_fpd_axi_axi0_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      noc_fpd_axi_axi0_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_fpd_axi_axi0_awlock : IN STD_LOGIC;
      noc_fpd_axi_axi0_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_fpd_axi_axi0_awid : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_fpd_axi_axi0_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      noc_fpd_axi_axi0_awvalid : IN STD_LOGIC;
      noc_fpd_axi_axi0_bready : IN STD_LOGIC;
      noc_fpd_axi_axi0_awuser : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      noc_fpd_axi_axi0_wdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      noc_fpd_axi_axi0_wid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_fpd_axi_axi0_wstrb : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      noc_fpd_axi_axi0_wuser : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
      noc_fpd_axi_axi0_wlast : IN STD_LOGIC;
      noc_fpd_axi_axi0_wvalid : IN STD_LOGIC;
      noc_fpd_axi_axi0_araddr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      noc_fpd_axi_axi0_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      noc_fpd_axi_axi0_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      noc_fpd_axi_axi0_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_fpd_axi_axi0_arlock : IN STD_LOGIC;
      noc_fpd_axi_axi0_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_fpd_axi_axi0_arid : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_fpd_axi_axi0_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      noc_fpd_axi_axi0_arvalid : IN STD_LOGIC;
      noc_fpd_axi_axi0_aruser : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      noc_fpd_axi_axi0_rready : IN STD_LOGIC;
      noc_fpd_axi_axi0_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_fpd_axi_axi0_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_fpd_axi_axi0_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_fpd_axi_axi0_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_fpd_axi_axi0_arready : OUT STD_LOGIC;
      noc_fpd_axi_axi0_awready : OUT STD_LOGIC;
      noc_fpd_axi_axi0_bid : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_fpd_axi_axi0_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_fpd_axi_axi0_buser : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      noc_fpd_axi_axi0_bvalid : OUT STD_LOGIC;
      noc_fpd_axi_axi0_rdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      noc_fpd_axi_axi0_rid : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_fpd_axi_axi0_rlast : OUT STD_LOGIC;
      noc_fpd_axi_axi0_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_fpd_axi_axi0_ruser : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
      noc_fpd_axi_axi0_rvalid : OUT STD_LOGIC;
      noc_fpd_axi_axi0_wready : OUT STD_LOGIC;
      noc_fpd_axi_axi1_awaddr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      noc_fpd_axi_axi1_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      noc_fpd_axi_axi1_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      noc_fpd_axi_axi1_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_fpd_axi_axi1_awlock : IN STD_LOGIC;
      noc_fpd_axi_axi1_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_fpd_axi_axi1_awid : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_fpd_axi_axi1_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      noc_fpd_axi_axi1_awvalid : IN STD_LOGIC;
      noc_fpd_axi_axi1_bready : IN STD_LOGIC;
      noc_fpd_axi_axi1_awuser : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      noc_fpd_axi_axi1_wdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      noc_fpd_axi_axi1_wid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_fpd_axi_axi1_wstrb : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      noc_fpd_axi_axi1_wuser : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
      noc_fpd_axi_axi1_wlast : IN STD_LOGIC;
      noc_fpd_axi_axi1_wvalid : IN STD_LOGIC;
      noc_fpd_axi_axi1_araddr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      noc_fpd_axi_axi1_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      noc_fpd_axi_axi1_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      noc_fpd_axi_axi1_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_fpd_axi_axi1_arlock : IN STD_LOGIC;
      noc_fpd_axi_axi1_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_fpd_axi_axi1_arid : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_fpd_axi_axi1_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      noc_fpd_axi_axi1_arvalid : IN STD_LOGIC;
      noc_fpd_axi_axi1_aruser : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      noc_fpd_axi_axi1_rready : IN STD_LOGIC;
      noc_fpd_axi_axi1_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_fpd_axi_axi1_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_fpd_axi_axi1_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_fpd_axi_axi1_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_fpd_axi_axi1_arready : OUT STD_LOGIC;
      noc_fpd_axi_axi1_awready : OUT STD_LOGIC;
      noc_fpd_axi_axi1_bid : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_fpd_axi_axi1_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_fpd_axi_axi1_buser : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      noc_fpd_axi_axi1_bvalid : OUT STD_LOGIC;
      noc_fpd_axi_axi1_rdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      noc_fpd_axi_axi1_rid : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_fpd_axi_axi1_rlast : OUT STD_LOGIC;
      noc_fpd_axi_axi1_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_fpd_axi_axi1_ruser : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
      noc_fpd_axi_axi1_rvalid : OUT STD_LOGIC;
      noc_fpd_axi_axi1_wready : OUT STD_LOGIC;
      noc_cpm_pcie_axi0_arready : OUT STD_LOGIC;
      noc_cpm_pcie_axi0_awready : OUT STD_LOGIC;
      noc_cpm_pcie_axi0_bid : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_cpm_pcie_axi0_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_cpm_pcie_axi0_buser : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      noc_cpm_pcie_axi0_bvalid : OUT STD_LOGIC;
      noc_cpm_pcie_axi0_rdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      noc_cpm_pcie_axi0_rid : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_cpm_pcie_axi0_rlast : OUT STD_LOGIC;
      noc_cpm_pcie_axi0_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_cpm_pcie_axi0_ruser : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
      noc_cpm_pcie_axi0_rvalid : OUT STD_LOGIC;
      noc_cpm_pcie_axi0_wready : OUT STD_LOGIC;
      noc_cpm_pcie_axi0_araddr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      noc_cpm_pcie_axi0_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_cpm_pcie_axi0_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_cpm_pcie_axi0_arid : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_cpm_pcie_axi0_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      noc_cpm_pcie_axi0_arlock : IN STD_LOGIC;
      noc_cpm_pcie_axi0_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      noc_cpm_pcie_axi0_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_cpm_pcie_axi0_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_cpm_pcie_axi0_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      noc_cpm_pcie_axi0_aruser : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      noc_cpm_pcie_axi0_arvalid : IN STD_LOGIC;
      noc_cpm_pcie_axi0_awaddr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      noc_cpm_pcie_axi0_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_cpm_pcie_axi0_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_cpm_pcie_axi0_awid : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_cpm_pcie_axi0_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      noc_cpm_pcie_axi0_awlock : IN STD_LOGIC;
      noc_cpm_pcie_axi0_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      noc_cpm_pcie_axi0_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_cpm_pcie_axi0_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_cpm_pcie_axi0_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      noc_cpm_pcie_axi0_awuser : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      noc_cpm_pcie_axi0_awvalid : IN STD_LOGIC;
      noc_cpm_pcie_axi0_bready : IN STD_LOGIC;
      noc_cpm_pcie_axi0_rready : IN STD_LOGIC;
      noc_cpm_pcie_axi0_wdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      noc_cpm_pcie_axi0_wid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_cpm_pcie_axi0_wlast : IN STD_LOGIC;
      noc_cpm_pcie_axi0_wstrb : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      noc_cpm_pcie_axi0_wvalid : IN STD_LOGIC;
      pl_pmc_aux_ref_clk : IN STD_LOGIC;
      pl_fpd_aux_ref_clk : IN STD_LOGIC;
      pl_lpd_aux_ref_clk : IN STD_LOGIC;
      pmc_iro_clk : OUT STD_LOGIC;
      pl0_ref_clk : OUT STD_LOGIC;
      pl1_ref_clk : OUT STD_LOGIC;
      pl2_ref_clk : OUT STD_LOGIC;
      pl3_ref_clk : OUT STD_LOGIC;
      pl0_resetn : OUT STD_LOGIC;
      pl1_resetn : OUT STD_LOGIC;
      pl2_resetn : OUT STD_LOGIC;
      pl3_resetn : OUT STD_LOGIC;
      uart0_sir_outn : OUT STD_LOGIC;
      uart0_dtrn : OUT STD_LOGIC;
      uart0_out1n : OUT STD_LOGIC;
      uart0_out2n : OUT STD_LOGIC;
      uart0_rtsn : OUT STD_LOGIC;
      uart0_txd : OUT STD_LOGIC;
      uart0_ctsn : IN STD_LOGIC;
      uart0_dcdn : IN STD_LOGIC;
      uart0_dsrn : IN STD_LOGIC;
      uart0_rin : IN STD_LOGIC;
      uart0_rxd : IN STD_LOGIC;
      fmio_uart0_sir_in : IN STD_LOGIC;
      uart1_sir_outn : OUT STD_LOGIC;
      uart1_dtrn : OUT STD_LOGIC;
      uart1_out1n : OUT STD_LOGIC;
      uart1_out2n : OUT STD_LOGIC;
      uart1_rtsn : OUT STD_LOGIC;
      uart1_txd : OUT STD_LOGIC;
      uart1_ctsn : IN STD_LOGIC;
      uart1_dcdn : IN STD_LOGIC;
      uart1_dsrn : IN STD_LOGIC;
      uart1_rin : IN STD_LOGIC;
      uart1_rxd : IN STD_LOGIC;
      fmio_uart1_sir_in : IN STD_LOGIC;
      pmc_noc_axi0_araddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      pmc_noc_axi0_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      pmc_noc_axi0_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pmc_noc_axi0_arid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      pmc_noc_axi0_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      pmc_noc_axi0_arlock : OUT STD_LOGIC;
      pmc_noc_axi0_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      pmc_noc_axi0_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pmc_noc_axi0_arregion : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pmc_noc_axi0_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      pmc_noc_axi0_aruser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      pmc_noc_axi0_arvalid : OUT STD_LOGIC;
      pmc_noc_axi0_awaddr : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      pmc_noc_axi0_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      pmc_noc_axi0_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pmc_noc_axi0_awid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      pmc_noc_axi0_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      pmc_noc_axi0_awlock : OUT STD_LOGIC;
      pmc_noc_axi0_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      pmc_noc_axi0_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pmc_noc_axi0_awregion : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pmc_noc_axi0_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      pmc_noc_axi0_awuser : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      pmc_noc_axi0_awvalid : OUT STD_LOGIC;
      pmc_noc_axi0_bready : OUT STD_LOGIC;
      pmc_noc_axi0_rready : OUT STD_LOGIC;
      pmc_noc_axi0_wdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      pmc_noc_axi0_wid : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      pmc_noc_axi0_wlast : OUT STD_LOGIC;
      pmc_noc_axi0_wstrb : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      pmc_noc_axi0_wuser : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
      pmc_noc_axi0_wvalid : OUT STD_LOGIC;
      pmc_axi_noc_axi0_clk : OUT STD_LOGIC;
      pmc_noc_axi0_arready : IN STD_LOGIC;
      pmc_noc_axi0_awready : IN STD_LOGIC;
      pmc_noc_axi0_bid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      pmc_noc_axi0_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      pmc_noc_axi0_buser : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      pmc_noc_axi0_bvalid : IN STD_LOGIC;
      pmc_noc_axi0_rdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      pmc_noc_axi0_rid : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      pmc_noc_axi0_rlast : IN STD_LOGIC;
      pmc_noc_axi0_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      pmc_noc_axi0_ruser : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
      pmc_noc_axi0_rvalid : IN STD_LOGIC;
      pmc_noc_axi0_wready : IN STD_LOGIC;
      noc_pmc_axi0_arready : OUT STD_LOGIC;
      noc_pmc_axi0_awready : OUT STD_LOGIC;
      noc_pmc_axi0_bid : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_pmc_axi0_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_pmc_axi0_buser : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      noc_pmc_axi0_bvalid : OUT STD_LOGIC;
      noc_pmc_axi0_rdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      noc_pmc_axi0_rid : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_pmc_axi0_rlast : OUT STD_LOGIC;
      noc_pmc_axi0_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_pmc_axi0_ruser : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
      noc_pmc_axi0_rvalid : OUT STD_LOGIC;
      noc_pmc_axi0_wready : OUT STD_LOGIC;
      noc_pmc_axi_axi0_clk : OUT STD_LOGIC;
      noc_pmc_axi0_araddr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      noc_pmc_axi0_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_pmc_axi0_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_pmc_axi0_arid : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_pmc_axi0_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      noc_pmc_axi0_arlock : IN STD_LOGIC;
      noc_pmc_axi0_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      noc_pmc_axi0_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_pmc_axi0_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_pmc_axi0_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      noc_pmc_axi0_aruser : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      noc_pmc_axi0_arvalid : IN STD_LOGIC;
      noc_pmc_axi0_awaddr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      noc_pmc_axi0_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_pmc_axi0_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_pmc_axi0_awid : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      noc_pmc_axi0_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      noc_pmc_axi0_awlock : IN STD_LOGIC;
      noc_pmc_axi0_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      noc_pmc_axi0_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_pmc_axi0_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_pmc_axi0_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      noc_pmc_axi0_awuser : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      noc_pmc_axi0_awvalid : IN STD_LOGIC;
      noc_pmc_axi0_bready : IN STD_LOGIC;
      noc_pmc_axi0_rready : IN STD_LOGIC;
      noc_pmc_axi0_wdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      noc_pmc_axi0_wid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      noc_pmc_axi0_wlast : IN STD_LOGIC;
      noc_pmc_axi0_wstrb : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      noc_pmc_axi0_wuser : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
      noc_pmc_axi0_wvalid : IN STD_LOGIC;
      bscan_user1_usr_capture : OUT STD_LOGIC;
      bscan_user1_usr_drck : OUT STD_LOGIC;
      bscan_user1_usr_reset : OUT STD_LOGIC;
      bscan_user1_usr_runtest : OUT STD_LOGIC;
      bscan_user1_usr_sel : OUT STD_LOGIC;
      bscan_user1_usr_shift : OUT STD_LOGIC;
      bscan_user1_usr_tck : OUT STD_LOGIC;
      bscan_user1_usr_tdi : OUT STD_LOGIC;
      bscan_user1_usr_tms : OUT STD_LOGIC;
      bscan_user1_usr_tdo : IN STD_LOGIC;
      bscan_user1_usr_update : OUT STD_LOGIC;
      bscan_user2_usr_capture : OUT STD_LOGIC;
      bscan_user2_usr_drck : OUT STD_LOGIC;
      bscan_user2_usr_reset : OUT STD_LOGIC;
      bscan_user2_usr_runtest : OUT STD_LOGIC;
      bscan_user2_usr_sel : OUT STD_LOGIC;
      bscan_user2_usr_shift : OUT STD_LOGIC;
      bscan_user2_usr_tck : OUT STD_LOGIC;
      bscan_user2_usr_tdi : OUT STD_LOGIC;
      bscan_user2_usr_tms : OUT STD_LOGIC;
      bscan_user2_usr_tdo : IN STD_LOGIC;
      bscan_user2_usr_update : OUT STD_LOGIC;
      bscan_user3_usr_capture : OUT STD_LOGIC;
      bscan_user3_usr_drck : OUT STD_LOGIC;
      bscan_user3_usr_reset : OUT STD_LOGIC;
      bscan_user3_usr_runtest : OUT STD_LOGIC;
      bscan_user3_usr_sel : OUT STD_LOGIC;
      bscan_user3_usr_shift : OUT STD_LOGIC;
      bscan_user3_usr_tck : OUT STD_LOGIC;
      bscan_user3_usr_tdi : OUT STD_LOGIC;
      bscan_user3_usr_tms : OUT STD_LOGIC;
      bscan_user3_usr_tdo : IN STD_LOGIC;
      bscan_user3_usr_update : OUT STD_LOGIC;
      bscan_user4_usr_capture : OUT STD_LOGIC;
      bscan_user4_usr_drck : OUT STD_LOGIC;
      bscan_user4_usr_reset : OUT STD_LOGIC;
      bscan_user4_usr_runtest : OUT STD_LOGIC;
      bscan_user4_usr_sel : OUT STD_LOGIC;
      bscan_user4_usr_shift : OUT STD_LOGIC;
      bscan_user4_usr_tck : OUT STD_LOGIC;
      bscan_user4_usr_tdi : OUT STD_LOGIC;
      bscan_user4_usr_tms : OUT STD_LOGIC;
      bscan_user4_usr_tdo : IN STD_LOGIC;
      bscan_user4_usr_update : OUT STD_LOGIC;
      m_smmu_arready : IN STD_LOGIC;
      m_smmu_awready : IN STD_LOGIC;
      m_smmu_bready : IN STD_LOGIC;
      m_smmu_rready : IN STD_LOGIC;
      m_smmu_araddr : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
      m_smmu_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_smmu_arid : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_smmu_arvalid : OUT STD_LOGIC;
      m_smmu_awaddr : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
      m_smmu_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_smmu_awid : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_smmu_awvalid : OUT STD_LOGIC;
      m_smmu_bid : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_smmu_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_smmu_bvalid : OUT STD_LOGIC;
      m_smmu_rerr : OUT STD_LOGIC;
      m_smmu_rid : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_smmu_rns : OUT STD_LOGIC;
      m_smmu_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_smmu_rvalid : OUT STD_LOGIC;
      m_smmu_werr : OUT STD_LOGIC;
      m_smmu_wns : OUT STD_LOGIC;
      s_smmu_arready : OUT STD_LOGIC;
      s_smmu_awready : OUT STD_LOGIC;
      s_smmu_comprdready : OUT STD_LOGIC;
      s_smmu_compwrready : OUT STD_LOGIC;
      s_smmu_araddr : IN STD_LOGIC_VECTOR(48 DOWNTO 0);
      s_smmu_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_smmu_arid : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_smmu_arvalid : IN STD_LOGIC;
      s_smmu_awaddr : IN STD_LOGIC_VECTOR(48 DOWNTO 0);
      s_smmu_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_smmu_awid : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_smmu_awvalid : IN STD_LOGIC;
      smmu_ref_clk : IN STD_LOGIC;
      s_smmu_comprdid : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_smmu_comprdval : IN STD_LOGIC;
      s_smmu_compwrid : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_smmu_compwrval : IN STD_LOGIC;
      s_smmu_rns : IN STD_LOGIC;
      s_smmu_rsmid : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      s_smmu_wns : IN STD_LOGIC;
      s_smmu_wsmid : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      ps_pmc_from_core : IN STD_LOGIC_VECTOR(11999 DOWNTO 0);
      ps_pmc_to_core : OUT STD_LOGIC_VECTOR(11999 DOWNTO 0);
      dbg0 : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      dbg0_ext : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      dbg1 : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      dbg1_ext : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      dbg2 : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      dbg2_ext : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      dbg3 : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      dbg3_ext : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      dbg4 : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      dbg4_ext : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      dbg_sel : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      hsdp_ref_clk : IN STD_LOGIC;
      s_axis_hsdp_egress_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      s_axis_hsdp_egress_tkeep : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axis_hsdp_egress_tlast : OUT STD_LOGIC;
      s_axis_hsdp_egress_tuser : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      s_axis_hsdp_egress_tvalid : OUT STD_LOGIC;
      s_axis_hsdp_egress_tready : IN STD_LOGIC;
      s_axis_hsdp_ingress_tdata : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      s_axis_hsdp_ingress_tkeep : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axis_hsdp_ingress_tlast : IN STD_LOGIC;
      s_axis_hsdp_ingress_tvalid : IN STD_LOGIC;
      s_axis_hsdp_ingress_tready : OUT STD_LOGIC;
      pl_config_done : IN STD_LOGIC;
      sd0_buspwr : OUT STD_LOGIC;
      sd0_busvolt_sel : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      sd0_dll_test_clk0 : OUT STD_LOGIC;
      sd0_dll_test_clk_rx : OUT STD_LOGIC;
      sd0_dll_test_clk_tx : OUT STD_LOGIC;
      sd0_dll_test_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      sd0_led_ctrl : OUT STD_LOGIC;
      sd0_clk : OUT STD_LOGIC;
      sd0_cmd_oe : OUT STD_LOGIC;
      sd0_cmd_out : OUT STD_LOGIC;
      sd0_data_oe : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      sd0_data_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      sd0_dll_test_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      sd0_cd_n : IN STD_LOGIC;
      sd0_cmd_in : IN STD_LOGIC;
      sd0_data_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      sd0_wp : IN STD_LOGIC;
      sd0_rx_clk : IN STD_LOGIC;
      sd1_rx_clk : IN STD_LOGIC;
      sd1_bus_pwr : OUT STD_LOGIC;
      sd1_busvolt_sel : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      sd1_dll_test_clk0 : OUT STD_LOGIC;
      sd1_dll_test_clk_rx : OUT STD_LOGIC;
      sd1_dll_test_clk_tx : OUT STD_LOGIC;
      sd1_dll_test_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      sd1_led_ctrl : OUT STD_LOGIC;
      sd1_clk : OUT STD_LOGIC;
      sd1_cmd_oe : OUT STD_LOGIC;
      sd1_cmd_out : OUT STD_LOGIC;
      sd1_data_oe : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      sd1_data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      sd1_dll_test_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      sd1_cd_n : IN STD_LOGIC;
      sd1_cmd_in : IN STD_LOGIC;
      sd1_data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      sd1_wp : IN STD_LOGIC;
      pl_ref_clk_mux_monitor : OUT STD_LOGIC;
      pmc_pl_sysmon_i2c_scl_trib : OUT STD_LOGIC;
      pmc_pl_sysmon_i2c_sda_trib : OUT STD_LOGIC;
      pmc_pl_sysmon_i2c_smb_alert_trib : OUT STD_LOGIC;
      pmc_pl_sysmon_i2c_scl_input : IN STD_LOGIC;
      pmc_pl_sysmon_i2c_sda_input : IN STD_LOGIC;
      pmc_pl_sysmon_root_alarm : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      pmc_pl_sysmon_root_new_data : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      debug_seu_crcerror : OUT STD_LOGIC;
      debug_seu_eccerror : OUT STD_LOGIC;
      debug_seu_endofcalib : OUT STD_LOGIC;
      debug_seu_halted : OUT STD_LOGIC;
      debug_seu_heartbeat : OUT STD_LOGIC;
      lpd_swdt_wwdt_irq : OUT STD_LOGIC;
      lpd_swdt_wwdt_reset : OUT STD_LOGIC;
      lpd_swdt_wwdt_reset_pending : OUT STD_LOGIC;
      lpd_swdt_wwdt_clk : IN STD_LOGIC;
      lpd_swdt_gwdt_ws0 : OUT STD_LOGIC;
      lpd_swdt_gwdt_ws1 : OUT STD_LOGIC;
      fpd_swdt_wwdt_irq : OUT STD_LOGIC;
      fpd_swdt_wwdt_reset : OUT STD_LOGIC;
      fpd_swdt_wwdt_reset_pending : OUT STD_LOGIC;
      fpd_swdt_wwdt_clk : IN STD_LOGIC;
      fpd_swdt_gwdt_ws0 : OUT STD_LOGIC;
      fpd_swdt_gwdt_ws1 : OUT STD_LOGIC;
      pl0_sem : OUT STD_LOGIC;
      pl1_sem : OUT STD_LOGIC;
      pl2_sem : OUT STD_LOGIC;
      pl3_sem : OUT STD_LOGIC;
      atb_clk : IN STD_LOGIC;
      atbtbytes : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      pl_ps_atdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      pl_ps_atid : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
      pl_ps_atvalid : IN STD_LOGIC;
      pspl_atready : OUT STD_LOGIC;
      ps_pl_irq_perfmonirq0_rpu_pl : OUT STD_LOGIC;
      ps_pl_irq_perfmonirq1_rpu_pl : OUT STD_LOGIC;
      ps_pl_irq_lpd_ocm_isr_lpd : OUT STD_LOGIC;
      ps_pl_irq_lpd_rpu0_critical_err : OUT STD_LOGIC;
      ps_pl_irq_lpd_rpu1_critical_err : OUT STD_LOGIC;
      ps_pl_irq_lpd_gpio_lpd : OUT STD_LOGIC;
      ps_pl_irq_lpd_i2c0 : OUT STD_LOGIC;
      ps_pl_irq_lpd_i2c1 : OUT STD_LOGIC;
      ps_pl_irq_lpd_spi0 : OUT STD_LOGIC;
      ps_pl_irq_lpd_spi1 : OUT STD_LOGIC;
      ps_pl_irq_lpd_uart0 : OUT STD_LOGIC;
      ps_pl_irq_lpd_uart1 : OUT STD_LOGIC;
      ps_pl_irq_lpd_can0 : OUT STD_LOGIC;
      ps_pl_irq_lpd_can1 : OUT STD_LOGIC;
      ps_pl_irq_lpd_usb2_interrupt : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      ps_pl_irq_lpd_usb2_otg_interrupt : OUT STD_LOGIC;
      ps_pl_irq_lpd_ipi_pmc : OUT STD_LOGIC;
      ps_pl_irq_lpd_ipi_pmc_nobuf : OUT STD_LOGIC;
      ps_pl_irq_lpd_ipi_psm : OUT STD_LOGIC;
      ps_pl_irq_lpd_ipi_ipi0 : OUT STD_LOGIC;
      ps_pl_irq_lpd_ipi_ipi1 : OUT STD_LOGIC;
      ps_pl_irq_lpd_ipi_ipi2 : OUT STD_LOGIC;
      ps_pl_irq_lpd_ipi_ipi3 : OUT STD_LOGIC;
      ps_pl_irq_lpd_ipi_ipi4 : OUT STD_LOGIC;
      ps_pl_irq_lpd_ipi_ipi5 : OUT STD_LOGIC;
      ps_pl_irq_lpd_ipi_ipi6 : OUT STD_LOGIC;
      ps_pl_irq_lpd_ttc0 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      ps_pl_irq_lpd_ttc1 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      ps_pl_irq_lpd_ttc2 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      ps_pl_irq_lpd_ttc3 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      ps_pl_irq_lpd_wwdt : OUT STD_LOGIC;
      ps_pl_irq_lpd_psm_mb : OUT STD_LOGIC;
      ps_pl_irq_lpd_xppu_err_interrupt : OUT STD_LOGIC;
      ps_pl_irq_lpd_int_ir_status : OUT STD_LOGIC;
      ps_pl_irq_lpd_ams_isr : OUT STD_LOGIC;
      ps_pl_irq_lpd_gem1 : OUT STD_LOGIC;
      ps_pl_irq_lpd_gem0_wol : OUT STD_LOGIC;
      ps_pl_irq_lpd_gem2 : OUT STD_LOGIC;
      ps_pl_irq_lpd_gem1_wol : OUT STD_LOGIC;
      ps_pl_irq_lpd_dma : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ps_pl_irq_lpd_xmpu_err_interrupt : OUT STD_LOGIC;
      ps_pl_irq_lpd_wwdt_reset_pending : OUT STD_LOGIC;
      ps_pl_irq_lpd_gwdt_ws0 : OUT STD_LOGIC;
      ps_pl_irq_lpd_gwdt_ws1 : OUT STD_LOGIC;
      ps_pl_irq_lpd_cpm_ps_isr_misc : OUT STD_LOGIC;
      ps_pl_irq_lpd_cpm_ps_isr_corr : OUT STD_LOGIC;
      ps_pl_irq_lpd_usb2_core_pme_generation : OUT STD_LOGIC;
      ps_pl_irq_lpd_cpm_ps_isr_uncorr : OUT STD_LOGIC;
      ps_pl_irq_lpd_ocm2_lpd : OUT STD_LOGIC;
      ps_pl_irq_lpd_ocm2_lpd_uncor_err : OUT STD_LOGIC;
      ps_pl_irq_fpd_wd : OUT STD_LOGIC;
      ps_pl_irq_fpd_ams_isr_fpd : OUT STD_LOGIC;
      ps_pl_irq_fpd_fpd_psm_tz_err : OUT STD_LOGIC;
      ps_pl_irq_fpd_apu_gic_l2err : OUT STD_LOGIC;
      ps_pl_irq_fpd_apu_gic_exterr : OUT STD_LOGIC;
      ps_pl_irq_fpd_apu_gic_regs : OUT STD_LOGIC;
      ps_pl_irq_fpd_cci_isr : OUT STD_LOGIC;
      ps_pl_irq_fpd_smmu_isr : OUT STD_LOGIC;
      ps_pl_irq_fpd_gwdt_ws1 : OUT STD_LOGIC;
      ps_pl_irq_fpd_wwdt_reset_pending : OUT STD_LOGIC;
      ps_pl_irq_fpd_gwdt_ws2 : OUT STD_LOGIC;
      ps_pl_irq_pmc_cfu_interrupt : OUT STD_LOGIC;
      ps_pl_irq_pmc_cframe_seu_interrupt : OUT STD_LOGIC;
      ps_pl_irq_pmc_gpio_pmc : OUT STD_LOGIC;
      ps_pl_irq_pmc_i2c : OUT STD_LOGIC;
      ps_pl_irq_pmc_ospi : OUT STD_LOGIC;
      ps_pl_irq_pmc_qspi : OUT STD_LOGIC;
      ps_pl_irq_pmc_sd0_axi : OUT STD_LOGIC;
      ps_pl_irq_pmc_sd0_axi_wkup : OUT STD_LOGIC;
      ps_pl_irq_pmc_sd1_axi : OUT STD_LOGIC;
      ps_pl_irq_pmc_sd1_axi_wkup : OUT STD_LOGIC;
      ps_pl_irq_pmc_debug : OUT STD_LOGIC;
      ps_pl_irq_pmc_dma0 : OUT STD_LOGIC;
      ps_pl_irq_pmc_dma1 : OUT STD_LOGIC;
      ps_pl_irq_pmc_int_ir_status : OUT STD_LOGIC;
      ps_pl_irq_pmc_xppu : OUT STD_LOGIC;
      ps_pl_irq_pmc_xmpu : OUT STD_LOGIC;
      ps_pl_irq_pmc_sbi : OUT STD_LOGIC;
      ps_pl_irq_pmc_aes : OUT STD_LOGIC;
      ps_pl_irq_pmc_ecdsa_rsa : OUT STD_LOGIC;
      ps_pl_irq_pmc_efuse_isr : OUT STD_LOGIC;
      ps_pl_irq_pmc_sha : OUT STD_LOGIC;
      ps_pl_irq_pmc_trng : OUT STD_LOGIC;
      ps_pl_irq_pmc_rtc_alarm_int : OUT STD_LOGIC;
      ps_pl_irq_pmc_rtc_seconds_int : OUT STD_LOGIC;
      ps_pl_irq_pmc_sysmon_interrupt : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      ps_pl_irq_pmc_npi_interrupt_out : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      ps_pl_irq_pmc_ocm_isr : OUT STD_LOGIC;
      ps_pl_irq_pmc_vccint_glitch_detect : OUT STD_LOGIC;
      fmio_gem0_fifo_rx_clk_from_pl : IN STD_LOGIC;
      fmio_gem0_fifo_tx_clk_from_pl : IN STD_LOGIC;
      fmio_gem1_fifo_rx_clk_from_pl : IN STD_LOGIC;
      fmio_gem1_fifo_tx_clk_from_pl : IN STD_LOGIC;
      fmio_gem_tsu_clk_from_pl : IN STD_LOGIC;
      fmio_gem_tsu_clk_to_pl : OUT STD_LOGIC;
      emio_enet_tsu_clk : IN STD_LOGIC;
      gem1_fifo_rx_clk_to_pl : OUT STD_LOGIC;
      gem1_fifo_tx_clk_to_pl : OUT STD_LOGIC;
      gem0_fifo_rx_clk_to_pl : OUT STD_LOGIC;
      gem0_fifo_tx_clk_to_pl : OUT STD_LOGIC;
      gem0_tsu_timer_cnt : OUT STD_LOGIC_VECTOR(93 DOWNTO 0);
      gem0_ext_int_in : IN STD_LOGIC;
      gem0_dma_bus_width : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      hsdp0_gt_rxn : IN STD_LOGIC;
      hsdp0_gt_rxp : IN STD_LOGIC;
      hsdp0_gt_txn : OUT STD_LOGIC;
      hsdp0_gt_txp : OUT STD_LOGIC;
      hsdp1_gt_rxn : IN STD_LOGIC;
      hsdp1_gt_rxp : IN STD_LOGIC;
      hsdp1_gt_txn : OUT STD_LOGIC;
      hsdp1_gt_txp : OUT STD_LOGIC;
      eos : OUT STD_LOGIC;
      usrgsrb : IN STD_LOGIC;
      usrgtsb : IN STD_LOGIC;
      captureb : IN STD_LOGIC;
      captureclk : IN STD_LOGIC;
      dummy : OUT STD_LOGIC;
      chi0_clk : IN STD_LOGIC;
      chi1_clk : IN STD_LOGIC;
      pcie0_user_clk : OUT STD_LOGIC;
      pcie1_user_clk : OUT STD_LOGIC;
      pl_ref_clk : IN STD_LOGIC;
      dma0_axi_aresetn : OUT STD_LOGIC;
      dma0_soft_resetn : IN STD_LOGIC;
      pcie0_user_reset : OUT STD_LOGIC;
      pcie1_user_reset : OUT STD_LOGIC;
      cpm_cor_irq : OUT STD_LOGIC;
      cpm_irq0 : IN STD_LOGIC;
      cpm_irq1 : IN STD_LOGIC;
      cpm_misc_irq : OUT STD_LOGIC;
      cpm_uncor_irq : OUT STD_LOGIC;
      dma0_irq : OUT STD_LOGIC;
      chi0_reqflitpend : IN STD_LOGIC;
      chi0_reqflitv : IN STD_LOGIC;
      chi0_reqflit : IN STD_LOGIC_VECTOR(120 DOWNTO 0);
      chi0_reqlcrdv : OUT STD_LOGIC;
      chi0_crspflitpend : OUT STD_LOGIC;
      chi0_crspflitv : OUT STD_LOGIC;
      chi0_crspflit : OUT STD_LOGIC_VECTOR(50 DOWNTO 0);
      chi0_crsplcrdv : IN STD_LOGIC;
      chi0_rdatflitpend : OUT STD_LOGIC;
      chi0_rdatflitv : OUT STD_LOGIC;
      chi0_rdatflit : OUT STD_LOGIC_VECTOR(704 DOWNTO 0);
      chi0_rdatlcrdv : IN STD_LOGIC;
      chi0_snpflitpend : OUT STD_LOGIC;
      chi0_snpflitv : OUT STD_LOGIC;
      chi0_snpflit : OUT STD_LOGIC_VECTOR(87 DOWNTO 0);
      chi0_snplcrdv : IN STD_LOGIC;
      chi0_srspflitpend : IN STD_LOGIC;
      chi0_srspflitv : IN STD_LOGIC;
      chi0_srspflit : IN STD_LOGIC_VECTOR(50 DOWNTO 0);
      chi0_srsplcrdv : OUT STD_LOGIC;
      chi0_wdatflitpend : IN STD_LOGIC;
      chi0_wdatflitv : IN STD_LOGIC;
      chi0_wdatflit : IN STD_LOGIC_VECTOR(704 DOWNTO 0);
      chi0_wdatlcrdv : OUT STD_LOGIC;
      chi0_mlinkactivereq : IN STD_LOGIC;
      chi0_mlinkactiveack : OUT STD_LOGIC;
      chi0_msactive : IN STD_LOGIC;
      chi0_slinkactivereq : OUT STD_LOGIC;
      chi0_slinkactiveack : IN STD_LOGIC;
      chi0_ssactive : OUT STD_LOGIC;
      chi0_syscoreq : IN STD_LOGIC;
      chi0_syscoack : OUT STD_LOGIC;
      chi1_reqflitpend : IN STD_LOGIC;
      chi1_reqflitv : IN STD_LOGIC;
      chi1_reqflit : IN STD_LOGIC_VECTOR(120 DOWNTO 0);
      chi1_reqlcrdv : OUT STD_LOGIC;
      chi1_crspflitpend : OUT STD_LOGIC;
      chi1_crspflitv : OUT STD_LOGIC;
      chi1_crspflit : OUT STD_LOGIC_VECTOR(50 DOWNTO 0);
      chi1_crsplcrdv : IN STD_LOGIC;
      chi1_rdatflitpend : OUT STD_LOGIC;
      chi1_rdatflitv : OUT STD_LOGIC;
      chi1_rdatflit : OUT STD_LOGIC_VECTOR(704 DOWNTO 0);
      chi1_rdatlcrdv : IN STD_LOGIC;
      chi1_snpflitpend : OUT STD_LOGIC;
      chi1_snpflitv : OUT STD_LOGIC;
      chi1_snpflit : OUT STD_LOGIC_VECTOR(87 DOWNTO 0);
      chi1_snplcrdv : IN STD_LOGIC;
      chi1_srspflitpend : IN STD_LOGIC;
      chi1_srspflitv : IN STD_LOGIC;
      chi1_srspflit : IN STD_LOGIC_VECTOR(50 DOWNTO 0);
      chi1_srsplcrdv : OUT STD_LOGIC;
      chi1_wdatflitpend : IN STD_LOGIC;
      chi1_wdatflitv : IN STD_LOGIC;
      chi1_wdatflit : IN STD_LOGIC_VECTOR(704 DOWNTO 0);
      chi1_wdatlcrdv : OUT STD_LOGIC;
      chi1_mlinkactivereq : IN STD_LOGIC;
      chi1_mlinkactiveack : OUT STD_LOGIC;
      chi1_msactive : IN STD_LOGIC;
      chi1_slinkactivereq : OUT STD_LOGIC;
      chi1_slinkactiveack : IN STD_LOGIC;
      chi1_ssactive : OUT STD_LOGIC;
      chi1_syscoreq : IN STD_LOGIC;
      chi1_syscoack : OUT STD_LOGIC;
      dma0_m_axis_h2c_0_tdata : OUT STD_LOGIC_VECTOR(511 DOWNTO 0);
      dma0_m_axis_h2c_0_tkeep : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_m_axis_h2c_0_tlast : OUT STD_LOGIC;
      dma0_m_axis_h2c_0_tuser : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_m_axis_h2c_0_tvalid : OUT STD_LOGIC;
      dma0_m_axis_h2c_0_tready : IN STD_LOGIC;
      dma0_m_axis_h2c_1_tdata : OUT STD_LOGIC_VECTOR(511 DOWNTO 0);
      dma0_m_axis_h2c_1_tkeep : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_m_axis_h2c_1_tlast : OUT STD_LOGIC;
      dma0_m_axis_h2c_1_tuser : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_m_axis_h2c_1_tvalid : OUT STD_LOGIC;
      dma0_m_axis_h2c_1_tready : IN STD_LOGIC;
      dma0_m_axis_h2c_2_tdata : OUT STD_LOGIC_VECTOR(511 DOWNTO 0);
      dma0_m_axis_h2c_2_tkeep : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_m_axis_h2c_2_tlast : OUT STD_LOGIC;
      dma0_m_axis_h2c_2_tuser : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_m_axis_h2c_2_tvalid : OUT STD_LOGIC;
      dma0_m_axis_h2c_2_tready : IN STD_LOGIC;
      dma0_m_axis_h2c_3_tdata : OUT STD_LOGIC_VECTOR(511 DOWNTO 0);
      dma0_m_axis_h2c_3_tkeep : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_m_axis_h2c_3_tlast : OUT STD_LOGIC;
      dma0_m_axis_h2c_3_tuser : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_m_axis_h2c_3_tvalid : OUT STD_LOGIC;
      dma0_m_axis_h2c_3_tready : IN STD_LOGIC;
      dma0_s_axis_c2h_0_tdata : IN STD_LOGIC_VECTOR(511 DOWNTO 0);
      dma0_s_axis_c2h_0_tkeep : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_s_axis_c2h_0_tlast : IN STD_LOGIC;
      dma0_s_axis_c2h_0_tuser : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_s_axis_c2h_0_tvalid : IN STD_LOGIC;
      dma0_s_axis_c2h_0_tready : OUT STD_LOGIC;
      dma0_s_axis_c2h_1_tdata : IN STD_LOGIC_VECTOR(511 DOWNTO 0);
      dma0_s_axis_c2h_1_tkeep : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_s_axis_c2h_1_tlast : IN STD_LOGIC;
      dma0_s_axis_c2h_1_tuser : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_s_axis_c2h_1_tvalid : IN STD_LOGIC;
      dma0_s_axis_c2h_1_tready : OUT STD_LOGIC;
      dma0_s_axis_c2h_2_tdata : IN STD_LOGIC_VECTOR(511 DOWNTO 0);
      dma0_s_axis_c2h_2_tkeep : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_s_axis_c2h_2_tlast : IN STD_LOGIC;
      dma0_s_axis_c2h_2_tuser : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_s_axis_c2h_2_tvalid : IN STD_LOGIC;
      dma0_s_axis_c2h_2_tready : OUT STD_LOGIC;
      dma0_s_axis_c2h_3_tdata : IN STD_LOGIC_VECTOR(511 DOWNTO 0);
      dma0_s_axis_c2h_3_tkeep : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_s_axis_c2h_3_tlast : IN STD_LOGIC;
      dma0_s_axis_c2h_3_tuser : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_s_axis_c2h_3_tvalid : IN STD_LOGIC;
      dma0_s_axis_c2h_3_tready : OUT STD_LOGIC;
      pcie0_user_lnk_up : OUT STD_LOGIC;
      pcie1_user_lnk_up : OUT STD_LOGIC;
      pcie0_s_axis_rq_tdata : IN STD_LOGIC_VECTOR(511 DOWNTO 0);
      pcie0_s_axis_rq_tkeep : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      pcie0_s_axis_rq_tlast : IN STD_LOGIC;
      pcie0_s_axis_rq_tuser : IN STD_LOGIC_VECTOR(178 DOWNTO 0);
      pcie0_s_axis_rq_tvalid : IN STD_LOGIC;
      pcie0_s_axis_rq_tready : OUT STD_LOGIC;
      pcie0_s_axis_cc_tdata : IN STD_LOGIC_VECTOR(511 DOWNTO 0);
      pcie0_s_axis_cc_tkeep : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      pcie0_s_axis_cc_tlast : IN STD_LOGIC;
      pcie0_s_axis_cc_tuser : IN STD_LOGIC_VECTOR(80 DOWNTO 0);
      pcie0_s_axis_cc_tvalid : IN STD_LOGIC;
      pcie0_s_axis_cc_tready : OUT STD_LOGIC;
      pcie0_m_axis_rc_tdata : OUT STD_LOGIC_VECTOR(511 DOWNTO 0);
      pcie0_m_axis_rc_tkeep : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      pcie0_m_axis_rc_tlast : OUT STD_LOGIC;
      pcie0_m_axis_rc_tuser : OUT STD_LOGIC_VECTOR(160 DOWNTO 0);
      pcie0_m_axis_rc_tvalid : OUT STD_LOGIC;
      pcie0_m_axis_rc_tready : IN STD_LOGIC;
      pcie0_m_axis_cq_tdata : OUT STD_LOGIC_VECTOR(511 DOWNTO 0);
      pcie0_m_axis_cq_tkeep : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      pcie0_m_axis_cq_tlast : OUT STD_LOGIC;
      pcie0_m_axis_cq_tuser : OUT STD_LOGIC_VECTOR(182 DOWNTO 0);
      pcie0_m_axis_cq_tvalid : OUT STD_LOGIC;
      pcie0_m_axis_cq_tready : IN STD_LOGIC;
      pcie1_s_axis_rq_tdata : IN STD_LOGIC_VECTOR(511 DOWNTO 0);
      pcie1_s_axis_rq_tkeep : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      pcie1_s_axis_rq_tlast : IN STD_LOGIC;
      pcie1_s_axis_rq_tuser : IN STD_LOGIC_VECTOR(178 DOWNTO 0);
      pcie1_s_axis_rq_tvalid : IN STD_LOGIC;
      pcie1_s_axis_rq_tready : OUT STD_LOGIC;
      pcie1_s_axis_cc_tdata : IN STD_LOGIC_VECTOR(511 DOWNTO 0);
      pcie1_s_axis_cc_tkeep : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      pcie1_s_axis_cc_tlast : IN STD_LOGIC;
      pcie1_s_axis_cc_tuser : IN STD_LOGIC_VECTOR(80 DOWNTO 0);
      pcie1_s_axis_cc_tvalid : IN STD_LOGIC;
      pcie1_s_axis_cc_tready : OUT STD_LOGIC;
      pcie1_m_axis_rc_tdata : OUT STD_LOGIC_VECTOR(511 DOWNTO 0);
      pcie1_m_axis_rc_tkeep : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      pcie1_m_axis_rc_tlast : OUT STD_LOGIC;
      pcie1_m_axis_rc_tuser : OUT STD_LOGIC_VECTOR(160 DOWNTO 0);
      pcie1_m_axis_rc_tvalid : OUT STD_LOGIC;
      pcie1_m_axis_rc_tready : IN STD_LOGIC;
      pcie1_m_axis_cq_tdata : OUT STD_LOGIC_VECTOR(511 DOWNTO 0);
      pcie1_m_axis_cq_tkeep : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      pcie1_m_axis_cq_tlast : OUT STD_LOGIC;
      pcie1_m_axis_cq_tuser : OUT STD_LOGIC_VECTOR(182 DOWNTO 0);
      pcie1_m_axis_cq_tvalid : OUT STD_LOGIC;
      pcie1_m_axis_cq_tready : IN STD_LOGIC;
      pcie0_cfg_mgmt_addr : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      pcie0_cfg_mgmt_byte_en : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie0_cfg_mgmt_debug_access : IN STD_LOGIC;
      pcie0_cfg_mgmt_read_en : IN STD_LOGIC;
      pcie0_cfg_mgmt_write_en : IN STD_LOGIC;
      pcie0_cfg_mgmt_write_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      pcie0_cfg_mgmt_read_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      pcie0_cfg_mgmt_read_write_done : OUT STD_LOGIC;
      pcie0_cfg_mgmt_function_number : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      pcie1_cfg_mgmt_addr : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      pcie1_cfg_mgmt_byte_en : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie1_cfg_mgmt_debug_access : IN STD_LOGIC;
      pcie1_cfg_mgmt_read_en : IN STD_LOGIC;
      pcie1_cfg_mgmt_write_en : IN STD_LOGIC;
      pcie1_cfg_mgmt_write_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      pcie1_cfg_mgmt_read_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      pcie1_cfg_mgmt_read_write_done : OUT STD_LOGIC;
      pcie1_cfg_mgmt_function_number : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      pcie0_cfg_msg_transmit : IN STD_LOGIC;
      pcie0_cfg_msg_transmit_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      pcie0_cfg_msg_transmit_type : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      pcie0_cfg_msg_transmit_done : OUT STD_LOGIC;
      pcie0_cfg_msg_received : OUT STD_LOGIC;
      pcie0_cfg_msg_received_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      pcie0_cfg_msg_received_type : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      pcie1_cfg_msg_transmit : IN STD_LOGIC;
      pcie1_cfg_msg_transmit_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      pcie1_cfg_msg_transmit_type : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      pcie0_cfg_interrupt_int : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie0_cfg_interrupt_pending : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie0_cfg_interrupt_sent : OUT STD_LOGIC;
      pcie1_cfg_interrupt_int : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie1_cfg_interrupt_sent : OUT STD_LOGIC;
      pcie1_cfg_interrupt_pending : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie0_cfg_fc_sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      pcie0_cfg_fc_vc_sel : IN STD_LOGIC;
      pcie0_cfg_fc_npd : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      pcie0_cfg_fc_npd_scale : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie0_cfg_fc_nph : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      pcie0_cfg_fc_nph_scale : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie0_cfg_fc_pd : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      pcie0_cfg_fc_pd_scale : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie0_cfg_fc_ph : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      pcie0_cfg_fc_ph_scale : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie0_cfg_fc_cpld : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      pcie0_cfg_fc_cpld_scale : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie0_cfg_fc_cplh : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      pcie0_cfg_fc_cplh_scale : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie1_cfg_fc_sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      pcie1_cfg_fc_vc_sel : IN STD_LOGIC;
      pcie1_cfg_fc_npd : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      pcie1_cfg_fc_npd_scale : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie1_cfg_fc_nph : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      pcie1_cfg_fc_nph_scale : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie1_cfg_fc_pd : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      pcie1_cfg_fc_pd_scale : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie1_cfg_fc_ph : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      pcie1_cfg_fc_ph_scale : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie0_cfg_err_cor_in : IN STD_LOGIC;
      pcie0_cfg_err_uncor_in : IN STD_LOGIC;
      pcie0_cfg_flr_done : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie0_cfg_flr_in_process : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie0_cfg_hot_reset_in : IN STD_LOGIC;
      pcie0_cfg_hot_reset_out : OUT STD_LOGIC;
      pcie0_cfg_power_state_change_ack : IN STD_LOGIC;
      pcie0_cfg_power_state_change_interrupt : OUT STD_LOGIC;
      pcie0_cfg_vf_flr_done : IN STD_LOGIC;
      pcie0_cfg_vf_flr_func_num : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      pcie0_cfg_vf_flr_in_process : OUT STD_LOGIC_VECTOR(251 DOWNTO 0);
      pcie1_cfg_err_cor_in : IN STD_LOGIC;
      pcie1_cfg_err_uncor_in : IN STD_LOGIC;
      pcie1_cfg_flr_done : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie1_cfg_flr_in_process : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie1_cfg_hot_reset_in : IN STD_LOGIC;
      pcie1_cfg_hot_reset_out : OUT STD_LOGIC;
      pcie1_cfg_power_state_change_ack : IN STD_LOGIC;
      pcie1_cfg_power_state_change_interrupt : OUT STD_LOGIC;
      pcie1_cfg_vf_flr_done : IN STD_LOGIC;
      pcie1_cfg_vf_flr_func_num : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      pcie1_cfg_vf_flr_in_process : OUT STD_LOGIC_VECTOR(251 DOWNTO 0);
      pcie0_cfg_10b_tag_requester_enable : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie0_cfg_atomic_requester_enable : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie0_cfg_ats_control_enable : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie0_cfg_current_speed : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie0_cfg_err_cor_out : OUT STD_LOGIC;
      pcie0_cfg_err_fatal_out : OUT STD_LOGIC;
      pcie0_cfg_err_nonfatal_out : OUT STD_LOGIC;
      pcie0_cfg_ext_tag_enable : OUT STD_LOGIC;
      pcie0_cfg_function_power_state : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      pcie0_cfg_function_status : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      pcie0_cfg_link_power_state : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie0_cfg_local_error_out : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      pcie0_cfg_local_error_valid : OUT STD_LOGIC;
      pcie0_cfg_ltssm_state : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      pcie0_cfg_max_pasid_width_control : OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
      pcie0_cfg_max_payload : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie0_cfg_max_read_req : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      pcie0_cfg_negotiated_width : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      pcie0_cfg_pasid_control : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      pcie0_cfg_pasid_enable : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie0_cfg_pasid_exec_permission_enable : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie0_cfg_pasid_privil_mode_enable : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie0_cfg_phy_link_down : OUT STD_LOGIC;
      pcie0_cfg_phy_link_status : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie0_cfg_pl_status_change : OUT STD_LOGIC;
      pcie0_cfg_pri_control : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      pcie0_cfg_rcb_status : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie0_cfg_rx_pm_state : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie0_cfg_tph_requester_enable : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie0_cfg_tph_st_mode : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      pcie0_cfg_tx_pm_state : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie0_cfg_vc1_enable : OUT STD_LOGIC;
      pcie0_cfg_vc1_negotiation_pending : OUT STD_LOGIC;
      pcie0_cfg_vf_ats_control_enable : OUT STD_LOGIC_VECTOR(251 DOWNTO 0);
      pcie0_cfg_vf_power_state : OUT STD_LOGIC_VECTOR(755 DOWNTO 0);
      pcie0_cfg_vf_status : OUT STD_LOGIC_VECTOR(503 DOWNTO 0);
      pcie0_cfg_vf_tph_requester_enable : OUT STD_LOGIC_VECTOR(251 DOWNTO 0);
      pcie0_cfg_vf_tph_st_mode : OUT STD_LOGIC_VECTOR(755 DOWNTO 0);
      pcie1_cfg_10b_tag_requester_enable : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie1_cfg_ats_control_enable : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie1_cfg_current_speed : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie1_cfg_err_cor_out : OUT STD_LOGIC;
      pcie1_cfg_err_fatal_out : OUT STD_LOGIC;
      pcie1_cfg_err_nonfatal_out : OUT STD_LOGIC;
      pcie1_cfg_ext_tag_enable : OUT STD_LOGIC;
      pcie1_cfg_function_status : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      pcie1_cfg_link_power_state : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie1_cfg_local_error_out : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      pcie1_cfg_local_error_valid : OUT STD_LOGIC;
      pcie1_cfg_ltssm_state : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      pcie1_cfg_max_pasid_width_control : OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
      pcie1_cfg_max_payload : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie1_cfg_max_read_req : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      pcie1_cfg_negotiated_width : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      pcie1_cfg_pasid_control : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      pcie1_cfg_pasid_enable : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie1_cfg_pasid_exec_permission_enable : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie1_cfg_pasid_privil_mode_enable : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie1_cfg_phy_link_down : OUT STD_LOGIC;
      pcie1_cfg_phy_link_status : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie1_cfg_pl_status_change : OUT STD_LOGIC;
      pcie1_cfg_pri_control : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      pcie1_cfg_rcb_status : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie1_cfg_rx_pm_state : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie1_cfg_tph_requester_enable : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie1_cfg_tph_st_mode : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      pcie1_cfg_tx_pm_state : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie1_cfg_vf_ats_control_enable : OUT STD_LOGIC_VECTOR(251 DOWNTO 0);
      pcie1_cfg_vf_power_state : OUT STD_LOGIC_VECTOR(755 DOWNTO 0);
      pcie1_cfg_vf_status : OUT STD_LOGIC_VECTOR(503 DOWNTO 0);
      pcie1_cfg_vf_tph_requester_enable : OUT STD_LOGIC_VECTOR(251 DOWNTO 0);
      pcie1_cfg_vf_tph_st_mode : OUT STD_LOGIC_VECTOR(755 DOWNTO 0);
      pcie0_cq_np_req : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie0_cq_np_req_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      pcie0_rq_seq_num0 : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      pcie0_rq_seq_num1 : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      pcie0_rq_seq_num_vld0 : OUT STD_LOGIC;
      pcie0_rq_seq_num_vld1 : OUT STD_LOGIC;
      pcie0_rq_tag0 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      pcie0_rq_tag1 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      pcie0_rq_tag_av : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie0_rq_tag_vld0 : OUT STD_LOGIC;
      pcie0_rq_tag_vld1 : OUT STD_LOGIC;
      pcie1_cq_np_req : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie1_cq_np_req_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      pcie1_rq_seq_num0 : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      pcie1_rq_seq_num1 : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      pcie1_rq_seq_num_vld0 : OUT STD_LOGIC;
      pcie1_rq_seq_num_vld1 : OUT STD_LOGIC;
      pcie1_rq_tag0 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      pcie1_rq_tag1 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      pcie1_rq_tag_av : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie1_rq_tag_vld0 : OUT STD_LOGIC;
      pcie1_rq_tag_vld1 : OUT STD_LOGIC;
      pcie0_cfg_ext_read_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      pcie0_cfg_ext_read_received : OUT STD_LOGIC;
      pcie0_cfg_ext_register_number : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      pcie0_cfg_ext_read_data_valid : IN STD_LOGIC;
      pcie0_cfg_ext_write_byte_enable : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie0_cfg_ext_write_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      pcie0_cfg_ext_write_received : OUT STD_LOGIC;
      pcie0_cfg_ext_function_number : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      pcie1_cfg_ext_read_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      pcie1_cfg_ext_read_received : OUT STD_LOGIC;
      pcie1_cfg_ext_register_number : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      pcie1_cfg_ext_read_data_valid : IN STD_LOGIC;
      pcie1_cfg_ext_write_byte_enable : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie1_cfg_ext_write_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      pcie1_cfg_ext_write_received : OUT STD_LOGIC;
      pcie1_cfg_ext_function_number : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      pcie0_tfc_npd_av : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie0_tfc_nph_av : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie1_tfc_npd_av : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie1_tfc_nph_av : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie0_edr_datarate_change_ack : IN STD_LOGIC;
      pcie0_edr_datarate_change_req : OUT STD_LOGIC;
      pcie0_edr_enable : OUT STD_LOGIC;
      pcie1_edr_datarate_change_ack : IN STD_LOGIC;
      pcie1_edr_datarate_change_req : OUT STD_LOGIC;
      pcie1_edr_enable : OUT STD_LOGIC;
      xdma0_usr_irq_req : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      xdma0_usr_irq_ack : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      xdma0_usr_irq_fnc : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      dma0_usr_flr_done_fnc : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      dma0_usr_flr_done_vld : IN STD_LOGIC;
      dma0_usr_flr_fnc : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      dma0_usr_flr_set : OUT STD_LOGIC;
      dma0_usr_flr_clr : OUT STD_LOGIC;
      dma0_mgmt_req_vld : IN STD_LOGIC;
      dma0_mgmt_req_dat : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      dma0_mgmt_req_adr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      dma0_mgmt_req_fnc : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      dma0_mgmt_req_msc : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      dma0_mgmt_req_cmd : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      dma0_mgmt_req_rdy : OUT STD_LOGIC;
      dma0_mgmt_cpl_vld : OUT STD_LOGIC;
      dma0_mgmt_cpl_sts : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      dma0_mgmt_cpl_dat : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      dma0_mgmt_cpl_rdy : IN STD_LOGIC;
      dma0_c2h_dsc_byp_0_ready : OUT STD_LOGIC;
      dma0_c2h_dsc_byp_0_src_addr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_c2h_dsc_byp_0_dst_addr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_c2h_dsc_byp_0_len : IN STD_LOGIC_VECTOR(27 DOWNTO 0);
      dma0_c2h_dsc_byp_0_ctl : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      dma0_c2h_dsc_byp_0_load : IN STD_LOGIC;
      dma0_h2c_dsc_byp_0_ready : OUT STD_LOGIC;
      dma0_h2c_dsc_byp_0_src_addr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_h2c_dsc_byp_0_dst_addr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_h2c_dsc_byp_0_len : IN STD_LOGIC_VECTOR(27 DOWNTO 0);
      dma0_h2c_dsc_byp_0_ctl : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      dma0_h2c_dsc_byp_0_load : IN STD_LOGIC;
      dma0_c2h_dsc_byp_1_ready : OUT STD_LOGIC;
      dma0_c2h_dsc_byp_1_src_addr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_c2h_dsc_byp_1_dst_addr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_c2h_dsc_byp_1_len : IN STD_LOGIC_VECTOR(27 DOWNTO 0);
      dma0_c2h_dsc_byp_1_ctl : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      dma0_c2h_dsc_byp_1_load : IN STD_LOGIC;
      dma0_h2c_dsc_byp_1_ready : OUT STD_LOGIC;
      dma0_h2c_dsc_byp_1_src_addr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_h2c_dsc_byp_1_dst_addr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_h2c_dsc_byp_1_len : IN STD_LOGIC_VECTOR(27 DOWNTO 0);
      dma0_h2c_dsc_byp_1_ctl : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      dma0_h2c_dsc_byp_1_load : IN STD_LOGIC;
      dma0_c2h_dsc_byp_2_ready : OUT STD_LOGIC;
      dma0_c2h_dsc_byp_2_src_addr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_c2h_dsc_byp_2_dst_addr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_c2h_dsc_byp_2_len : IN STD_LOGIC_VECTOR(27 DOWNTO 0);
      dma0_c2h_dsc_byp_2_ctl : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      dma0_c2h_dsc_byp_2_load : IN STD_LOGIC;
      dma0_h2c_dsc_byp_2_ready : OUT STD_LOGIC;
      dma0_h2c_dsc_byp_2_src_addr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_h2c_dsc_byp_2_dst_addr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_h2c_dsc_byp_2_len : IN STD_LOGIC_VECTOR(27 DOWNTO 0);
      dma0_h2c_dsc_byp_2_ctl : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      dma0_h2c_dsc_byp_2_load : IN STD_LOGIC;
      dma0_c2h_dsc_byp_3_ready : OUT STD_LOGIC;
      dma0_c2h_dsc_byp_3_src_addr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_c2h_dsc_byp_3_dst_addr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_c2h_dsc_byp_3_len : IN STD_LOGIC_VECTOR(27 DOWNTO 0);
      dma0_c2h_dsc_byp_3_ctl : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      dma0_c2h_dsc_byp_3_load : IN STD_LOGIC;
      dma0_h2c_dsc_byp_3_ready : OUT STD_LOGIC;
      dma0_h2c_dsc_byp_3_src_addr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_h2c_dsc_byp_3_dst_addr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_h2c_dsc_byp_3_len : IN STD_LOGIC_VECTOR(27 DOWNTO 0);
      dma0_h2c_dsc_byp_3_ctl : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      dma0_h2c_dsc_byp_3_load : IN STD_LOGIC;
      dma0_c2h_sts_0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      dma0_c2h_sts_1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      dma0_c2h_sts_2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      dma0_c2h_sts_3 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      dma0_h2c_sts_0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      dma0_h2c_sts_1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      dma0_h2c_sts_2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      dma0_h2c_sts_3 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      pcie0_cfg_msi_attr : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      pcie0_cfg_msi_function_number : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      pcie0_cfg_msi_int_vector : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      pcie0_cfg_msi_pending_status : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      pcie0_cfg_msi_pending_status_data_enable : IN STD_LOGIC;
      pcie0_cfg_msi_pending_status_function_number : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie0_cfg_msi_select : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie0_cfg_msi_tph_present : IN STD_LOGIC;
      pcie0_cfg_msi_tph_st_tag : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      pcie0_cfg_msi_tph_type : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie0_cfg_msi_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      pcie0_cfg_msi_enable : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie0_cfg_msi_fail : OUT STD_LOGIC;
      pcie0_cfg_msi_mask_update : OUT STD_LOGIC;
      pcie0_cfg_msi_mmenable : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      pcie0_cfg_msi_sent : OUT STD_LOGIC;
      pcie0_cfg_msix_attr : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      pcie0_cfg_msix_fail : OUT STD_LOGIC;
      pcie0_cfg_msix_function_number : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      pcie0_cfg_msix_mint_vector : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      pcie0_cfg_msix_sent : OUT STD_LOGIC;
      pcie0_cfg_msix_tph_present : IN STD_LOGIC;
      pcie0_cfg_msix_tph_st_tag : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      pcie0_cfg_msix_tph_type : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie0_cfg_msix_enable : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie0_cfg_msix_mask : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie0_cfg_msix_vec_pending_status : OUT STD_LOGIC;
      pcie0_cfg_msix_address : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      pcie0_cfg_msix_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      pcie0_cfg_msix_int_vector : IN STD_LOGIC;
      pcie0_cfg_msix_vec_pending : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie0_cfg_msix_vf_enable : OUT STD_LOGIC_VECTOR(251 DOWNTO 0);
      pcie0_cfg_msix_vf_mask : OUT STD_LOGIC_VECTOR(251 DOWNTO 0);
      pcie1_cfg_msi_enable : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie1_cfg_msi_mmenable : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      pcie1_cfg_msi_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      pcie1_cfg_msi_attr : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      pcie1_cfg_msi_function_number : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      pcie1_cfg_msi_int_vector : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      pcie1_cfg_msi_pending_status : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      pcie1_cfg_msi_pending_status_data_enable : IN STD_LOGIC;
      pcie1_cfg_msi_pending_status_function_number : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie1_cfg_msi_select : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie1_cfg_msi_tph_present : IN STD_LOGIC;
      pcie1_cfg_msi_tph_st_tag : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      pcie1_cfg_msi_tph_type : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie1_cfg_msix_enable : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie1_cfg_msix_mask : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pcie1_cfg_msix_attr : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      pcie1_cfg_msix_function_number : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      pcie1_cfg_msix_mint_vector : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      pcie1_cfg_msix_tph_present : IN STD_LOGIC;
      pcie1_cfg_msix_tph_st_tag : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      pcie1_cfg_msix_tph_type : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie1_cfg_msix_address : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      pcie1_cfg_msix_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      pcie1_cfg_msix_int_vector : IN STD_LOGIC;
      pcie1_cfg_msix_vec_pending : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      pcie1_cfg_msix_vf_enable : OUT STD_LOGIC_VECTOR(251 DOWNTO 0);
      pcie1_cfg_msix_vf_mask : OUT STD_LOGIC_VECTOR(251 DOWNTO 0);
      pcie0_gt_rxn : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      pcie0_gt_rxp : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      pcie0_gt_txn : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      pcie0_gt_txp : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      pcie1_gt_rxn : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      pcie1_gt_rxp : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      pcie1_gt_txn : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      pcie1_gt_txp : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      gt_refclk0_n : IN STD_LOGIC;
      gt_refclk0_p : IN STD_LOGIC;
      gt_refclk1_n : IN STD_LOGIC;
      gt_refclk1_p : IN STD_LOGIC;
      dma0_st_rx_msg_rdy : IN STD_LOGIC;
      dma0_st_rx_msg_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      dma0_st_rx_msg_valid : OUT STD_LOGIC;
      dma0_st_rx_msg_last : OUT STD_LOGIC;
      dma0_s_axis_c2h_tdata : IN STD_LOGIC_VECTOR(511 DOWNTO 0);
      dma0_s_axis_c2h_dpar : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_s_axis_c2h_ctrl_marker : IN STD_LOGIC;
      dma0_s_axis_c2h_ctrl_port_id : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      dma0_s_axis_c2h_ctrl_imm_data : IN STD_LOGIC;
      dma0_s_axis_c2h_ctrl_dis_cmpt : IN STD_LOGIC;
      dma0_s_axis_c2h_ctrl_user_trig : IN STD_LOGIC;
      dma0_s_axis_c2h_ctrl_qid : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
      dma0_s_axis_c2h_ctrl_len : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      dma0_s_axis_c2h_tvalid : IN STD_LOGIC;
      dma0_s_axis_c2h_tlast : IN STD_LOGIC;
      dma0_s_axis_c2h_mty : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      dma0_s_axis_c2h_tready : OUT STD_LOGIC;
      dma0_s_axis_c2h_cmpt_tdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      dma0_s_axis_c2h_cmpt_type : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      dma0_s_axis_c2h_cmpt_dpar : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      dma0_s_axis_c2h_cmpt_tvalid : IN STD_LOGIC;
      dma0_s_axis_c2h_cmpt_tlast : IN STD_LOGIC;
      dma0_s_axis_c2h_cmpt_tready : OUT STD_LOGIC;
      dma0_m_axis_h2c_tdata : OUT STD_LOGIC_VECTOR(511 DOWNTO 0);
      dma0_m_axis_h2c_dpar : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_m_axis_h2c_tuser_err : OUT STD_LOGIC;
      dma0_m_axis_h2c_tuser_mty : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      dma0_m_axis_h2c_tuser_qid : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
      dma0_m_axis_h2c_tuser_mdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      dma0_m_axis_h2c_tuser_port_id : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      dma0_m_axis_h2c_tuser_zero_byte : OUT STD_LOGIC;
      dma0_m_axis_h2c_tlast : OUT STD_LOGIC;
      dma0_m_axis_h2c_tvalid : OUT STD_LOGIC;
      dma0_m_axis_h2c_tready : IN STD_LOGIC;
      dma0_h2c_byp_out_cidx : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      dma0_h2c_byp_out_dsc : OUT STD_LOGIC_VECTOR(255 DOWNTO 0);
      dma0_h2c_byp_out_dsc_sz : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      dma0_h2c_byp_out_error : OUT STD_LOGIC;
      dma0_h2c_byp_out_func : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      dma0_h2c_byp_out_mrkr_rsp : OUT STD_LOGIC;
      dma0_h2c_byp_out_port_id : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      dma0_h2c_byp_out_qid : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
      dma0_h2c_byp_out_rdy : IN STD_LOGIC;
      dma0_h2c_byp_out_st_mm : OUT STD_LOGIC;
      dma0_h2c_byp_out_vld : OUT STD_LOGIC;
      dma0_c2h_byp_out_cidx : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      dma0_c2h_byp_out_dsc : OUT STD_LOGIC_VECTOR(255 DOWNTO 0);
      dma0_c2h_byp_out_dsc_sz : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      dma0_c2h_byp_out_error : OUT STD_LOGIC;
      dma0_c2h_byp_out_func : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      dma0_c2h_byp_out_mrkr_rsp : OUT STD_LOGIC;
      dma0_c2h_byp_out_port_id : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      dma0_c2h_byp_out_qid : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
      dma0_c2h_byp_out_rdy : IN STD_LOGIC;
      dma0_c2h_byp_out_st_mm : OUT STD_LOGIC;
      dma0_c2h_byp_out_vld : OUT STD_LOGIC;
      dma0_h2c_byp_in_mm_cidx : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      dma0_h2c_byp_in_mm_error : IN STD_LOGIC;
      dma0_h2c_byp_in_mm_func : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      dma0_h2c_byp_in_mm_len : IN STD_LOGIC_VECTOR(27 DOWNTO 0);
      dma0_h2c_byp_in_mm_mrkr_req : IN STD_LOGIC;
      dma0_h2c_byp_in_mm_port_id : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      dma0_h2c_byp_in_mm_qid : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
      dma0_h2c_byp_in_mm_radr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_h2c_byp_in_mm_rdy : OUT STD_LOGIC;
      dma0_h2c_byp_in_mm_sdi : IN STD_LOGIC;
      dma0_h2c_byp_in_mm_vld : IN STD_LOGIC;
      dma0_h2c_byp_in_mm_wadr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_h2c_byp_in_st_addr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_h2c_byp_in_st_cidx : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      dma0_h2c_byp_in_st_eop : IN STD_LOGIC;
      dma0_h2c_byp_in_st_error : IN STD_LOGIC;
      dma0_h2c_byp_in_st_func : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      dma0_h2c_byp_in_st_len : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      dma0_h2c_byp_in_st_mrkr_req : IN STD_LOGIC;
      dma0_h2c_byp_in_st_no_dma : IN STD_LOGIC;
      dma0_h2c_byp_in_st_port_id : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      dma0_h2c_byp_in_st_qid : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
      dma0_h2c_byp_in_st_rdy : OUT STD_LOGIC;
      dma0_h2c_byp_in_st_sdi : IN STD_LOGIC;
      dma0_h2c_byp_in_st_sop : IN STD_LOGIC;
      dma0_h2c_byp_in_st_vld : IN STD_LOGIC;
      dma0_c2h_byp_in_mm_cidx : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      dma0_c2h_byp_in_mm_error : IN STD_LOGIC;
      dma0_c2h_byp_in_mm_func : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      dma0_c2h_byp_in_mm_len : IN STD_LOGIC_VECTOR(27 DOWNTO 0);
      dma0_c2h_byp_in_mm_mrkr_req : IN STD_LOGIC;
      dma0_c2h_byp_in_mm_port_id : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      dma0_c2h_byp_in_mm_qid : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
      dma0_c2h_byp_in_mm_radr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_c2h_byp_in_mm_rdy : OUT STD_LOGIC;
      dma0_c2h_byp_in_mm_sdi : IN STD_LOGIC;
      dma0_c2h_byp_in_mm_vld : IN STD_LOGIC;
      dma0_c2h_byp_in_mm_wadr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_c2h_byp_in_st_sim_addr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_c2h_byp_in_st_sim_error : IN STD_LOGIC;
      dma0_c2h_byp_in_st_sim_func : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      dma0_c2h_byp_in_st_sim_port_id : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      dma0_c2h_byp_in_st_sim_qid : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
      dma0_c2h_byp_in_st_sim_rdy : OUT STD_LOGIC;
      dma0_c2h_byp_in_st_sim_vld : IN STD_LOGIC;
      dma0_c2h_byp_in_st_csh_addr : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dma0_c2h_byp_in_st_csh_error : IN STD_LOGIC;
      dma0_c2h_byp_in_st_csh_func : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      dma0_c2h_byp_in_st_csh_port_id : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      dma0_c2h_byp_in_st_csh_qid : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
      dma0_c2h_byp_in_st_csh_rdy : OUT STD_LOGIC;
      dma0_c2h_byp_in_st_csh_vld : IN STD_LOGIC;
      dma0_tm_dsc_sts_vld : OUT STD_LOGIC;
      dma0_tm_dsc_sts_qen : OUT STD_LOGIC;
      dma0_tm_dsc_sts_port_id : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      dma0_tm_dsc_sts_err : OUT STD_LOGIC;
      dma0_tm_dsc_sts_byp : OUT STD_LOGIC;
      dma0_tm_dsc_sts_dir : OUT STD_LOGIC;
      dma0_tm_dsc_sts_mm : OUT STD_LOGIC;
      dma0_tm_dsc_sts_qid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      dma0_tm_dsc_sts_avl : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      dma0_tm_dsc_sts_qinv : OUT STD_LOGIC;
      dma0_tm_dsc_sts_irq_arm : OUT STD_LOGIC;
      dma0_tm_dsc_sts_rdy : IN STD_LOGIC;
      dma0_dsc_crdt_in_vld : IN STD_LOGIC;
      dma0_dsc_crdt_in_rdy : OUT STD_LOGIC;
      dma0_dsc_crdt_in_sel : IN STD_LOGIC;
      dma0_dsc_crdt_in_qid : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
      dma0_dsc_crdt_in_crdt : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      dma0_usr_irq_vld : IN STD_LOGIC;
      dma0_usr_irq_vec : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      dma0_usr_irq_fnc : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      dma0_usr_irq_ack : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      dma0_usr_irq_fail : OUT STD_LOGIC;
      dma0_axis_c2h_status_valid : OUT STD_LOGIC;
      dma0_axis_c2h_status_drop : OUT STD_LOGIC;
      dma0_axis_c2h_status_qid : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
      pcie0_m_axis_dbg_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      pcie0_m_axis_dbg_tlast : OUT STD_LOGIC;
      pcie0_m_axis_dbg_tready : IN STD_LOGIC;
      pcie0_m_axis_dbg_tvalid : OUT STD_LOGIC;
      pcie1_m_axis_dbg_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      pcie1_m_axis_dbg_tlast : OUT STD_LOGIC;
      pcie1_m_axis_dbg_tready : IN STD_LOGIC;
      pcie1_m_axis_dbg_tvalid : OUT STD_LOGIC;
      pcie0_s_axis_dbg_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      pcie0_s_axis_dbg_tlast : IN STD_LOGIC;
      pcie0_s_axis_dbg_tready : OUT STD_LOGIC;
      pcie0_s_axis_dbg_tvalid : IN STD_LOGIC;
      pcie1_s_axis_dbg_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      pcie1_s_axis_dbg_tlast : IN STD_LOGIC;
      pcie1_s_axis_dbg_tready : OUT STD_LOGIC;
      pcie1_s_axis_dbg_tvalid : IN STD_LOGIC;
      pcie0_dbg_aclk : IN STD_LOGIC;
      pcie1_dbg_aclk : IN STD_LOGIC;
      pcie0_dbg_aresetn : IN STD_LOGIC;
      pcie1_dbg_aresetn : IN STD_LOGIC;
      mio_pl_18 : OUT STD_LOGIC;
      mio_pl_19 : OUT STD_LOGIC;
      mio_pl_24 : OUT STD_LOGIC;
      mio_pl_25 : OUT STD_LOGIC;
      mio_pl_38 : OUT STD_LOGIC;
      mio_pl_39 : OUT STD_LOGIC
    );
  END COMPONENT versal_cips_v2_1_3_versal_cips;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_versal_cips_0_0_arch: ARCHITECTURE IS "versal_cips_v2_1_3_versal_cips,Vivado 2020.3";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_versal_cips_0_0_arch : ARCHITECTURE IS "design_1_versal_cips_0_0,versal_cips_v2_1_3_versal_cips,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF design_1_versal_cips_0_0_arch: ARCHITECTURE IS "design_1_versal_cips_0_0,versal_cips_v2_1_3_versal_cips,{x_ipProduct=Vivado 2020.3,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=versal_cips,x_ipVersion=2.1,x_ipCoreRevision=3,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_M_AXI_GP0_DATA_WIDTH=128,C_M_AXI_GP2_DATA_WIDTH=128,C_DIFF_RW_CLK_S_AXI_GP0=0,C_DIFF_RW_CLK_S_AXI_GP2=0,C_DIFF_RW_CLK_S_AXI_GP4=0,C_S_AXI_GP0_DATA_WIDTH=128,C_S_AXI_GP2_DATA_WIDTH=128,C_S_AXI_GP4_DATA_WIDTH=128,C_S_AXI_ACP_DATA_WIDTH=128,C_S_AXI_ACE_DATA_WIDTH=128,C_PS_NOC_CCI_DATA" & 
"_WIDTH=128,C_PS_NOC_NCI_DATA_WIDTH=128,C_NOC_PS_CCI_DATA_WIDTH=128,C_PS_NOC_PCI_DATA_WIDTH=128,C_NOC_PS_PCI_DATA_WIDTH=128,C_PS_NOC_PMC_DATA_WIDTH=128,C_NOC_PS_PMC_DATA_WIDTH=128,C_PS_NOC_RPU_DATA_WIDTH=128,C_PS_EMIO_GPIO_WIDTH=32,C_PMC_EMIO_GPIO_WIDTH=64,C_PMC_NOC_ADDR_WIDTH=64,C_PMC_NOC_DATA_WIDTH=128,C_NOC_PMC_ADDR_WIDTH=64,C_NOC_PMC_DATA_WIDTH=128,C_XDEVICE=xcvc1802,C_SIM_DEVICE=VERSAL_AI_CORE,C_SPP_PSPMC_TO_CORE_WIDTH=12000,C_SPP_PSPMC_FROM_CORE_WIDTH=12000,C_NUM_F2P0_INTR_INPUTS=1,C_NUM_F2" & 
"P1_INTR_INPUTS=1,C_PMCPL_CLK0_BUF=1,C_PMCPL_CLK1_BUF=1,C_PMCPL_CLK2_BUF=1,C_PMCPL_CLK3_BUF=1,C_PMCPL_IRO_CLK_BUF=1,C_ACE_LITE=0,C_AXI4_EXT_USER_BITS=0,C_SUBCORE_NAME=versal_cips_v2_1_gt_quad_base,C_CORE_NAME=versal_cips_v2_1,C_SD0_DATA_WIDTH=4,C_SD1_DATA_WIDTH=8,C_PS_TRACE_WIDTH=32,C_VIP_SUBCORE_NAME=versal_cips_ps_vip,C_PS_HSDP_INGRESS_TRAFFIC=JTAG,C_CPM_PERIPHERAL_EN=1,C_CPM_PCIE0_CONTROLLER_ENABLE=1,C_CPM_PCIE1_CONTROLLER_ENABLE=1,C_CPM_PCIE0_USER_CLK_FREQ=250_MHz,C_CPM_PCIE1_USER_CLK_FREQ=25" & 
"0_MHz,C_PS_ENABLE_HSDP=0,C_PS_HSDP_MODE=NONE,C_CPM_USE_MODES=4,C_CPM_PCIE0_PL_LINK_CAP_MAX_LINK_WIDTH=8,C_CPM_PCIE1_PL_LINK_CAP_MAX_LINK_WIDTH=8,C_CPM_PCIE0_AXISTEN_IF_WIDTH=512,C_CPM_PCIE1_AXISTEN_IF_WIDTH=512,C_CPM_PCIE0_MODES=DMA,C_CPM_PCIE1_MODES=PCIE,C_CPM_PCIE0_TL_PF_ENABLE_REG=1,C_CPM_PCIE0_PF0_SRIOV_CAP_TOTAL_VF=0,C_CPM_PCIE0_PF1_SRIOV_CAP_TOTAL_VF=0,C_CPM_PCIE0_PF2_SRIOV_CAP_TOTAL_VF=0,C_CPM_PCIE0_PF3_SRIOV_CAP_TOTAL_VF=0,C_CPM_PCIE0_PF0_SRIOV_FIRST_VF_OFFSET=4,C_CPM_PCIE0_PF1_SRIOV_FIR" & 
"ST_VF_OFFSET=7,C_CPM_PCIE0_PF2_SRIOV_FIRST_VF_OFFSET=10,C_CPM_PCIE0_PF3_SRIOV_FIRST_VF_OFFSET=13,C_CPM_PCIE0_SRIOV_CAP_ENABLE=0,C_CPM_PCIE1_SRIOV_CAP_ENABLE=0,C_CPM_PCIE0_ARI_CAP_ENABLE=1,C_CPM_PCIE1_ARI_CAP_ENABLE=1,C_CPM_PCIE0_PF0_PRI_CAP_ON=0,C_CPM_PCIE0_PF1_PRI_CAP_ON=0,C_CPM_PCIE0_PF2_PRI_CAP_ON=0,C_CPM_PCIE0_PF3_PRI_CAP_ON=0,C_CPM_PCIE0_PF0_ATS_CAP_ON=0,C_CPM_PCIE0_PF1_ATS_CAP_ON=0,C_CPM_PCIE0_PF2_ATS_CAP_ON=0,C_CPM_PCIE0_PF3_ATS_CAP_ON=0,C_CPM_PCIE0_VFG0_ATS_CAP_ON=0,C_CPM_PCIE0_VFG1_ATS_" & 
"CAP_ON=0,C_CPM_PCIE0_VFG2_ATS_CAP_ON=0,C_CPM_PCIE0_VFG3_ATS_CAP_ON=0,C_CPM_PCIE0_VFG0_PRI_CAP_ON=0,C_CPM_PCIE0_VFG1_PRI_CAP_ON=0,C_CPM_PCIE0_VFG2_PRI_CAP_ON=0,C_CPM_PCIE0_VFG3_PRI_CAP_ON=0,C_CPM_PCIE0_AXIS_CC_TUSER_WIDTH=81,C_CPM_PCIE1_AXIS_CC_TUSER_WIDTH=81,C_CPM_PCIE0_AXIS_RC_TUSER_WIDTH=161,C_CPM_PCIE1_AXIS_RC_TUSER_WIDTH=161,C_CPM_PCIE0_AXIS_RQ_TUSER_WIDTH=179,C_CPM_PCIE1_AXIS_RQ_TUSER_WIDTH=179,C_CPM_PCIE0_AXIS_CQ_TUSER_WIDTH=183,C_CPM_PCIE1_AXIS_CQ_TUSER_WIDTH=183,C_CPM_PCIE0_PF0_PASID_CAP" & 
"_ON=0,C_CPM_PCIE0_PL_UPSTREAM_FACING=1,C_CPM_PCIE0_FUNCTIONAL_MODE=DMA,C_CPM_PCIE1_TL_PF_ENABLE_REG=1,C_CPM_PCIE1_PF0_SRIOV_CAP_TOTAL_VF=0,C_CPM_PCIE1_PF1_SRIOV_CAP_TOTAL_VF=0,C_CPM_PCIE1_PF2_SRIOV_CAP_TOTAL_VF=0,C_CPM_PCIE1_PF3_SRIOV_CAP_TOTAL_VF=0,C_CPM_PCIE1_PF0_SRIOV_FIRST_VF_OFFSET=4,C_CPM_PCIE1_PF1_SRIOV_FIRST_VF_OFFSET=4,C_CPM_PCIE1_PF2_SRIOV_FIRST_VF_OFFSET=4,C_CPM_PCIE1_PF3_SRIOV_FIRST_VF_OFFSET=4,C_CPM_PCIE0_LINK_WIDTH_FOR_POWER=8,C_CPM_PCIE1_LINK_WIDTH_FOR_POWER=8,C_CPM_PCIE_CHANNELS_" & 
"FOR_POWER=2,C_CPM_PCIE0_MODE_FOR_POWER=CPM_STREAM_W_DMA,C_CPM_PCIE1_MODE_FOR_POWER=CPM_STREAM,C_CPM_PCIE0_LINK_SPEED_FOR_POWER=GEN4,C_CPM_PCIE1_LINK_SPEED_FOR_POWER=GEN4,C_CPM_PCIE1_PF0_PRI_CAP_ON=0,C_CPM_PCIE1_PF1_PRI_CAP_ON=0,C_CPM_PCIE1_PF2_PRI_CAP_ON=0,C_CPM_PCIE1_PF3_PRI_CAP_ON=0,C_CPM_PCIE1_PF0_ATS_CAP_ON=0,C_CPM_PCIE1_PF1_ATS_CAP_ON=0,C_CPM_PCIE1_PF2_ATS_CAP_ON=0,C_CPM_PCIE1_PF3_ATS_CAP_ON=0,C_CPM_PCIE1_VFG0_ATS_CAP_ON=0,C_CPM_PCIE1_VFG1_ATS_CAP_ON=0,C_CPM_PCIE1_VFG2_ATS_CAP_ON=0,C_CPM_PC" & 
"IE1_VFG3_ATS_CAP_ON=0,C_CPM_PCIE1_VFG0_PRI_CAP_ON=0,C_CPM_PCIE1_VFG1_PRI_CAP_ON=0,C_CPM_PCIE1_VFG2_PRI_CAP_ON=0,C_CPM_PCIE1_VFG3_PRI_CAP_ON=0,C_CPM_PCIE1_PF0_PASID_CAP_ON=0,C_CPM_PCIE1_PL_UPSTREAM_FACING=1,C_XPIPE_0_CLKDLY_CFG=268485632,C_XPIPE_0_CLK_CFG=348164,C_XPIPE_0_INSTANTIATED=1,C_XPIPE_0_LINK0_CFG=X8,C_XPIPE_0_LINK1_CFG=X8,C_XPIPE_0_LOC=QUAD0,C_XPIPE_0_MODE=1,C_XPIPE_0_REG_CFG=8146,C_XPIPE_0_RSVD=0,C_XPIPE_1_CLKDLY_CFG=33557632,C_XPIPE_1_CLK_CFG=1004804,C_XPIPE_1_INSTANTIATED=1,C_XPIPE_1" & 
"_LINK0_CFG=X8,C_XPIPE_1_LINK1_CFG=X8,C_XPIPE_1_LOC=QUAD1,C_XPIPE_1_MODE=1,C_XPIPE_1_REG_CFG=8137,C_XPIPE_1_RSVD=0,C_XPIPE_2_CLKDLY_CFG=318767234,C_XPIPE_2_CLK_CFG=1045840,C_XPIPE_2_INSTANTIATED=1,C_XPIPE_2_LINK0_CFG=X8,C_XPIPE_2_LINK1_CFG=X8,C_XPIPE_2_LOC=QUAD2,C_XPIPE_2_MODE=1,C_XPIPE_2_REG_CFG=8146,C_XPIPE_2_RSVD=0,C_XPIPE_3_CLKDLY_CFG=16777218,C_XPIPE_3_CLK_CFG=1048400,C_XPIPE_3_INSTANTIATED=1,C_XPIPE_3_LINK0_CFG=X8,C_XPIPE_3_LINK1_CFG=X8,C_XPIPE_3_LOC=QUAD3,C_XPIPE_3_MODE=1,C_XPIPE_3_REG_CFG" & 
"=8137,C_XPIPE_3_RSVD=0,C_CPM_PCIE0_NUM_USR_IRQ=1,C_CPM_PCIE0_PF0_MSI_ENABLED=0,C_CPM_PCIE1_PF0_MSI_ENABLED=1}";
  ATTRIBUTE DONT_TOUCH : STRING;
  ATTRIBUTE DONT_TOUCH OF design_1_versal_cips_0_0_arch : ARCHITECTURE IS "TRUE";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF dma0_st_rx_msg_last: SIGNAL IS "xilinx.com:interface:axis:1.0 dma0_st_rx_msg TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF dma0_st_rx_msg_valid: SIGNAL IS "xilinx.com:interface:axis:1.0 dma0_st_rx_msg TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF dma0_st_rx_msg_data: SIGNAL IS "xilinx.com:interface:axis:1.0 dma0_st_rx_msg TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF dma0_st_rx_msg_rdy: SIGNAL IS "XIL_INTERFACENAME dma0_st_rx_msg, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_pcie0_user_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF dma0_st_rx_msg_rdy: SIGNAL IS "xilinx.com:interface:axis:1.0 dma0_st_rx_msg TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF gt_refclk1_p: SIGNAL IS "xilinx.com:interface:diff_clock:1.0 gt_refclk1 CLK_P";
  ATTRIBUTE X_INTERFACE_PARAMETER OF gt_refclk1_n: SIGNAL IS "XIL_INTERFACENAME gt_refclk1, CAN_DEBUG false, FREQ_HZ 100000000";
  ATTRIBUTE X_INTERFACE_INFO OF gt_refclk1_n: SIGNAL IS "xilinx.com:interface:diff_clock:1.0 gt_refclk1 CLK_N";
  ATTRIBUTE X_INTERFACE_INFO OF gt_refclk0_p: SIGNAL IS "xilinx.com:interface:diff_clock:1.0 gt_refclk0 CLK_P";
  ATTRIBUTE X_INTERFACE_PARAMETER OF gt_refclk0_n: SIGNAL IS "XIL_INTERFACENAME gt_refclk0, CAN_DEBUG false, FREQ_HZ 100000000";
  ATTRIBUTE X_INTERFACE_INFO OF gt_refclk0_n: SIGNAL IS "xilinx.com:interface:diff_clock:1.0 gt_refclk0 CLK_N";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_gt_txp: SIGNAL IS "xilinx.com:interface:gt:1.0 PCIE1_GT GTX_P";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_gt_txn: SIGNAL IS "xilinx.com:interface:gt:1.0 PCIE1_GT GTX_N";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_gt_rxp: SIGNAL IS "xilinx.com:interface:gt:1.0 PCIE1_GT GRX_P";
  ATTRIBUTE X_INTERFACE_PARAMETER OF pcie1_gt_rxn: SIGNAL IS "XIL_INTERFACENAME PCIE1_GT, CAN_DEBUG false";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_gt_rxn: SIGNAL IS "xilinx.com:interface:gt:1.0 PCIE1_GT GRX_N";
  ATTRIBUTE X_INTERFACE_INFO OF pcie0_gt_txp: SIGNAL IS "xilinx.com:interface:gt:1.0 PCIE0_GT GTX_P";
  ATTRIBUTE X_INTERFACE_INFO OF pcie0_gt_txn: SIGNAL IS "xilinx.com:interface:gt:1.0 PCIE0_GT GTX_N";
  ATTRIBUTE X_INTERFACE_INFO OF pcie0_gt_rxp: SIGNAL IS "xilinx.com:interface:gt:1.0 PCIE0_GT GRX_P";
  ATTRIBUTE X_INTERFACE_PARAMETER OF pcie0_gt_rxn: SIGNAL IS "XIL_INTERFACENAME PCIE0_GT, CAN_DEBUG false";
  ATTRIBUTE X_INTERFACE_INFO OF pcie0_gt_rxn: SIGNAL IS "xilinx.com:interface:gt:1.0 PCIE0_GT GRX_N";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_cfg_msi_tph_type: SIGNAL IS "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi tph_type";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_cfg_msi_tph_st_tag: SIGNAL IS "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi tph_st_tag";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_cfg_msi_tph_present: SIGNAL IS "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi tph_present";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_cfg_msi_select: SIGNAL IS "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi select";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_cfg_msi_pending_status_function_number: SIGNAL IS "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi pending_status_function_num";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_cfg_msi_pending_status_data_enable: SIGNAL IS "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi pending_status_data_enable";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_cfg_msi_pending_status: SIGNAL IS "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi pending_status";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_cfg_msi_int_vector: SIGNAL IS "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi int_vector";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_cfg_msi_function_number: SIGNAL IS "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi function_number";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_cfg_msi_attr: SIGNAL IS "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi attr";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_cfg_msi_data: SIGNAL IS "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi data";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_cfg_msi_mmenable: SIGNAL IS "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi mmenable";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_cfg_msi_enable: SIGNAL IS "xilinx.com:interface:pcie3_cfg_msi:1.0 pcie1_cfg_msi enable";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_cfg_interrupt_pending: SIGNAL IS "xilinx.com:interface:pcie3_cfg_interrupt:1.0 pcie1_cfg_interrupt PENDING";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_cfg_interrupt_sent: SIGNAL IS "xilinx.com:interface:pcie3_cfg_interrupt:1.0 pcie1_cfg_interrupt SENT";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_cfg_interrupt_int: SIGNAL IS "xilinx.com:interface:pcie3_cfg_interrupt:1.0 pcie1_cfg_interrupt INTx_VECTOR";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_m_axis_cq_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 pcie1_m_axis_cq TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_m_axis_cq_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 pcie1_m_axis_cq TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_m_axis_cq_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 pcie1_m_axis_cq TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_m_axis_cq_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 pcie1_m_axis_cq TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_m_axis_cq_tkeep: SIGNAL IS "xilinx.com:interface:axis:1.0 pcie1_m_axis_cq TKEEP";
  ATTRIBUTE X_INTERFACE_PARAMETER OF pcie1_m_axis_cq_tdata: SIGNAL IS "XIL_INTERFACENAME pcie1_m_axis_cq, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 183, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_pcie1_user_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_m_axis_cq_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 pcie1_m_axis_cq TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_m_axis_rc_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 pcie1_m_axis_rc TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_m_axis_rc_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 pcie1_m_axis_rc TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_m_axis_rc_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 pcie1_m_axis_rc TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_m_axis_rc_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 pcie1_m_axis_rc TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_m_axis_rc_tkeep: SIGNAL IS "xilinx.com:interface:axis:1.0 pcie1_m_axis_rc TKEEP";
  ATTRIBUTE X_INTERFACE_PARAMETER OF pcie1_m_axis_rc_tdata: SIGNAL IS "XIL_INTERFACENAME pcie1_m_axis_rc, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 161, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_pcie1_user_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_m_axis_rc_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 pcie1_m_axis_rc TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_s_axis_cc_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 pcie1_s_axis_cc TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_s_axis_cc_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 pcie1_s_axis_cc TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_s_axis_cc_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 pcie1_s_axis_cc TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_s_axis_cc_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 pcie1_s_axis_cc TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_s_axis_cc_tkeep: SIGNAL IS "xilinx.com:interface:axis:1.0 pcie1_s_axis_cc TKEEP";
  ATTRIBUTE X_INTERFACE_PARAMETER OF pcie1_s_axis_cc_tdata: SIGNAL IS "XIL_INTERFACENAME pcie1_s_axis_cc, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 81, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_pcie1_user_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_s_axis_cc_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 pcie1_s_axis_cc TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_s_axis_rq_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 pcie1_s_axis_rq TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_s_axis_rq_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 pcie1_s_axis_rq TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_s_axis_rq_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 pcie1_s_axis_rq TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_s_axis_rq_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 pcie1_s_axis_rq TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_s_axis_rq_tkeep: SIGNAL IS "xilinx.com:interface:axis:1.0 pcie1_s_axis_rq TKEEP";
  ATTRIBUTE X_INTERFACE_PARAMETER OF pcie1_s_axis_rq_tdata: SIGNAL IS "XIL_INTERFACENAME pcie1_s_axis_rq, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 179, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_pcie1_user_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_s_axis_rq_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 pcie1_s_axis_rq TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF dma0_irq: SIGNAL IS "XIL_INTERFACENAME INTERRUPT.dma0_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF dma0_irq: SIGNAL IS "xilinx.com:signal:interrupt:1.0 INTERRUPT.dma0_irq INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF cpm_uncor_irq: SIGNAL IS "XIL_INTERFACENAME INTERRUPT.cpm_uncor_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_uncor_irq: SIGNAL IS "xilinx.com:signal:interrupt:1.0 INTERRUPT.cpm_uncor_irq INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF cpm_misc_irq: SIGNAL IS "XIL_INTERFACENAME INTERRUPT.cpm_misc_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_misc_irq: SIGNAL IS "xilinx.com:signal:interrupt:1.0 INTERRUPT.cpm_misc_irq INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF cpm_irq1: SIGNAL IS "XIL_INTERFACENAME INTERRUPT.cpm_irq1, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_irq1: SIGNAL IS "xilinx.com:signal:interrupt:1.0 INTERRUPT.cpm_irq1 INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF cpm_irq0: SIGNAL IS "XIL_INTERFACENAME INTERRUPT.cpm_irq0, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_irq0: SIGNAL IS "xilinx.com:signal:interrupt:1.0 INTERRUPT.cpm_irq0 INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF cpm_cor_irq: SIGNAL IS "XIL_INTERFACENAME INTERRUPT.cpm_cor_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_cor_irq: SIGNAL IS "xilinx.com:signal:interrupt:1.0 INTERRUPT.cpm_cor_irq INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF dma0_soft_resetn: SIGNAL IS "XIL_INTERFACENAME RST.dma0_soft_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF dma0_soft_resetn: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.dma0_soft_resetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF dma0_axi_aresetn: SIGNAL IS "XIL_INTERFACENAME RST.dma0_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF dma0_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.dma0_axi_aresetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF pcie1_user_clk: SIGNAL IS "XIL_INTERFACENAME CLK.pcie1_user_clk, ASSOCIATED_BUSIF pcie1_s_axis_rq:pcie1_s_axis_cc:pcie1_m_axis_cq:pcie1_m_axis_rc, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_pcie1_user_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF pcie1_user_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.pcie1_user_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF pcie0_user_clk: SIGNAL IS "XIL_INTERFACENAME CLK.pcie0_user_clk, ASSOCIATED_BUSIF pcie0_s_axis_rq:pcie0_s_axis_cc:pcie0_m_axis_cq:pcie0_m_axis_rc:dma0_s_axis_c2h:dma0_m_axis_h2c:dma0_s_axis_c2h_0:dma0_m_axis_h2c_0:dma0_s_axis_c2h_1:dma0_m_axis_h2c_1:dma0_s_axis_c2h_2:dma0_m_axis_h2c_2:dma0_s_axis_c2h_3:dma0_m_axis_h2c_3:dma0_st_rx_msg, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_pcie0_user_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF pcie0_user_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.pcie0_user_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_ruser: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RUSER";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RID";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_buser: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 BUSER";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_bid: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 BID";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF pmc_axi_noc_axi0_clk: SIGNAL IS "XIL_INTERFACENAME pmc_axi_noc_axi0_clk, PHYSICAL_CHANNEL PS_PMC_TO_NOC_NMU, ASSOCIATED_BUSIF PMC_NOC_AXI_0, FREQ_HZ 400000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_pmc_axi_noc_axi0_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_axi_noc_axi0_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 pmc_axi_noc_axi0_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_wuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WUSER";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_wid: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WID";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_awuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWUSER";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_awregion: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWID";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_aruser: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARUSER";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_arregion: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARID";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARBURST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF pmc_noc_axi0_araddr: SIGNAL IS "XIL_INTERFACENAME PMC_NOC_AXI_0, PHYSICAL_CHANNEL PS_PMC_TO_NOC_NMU, INDEX 0, CATEGORY noc, MY_CATEGORY ps_pmc, HD_TANDEM 0, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 400000000, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 17, RUSER_WIDTH 17, BUSER_WIDTH 16, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 6" & 
"4, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_pmc_axi_noc_axi0_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF pmc_noc_axi0_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 PMC_NOC_AXI_0 ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 RID";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_aruser: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 ARUSER";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 ARID";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_bid: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 BID";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_awuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 AWUSER";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF noc_lpd_axi_axi0_awid: SIGNAL IS "XIL_INTERFACENAME NOC_LPD_AXI_0, PHYSICAL_CHANNEL PS_RPU_TO_NOC_NMU, INDEX 0, CATEGORY noc, MY_CATEGORY ps_rpu, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 599994019, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 64, MAX_BURST_LEN" & 
"GTH 256, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_lpd_axi_noc_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF noc_lpd_axi_axi0_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 NOC_LPD_AXI_0 AWID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF lpd_axi_noc_clk: SIGNAL IS "XIL_INTERFACENAME lpd_axi_noc_clk, PHYSICAL_CHANNEL PS_RPU_TO_NOC_NMU, ASSOCIATED_BUSIF NOC_LPD_AXI_0, FREQ_HZ 599994019, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_lpd_axi_noc_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF lpd_axi_noc_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 lpd_axi_noc_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 RID";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_aruser: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARUSER";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 ARID";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_bid: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 BID";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_awuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWUSER";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF cpm_pcie_noc_axi1_awid: SIGNAL IS "XIL_INTERFACENAME CPM_PCIE_NOC_1, PHYSICAL_CHANNEL PS_PCIE_TO_NOC_NMU, INDEX 1, CATEGORY noc, MY_CATEGORY ps_pcie, HD_TANDEM 0, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 824991760, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 6" & 
"4, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_cpm_pcie_noc_axi1_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_1 AWID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF cpm_pcie_noc_axi1_clk: SIGNAL IS "XIL_INTERFACENAME cpm_pcie_noc_axi1_clk, PHYSICAL_CHANNEL PS_PCIE_TO_NOC_NMU, ASSOCIATED_BUSIF CPM_PCIE_NOC_1, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_cpm_pcie_noc_axi1_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi1_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 cpm_pcie_noc_axi1_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 RID";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_aruser: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARUSER";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 ARID";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_bid: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 BID";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_awuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWUSER";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF cpm_pcie_noc_axi0_awid: SIGNAL IS "XIL_INTERFACENAME CPM_PCIE_NOC_0, PHYSICAL_CHANNEL PS_PCIE_TO_NOC_NMU, INDEX 0, CATEGORY noc, MY_CATEGORY ps_pcie, HD_TANDEM 0, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 824991760, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 6" & 
"4, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_cpm_pcie_noc_axi0_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 CPM_PCIE_NOC_0 AWID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF cpm_pcie_noc_axi0_clk: SIGNAL IS "XIL_INTERFACENAME cpm_pcie_noc_axi0_clk, PHYSICAL_CHANNEL PS_PCIE_TO_NOC_NMU, ASSOCIATED_BUSIF CPM_PCIE_NOC_0, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_cpm_pcie_noc_axi0_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF cpm_pcie_noc_axi0_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 cpm_pcie_noc_axi0_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 RID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_aruser: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARUSER";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 ARID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_bid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 BID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_awuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWUSER";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF fpd_axi_noc_axi0_awid: SIGNAL IS "XIL_INTERFACENAME FPD_AXI_NOC_0, PHYSICAL_CHANNEL PS_NCI_TO_NOC_NMU, INDEX 0, CATEGORY noc, MY_CATEGORY ps_nci, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 824991760, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 64, MAX_BURST_LEN" & 
"GTH 256, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_fpd_axi_noc_axi0_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_AXI_NOC_0 AWID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF fpd_axi_noc_axi0_clk: SIGNAL IS "XIL_INTERFACENAME fpd_axi_noc_axi0_clk, PHYSICAL_CHANNEL PS_NCI_TO_NOC_NMU, ASSOCIATED_BUSIF FPD_AXI_NOC_0, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_fpd_axi_noc_axi0_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_axi_noc_axi0_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 fpd_axi_noc_axi0_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 RID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_aruser: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARUSER";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 ARID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_bid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 BID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_wuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 WUSER";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_awuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWUSER";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF fpd_cci_noc_axi3_awid: SIGNAL IS "XIL_INTERFACENAME FPD_CCI_NOC_3, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU, INDEX 3, CATEGORY noc, MY_CATEGORY ps_cci, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 824991760, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 17, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 64, MAX_BURST_LE" & 
"NGTH 256, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_fpd_cci_noc_axi3_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_3 AWID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF fpd_cci_noc_axi3_clk: SIGNAL IS "XIL_INTERFACENAME fpd_cci_noc_axi3_clk, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU, ASSOCIATED_BUSIF FPD_CCI_NOC_3, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_fpd_cci_noc_axi3_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi3_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 fpd_cci_noc_axi3_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 RID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_aruser: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARUSER";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 ARID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_bid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 BID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_wuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 WUSER";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_awuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWUSER";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF fpd_cci_noc_axi2_awid: SIGNAL IS "XIL_INTERFACENAME FPD_CCI_NOC_2, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU, INDEX 2, CATEGORY noc, MY_CATEGORY ps_cci, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 824991760, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 17, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 64, MAX_BURST_LE" & 
"NGTH 256, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_fpd_cci_noc_axi2_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_2 AWID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF fpd_cci_noc_axi2_clk: SIGNAL IS "XIL_INTERFACENAME fpd_cci_noc_axi2_clk, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU, ASSOCIATED_BUSIF FPD_CCI_NOC_2, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_fpd_cci_noc_axi2_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi2_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 fpd_cci_noc_axi2_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 RID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_aruser: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARUSER";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 ARID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_bid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 BID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_wuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 WUSER";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_awuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWUSER";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF fpd_cci_noc_axi1_awid: SIGNAL IS "XIL_INTERFACENAME FPD_CCI_NOC_1, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU, INDEX 1, CATEGORY noc, MY_CATEGORY ps_cci, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 824991760, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 17, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 64, MAX_BURST_LE" & 
"NGTH 256, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_fpd_cci_noc_axi1_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_1 AWID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF fpd_cci_noc_axi1_clk: SIGNAL IS "XIL_INTERFACENAME fpd_cci_noc_axi1_clk, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU, ASSOCIATED_BUSIF FPD_CCI_NOC_1, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_fpd_cci_noc_axi1_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi1_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 fpd_cci_noc_axi1_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 RID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_aruser: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARUSER";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 ARID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_bid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 BID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_wuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 WUSER";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_awuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWUSER";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF fpd_cci_noc_axi0_awid: SIGNAL IS "XIL_INTERFACENAME FPD_CCI_NOC_0, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU, INDEX 0, CATEGORY noc, MY_CATEGORY ps_cci, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 824991760, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 17, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 64, MAX_BURST_LE" & 
"NGTH 256, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_fpd_cci_noc_axi0_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 FPD_CCI_NOC_0 AWID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF fpd_cci_noc_axi0_clk: SIGNAL IS "XIL_INTERFACENAME fpd_cci_noc_axi0_clk, PHYSICAL_CHANNEL PS_CCI_TO_NOC_NMU, ASSOCIATED_BUSIF FPD_CCI_NOC_0, FREQ_HZ 824991760, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_versal_cips_0_0_fpd_cci_noc_axi0_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF fpd_cci_noc_axi0_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 fpd_cci_noc_axi0_clk CLK";
BEGIN
  U0 : versal_cips_v2_1_3_versal_cips
    GENERIC MAP (
      C_M_AXI_GP0_DATA_WIDTH => 128,
      C_M_AXI_GP2_DATA_WIDTH => 128,
      C_DIFF_RW_CLK_S_AXI_GP0 => 0,
      C_DIFF_RW_CLK_S_AXI_GP2 => 0,
      C_DIFF_RW_CLK_S_AXI_GP4 => 0,
      C_S_AXI_GP0_DATA_WIDTH => 128,
      C_S_AXI_GP2_DATA_WIDTH => 128,
      C_S_AXI_GP4_DATA_WIDTH => 128,
      C_S_AXI_ACP_DATA_WIDTH => 128,
      C_S_AXI_ACE_DATA_WIDTH => 128,
      C_PS_NOC_CCI_DATA_WIDTH => 128,
      C_PS_NOC_NCI_DATA_WIDTH => 128,
      C_NOC_PS_CCI_DATA_WIDTH => 128,
      C_PS_NOC_PCI_DATA_WIDTH => 128,
      C_NOC_PS_PCI_DATA_WIDTH => 128,
      C_PS_NOC_PMC_DATA_WIDTH => 128,
      C_NOC_PS_PMC_DATA_WIDTH => 128,
      C_PS_NOC_RPU_DATA_WIDTH => 128,
      C_PS_EMIO_GPIO_WIDTH => 32,
      C_PMC_EMIO_GPIO_WIDTH => 64,
      C_PMC_NOC_ADDR_WIDTH => 64,
      C_PMC_NOC_DATA_WIDTH => 128,
      C_NOC_PMC_ADDR_WIDTH => 64,
      C_NOC_PMC_DATA_WIDTH => 128,
      C_XDEVICE => "xcvc1802",
      C_SIM_DEVICE => "VERSAL_AI_CORE",
      C_SPP_PSPMC_TO_CORE_WIDTH => 12000,
      C_SPP_PSPMC_FROM_CORE_WIDTH => 12000,
      C_NUM_F2P0_INTR_INPUTS => "1",
      C_NUM_F2P1_INTR_INPUTS => "1",
      C_PMCPL_CLK0_BUF => 1,
      C_PMCPL_CLK1_BUF => 1,
      C_PMCPL_CLK2_BUF => 1,
      C_PMCPL_CLK3_BUF => 1,
      C_PMCPL_IRO_CLK_BUF => 1,
      C_ACE_LITE => 0,
      C_AXI4_EXT_USER_BITS => 0,
      C_SUBCORE_NAME => "versal_cips_v2_1_gt_quad_base",
      C_CORE_NAME => "versal_cips_v2_1",
      C_SD0_DATA_WIDTH => 4,
      C_SD1_DATA_WIDTH => 8,
      C_PS_TRACE_WIDTH => 32,
      C_VIP_SUBCORE_NAME => "versal_cips_ps_vip",
      C_PS_HSDP_INGRESS_TRAFFIC => "JTAG",
      C_CPM_PERIPHERAL_EN => 1,
      C_CPM_PCIE0_CONTROLLER_ENABLE => 1,
      C_CPM_PCIE1_CONTROLLER_ENABLE => 1,
      C_CPM_PCIE0_USER_CLK_FREQ => "250_MHz",
      C_CPM_PCIE1_USER_CLK_FREQ => "250_MHz",
      C_PS_ENABLE_HSDP => 0,
      C_PS_HSDP_MODE => "NONE",
      C_CPM_USE_MODES => 4,
      C_CPM_PCIE0_PL_LINK_CAP_MAX_LINK_WIDTH => 8,
      C_CPM_PCIE1_PL_LINK_CAP_MAX_LINK_WIDTH => 8,
      C_CPM_PCIE0_AXISTEN_IF_WIDTH => 512,
      C_CPM_PCIE1_AXISTEN_IF_WIDTH => 512,
      C_CPM_PCIE0_MODES => "DMA",
      C_CPM_PCIE1_MODES => "PCIE",
      C_CPM_PCIE0_TL_PF_ENABLE_REG => 1,
      C_CPM_PCIE0_PF0_SRIOV_CAP_TOTAL_VF => 0,
      C_CPM_PCIE0_PF1_SRIOV_CAP_TOTAL_VF => 0,
      C_CPM_PCIE0_PF2_SRIOV_CAP_TOTAL_VF => 0,
      C_CPM_PCIE0_PF3_SRIOV_CAP_TOTAL_VF => 0,
      C_CPM_PCIE0_PF0_SRIOV_FIRST_VF_OFFSET => 4,
      C_CPM_PCIE0_PF1_SRIOV_FIRST_VF_OFFSET => 7,
      C_CPM_PCIE0_PF2_SRIOV_FIRST_VF_OFFSET => 10,
      C_CPM_PCIE0_PF3_SRIOV_FIRST_VF_OFFSET => 13,
      C_CPM_PCIE0_SRIOV_CAP_ENABLE => 0,
      C_CPM_PCIE1_SRIOV_CAP_ENABLE => 0,
      C_CPM_PCIE0_ARI_CAP_ENABLE => 1,
      C_CPM_PCIE1_ARI_CAP_ENABLE => 1,
      C_CPM_PCIE0_PF0_PRI_CAP_ON => 0,
      C_CPM_PCIE0_PF1_PRI_CAP_ON => 0,
      C_CPM_PCIE0_PF2_PRI_CAP_ON => 0,
      C_CPM_PCIE0_PF3_PRI_CAP_ON => 0,
      C_CPM_PCIE0_PF0_ATS_CAP_ON => 0,
      C_CPM_PCIE0_PF1_ATS_CAP_ON => 0,
      C_CPM_PCIE0_PF2_ATS_CAP_ON => 0,
      C_CPM_PCIE0_PF3_ATS_CAP_ON => 0,
      C_CPM_PCIE0_VFG0_ATS_CAP_ON => 0,
      C_CPM_PCIE0_VFG1_ATS_CAP_ON => 0,
      C_CPM_PCIE0_VFG2_ATS_CAP_ON => 0,
      C_CPM_PCIE0_VFG3_ATS_CAP_ON => 0,
      C_CPM_PCIE0_VFG0_PRI_CAP_ON => 0,
      C_CPM_PCIE0_VFG1_PRI_CAP_ON => 0,
      C_CPM_PCIE0_VFG2_PRI_CAP_ON => 0,
      C_CPM_PCIE0_VFG3_PRI_CAP_ON => 0,
      C_CPM_PCIE0_AXIS_CC_TUSER_WIDTH => 81,
      C_CPM_PCIE1_AXIS_CC_TUSER_WIDTH => 81,
      C_CPM_PCIE0_AXIS_RC_TUSER_WIDTH => 161,
      C_CPM_PCIE1_AXIS_RC_TUSER_WIDTH => 161,
      C_CPM_PCIE0_AXIS_RQ_TUSER_WIDTH => 179,
      C_CPM_PCIE1_AXIS_RQ_TUSER_WIDTH => 179,
      C_CPM_PCIE0_AXIS_CQ_TUSER_WIDTH => 183,
      C_CPM_PCIE1_AXIS_CQ_TUSER_WIDTH => 183,
      C_CPM_PCIE0_PF0_PASID_CAP_ON => 0,
      C_CPM_PCIE0_PL_UPSTREAM_FACING => 1,
      C_CPM_PCIE0_FUNCTIONAL_MODE => "DMA",
      C_CPM_PCIE1_TL_PF_ENABLE_REG => 1,
      C_CPM_PCIE1_PF0_SRIOV_CAP_TOTAL_VF => 0,
      C_CPM_PCIE1_PF1_SRIOV_CAP_TOTAL_VF => 0,
      C_CPM_PCIE1_PF2_SRIOV_CAP_TOTAL_VF => 0,
      C_CPM_PCIE1_PF3_SRIOV_CAP_TOTAL_VF => 0,
      C_CPM_PCIE1_PF0_SRIOV_FIRST_VF_OFFSET => 4,
      C_CPM_PCIE1_PF1_SRIOV_FIRST_VF_OFFSET => 4,
      C_CPM_PCIE1_PF2_SRIOV_FIRST_VF_OFFSET => 4,
      C_CPM_PCIE1_PF3_SRIOV_FIRST_VF_OFFSET => 4,
      C_CPM_PCIE0_LINK_WIDTH_FOR_POWER => 8,
      C_CPM_PCIE1_LINK_WIDTH_FOR_POWER => 8,
      C_CPM_PCIE_CHANNELS_FOR_POWER => 2,
      C_CPM_PCIE0_MODE_FOR_POWER => "CPM_STREAM_W_DMA",
      C_CPM_PCIE1_MODE_FOR_POWER => "CPM_STREAM",
      C_CPM_PCIE0_LINK_SPEED_FOR_POWER => "GEN4",
      C_CPM_PCIE1_LINK_SPEED_FOR_POWER => "GEN4",
      C_CPM_PCIE1_PF0_PRI_CAP_ON => 0,
      C_CPM_PCIE1_PF1_PRI_CAP_ON => 0,
      C_CPM_PCIE1_PF2_PRI_CAP_ON => 0,
      C_CPM_PCIE1_PF3_PRI_CAP_ON => 0,
      C_CPM_PCIE1_PF0_ATS_CAP_ON => 0,
      C_CPM_PCIE1_PF1_ATS_CAP_ON => 0,
      C_CPM_PCIE1_PF2_ATS_CAP_ON => 0,
      C_CPM_PCIE1_PF3_ATS_CAP_ON => 0,
      C_CPM_PCIE1_VFG0_ATS_CAP_ON => 0,
      C_CPM_PCIE1_VFG1_ATS_CAP_ON => 0,
      C_CPM_PCIE1_VFG2_ATS_CAP_ON => 0,
      C_CPM_PCIE1_VFG3_ATS_CAP_ON => 0,
      C_CPM_PCIE1_VFG0_PRI_CAP_ON => 0,
      C_CPM_PCIE1_VFG1_PRI_CAP_ON => 0,
      C_CPM_PCIE1_VFG2_PRI_CAP_ON => 0,
      C_CPM_PCIE1_VFG3_PRI_CAP_ON => 0,
      C_CPM_PCIE1_PF0_PASID_CAP_ON => 0,
      C_CPM_PCIE1_PL_UPSTREAM_FACING => 1,
      C_XPIPE_0_CLKDLY_CFG => 268485632,
      C_XPIPE_0_CLK_CFG => 348164,
      C_XPIPE_0_INSTANTIATED => 1,
      C_XPIPE_0_LINK0_CFG => "X8",
      C_XPIPE_0_LINK1_CFG => "X8",
      C_XPIPE_0_LOC => "QUAD0",
      C_XPIPE_0_MODE => 1,
      C_XPIPE_0_REG_CFG => 8146,
      C_XPIPE_0_RSVD => 0,
      C_XPIPE_1_CLKDLY_CFG => 33557632,
      C_XPIPE_1_CLK_CFG => 1004804,
      C_XPIPE_1_INSTANTIATED => 1,
      C_XPIPE_1_LINK0_CFG => "X8",
      C_XPIPE_1_LINK1_CFG => "X8",
      C_XPIPE_1_LOC => "QUAD1",
      C_XPIPE_1_MODE => 1,
      C_XPIPE_1_REG_CFG => 8137,
      C_XPIPE_1_RSVD => 0,
      C_XPIPE_2_CLKDLY_CFG => 318767234,
      C_XPIPE_2_CLK_CFG => 1045840,
      C_XPIPE_2_INSTANTIATED => 1,
      C_XPIPE_2_LINK0_CFG => "X8",
      C_XPIPE_2_LINK1_CFG => "X8",
      C_XPIPE_2_LOC => "QUAD2",
      C_XPIPE_2_MODE => 1,
      C_XPIPE_2_REG_CFG => 8146,
      C_XPIPE_2_RSVD => 0,
      C_XPIPE_3_CLKDLY_CFG => 16777218,
      C_XPIPE_3_CLK_CFG => 1048400,
      C_XPIPE_3_INSTANTIATED => 1,
      C_XPIPE_3_LINK0_CFG => "X8",
      C_XPIPE_3_LINK1_CFG => "X8",
      C_XPIPE_3_LOC => "QUAD3",
      C_XPIPE_3_MODE => 1,
      C_XPIPE_3_REG_CFG => 8137,
      C_XPIPE_3_RSVD => 0,
      C_CPM_PCIE0_NUM_USR_IRQ => 1,
      C_CPM_PCIE0_PF0_MSI_ENABLED => 0,
      C_CPM_PCIE1_PF0_MSI_ENABLED => 1
    )
    PORT MAP (
      m_axi_fpd_aclk => '0',
      m_axi_fpd_awready => '0',
      m_axi_fpd_wready => '0',
      m_axi_fpd_bid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      m_axi_fpd_bresp => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      m_axi_fpd_bvalid => '0',
      m_axi_fpd_arready => '0',
      m_axi_fpd_rid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      m_axi_fpd_rdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 128)),
      m_axi_fpd_rresp => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      m_axi_fpd_rlast => '0',
      m_axi_fpd_rvalid => '0',
      m_axi_lpd_aclk => '0',
      m_axi_lpd_awready => '0',
      m_axi_lpd_wready => '0',
      m_axi_lpd_bid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      m_axi_lpd_bresp => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      m_axi_lpd_bvalid => '0',
      m_axi_lpd_arready => '0',
      m_axi_lpd_rid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      m_axi_lpd_rdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 128)),
      m_axi_lpd_rresp => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      m_axi_lpd_rlast => '0',
      m_axi_lpd_rvalid => '0',
      s_axi_fpd_araddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 49)),
      s_axi_fpd_arburst => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      s_axi_fpd_arcache => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_axi_fpd_arid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 6)),
      s_axi_fpd_arlen => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      s_axi_fpd_arlock => '0',
      s_axi_fpd_arprot => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      s_axi_fpd_arqos => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_axi_fpd_arsize => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      s_axi_fpd_aruser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 10)),
      s_axi_fpd_awaddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 49)),
      s_axi_fpd_awburst => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      s_axi_fpd_awcache => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_axi_fpd_awid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 6)),
      s_axi_fpd_awlen => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      s_axi_fpd_awlock => '0',
      s_axi_fpd_awprot => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      s_axi_fpd_awqos => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_axi_fpd_awsize => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      s_axi_fpd_awuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 10)),
      s_axi_fpd_awvalid => '0',
      s_axi_fpd_bready => '0',
      s_axi_fpd_rclk => '0',
      s_axi_fpd_aclk => '0',
      s_axi_fpd_rready => '0',
      s_axi_fpd_wclk => '0',
      s_axi_fpd_wdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 128)),
      s_axi_fpd_wlast => '0',
      s_axi_fpd_wstrb => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      s_axi_fpd_wvalid => '0',
      s_axi_fpd_arvalid => '0',
      s_cci_fpd_araddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 49)),
      s_cci_fpd_arburst => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      s_cci_fpd_arcache => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_cci_fpd_arid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 6)),
      s_cci_fpd_arlen => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      s_cci_fpd_arlock => '0',
      s_cci_fpd_arprot => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      s_cci_fpd_arqos => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_cci_fpd_arsize => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      s_cci_fpd_aruser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 10)),
      s_cci_fpd_arvalid => '0',
      s_cci_fpd_awaddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 49)),
      s_cci_fpd_awburst => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      s_cci_fpd_awcache => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_cci_fpd_awid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 6)),
      s_cci_fpd_awlen => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      s_cci_fpd_awlock => '0',
      s_cci_fpd_awprot => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      s_cci_fpd_awqos => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_cci_fpd_awsize => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      s_cci_fpd_awuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 10)),
      s_cci_fpd_awvalid => '0',
      s_cci_fpd_bready => '0',
      s_cci_fpd_rclk => '0',
      s_cci_fpd_aclk => '0',
      s_cci_fpd_rready => '0',
      s_cci_fpd_wclk => '0',
      s_cci_fpd_wdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 128)),
      s_cci_fpd_wlast => '0',
      s_cci_fpd_wstrb => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      s_cci_fpd_wvalid => '0',
      s_cci_fpd_arsnoop => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_cci_fpd_ardomain => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      s_cci_fpd_awsnoop => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      s_cci_fpd_awdomain => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      s_axi_gp2_araddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 49)),
      s_axi_gp2_arburst => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      s_axi_gp2_arcache => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_axi_gp2_arid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 6)),
      s_axi_gp2_arlen => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      s_axi_gp2_arlock => '0',
      s_axi_gp2_arprot => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      s_axi_gp2_arqos => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_axi_gp2_arsize => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      s_axi_gp2_aruser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 18)),
      s_axi_gp2_arvalid => '0',
      s_axi_gp2_awaddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 49)),
      s_axi_gp2_awburst => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      s_axi_gp2_awcache => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_axi_gp2_awid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 6)),
      s_axi_gp2_awlen => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      s_axi_gp2_awlock => '0',
      s_axi_gp2_awprot => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      s_axi_gp2_awqos => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_axi_gp2_awsize => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      s_axi_gp2_awuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 18)),
      s_axi_gp2_awvalid => '0',
      s_axi_gp2_bready => '0',
      s_axi_gp2_rclk => '0',
      s_axi_gp2_aclk => '0',
      s_axi_gp2_rready => '0',
      s_axi_gp2_wclk => '0',
      s_axi_gp2_wdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 128)),
      s_axi_gp2_wlast => '0',
      s_axi_gp2_wstrb => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      s_axi_gp2_wvalid => '0',
      s_axi_lpd_araddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 49)),
      s_axi_lpd_arburst => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      s_axi_lpd_arcache => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_axi_lpd_arid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 6)),
      s_axi_lpd_arlen => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      s_axi_lpd_arlock => '0',
      s_axi_lpd_arprot => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      s_axi_lpd_arqos => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_axi_lpd_arsize => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      s_axi_lpd_aruser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 11)),
      s_axi_lpd_arvalid => '0',
      s_axi_lpd_awaddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 49)),
      s_axi_lpd_awburst => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      s_axi_lpd_awcache => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_axi_lpd_awid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 6)),
      s_axi_lpd_awlen => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      s_axi_lpd_awlock => '0',
      s_axi_lpd_awprot => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      s_axi_lpd_awqos => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_axi_lpd_awsize => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      s_axi_lpd_awuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 11)),
      s_axi_lpd_awvalid => '0',
      s_axi_lpd_bready => '0',
      s_axi_lpd_rclk => '0',
      s_axi_lpd_aclk => '0',
      s_axi_lpd_rready => '0',
      s_axi_lpd_wclk => '0',
      s_axi_lpd_wdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 128)),
      s_axi_lpd_wlast => '0',
      s_axi_lpd_wstrb => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      s_axi_lpd_wvalid => '0',
      s_acp_fpd_aclk => '0',
      s_acp_fpd_awid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 5)),
      s_acp_fpd_awaddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 44)),
      s_acp_fpd_awlen => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      s_acp_fpd_awcache => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_acp_fpd_awprot => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      s_acp_fpd_awvalid => '0',
      s_acp_fpd_awuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      s_acp_fpd_wdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 128)),
      s_acp_fpd_wstrb => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      s_acp_fpd_wlast => '0',
      s_acp_fpd_wvalid => '0',
      s_acp_fpd_bready => '0',
      s_acp_fpd_arid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 5)),
      s_acp_fpd_araddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 44)),
      s_acp_fpd_arlen => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      s_acp_fpd_arcache => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_acp_fpd_arprot => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      s_acp_fpd_arvalid => '0',
      s_acp_fpd_aruser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      s_acp_fpd_rready => '0',
      s_acp_fpd_inact => '0',
      s_ace_fpd_aclk => '0',
      s_ace_fpd_awid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 6)),
      s_ace_fpd_arbar => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      s_ace_fpd_ardomain => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      s_ace_fpd_arregion => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_ace_fpd_arsnoop => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_ace_fpd_awbar => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      s_ace_fpd_awdomain => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      s_ace_fpd_awregion => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_ace_fpd_awsnoop => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      s_ace_fpd_cdlast => '0',
      s_ace_fpd_cdvalid => '0',
      s_ace_fpd_crresp => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 5)),
      s_ace_fpd_crvalid => '0',
      s_ace_fpd_rack => '0',
      s_ace_fpd_wack => '0',
      s_ace_fpd_awaddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 44)),
      s_ace_fpd_awlen => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      s_ace_fpd_awsize => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      s_ace_fpd_awburst => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      s_ace_fpd_awlock => '0',
      s_ace_fpd_awcache => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_ace_fpd_awprot => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      s_ace_fpd_awvalid => '0',
      s_ace_fpd_awuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      s_ace_fpd_wstrb => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      s_ace_fpd_wlast => '0',
      s_ace_fpd_wvalid => '0',
      s_ace_fpd_bready => '0',
      s_ace_fpd_arid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 6)),
      s_ace_fpd_araddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 44)),
      s_ace_fpd_arlen => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      s_ace_fpd_arsize => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      s_ace_fpd_arburst => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      s_ace_fpd_arlock => '0',
      s_ace_fpd_arcache => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_ace_fpd_arprot => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      s_ace_fpd_arvalid => '0',
      s_ace_fpd_aruser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      s_ace_fpd_rready => '0',
      s_ace_fpd_awqos => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_ace_fpd_arqos => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_ace_fpd_wdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 128)),
      s_ace_fpd_cddata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 128)),
      s_ace_fpd_acready => '0',
      canfd0_phy_rx => '0',
      canfd1_phy_rx => '0',
      gem0_gmii_rx_clk => '0',
      gem0_gmii_crs => '0',
      gem0_gmii_col => '0',
      gem0_gmii_rx_d => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      gem0_gmii_rx_err => '0',
      gem0_gmii_rx_dv => '0',
      gem0_gmii_tx_clk => '0',
      gem0_mdio_i => '0',
      gem1_gmii_rx_clk => '0',
      gem1_gmii_crs => '0',
      gem1_gmii_col => '0',
      gem1_gmii_rx_d => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      gem1_gmii_rx_err => '0',
      gem1_gmii_rx_dv => '0',
      gem1_gmii_tx_clk => '0',
      gem1_mdio_i => '0',
      gem0_tsu_inc_ctrl => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      gem1_tsu_inc_ctrl => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      i2c0_scl_i => '0',
      i2c0_sda_i => '0',
      i2c1_scl_i => '0',
      i2c1_sda_i => '0',
      pmc_i2c_scl_in => '0',
      pmc_i2c_sda_in => '0',
      spi0_sclk_i => '0',
      spi0_m_i => '0',
      spi0_s_i => '0',
      spi0_ss_i_n => '0',
      spi1_sclk_i => '0',
      spi1_m_i => '0',
      spi1_s_i => '0',
      spi1_ss_i_n => '0',
      emio_hub_port_overcrnt_usb2_0 => '0',
      gem0_fifo_tx_r_data_rdy => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      gem0_fifo_tx_r_valid => '0',
      gem0_fifo_tx_r_data => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      gem0_fifo_tx_r_sop => '0',
      gem0_fifo_tx_r_eop => '0',
      gem0_fifo_tx_r_err => '0',
      gem0_fifo_tx_r_underflow => '0',
      gem0_fifo_tx_r_flushed => '0',
      gem0_fifo_tx_r_control => '0',
      gem0_fifo_dma_tx_status_tog => '0',
      gem0_fifo_rx_w_overflow => '0',
      fmio_gem0_signal_detect => '0',
      gem1_fifo_tx_r_data_rdy => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      gem1_fifo_tx_r_data => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      gem1_fifo_tx_r_valid => '0',
      gem1_fifo_tx_r_sop => '0',
      gem1_fifo_tx_r_eop => '0',
      gem1_fifo_tx_r_err => '0',
      gem1_fifo_tx_r_underflow => '0',
      gem1_fifo_tx_r_flushed => '0',
      gem1_fifo_tx_r_control => '0',
      gem1_fifo_dma_tx_status_tog => '0',
      gem1_fifo_rx_w_overflow => '0',
      fmio_gem1_signal_detect => '0',
      lpd_gpio_i => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      pmc_gpio_in => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      trace_ref_clk => '0',
      fpd_cci_noc_axi0_clk => fpd_cci_noc_axi0_clk,
      fpd_cci_noc_axi0_awid => fpd_cci_noc_axi0_awid,
      fpd_cci_noc_axi0_awaddr => fpd_cci_noc_axi0_awaddr,
      fpd_cci_noc_axi0_awlen => fpd_cci_noc_axi0_awlen,
      fpd_cci_noc_axi0_awsize => fpd_cci_noc_axi0_awsize,
      fpd_cci_noc_axi0_awburst => fpd_cci_noc_axi0_awburst,
      fpd_cci_noc_axi0_awlock => fpd_cci_noc_axi0_awlock,
      fpd_cci_noc_axi0_awcache => fpd_cci_noc_axi0_awcache,
      fpd_cci_noc_axi0_awprot => fpd_cci_noc_axi0_awprot,
      fpd_cci_noc_axi0_awvalid => fpd_cci_noc_axi0_awvalid,
      fpd_cci_noc_axi0_awuser => fpd_cci_noc_axi0_awuser,
      fpd_cci_noc_axi0_awready => fpd_cci_noc_axi0_awready,
      fpd_cci_noc_axi0_wdata => fpd_cci_noc_axi0_wdata,
      fpd_cci_noc_axi0_wstrb => fpd_cci_noc_axi0_wstrb,
      fpd_cci_noc_axi0_wuser => fpd_cci_noc_axi0_wuser,
      fpd_cci_noc_axi0_wlast => fpd_cci_noc_axi0_wlast,
      fpd_cci_noc_axi0_wvalid => fpd_cci_noc_axi0_wvalid,
      fpd_cci_noc_axi0_wready => fpd_cci_noc_axi0_wready,
      fpd_cci_noc_axi0_bid => fpd_cci_noc_axi0_bid,
      fpd_cci_noc_axi0_bresp => fpd_cci_noc_axi0_bresp,
      fpd_cci_noc_axi0_bvalid => fpd_cci_noc_axi0_bvalid,
      fpd_cci_noc_axi0_bready => fpd_cci_noc_axi0_bready,
      fpd_cci_noc_axi0_arid => fpd_cci_noc_axi0_arid,
      fpd_cci_noc_axi0_araddr => fpd_cci_noc_axi0_araddr,
      fpd_cci_noc_axi0_arlen => fpd_cci_noc_axi0_arlen,
      fpd_cci_noc_axi0_arsize => fpd_cci_noc_axi0_arsize,
      fpd_cci_noc_axi0_arburst => fpd_cci_noc_axi0_arburst,
      fpd_cci_noc_axi0_arlock => fpd_cci_noc_axi0_arlock,
      fpd_cci_noc_axi0_arcache => fpd_cci_noc_axi0_arcache,
      fpd_cci_noc_axi0_arprot => fpd_cci_noc_axi0_arprot,
      fpd_cci_noc_axi0_arvalid => fpd_cci_noc_axi0_arvalid,
      fpd_cci_noc_axi0_aruser => fpd_cci_noc_axi0_aruser,
      fpd_cci_noc_axi0_arready => fpd_cci_noc_axi0_arready,
      fpd_cci_noc_axi0_rid => fpd_cci_noc_axi0_rid,
      fpd_cci_noc_axi0_rdata => fpd_cci_noc_axi0_rdata,
      fpd_cci_noc_axi0_rresp => fpd_cci_noc_axi0_rresp,
      fpd_cci_noc_axi0_rlast => fpd_cci_noc_axi0_rlast,
      fpd_cci_noc_axi0_rvalid => fpd_cci_noc_axi0_rvalid,
      fpd_cci_noc_axi0_rready => fpd_cci_noc_axi0_rready,
      fpd_cci_noc_axi0_awqos => fpd_cci_noc_axi0_awqos,
      fpd_cci_noc_axi0_arqos => fpd_cci_noc_axi0_arqos,
      fpd_cci_noc_axi1_clk => fpd_cci_noc_axi1_clk,
      fpd_cci_noc_axi1_awid => fpd_cci_noc_axi1_awid,
      fpd_cci_noc_axi1_awaddr => fpd_cci_noc_axi1_awaddr,
      fpd_cci_noc_axi1_awlen => fpd_cci_noc_axi1_awlen,
      fpd_cci_noc_axi1_awsize => fpd_cci_noc_axi1_awsize,
      fpd_cci_noc_axi1_awburst => fpd_cci_noc_axi1_awburst,
      fpd_cci_noc_axi1_awlock => fpd_cci_noc_axi1_awlock,
      fpd_cci_noc_axi1_awcache => fpd_cci_noc_axi1_awcache,
      fpd_cci_noc_axi1_awprot => fpd_cci_noc_axi1_awprot,
      fpd_cci_noc_axi1_awvalid => fpd_cci_noc_axi1_awvalid,
      fpd_cci_noc_axi1_awuser => fpd_cci_noc_axi1_awuser,
      fpd_cci_noc_axi1_awready => fpd_cci_noc_axi1_awready,
      fpd_cci_noc_axi1_wdata => fpd_cci_noc_axi1_wdata,
      fpd_cci_noc_axi1_wstrb => fpd_cci_noc_axi1_wstrb,
      fpd_cci_noc_axi1_wuser => fpd_cci_noc_axi1_wuser,
      fpd_cci_noc_axi1_wlast => fpd_cci_noc_axi1_wlast,
      fpd_cci_noc_axi1_wvalid => fpd_cci_noc_axi1_wvalid,
      fpd_cci_noc_axi1_wready => fpd_cci_noc_axi1_wready,
      fpd_cci_noc_axi1_bid => fpd_cci_noc_axi1_bid,
      fpd_cci_noc_axi1_bresp => fpd_cci_noc_axi1_bresp,
      fpd_cci_noc_axi1_bvalid => fpd_cci_noc_axi1_bvalid,
      fpd_cci_noc_axi1_bready => fpd_cci_noc_axi1_bready,
      fpd_cci_noc_axi1_arid => fpd_cci_noc_axi1_arid,
      fpd_cci_noc_axi1_araddr => fpd_cci_noc_axi1_araddr,
      fpd_cci_noc_axi1_arlen => fpd_cci_noc_axi1_arlen,
      fpd_cci_noc_axi1_arsize => fpd_cci_noc_axi1_arsize,
      fpd_cci_noc_axi1_arburst => fpd_cci_noc_axi1_arburst,
      fpd_cci_noc_axi1_arlock => fpd_cci_noc_axi1_arlock,
      fpd_cci_noc_axi1_arcache => fpd_cci_noc_axi1_arcache,
      fpd_cci_noc_axi1_arprot => fpd_cci_noc_axi1_arprot,
      fpd_cci_noc_axi1_arvalid => fpd_cci_noc_axi1_arvalid,
      fpd_cci_noc_axi1_aruser => fpd_cci_noc_axi1_aruser,
      fpd_cci_noc_axi1_arready => fpd_cci_noc_axi1_arready,
      fpd_cci_noc_axi1_rid => fpd_cci_noc_axi1_rid,
      fpd_cci_noc_axi1_rdata => fpd_cci_noc_axi1_rdata,
      fpd_cci_noc_axi1_rresp => fpd_cci_noc_axi1_rresp,
      fpd_cci_noc_axi1_rlast => fpd_cci_noc_axi1_rlast,
      fpd_cci_noc_axi1_rvalid => fpd_cci_noc_axi1_rvalid,
      fpd_cci_noc_axi1_rready => fpd_cci_noc_axi1_rready,
      fpd_cci_noc_axi1_awqos => fpd_cci_noc_axi1_awqos,
      fpd_cci_noc_axi1_arqos => fpd_cci_noc_axi1_arqos,
      fpd_cci_noc_axi2_clk => fpd_cci_noc_axi2_clk,
      fpd_cci_noc_axi2_awid => fpd_cci_noc_axi2_awid,
      fpd_cci_noc_axi2_awaddr => fpd_cci_noc_axi2_awaddr,
      fpd_cci_noc_axi2_awlen => fpd_cci_noc_axi2_awlen,
      fpd_cci_noc_axi2_awsize => fpd_cci_noc_axi2_awsize,
      fpd_cci_noc_axi2_awburst => fpd_cci_noc_axi2_awburst,
      fpd_cci_noc_axi2_awlock => fpd_cci_noc_axi2_awlock,
      fpd_cci_noc_axi2_awcache => fpd_cci_noc_axi2_awcache,
      fpd_cci_noc_axi2_awprot => fpd_cci_noc_axi2_awprot,
      fpd_cci_noc_axi2_awvalid => fpd_cci_noc_axi2_awvalid,
      fpd_cci_noc_axi2_awuser => fpd_cci_noc_axi2_awuser,
      fpd_cci_noc_axi2_awready => fpd_cci_noc_axi2_awready,
      fpd_cci_noc_axi2_wdata => fpd_cci_noc_axi2_wdata,
      fpd_cci_noc_axi2_wstrb => fpd_cci_noc_axi2_wstrb,
      fpd_cci_noc_axi2_wuser => fpd_cci_noc_axi2_wuser,
      fpd_cci_noc_axi2_wlast => fpd_cci_noc_axi2_wlast,
      fpd_cci_noc_axi2_wvalid => fpd_cci_noc_axi2_wvalid,
      fpd_cci_noc_axi2_wready => fpd_cci_noc_axi2_wready,
      fpd_cci_noc_axi2_bid => fpd_cci_noc_axi2_bid,
      fpd_cci_noc_axi2_bresp => fpd_cci_noc_axi2_bresp,
      fpd_cci_noc_axi2_bvalid => fpd_cci_noc_axi2_bvalid,
      fpd_cci_noc_axi2_bready => fpd_cci_noc_axi2_bready,
      fpd_cci_noc_axi2_arid => fpd_cci_noc_axi2_arid,
      fpd_cci_noc_axi2_araddr => fpd_cci_noc_axi2_araddr,
      fpd_cci_noc_axi2_arlen => fpd_cci_noc_axi2_arlen,
      fpd_cci_noc_axi2_arsize => fpd_cci_noc_axi2_arsize,
      fpd_cci_noc_axi2_arburst => fpd_cci_noc_axi2_arburst,
      fpd_cci_noc_axi2_arlock => fpd_cci_noc_axi2_arlock,
      fpd_cci_noc_axi2_arcache => fpd_cci_noc_axi2_arcache,
      fpd_cci_noc_axi2_arprot => fpd_cci_noc_axi2_arprot,
      fpd_cci_noc_axi2_arvalid => fpd_cci_noc_axi2_arvalid,
      fpd_cci_noc_axi2_aruser => fpd_cci_noc_axi2_aruser,
      fpd_cci_noc_axi2_arready => fpd_cci_noc_axi2_arready,
      fpd_cci_noc_axi2_rid => fpd_cci_noc_axi2_rid,
      fpd_cci_noc_axi2_rdata => fpd_cci_noc_axi2_rdata,
      fpd_cci_noc_axi2_rresp => fpd_cci_noc_axi2_rresp,
      fpd_cci_noc_axi2_rlast => fpd_cci_noc_axi2_rlast,
      fpd_cci_noc_axi2_rvalid => fpd_cci_noc_axi2_rvalid,
      fpd_cci_noc_axi2_rready => fpd_cci_noc_axi2_rready,
      fpd_cci_noc_axi2_awqos => fpd_cci_noc_axi2_awqos,
      fpd_cci_noc_axi2_arqos => fpd_cci_noc_axi2_arqos,
      fpd_cci_noc_axi3_clk => fpd_cci_noc_axi3_clk,
      fpd_cci_noc_axi3_awid => fpd_cci_noc_axi3_awid,
      fpd_cci_noc_axi3_awaddr => fpd_cci_noc_axi3_awaddr,
      fpd_cci_noc_axi3_awlen => fpd_cci_noc_axi3_awlen,
      fpd_cci_noc_axi3_awsize => fpd_cci_noc_axi3_awsize,
      fpd_cci_noc_axi3_awburst => fpd_cci_noc_axi3_awburst,
      fpd_cci_noc_axi3_awlock => fpd_cci_noc_axi3_awlock,
      fpd_cci_noc_axi3_awcache => fpd_cci_noc_axi3_awcache,
      fpd_cci_noc_axi3_awprot => fpd_cci_noc_axi3_awprot,
      fpd_cci_noc_axi3_awvalid => fpd_cci_noc_axi3_awvalid,
      fpd_cci_noc_axi3_awuser => fpd_cci_noc_axi3_awuser,
      fpd_cci_noc_axi3_wuser => fpd_cci_noc_axi3_wuser,
      fpd_cci_noc_axi3_awready => fpd_cci_noc_axi3_awready,
      fpd_cci_noc_axi3_wdata => fpd_cci_noc_axi3_wdata,
      fpd_cci_noc_axi3_wstrb => fpd_cci_noc_axi3_wstrb,
      fpd_cci_noc_axi3_wlast => fpd_cci_noc_axi3_wlast,
      fpd_cci_noc_axi3_wvalid => fpd_cci_noc_axi3_wvalid,
      fpd_cci_noc_axi3_wready => fpd_cci_noc_axi3_wready,
      fpd_cci_noc_axi3_bid => fpd_cci_noc_axi3_bid,
      fpd_cci_noc_axi3_bresp => fpd_cci_noc_axi3_bresp,
      fpd_cci_noc_axi3_bvalid => fpd_cci_noc_axi3_bvalid,
      fpd_cci_noc_axi3_bready => fpd_cci_noc_axi3_bready,
      fpd_cci_noc_axi3_arid => fpd_cci_noc_axi3_arid,
      fpd_cci_noc_axi3_araddr => fpd_cci_noc_axi3_araddr,
      fpd_cci_noc_axi3_arlen => fpd_cci_noc_axi3_arlen,
      fpd_cci_noc_axi3_arsize => fpd_cci_noc_axi3_arsize,
      fpd_cci_noc_axi3_arburst => fpd_cci_noc_axi3_arburst,
      fpd_cci_noc_axi3_arlock => fpd_cci_noc_axi3_arlock,
      fpd_cci_noc_axi3_arcache => fpd_cci_noc_axi3_arcache,
      fpd_cci_noc_axi3_arprot => fpd_cci_noc_axi3_arprot,
      fpd_cci_noc_axi3_arvalid => fpd_cci_noc_axi3_arvalid,
      fpd_cci_noc_axi3_aruser => fpd_cci_noc_axi3_aruser,
      fpd_cci_noc_axi3_arready => fpd_cci_noc_axi3_arready,
      fpd_cci_noc_axi3_rid => fpd_cci_noc_axi3_rid,
      fpd_cci_noc_axi3_rdata => fpd_cci_noc_axi3_rdata,
      fpd_cci_noc_axi3_rresp => fpd_cci_noc_axi3_rresp,
      fpd_cci_noc_axi3_rlast => fpd_cci_noc_axi3_rlast,
      fpd_cci_noc_axi3_rvalid => fpd_cci_noc_axi3_rvalid,
      fpd_cci_noc_axi3_rready => fpd_cci_noc_axi3_rready,
      fpd_cci_noc_axi3_awqos => fpd_cci_noc_axi3_awqos,
      fpd_cci_noc_axi3_arqos => fpd_cci_noc_axi3_arqos,
      fpd_axi_noc_axi0_clk => fpd_axi_noc_axi0_clk,
      fpd_axi_noc_axi0_awid => fpd_axi_noc_axi0_awid,
      fpd_axi_noc_axi0_awaddr => fpd_axi_noc_axi0_awaddr,
      fpd_axi_noc_axi0_awlen => fpd_axi_noc_axi0_awlen,
      fpd_axi_noc_axi0_awsize => fpd_axi_noc_axi0_awsize,
      fpd_axi_noc_axi0_awburst => fpd_axi_noc_axi0_awburst,
      fpd_axi_noc_axi0_awlock => fpd_axi_noc_axi0_awlock,
      fpd_axi_noc_axi0_awcache => fpd_axi_noc_axi0_awcache,
      fpd_axi_noc_axi0_awprot => fpd_axi_noc_axi0_awprot,
      fpd_axi_noc_axi0_awvalid => fpd_axi_noc_axi0_awvalid,
      fpd_axi_noc_axi0_awuser => fpd_axi_noc_axi0_awuser,
      fpd_axi_noc_axi0_awready => fpd_axi_noc_axi0_awready,
      fpd_axi_noc_axi0_wdata => fpd_axi_noc_axi0_wdata,
      fpd_axi_noc_axi0_wstrb => fpd_axi_noc_axi0_wstrb,
      fpd_axi_noc_axi0_wlast => fpd_axi_noc_axi0_wlast,
      fpd_axi_noc_axi0_wvalid => fpd_axi_noc_axi0_wvalid,
      fpd_axi_noc_axi0_wready => fpd_axi_noc_axi0_wready,
      fpd_axi_noc_axi0_bid => fpd_axi_noc_axi0_bid,
      fpd_axi_noc_axi0_bresp => fpd_axi_noc_axi0_bresp,
      fpd_axi_noc_axi0_bvalid => fpd_axi_noc_axi0_bvalid,
      fpd_axi_noc_axi0_bready => fpd_axi_noc_axi0_bready,
      fpd_axi_noc_axi0_arid => fpd_axi_noc_axi0_arid,
      fpd_axi_noc_axi0_araddr => fpd_axi_noc_axi0_araddr,
      fpd_axi_noc_axi0_arlen => fpd_axi_noc_axi0_arlen,
      fpd_axi_noc_axi0_arsize => fpd_axi_noc_axi0_arsize,
      fpd_axi_noc_axi0_arburst => fpd_axi_noc_axi0_arburst,
      fpd_axi_noc_axi0_arlock => fpd_axi_noc_axi0_arlock,
      fpd_axi_noc_axi0_arcache => fpd_axi_noc_axi0_arcache,
      fpd_axi_noc_axi0_arprot => fpd_axi_noc_axi0_arprot,
      fpd_axi_noc_axi0_arvalid => fpd_axi_noc_axi0_arvalid,
      fpd_axi_noc_axi0_aruser => fpd_axi_noc_axi0_aruser,
      fpd_axi_noc_axi0_arready => fpd_axi_noc_axi0_arready,
      fpd_axi_noc_axi0_rid => fpd_axi_noc_axi0_rid,
      fpd_axi_noc_axi0_rdata => fpd_axi_noc_axi0_rdata,
      fpd_axi_noc_axi0_rresp => fpd_axi_noc_axi0_rresp,
      fpd_axi_noc_axi0_rlast => fpd_axi_noc_axi0_rlast,
      fpd_axi_noc_axi0_rvalid => fpd_axi_noc_axi0_rvalid,
      fpd_axi_noc_axi0_rready => fpd_axi_noc_axi0_rready,
      fpd_axi_noc_axi0_awqos => fpd_axi_noc_axi0_awqos,
      fpd_axi_noc_axi0_arqos => fpd_axi_noc_axi0_arqos,
      fpd_axi_noc_axi1_awready => '0',
      fpd_axi_noc_axi1_wready => '0',
      fpd_axi_noc_axi1_bid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      fpd_axi_noc_axi1_bresp => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      fpd_axi_noc_axi1_bvalid => '0',
      fpd_axi_noc_axi1_arready => '0',
      fpd_axi_noc_axi1_rid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      fpd_axi_noc_axi1_rdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 128)),
      fpd_axi_noc_axi1_rresp => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      fpd_axi_noc_axi1_rlast => '0',
      fpd_axi_noc_axi1_rvalid => '0',
      noc_fpd_cci_axi0_araddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      noc_fpd_cci_axi0_arburst => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      noc_fpd_cci_axi0_arcache => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_fpd_cci_axi0_arid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      noc_fpd_cci_axi0_arlen => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      noc_fpd_cci_axi0_arlock => '0',
      noc_fpd_cci_axi0_arprot => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      noc_fpd_cci_axi0_arqos => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_fpd_cci_axi0_arregion => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_fpd_cci_axi0_arsize => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      noc_fpd_cci_axi0_aruser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 18)),
      noc_fpd_cci_axi0_arvalid => '0',
      noc_fpd_cci_axi0_awaddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      noc_fpd_cci_axi0_awburst => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      noc_fpd_cci_axi0_awcache => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_fpd_cci_axi0_awid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      noc_fpd_cci_axi0_awlen => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      noc_fpd_cci_axi0_awlock => '0',
      noc_fpd_cci_axi0_awprot => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      noc_fpd_cci_axi0_awqos => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_fpd_cci_axi0_awregion => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_fpd_cci_axi0_awsize => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      noc_fpd_cci_axi0_awuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 18)),
      noc_fpd_cci_axi0_awvalid => '0',
      noc_fpd_cci_axi0_bready => '0',
      noc_fpd_cci_axi0_rready => '0',
      noc_fpd_cci_axi0_wdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 128)),
      noc_fpd_cci_axi0_wid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_fpd_cci_axi0_wlast => '0',
      noc_fpd_cci_axi0_wstrb => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      noc_fpd_cci_axi0_wuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 17)),
      noc_fpd_cci_axi0_wvalid => '0',
      noc_fpd_cci_axi1_araddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      noc_fpd_cci_axi1_arburst => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      noc_fpd_cci_axi1_arcache => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_fpd_cci_axi1_arid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      noc_fpd_cci_axi1_arlen => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      noc_fpd_cci_axi1_arlock => '0',
      noc_fpd_cci_axi1_arprot => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      noc_fpd_cci_axi1_arqos => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_fpd_cci_axi1_arregion => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_fpd_cci_axi1_arsize => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      noc_fpd_cci_axi1_aruser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 18)),
      noc_fpd_cci_axi1_arvalid => '0',
      noc_fpd_cci_axi1_awaddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      noc_fpd_cci_axi1_awburst => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      noc_fpd_cci_axi1_awcache => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_fpd_cci_axi1_awid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      noc_fpd_cci_axi1_awlen => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      noc_fpd_cci_axi1_awlock => '0',
      noc_fpd_cci_axi1_awprot => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      noc_fpd_cci_axi1_awqos => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_fpd_cci_axi1_awregion => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_fpd_cci_axi1_awsize => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      noc_fpd_cci_axi1_awuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 18)),
      noc_fpd_cci_axi1_awvalid => '0',
      noc_fpd_cci_axi1_bready => '0',
      noc_fpd_cci_axi1_rready => '0',
      noc_fpd_cci_axi1_wdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 128)),
      noc_fpd_cci_axi1_wid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_fpd_cci_axi1_wlast => '0',
      noc_fpd_cci_axi1_wstrb => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      noc_fpd_cci_axi1_wuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 17)),
      noc_fpd_cci_axi1_wvalid => '0',
      cpm_pcie_noc_axi0_clk => cpm_pcie_noc_axi0_clk,
      cpm_pcie_noc_axi0_awid => cpm_pcie_noc_axi0_awid,
      cpm_pcie_noc_axi0_awaddr => cpm_pcie_noc_axi0_awaddr,
      cpm_pcie_noc_axi0_awlen => cpm_pcie_noc_axi0_awlen,
      cpm_pcie_noc_axi0_awsize => cpm_pcie_noc_axi0_awsize,
      cpm_pcie_noc_axi0_awburst => cpm_pcie_noc_axi0_awburst,
      cpm_pcie_noc_axi0_awlock => cpm_pcie_noc_axi0_awlock,
      cpm_pcie_noc_axi0_awcache => cpm_pcie_noc_axi0_awcache,
      cpm_pcie_noc_axi0_awprot => cpm_pcie_noc_axi0_awprot,
      cpm_pcie_noc_axi0_awvalid => cpm_pcie_noc_axi0_awvalid,
      cpm_pcie_noc_axi0_awuser => cpm_pcie_noc_axi0_awuser,
      cpm_pcie_noc_axi0_awready => cpm_pcie_noc_axi0_awready,
      cpm_pcie_noc_axi0_wdata => cpm_pcie_noc_axi0_wdata,
      cpm_pcie_noc_axi0_wstrb => cpm_pcie_noc_axi0_wstrb,
      cpm_pcie_noc_axi0_wlast => cpm_pcie_noc_axi0_wlast,
      cpm_pcie_noc_axi0_wvalid => cpm_pcie_noc_axi0_wvalid,
      cpm_pcie_noc_axi0_wready => cpm_pcie_noc_axi0_wready,
      cpm_pcie_noc_axi0_bid => cpm_pcie_noc_axi0_bid,
      cpm_pcie_noc_axi0_bresp => cpm_pcie_noc_axi0_bresp,
      cpm_pcie_noc_axi0_bvalid => cpm_pcie_noc_axi0_bvalid,
      cpm_pcie_noc_axi0_bready => cpm_pcie_noc_axi0_bready,
      cpm_pcie_noc_axi0_arid => cpm_pcie_noc_axi0_arid,
      cpm_pcie_noc_axi0_araddr => cpm_pcie_noc_axi0_araddr,
      cpm_pcie_noc_axi0_arlen => cpm_pcie_noc_axi0_arlen,
      cpm_pcie_noc_axi0_arsize => cpm_pcie_noc_axi0_arsize,
      cpm_pcie_noc_axi0_arburst => cpm_pcie_noc_axi0_arburst,
      cpm_pcie_noc_axi0_arlock => cpm_pcie_noc_axi0_arlock,
      cpm_pcie_noc_axi0_arcache => cpm_pcie_noc_axi0_arcache,
      cpm_pcie_noc_axi0_arprot => cpm_pcie_noc_axi0_arprot,
      cpm_pcie_noc_axi0_arvalid => cpm_pcie_noc_axi0_arvalid,
      cpm_pcie_noc_axi0_aruser => cpm_pcie_noc_axi0_aruser,
      cpm_pcie_noc_axi0_arready => cpm_pcie_noc_axi0_arready,
      cpm_pcie_noc_axi0_rid => cpm_pcie_noc_axi0_rid,
      cpm_pcie_noc_axi0_rdata => cpm_pcie_noc_axi0_rdata,
      cpm_pcie_noc_axi0_rresp => cpm_pcie_noc_axi0_rresp,
      cpm_pcie_noc_axi0_rlast => cpm_pcie_noc_axi0_rlast,
      cpm_pcie_noc_axi0_rvalid => cpm_pcie_noc_axi0_rvalid,
      cpm_pcie_noc_axi0_rready => cpm_pcie_noc_axi0_rready,
      cpm_pcie_noc_axi0_awqos => cpm_pcie_noc_axi0_awqos,
      cpm_pcie_noc_axi0_arqos => cpm_pcie_noc_axi0_arqos,
      cpm_pcie_noc_axi1_clk => cpm_pcie_noc_axi1_clk,
      cpm_pcie_noc_axi1_awid => cpm_pcie_noc_axi1_awid,
      cpm_pcie_noc_axi1_awaddr => cpm_pcie_noc_axi1_awaddr,
      cpm_pcie_noc_axi1_awlen => cpm_pcie_noc_axi1_awlen,
      cpm_pcie_noc_axi1_awsize => cpm_pcie_noc_axi1_awsize,
      cpm_pcie_noc_axi1_awburst => cpm_pcie_noc_axi1_awburst,
      cpm_pcie_noc_axi1_awlock => cpm_pcie_noc_axi1_awlock,
      cpm_pcie_noc_axi1_awcache => cpm_pcie_noc_axi1_awcache,
      cpm_pcie_noc_axi1_awprot => cpm_pcie_noc_axi1_awprot,
      cpm_pcie_noc_axi1_awvalid => cpm_pcie_noc_axi1_awvalid,
      cpm_pcie_noc_axi1_awuser => cpm_pcie_noc_axi1_awuser,
      cpm_pcie_noc_axi1_awready => cpm_pcie_noc_axi1_awready,
      cpm_pcie_noc_axi1_wdata => cpm_pcie_noc_axi1_wdata,
      cpm_pcie_noc_axi1_wstrb => cpm_pcie_noc_axi1_wstrb,
      cpm_pcie_noc_axi1_wlast => cpm_pcie_noc_axi1_wlast,
      cpm_pcie_noc_axi1_wvalid => cpm_pcie_noc_axi1_wvalid,
      cpm_pcie_noc_axi1_wready => cpm_pcie_noc_axi1_wready,
      cpm_pcie_noc_axi1_bid => cpm_pcie_noc_axi1_bid,
      cpm_pcie_noc_axi1_bresp => cpm_pcie_noc_axi1_bresp,
      cpm_pcie_noc_axi1_bvalid => cpm_pcie_noc_axi1_bvalid,
      cpm_pcie_noc_axi1_bready => cpm_pcie_noc_axi1_bready,
      cpm_pcie_noc_axi1_arid => cpm_pcie_noc_axi1_arid,
      cpm_pcie_noc_axi1_araddr => cpm_pcie_noc_axi1_araddr,
      cpm_pcie_noc_axi1_arlen => cpm_pcie_noc_axi1_arlen,
      cpm_pcie_noc_axi1_arsize => cpm_pcie_noc_axi1_arsize,
      cpm_pcie_noc_axi1_arburst => cpm_pcie_noc_axi1_arburst,
      cpm_pcie_noc_axi1_arlock => cpm_pcie_noc_axi1_arlock,
      cpm_pcie_noc_axi1_arcache => cpm_pcie_noc_axi1_arcache,
      cpm_pcie_noc_axi1_arprot => cpm_pcie_noc_axi1_arprot,
      cpm_pcie_noc_axi1_arvalid => cpm_pcie_noc_axi1_arvalid,
      cpm_pcie_noc_axi1_aruser => cpm_pcie_noc_axi1_aruser,
      cpm_pcie_noc_axi1_arready => cpm_pcie_noc_axi1_arready,
      cpm_pcie_noc_axi1_rid => cpm_pcie_noc_axi1_rid,
      cpm_pcie_noc_axi1_rdata => cpm_pcie_noc_axi1_rdata,
      cpm_pcie_noc_axi1_rresp => cpm_pcie_noc_axi1_rresp,
      cpm_pcie_noc_axi1_rlast => cpm_pcie_noc_axi1_rlast,
      cpm_pcie_noc_axi1_rvalid => cpm_pcie_noc_axi1_rvalid,
      cpm_pcie_noc_axi1_rready => cpm_pcie_noc_axi1_rready,
      cpm_pcie_noc_axi1_awqos => cpm_pcie_noc_axi1_awqos,
      cpm_pcie_noc_axi1_arqos => cpm_pcie_noc_axi1_arqos,
      lpd_axi_noc_clk => lpd_axi_noc_clk,
      noc_lpd_axi_axi0_awid => noc_lpd_axi_axi0_awid,
      noc_lpd_axi_axi0_awaddr => noc_lpd_axi_axi0_awaddr,
      noc_lpd_axi_axi0_awlen => noc_lpd_axi_axi0_awlen,
      noc_lpd_axi_axi0_awsize => noc_lpd_axi_axi0_awsize,
      noc_lpd_axi_axi0_awburst => noc_lpd_axi_axi0_awburst,
      noc_lpd_axi_axi0_awlock => noc_lpd_axi_axi0_awlock,
      noc_lpd_axi_axi0_awcache => noc_lpd_axi_axi0_awcache,
      noc_lpd_axi_axi0_awprot => noc_lpd_axi_axi0_awprot,
      noc_lpd_axi_axi0_awvalid => noc_lpd_axi_axi0_awvalid,
      noc_lpd_axi_axi0_awuser => noc_lpd_axi_axi0_awuser,
      noc_lpd_axi_axi0_awready => noc_lpd_axi_axi0_awready,
      noc_lpd_axi_axi0_wdata => noc_lpd_axi_axi0_wdata,
      noc_lpd_axi_axi0_wstrb => noc_lpd_axi_axi0_wstrb,
      noc_lpd_axi_axi0_wlast => noc_lpd_axi_axi0_wlast,
      noc_lpd_axi_axi0_wvalid => noc_lpd_axi_axi0_wvalid,
      noc_lpd_axi_axi0_wready => noc_lpd_axi_axi0_wready,
      noc_lpd_axi_axi0_bid => noc_lpd_axi_axi0_bid,
      noc_lpd_axi_axi0_bresp => noc_lpd_axi_axi0_bresp,
      noc_lpd_axi_axi0_bvalid => noc_lpd_axi_axi0_bvalid,
      noc_lpd_axi_axi0_bready => noc_lpd_axi_axi0_bready,
      noc_lpd_axi_axi0_arid => noc_lpd_axi_axi0_arid,
      noc_lpd_axi_axi0_araddr => noc_lpd_axi_axi0_araddr,
      noc_lpd_axi_axi0_arlen => noc_lpd_axi_axi0_arlen,
      noc_lpd_axi_axi0_arsize => noc_lpd_axi_axi0_arsize,
      noc_lpd_axi_axi0_arburst => noc_lpd_axi_axi0_arburst,
      noc_lpd_axi_axi0_arlock => noc_lpd_axi_axi0_arlock,
      noc_lpd_axi_axi0_arcache => noc_lpd_axi_axi0_arcache,
      noc_lpd_axi_axi0_arprot => noc_lpd_axi_axi0_arprot,
      noc_lpd_axi_axi0_arvalid => noc_lpd_axi_axi0_arvalid,
      noc_lpd_axi_axi0_aruser => noc_lpd_axi_axi0_aruser,
      noc_lpd_axi_axi0_arready => noc_lpd_axi_axi0_arready,
      noc_lpd_axi_axi0_rid => noc_lpd_axi_axi0_rid,
      noc_lpd_axi_axi0_rdata => noc_lpd_axi_axi0_rdata,
      noc_lpd_axi_axi0_rresp => noc_lpd_axi_axi0_rresp,
      noc_lpd_axi_axi0_rlast => noc_lpd_axi_axi0_rlast,
      noc_lpd_axi_axi0_rvalid => noc_lpd_axi_axi0_rvalid,
      noc_lpd_axi_axi0_rready => noc_lpd_axi_axi0_rready,
      noc_lpd_axi_axi0_awqos => noc_lpd_axi_axi0_awqos,
      noc_lpd_axi_axi0_arqos => noc_lpd_axi_axi0_arqos,
      ttc0_clk => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      ttc1_clk => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      ttc2_clk => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      ttc3_clk => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      lpd_dma_clk0 => '0',
      lpd_dma0_cvld => '0',
      lpd_dma0_tack => '0',
      lpd_dma_clk1 => '0',
      lpd_dma1_cvld => '0',
      lpd_dma1_tack => '0',
      lpd_dma_clk2 => '0',
      lpd_dma2_cvld => '0',
      lpd_dma2_tack => '0',
      lpd_dma_clk3 => '0',
      lpd_dma3_cvld => '0',
      lpd_dma3_tack => '0',
      lpd_dma_clk4 => '0',
      lpd_dma4_cvld => '0',
      lpd_dma4_tack => '0',
      lpd_dma_clk5 => '0',
      lpd_dma5_cvld => '0',
      lpd_dma5_tack => '0',
      lpd_dma_clk6 => '0',
      lpd_dma6_cvld => '0',
      lpd_dma6_tack => '0',
      lpd_dma_clk7 => '0',
      lpd_dma7_cvld => '0',
      lpd_dma7_tack => '0',
      apu_event_i => '0',
      pl_ps_apu_gic_irq => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      pl_ps_apu_gic_fiq => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      lpd_rpu_event_i0 => '0',
      lpd_rpu_event_i1 => '0',
      lpd_rpu_fiq0n => '1',
      lpd_rpu_fiq1n => '1',
      lpd_rpu_irq0n => '1',
      lpd_rpu_irq1n => '1',
      stm_event => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 60)),
      pl_ps_trig0_req => '0',
      pl_ps_trig1_req => '0',
      pl_ps_trig2_req => '0',
      pl_ps_trig3_req => '0',
      ps_pl_trig0_ack => '0',
      ps_pl_trig1_ack => '0',
      ps_pl_trig2_ack => '0',
      ps_pl_trig3_ack => '0',
      pl_ps_irq0 => '0',
      pl_ps_irq1 => '0',
      pl_ps_irq2 => '0',
      pl_ps_irq3 => '0',
      pl_ps_irq4 => '0',
      pl_ps_irq5 => '0',
      pl_ps_irq6 => '0',
      pl_ps_irq7 => '0',
      pl_ps_irq8 => '0',
      pl_ps_irq9 => '0',
      pl_ps_irq10 => '0',
      pl_ps_irq11 => '0',
      pl_ps_irq12 => '0',
      pl_ps_irq13 => '0',
      pl_ps_irq14 => '0',
      pl_ps_irq15 => '0',
      aib_pmu_afi_fm_lpd_ack => '0',
      aib_pmu_afi_fm_fpd_ack => '0',
      pmu_error_from_pl => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_fpd_axi_axi0_awaddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      noc_fpd_axi_axi0_awlen => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      noc_fpd_axi_axi0_awsize => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      noc_fpd_axi_axi0_awburst => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      noc_fpd_axi_axi0_awlock => '0',
      noc_fpd_axi_axi0_awcache => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_fpd_axi_axi0_awid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      noc_fpd_axi_axi0_awprot => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      noc_fpd_axi_axi0_awvalid => '0',
      noc_fpd_axi_axi0_bready => '0',
      noc_fpd_axi_axi0_awuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 18)),
      noc_fpd_axi_axi0_wdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 128)),
      noc_fpd_axi_axi0_wid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_fpd_axi_axi0_wstrb => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      noc_fpd_axi_axi0_wuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 17)),
      noc_fpd_axi_axi0_wlast => '0',
      noc_fpd_axi_axi0_wvalid => '0',
      noc_fpd_axi_axi0_araddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      noc_fpd_axi_axi0_arlen => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      noc_fpd_axi_axi0_arsize => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      noc_fpd_axi_axi0_arburst => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      noc_fpd_axi_axi0_arlock => '0',
      noc_fpd_axi_axi0_arcache => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_fpd_axi_axi0_arid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      noc_fpd_axi_axi0_arprot => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      noc_fpd_axi_axi0_arvalid => '0',
      noc_fpd_axi_axi0_aruser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 18)),
      noc_fpd_axi_axi0_rready => '0',
      noc_fpd_axi_axi0_awqos => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_fpd_axi_axi0_awregion => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_fpd_axi_axi0_arqos => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_fpd_axi_axi0_arregion => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_fpd_axi_axi1_awaddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      noc_fpd_axi_axi1_awlen => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      noc_fpd_axi_axi1_awsize => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      noc_fpd_axi_axi1_awburst => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      noc_fpd_axi_axi1_awlock => '0',
      noc_fpd_axi_axi1_awcache => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_fpd_axi_axi1_awid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      noc_fpd_axi_axi1_awprot => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      noc_fpd_axi_axi1_awvalid => '0',
      noc_fpd_axi_axi1_bready => '0',
      noc_fpd_axi_axi1_awuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 18)),
      noc_fpd_axi_axi1_wdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 128)),
      noc_fpd_axi_axi1_wid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_fpd_axi_axi1_wstrb => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      noc_fpd_axi_axi1_wuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 17)),
      noc_fpd_axi_axi1_wlast => '0',
      noc_fpd_axi_axi1_wvalid => '0',
      noc_fpd_axi_axi1_araddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      noc_fpd_axi_axi1_arlen => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      noc_fpd_axi_axi1_arsize => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      noc_fpd_axi_axi1_arburst => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      noc_fpd_axi_axi1_arlock => '0',
      noc_fpd_axi_axi1_arcache => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_fpd_axi_axi1_arid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      noc_fpd_axi_axi1_arprot => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      noc_fpd_axi_axi1_arvalid => '0',
      noc_fpd_axi_axi1_aruser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 18)),
      noc_fpd_axi_axi1_rready => '0',
      noc_fpd_axi_axi1_awqos => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_fpd_axi_axi1_awregion => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_fpd_axi_axi1_arqos => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_fpd_axi_axi1_arregion => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_cpm_pcie_axi0_araddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      noc_cpm_pcie_axi0_arburst => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      noc_cpm_pcie_axi0_arcache => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_cpm_pcie_axi0_arid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      noc_cpm_pcie_axi0_arlen => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      noc_cpm_pcie_axi0_arlock => '0',
      noc_cpm_pcie_axi0_arprot => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      noc_cpm_pcie_axi0_arqos => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_cpm_pcie_axi0_arregion => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_cpm_pcie_axi0_arsize => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      noc_cpm_pcie_axi0_aruser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 18)),
      noc_cpm_pcie_axi0_arvalid => '0',
      noc_cpm_pcie_axi0_awaddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      noc_cpm_pcie_axi0_awburst => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      noc_cpm_pcie_axi0_awcache => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_cpm_pcie_axi0_awid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      noc_cpm_pcie_axi0_awlen => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      noc_cpm_pcie_axi0_awlock => '0',
      noc_cpm_pcie_axi0_awprot => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      noc_cpm_pcie_axi0_awqos => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_cpm_pcie_axi0_awregion => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_cpm_pcie_axi0_awsize => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      noc_cpm_pcie_axi0_awuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 18)),
      noc_cpm_pcie_axi0_awvalid => '0',
      noc_cpm_pcie_axi0_bready => '0',
      noc_cpm_pcie_axi0_rready => '0',
      noc_cpm_pcie_axi0_wdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 128)),
      noc_cpm_pcie_axi0_wid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_cpm_pcie_axi0_wlast => '0',
      noc_cpm_pcie_axi0_wstrb => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      noc_cpm_pcie_axi0_wvalid => '0',
      pl_pmc_aux_ref_clk => '0',
      pl_fpd_aux_ref_clk => '0',
      pl_lpd_aux_ref_clk => '0',
      uart0_ctsn => '0',
      uart0_dcdn => '0',
      uart0_dsrn => '0',
      uart0_rin => '0',
      uart0_rxd => '0',
      fmio_uart0_sir_in => '0',
      uart1_ctsn => '0',
      uart1_dcdn => '0',
      uart1_dsrn => '0',
      uart1_rin => '0',
      uart1_rxd => '0',
      fmio_uart1_sir_in => '0',
      pmc_noc_axi0_araddr => pmc_noc_axi0_araddr,
      pmc_noc_axi0_arburst => pmc_noc_axi0_arburst,
      pmc_noc_axi0_arcache => pmc_noc_axi0_arcache,
      pmc_noc_axi0_arid => pmc_noc_axi0_arid,
      pmc_noc_axi0_arlen => pmc_noc_axi0_arlen,
      pmc_noc_axi0_arlock => pmc_noc_axi0_arlock,
      pmc_noc_axi0_arprot => pmc_noc_axi0_arprot,
      pmc_noc_axi0_arqos => pmc_noc_axi0_arqos,
      pmc_noc_axi0_arregion => pmc_noc_axi0_arregion,
      pmc_noc_axi0_arsize => pmc_noc_axi0_arsize,
      pmc_noc_axi0_aruser => pmc_noc_axi0_aruser,
      pmc_noc_axi0_arvalid => pmc_noc_axi0_arvalid,
      pmc_noc_axi0_awaddr => pmc_noc_axi0_awaddr,
      pmc_noc_axi0_awburst => pmc_noc_axi0_awburst,
      pmc_noc_axi0_awcache => pmc_noc_axi0_awcache,
      pmc_noc_axi0_awid => pmc_noc_axi0_awid,
      pmc_noc_axi0_awlen => pmc_noc_axi0_awlen,
      pmc_noc_axi0_awlock => pmc_noc_axi0_awlock,
      pmc_noc_axi0_awprot => pmc_noc_axi0_awprot,
      pmc_noc_axi0_awqos => pmc_noc_axi0_awqos,
      pmc_noc_axi0_awregion => pmc_noc_axi0_awregion,
      pmc_noc_axi0_awsize => pmc_noc_axi0_awsize,
      pmc_noc_axi0_awuser => pmc_noc_axi0_awuser,
      pmc_noc_axi0_awvalid => pmc_noc_axi0_awvalid,
      pmc_noc_axi0_bready => pmc_noc_axi0_bready,
      pmc_noc_axi0_rready => pmc_noc_axi0_rready,
      pmc_noc_axi0_wdata => pmc_noc_axi0_wdata,
      pmc_noc_axi0_wid => pmc_noc_axi0_wid,
      pmc_noc_axi0_wlast => pmc_noc_axi0_wlast,
      pmc_noc_axi0_wstrb => pmc_noc_axi0_wstrb,
      pmc_noc_axi0_wuser => pmc_noc_axi0_wuser,
      pmc_noc_axi0_wvalid => pmc_noc_axi0_wvalid,
      pmc_axi_noc_axi0_clk => pmc_axi_noc_axi0_clk,
      pmc_noc_axi0_arready => pmc_noc_axi0_arready,
      pmc_noc_axi0_awready => pmc_noc_axi0_awready,
      pmc_noc_axi0_bid => pmc_noc_axi0_bid,
      pmc_noc_axi0_bresp => pmc_noc_axi0_bresp,
      pmc_noc_axi0_buser => pmc_noc_axi0_buser,
      pmc_noc_axi0_bvalid => pmc_noc_axi0_bvalid,
      pmc_noc_axi0_rdata => pmc_noc_axi0_rdata,
      pmc_noc_axi0_rid => pmc_noc_axi0_rid,
      pmc_noc_axi0_rlast => pmc_noc_axi0_rlast,
      pmc_noc_axi0_rresp => pmc_noc_axi0_rresp,
      pmc_noc_axi0_ruser => pmc_noc_axi0_ruser,
      pmc_noc_axi0_rvalid => pmc_noc_axi0_rvalid,
      pmc_noc_axi0_wready => pmc_noc_axi0_wready,
      noc_pmc_axi0_araddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      noc_pmc_axi0_arburst => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      noc_pmc_axi0_arcache => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_pmc_axi0_arid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      noc_pmc_axi0_arlen => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      noc_pmc_axi0_arlock => '0',
      noc_pmc_axi0_arprot => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      noc_pmc_axi0_arqos => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_pmc_axi0_arregion => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_pmc_axi0_arsize => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      noc_pmc_axi0_aruser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 18)),
      noc_pmc_axi0_arvalid => '0',
      noc_pmc_axi0_awaddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      noc_pmc_axi0_awburst => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      noc_pmc_axi0_awcache => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_pmc_axi0_awid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      noc_pmc_axi0_awlen => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      noc_pmc_axi0_awlock => '0',
      noc_pmc_axi0_awprot => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      noc_pmc_axi0_awqos => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_pmc_axi0_awregion => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_pmc_axi0_awsize => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      noc_pmc_axi0_awuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 18)),
      noc_pmc_axi0_awvalid => '0',
      noc_pmc_axi0_bready => '0',
      noc_pmc_axi0_rready => '0',
      noc_pmc_axi0_wdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 128)),
      noc_pmc_axi0_wid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      noc_pmc_axi0_wlast => '0',
      noc_pmc_axi0_wstrb => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      noc_pmc_axi0_wuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 17)),
      noc_pmc_axi0_wvalid => '0',
      bscan_user1_usr_tdo => '0',
      bscan_user2_usr_tdo => '0',
      bscan_user3_usr_tdo => '0',
      bscan_user4_usr_tdo => '0',
      m_smmu_arready => '0',
      m_smmu_awready => '0',
      m_smmu_bready => '0',
      m_smmu_rready => '0',
      s_smmu_araddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 49)),
      s_smmu_arcache => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_smmu_arid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      s_smmu_arvalid => '0',
      s_smmu_awaddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 49)),
      s_smmu_awcache => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_smmu_awid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      s_smmu_awvalid => '0',
      smmu_ref_clk => '0',
      s_smmu_comprdid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      s_smmu_comprdval => '0',
      s_smmu_compwrid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      s_smmu_compwrval => '0',
      s_smmu_rns => '0',
      s_smmu_rsmid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 10)),
      s_smmu_wns => '0',
      s_smmu_wsmid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 10)),
      ps_pmc_from_core => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 12000)),
      dbg_sel => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      hsdp_ref_clk => '0',
      s_axis_hsdp_egress_tready => '0',
      s_axis_hsdp_ingress_tdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      s_axis_hsdp_ingress_tkeep => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      s_axis_hsdp_ingress_tlast => '0',
      s_axis_hsdp_ingress_tvalid => '0',
      pl_config_done => '0',
      sd0_dll_test_in => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      sd0_cd_n => '0',
      sd0_cmd_in => '0',
      sd0_data_in => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      sd0_wp => '0',
      sd0_rx_clk => '0',
      sd1_rx_clk => '0',
      sd1_dll_test_in => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      sd1_cd_n => '0',
      sd1_cmd_in => '0',
      sd1_data_in => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      sd1_wp => '0',
      pmc_pl_sysmon_i2c_scl_input => '0',
      pmc_pl_sysmon_i2c_sda_input => '0',
      lpd_swdt_wwdt_clk => '0',
      fpd_swdt_wwdt_clk => '0',
      atb_clk => '0',
      atbtbytes => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      pl_ps_atdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      pl_ps_atid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 7)),
      pl_ps_atvalid => '0',
      fmio_gem0_fifo_rx_clk_from_pl => '0',
      fmio_gem0_fifo_tx_clk_from_pl => '0',
      fmio_gem1_fifo_rx_clk_from_pl => '0',
      fmio_gem1_fifo_tx_clk_from_pl => '0',
      fmio_gem_tsu_clk_from_pl => '0',
      emio_enet_tsu_clk => '0',
      gem0_tsu_timer_cnt => gem0_tsu_timer_cnt,
      gem0_ext_int_in => '0',
      hsdp0_gt_rxn => '0',
      hsdp0_gt_rxp => '0',
      hsdp1_gt_rxn => '0',
      hsdp1_gt_rxp => '0',
      usrgsrb => '1',
      usrgtsb => '1',
      captureb => '1',
      captureclk => '1',
      chi0_clk => '0',
      chi1_clk => '0',
      pcie0_user_clk => pcie0_user_clk,
      pcie1_user_clk => pcie1_user_clk,
      pl_ref_clk => '0',
      dma0_axi_aresetn => dma0_axi_aresetn,
      dma0_soft_resetn => dma0_soft_resetn,
      pcie1_user_reset => pcie1_user_reset,
      cpm_cor_irq => cpm_cor_irq,
      cpm_irq0 => cpm_irq0,
      cpm_irq1 => cpm_irq1,
      cpm_misc_irq => cpm_misc_irq,
      cpm_uncor_irq => cpm_uncor_irq,
      dma0_irq => dma0_irq,
      chi0_reqflitpend => '0',
      chi0_reqflitv => '0',
      chi0_reqflit => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 121)),
      chi0_crsplcrdv => '0',
      chi0_rdatlcrdv => '0',
      chi0_snplcrdv => '0',
      chi0_srspflitpend => '0',
      chi0_srspflitv => '0',
      chi0_srspflit => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 51)),
      chi0_wdatflitpend => '0',
      chi0_wdatflitv => '0',
      chi0_wdatflit => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 705)),
      chi0_mlinkactivereq => '0',
      chi0_msactive => '0',
      chi0_slinkactiveack => '0',
      chi0_syscoreq => '0',
      chi1_reqflitpend => '0',
      chi1_reqflitv => '0',
      chi1_reqflit => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 121)),
      chi1_crsplcrdv => '0',
      chi1_rdatlcrdv => '0',
      chi1_snplcrdv => '0',
      chi1_srspflitpend => '0',
      chi1_srspflitv => '0',
      chi1_srspflit => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 51)),
      chi1_wdatflitpend => '0',
      chi1_wdatflitv => '0',
      chi1_wdatflit => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 705)),
      chi1_mlinkactivereq => '0',
      chi1_msactive => '0',
      chi1_slinkactiveack => '0',
      chi1_syscoreq => '0',
      dma0_m_axis_h2c_0_tready => '1',
      dma0_m_axis_h2c_1_tready => '1',
      dma0_m_axis_h2c_2_tready => '1',
      dma0_m_axis_h2c_3_tready => '1',
      dma0_s_axis_c2h_0_tdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 512)),
      dma0_s_axis_c2h_0_tkeep => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      dma0_s_axis_c2h_0_tlast => '0',
      dma0_s_axis_c2h_0_tuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      dma0_s_axis_c2h_0_tvalid => '0',
      dma0_s_axis_c2h_1_tdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 512)),
      dma0_s_axis_c2h_1_tkeep => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      dma0_s_axis_c2h_1_tlast => '0',
      dma0_s_axis_c2h_1_tuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      dma0_s_axis_c2h_1_tvalid => '0',
      dma0_s_axis_c2h_2_tdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 512)),
      dma0_s_axis_c2h_2_tkeep => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      dma0_s_axis_c2h_2_tlast => '0',
      dma0_s_axis_c2h_2_tuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      dma0_s_axis_c2h_2_tvalid => '0',
      dma0_s_axis_c2h_3_tdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 512)),
      dma0_s_axis_c2h_3_tkeep => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      dma0_s_axis_c2h_3_tlast => '0',
      dma0_s_axis_c2h_3_tuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      dma0_s_axis_c2h_3_tvalid => '0',
      pcie0_user_lnk_up => pcie0_user_lnk_up,
      pcie1_user_lnk_up => pcie1_user_lnk_up,
      pcie0_s_axis_rq_tdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 512)),
      pcie0_s_axis_rq_tkeep => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      pcie0_s_axis_rq_tlast => '0',
      pcie0_s_axis_rq_tuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 179)),
      pcie0_s_axis_rq_tvalid => '0',
      pcie0_s_axis_cc_tdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 512)),
      pcie0_s_axis_cc_tkeep => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      pcie0_s_axis_cc_tlast => '0',
      pcie0_s_axis_cc_tuser => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 81)),
      pcie0_s_axis_cc_tvalid => '0',
      pcie0_m_axis_rc_tready => '1',
      pcie0_m_axis_cq_tready => '1',
      pcie1_s_axis_rq_tdata => pcie1_s_axis_rq_tdata,
      pcie1_s_axis_rq_tkeep => pcie1_s_axis_rq_tkeep,
      pcie1_s_axis_rq_tlast => pcie1_s_axis_rq_tlast,
      pcie1_s_axis_rq_tuser => pcie1_s_axis_rq_tuser,
      pcie1_s_axis_rq_tvalid => pcie1_s_axis_rq_tvalid,
      pcie1_s_axis_rq_tready => pcie1_s_axis_rq_tready,
      pcie1_s_axis_cc_tdata => pcie1_s_axis_cc_tdata,
      pcie1_s_axis_cc_tkeep => pcie1_s_axis_cc_tkeep,
      pcie1_s_axis_cc_tlast => pcie1_s_axis_cc_tlast,
      pcie1_s_axis_cc_tuser => pcie1_s_axis_cc_tuser,
      pcie1_s_axis_cc_tvalid => pcie1_s_axis_cc_tvalid,
      pcie1_s_axis_cc_tready => pcie1_s_axis_cc_tready,
      pcie1_m_axis_rc_tdata => pcie1_m_axis_rc_tdata,
      pcie1_m_axis_rc_tkeep => pcie1_m_axis_rc_tkeep,
      pcie1_m_axis_rc_tlast => pcie1_m_axis_rc_tlast,
      pcie1_m_axis_rc_tuser => pcie1_m_axis_rc_tuser,
      pcie1_m_axis_rc_tvalid => pcie1_m_axis_rc_tvalid,
      pcie1_m_axis_rc_tready => pcie1_m_axis_rc_tready,
      pcie1_m_axis_cq_tdata => pcie1_m_axis_cq_tdata,
      pcie1_m_axis_cq_tkeep => pcie1_m_axis_cq_tkeep,
      pcie1_m_axis_cq_tlast => pcie1_m_axis_cq_tlast,
      pcie1_m_axis_cq_tuser => pcie1_m_axis_cq_tuser,
      pcie1_m_axis_cq_tvalid => pcie1_m_axis_cq_tvalid,
      pcie1_m_axis_cq_tready => pcie1_m_axis_cq_tready,
      pcie0_cfg_mgmt_addr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 10)),
      pcie0_cfg_mgmt_byte_en => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      pcie0_cfg_mgmt_debug_access => '0',
      pcie0_cfg_mgmt_read_en => '0',
      pcie0_cfg_mgmt_write_en => '0',
      pcie0_cfg_mgmt_write_data => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      pcie0_cfg_mgmt_function_number => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      pcie1_cfg_mgmt_addr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 10)),
      pcie1_cfg_mgmt_byte_en => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      pcie1_cfg_mgmt_debug_access => '0',
      pcie1_cfg_mgmt_read_en => '0',
      pcie1_cfg_mgmt_write_en => '0',
      pcie1_cfg_mgmt_write_data => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      pcie1_cfg_mgmt_function_number => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      pcie0_cfg_msg_transmit => '0',
      pcie0_cfg_msg_transmit_data => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      pcie0_cfg_msg_transmit_type => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      pcie1_cfg_msg_transmit => '0',
      pcie1_cfg_msg_transmit_data => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      pcie1_cfg_msg_transmit_type => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      pcie0_cfg_interrupt_int => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      pcie0_cfg_interrupt_pending => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      pcie1_cfg_interrupt_int => pcie1_cfg_interrupt_int,
      pcie1_cfg_interrupt_sent => pcie1_cfg_interrupt_sent,
      pcie1_cfg_interrupt_pending => pcie1_cfg_interrupt_pending,
      pcie0_cfg_fc_sel => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      pcie0_cfg_fc_vc_sel => '0',
      pcie1_cfg_fc_sel => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      pcie1_cfg_fc_vc_sel => '0',
      pcie0_cfg_err_cor_in => '0',
      pcie0_cfg_err_uncor_in => '0',
      pcie0_cfg_flr_done => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      pcie0_cfg_hot_reset_in => '0',
      pcie0_cfg_power_state_change_ack => '0',
      pcie0_cfg_vf_flr_done => '0',
      pcie0_cfg_vf_flr_func_num => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      pcie1_cfg_err_cor_in => '0',
      pcie1_cfg_err_uncor_in => '0',
      pcie1_cfg_flr_done => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      pcie1_cfg_hot_reset_in => '0',
      pcie1_cfg_power_state_change_ack => '0',
      pcie1_cfg_vf_flr_done => '0',
      pcie1_cfg_vf_flr_func_num => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      pcie0_cq_np_req => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      pcie1_cq_np_req => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      pcie0_cfg_ext_read_data => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      pcie0_cfg_ext_read_data_valid => '0',
      pcie1_cfg_ext_read_data => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      pcie1_cfg_ext_read_data_valid => '0',
      pcie0_edr_datarate_change_ack => '0',
      pcie1_edr_datarate_change_ack => '0',
      xdma0_usr_irq_req => xdma0_usr_irq_req,
      xdma0_usr_irq_ack => xdma0_usr_irq_ack,
      xdma0_usr_irq_fnc => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      dma0_usr_flr_done_fnc => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      dma0_usr_flr_done_vld => '0',
      dma0_mgmt_req_vld => '0',
      dma0_mgmt_req_dat => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      dma0_mgmt_req_adr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      dma0_mgmt_req_fnc => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      dma0_mgmt_req_msc => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 6)),
      dma0_mgmt_req_cmd => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      dma0_mgmt_cpl_rdy => '1',
      dma0_c2h_dsc_byp_0_src_addr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      dma0_c2h_dsc_byp_0_dst_addr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      dma0_c2h_dsc_byp_0_len => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 28)),
      dma0_c2h_dsc_byp_0_ctl => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      dma0_c2h_dsc_byp_0_load => '0',
      dma0_h2c_dsc_byp_0_src_addr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      dma0_h2c_dsc_byp_0_dst_addr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      dma0_h2c_dsc_byp_0_len => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 28)),
      dma0_h2c_dsc_byp_0_ctl => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      dma0_h2c_dsc_byp_0_load => '0',
      dma0_c2h_dsc_byp_1_src_addr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      dma0_c2h_dsc_byp_1_dst_addr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      dma0_c2h_dsc_byp_1_len => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 28)),
      dma0_c2h_dsc_byp_1_ctl => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      dma0_c2h_dsc_byp_1_load => '0',
      dma0_h2c_dsc_byp_1_src_addr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      dma0_h2c_dsc_byp_1_dst_addr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      dma0_h2c_dsc_byp_1_len => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 28)),
      dma0_h2c_dsc_byp_1_ctl => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      dma0_h2c_dsc_byp_1_load => '0',
      dma0_c2h_dsc_byp_2_src_addr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      dma0_c2h_dsc_byp_2_dst_addr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      dma0_c2h_dsc_byp_2_len => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 28)),
      dma0_c2h_dsc_byp_2_ctl => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      dma0_c2h_dsc_byp_2_load => '0',
      dma0_h2c_dsc_byp_2_src_addr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      dma0_h2c_dsc_byp_2_dst_addr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      dma0_h2c_dsc_byp_2_len => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 28)),
      dma0_h2c_dsc_byp_2_ctl => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      dma0_h2c_dsc_byp_2_load => '0',
      dma0_c2h_dsc_byp_3_src_addr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      dma0_c2h_dsc_byp_3_dst_addr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      dma0_c2h_dsc_byp_3_len => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 28)),
      dma0_c2h_dsc_byp_3_ctl => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      dma0_c2h_dsc_byp_3_load => '0',
      dma0_h2c_dsc_byp_3_src_addr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      dma0_h2c_dsc_byp_3_dst_addr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      dma0_h2c_dsc_byp_3_len => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 28)),
      dma0_h2c_dsc_byp_3_ctl => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      dma0_h2c_dsc_byp_3_load => '0',
      pcie0_cfg_msi_attr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      pcie0_cfg_msi_function_number => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      pcie0_cfg_msi_int_vector => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      pcie0_cfg_msi_pending_status => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      pcie0_cfg_msi_pending_status_data_enable => '0',
      pcie0_cfg_msi_pending_status_function_number => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      pcie0_cfg_msi_select => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      pcie0_cfg_msi_tph_present => '0',
      pcie0_cfg_msi_tph_st_tag => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      pcie0_cfg_msi_tph_type => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      pcie0_cfg_msix_attr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      pcie0_cfg_msix_function_number => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      pcie0_cfg_msix_mint_vector => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      pcie0_cfg_msix_tph_present => '0',
      pcie0_cfg_msix_tph_st_tag => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      pcie0_cfg_msix_tph_type => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      pcie0_cfg_msix_address => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      pcie0_cfg_msix_data => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      pcie0_cfg_msix_int_vector => '0',
      pcie0_cfg_msix_vec_pending => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      pcie1_cfg_msi_enable => pcie1_cfg_msi_enable,
      pcie1_cfg_msi_mmenable => pcie1_cfg_msi_mmenable,
      pcie1_cfg_msi_data => pcie1_cfg_msi_data,
      pcie1_cfg_msi_attr => pcie1_cfg_msi_attr,
      pcie1_cfg_msi_function_number => pcie1_cfg_msi_function_number,
      pcie1_cfg_msi_int_vector => pcie1_cfg_msi_int_vector,
      pcie1_cfg_msi_pending_status => pcie1_cfg_msi_pending_status,
      pcie1_cfg_msi_pending_status_data_enable => pcie1_cfg_msi_pending_status_data_enable,
      pcie1_cfg_msi_pending_status_function_number => pcie1_cfg_msi_pending_status_function_number,
      pcie1_cfg_msi_select => pcie1_cfg_msi_select,
      pcie1_cfg_msi_tph_present => pcie1_cfg_msi_tph_present,
      pcie1_cfg_msi_tph_st_tag => pcie1_cfg_msi_tph_st_tag,
      pcie1_cfg_msi_tph_type => pcie1_cfg_msi_tph_type,
      pcie1_cfg_msix_attr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      pcie1_cfg_msix_function_number => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      pcie1_cfg_msix_mint_vector => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      pcie1_cfg_msix_tph_present => '0',
      pcie1_cfg_msix_tph_st_tag => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      pcie1_cfg_msix_tph_type => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      pcie1_cfg_msix_address => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      pcie1_cfg_msix_data => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      pcie1_cfg_msix_int_vector => '0',
      pcie1_cfg_msix_vec_pending => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      pcie0_gt_rxn => pcie0_gt_rxn,
      pcie0_gt_rxp => pcie0_gt_rxp,
      pcie0_gt_txn => pcie0_gt_txn,
      pcie0_gt_txp => pcie0_gt_txp,
      pcie1_gt_rxn => pcie1_gt_rxn,
      pcie1_gt_rxp => pcie1_gt_rxp,
      pcie1_gt_txn => pcie1_gt_txn,
      pcie1_gt_txp => pcie1_gt_txp,
      gt_refclk0_n => gt_refclk0_n,
      gt_refclk0_p => gt_refclk0_p,
      gt_refclk1_n => gt_refclk1_n,
      gt_refclk1_p => gt_refclk1_p,
      dma0_st_rx_msg_rdy => dma0_st_rx_msg_rdy,
      dma0_st_rx_msg_data => dma0_st_rx_msg_data,
      dma0_st_rx_msg_valid => dma0_st_rx_msg_valid,
      dma0_st_rx_msg_last => dma0_st_rx_msg_last,
      dma0_s_axis_c2h_tdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 512)),
      dma0_s_axis_c2h_dpar => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      dma0_s_axis_c2h_ctrl_marker => '0',
      dma0_s_axis_c2h_ctrl_port_id => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      dma0_s_axis_c2h_ctrl_imm_data => '0',
      dma0_s_axis_c2h_ctrl_dis_cmpt => '0',
      dma0_s_axis_c2h_ctrl_user_trig => '0',
      dma0_s_axis_c2h_ctrl_qid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 11)),
      dma0_s_axis_c2h_ctrl_len => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      dma0_s_axis_c2h_tvalid => '0',
      dma0_s_axis_c2h_tlast => '0',
      dma0_s_axis_c2h_mty => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 6)),
      dma0_s_axis_c2h_cmpt_tdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 128)),
      dma0_s_axis_c2h_cmpt_type => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 2)),
      dma0_s_axis_c2h_cmpt_dpar => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      dma0_s_axis_c2h_cmpt_tvalid => '0',
      dma0_s_axis_c2h_cmpt_tlast => '0',
      dma0_m_axis_h2c_tready => '1',
      dma0_h2c_byp_out_rdy => '1',
      dma0_c2h_byp_out_rdy => '1',
      dma0_h2c_byp_in_mm_cidx => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      dma0_h2c_byp_in_mm_error => '0',
      dma0_h2c_byp_in_mm_func => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      dma0_h2c_byp_in_mm_len => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 28)),
      dma0_h2c_byp_in_mm_mrkr_req => '0',
      dma0_h2c_byp_in_mm_port_id => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      dma0_h2c_byp_in_mm_qid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 11)),
      dma0_h2c_byp_in_mm_radr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      dma0_h2c_byp_in_mm_sdi => '0',
      dma0_h2c_byp_in_mm_vld => '0',
      dma0_h2c_byp_in_mm_wadr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      dma0_h2c_byp_in_st_addr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      dma0_h2c_byp_in_st_cidx => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      dma0_h2c_byp_in_st_eop => '0',
      dma0_h2c_byp_in_st_error => '0',
      dma0_h2c_byp_in_st_func => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      dma0_h2c_byp_in_st_len => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      dma0_h2c_byp_in_st_mrkr_req => '0',
      dma0_h2c_byp_in_st_no_dma => '0',
      dma0_h2c_byp_in_st_port_id => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      dma0_h2c_byp_in_st_qid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 11)),
      dma0_h2c_byp_in_st_sdi => '0',
      dma0_h2c_byp_in_st_sop => '0',
      dma0_h2c_byp_in_st_vld => '0',
      dma0_c2h_byp_in_mm_cidx => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      dma0_c2h_byp_in_mm_error => '0',
      dma0_c2h_byp_in_mm_func => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      dma0_c2h_byp_in_mm_len => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 28)),
      dma0_c2h_byp_in_mm_mrkr_req => '0',
      dma0_c2h_byp_in_mm_port_id => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      dma0_c2h_byp_in_mm_qid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 11)),
      dma0_c2h_byp_in_mm_radr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      dma0_c2h_byp_in_mm_sdi => '0',
      dma0_c2h_byp_in_mm_vld => '0',
      dma0_c2h_byp_in_mm_wadr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      dma0_c2h_byp_in_st_sim_addr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      dma0_c2h_byp_in_st_sim_error => '0',
      dma0_c2h_byp_in_st_sim_func => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      dma0_c2h_byp_in_st_sim_port_id => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      dma0_c2h_byp_in_st_sim_qid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 11)),
      dma0_c2h_byp_in_st_sim_vld => '0',
      dma0_c2h_byp_in_st_csh_addr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 64)),
      dma0_c2h_byp_in_st_csh_error => '0',
      dma0_c2h_byp_in_st_csh_func => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      dma0_c2h_byp_in_st_csh_port_id => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 3)),
      dma0_c2h_byp_in_st_csh_qid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 11)),
      dma0_c2h_byp_in_st_csh_vld => '0',
      dma0_tm_dsc_sts_rdy => '1',
      dma0_dsc_crdt_in_vld => '0',
      dma0_dsc_crdt_in_sel => '0',
      dma0_dsc_crdt_in_qid => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 11)),
      dma0_dsc_crdt_in_crdt => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 16)),
      dma0_usr_irq_vld => '0',
      dma0_usr_irq_vec => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 5)),
      dma0_usr_irq_fnc => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 8)),
      pcie0_m_axis_dbg_tready => '1',
      pcie1_m_axis_dbg_tready => '1',
      pcie0_s_axis_dbg_tdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      pcie0_s_axis_dbg_tlast => '0',
      pcie0_s_axis_dbg_tvalid => '0',
      pcie1_s_axis_dbg_tdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      pcie1_s_axis_dbg_tlast => '0',
      pcie1_s_axis_dbg_tvalid => '0',
      pcie0_dbg_aclk => '0',
      pcie1_dbg_aclk => '0',
      pcie0_dbg_aresetn => '1',
      pcie1_dbg_aresetn => '1'
    );
END design_1_versal_cips_0_0_arch;
