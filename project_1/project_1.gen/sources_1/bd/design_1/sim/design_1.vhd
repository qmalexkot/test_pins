--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.3 (win64) Build 3173277 Wed Apr  7 05:07:49 MDT 2021
--Date        : Thu Jun 24 19:36:21 2021
--Host        : alexk-laptop running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    CNC_VSL_ALIGN_N : in STD_LOGIC;
    CNC_VSL_ALIGN_P : in STD_LOGIC;
    COMe_VSL_PCIE_grx_n : in STD_LOGIC_VECTOR ( 7 downto 0 );
    COMe_VSL_PCIE_grx_p : in STD_LOGIC_VECTOR ( 7 downto 0 );
    COMe_VSL_PCIE_gtx_n : out STD_LOGIC_VECTOR ( 7 downto 0 );
    COMe_VSL_PCIE_gtx_p : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CORE_RST : in STD_LOGIC;
    LMK_VSL_250M_CLK_IN_N : in STD_LOGIC;
    LMK_VSL_250M_CLK_IN_P : in STD_LOGIC;
    LMK_VSL_500M_CLK_IN_N : in STD_LOGIC;
    LMK_VSL_500M_CLK_IN_P : in STD_LOGIC;
    LMK_VSL_RFU_CLK_IN_N : in STD_LOGIC;
    LMK_VSL_RFU_CLK_IN_P : in STD_LOGIC;
    LVDS_706_n : in STD_LOGIC_VECTOR ( 23 downto 0 );
    LVDS_706_p : in STD_LOGIC_VECTOR ( 23 downto 0 );
    LVDS_707_n : in STD_LOGIC_VECTOR ( 17 downto 0 );
    LVDS_707_p : in STD_LOGIC_VECTOR ( 17 downto 0 );
    LVDS_708_n : in STD_LOGIC_VECTOR ( 21 downto 0 );
    LVDS_708_p : in STD_LOGIC_VECTOR ( 21 downto 0 );
    OMe_VSL1_PCIE_grx_n : in STD_LOGIC_VECTOR ( 7 downto 0 );
    OMe_VSL1_PCIE_grx_p : in STD_LOGIC_VECTOR ( 7 downto 0 );
    OMe_VSL1_PCIE_gtx_n : out STD_LOGIC_VECTOR ( 7 downto 0 );
    OMe_VSL1_PCIE_gtx_p : out STD_LOGIC_VECTOR ( 7 downto 0 );
    PCIe_0_REFCLK_clk_n : in STD_LOGIC;
    PCIe_0_REFCLK_clk_p : in STD_LOGIC;
    PCIe_1_REFCLK_clk_n : in STD_LOGIC;
    PCIe_1_REFCLK_clk_p : in STD_LOGIC;
    RD_CLK_706_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    RD_CLK_706_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    RD_CLK_707_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    RD_CLK_707_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    RD_CLK_708_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    RD_CLK_708_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    VSL_DIMM0_REF_CLK_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    VSL_DIMM0_REF_CLK_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    VSL_DIMM0_act_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    VSL_DIMM0_adr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    VSL_DIMM0_ba : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM0_bg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM0_ck_c : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM0_ck_t : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM0_cke : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM0_cs_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM0_dm_n : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    VSL_DIMM0_dq : inout STD_LOGIC_VECTOR ( 71 downto 0 );
    VSL_DIMM0_dqs_c : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    VSL_DIMM0_dqs_t : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    VSL_DIMM0_odt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM0_reset_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    VSL_DIMM1_REF_CLK_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    VSL_DIMM1_REF_CLK_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    VSL_DIMM1_act_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    VSL_DIMM1_adr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    VSL_DIMM1_ba : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM1_bg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM1_ck_c : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM1_ck_t : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM1_cke : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM1_cs_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM1_dm_n : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    VSL_DIMM1_dq : inout STD_LOGIC_VECTOR ( 71 downto 0 );
    VSL_DIMM1_dqs_c : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    VSL_DIMM1_dqs_t : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    VSL_DIMM1_odt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM1_reset_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    VSL_DIMM2_REF_CLK_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    VSL_DIMM2_REF_CLK_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    VSL_DIMM2_act_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    VSL_DIMM2_adr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    VSL_DIMM2_ba : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM2_bg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM2_ck_c : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM2_ck_t : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM2_cke : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM2_cs_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM2_dm_n : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    VSL_DIMM2_dq : inout STD_LOGIC_VECTOR ( 71 downto 0 );
    VSL_DIMM2_dqs_c : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    VSL_DIMM2_dqs_t : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    VSL_DIMM2_odt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM2_reset_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    XPLL_IN_n_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    XPLL_IN_p_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    XPLL_RST : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_axi_noc_0_0 is
  port (
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S01_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S02_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S02_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S02_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S02_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S02_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S03_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S03_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S03_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S03_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S03_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S03_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S03_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S04_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S04_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S04_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S04_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S04_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S04_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S04_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S05_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S05_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S05_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S05_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S05_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S05_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S05_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S05_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S05_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S05_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S05_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S05_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S05_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S05_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S05_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S06_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S06_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S06_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S06_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S06_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S06_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S06_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S06_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S06_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S06_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S06_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S06_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S06_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S06_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S06_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S06_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S06_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S06_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S06_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S06_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S06_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S06_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S07_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S07_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S07_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S07_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S07_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S07_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S07_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S07_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S07_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S07_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S07_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S07_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S07_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S07_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S07_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S07_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S07_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S07_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S07_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S07_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S07_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S07_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S07_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S07_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S07_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S07_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S07_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S07_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S07_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S07_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S07_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S07_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S07_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S07_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S07_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S08_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S08_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S08_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S08_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S08_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S08_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S08_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S08_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S08_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S08_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S08_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S08_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S08_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S08_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S08_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S08_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S08_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S08_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S08_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S08_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S08_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S08_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_INI_internoc : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_INI_internoc : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_INI_internoc : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_INI_internoc : out STD_LOGIC_VECTOR ( 0 to 0 );
    aclk0 : in STD_LOGIC;
    aclk1 : in STD_LOGIC;
    aclk2 : in STD_LOGIC;
    aclk3 : in STD_LOGIC;
    aclk4 : in STD_LOGIC;
    aclk5 : in STD_LOGIC;
    aclk6 : in STD_LOGIC;
    aclk7 : in STD_LOGIC;
    aclk8 : in STD_LOGIC;
    sys_clk0_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    sys_clk0_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_0_dq : inout STD_LOGIC_VECTOR ( 71 downto 0 );
    CH0_DDR4_0_dqs_t : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    CH0_DDR4_0_dqs_c : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    CH0_DDR4_0_adr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    CH0_DDR4_0_ba : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CH0_DDR4_0_bg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CH0_DDR4_0_act_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_0_reset_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_0_ck_t : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CH0_DDR4_0_ck_c : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CH0_DDR4_0_cke : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CH0_DDR4_0_cs_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CH0_DDR4_0_dm_n : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    CH0_DDR4_0_odt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S06_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S06_AXI_aruser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S06_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S06_AXI_awuser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S06_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S06_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S06_AXI_ruser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    S06_AXI_wid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S06_AXI_wuser : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_aruser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_awuser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_ruser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_wuser : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S05_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S05_AXI_aruser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S05_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S05_AXI_awuser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S05_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S05_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S05_AXI_ruser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    S05_AXI_wid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S05_AXI_wuser : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S01_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S01_AXI_aruser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S01_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S01_AXI_awuser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S01_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S01_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S01_AXI_ruser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    S01_AXI_wid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S01_AXI_wuser : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S02_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S02_AXI_aruser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S02_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S02_AXI_awuser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S02_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S02_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S02_AXI_ruser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    S02_AXI_wid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S02_AXI_wuser : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S03_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S03_AXI_aruser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S03_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S03_AXI_awuser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S03_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S03_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S03_AXI_ruser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    S03_AXI_wid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S03_AXI_wuser : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S04_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S04_AXI_aruser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S04_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S04_AXI_awuser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S04_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S04_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S04_AXI_ruser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    S04_AXI_wid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S04_AXI_wuser : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S07_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S07_AXI_aruser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S07_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S07_AXI_awuser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S07_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S07_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S07_AXI_ruser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    S07_AXI_wid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S07_AXI_wuser : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S08_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S08_AXI_aruser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S08_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S08_AXI_awuser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S08_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S08_AXI_buser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S08_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S08_AXI_ruser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    S08_AXI_wid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S08_AXI_wuser : in STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  end component design_1_axi_noc_0_0;
  component design_1_versal_cips_0_0 is
  port (
    fpd_cci_noc_axi0_clk : out STD_LOGIC;
    fpd_cci_noc_axi0_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fpd_cci_noc_axi0_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    fpd_cci_noc_axi0_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fpd_cci_noc_axi0_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    fpd_cci_noc_axi0_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    fpd_cci_noc_axi0_awlock : out STD_LOGIC;
    fpd_cci_noc_axi0_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fpd_cci_noc_axi0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    fpd_cci_noc_axi0_awvalid : out STD_LOGIC;
    fpd_cci_noc_axi0_awuser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    fpd_cci_noc_axi0_awready : in STD_LOGIC;
    fpd_cci_noc_axi0_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    fpd_cci_noc_axi0_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fpd_cci_noc_axi0_wuser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    fpd_cci_noc_axi0_wlast : out STD_LOGIC;
    fpd_cci_noc_axi0_wvalid : out STD_LOGIC;
    fpd_cci_noc_axi0_wready : in STD_LOGIC;
    fpd_cci_noc_axi0_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fpd_cci_noc_axi0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    fpd_cci_noc_axi0_bvalid : in STD_LOGIC;
    fpd_cci_noc_axi0_bready : out STD_LOGIC;
    fpd_cci_noc_axi0_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fpd_cci_noc_axi0_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    fpd_cci_noc_axi0_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fpd_cci_noc_axi0_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    fpd_cci_noc_axi0_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    fpd_cci_noc_axi0_arlock : out STD_LOGIC;
    fpd_cci_noc_axi0_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fpd_cci_noc_axi0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    fpd_cci_noc_axi0_arvalid : out STD_LOGIC;
    fpd_cci_noc_axi0_aruser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    fpd_cci_noc_axi0_arready : in STD_LOGIC;
    fpd_cci_noc_axi0_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fpd_cci_noc_axi0_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    fpd_cci_noc_axi0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    fpd_cci_noc_axi0_rlast : in STD_LOGIC;
    fpd_cci_noc_axi0_rvalid : in STD_LOGIC;
    fpd_cci_noc_axi0_rready : out STD_LOGIC;
    fpd_cci_noc_axi0_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fpd_cci_noc_axi0_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fpd_cci_noc_axi1_clk : out STD_LOGIC;
    fpd_cci_noc_axi1_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fpd_cci_noc_axi1_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    fpd_cci_noc_axi1_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fpd_cci_noc_axi1_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    fpd_cci_noc_axi1_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    fpd_cci_noc_axi1_awlock : out STD_LOGIC;
    fpd_cci_noc_axi1_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fpd_cci_noc_axi1_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    fpd_cci_noc_axi1_awvalid : out STD_LOGIC;
    fpd_cci_noc_axi1_awuser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    fpd_cci_noc_axi1_awready : in STD_LOGIC;
    fpd_cci_noc_axi1_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    fpd_cci_noc_axi1_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fpd_cci_noc_axi1_wuser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    fpd_cci_noc_axi1_wlast : out STD_LOGIC;
    fpd_cci_noc_axi1_wvalid : out STD_LOGIC;
    fpd_cci_noc_axi1_wready : in STD_LOGIC;
    fpd_cci_noc_axi1_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fpd_cci_noc_axi1_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    fpd_cci_noc_axi1_bvalid : in STD_LOGIC;
    fpd_cci_noc_axi1_bready : out STD_LOGIC;
    fpd_cci_noc_axi1_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fpd_cci_noc_axi1_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    fpd_cci_noc_axi1_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fpd_cci_noc_axi1_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    fpd_cci_noc_axi1_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    fpd_cci_noc_axi1_arlock : out STD_LOGIC;
    fpd_cci_noc_axi1_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fpd_cci_noc_axi1_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    fpd_cci_noc_axi1_arvalid : out STD_LOGIC;
    fpd_cci_noc_axi1_aruser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    fpd_cci_noc_axi1_arready : in STD_LOGIC;
    fpd_cci_noc_axi1_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fpd_cci_noc_axi1_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    fpd_cci_noc_axi1_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    fpd_cci_noc_axi1_rlast : in STD_LOGIC;
    fpd_cci_noc_axi1_rvalid : in STD_LOGIC;
    fpd_cci_noc_axi1_rready : out STD_LOGIC;
    fpd_cci_noc_axi1_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fpd_cci_noc_axi1_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fpd_cci_noc_axi2_clk : out STD_LOGIC;
    fpd_cci_noc_axi2_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fpd_cci_noc_axi2_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    fpd_cci_noc_axi2_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fpd_cci_noc_axi2_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    fpd_cci_noc_axi2_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    fpd_cci_noc_axi2_awlock : out STD_LOGIC;
    fpd_cci_noc_axi2_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fpd_cci_noc_axi2_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    fpd_cci_noc_axi2_awvalid : out STD_LOGIC;
    fpd_cci_noc_axi2_awuser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    fpd_cci_noc_axi2_awready : in STD_LOGIC;
    fpd_cci_noc_axi2_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    fpd_cci_noc_axi2_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fpd_cci_noc_axi2_wuser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    fpd_cci_noc_axi2_wlast : out STD_LOGIC;
    fpd_cci_noc_axi2_wvalid : out STD_LOGIC;
    fpd_cci_noc_axi2_wready : in STD_LOGIC;
    fpd_cci_noc_axi2_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fpd_cci_noc_axi2_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    fpd_cci_noc_axi2_bvalid : in STD_LOGIC;
    fpd_cci_noc_axi2_bready : out STD_LOGIC;
    fpd_cci_noc_axi2_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fpd_cci_noc_axi2_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    fpd_cci_noc_axi2_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fpd_cci_noc_axi2_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    fpd_cci_noc_axi2_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    fpd_cci_noc_axi2_arlock : out STD_LOGIC;
    fpd_cci_noc_axi2_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fpd_cci_noc_axi2_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    fpd_cci_noc_axi2_arvalid : out STD_LOGIC;
    fpd_cci_noc_axi2_aruser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    fpd_cci_noc_axi2_arready : in STD_LOGIC;
    fpd_cci_noc_axi2_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fpd_cci_noc_axi2_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    fpd_cci_noc_axi2_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    fpd_cci_noc_axi2_rlast : in STD_LOGIC;
    fpd_cci_noc_axi2_rvalid : in STD_LOGIC;
    fpd_cci_noc_axi2_rready : out STD_LOGIC;
    fpd_cci_noc_axi2_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fpd_cci_noc_axi2_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fpd_cci_noc_axi3_clk : out STD_LOGIC;
    fpd_cci_noc_axi3_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fpd_cci_noc_axi3_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    fpd_cci_noc_axi3_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fpd_cci_noc_axi3_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    fpd_cci_noc_axi3_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    fpd_cci_noc_axi3_awlock : out STD_LOGIC;
    fpd_cci_noc_axi3_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fpd_cci_noc_axi3_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    fpd_cci_noc_axi3_awvalid : out STD_LOGIC;
    fpd_cci_noc_axi3_awuser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    fpd_cci_noc_axi3_wuser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    fpd_cci_noc_axi3_awready : in STD_LOGIC;
    fpd_cci_noc_axi3_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    fpd_cci_noc_axi3_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fpd_cci_noc_axi3_wlast : out STD_LOGIC;
    fpd_cci_noc_axi3_wvalid : out STD_LOGIC;
    fpd_cci_noc_axi3_wready : in STD_LOGIC;
    fpd_cci_noc_axi3_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fpd_cci_noc_axi3_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    fpd_cci_noc_axi3_bvalid : in STD_LOGIC;
    fpd_cci_noc_axi3_bready : out STD_LOGIC;
    fpd_cci_noc_axi3_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fpd_cci_noc_axi3_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    fpd_cci_noc_axi3_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fpd_cci_noc_axi3_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    fpd_cci_noc_axi3_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    fpd_cci_noc_axi3_arlock : out STD_LOGIC;
    fpd_cci_noc_axi3_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fpd_cci_noc_axi3_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    fpd_cci_noc_axi3_arvalid : out STD_LOGIC;
    fpd_cci_noc_axi3_aruser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    fpd_cci_noc_axi3_arready : in STD_LOGIC;
    fpd_cci_noc_axi3_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fpd_cci_noc_axi3_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    fpd_cci_noc_axi3_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    fpd_cci_noc_axi3_rlast : in STD_LOGIC;
    fpd_cci_noc_axi3_rvalid : in STD_LOGIC;
    fpd_cci_noc_axi3_rready : out STD_LOGIC;
    fpd_cci_noc_axi3_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fpd_cci_noc_axi3_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fpd_axi_noc_axi0_clk : out STD_LOGIC;
    fpd_axi_noc_axi0_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fpd_axi_noc_axi0_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    fpd_axi_noc_axi0_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fpd_axi_noc_axi0_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    fpd_axi_noc_axi0_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    fpd_axi_noc_axi0_awlock : out STD_LOGIC;
    fpd_axi_noc_axi0_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fpd_axi_noc_axi0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    fpd_axi_noc_axi0_awvalid : out STD_LOGIC;
    fpd_axi_noc_axi0_awuser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    fpd_axi_noc_axi0_awready : in STD_LOGIC;
    fpd_axi_noc_axi0_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    fpd_axi_noc_axi0_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fpd_axi_noc_axi0_wlast : out STD_LOGIC;
    fpd_axi_noc_axi0_wvalid : out STD_LOGIC;
    fpd_axi_noc_axi0_wready : in STD_LOGIC;
    fpd_axi_noc_axi0_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fpd_axi_noc_axi0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    fpd_axi_noc_axi0_bvalid : in STD_LOGIC;
    fpd_axi_noc_axi0_bready : out STD_LOGIC;
    fpd_axi_noc_axi0_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fpd_axi_noc_axi0_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    fpd_axi_noc_axi0_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fpd_axi_noc_axi0_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    fpd_axi_noc_axi0_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    fpd_axi_noc_axi0_arlock : out STD_LOGIC;
    fpd_axi_noc_axi0_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fpd_axi_noc_axi0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    fpd_axi_noc_axi0_arvalid : out STD_LOGIC;
    fpd_axi_noc_axi0_aruser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    fpd_axi_noc_axi0_arready : in STD_LOGIC;
    fpd_axi_noc_axi0_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fpd_axi_noc_axi0_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    fpd_axi_noc_axi0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    fpd_axi_noc_axi0_rlast : in STD_LOGIC;
    fpd_axi_noc_axi0_rvalid : in STD_LOGIC;
    fpd_axi_noc_axi0_rready : out STD_LOGIC;
    fpd_axi_noc_axi0_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fpd_axi_noc_axi0_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cpm_pcie_noc_axi0_clk : out STD_LOGIC;
    cpm_pcie_noc_axi0_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    cpm_pcie_noc_axi0_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    cpm_pcie_noc_axi0_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cpm_pcie_noc_axi0_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    cpm_pcie_noc_axi0_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cpm_pcie_noc_axi0_awlock : out STD_LOGIC;
    cpm_pcie_noc_axi0_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cpm_pcie_noc_axi0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    cpm_pcie_noc_axi0_awvalid : out STD_LOGIC;
    cpm_pcie_noc_axi0_awuser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    cpm_pcie_noc_axi0_awready : in STD_LOGIC;
    cpm_pcie_noc_axi0_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    cpm_pcie_noc_axi0_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    cpm_pcie_noc_axi0_wlast : out STD_LOGIC;
    cpm_pcie_noc_axi0_wvalid : out STD_LOGIC;
    cpm_pcie_noc_axi0_wready : in STD_LOGIC;
    cpm_pcie_noc_axi0_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    cpm_pcie_noc_axi0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cpm_pcie_noc_axi0_bvalid : in STD_LOGIC;
    cpm_pcie_noc_axi0_bready : out STD_LOGIC;
    cpm_pcie_noc_axi0_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    cpm_pcie_noc_axi0_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    cpm_pcie_noc_axi0_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cpm_pcie_noc_axi0_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    cpm_pcie_noc_axi0_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cpm_pcie_noc_axi0_arlock : out STD_LOGIC;
    cpm_pcie_noc_axi0_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cpm_pcie_noc_axi0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    cpm_pcie_noc_axi0_arvalid : out STD_LOGIC;
    cpm_pcie_noc_axi0_aruser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    cpm_pcie_noc_axi0_arready : in STD_LOGIC;
    cpm_pcie_noc_axi0_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    cpm_pcie_noc_axi0_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    cpm_pcie_noc_axi0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cpm_pcie_noc_axi0_rlast : in STD_LOGIC;
    cpm_pcie_noc_axi0_rvalid : in STD_LOGIC;
    cpm_pcie_noc_axi0_rready : out STD_LOGIC;
    cpm_pcie_noc_axi0_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cpm_pcie_noc_axi0_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cpm_pcie_noc_axi1_clk : out STD_LOGIC;
    cpm_pcie_noc_axi1_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    cpm_pcie_noc_axi1_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    cpm_pcie_noc_axi1_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cpm_pcie_noc_axi1_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    cpm_pcie_noc_axi1_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cpm_pcie_noc_axi1_awlock : out STD_LOGIC;
    cpm_pcie_noc_axi1_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cpm_pcie_noc_axi1_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    cpm_pcie_noc_axi1_awvalid : out STD_LOGIC;
    cpm_pcie_noc_axi1_awuser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    cpm_pcie_noc_axi1_awready : in STD_LOGIC;
    cpm_pcie_noc_axi1_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    cpm_pcie_noc_axi1_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    cpm_pcie_noc_axi1_wlast : out STD_LOGIC;
    cpm_pcie_noc_axi1_wvalid : out STD_LOGIC;
    cpm_pcie_noc_axi1_wready : in STD_LOGIC;
    cpm_pcie_noc_axi1_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    cpm_pcie_noc_axi1_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cpm_pcie_noc_axi1_bvalid : in STD_LOGIC;
    cpm_pcie_noc_axi1_bready : out STD_LOGIC;
    cpm_pcie_noc_axi1_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    cpm_pcie_noc_axi1_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    cpm_pcie_noc_axi1_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cpm_pcie_noc_axi1_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    cpm_pcie_noc_axi1_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cpm_pcie_noc_axi1_arlock : out STD_LOGIC;
    cpm_pcie_noc_axi1_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cpm_pcie_noc_axi1_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    cpm_pcie_noc_axi1_arvalid : out STD_LOGIC;
    cpm_pcie_noc_axi1_aruser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    cpm_pcie_noc_axi1_arready : in STD_LOGIC;
    cpm_pcie_noc_axi1_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    cpm_pcie_noc_axi1_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    cpm_pcie_noc_axi1_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cpm_pcie_noc_axi1_rlast : in STD_LOGIC;
    cpm_pcie_noc_axi1_rvalid : in STD_LOGIC;
    cpm_pcie_noc_axi1_rready : out STD_LOGIC;
    cpm_pcie_noc_axi1_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cpm_pcie_noc_axi1_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    lpd_axi_noc_clk : out STD_LOGIC;
    noc_lpd_axi_axi0_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    noc_lpd_axi_axi0_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    noc_lpd_axi_axi0_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    noc_lpd_axi_axi0_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    noc_lpd_axi_axi0_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    noc_lpd_axi_axi0_awlock : out STD_LOGIC;
    noc_lpd_axi_axi0_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    noc_lpd_axi_axi0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    noc_lpd_axi_axi0_awvalid : out STD_LOGIC;
    noc_lpd_axi_axi0_awuser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    noc_lpd_axi_axi0_awready : in STD_LOGIC;
    noc_lpd_axi_axi0_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    noc_lpd_axi_axi0_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    noc_lpd_axi_axi0_wlast : out STD_LOGIC;
    noc_lpd_axi_axi0_wvalid : out STD_LOGIC;
    noc_lpd_axi_axi0_wready : in STD_LOGIC;
    noc_lpd_axi_axi0_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    noc_lpd_axi_axi0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    noc_lpd_axi_axi0_bvalid : in STD_LOGIC;
    noc_lpd_axi_axi0_bready : out STD_LOGIC;
    noc_lpd_axi_axi0_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    noc_lpd_axi_axi0_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    noc_lpd_axi_axi0_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    noc_lpd_axi_axi0_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    noc_lpd_axi_axi0_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    noc_lpd_axi_axi0_arlock : out STD_LOGIC;
    noc_lpd_axi_axi0_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    noc_lpd_axi_axi0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    noc_lpd_axi_axi0_arvalid : out STD_LOGIC;
    noc_lpd_axi_axi0_aruser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    noc_lpd_axi_axi0_arready : in STD_LOGIC;
    noc_lpd_axi_axi0_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    noc_lpd_axi_axi0_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    noc_lpd_axi_axi0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    noc_lpd_axi_axi0_rlast : in STD_LOGIC;
    noc_lpd_axi_axi0_rvalid : in STD_LOGIC;
    noc_lpd_axi_axi0_rready : out STD_LOGIC;
    noc_lpd_axi_axi0_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    noc_lpd_axi_axi0_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pmc_noc_axi0_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    pmc_noc_axi0_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pmc_noc_axi0_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pmc_noc_axi0_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pmc_noc_axi0_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pmc_noc_axi0_arlock : out STD_LOGIC;
    pmc_noc_axi0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    pmc_noc_axi0_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pmc_noc_axi0_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pmc_noc_axi0_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    pmc_noc_axi0_aruser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    pmc_noc_axi0_arvalid : out STD_LOGIC;
    pmc_noc_axi0_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    pmc_noc_axi0_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pmc_noc_axi0_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pmc_noc_axi0_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pmc_noc_axi0_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pmc_noc_axi0_awlock : out STD_LOGIC;
    pmc_noc_axi0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    pmc_noc_axi0_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pmc_noc_axi0_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pmc_noc_axi0_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    pmc_noc_axi0_awuser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    pmc_noc_axi0_awvalid : out STD_LOGIC;
    pmc_noc_axi0_bready : out STD_LOGIC;
    pmc_noc_axi0_rready : out STD_LOGIC;
    pmc_noc_axi0_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    pmc_noc_axi0_wid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pmc_noc_axi0_wlast : out STD_LOGIC;
    pmc_noc_axi0_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pmc_noc_axi0_wuser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    pmc_noc_axi0_wvalid : out STD_LOGIC;
    pmc_axi_noc_axi0_clk : out STD_LOGIC;
    pmc_noc_axi0_arready : in STD_LOGIC;
    pmc_noc_axi0_awready : in STD_LOGIC;
    pmc_noc_axi0_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pmc_noc_axi0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pmc_noc_axi0_buser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pmc_noc_axi0_bvalid : in STD_LOGIC;
    pmc_noc_axi0_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    pmc_noc_axi0_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pmc_noc_axi0_rlast : in STD_LOGIC;
    pmc_noc_axi0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pmc_noc_axi0_ruser : in STD_LOGIC_VECTOR ( 16 downto 0 );
    pmc_noc_axi0_rvalid : in STD_LOGIC;
    pmc_noc_axi0_wready : in STD_LOGIC;
    gem0_tsu_timer_cnt : out STD_LOGIC_VECTOR ( 93 downto 0 );
    pcie0_user_clk : out STD_LOGIC;
    pcie1_user_clk : out STD_LOGIC;
    dma0_axi_aresetn : out STD_LOGIC;
    dma0_soft_resetn : in STD_LOGIC;
    pcie1_user_reset : out STD_LOGIC;
    cpm_cor_irq : out STD_LOGIC;
    cpm_irq0 : in STD_LOGIC;
    cpm_irq1 : in STD_LOGIC;
    cpm_misc_irq : out STD_LOGIC;
    cpm_uncor_irq : out STD_LOGIC;
    dma0_irq : out STD_LOGIC;
    pcie0_user_lnk_up : out STD_LOGIC;
    pcie1_user_lnk_up : out STD_LOGIC;
    pcie1_s_axis_rq_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    pcie1_s_axis_rq_tkeep : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pcie1_s_axis_rq_tlast : in STD_LOGIC;
    pcie1_s_axis_rq_tuser : in STD_LOGIC_VECTOR ( 178 downto 0 );
    pcie1_s_axis_rq_tvalid : in STD_LOGIC;
    pcie1_s_axis_rq_tready : out STD_LOGIC;
    pcie1_s_axis_cc_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    pcie1_s_axis_cc_tkeep : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pcie1_s_axis_cc_tlast : in STD_LOGIC;
    pcie1_s_axis_cc_tuser : in STD_LOGIC_VECTOR ( 80 downto 0 );
    pcie1_s_axis_cc_tvalid : in STD_LOGIC;
    pcie1_s_axis_cc_tready : out STD_LOGIC;
    pcie1_m_axis_rc_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    pcie1_m_axis_rc_tkeep : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pcie1_m_axis_rc_tlast : out STD_LOGIC;
    pcie1_m_axis_rc_tuser : out STD_LOGIC_VECTOR ( 160 downto 0 );
    pcie1_m_axis_rc_tvalid : out STD_LOGIC;
    pcie1_m_axis_rc_tready : in STD_LOGIC;
    pcie1_m_axis_cq_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    pcie1_m_axis_cq_tkeep : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pcie1_m_axis_cq_tlast : out STD_LOGIC;
    pcie1_m_axis_cq_tuser : out STD_LOGIC_VECTOR ( 182 downto 0 );
    pcie1_m_axis_cq_tvalid : out STD_LOGIC;
    pcie1_m_axis_cq_tready : in STD_LOGIC;
    pcie1_cfg_interrupt_int : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie1_cfg_interrupt_sent : out STD_LOGIC;
    pcie1_cfg_interrupt_pending : in STD_LOGIC_VECTOR ( 3 downto 0 );
    xdma0_usr_irq_req : in STD_LOGIC_VECTOR ( 0 to 0 );
    xdma0_usr_irq_ack : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcie1_cfg_msi_enable : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie1_cfg_msi_mmenable : out STD_LOGIC_VECTOR ( 11 downto 0 );
    pcie1_cfg_msi_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pcie1_cfg_msi_attr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pcie1_cfg_msi_function_number : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pcie1_cfg_msi_int_vector : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pcie1_cfg_msi_pending_status : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pcie1_cfg_msi_pending_status_data_enable : in STD_LOGIC;
    pcie1_cfg_msi_pending_status_function_number : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pcie1_cfg_msi_select : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pcie1_cfg_msi_tph_present : in STD_LOGIC;
    pcie1_cfg_msi_tph_st_tag : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pcie1_cfg_msi_tph_type : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pcie0_gt_rxn : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pcie0_gt_rxp : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pcie0_gt_txn : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pcie0_gt_txp : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pcie1_gt_rxn : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pcie1_gt_rxp : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pcie1_gt_txn : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pcie1_gt_txp : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt_refclk0_n : in STD_LOGIC;
    gt_refclk0_p : in STD_LOGIC;
    gt_refclk1_n : in STD_LOGIC;
    gt_refclk1_p : in STD_LOGIC;
    dma0_st_rx_msg_rdy : in STD_LOGIC;
    dma0_st_rx_msg_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dma0_st_rx_msg_valid : out STD_LOGIC;
    dma0_st_rx_msg_last : out STD_LOGIC
  );
  end component design_1_versal_cips_0_0;
  component design_1_axi_noc_2_1 is
  port (
    S00_INI_internoc : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_INI_internoc : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_INI_internoc : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_INI_internoc : in STD_LOGIC_VECTOR ( 0 to 0 );
    sys_clk0_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    sys_clk0_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_0_dq : inout STD_LOGIC_VECTOR ( 71 downto 0 );
    CH0_DDR4_0_dqs_t : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    CH0_DDR4_0_dqs_c : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    CH0_DDR4_0_adr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    CH0_DDR4_0_ba : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CH0_DDR4_0_bg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CH0_DDR4_0_act_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_0_reset_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_0_ck_t : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CH0_DDR4_0_ck_c : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CH0_DDR4_0_cke : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CH0_DDR4_0_cs_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CH0_DDR4_0_dm_n : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    CH0_DDR4_0_odt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sys_clk1_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    sys_clk1_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_1_dq : inout STD_LOGIC_VECTOR ( 71 downto 0 );
    CH0_DDR4_1_dqs_t : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    CH0_DDR4_1_dqs_c : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    CH0_DDR4_1_adr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    CH0_DDR4_1_ba : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CH0_DDR4_1_bg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CH0_DDR4_1_act_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_1_reset_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_1_ck_t : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CH0_DDR4_1_ck_c : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CH0_DDR4_1_cke : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CH0_DDR4_1_cs_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CH0_DDR4_1_dm_n : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    CH0_DDR4_1_odt : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_axi_noc_2_1;
  component design_1_advanced_io_wizard_0_0 is
  port (
    intf_rdy : out STD_LOGIC;
    ctrl_clk : in STD_LOGIC;
    en_vtc : in STD_LOGIC;
    fifo_rd_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    bank0_pll_clkout0 : out STD_LOGIC;
    bank0_pll_clkout2 : out STD_LOGIC;
    bank0_pll_clkout3 : out STD_LOGIC;
    bank0_pll_clkoutphy : out STD_LOGIC;
    bank0_pll_locked : out STD_LOGIC;
    bank0_pll_rst_pll : in STD_LOGIC;
    bank1_pll_clkout0 : out STD_LOGIC;
    bank1_pll_clkout2 : out STD_LOGIC;
    bank1_pll_clkout3 : out STD_LOGIC;
    bank1_pll_clkoutphy : out STD_LOGIC;
    bank1_pll_locked : out STD_LOGIC;
    bank1_pll_rst_pll : in STD_LOGIC;
    bank2_pll_clkout0 : out STD_LOGIC;
    bank2_pll_clkout2 : out STD_LOGIC;
    bank2_pll_clkout3 : out STD_LOGIC;
    bank2_pll_clkoutphy : out STD_LOGIC;
    bank2_pll_locked : out STD_LOGIC;
    bank2_pll_rst_pll : in STD_LOGIC;
    dly_rdy : out STD_LOGIC;
    phy_rdy : out STD_LOGIC;
    fifo_empty : out STD_LOGIC;
    fifo_rd_en : in STD_LOGIC;
    LVDS_706_p : in STD_LOGIC_VECTOR ( 23 downto 0 );
    LVDS_706_n : in STD_LOGIC_VECTOR ( 23 downto 0 );
    data_to_fabric_LVDS_706 : out STD_LOGIC_VECTOR ( 95 downto 0 );
    RD_CLK_706_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    RD_CLK_706_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_to_fabric_RD_CLK_706 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    LVDS_707_p : in STD_LOGIC_VECTOR ( 17 downto 0 );
    LVDS_707_n : in STD_LOGIC_VECTOR ( 17 downto 0 );
    data_to_fabric_LVDS_707 : out STD_LOGIC_VECTOR ( 71 downto 0 );
    RD_CLK_707_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    RD_CLK_707_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_to_fabric_RD_CLK_707 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    LVDS_708_p : in STD_LOGIC_VECTOR ( 21 downto 0 );
    LVDS_708_n : in STD_LOGIC_VECTOR ( 21 downto 0 );
    data_to_fabric_LVDS_708 : out STD_LOGIC_VECTOR ( 87 downto 0 );
    RD_CLK_708_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    RD_CLK_708_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_to_fabric_RD_CLK_708 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    XPLL_IN_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    XPLL_IN_n : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_advanced_io_wizard_0_0;
  component design_1_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlconstant_0_0;
  component design_1_sys_clk_module_0_0 is
  port (
    CNC_VSL_ALIGN_N : in STD_LOGIC;
    CNC_VSL_ALIGN_P : in STD_LOGIC;
    LMK_VSL_250M_CLK_IN_N : in STD_LOGIC;
    LMK_VSL_250M_CLK_IN_P : in STD_LOGIC;
    LMK_VSL_500M_CLK_IN_N : in STD_LOGIC;
    LMK_VSL_500M_CLK_IN_P : in STD_LOGIC;
    LMK_VSL_RFU_CLK_IN_N : in STD_LOGIC;
    LMK_VSL_RFU_CLK_IN_P : in STD_LOGIC;
    clk_500m : out STD_LOGIC;
    clk_500m_vec : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_250m : out STD_LOGIC;
    clk_250m_direct : out STD_LOGIC
  );
  end component design_1_sys_clk_module_0_0;
  component design_1_FIFO_CTRL_0_0 is
  port (
    FIFO_EMPTY : in STD_LOGIC;
    INT_RDY : in STD_LOGIC;
    clk : in STD_LOGIC;
    FIFO_RD_EN : out STD_LOGIC
  );
  end component design_1_FIFO_CTRL_0_0;
  signal CNC_VSL_ALIGN_N_0_1 : STD_LOGIC;
  signal CNC_VSL_ALIGN_P_0_1 : STD_LOGIC;
  signal FIFO_CTRL_0_FIFO_RD_EN : STD_LOGIC;
  signal LMK_VSL_250M_CLK_IN_N_0_1 : STD_LOGIC;
  signal LMK_VSL_250M_CLK_IN_P_0_1 : STD_LOGIC;
  signal LMK_VSL_500M_CLK_IN_N_0_1 : STD_LOGIC;
  signal LMK_VSL_500M_CLK_IN_P_0_1 : STD_LOGIC;
  signal LMK_VSL_RFU_CLK_IN_N_0_1 : STD_LOGIC;
  signal LMK_VSL_RFU_CLK_IN_P_0_1 : STD_LOGIC;
  signal LVDS_706_n_0_1 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal LVDS_706_p_0_1 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal LVDS_707_n_0_1 : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal LVDS_707_p_0_1 : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal LVDS_708_n_0_1 : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal LVDS_708_p_0_1 : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal Net : STD_LOGIC;
  signal RD_CLK_706_n_0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal RD_CLK_706_p_0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal RD_CLK_707_n_0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal RD_CLK_707_p_0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal RD_CLK_708_n_0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal RD_CLK_708_p_0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal XPLL_IN_n_0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal XPLL_IN_p_0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal advanced_io_wizard_0_bank0_pll_clkout0 : STD_LOGIC;
  signal advanced_io_wizard_0_fifo_empty : STD_LOGIC;
  signal advanced_io_wizard_0_intf_rdy : STD_LOGIC;
  signal axi_noc_0_CH0_DDR4_0_ACT_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_noc_0_CH0_DDR4_0_ADR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal axi_noc_0_CH0_DDR4_0_BA : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_0_CH0_DDR4_0_BG : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_0_CH0_DDR4_0_CKE : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_0_CH0_DDR4_0_CK_C : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_0_CH0_DDR4_0_CK_T : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_0_CH0_DDR4_0_CS_N : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_0_CH0_DDR4_0_DM_N : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_noc_0_CH0_DDR4_0_DQ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal axi_noc_0_CH0_DDR4_0_DQS_C : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_noc_0_CH0_DDR4_0_DQS_T : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_noc_0_CH0_DDR4_0_ODT : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_0_CH0_DDR4_0_RESET_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_noc_0_M00_INI_INTERNOC : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_noc_0_M01_INI_INTERNOC : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_noc_0_M02_INI_INTERNOC : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_noc_0_M03_INI_INTERNOC : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_noc_2_CH0_DDR4_0_ACT_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_noc_2_CH0_DDR4_0_ADR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal axi_noc_2_CH0_DDR4_0_BA : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_2_CH0_DDR4_0_BG : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_2_CH0_DDR4_0_CKE : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_2_CH0_DDR4_0_CK_C : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_2_CH0_DDR4_0_CK_T : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_2_CH0_DDR4_0_CS_N : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_2_CH0_DDR4_0_DM_N : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_noc_2_CH0_DDR4_0_DQ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal axi_noc_2_CH0_DDR4_0_DQS_C : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_noc_2_CH0_DDR4_0_DQS_T : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_noc_2_CH0_DDR4_0_ODT : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_2_CH0_DDR4_0_RESET_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_noc_2_CH0_DDR4_1_ACT_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_noc_2_CH0_DDR4_1_ADR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal axi_noc_2_CH0_DDR4_1_BA : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_2_CH0_DDR4_1_BG : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_2_CH0_DDR4_1_CKE : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_2_CH0_DDR4_1_CK_C : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_2_CH0_DDR4_1_CK_T : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_2_CH0_DDR4_1_CS_N : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_2_CH0_DDR4_1_DM_N : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_noc_2_CH0_DDR4_1_DQ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal axi_noc_2_CH0_DDR4_1_DQS_C : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_noc_2_CH0_DDR4_1_DQS_T : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_noc_2_CH0_DDR4_1_ODT : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_2_CH0_DDR4_1_RESET_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal data_to_fabric_LVDS_706 : STD_LOGIC_VECTOR ( 95 downto 0 );
  attribute DEBUG : string;
  attribute DEBUG of data_to_fabric_LVDS_706 : signal is "true";
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of data_to_fabric_LVDS_706 : signal is std.standard.true;
  signal data_to_fabric_LVDS_707 : STD_LOGIC_VECTOR ( 71 downto 0 );
  attribute DEBUG of data_to_fabric_LVDS_707 : signal is "true";
  attribute MARK_DEBUG of data_to_fabric_LVDS_707 : signal is std.standard.true;
  signal data_to_fabric_LVDS_708 : STD_LOGIC_VECTOR ( 87 downto 0 );
  attribute DEBUG of data_to_fabric_LVDS_708 : signal is "true";
  attribute MARK_DEBUG of data_to_fabric_LVDS_708 : signal is std.standard.true;
  signal gt_refclk0_0_1_CLK_N : STD_LOGIC;
  signal gt_refclk0_0_1_CLK_P : STD_LOGIC;
  signal gt_refclk1_0_1_CLK_N : STD_LOGIC;
  signal gt_refclk1_0_1_CLK_P : STD_LOGIC;
  signal rst_0_1 : STD_LOGIC;
  signal sys_clk0_0_1_CLK_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sys_clk0_0_1_CLK_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sys_clk0_0_3_CLK_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sys_clk0_0_3_CLK_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sys_clk1_0_1_CLK_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sys_clk1_0_1_CLK_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal versal_cips_0_CPM_PCIE_NOC_0_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN : string;
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_ARADDR : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_ARBURST : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_ARCACHE : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_ARID : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_ARLEN : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_ARLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_ARLOCK : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_ARPROT : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_ARQOS : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_ARREADY : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_ARSIZE : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_ARUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_ARUSER : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_ARVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_ARVALID : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_AWADDR : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_AWBURST : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_AWCACHE : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_AWID : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_AWLEN : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_AWLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_AWLOCK : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_AWPROT : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_AWQOS : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_AWREADY : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_AWSIZE : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_AWUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_AWUSER : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_AWVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_AWVALID : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_BID : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_BREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_BREADY : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_BRESP : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_BVALID : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_RDATA : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_RID : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_RLAST : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_RREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_RREADY : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_RRESP : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_RVALID : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_WDATA : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_WLAST : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_WLAST : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_WREADY : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_WSTRB : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_0_WVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_0_WVALID : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_ARADDR : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_ARBURST : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_ARCACHE : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_ARID : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_ARLEN : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_ARLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_ARLOCK : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_ARPROT : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_ARQOS : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_ARREADY : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_ARSIZE : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_ARUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_ARUSER : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_ARVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_ARVALID : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_AWADDR : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_AWBURST : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_AWCACHE : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_AWID : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_AWLEN : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_AWLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_AWLOCK : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_AWPROT : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_AWQOS : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_AWREADY : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_AWSIZE : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_AWUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_AWUSER : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_AWVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_AWVALID : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_BID : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_BREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_BREADY : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_BRESP : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_BVALID : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_RDATA : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_RID : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_RLAST : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_RREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_RREADY : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_RRESP : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_RVALID : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_WDATA : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_WLAST : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_WLAST : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_WREADY : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_WSTRB : signal is "true";
  signal versal_cips_0_CPM_PCIE_NOC_1_WVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_CPM_PCIE_NOC_1_WVALID : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_ARADDR : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_ARBURST : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_ARCACHE : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_ARID : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_ARLEN : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_ARLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_ARLOCK : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_ARPROT : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_ARQOS : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_ARREADY : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_ARSIZE : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_ARUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_ARUSER : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_ARVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_ARVALID : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_AWADDR : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_AWBURST : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_AWCACHE : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_AWID : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_AWLEN : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_AWLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_AWLOCK : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_AWPROT : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_AWQOS : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_AWREADY : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_AWSIZE : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_AWUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_AWUSER : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_AWVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_AWVALID : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_BID : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_BREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_BREADY : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_BRESP : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_BVALID : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_RDATA : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_RID : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_RLAST : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_RREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_RREADY : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_RRESP : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_RVALID : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_WDATA : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_WLAST : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_WLAST : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_WREADY : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_WSTRB : signal is "true";
  signal versal_cips_0_FPD_AXI_NOC_0_WVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_AXI_NOC_0_WVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_ARADDR : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_ARBURST : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_ARCACHE : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_ARID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_ARLEN : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_ARLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_ARLOCK : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_ARPROT : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_ARQOS : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_ARREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_ARSIZE : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_ARUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_ARUSER : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_ARVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_ARVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_AWADDR : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_AWBURST : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_AWCACHE : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_AWID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_AWLEN : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_AWLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_AWLOCK : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_AWPROT : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_AWQOS : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_AWREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_AWSIZE : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_AWUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_AWUSER : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_AWVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_AWVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_BID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_BREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_BREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_BRESP : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_BVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_RDATA : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_RID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_RLAST : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_RREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_RREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_RRESP : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_RVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_WDATA : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_WLAST : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_WLAST : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_WREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_WSTRB : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_WUSER : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_WUSER : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_WVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_WVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_ARADDR : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_ARBURST : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_ARCACHE : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_ARID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_ARLEN : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_ARLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_ARLOCK : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_ARPROT : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_ARQOS : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_ARREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_ARSIZE : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_ARUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_ARUSER : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_ARVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_ARVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_AWADDR : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_AWBURST : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_AWCACHE : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_AWID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_AWLEN : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_AWLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_AWLOCK : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_AWPROT : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_AWQOS : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_AWREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_AWSIZE : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_AWUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_AWUSER : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_AWVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_AWVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_BID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_BREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_BREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_BRESP : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_BVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_RDATA : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_RID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_RLAST : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_RREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_RREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_RRESP : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_RVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_WDATA : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_WLAST : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_WLAST : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_WREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_WSTRB : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_WUSER : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_WUSER : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_WVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_WVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_ARADDR : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_ARBURST : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_ARCACHE : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_ARID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_ARLEN : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_ARLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_ARLOCK : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_ARPROT : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_ARQOS : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_ARREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_ARSIZE : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_ARUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_ARUSER : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_ARVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_ARVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_AWADDR : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_AWBURST : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_AWCACHE : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_AWID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_AWLEN : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_AWLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_AWLOCK : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_AWPROT : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_AWQOS : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_AWREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_AWSIZE : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_AWUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_AWUSER : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_AWVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_AWVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_BID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_BREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_BREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_BRESP : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_BVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_RDATA : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_RID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_RLAST : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_RREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_RREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_RRESP : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_RVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_WDATA : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_WLAST : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_WLAST : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_WREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_WSTRB : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_WUSER : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_WUSER : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_WVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_WVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_ARADDR : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_ARBURST : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_ARCACHE : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_ARID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_ARLEN : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_ARLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_ARLOCK : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_ARPROT : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_ARQOS : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_ARREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_ARSIZE : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_ARUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_ARUSER : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_ARVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_ARVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_AWADDR : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_AWBURST : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_AWCACHE : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_AWID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_AWLEN : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_AWLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_AWLOCK : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_AWPROT : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_AWQOS : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_AWREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_AWSIZE : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_AWUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_AWUSER : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_AWVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_AWVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_BID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_BREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_BREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_BRESP : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_BVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_RDATA : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_RID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_RLAST : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_RREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_RREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_RRESP : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_RVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_WDATA : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_WLAST : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_WLAST : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_WREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_WSTRB : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_WUSER : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_WUSER : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_WVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_WVALID : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_ARADDR : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_ARBURST : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_ARCACHE : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_ARID : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_ARLEN : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_ARLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_ARLOCK : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_ARPROT : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_ARQOS : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_ARREADY : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_ARSIZE : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_ARUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_ARUSER : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_ARVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_ARVALID : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_AWADDR : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_AWBURST : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_AWCACHE : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_AWID : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_AWLEN : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_AWLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_AWLOCK : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_AWPROT : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_AWQOS : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_AWREADY : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_AWSIZE : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_AWUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_AWUSER : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_AWVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_AWVALID : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_BID : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_BREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_BREADY : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_BRESP : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_BVALID : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_RDATA : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_RID : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_RLAST : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_RREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_RREADY : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_RRESP : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_RVALID : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_WDATA : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_WLAST : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_WLAST : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_WREADY : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_WSTRB : signal is "true";
  signal versal_cips_0_NOC_LPD_AXI_0_WVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_NOC_LPD_AXI_0_WVALID : signal is "true";
  signal versal_cips_0_PCIE0_GT_GRX_N : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal versal_cips_0_PCIE0_GT_GRX_P : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal versal_cips_0_PCIE0_GT_GTX_N : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal versal_cips_0_PCIE0_GT_GTX_P : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal versal_cips_0_PCIE1_GT_GRX_N : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal versal_cips_0_PCIE1_GT_GRX_P : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal versal_cips_0_PCIE1_GT_GTX_N : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal versal_cips_0_PCIE1_GT_GTX_P : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal versal_cips_0_PMC_NOC_AXI_0_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARADDR : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARBURST : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARCACHE : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARID : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARLEN : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARLOCK : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARPROT : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARQOS : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARREADY : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARREGION : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARSIZE : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARUSER : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARVALID : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWADDR : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWBURST : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWCACHE : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWID : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWLEN : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWLOCK : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWPROT : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWQOS : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWREADY : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWREGION : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWSIZE : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWUSER : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWVALID : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_BID : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_BREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_BREADY : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_BRESP : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_BUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_BUSER : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_BVALID : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_RDATA : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_RID : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_RLAST : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_RREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_RREADY : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_RRESP : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_RUSER : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_RUSER : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_RVALID : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_WDATA : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_WID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_WID : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_WLAST : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_WLAST : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_WREADY : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_WSTRB : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_WUSER : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_WUSER : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_WVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_WVALID : signal is "true";
  signal versal_cips_0_cpm_pcie_noc_axi0_clk : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_cpm_pcie_noc_axi0_clk : signal is "true";
  signal versal_cips_0_cpm_pcie_noc_axi1_clk : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_cpm_pcie_noc_axi1_clk : signal is "true";
  signal versal_cips_0_fpd_axi_noc_axi0_clk : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_fpd_axi_noc_axi0_clk : signal is "true";
  signal versal_cips_0_fpd_cci_noc_axi0_clk : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_fpd_cci_noc_axi0_clk : signal is "true";
  signal versal_cips_0_fpd_cci_noc_axi1_clk : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_fpd_cci_noc_axi1_clk : signal is "true";
  signal versal_cips_0_fpd_cci_noc_axi2_clk : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_fpd_cci_noc_axi2_clk : signal is "true";
  signal versal_cips_0_fpd_cci_noc_axi3_clk : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_fpd_cci_noc_axi3_clk : signal is "true";
  signal versal_cips_0_lpd_axi_noc_clk : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_lpd_axi_noc_clk : signal is "true";
  signal versal_cips_0_pmc_axi_noc_axi0_clk : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_pmc_axi_noc_axi0_clk : signal is "true";
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_advanced_io_wizard_0_bank0_pll_clkout2_UNCONNECTED : STD_LOGIC;
  signal NLW_advanced_io_wizard_0_bank0_pll_clkout3_UNCONNECTED : STD_LOGIC;
  signal NLW_advanced_io_wizard_0_bank0_pll_clkoutphy_UNCONNECTED : STD_LOGIC;
  signal NLW_advanced_io_wizard_0_bank0_pll_locked_UNCONNECTED : STD_LOGIC;
  signal NLW_advanced_io_wizard_0_bank1_pll_clkout0_UNCONNECTED : STD_LOGIC;
  signal NLW_advanced_io_wizard_0_bank1_pll_clkout2_UNCONNECTED : STD_LOGIC;
  signal NLW_advanced_io_wizard_0_bank1_pll_clkout3_UNCONNECTED : STD_LOGIC;
  signal NLW_advanced_io_wizard_0_bank1_pll_clkoutphy_UNCONNECTED : STD_LOGIC;
  signal NLW_advanced_io_wizard_0_bank1_pll_locked_UNCONNECTED : STD_LOGIC;
  signal NLW_advanced_io_wizard_0_bank2_pll_clkout0_UNCONNECTED : STD_LOGIC;
  signal NLW_advanced_io_wizard_0_bank2_pll_clkout2_UNCONNECTED : STD_LOGIC;
  signal NLW_advanced_io_wizard_0_bank2_pll_clkout3_UNCONNECTED : STD_LOGIC;
  signal NLW_advanced_io_wizard_0_bank2_pll_clkoutphy_UNCONNECTED : STD_LOGIC;
  signal NLW_advanced_io_wizard_0_bank2_pll_locked_UNCONNECTED : STD_LOGIC;
  signal NLW_advanced_io_wizard_0_dly_rdy_UNCONNECTED : STD_LOGIC;
  signal NLW_advanced_io_wizard_0_phy_rdy_UNCONNECTED : STD_LOGIC;
  signal NLW_advanced_io_wizard_0_data_to_fabric_RD_CLK_706_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_advanced_io_wizard_0_data_to_fabric_RD_CLK_707_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_advanced_io_wizard_0_data_to_fabric_RD_CLK_708_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_noc_0_S00_AXI_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_axi_noc_0_S01_AXI_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_axi_noc_0_S02_AXI_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_axi_noc_0_S03_AXI_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_axi_noc_0_S04_AXI_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_axi_noc_0_S05_AXI_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_axi_noc_0_S06_AXI_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_axi_noc_0_S07_AXI_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_sys_clk_module_0_clk_250m_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_clk_module_0_clk_250m_direct_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_clk_module_0_clk_500m_UNCONNECTED : STD_LOGIC;
  signal NLW_sys_clk_module_0_clk_500m_vec_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_versal_cips_0_cpm_cor_irq_UNCONNECTED : STD_LOGIC;
  signal NLW_versal_cips_0_cpm_misc_irq_UNCONNECTED : STD_LOGIC;
  signal NLW_versal_cips_0_cpm_uncor_irq_UNCONNECTED : STD_LOGIC;
  signal NLW_versal_cips_0_dma0_axi_aresetn_UNCONNECTED : STD_LOGIC;
  signal NLW_versal_cips_0_dma0_irq_UNCONNECTED : STD_LOGIC;
  signal NLW_versal_cips_0_dma0_st_rx_msg_last_UNCONNECTED : STD_LOGIC;
  signal NLW_versal_cips_0_dma0_st_rx_msg_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_versal_cips_0_pcie0_user_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_versal_cips_0_pcie0_user_lnk_up_UNCONNECTED : STD_LOGIC;
  signal NLW_versal_cips_0_pcie1_cfg_interrupt_sent_UNCONNECTED : STD_LOGIC;
  signal NLW_versal_cips_0_pcie1_m_axis_cq_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_versal_cips_0_pcie1_m_axis_cq_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_versal_cips_0_pcie1_m_axis_rc_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_versal_cips_0_pcie1_m_axis_rc_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_versal_cips_0_pcie1_s_axis_cc_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_versal_cips_0_pcie1_s_axis_rq_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_versal_cips_0_pcie1_user_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_versal_cips_0_pcie1_user_lnk_up_UNCONNECTED : STD_LOGIC;
  signal NLW_versal_cips_0_pcie1_user_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_versal_cips_0_dma0_st_rx_msg_data_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_versal_cips_0_gem0_tsu_timer_cnt_UNCONNECTED : STD_LOGIC_VECTOR ( 93 downto 0 );
  signal NLW_versal_cips_0_pcie1_cfg_msi_data_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_versal_cips_0_pcie1_cfg_msi_enable_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_versal_cips_0_pcie1_cfg_msi_mmenable_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_versal_cips_0_pcie1_m_axis_cq_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal NLW_versal_cips_0_pcie1_m_axis_cq_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_versal_cips_0_pcie1_m_axis_cq_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 182 downto 0 );
  signal NLW_versal_cips_0_pcie1_m_axis_rc_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal NLW_versal_cips_0_pcie1_m_axis_rc_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_versal_cips_0_pcie1_m_axis_rc_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 160 downto 0 );
  signal NLW_versal_cips_0_xdma0_usr_irq_ack_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CORE_RST : signal is "xilinx.com:signal:reset:1.0 RST.CORE_RST RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CORE_RST : signal is "XIL_INTERFACENAME RST.CORE_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of PCIe_0_REFCLK_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 PCIe_0_REFCLK CLK_N";
  attribute X_INTERFACE_PARAMETER of PCIe_0_REFCLK_clk_n : signal is "XIL_INTERFACENAME PCIe_0_REFCLK, CAN_DEBUG false, FREQ_HZ 100000000";
  attribute X_INTERFACE_INFO of PCIe_0_REFCLK_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 PCIe_0_REFCLK CLK_P";
  attribute X_INTERFACE_INFO of PCIe_1_REFCLK_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 PCIe_1_REFCLK CLK_N";
  attribute X_INTERFACE_PARAMETER of PCIe_1_REFCLK_clk_n : signal is "XIL_INTERFACENAME PCIe_1_REFCLK, CAN_DEBUG false, FREQ_HZ 100000000";
  attribute X_INTERFACE_INFO of PCIe_1_REFCLK_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 PCIe_1_REFCLK CLK_P";
  attribute X_INTERFACE_INFO of COMe_VSL_PCIE_grx_n : signal is "xilinx.com:interface:gt:1.0 COMe_VSL_PCIE GRX_N";
  attribute X_INTERFACE_PARAMETER of COMe_VSL_PCIE_grx_n : signal is "XIL_INTERFACENAME COMe_VSL_PCIE, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of COMe_VSL_PCIE_grx_p : signal is "xilinx.com:interface:gt:1.0 COMe_VSL_PCIE GRX_P";
  attribute X_INTERFACE_INFO of COMe_VSL_PCIE_gtx_n : signal is "xilinx.com:interface:gt:1.0 COMe_VSL_PCIE GTX_N";
  attribute X_INTERFACE_INFO of COMe_VSL_PCIE_gtx_p : signal is "xilinx.com:interface:gt:1.0 COMe_VSL_PCIE GTX_P";
  attribute X_INTERFACE_INFO of OMe_VSL1_PCIE_grx_n : signal is "xilinx.com:interface:gt:1.0 OMe_VSL1_PCIE GRX_N";
  attribute X_INTERFACE_PARAMETER of OMe_VSL1_PCIE_grx_n : signal is "XIL_INTERFACENAME OMe_VSL1_PCIE, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of OMe_VSL1_PCIE_grx_p : signal is "xilinx.com:interface:gt:1.0 OMe_VSL1_PCIE GRX_P";
  attribute X_INTERFACE_INFO of OMe_VSL1_PCIE_gtx_n : signal is "xilinx.com:interface:gt:1.0 OMe_VSL1_PCIE GTX_N";
  attribute X_INTERFACE_INFO of OMe_VSL1_PCIE_gtx_p : signal is "xilinx.com:interface:gt:1.0 OMe_VSL1_PCIE GTX_P";
  attribute X_INTERFACE_INFO of VSL_DIMM0_REF_CLK_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 VSL_DIMM0_REF_CLK CLK_N";
  attribute X_INTERFACE_PARAMETER of VSL_DIMM0_REF_CLK_clk_n : signal is "XIL_INTERFACENAME VSL_DIMM0_REF_CLK, CAN_DEBUG false, FREQ_HZ 250000000";
  attribute X_INTERFACE_INFO of VSL_DIMM0_REF_CLK_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 VSL_DIMM0_REF_CLK CLK_P";
  attribute X_INTERFACE_INFO of VSL_DIMM0_act_n : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM0 ACT_N";
  attribute X_INTERFACE_PARAMETER of VSL_DIMM0_act_n : signal is "XIL_INTERFACENAME VSL_DIMM0, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of VSL_DIMM0_adr : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM0 ADR";
  attribute X_INTERFACE_INFO of VSL_DIMM0_ba : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM0 BA";
  attribute X_INTERFACE_INFO of VSL_DIMM0_bg : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM0 BG";
  attribute X_INTERFACE_INFO of VSL_DIMM0_ck_c : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM0 CK_C";
  attribute X_INTERFACE_INFO of VSL_DIMM0_ck_t : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM0 CK_T";
  attribute X_INTERFACE_INFO of VSL_DIMM0_cke : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM0 CKE";
  attribute X_INTERFACE_INFO of VSL_DIMM0_cs_n : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM0 CS_N";
  attribute X_INTERFACE_INFO of VSL_DIMM0_dm_n : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM0 DM_N";
  attribute X_INTERFACE_INFO of VSL_DIMM0_dq : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM0 DQ";
  attribute X_INTERFACE_INFO of VSL_DIMM0_dqs_c : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM0 DQS_C";
  attribute X_INTERFACE_INFO of VSL_DIMM0_dqs_t : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM0 DQS_T";
  attribute X_INTERFACE_INFO of VSL_DIMM0_odt : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM0 ODT";
  attribute X_INTERFACE_INFO of VSL_DIMM0_reset_n : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM0 RESET_N";
  attribute X_INTERFACE_INFO of VSL_DIMM1_REF_CLK_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 VSL_DIMM1_REF_CLK CLK_N";
  attribute X_INTERFACE_PARAMETER of VSL_DIMM1_REF_CLK_clk_n : signal is "XIL_INTERFACENAME VSL_DIMM1_REF_CLK, CAN_DEBUG false, FREQ_HZ 250000000";
  attribute X_INTERFACE_INFO of VSL_DIMM1_REF_CLK_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 VSL_DIMM1_REF_CLK CLK_P";
  attribute X_INTERFACE_INFO of VSL_DIMM1_act_n : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM1 ACT_N";
  attribute X_INTERFACE_PARAMETER of VSL_DIMM1_act_n : signal is "XIL_INTERFACENAME VSL_DIMM1, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of VSL_DIMM1_adr : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM1 ADR";
  attribute X_INTERFACE_INFO of VSL_DIMM1_ba : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM1 BA";
  attribute X_INTERFACE_INFO of VSL_DIMM1_bg : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM1 BG";
  attribute X_INTERFACE_INFO of VSL_DIMM1_ck_c : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM1 CK_C";
  attribute X_INTERFACE_INFO of VSL_DIMM1_ck_t : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM1 CK_T";
  attribute X_INTERFACE_INFO of VSL_DIMM1_cke : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM1 CKE";
  attribute X_INTERFACE_INFO of VSL_DIMM1_cs_n : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM1 CS_N";
  attribute X_INTERFACE_INFO of VSL_DIMM1_dm_n : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM1 DM_N";
  attribute X_INTERFACE_INFO of VSL_DIMM1_dq : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM1 DQ";
  attribute X_INTERFACE_INFO of VSL_DIMM1_dqs_c : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM1 DQS_C";
  attribute X_INTERFACE_INFO of VSL_DIMM1_dqs_t : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM1 DQS_T";
  attribute X_INTERFACE_INFO of VSL_DIMM1_odt : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM1 ODT";
  attribute X_INTERFACE_INFO of VSL_DIMM1_reset_n : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM1 RESET_N";
  attribute X_INTERFACE_INFO of VSL_DIMM2_REF_CLK_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 VSL_DIMM2_REF_CLK CLK_N";
  attribute X_INTERFACE_PARAMETER of VSL_DIMM2_REF_CLK_clk_n : signal is "XIL_INTERFACENAME VSL_DIMM2_REF_CLK, CAN_DEBUG false, FREQ_HZ 250000000";
  attribute X_INTERFACE_INFO of VSL_DIMM2_REF_CLK_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 VSL_DIMM2_REF_CLK CLK_P";
  attribute X_INTERFACE_INFO of VSL_DIMM2_act_n : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM2 ACT_N";
  attribute X_INTERFACE_PARAMETER of VSL_DIMM2_act_n : signal is "XIL_INTERFACENAME VSL_DIMM2, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of VSL_DIMM2_adr : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM2 ADR";
  attribute X_INTERFACE_INFO of VSL_DIMM2_ba : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM2 BA";
  attribute X_INTERFACE_INFO of VSL_DIMM2_bg : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM2 BG";
  attribute X_INTERFACE_INFO of VSL_DIMM2_ck_c : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM2 CK_C";
  attribute X_INTERFACE_INFO of VSL_DIMM2_ck_t : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM2 CK_T";
  attribute X_INTERFACE_INFO of VSL_DIMM2_cke : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM2 CKE";
  attribute X_INTERFACE_INFO of VSL_DIMM2_cs_n : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM2 CS_N";
  attribute X_INTERFACE_INFO of VSL_DIMM2_dm_n : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM2 DM_N";
  attribute X_INTERFACE_INFO of VSL_DIMM2_dq : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM2 DQ";
  attribute X_INTERFACE_INFO of VSL_DIMM2_dqs_c : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM2 DQS_C";
  attribute X_INTERFACE_INFO of VSL_DIMM2_dqs_t : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM2 DQS_T";
  attribute X_INTERFACE_INFO of VSL_DIMM2_odt : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM2 ODT";
  attribute X_INTERFACE_INFO of VSL_DIMM2_reset_n : signal is "xilinx.com:interface:ddr4:1.0 VSL_DIMM2 RESET_N";
begin
  CNC_VSL_ALIGN_N_0_1 <= CNC_VSL_ALIGN_N;
  CNC_VSL_ALIGN_P_0_1 <= CNC_VSL_ALIGN_P;
  COMe_VSL_PCIE_gtx_n(7 downto 0) <= versal_cips_0_PCIE0_GT_GTX_N(7 downto 0);
  COMe_VSL_PCIE_gtx_p(7 downto 0) <= versal_cips_0_PCIE0_GT_GTX_P(7 downto 0);
  LMK_VSL_250M_CLK_IN_N_0_1 <= LMK_VSL_250M_CLK_IN_N;
  LMK_VSL_250M_CLK_IN_P_0_1 <= LMK_VSL_250M_CLK_IN_P;
  LMK_VSL_500M_CLK_IN_N_0_1 <= LMK_VSL_500M_CLK_IN_N;
  LMK_VSL_500M_CLK_IN_P_0_1 <= LMK_VSL_500M_CLK_IN_P;
  LMK_VSL_RFU_CLK_IN_N_0_1 <= LMK_VSL_RFU_CLK_IN_N;
  LMK_VSL_RFU_CLK_IN_P_0_1 <= LMK_VSL_RFU_CLK_IN_P;
  LVDS_706_n_0_1(23 downto 0) <= LVDS_706_n(23 downto 0);
  LVDS_706_p_0_1(23 downto 0) <= LVDS_706_p(23 downto 0);
  LVDS_707_n_0_1(17 downto 0) <= LVDS_707_n(17 downto 0);
  LVDS_707_p_0_1(17 downto 0) <= LVDS_707_p(17 downto 0);
  LVDS_708_n_0_1(21 downto 0) <= LVDS_708_n(21 downto 0);
  LVDS_708_p_0_1(21 downto 0) <= LVDS_708_p(21 downto 0);
  Net <= XPLL_RST;
  OMe_VSL1_PCIE_gtx_n(7 downto 0) <= versal_cips_0_PCIE1_GT_GTX_N(7 downto 0);
  OMe_VSL1_PCIE_gtx_p(7 downto 0) <= versal_cips_0_PCIE1_GT_GTX_P(7 downto 0);
  RD_CLK_706_n_0_1(0) <= RD_CLK_706_n(0);
  RD_CLK_706_p_0_1(0) <= RD_CLK_706_p(0);
  RD_CLK_707_n_0_1(0) <= RD_CLK_707_n(0);
  RD_CLK_707_p_0_1(0) <= RD_CLK_707_p(0);
  RD_CLK_708_n_0_1(0) <= RD_CLK_708_n(0);
  RD_CLK_708_p_0_1(0) <= RD_CLK_708_p(0);
  VSL_DIMM0_act_n(0) <= axi_noc_0_CH0_DDR4_0_ACT_N(0);
  VSL_DIMM0_adr(16 downto 0) <= axi_noc_0_CH0_DDR4_0_ADR(16 downto 0);
  VSL_DIMM0_ba(1 downto 0) <= axi_noc_0_CH0_DDR4_0_BA(1 downto 0);
  VSL_DIMM0_bg(1 downto 0) <= axi_noc_0_CH0_DDR4_0_BG(1 downto 0);
  VSL_DIMM0_ck_c(1 downto 0) <= axi_noc_0_CH0_DDR4_0_CK_C(1 downto 0);
  VSL_DIMM0_ck_t(1 downto 0) <= axi_noc_0_CH0_DDR4_0_CK_T(1 downto 0);
  VSL_DIMM0_cke(1 downto 0) <= axi_noc_0_CH0_DDR4_0_CKE(1 downto 0);
  VSL_DIMM0_cs_n(1 downto 0) <= axi_noc_0_CH0_DDR4_0_CS_N(1 downto 0);
  VSL_DIMM0_odt(1 downto 0) <= axi_noc_0_CH0_DDR4_0_ODT(1 downto 0);
  VSL_DIMM0_reset_n(0) <= axi_noc_0_CH0_DDR4_0_RESET_N(0);
  VSL_DIMM1_act_n(0) <= axi_noc_2_CH0_DDR4_0_ACT_N(0);
  VSL_DIMM1_adr(16 downto 0) <= axi_noc_2_CH0_DDR4_0_ADR(16 downto 0);
  VSL_DIMM1_ba(1 downto 0) <= axi_noc_2_CH0_DDR4_0_BA(1 downto 0);
  VSL_DIMM1_bg(1 downto 0) <= axi_noc_2_CH0_DDR4_0_BG(1 downto 0);
  VSL_DIMM1_ck_c(1 downto 0) <= axi_noc_2_CH0_DDR4_0_CK_C(1 downto 0);
  VSL_DIMM1_ck_t(1 downto 0) <= axi_noc_2_CH0_DDR4_0_CK_T(1 downto 0);
  VSL_DIMM1_cke(1 downto 0) <= axi_noc_2_CH0_DDR4_0_CKE(1 downto 0);
  VSL_DIMM1_cs_n(1 downto 0) <= axi_noc_2_CH0_DDR4_0_CS_N(1 downto 0);
  VSL_DIMM1_odt(1 downto 0) <= axi_noc_2_CH0_DDR4_0_ODT(1 downto 0);
  VSL_DIMM1_reset_n(0) <= axi_noc_2_CH0_DDR4_0_RESET_N(0);
  VSL_DIMM2_act_n(0) <= axi_noc_2_CH0_DDR4_1_ACT_N(0);
  VSL_DIMM2_adr(16 downto 0) <= axi_noc_2_CH0_DDR4_1_ADR(16 downto 0);
  VSL_DIMM2_ba(1 downto 0) <= axi_noc_2_CH0_DDR4_1_BA(1 downto 0);
  VSL_DIMM2_bg(1 downto 0) <= axi_noc_2_CH0_DDR4_1_BG(1 downto 0);
  VSL_DIMM2_ck_c(1 downto 0) <= axi_noc_2_CH0_DDR4_1_CK_C(1 downto 0);
  VSL_DIMM2_ck_t(1 downto 0) <= axi_noc_2_CH0_DDR4_1_CK_T(1 downto 0);
  VSL_DIMM2_cke(1 downto 0) <= axi_noc_2_CH0_DDR4_1_CKE(1 downto 0);
  VSL_DIMM2_cs_n(1 downto 0) <= axi_noc_2_CH0_DDR4_1_CS_N(1 downto 0);
  VSL_DIMM2_odt(1 downto 0) <= axi_noc_2_CH0_DDR4_1_ODT(1 downto 0);
  VSL_DIMM2_reset_n(0) <= axi_noc_2_CH0_DDR4_1_RESET_N(0);
  XPLL_IN_n_0_1(0) <= XPLL_IN_n_0(0);
  XPLL_IN_p_0_1(0) <= XPLL_IN_p_0(0);
  gt_refclk0_0_1_CLK_N <= PCIe_0_REFCLK_clk_n;
  gt_refclk0_0_1_CLK_P <= PCIe_0_REFCLK_clk_p;
  gt_refclk1_0_1_CLK_N <= PCIe_1_REFCLK_clk_n;
  gt_refclk1_0_1_CLK_P <= PCIe_1_REFCLK_clk_p;
  rst_0_1 <= CORE_RST;
  sys_clk0_0_1_CLK_N(0) <= VSL_DIMM0_REF_CLK_clk_n(0);
  sys_clk0_0_1_CLK_P(0) <= VSL_DIMM0_REF_CLK_clk_p(0);
  sys_clk0_0_3_CLK_N(0) <= VSL_DIMM1_REF_CLK_clk_n(0);
  sys_clk0_0_3_CLK_P(0) <= VSL_DIMM1_REF_CLK_clk_p(0);
  sys_clk1_0_1_CLK_N(0) <= VSL_DIMM2_REF_CLK_clk_n(0);
  sys_clk1_0_1_CLK_P(0) <= VSL_DIMM2_REF_CLK_clk_p(0);
  versal_cips_0_PCIE0_GT_GRX_N(7 downto 0) <= COMe_VSL_PCIE_grx_n(7 downto 0);
  versal_cips_0_PCIE0_GT_GRX_P(7 downto 0) <= COMe_VSL_PCIE_grx_p(7 downto 0);
  versal_cips_0_PCIE1_GT_GRX_N(7 downto 0) <= OMe_VSL1_PCIE_grx_n(7 downto 0);
  versal_cips_0_PCIE1_GT_GRX_P(7 downto 0) <= OMe_VSL1_PCIE_grx_p(7 downto 0);
FIFO_CTRL_0: component design_1_FIFO_CTRL_0_0
     port map (
      FIFO_EMPTY => advanced_io_wizard_0_fifo_empty,
      FIFO_RD_EN => FIFO_CTRL_0_FIFO_RD_EN,
      INT_RDY => advanced_io_wizard_0_intf_rdy,
      clk => advanced_io_wizard_0_bank0_pll_clkout0
    );
advanced_io_wizard_0: component design_1_advanced_io_wizard_0_0
     port map (
      LVDS_706_n(23 downto 0) => LVDS_706_n_0_1(23 downto 0),
      LVDS_706_p(23 downto 0) => LVDS_706_p_0_1(23 downto 0),
      LVDS_707_n(17 downto 0) => LVDS_707_n_0_1(17 downto 0),
      LVDS_707_p(17 downto 0) => LVDS_707_p_0_1(17 downto 0),
      LVDS_708_n(21 downto 0) => LVDS_708_n_0_1(21 downto 0),
      LVDS_708_p(21 downto 0) => LVDS_708_p_0_1(21 downto 0),
      RD_CLK_706_n(0) => RD_CLK_706_n_0_1(0),
      RD_CLK_706_p(0) => RD_CLK_706_p_0_1(0),
      RD_CLK_707_n(0) => RD_CLK_707_n_0_1(0),
      RD_CLK_707_p(0) => RD_CLK_707_p_0_1(0),
      RD_CLK_708_n(0) => RD_CLK_708_n_0_1(0),
      RD_CLK_708_p(0) => RD_CLK_708_p_0_1(0),
      XPLL_IN_n(0) => XPLL_IN_n_0_1(0),
      XPLL_IN_p(0) => XPLL_IN_p_0_1(0),
      bank0_pll_clkout0 => advanced_io_wizard_0_bank0_pll_clkout0,
      bank0_pll_clkout2 => NLW_advanced_io_wizard_0_bank0_pll_clkout2_UNCONNECTED,
      bank0_pll_clkout3 => NLW_advanced_io_wizard_0_bank0_pll_clkout3_UNCONNECTED,
      bank0_pll_clkoutphy => NLW_advanced_io_wizard_0_bank0_pll_clkoutphy_UNCONNECTED,
      bank0_pll_locked => NLW_advanced_io_wizard_0_bank0_pll_locked_UNCONNECTED,
      bank0_pll_rst_pll => Net,
      bank1_pll_clkout0 => NLW_advanced_io_wizard_0_bank1_pll_clkout0_UNCONNECTED,
      bank1_pll_clkout2 => NLW_advanced_io_wizard_0_bank1_pll_clkout2_UNCONNECTED,
      bank1_pll_clkout3 => NLW_advanced_io_wizard_0_bank1_pll_clkout3_UNCONNECTED,
      bank1_pll_clkoutphy => NLW_advanced_io_wizard_0_bank1_pll_clkoutphy_UNCONNECTED,
      bank1_pll_locked => NLW_advanced_io_wizard_0_bank1_pll_locked_UNCONNECTED,
      bank1_pll_rst_pll => Net,
      bank2_pll_clkout0 => NLW_advanced_io_wizard_0_bank2_pll_clkout0_UNCONNECTED,
      bank2_pll_clkout2 => NLW_advanced_io_wizard_0_bank2_pll_clkout2_UNCONNECTED,
      bank2_pll_clkout3 => NLW_advanced_io_wizard_0_bank2_pll_clkout3_UNCONNECTED,
      bank2_pll_clkoutphy => NLW_advanced_io_wizard_0_bank2_pll_clkoutphy_UNCONNECTED,
      bank2_pll_locked => NLW_advanced_io_wizard_0_bank2_pll_locked_UNCONNECTED,
      bank2_pll_rst_pll => Net,
      ctrl_clk => advanced_io_wizard_0_bank0_pll_clkout0,
      data_to_fabric_LVDS_706(95 downto 0) => data_to_fabric_LVDS_706(95 downto 0),
      data_to_fabric_LVDS_707(71 downto 0) => data_to_fabric_LVDS_707(71 downto 0),
      data_to_fabric_LVDS_708(87 downto 0) => data_to_fabric_LVDS_708(87 downto 0),
      data_to_fabric_RD_CLK_706(3 downto 0) => NLW_advanced_io_wizard_0_data_to_fabric_RD_CLK_706_UNCONNECTED(3 downto 0),
      data_to_fabric_RD_CLK_707(3 downto 0) => NLW_advanced_io_wizard_0_data_to_fabric_RD_CLK_707_UNCONNECTED(3 downto 0),
      data_to_fabric_RD_CLK_708(3 downto 0) => NLW_advanced_io_wizard_0_data_to_fabric_RD_CLK_708_UNCONNECTED(3 downto 0),
      dly_rdy => NLW_advanced_io_wizard_0_dly_rdy_UNCONNECTED,
      en_vtc => xlconstant_0_dout(0),
      fifo_empty => advanced_io_wizard_0_fifo_empty,
      fifo_rd_clk => advanced_io_wizard_0_bank0_pll_clkout0,
      fifo_rd_en => FIFO_CTRL_0_FIFO_RD_EN,
      intf_rdy => advanced_io_wizard_0_intf_rdy,
      phy_rdy => NLW_advanced_io_wizard_0_phy_rdy_UNCONNECTED,
      rst => rst_0_1
    );
axi_noc_0: component design_1_axi_noc_0_0
     port map (
      CH0_DDR4_0_act_n(0) => axi_noc_0_CH0_DDR4_0_ACT_N(0),
      CH0_DDR4_0_adr(16 downto 0) => axi_noc_0_CH0_DDR4_0_ADR(16 downto 0),
      CH0_DDR4_0_ba(1 downto 0) => axi_noc_0_CH0_DDR4_0_BA(1 downto 0),
      CH0_DDR4_0_bg(1 downto 0) => axi_noc_0_CH0_DDR4_0_BG(1 downto 0),
      CH0_DDR4_0_ck_c(1 downto 0) => axi_noc_0_CH0_DDR4_0_CK_C(1 downto 0),
      CH0_DDR4_0_ck_t(1 downto 0) => axi_noc_0_CH0_DDR4_0_CK_T(1 downto 0),
      CH0_DDR4_0_cke(1 downto 0) => axi_noc_0_CH0_DDR4_0_CKE(1 downto 0),
      CH0_DDR4_0_cs_n(1 downto 0) => axi_noc_0_CH0_DDR4_0_CS_N(1 downto 0),
      CH0_DDR4_0_dm_n(8 downto 0) => VSL_DIMM0_dm_n(8 downto 0),
      CH0_DDR4_0_dq(71 downto 0) => VSL_DIMM0_dq(71 downto 0),
      CH0_DDR4_0_dqs_c(8 downto 0) => VSL_DIMM0_dqs_c(8 downto 0),
      CH0_DDR4_0_dqs_t(8 downto 0) => VSL_DIMM0_dqs_t(8 downto 0),
      CH0_DDR4_0_odt(1 downto 0) => axi_noc_0_CH0_DDR4_0_ODT(1 downto 0),
      CH0_DDR4_0_reset_n(0) => axi_noc_0_CH0_DDR4_0_RESET_N(0),
      M00_INI_internoc(0) => axi_noc_0_M00_INI_INTERNOC(0),
      M01_INI_internoc(0) => axi_noc_0_M01_INI_INTERNOC(0),
      M02_INI_internoc(0) => axi_noc_0_M02_INI_INTERNOC(0),
      M03_INI_internoc(0) => axi_noc_0_M03_INI_INTERNOC(0),
      S00_AXI_araddr(63 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARADDR(63 downto 0),
      S00_AXI_arburst(1 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARCACHE(3 downto 0),
      S00_AXI_arid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARID(15 downto 0),
      S00_AXI_arlen(7 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => versal_cips_0_FPD_CCI_NOC_0_ARLOCK,
      S00_AXI_arprot(2 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARQOS(3 downto 0),
      S00_AXI_arready(0) => versal_cips_0_FPD_CCI_NOC_0_ARREADY(0),
      S00_AXI_arregion(3 downto 0) => B"0000",
      S00_AXI_arsize(2 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARSIZE(2 downto 0),
      S00_AXI_aruser(17 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARUSER(17 downto 0),
      S00_AXI_arvalid(0) => versal_cips_0_FPD_CCI_NOC_0_ARVALID,
      S00_AXI_awaddr(63 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWADDR(63 downto 0),
      S00_AXI_awburst(1 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWCACHE(3 downto 0),
      S00_AXI_awid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWID(15 downto 0),
      S00_AXI_awlen(7 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => versal_cips_0_FPD_CCI_NOC_0_AWLOCK,
      S00_AXI_awprot(2 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWQOS(3 downto 0),
      S00_AXI_awready(0) => versal_cips_0_FPD_CCI_NOC_0_AWREADY(0),
      S00_AXI_awregion(3 downto 0) => B"0000",
      S00_AXI_awsize(2 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWSIZE(2 downto 0),
      S00_AXI_awuser(17 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWUSER(17 downto 0),
      S00_AXI_awvalid(0) => versal_cips_0_FPD_CCI_NOC_0_AWVALID,
      S00_AXI_bid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_0_BID(15 downto 0),
      S00_AXI_bready(0) => versal_cips_0_FPD_CCI_NOC_0_BREADY,
      S00_AXI_bresp(1 downto 0) => versal_cips_0_FPD_CCI_NOC_0_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => versal_cips_0_FPD_CCI_NOC_0_BVALID(0),
      S00_AXI_rdata(127 downto 0) => versal_cips_0_FPD_CCI_NOC_0_RDATA(127 downto 0),
      S00_AXI_rid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_0_RID(15 downto 0),
      S00_AXI_rlast(0) => versal_cips_0_FPD_CCI_NOC_0_RLAST(0),
      S00_AXI_rready(0) => versal_cips_0_FPD_CCI_NOC_0_RREADY,
      S00_AXI_rresp(1 downto 0) => versal_cips_0_FPD_CCI_NOC_0_RRESP(1 downto 0),
      S00_AXI_ruser(16 downto 0) => NLW_axi_noc_0_S00_AXI_ruser_UNCONNECTED(16 downto 0),
      S00_AXI_rvalid(0) => versal_cips_0_FPD_CCI_NOC_0_RVALID(0),
      S00_AXI_wdata(127 downto 0) => versal_cips_0_FPD_CCI_NOC_0_WDATA(127 downto 0),
      S00_AXI_wid(15 downto 0) => B"0000000000000000",
      S00_AXI_wlast(0) => versal_cips_0_FPD_CCI_NOC_0_WLAST,
      S00_AXI_wready(0) => versal_cips_0_FPD_CCI_NOC_0_WREADY(0),
      S00_AXI_wstrb(15 downto 0) => versal_cips_0_FPD_CCI_NOC_0_WSTRB(15 downto 0),
      S00_AXI_wuser(16 downto 0) => versal_cips_0_FPD_CCI_NOC_0_WUSER(16 downto 0),
      S00_AXI_wvalid(0) => versal_cips_0_FPD_CCI_NOC_0_WVALID,
      S01_AXI_araddr(63 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARADDR(63 downto 0),
      S01_AXI_arburst(1 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARBURST(1 downto 0),
      S01_AXI_arcache(3 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARCACHE(3 downto 0),
      S01_AXI_arid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARID(15 downto 0),
      S01_AXI_arlen(7 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARLEN(7 downto 0),
      S01_AXI_arlock(0) => versal_cips_0_FPD_CCI_NOC_1_ARLOCK,
      S01_AXI_arprot(2 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARPROT(2 downto 0),
      S01_AXI_arqos(3 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARQOS(3 downto 0),
      S01_AXI_arready(0) => versal_cips_0_FPD_CCI_NOC_1_ARREADY(0),
      S01_AXI_arregion(3 downto 0) => B"0000",
      S01_AXI_arsize(2 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARSIZE(2 downto 0),
      S01_AXI_aruser(17 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARUSER(17 downto 0),
      S01_AXI_arvalid(0) => versal_cips_0_FPD_CCI_NOC_1_ARVALID,
      S01_AXI_awaddr(63 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWADDR(63 downto 0),
      S01_AXI_awburst(1 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWCACHE(3 downto 0),
      S01_AXI_awid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWID(15 downto 0),
      S01_AXI_awlen(7 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWLEN(7 downto 0),
      S01_AXI_awlock(0) => versal_cips_0_FPD_CCI_NOC_1_AWLOCK,
      S01_AXI_awprot(2 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWPROT(2 downto 0),
      S01_AXI_awqos(3 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWQOS(3 downto 0),
      S01_AXI_awready(0) => versal_cips_0_FPD_CCI_NOC_1_AWREADY(0),
      S01_AXI_awregion(3 downto 0) => B"0000",
      S01_AXI_awsize(2 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWSIZE(2 downto 0),
      S01_AXI_awuser(17 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWUSER(17 downto 0),
      S01_AXI_awvalid(0) => versal_cips_0_FPD_CCI_NOC_1_AWVALID,
      S01_AXI_bid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_1_BID(15 downto 0),
      S01_AXI_bready(0) => versal_cips_0_FPD_CCI_NOC_1_BREADY,
      S01_AXI_bresp(1 downto 0) => versal_cips_0_FPD_CCI_NOC_1_BRESP(1 downto 0),
      S01_AXI_bvalid(0) => versal_cips_0_FPD_CCI_NOC_1_BVALID(0),
      S01_AXI_rdata(127 downto 0) => versal_cips_0_FPD_CCI_NOC_1_RDATA(127 downto 0),
      S01_AXI_rid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_1_RID(15 downto 0),
      S01_AXI_rlast(0) => versal_cips_0_FPD_CCI_NOC_1_RLAST(0),
      S01_AXI_rready(0) => versal_cips_0_FPD_CCI_NOC_1_RREADY,
      S01_AXI_rresp(1 downto 0) => versal_cips_0_FPD_CCI_NOC_1_RRESP(1 downto 0),
      S01_AXI_ruser(16 downto 0) => NLW_axi_noc_0_S01_AXI_ruser_UNCONNECTED(16 downto 0),
      S01_AXI_rvalid(0) => versal_cips_0_FPD_CCI_NOC_1_RVALID(0),
      S01_AXI_wdata(127 downto 0) => versal_cips_0_FPD_CCI_NOC_1_WDATA(127 downto 0),
      S01_AXI_wid(15 downto 0) => B"0000000000000000",
      S01_AXI_wlast(0) => versal_cips_0_FPD_CCI_NOC_1_WLAST,
      S01_AXI_wready(0) => versal_cips_0_FPD_CCI_NOC_1_WREADY(0),
      S01_AXI_wstrb(15 downto 0) => versal_cips_0_FPD_CCI_NOC_1_WSTRB(15 downto 0),
      S01_AXI_wuser(16 downto 0) => versal_cips_0_FPD_CCI_NOC_1_WUSER(16 downto 0),
      S01_AXI_wvalid(0) => versal_cips_0_FPD_CCI_NOC_1_WVALID,
      S02_AXI_araddr(63 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARADDR(63 downto 0),
      S02_AXI_arburst(1 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARBURST(1 downto 0),
      S02_AXI_arcache(3 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARCACHE(3 downto 0),
      S02_AXI_arid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARID(15 downto 0),
      S02_AXI_arlen(7 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARLEN(7 downto 0),
      S02_AXI_arlock(0) => versal_cips_0_FPD_CCI_NOC_2_ARLOCK,
      S02_AXI_arprot(2 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARPROT(2 downto 0),
      S02_AXI_arqos(3 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARQOS(3 downto 0),
      S02_AXI_arready(0) => versal_cips_0_FPD_CCI_NOC_2_ARREADY(0),
      S02_AXI_arregion(3 downto 0) => B"0000",
      S02_AXI_arsize(2 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARSIZE(2 downto 0),
      S02_AXI_aruser(17 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARUSER(17 downto 0),
      S02_AXI_arvalid(0) => versal_cips_0_FPD_CCI_NOC_2_ARVALID,
      S02_AXI_awaddr(63 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWADDR(63 downto 0),
      S02_AXI_awburst(1 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWBURST(1 downto 0),
      S02_AXI_awcache(3 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWCACHE(3 downto 0),
      S02_AXI_awid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWID(15 downto 0),
      S02_AXI_awlen(7 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWLEN(7 downto 0),
      S02_AXI_awlock(0) => versal_cips_0_FPD_CCI_NOC_2_AWLOCK,
      S02_AXI_awprot(2 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWPROT(2 downto 0),
      S02_AXI_awqos(3 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWQOS(3 downto 0),
      S02_AXI_awready(0) => versal_cips_0_FPD_CCI_NOC_2_AWREADY(0),
      S02_AXI_awregion(3 downto 0) => B"0000",
      S02_AXI_awsize(2 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWSIZE(2 downto 0),
      S02_AXI_awuser(17 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWUSER(17 downto 0),
      S02_AXI_awvalid(0) => versal_cips_0_FPD_CCI_NOC_2_AWVALID,
      S02_AXI_bid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_2_BID(15 downto 0),
      S02_AXI_bready(0) => versal_cips_0_FPD_CCI_NOC_2_BREADY,
      S02_AXI_bresp(1 downto 0) => versal_cips_0_FPD_CCI_NOC_2_BRESP(1 downto 0),
      S02_AXI_bvalid(0) => versal_cips_0_FPD_CCI_NOC_2_BVALID(0),
      S02_AXI_rdata(127 downto 0) => versal_cips_0_FPD_CCI_NOC_2_RDATA(127 downto 0),
      S02_AXI_rid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_2_RID(15 downto 0),
      S02_AXI_rlast(0) => versal_cips_0_FPD_CCI_NOC_2_RLAST(0),
      S02_AXI_rready(0) => versal_cips_0_FPD_CCI_NOC_2_RREADY,
      S02_AXI_rresp(1 downto 0) => versal_cips_0_FPD_CCI_NOC_2_RRESP(1 downto 0),
      S02_AXI_ruser(16 downto 0) => NLW_axi_noc_0_S02_AXI_ruser_UNCONNECTED(16 downto 0),
      S02_AXI_rvalid(0) => versal_cips_0_FPD_CCI_NOC_2_RVALID(0),
      S02_AXI_wdata(127 downto 0) => versal_cips_0_FPD_CCI_NOC_2_WDATA(127 downto 0),
      S02_AXI_wid(15 downto 0) => B"0000000000000000",
      S02_AXI_wlast(0) => versal_cips_0_FPD_CCI_NOC_2_WLAST,
      S02_AXI_wready(0) => versal_cips_0_FPD_CCI_NOC_2_WREADY(0),
      S02_AXI_wstrb(15 downto 0) => versal_cips_0_FPD_CCI_NOC_2_WSTRB(15 downto 0),
      S02_AXI_wuser(16 downto 0) => versal_cips_0_FPD_CCI_NOC_2_WUSER(16 downto 0),
      S02_AXI_wvalid(0) => versal_cips_0_FPD_CCI_NOC_2_WVALID,
      S03_AXI_araddr(63 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARADDR(63 downto 0),
      S03_AXI_arburst(1 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARBURST(1 downto 0),
      S03_AXI_arcache(3 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARCACHE(3 downto 0),
      S03_AXI_arid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARID(15 downto 0),
      S03_AXI_arlen(7 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARLEN(7 downto 0),
      S03_AXI_arlock(0) => versal_cips_0_FPD_CCI_NOC_3_ARLOCK,
      S03_AXI_arprot(2 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARPROT(2 downto 0),
      S03_AXI_arqos(3 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARQOS(3 downto 0),
      S03_AXI_arready(0) => versal_cips_0_FPD_CCI_NOC_3_ARREADY(0),
      S03_AXI_arregion(3 downto 0) => B"0000",
      S03_AXI_arsize(2 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARSIZE(2 downto 0),
      S03_AXI_aruser(17 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARUSER(17 downto 0),
      S03_AXI_arvalid(0) => versal_cips_0_FPD_CCI_NOC_3_ARVALID,
      S03_AXI_awaddr(63 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWADDR(63 downto 0),
      S03_AXI_awburst(1 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWBURST(1 downto 0),
      S03_AXI_awcache(3 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWCACHE(3 downto 0),
      S03_AXI_awid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWID(15 downto 0),
      S03_AXI_awlen(7 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWLEN(7 downto 0),
      S03_AXI_awlock(0) => versal_cips_0_FPD_CCI_NOC_3_AWLOCK,
      S03_AXI_awprot(2 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWPROT(2 downto 0),
      S03_AXI_awqos(3 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWQOS(3 downto 0),
      S03_AXI_awready(0) => versal_cips_0_FPD_CCI_NOC_3_AWREADY(0),
      S03_AXI_awregion(3 downto 0) => B"0000",
      S03_AXI_awsize(2 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWSIZE(2 downto 0),
      S03_AXI_awuser(17 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWUSER(17 downto 0),
      S03_AXI_awvalid(0) => versal_cips_0_FPD_CCI_NOC_3_AWVALID,
      S03_AXI_bid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_3_BID(15 downto 0),
      S03_AXI_bready(0) => versal_cips_0_FPD_CCI_NOC_3_BREADY,
      S03_AXI_bresp(1 downto 0) => versal_cips_0_FPD_CCI_NOC_3_BRESP(1 downto 0),
      S03_AXI_bvalid(0) => versal_cips_0_FPD_CCI_NOC_3_BVALID(0),
      S03_AXI_rdata(127 downto 0) => versal_cips_0_FPD_CCI_NOC_3_RDATA(127 downto 0),
      S03_AXI_rid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_3_RID(15 downto 0),
      S03_AXI_rlast(0) => versal_cips_0_FPD_CCI_NOC_3_RLAST(0),
      S03_AXI_rready(0) => versal_cips_0_FPD_CCI_NOC_3_RREADY,
      S03_AXI_rresp(1 downto 0) => versal_cips_0_FPD_CCI_NOC_3_RRESP(1 downto 0),
      S03_AXI_ruser(16 downto 0) => NLW_axi_noc_0_S03_AXI_ruser_UNCONNECTED(16 downto 0),
      S03_AXI_rvalid(0) => versal_cips_0_FPD_CCI_NOC_3_RVALID(0),
      S03_AXI_wdata(127 downto 0) => versal_cips_0_FPD_CCI_NOC_3_WDATA(127 downto 0),
      S03_AXI_wid(15 downto 0) => B"0000000000000000",
      S03_AXI_wlast(0) => versal_cips_0_FPD_CCI_NOC_3_WLAST,
      S03_AXI_wready(0) => versal_cips_0_FPD_CCI_NOC_3_WREADY(0),
      S03_AXI_wstrb(15 downto 0) => versal_cips_0_FPD_CCI_NOC_3_WSTRB(15 downto 0),
      S03_AXI_wuser(16 downto 0) => versal_cips_0_FPD_CCI_NOC_3_WUSER(16 downto 0),
      S03_AXI_wvalid(0) => versal_cips_0_FPD_CCI_NOC_3_WVALID,
      S04_AXI_araddr(63 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARADDR(63 downto 0),
      S04_AXI_arburst(1 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARBURST(1 downto 0),
      S04_AXI_arcache(3 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARCACHE(3 downto 0),
      S04_AXI_arid(15 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARID(15 downto 0),
      S04_AXI_arlen(7 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARLEN(7 downto 0),
      S04_AXI_arlock(0) => versal_cips_0_FPD_AXI_NOC_0_ARLOCK,
      S04_AXI_arprot(2 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARPROT(2 downto 0),
      S04_AXI_arqos(3 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARQOS(3 downto 0),
      S04_AXI_arready(0) => versal_cips_0_FPD_AXI_NOC_0_ARREADY(0),
      S04_AXI_arregion(3 downto 0) => B"0000",
      S04_AXI_arsize(2 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARSIZE(2 downto 0),
      S04_AXI_aruser(17 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARUSER(17 downto 0),
      S04_AXI_arvalid(0) => versal_cips_0_FPD_AXI_NOC_0_ARVALID,
      S04_AXI_awaddr(63 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWADDR(63 downto 0),
      S04_AXI_awburst(1 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWBURST(1 downto 0),
      S04_AXI_awcache(3 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWCACHE(3 downto 0),
      S04_AXI_awid(15 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWID(15 downto 0),
      S04_AXI_awlen(7 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWLEN(7 downto 0),
      S04_AXI_awlock(0) => versal_cips_0_FPD_AXI_NOC_0_AWLOCK,
      S04_AXI_awprot(2 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWPROT(2 downto 0),
      S04_AXI_awqos(3 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWQOS(3 downto 0),
      S04_AXI_awready(0) => versal_cips_0_FPD_AXI_NOC_0_AWREADY(0),
      S04_AXI_awregion(3 downto 0) => B"0000",
      S04_AXI_awsize(2 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWSIZE(2 downto 0),
      S04_AXI_awuser(17 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWUSER(17 downto 0),
      S04_AXI_awvalid(0) => versal_cips_0_FPD_AXI_NOC_0_AWVALID,
      S04_AXI_bid(15 downto 0) => versal_cips_0_FPD_AXI_NOC_0_BID(15 downto 0),
      S04_AXI_bready(0) => versal_cips_0_FPD_AXI_NOC_0_BREADY,
      S04_AXI_bresp(1 downto 0) => versal_cips_0_FPD_AXI_NOC_0_BRESP(1 downto 0),
      S04_AXI_bvalid(0) => versal_cips_0_FPD_AXI_NOC_0_BVALID(0),
      S04_AXI_rdata(127 downto 0) => versal_cips_0_FPD_AXI_NOC_0_RDATA(127 downto 0),
      S04_AXI_rid(15 downto 0) => versal_cips_0_FPD_AXI_NOC_0_RID(15 downto 0),
      S04_AXI_rlast(0) => versal_cips_0_FPD_AXI_NOC_0_RLAST(0),
      S04_AXI_rready(0) => versal_cips_0_FPD_AXI_NOC_0_RREADY,
      S04_AXI_rresp(1 downto 0) => versal_cips_0_FPD_AXI_NOC_0_RRESP(1 downto 0),
      S04_AXI_ruser(16 downto 0) => NLW_axi_noc_0_S04_AXI_ruser_UNCONNECTED(16 downto 0),
      S04_AXI_rvalid(0) => versal_cips_0_FPD_AXI_NOC_0_RVALID(0),
      S04_AXI_wdata(127 downto 0) => versal_cips_0_FPD_AXI_NOC_0_WDATA(127 downto 0),
      S04_AXI_wid(15 downto 0) => B"0000000000000000",
      S04_AXI_wlast(0) => versal_cips_0_FPD_AXI_NOC_0_WLAST,
      S04_AXI_wready(0) => versal_cips_0_FPD_AXI_NOC_0_WREADY(0),
      S04_AXI_wstrb(15 downto 0) => versal_cips_0_FPD_AXI_NOC_0_WSTRB(15 downto 0),
      S04_AXI_wuser(16 downto 0) => B"00000000000000000",
      S04_AXI_wvalid(0) => versal_cips_0_FPD_AXI_NOC_0_WVALID,
      S05_AXI_araddr(63 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_ARADDR(63 downto 0),
      S05_AXI_arburst(1 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_ARBURST(1 downto 0),
      S05_AXI_arcache(3 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_ARCACHE(3 downto 0),
      S05_AXI_arid(15 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_ARID(15 downto 0),
      S05_AXI_arlen(7 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_ARLEN(7 downto 0),
      S05_AXI_arlock(0) => versal_cips_0_CPM_PCIE_NOC_0_ARLOCK,
      S05_AXI_arprot(2 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_ARPROT(2 downto 0),
      S05_AXI_arqos(3 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_ARQOS(3 downto 0),
      S05_AXI_arready(0) => versal_cips_0_CPM_PCIE_NOC_0_ARREADY(0),
      S05_AXI_arregion(3 downto 0) => B"0000",
      S05_AXI_arsize(2 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_ARSIZE(2 downto 0),
      S05_AXI_aruser(17 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_ARUSER(17 downto 0),
      S05_AXI_arvalid(0) => versal_cips_0_CPM_PCIE_NOC_0_ARVALID,
      S05_AXI_awaddr(63 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_AWADDR(63 downto 0),
      S05_AXI_awburst(1 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_AWBURST(1 downto 0),
      S05_AXI_awcache(3 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_AWCACHE(3 downto 0),
      S05_AXI_awid(15 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_AWID(15 downto 0),
      S05_AXI_awlen(7 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_AWLEN(7 downto 0),
      S05_AXI_awlock(0) => versal_cips_0_CPM_PCIE_NOC_0_AWLOCK,
      S05_AXI_awprot(2 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_AWPROT(2 downto 0),
      S05_AXI_awqos(3 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_AWQOS(3 downto 0),
      S05_AXI_awready(0) => versal_cips_0_CPM_PCIE_NOC_0_AWREADY(0),
      S05_AXI_awregion(3 downto 0) => B"0000",
      S05_AXI_awsize(2 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_AWSIZE(2 downto 0),
      S05_AXI_awuser(17 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_AWUSER(17 downto 0),
      S05_AXI_awvalid(0) => versal_cips_0_CPM_PCIE_NOC_0_AWVALID,
      S05_AXI_bid(15 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_BID(15 downto 0),
      S05_AXI_bready(0) => versal_cips_0_CPM_PCIE_NOC_0_BREADY,
      S05_AXI_bresp(1 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_BRESP(1 downto 0),
      S05_AXI_bvalid(0) => versal_cips_0_CPM_PCIE_NOC_0_BVALID(0),
      S05_AXI_rdata(127 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_RDATA(127 downto 0),
      S05_AXI_rid(15 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_RID(15 downto 0),
      S05_AXI_rlast(0) => versal_cips_0_CPM_PCIE_NOC_0_RLAST(0),
      S05_AXI_rready(0) => versal_cips_0_CPM_PCIE_NOC_0_RREADY,
      S05_AXI_rresp(1 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_RRESP(1 downto 0),
      S05_AXI_ruser(16 downto 0) => NLW_axi_noc_0_S05_AXI_ruser_UNCONNECTED(16 downto 0),
      S05_AXI_rvalid(0) => versal_cips_0_CPM_PCIE_NOC_0_RVALID(0),
      S05_AXI_wdata(127 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_WDATA(127 downto 0),
      S05_AXI_wid(15 downto 0) => B"0000000000000000",
      S05_AXI_wlast(0) => versal_cips_0_CPM_PCIE_NOC_0_WLAST,
      S05_AXI_wready(0) => versal_cips_0_CPM_PCIE_NOC_0_WREADY(0),
      S05_AXI_wstrb(15 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_WSTRB(15 downto 0),
      S05_AXI_wuser(16 downto 0) => B"00000000000000000",
      S05_AXI_wvalid(0) => versal_cips_0_CPM_PCIE_NOC_0_WVALID,
      S06_AXI_araddr(63 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_ARADDR(63 downto 0),
      S06_AXI_arburst(1 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_ARBURST(1 downto 0),
      S06_AXI_arcache(3 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_ARCACHE(3 downto 0),
      S06_AXI_arid(15 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_ARID(15 downto 0),
      S06_AXI_arlen(7 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_ARLEN(7 downto 0),
      S06_AXI_arlock(0) => versal_cips_0_CPM_PCIE_NOC_1_ARLOCK,
      S06_AXI_arprot(2 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_ARPROT(2 downto 0),
      S06_AXI_arqos(3 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_ARQOS(3 downto 0),
      S06_AXI_arready(0) => versal_cips_0_CPM_PCIE_NOC_1_ARREADY(0),
      S06_AXI_arregion(3 downto 0) => B"0000",
      S06_AXI_arsize(2 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_ARSIZE(2 downto 0),
      S06_AXI_aruser(17 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_ARUSER(17 downto 0),
      S06_AXI_arvalid(0) => versal_cips_0_CPM_PCIE_NOC_1_ARVALID,
      S06_AXI_awaddr(63 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_AWADDR(63 downto 0),
      S06_AXI_awburst(1 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_AWBURST(1 downto 0),
      S06_AXI_awcache(3 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_AWCACHE(3 downto 0),
      S06_AXI_awid(15 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_AWID(15 downto 0),
      S06_AXI_awlen(7 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_AWLEN(7 downto 0),
      S06_AXI_awlock(0) => versal_cips_0_CPM_PCIE_NOC_1_AWLOCK,
      S06_AXI_awprot(2 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_AWPROT(2 downto 0),
      S06_AXI_awqos(3 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_AWQOS(3 downto 0),
      S06_AXI_awready(0) => versal_cips_0_CPM_PCIE_NOC_1_AWREADY(0),
      S06_AXI_awregion(3 downto 0) => B"0000",
      S06_AXI_awsize(2 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_AWSIZE(2 downto 0),
      S06_AXI_awuser(17 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_AWUSER(17 downto 0),
      S06_AXI_awvalid(0) => versal_cips_0_CPM_PCIE_NOC_1_AWVALID,
      S06_AXI_bid(15 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_BID(15 downto 0),
      S06_AXI_bready(0) => versal_cips_0_CPM_PCIE_NOC_1_BREADY,
      S06_AXI_bresp(1 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_BRESP(1 downto 0),
      S06_AXI_bvalid(0) => versal_cips_0_CPM_PCIE_NOC_1_BVALID(0),
      S06_AXI_rdata(127 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_RDATA(127 downto 0),
      S06_AXI_rid(15 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_RID(15 downto 0),
      S06_AXI_rlast(0) => versal_cips_0_CPM_PCIE_NOC_1_RLAST(0),
      S06_AXI_rready(0) => versal_cips_0_CPM_PCIE_NOC_1_RREADY,
      S06_AXI_rresp(1 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_RRESP(1 downto 0),
      S06_AXI_ruser(16 downto 0) => NLW_axi_noc_0_S06_AXI_ruser_UNCONNECTED(16 downto 0),
      S06_AXI_rvalid(0) => versal_cips_0_CPM_PCIE_NOC_1_RVALID(0),
      S06_AXI_wdata(127 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_WDATA(127 downto 0),
      S06_AXI_wid(15 downto 0) => B"0000000000000000",
      S06_AXI_wlast(0) => versal_cips_0_CPM_PCIE_NOC_1_WLAST,
      S06_AXI_wready(0) => versal_cips_0_CPM_PCIE_NOC_1_WREADY(0),
      S06_AXI_wstrb(15 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_WSTRB(15 downto 0),
      S06_AXI_wuser(16 downto 0) => B"00000000000000000",
      S06_AXI_wvalid(0) => versal_cips_0_CPM_PCIE_NOC_1_WVALID,
      S07_AXI_araddr(63 downto 0) => versal_cips_0_NOC_LPD_AXI_0_ARADDR(63 downto 0),
      S07_AXI_arburst(1 downto 0) => versal_cips_0_NOC_LPD_AXI_0_ARBURST(1 downto 0),
      S07_AXI_arcache(3 downto 0) => versal_cips_0_NOC_LPD_AXI_0_ARCACHE(3 downto 0),
      S07_AXI_arid(15 downto 0) => versal_cips_0_NOC_LPD_AXI_0_ARID(15 downto 0),
      S07_AXI_arlen(7 downto 0) => versal_cips_0_NOC_LPD_AXI_0_ARLEN(7 downto 0),
      S07_AXI_arlock(0) => versal_cips_0_NOC_LPD_AXI_0_ARLOCK,
      S07_AXI_arprot(2 downto 0) => versal_cips_0_NOC_LPD_AXI_0_ARPROT(2 downto 0),
      S07_AXI_arqos(3 downto 0) => versal_cips_0_NOC_LPD_AXI_0_ARQOS(3 downto 0),
      S07_AXI_arready(0) => versal_cips_0_NOC_LPD_AXI_0_ARREADY(0),
      S07_AXI_arregion(3 downto 0) => B"0000",
      S07_AXI_arsize(2 downto 0) => versal_cips_0_NOC_LPD_AXI_0_ARSIZE(2 downto 0),
      S07_AXI_aruser(17 downto 0) => versal_cips_0_NOC_LPD_AXI_0_ARUSER(17 downto 0),
      S07_AXI_arvalid(0) => versal_cips_0_NOC_LPD_AXI_0_ARVALID,
      S07_AXI_awaddr(63 downto 0) => versal_cips_0_NOC_LPD_AXI_0_AWADDR(63 downto 0),
      S07_AXI_awburst(1 downto 0) => versal_cips_0_NOC_LPD_AXI_0_AWBURST(1 downto 0),
      S07_AXI_awcache(3 downto 0) => versal_cips_0_NOC_LPD_AXI_0_AWCACHE(3 downto 0),
      S07_AXI_awid(15 downto 0) => versal_cips_0_NOC_LPD_AXI_0_AWID(15 downto 0),
      S07_AXI_awlen(7 downto 0) => versal_cips_0_NOC_LPD_AXI_0_AWLEN(7 downto 0),
      S07_AXI_awlock(0) => versal_cips_0_NOC_LPD_AXI_0_AWLOCK,
      S07_AXI_awprot(2 downto 0) => versal_cips_0_NOC_LPD_AXI_0_AWPROT(2 downto 0),
      S07_AXI_awqos(3 downto 0) => versal_cips_0_NOC_LPD_AXI_0_AWQOS(3 downto 0),
      S07_AXI_awready(0) => versal_cips_0_NOC_LPD_AXI_0_AWREADY(0),
      S07_AXI_awregion(3 downto 0) => B"0000",
      S07_AXI_awsize(2 downto 0) => versal_cips_0_NOC_LPD_AXI_0_AWSIZE(2 downto 0),
      S07_AXI_awuser(17 downto 0) => versal_cips_0_NOC_LPD_AXI_0_AWUSER(17 downto 0),
      S07_AXI_awvalid(0) => versal_cips_0_NOC_LPD_AXI_0_AWVALID,
      S07_AXI_bid(15 downto 0) => versal_cips_0_NOC_LPD_AXI_0_BID(15 downto 0),
      S07_AXI_bready(0) => versal_cips_0_NOC_LPD_AXI_0_BREADY,
      S07_AXI_bresp(1 downto 0) => versal_cips_0_NOC_LPD_AXI_0_BRESP(1 downto 0),
      S07_AXI_bvalid(0) => versal_cips_0_NOC_LPD_AXI_0_BVALID(0),
      S07_AXI_rdata(127 downto 0) => versal_cips_0_NOC_LPD_AXI_0_RDATA(127 downto 0),
      S07_AXI_rid(15 downto 0) => versal_cips_0_NOC_LPD_AXI_0_RID(15 downto 0),
      S07_AXI_rlast(0) => versal_cips_0_NOC_LPD_AXI_0_RLAST(0),
      S07_AXI_rready(0) => versal_cips_0_NOC_LPD_AXI_0_RREADY,
      S07_AXI_rresp(1 downto 0) => versal_cips_0_NOC_LPD_AXI_0_RRESP(1 downto 0),
      S07_AXI_ruser(16 downto 0) => NLW_axi_noc_0_S07_AXI_ruser_UNCONNECTED(16 downto 0),
      S07_AXI_rvalid(0) => versal_cips_0_NOC_LPD_AXI_0_RVALID(0),
      S07_AXI_wdata(127 downto 0) => versal_cips_0_NOC_LPD_AXI_0_WDATA(127 downto 0),
      S07_AXI_wid(15 downto 0) => B"0000000000000000",
      S07_AXI_wlast(0) => versal_cips_0_NOC_LPD_AXI_0_WLAST,
      S07_AXI_wready(0) => versal_cips_0_NOC_LPD_AXI_0_WREADY(0),
      S07_AXI_wstrb(15 downto 0) => versal_cips_0_NOC_LPD_AXI_0_WSTRB(15 downto 0),
      S07_AXI_wuser(16 downto 0) => B"00000000000000000",
      S07_AXI_wvalid(0) => versal_cips_0_NOC_LPD_AXI_0_WVALID,
      S08_AXI_araddr(63 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARADDR(63 downto 0),
      S08_AXI_arburst(1 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARBURST(1 downto 0),
      S08_AXI_arcache(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARCACHE(3 downto 0),
      S08_AXI_arid(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARID(15 downto 0),
      S08_AXI_arlen(7 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARLEN(7 downto 0),
      S08_AXI_arlock(0) => versal_cips_0_PMC_NOC_AXI_0_ARLOCK,
      S08_AXI_arprot(2 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARPROT(2 downto 0),
      S08_AXI_arqos(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARQOS(3 downto 0),
      S08_AXI_arready(0) => versal_cips_0_PMC_NOC_AXI_0_ARREADY(0),
      S08_AXI_arregion(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARREGION(3 downto 0),
      S08_AXI_arsize(2 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARSIZE(2 downto 0),
      S08_AXI_aruser(17 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARUSER(17 downto 0),
      S08_AXI_arvalid(0) => versal_cips_0_PMC_NOC_AXI_0_ARVALID,
      S08_AXI_awaddr(63 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWADDR(63 downto 0),
      S08_AXI_awburst(1 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWBURST(1 downto 0),
      S08_AXI_awcache(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWCACHE(3 downto 0),
      S08_AXI_awid(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWID(15 downto 0),
      S08_AXI_awlen(7 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWLEN(7 downto 0),
      S08_AXI_awlock(0) => versal_cips_0_PMC_NOC_AXI_0_AWLOCK,
      S08_AXI_awprot(2 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWPROT(2 downto 0),
      S08_AXI_awqos(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWQOS(3 downto 0),
      S08_AXI_awready(0) => versal_cips_0_PMC_NOC_AXI_0_AWREADY(0),
      S08_AXI_awregion(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWREGION(3 downto 0),
      S08_AXI_awsize(2 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWSIZE(2 downto 0),
      S08_AXI_awuser(17 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWUSER(17 downto 0),
      S08_AXI_awvalid(0) => versal_cips_0_PMC_NOC_AXI_0_AWVALID,
      S08_AXI_bid(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_BID(15 downto 0),
      S08_AXI_bready(0) => versal_cips_0_PMC_NOC_AXI_0_BREADY,
      S08_AXI_bresp(1 downto 0) => versal_cips_0_PMC_NOC_AXI_0_BRESP(1 downto 0),
      S08_AXI_buser(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_BUSER(15 downto 0),
      S08_AXI_bvalid(0) => versal_cips_0_PMC_NOC_AXI_0_BVALID(0),
      S08_AXI_rdata(127 downto 0) => versal_cips_0_PMC_NOC_AXI_0_RDATA(127 downto 0),
      S08_AXI_rid(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_RID(15 downto 0),
      S08_AXI_rlast(0) => versal_cips_0_PMC_NOC_AXI_0_RLAST(0),
      S08_AXI_rready(0) => versal_cips_0_PMC_NOC_AXI_0_RREADY,
      S08_AXI_rresp(1 downto 0) => versal_cips_0_PMC_NOC_AXI_0_RRESP(1 downto 0),
      S08_AXI_ruser(16 downto 0) => versal_cips_0_PMC_NOC_AXI_0_RUSER(16 downto 0),
      S08_AXI_rvalid(0) => versal_cips_0_PMC_NOC_AXI_0_RVALID(0),
      S08_AXI_wdata(127 downto 0) => versal_cips_0_PMC_NOC_AXI_0_WDATA(127 downto 0),
      S08_AXI_wid(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_WID(15 downto 0),
      S08_AXI_wlast(0) => versal_cips_0_PMC_NOC_AXI_0_WLAST,
      S08_AXI_wready(0) => versal_cips_0_PMC_NOC_AXI_0_WREADY(0),
      S08_AXI_wstrb(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_WSTRB(15 downto 0),
      S08_AXI_wuser(16 downto 0) => versal_cips_0_PMC_NOC_AXI_0_WUSER(16 downto 0),
      S08_AXI_wvalid(0) => versal_cips_0_PMC_NOC_AXI_0_WVALID,
      aclk0 => versal_cips_0_fpd_cci_noc_axi0_clk,
      aclk1 => versal_cips_0_fpd_cci_noc_axi1_clk,
      aclk2 => versal_cips_0_fpd_cci_noc_axi2_clk,
      aclk3 => versal_cips_0_fpd_cci_noc_axi3_clk,
      aclk4 => versal_cips_0_fpd_axi_noc_axi0_clk,
      aclk5 => versal_cips_0_cpm_pcie_noc_axi0_clk,
      aclk6 => versal_cips_0_cpm_pcie_noc_axi1_clk,
      aclk7 => versal_cips_0_lpd_axi_noc_clk,
      aclk8 => versal_cips_0_pmc_axi_noc_axi0_clk,
      sys_clk0_clk_n(0) => sys_clk0_0_1_CLK_N(0),
      sys_clk0_clk_p(0) => sys_clk0_0_1_CLK_P(0)
    );
axi_noc_2: component design_1_axi_noc_2_1
     port map (
      CH0_DDR4_0_act_n(0) => axi_noc_2_CH0_DDR4_0_ACT_N(0),
      CH0_DDR4_0_adr(16 downto 0) => axi_noc_2_CH0_DDR4_0_ADR(16 downto 0),
      CH0_DDR4_0_ba(1 downto 0) => axi_noc_2_CH0_DDR4_0_BA(1 downto 0),
      CH0_DDR4_0_bg(1 downto 0) => axi_noc_2_CH0_DDR4_0_BG(1 downto 0),
      CH0_DDR4_0_ck_c(1 downto 0) => axi_noc_2_CH0_DDR4_0_CK_C(1 downto 0),
      CH0_DDR4_0_ck_t(1 downto 0) => axi_noc_2_CH0_DDR4_0_CK_T(1 downto 0),
      CH0_DDR4_0_cke(1 downto 0) => axi_noc_2_CH0_DDR4_0_CKE(1 downto 0),
      CH0_DDR4_0_cs_n(1 downto 0) => axi_noc_2_CH0_DDR4_0_CS_N(1 downto 0),
      CH0_DDR4_0_dm_n(8 downto 0) => VSL_DIMM1_dm_n(8 downto 0),
      CH0_DDR4_0_dq(71 downto 0) => VSL_DIMM1_dq(71 downto 0),
      CH0_DDR4_0_dqs_c(8 downto 0) => VSL_DIMM1_dqs_c(8 downto 0),
      CH0_DDR4_0_dqs_t(8 downto 0) => VSL_DIMM1_dqs_t(8 downto 0),
      CH0_DDR4_0_odt(1 downto 0) => axi_noc_2_CH0_DDR4_0_ODT(1 downto 0),
      CH0_DDR4_0_reset_n(0) => axi_noc_2_CH0_DDR4_0_RESET_N(0),
      CH0_DDR4_1_act_n(0) => axi_noc_2_CH0_DDR4_1_ACT_N(0),
      CH0_DDR4_1_adr(16 downto 0) => axi_noc_2_CH0_DDR4_1_ADR(16 downto 0),
      CH0_DDR4_1_ba(1 downto 0) => axi_noc_2_CH0_DDR4_1_BA(1 downto 0),
      CH0_DDR4_1_bg(1 downto 0) => axi_noc_2_CH0_DDR4_1_BG(1 downto 0),
      CH0_DDR4_1_ck_c(1 downto 0) => axi_noc_2_CH0_DDR4_1_CK_C(1 downto 0),
      CH0_DDR4_1_ck_t(1 downto 0) => axi_noc_2_CH0_DDR4_1_CK_T(1 downto 0),
      CH0_DDR4_1_cke(1 downto 0) => axi_noc_2_CH0_DDR4_1_CKE(1 downto 0),
      CH0_DDR4_1_cs_n(1 downto 0) => axi_noc_2_CH0_DDR4_1_CS_N(1 downto 0),
      CH0_DDR4_1_dm_n(8 downto 0) => VSL_DIMM2_dm_n(8 downto 0),
      CH0_DDR4_1_dq(71 downto 0) => VSL_DIMM2_dq(71 downto 0),
      CH0_DDR4_1_dqs_c(8 downto 0) => VSL_DIMM2_dqs_c(8 downto 0),
      CH0_DDR4_1_dqs_t(8 downto 0) => VSL_DIMM2_dqs_t(8 downto 0),
      CH0_DDR4_1_odt(1 downto 0) => axi_noc_2_CH0_DDR4_1_ODT(1 downto 0),
      CH0_DDR4_1_reset_n(0) => axi_noc_2_CH0_DDR4_1_RESET_N(0),
      S00_INI_internoc(0) => axi_noc_0_M00_INI_INTERNOC(0),
      S01_INI_internoc(0) => axi_noc_0_M01_INI_INTERNOC(0),
      S02_INI_internoc(0) => axi_noc_0_M02_INI_INTERNOC(0),
      S03_INI_internoc(0) => axi_noc_0_M03_INI_INTERNOC(0),
      sys_clk0_clk_n(0) => sys_clk0_0_3_CLK_N(0),
      sys_clk0_clk_p(0) => sys_clk0_0_3_CLK_P(0),
      sys_clk1_clk_n(0) => sys_clk1_0_1_CLK_N(0),
      sys_clk1_clk_p(0) => sys_clk1_0_1_CLK_P(0)
    );
sys_clk_module_0: component design_1_sys_clk_module_0_0
     port map (
      CNC_VSL_ALIGN_N => CNC_VSL_ALIGN_N_0_1,
      CNC_VSL_ALIGN_P => CNC_VSL_ALIGN_P_0_1,
      LMK_VSL_250M_CLK_IN_N => LMK_VSL_250M_CLK_IN_N_0_1,
      LMK_VSL_250M_CLK_IN_P => LMK_VSL_250M_CLK_IN_P_0_1,
      LMK_VSL_500M_CLK_IN_N => LMK_VSL_500M_CLK_IN_N_0_1,
      LMK_VSL_500M_CLK_IN_P => LMK_VSL_500M_CLK_IN_P_0_1,
      LMK_VSL_RFU_CLK_IN_N => LMK_VSL_RFU_CLK_IN_N_0_1,
      LMK_VSL_RFU_CLK_IN_P => LMK_VSL_RFU_CLK_IN_P_0_1,
      clk_250m => NLW_sys_clk_module_0_clk_250m_UNCONNECTED,
      clk_250m_direct => NLW_sys_clk_module_0_clk_250m_direct_UNCONNECTED,
      clk_500m => NLW_sys_clk_module_0_clk_500m_UNCONNECTED,
      clk_500m_vec(0) => NLW_sys_clk_module_0_clk_500m_vec_UNCONNECTED(0)
    );
versal_cips_0: component design_1_versal_cips_0_0
     port map (
      cpm_cor_irq => NLW_versal_cips_0_cpm_cor_irq_UNCONNECTED,
      cpm_irq0 => '0',
      cpm_irq1 => '0',
      cpm_misc_irq => NLW_versal_cips_0_cpm_misc_irq_UNCONNECTED,
      cpm_pcie_noc_axi0_araddr(63 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_ARADDR(63 downto 0),
      cpm_pcie_noc_axi0_arburst(1 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_ARBURST(1 downto 0),
      cpm_pcie_noc_axi0_arcache(3 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_ARCACHE(3 downto 0),
      cpm_pcie_noc_axi0_arid(15 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_ARID(15 downto 0),
      cpm_pcie_noc_axi0_arlen(7 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_ARLEN(7 downto 0),
      cpm_pcie_noc_axi0_arlock => versal_cips_0_CPM_PCIE_NOC_0_ARLOCK,
      cpm_pcie_noc_axi0_arprot(2 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_ARPROT(2 downto 0),
      cpm_pcie_noc_axi0_arqos(3 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_ARQOS(3 downto 0),
      cpm_pcie_noc_axi0_arready => versal_cips_0_CPM_PCIE_NOC_0_ARREADY(0),
      cpm_pcie_noc_axi0_arsize(2 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_ARSIZE(2 downto 0),
      cpm_pcie_noc_axi0_aruser(17 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_ARUSER(17 downto 0),
      cpm_pcie_noc_axi0_arvalid => versal_cips_0_CPM_PCIE_NOC_0_ARVALID,
      cpm_pcie_noc_axi0_awaddr(63 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_AWADDR(63 downto 0),
      cpm_pcie_noc_axi0_awburst(1 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_AWBURST(1 downto 0),
      cpm_pcie_noc_axi0_awcache(3 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_AWCACHE(3 downto 0),
      cpm_pcie_noc_axi0_awid(15 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_AWID(15 downto 0),
      cpm_pcie_noc_axi0_awlen(7 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_AWLEN(7 downto 0),
      cpm_pcie_noc_axi0_awlock => versal_cips_0_CPM_PCIE_NOC_0_AWLOCK,
      cpm_pcie_noc_axi0_awprot(2 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_AWPROT(2 downto 0),
      cpm_pcie_noc_axi0_awqos(3 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_AWQOS(3 downto 0),
      cpm_pcie_noc_axi0_awready => versal_cips_0_CPM_PCIE_NOC_0_AWREADY(0),
      cpm_pcie_noc_axi0_awsize(2 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_AWSIZE(2 downto 0),
      cpm_pcie_noc_axi0_awuser(17 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_AWUSER(17 downto 0),
      cpm_pcie_noc_axi0_awvalid => versal_cips_0_CPM_PCIE_NOC_0_AWVALID,
      cpm_pcie_noc_axi0_bid(15 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_BID(15 downto 0),
      cpm_pcie_noc_axi0_bready => versal_cips_0_CPM_PCIE_NOC_0_BREADY,
      cpm_pcie_noc_axi0_bresp(1 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_BRESP(1 downto 0),
      cpm_pcie_noc_axi0_bvalid => versal_cips_0_CPM_PCIE_NOC_0_BVALID(0),
      cpm_pcie_noc_axi0_clk => versal_cips_0_cpm_pcie_noc_axi0_clk,
      cpm_pcie_noc_axi0_rdata(127 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_RDATA(127 downto 0),
      cpm_pcie_noc_axi0_rid(15 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_RID(15 downto 0),
      cpm_pcie_noc_axi0_rlast => versal_cips_0_CPM_PCIE_NOC_0_RLAST(0),
      cpm_pcie_noc_axi0_rready => versal_cips_0_CPM_PCIE_NOC_0_RREADY,
      cpm_pcie_noc_axi0_rresp(1 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_RRESP(1 downto 0),
      cpm_pcie_noc_axi0_rvalid => versal_cips_0_CPM_PCIE_NOC_0_RVALID(0),
      cpm_pcie_noc_axi0_wdata(127 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_WDATA(127 downto 0),
      cpm_pcie_noc_axi0_wlast => versal_cips_0_CPM_PCIE_NOC_0_WLAST,
      cpm_pcie_noc_axi0_wready => versal_cips_0_CPM_PCIE_NOC_0_WREADY(0),
      cpm_pcie_noc_axi0_wstrb(15 downto 0) => versal_cips_0_CPM_PCIE_NOC_0_WSTRB(15 downto 0),
      cpm_pcie_noc_axi0_wvalid => versal_cips_0_CPM_PCIE_NOC_0_WVALID,
      cpm_pcie_noc_axi1_araddr(63 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_ARADDR(63 downto 0),
      cpm_pcie_noc_axi1_arburst(1 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_ARBURST(1 downto 0),
      cpm_pcie_noc_axi1_arcache(3 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_ARCACHE(3 downto 0),
      cpm_pcie_noc_axi1_arid(15 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_ARID(15 downto 0),
      cpm_pcie_noc_axi1_arlen(7 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_ARLEN(7 downto 0),
      cpm_pcie_noc_axi1_arlock => versal_cips_0_CPM_PCIE_NOC_1_ARLOCK,
      cpm_pcie_noc_axi1_arprot(2 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_ARPROT(2 downto 0),
      cpm_pcie_noc_axi1_arqos(3 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_ARQOS(3 downto 0),
      cpm_pcie_noc_axi1_arready => versal_cips_0_CPM_PCIE_NOC_1_ARREADY(0),
      cpm_pcie_noc_axi1_arsize(2 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_ARSIZE(2 downto 0),
      cpm_pcie_noc_axi1_aruser(17 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_ARUSER(17 downto 0),
      cpm_pcie_noc_axi1_arvalid => versal_cips_0_CPM_PCIE_NOC_1_ARVALID,
      cpm_pcie_noc_axi1_awaddr(63 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_AWADDR(63 downto 0),
      cpm_pcie_noc_axi1_awburst(1 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_AWBURST(1 downto 0),
      cpm_pcie_noc_axi1_awcache(3 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_AWCACHE(3 downto 0),
      cpm_pcie_noc_axi1_awid(15 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_AWID(15 downto 0),
      cpm_pcie_noc_axi1_awlen(7 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_AWLEN(7 downto 0),
      cpm_pcie_noc_axi1_awlock => versal_cips_0_CPM_PCIE_NOC_1_AWLOCK,
      cpm_pcie_noc_axi1_awprot(2 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_AWPROT(2 downto 0),
      cpm_pcie_noc_axi1_awqos(3 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_AWQOS(3 downto 0),
      cpm_pcie_noc_axi1_awready => versal_cips_0_CPM_PCIE_NOC_1_AWREADY(0),
      cpm_pcie_noc_axi1_awsize(2 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_AWSIZE(2 downto 0),
      cpm_pcie_noc_axi1_awuser(17 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_AWUSER(17 downto 0),
      cpm_pcie_noc_axi1_awvalid => versal_cips_0_CPM_PCIE_NOC_1_AWVALID,
      cpm_pcie_noc_axi1_bid(15 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_BID(15 downto 0),
      cpm_pcie_noc_axi1_bready => versal_cips_0_CPM_PCIE_NOC_1_BREADY,
      cpm_pcie_noc_axi1_bresp(1 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_BRESP(1 downto 0),
      cpm_pcie_noc_axi1_bvalid => versal_cips_0_CPM_PCIE_NOC_1_BVALID(0),
      cpm_pcie_noc_axi1_clk => versal_cips_0_cpm_pcie_noc_axi1_clk,
      cpm_pcie_noc_axi1_rdata(127 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_RDATA(127 downto 0),
      cpm_pcie_noc_axi1_rid(15 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_RID(15 downto 0),
      cpm_pcie_noc_axi1_rlast => versal_cips_0_CPM_PCIE_NOC_1_RLAST(0),
      cpm_pcie_noc_axi1_rready => versal_cips_0_CPM_PCIE_NOC_1_RREADY,
      cpm_pcie_noc_axi1_rresp(1 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_RRESP(1 downto 0),
      cpm_pcie_noc_axi1_rvalid => versal_cips_0_CPM_PCIE_NOC_1_RVALID(0),
      cpm_pcie_noc_axi1_wdata(127 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_WDATA(127 downto 0),
      cpm_pcie_noc_axi1_wlast => versal_cips_0_CPM_PCIE_NOC_1_WLAST,
      cpm_pcie_noc_axi1_wready => versal_cips_0_CPM_PCIE_NOC_1_WREADY(0),
      cpm_pcie_noc_axi1_wstrb(15 downto 0) => versal_cips_0_CPM_PCIE_NOC_1_WSTRB(15 downto 0),
      cpm_pcie_noc_axi1_wvalid => versal_cips_0_CPM_PCIE_NOC_1_WVALID,
      cpm_uncor_irq => NLW_versal_cips_0_cpm_uncor_irq_UNCONNECTED,
      dma0_axi_aresetn => NLW_versal_cips_0_dma0_axi_aresetn_UNCONNECTED,
      dma0_irq => NLW_versal_cips_0_dma0_irq_UNCONNECTED,
      dma0_soft_resetn => '1',
      dma0_st_rx_msg_data(31 downto 0) => NLW_versal_cips_0_dma0_st_rx_msg_data_UNCONNECTED(31 downto 0),
      dma0_st_rx_msg_last => NLW_versal_cips_0_dma0_st_rx_msg_last_UNCONNECTED,
      dma0_st_rx_msg_rdy => '1',
      dma0_st_rx_msg_valid => NLW_versal_cips_0_dma0_st_rx_msg_valid_UNCONNECTED,
      fpd_axi_noc_axi0_araddr(63 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARADDR(63 downto 0),
      fpd_axi_noc_axi0_arburst(1 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARBURST(1 downto 0),
      fpd_axi_noc_axi0_arcache(3 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARCACHE(3 downto 0),
      fpd_axi_noc_axi0_arid(15 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARID(15 downto 0),
      fpd_axi_noc_axi0_arlen(7 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARLEN(7 downto 0),
      fpd_axi_noc_axi0_arlock => versal_cips_0_FPD_AXI_NOC_0_ARLOCK,
      fpd_axi_noc_axi0_arprot(2 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARPROT(2 downto 0),
      fpd_axi_noc_axi0_arqos(3 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARQOS(3 downto 0),
      fpd_axi_noc_axi0_arready => versal_cips_0_FPD_AXI_NOC_0_ARREADY(0),
      fpd_axi_noc_axi0_arsize(2 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARSIZE(2 downto 0),
      fpd_axi_noc_axi0_aruser(17 downto 0) => versal_cips_0_FPD_AXI_NOC_0_ARUSER(17 downto 0),
      fpd_axi_noc_axi0_arvalid => versal_cips_0_FPD_AXI_NOC_0_ARVALID,
      fpd_axi_noc_axi0_awaddr(63 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWADDR(63 downto 0),
      fpd_axi_noc_axi0_awburst(1 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWBURST(1 downto 0),
      fpd_axi_noc_axi0_awcache(3 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWCACHE(3 downto 0),
      fpd_axi_noc_axi0_awid(15 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWID(15 downto 0),
      fpd_axi_noc_axi0_awlen(7 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWLEN(7 downto 0),
      fpd_axi_noc_axi0_awlock => versal_cips_0_FPD_AXI_NOC_0_AWLOCK,
      fpd_axi_noc_axi0_awprot(2 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWPROT(2 downto 0),
      fpd_axi_noc_axi0_awqos(3 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWQOS(3 downto 0),
      fpd_axi_noc_axi0_awready => versal_cips_0_FPD_AXI_NOC_0_AWREADY(0),
      fpd_axi_noc_axi0_awsize(2 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWSIZE(2 downto 0),
      fpd_axi_noc_axi0_awuser(17 downto 0) => versal_cips_0_FPD_AXI_NOC_0_AWUSER(17 downto 0),
      fpd_axi_noc_axi0_awvalid => versal_cips_0_FPD_AXI_NOC_0_AWVALID,
      fpd_axi_noc_axi0_bid(15 downto 0) => versal_cips_0_FPD_AXI_NOC_0_BID(15 downto 0),
      fpd_axi_noc_axi0_bready => versal_cips_0_FPD_AXI_NOC_0_BREADY,
      fpd_axi_noc_axi0_bresp(1 downto 0) => versal_cips_0_FPD_AXI_NOC_0_BRESP(1 downto 0),
      fpd_axi_noc_axi0_bvalid => versal_cips_0_FPD_AXI_NOC_0_BVALID(0),
      fpd_axi_noc_axi0_clk => versal_cips_0_fpd_axi_noc_axi0_clk,
      fpd_axi_noc_axi0_rdata(127 downto 0) => versal_cips_0_FPD_AXI_NOC_0_RDATA(127 downto 0),
      fpd_axi_noc_axi0_rid(15 downto 0) => versal_cips_0_FPD_AXI_NOC_0_RID(15 downto 0),
      fpd_axi_noc_axi0_rlast => versal_cips_0_FPD_AXI_NOC_0_RLAST(0),
      fpd_axi_noc_axi0_rready => versal_cips_0_FPD_AXI_NOC_0_RREADY,
      fpd_axi_noc_axi0_rresp(1 downto 0) => versal_cips_0_FPD_AXI_NOC_0_RRESP(1 downto 0),
      fpd_axi_noc_axi0_rvalid => versal_cips_0_FPD_AXI_NOC_0_RVALID(0),
      fpd_axi_noc_axi0_wdata(127 downto 0) => versal_cips_0_FPD_AXI_NOC_0_WDATA(127 downto 0),
      fpd_axi_noc_axi0_wlast => versal_cips_0_FPD_AXI_NOC_0_WLAST,
      fpd_axi_noc_axi0_wready => versal_cips_0_FPD_AXI_NOC_0_WREADY(0),
      fpd_axi_noc_axi0_wstrb(15 downto 0) => versal_cips_0_FPD_AXI_NOC_0_WSTRB(15 downto 0),
      fpd_axi_noc_axi0_wvalid => versal_cips_0_FPD_AXI_NOC_0_WVALID,
      fpd_cci_noc_axi0_araddr(63 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARADDR(63 downto 0),
      fpd_cci_noc_axi0_arburst(1 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARBURST(1 downto 0),
      fpd_cci_noc_axi0_arcache(3 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARCACHE(3 downto 0),
      fpd_cci_noc_axi0_arid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARID(15 downto 0),
      fpd_cci_noc_axi0_arlen(7 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARLEN(7 downto 0),
      fpd_cci_noc_axi0_arlock => versal_cips_0_FPD_CCI_NOC_0_ARLOCK,
      fpd_cci_noc_axi0_arprot(2 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARPROT(2 downto 0),
      fpd_cci_noc_axi0_arqos(3 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARQOS(3 downto 0),
      fpd_cci_noc_axi0_arready => versal_cips_0_FPD_CCI_NOC_0_ARREADY(0),
      fpd_cci_noc_axi0_arsize(2 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARSIZE(2 downto 0),
      fpd_cci_noc_axi0_aruser(17 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARUSER(17 downto 0),
      fpd_cci_noc_axi0_arvalid => versal_cips_0_FPD_CCI_NOC_0_ARVALID,
      fpd_cci_noc_axi0_awaddr(63 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWADDR(63 downto 0),
      fpd_cci_noc_axi0_awburst(1 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWBURST(1 downto 0),
      fpd_cci_noc_axi0_awcache(3 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWCACHE(3 downto 0),
      fpd_cci_noc_axi0_awid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWID(15 downto 0),
      fpd_cci_noc_axi0_awlen(7 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWLEN(7 downto 0),
      fpd_cci_noc_axi0_awlock => versal_cips_0_FPD_CCI_NOC_0_AWLOCK,
      fpd_cci_noc_axi0_awprot(2 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWPROT(2 downto 0),
      fpd_cci_noc_axi0_awqos(3 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWQOS(3 downto 0),
      fpd_cci_noc_axi0_awready => versal_cips_0_FPD_CCI_NOC_0_AWREADY(0),
      fpd_cci_noc_axi0_awsize(2 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWSIZE(2 downto 0),
      fpd_cci_noc_axi0_awuser(17 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWUSER(17 downto 0),
      fpd_cci_noc_axi0_awvalid => versal_cips_0_FPD_CCI_NOC_0_AWVALID,
      fpd_cci_noc_axi0_bid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_0_BID(15 downto 0),
      fpd_cci_noc_axi0_bready => versal_cips_0_FPD_CCI_NOC_0_BREADY,
      fpd_cci_noc_axi0_bresp(1 downto 0) => versal_cips_0_FPD_CCI_NOC_0_BRESP(1 downto 0),
      fpd_cci_noc_axi0_bvalid => versal_cips_0_FPD_CCI_NOC_0_BVALID(0),
      fpd_cci_noc_axi0_clk => versal_cips_0_fpd_cci_noc_axi0_clk,
      fpd_cci_noc_axi0_rdata(127 downto 0) => versal_cips_0_FPD_CCI_NOC_0_RDATA(127 downto 0),
      fpd_cci_noc_axi0_rid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_0_RID(15 downto 0),
      fpd_cci_noc_axi0_rlast => versal_cips_0_FPD_CCI_NOC_0_RLAST(0),
      fpd_cci_noc_axi0_rready => versal_cips_0_FPD_CCI_NOC_0_RREADY,
      fpd_cci_noc_axi0_rresp(1 downto 0) => versal_cips_0_FPD_CCI_NOC_0_RRESP(1 downto 0),
      fpd_cci_noc_axi0_rvalid => versal_cips_0_FPD_CCI_NOC_0_RVALID(0),
      fpd_cci_noc_axi0_wdata(127 downto 0) => versal_cips_0_FPD_CCI_NOC_0_WDATA(127 downto 0),
      fpd_cci_noc_axi0_wlast => versal_cips_0_FPD_CCI_NOC_0_WLAST,
      fpd_cci_noc_axi0_wready => versal_cips_0_FPD_CCI_NOC_0_WREADY(0),
      fpd_cci_noc_axi0_wstrb(15 downto 0) => versal_cips_0_FPD_CCI_NOC_0_WSTRB(15 downto 0),
      fpd_cci_noc_axi0_wuser(16 downto 0) => versal_cips_0_FPD_CCI_NOC_0_WUSER(16 downto 0),
      fpd_cci_noc_axi0_wvalid => versal_cips_0_FPD_CCI_NOC_0_WVALID,
      fpd_cci_noc_axi1_araddr(63 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARADDR(63 downto 0),
      fpd_cci_noc_axi1_arburst(1 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARBURST(1 downto 0),
      fpd_cci_noc_axi1_arcache(3 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARCACHE(3 downto 0),
      fpd_cci_noc_axi1_arid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARID(15 downto 0),
      fpd_cci_noc_axi1_arlen(7 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARLEN(7 downto 0),
      fpd_cci_noc_axi1_arlock => versal_cips_0_FPD_CCI_NOC_1_ARLOCK,
      fpd_cci_noc_axi1_arprot(2 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARPROT(2 downto 0),
      fpd_cci_noc_axi1_arqos(3 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARQOS(3 downto 0),
      fpd_cci_noc_axi1_arready => versal_cips_0_FPD_CCI_NOC_1_ARREADY(0),
      fpd_cci_noc_axi1_arsize(2 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARSIZE(2 downto 0),
      fpd_cci_noc_axi1_aruser(17 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARUSER(17 downto 0),
      fpd_cci_noc_axi1_arvalid => versal_cips_0_FPD_CCI_NOC_1_ARVALID,
      fpd_cci_noc_axi1_awaddr(63 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWADDR(63 downto 0),
      fpd_cci_noc_axi1_awburst(1 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWBURST(1 downto 0),
      fpd_cci_noc_axi1_awcache(3 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWCACHE(3 downto 0),
      fpd_cci_noc_axi1_awid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWID(15 downto 0),
      fpd_cci_noc_axi1_awlen(7 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWLEN(7 downto 0),
      fpd_cci_noc_axi1_awlock => versal_cips_0_FPD_CCI_NOC_1_AWLOCK,
      fpd_cci_noc_axi1_awprot(2 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWPROT(2 downto 0),
      fpd_cci_noc_axi1_awqos(3 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWQOS(3 downto 0),
      fpd_cci_noc_axi1_awready => versal_cips_0_FPD_CCI_NOC_1_AWREADY(0),
      fpd_cci_noc_axi1_awsize(2 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWSIZE(2 downto 0),
      fpd_cci_noc_axi1_awuser(17 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWUSER(17 downto 0),
      fpd_cci_noc_axi1_awvalid => versal_cips_0_FPD_CCI_NOC_1_AWVALID,
      fpd_cci_noc_axi1_bid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_1_BID(15 downto 0),
      fpd_cci_noc_axi1_bready => versal_cips_0_FPD_CCI_NOC_1_BREADY,
      fpd_cci_noc_axi1_bresp(1 downto 0) => versal_cips_0_FPD_CCI_NOC_1_BRESP(1 downto 0),
      fpd_cci_noc_axi1_bvalid => versal_cips_0_FPD_CCI_NOC_1_BVALID(0),
      fpd_cci_noc_axi1_clk => versal_cips_0_fpd_cci_noc_axi1_clk,
      fpd_cci_noc_axi1_rdata(127 downto 0) => versal_cips_0_FPD_CCI_NOC_1_RDATA(127 downto 0),
      fpd_cci_noc_axi1_rid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_1_RID(15 downto 0),
      fpd_cci_noc_axi1_rlast => versal_cips_0_FPD_CCI_NOC_1_RLAST(0),
      fpd_cci_noc_axi1_rready => versal_cips_0_FPD_CCI_NOC_1_RREADY,
      fpd_cci_noc_axi1_rresp(1 downto 0) => versal_cips_0_FPD_CCI_NOC_1_RRESP(1 downto 0),
      fpd_cci_noc_axi1_rvalid => versal_cips_0_FPD_CCI_NOC_1_RVALID(0),
      fpd_cci_noc_axi1_wdata(127 downto 0) => versal_cips_0_FPD_CCI_NOC_1_WDATA(127 downto 0),
      fpd_cci_noc_axi1_wlast => versal_cips_0_FPD_CCI_NOC_1_WLAST,
      fpd_cci_noc_axi1_wready => versal_cips_0_FPD_CCI_NOC_1_WREADY(0),
      fpd_cci_noc_axi1_wstrb(15 downto 0) => versal_cips_0_FPD_CCI_NOC_1_WSTRB(15 downto 0),
      fpd_cci_noc_axi1_wuser(16 downto 0) => versal_cips_0_FPD_CCI_NOC_1_WUSER(16 downto 0),
      fpd_cci_noc_axi1_wvalid => versal_cips_0_FPD_CCI_NOC_1_WVALID,
      fpd_cci_noc_axi2_araddr(63 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARADDR(63 downto 0),
      fpd_cci_noc_axi2_arburst(1 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARBURST(1 downto 0),
      fpd_cci_noc_axi2_arcache(3 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARCACHE(3 downto 0),
      fpd_cci_noc_axi2_arid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARID(15 downto 0),
      fpd_cci_noc_axi2_arlen(7 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARLEN(7 downto 0),
      fpd_cci_noc_axi2_arlock => versal_cips_0_FPD_CCI_NOC_2_ARLOCK,
      fpd_cci_noc_axi2_arprot(2 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARPROT(2 downto 0),
      fpd_cci_noc_axi2_arqos(3 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARQOS(3 downto 0),
      fpd_cci_noc_axi2_arready => versal_cips_0_FPD_CCI_NOC_2_ARREADY(0),
      fpd_cci_noc_axi2_arsize(2 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARSIZE(2 downto 0),
      fpd_cci_noc_axi2_aruser(17 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARUSER(17 downto 0),
      fpd_cci_noc_axi2_arvalid => versal_cips_0_FPD_CCI_NOC_2_ARVALID,
      fpd_cci_noc_axi2_awaddr(63 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWADDR(63 downto 0),
      fpd_cci_noc_axi2_awburst(1 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWBURST(1 downto 0),
      fpd_cci_noc_axi2_awcache(3 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWCACHE(3 downto 0),
      fpd_cci_noc_axi2_awid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWID(15 downto 0),
      fpd_cci_noc_axi2_awlen(7 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWLEN(7 downto 0),
      fpd_cci_noc_axi2_awlock => versal_cips_0_FPD_CCI_NOC_2_AWLOCK,
      fpd_cci_noc_axi2_awprot(2 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWPROT(2 downto 0),
      fpd_cci_noc_axi2_awqos(3 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWQOS(3 downto 0),
      fpd_cci_noc_axi2_awready => versal_cips_0_FPD_CCI_NOC_2_AWREADY(0),
      fpd_cci_noc_axi2_awsize(2 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWSIZE(2 downto 0),
      fpd_cci_noc_axi2_awuser(17 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWUSER(17 downto 0),
      fpd_cci_noc_axi2_awvalid => versal_cips_0_FPD_CCI_NOC_2_AWVALID,
      fpd_cci_noc_axi2_bid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_2_BID(15 downto 0),
      fpd_cci_noc_axi2_bready => versal_cips_0_FPD_CCI_NOC_2_BREADY,
      fpd_cci_noc_axi2_bresp(1 downto 0) => versal_cips_0_FPD_CCI_NOC_2_BRESP(1 downto 0),
      fpd_cci_noc_axi2_bvalid => versal_cips_0_FPD_CCI_NOC_2_BVALID(0),
      fpd_cci_noc_axi2_clk => versal_cips_0_fpd_cci_noc_axi2_clk,
      fpd_cci_noc_axi2_rdata(127 downto 0) => versal_cips_0_FPD_CCI_NOC_2_RDATA(127 downto 0),
      fpd_cci_noc_axi2_rid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_2_RID(15 downto 0),
      fpd_cci_noc_axi2_rlast => versal_cips_0_FPD_CCI_NOC_2_RLAST(0),
      fpd_cci_noc_axi2_rready => versal_cips_0_FPD_CCI_NOC_2_RREADY,
      fpd_cci_noc_axi2_rresp(1 downto 0) => versal_cips_0_FPD_CCI_NOC_2_RRESP(1 downto 0),
      fpd_cci_noc_axi2_rvalid => versal_cips_0_FPD_CCI_NOC_2_RVALID(0),
      fpd_cci_noc_axi2_wdata(127 downto 0) => versal_cips_0_FPD_CCI_NOC_2_WDATA(127 downto 0),
      fpd_cci_noc_axi2_wlast => versal_cips_0_FPD_CCI_NOC_2_WLAST,
      fpd_cci_noc_axi2_wready => versal_cips_0_FPD_CCI_NOC_2_WREADY(0),
      fpd_cci_noc_axi2_wstrb(15 downto 0) => versal_cips_0_FPD_CCI_NOC_2_WSTRB(15 downto 0),
      fpd_cci_noc_axi2_wuser(16 downto 0) => versal_cips_0_FPD_CCI_NOC_2_WUSER(16 downto 0),
      fpd_cci_noc_axi2_wvalid => versal_cips_0_FPD_CCI_NOC_2_WVALID,
      fpd_cci_noc_axi3_araddr(63 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARADDR(63 downto 0),
      fpd_cci_noc_axi3_arburst(1 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARBURST(1 downto 0),
      fpd_cci_noc_axi3_arcache(3 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARCACHE(3 downto 0),
      fpd_cci_noc_axi3_arid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARID(15 downto 0),
      fpd_cci_noc_axi3_arlen(7 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARLEN(7 downto 0),
      fpd_cci_noc_axi3_arlock => versal_cips_0_FPD_CCI_NOC_3_ARLOCK,
      fpd_cci_noc_axi3_arprot(2 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARPROT(2 downto 0),
      fpd_cci_noc_axi3_arqos(3 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARQOS(3 downto 0),
      fpd_cci_noc_axi3_arready => versal_cips_0_FPD_CCI_NOC_3_ARREADY(0),
      fpd_cci_noc_axi3_arsize(2 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARSIZE(2 downto 0),
      fpd_cci_noc_axi3_aruser(17 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARUSER(17 downto 0),
      fpd_cci_noc_axi3_arvalid => versal_cips_0_FPD_CCI_NOC_3_ARVALID,
      fpd_cci_noc_axi3_awaddr(63 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWADDR(63 downto 0),
      fpd_cci_noc_axi3_awburst(1 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWBURST(1 downto 0),
      fpd_cci_noc_axi3_awcache(3 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWCACHE(3 downto 0),
      fpd_cci_noc_axi3_awid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWID(15 downto 0),
      fpd_cci_noc_axi3_awlen(7 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWLEN(7 downto 0),
      fpd_cci_noc_axi3_awlock => versal_cips_0_FPD_CCI_NOC_3_AWLOCK,
      fpd_cci_noc_axi3_awprot(2 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWPROT(2 downto 0),
      fpd_cci_noc_axi3_awqos(3 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWQOS(3 downto 0),
      fpd_cci_noc_axi3_awready => versal_cips_0_FPD_CCI_NOC_3_AWREADY(0),
      fpd_cci_noc_axi3_awsize(2 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWSIZE(2 downto 0),
      fpd_cci_noc_axi3_awuser(17 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWUSER(17 downto 0),
      fpd_cci_noc_axi3_awvalid => versal_cips_0_FPD_CCI_NOC_3_AWVALID,
      fpd_cci_noc_axi3_bid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_3_BID(15 downto 0),
      fpd_cci_noc_axi3_bready => versal_cips_0_FPD_CCI_NOC_3_BREADY,
      fpd_cci_noc_axi3_bresp(1 downto 0) => versal_cips_0_FPD_CCI_NOC_3_BRESP(1 downto 0),
      fpd_cci_noc_axi3_bvalid => versal_cips_0_FPD_CCI_NOC_3_BVALID(0),
      fpd_cci_noc_axi3_clk => versal_cips_0_fpd_cci_noc_axi3_clk,
      fpd_cci_noc_axi3_rdata(127 downto 0) => versal_cips_0_FPD_CCI_NOC_3_RDATA(127 downto 0),
      fpd_cci_noc_axi3_rid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_3_RID(15 downto 0),
      fpd_cci_noc_axi3_rlast => versal_cips_0_FPD_CCI_NOC_3_RLAST(0),
      fpd_cci_noc_axi3_rready => versal_cips_0_FPD_CCI_NOC_3_RREADY,
      fpd_cci_noc_axi3_rresp(1 downto 0) => versal_cips_0_FPD_CCI_NOC_3_RRESP(1 downto 0),
      fpd_cci_noc_axi3_rvalid => versal_cips_0_FPD_CCI_NOC_3_RVALID(0),
      fpd_cci_noc_axi3_wdata(127 downto 0) => versal_cips_0_FPD_CCI_NOC_3_WDATA(127 downto 0),
      fpd_cci_noc_axi3_wlast => versal_cips_0_FPD_CCI_NOC_3_WLAST,
      fpd_cci_noc_axi3_wready => versal_cips_0_FPD_CCI_NOC_3_WREADY(0),
      fpd_cci_noc_axi3_wstrb(15 downto 0) => versal_cips_0_FPD_CCI_NOC_3_WSTRB(15 downto 0),
      fpd_cci_noc_axi3_wuser(16 downto 0) => versal_cips_0_FPD_CCI_NOC_3_WUSER(16 downto 0),
      fpd_cci_noc_axi3_wvalid => versal_cips_0_FPD_CCI_NOC_3_WVALID,
      gem0_tsu_timer_cnt(93 downto 0) => NLW_versal_cips_0_gem0_tsu_timer_cnt_UNCONNECTED(93 downto 0),
      gt_refclk0_n => gt_refclk0_0_1_CLK_N,
      gt_refclk0_p => gt_refclk0_0_1_CLK_P,
      gt_refclk1_n => gt_refclk1_0_1_CLK_N,
      gt_refclk1_p => gt_refclk1_0_1_CLK_P,
      lpd_axi_noc_clk => versal_cips_0_lpd_axi_noc_clk,
      noc_lpd_axi_axi0_araddr(63 downto 0) => versal_cips_0_NOC_LPD_AXI_0_ARADDR(63 downto 0),
      noc_lpd_axi_axi0_arburst(1 downto 0) => versal_cips_0_NOC_LPD_AXI_0_ARBURST(1 downto 0),
      noc_lpd_axi_axi0_arcache(3 downto 0) => versal_cips_0_NOC_LPD_AXI_0_ARCACHE(3 downto 0),
      noc_lpd_axi_axi0_arid(15 downto 0) => versal_cips_0_NOC_LPD_AXI_0_ARID(15 downto 0),
      noc_lpd_axi_axi0_arlen(7 downto 0) => versal_cips_0_NOC_LPD_AXI_0_ARLEN(7 downto 0),
      noc_lpd_axi_axi0_arlock => versal_cips_0_NOC_LPD_AXI_0_ARLOCK,
      noc_lpd_axi_axi0_arprot(2 downto 0) => versal_cips_0_NOC_LPD_AXI_0_ARPROT(2 downto 0),
      noc_lpd_axi_axi0_arqos(3 downto 0) => versal_cips_0_NOC_LPD_AXI_0_ARQOS(3 downto 0),
      noc_lpd_axi_axi0_arready => versal_cips_0_NOC_LPD_AXI_0_ARREADY(0),
      noc_lpd_axi_axi0_arsize(2 downto 0) => versal_cips_0_NOC_LPD_AXI_0_ARSIZE(2 downto 0),
      noc_lpd_axi_axi0_aruser(17 downto 0) => versal_cips_0_NOC_LPD_AXI_0_ARUSER(17 downto 0),
      noc_lpd_axi_axi0_arvalid => versal_cips_0_NOC_LPD_AXI_0_ARVALID,
      noc_lpd_axi_axi0_awaddr(63 downto 0) => versal_cips_0_NOC_LPD_AXI_0_AWADDR(63 downto 0),
      noc_lpd_axi_axi0_awburst(1 downto 0) => versal_cips_0_NOC_LPD_AXI_0_AWBURST(1 downto 0),
      noc_lpd_axi_axi0_awcache(3 downto 0) => versal_cips_0_NOC_LPD_AXI_0_AWCACHE(3 downto 0),
      noc_lpd_axi_axi0_awid(15 downto 0) => versal_cips_0_NOC_LPD_AXI_0_AWID(15 downto 0),
      noc_lpd_axi_axi0_awlen(7 downto 0) => versal_cips_0_NOC_LPD_AXI_0_AWLEN(7 downto 0),
      noc_lpd_axi_axi0_awlock => versal_cips_0_NOC_LPD_AXI_0_AWLOCK,
      noc_lpd_axi_axi0_awprot(2 downto 0) => versal_cips_0_NOC_LPD_AXI_0_AWPROT(2 downto 0),
      noc_lpd_axi_axi0_awqos(3 downto 0) => versal_cips_0_NOC_LPD_AXI_0_AWQOS(3 downto 0),
      noc_lpd_axi_axi0_awready => versal_cips_0_NOC_LPD_AXI_0_AWREADY(0),
      noc_lpd_axi_axi0_awsize(2 downto 0) => versal_cips_0_NOC_LPD_AXI_0_AWSIZE(2 downto 0),
      noc_lpd_axi_axi0_awuser(17 downto 0) => versal_cips_0_NOC_LPD_AXI_0_AWUSER(17 downto 0),
      noc_lpd_axi_axi0_awvalid => versal_cips_0_NOC_LPD_AXI_0_AWVALID,
      noc_lpd_axi_axi0_bid(15 downto 0) => versal_cips_0_NOC_LPD_AXI_0_BID(15 downto 0),
      noc_lpd_axi_axi0_bready => versal_cips_0_NOC_LPD_AXI_0_BREADY,
      noc_lpd_axi_axi0_bresp(1 downto 0) => versal_cips_0_NOC_LPD_AXI_0_BRESP(1 downto 0),
      noc_lpd_axi_axi0_bvalid => versal_cips_0_NOC_LPD_AXI_0_BVALID(0),
      noc_lpd_axi_axi0_rdata(127 downto 0) => versal_cips_0_NOC_LPD_AXI_0_RDATA(127 downto 0),
      noc_lpd_axi_axi0_rid(15 downto 0) => versal_cips_0_NOC_LPD_AXI_0_RID(15 downto 0),
      noc_lpd_axi_axi0_rlast => versal_cips_0_NOC_LPD_AXI_0_RLAST(0),
      noc_lpd_axi_axi0_rready => versal_cips_0_NOC_LPD_AXI_0_RREADY,
      noc_lpd_axi_axi0_rresp(1 downto 0) => versal_cips_0_NOC_LPD_AXI_0_RRESP(1 downto 0),
      noc_lpd_axi_axi0_rvalid => versal_cips_0_NOC_LPD_AXI_0_RVALID(0),
      noc_lpd_axi_axi0_wdata(127 downto 0) => versal_cips_0_NOC_LPD_AXI_0_WDATA(127 downto 0),
      noc_lpd_axi_axi0_wlast => versal_cips_0_NOC_LPD_AXI_0_WLAST,
      noc_lpd_axi_axi0_wready => versal_cips_0_NOC_LPD_AXI_0_WREADY(0),
      noc_lpd_axi_axi0_wstrb(15 downto 0) => versal_cips_0_NOC_LPD_AXI_0_WSTRB(15 downto 0),
      noc_lpd_axi_axi0_wvalid => versal_cips_0_NOC_LPD_AXI_0_WVALID,
      pcie0_gt_rxn(7 downto 0) => versal_cips_0_PCIE0_GT_GRX_N(7 downto 0),
      pcie0_gt_rxp(7 downto 0) => versal_cips_0_PCIE0_GT_GRX_P(7 downto 0),
      pcie0_gt_txn(7 downto 0) => versal_cips_0_PCIE0_GT_GTX_N(7 downto 0),
      pcie0_gt_txp(7 downto 0) => versal_cips_0_PCIE0_GT_GTX_P(7 downto 0),
      pcie0_user_clk => NLW_versal_cips_0_pcie0_user_clk_UNCONNECTED,
      pcie0_user_lnk_up => NLW_versal_cips_0_pcie0_user_lnk_up_UNCONNECTED,
      pcie1_cfg_interrupt_int(3 downto 0) => B"0000",
      pcie1_cfg_interrupt_pending(3 downto 0) => B"0000",
      pcie1_cfg_interrupt_sent => NLW_versal_cips_0_pcie1_cfg_interrupt_sent_UNCONNECTED,
      pcie1_cfg_msi_attr(2 downto 0) => B"000",
      pcie1_cfg_msi_data(31 downto 0) => NLW_versal_cips_0_pcie1_cfg_msi_data_UNCONNECTED(31 downto 0),
      pcie1_cfg_msi_enable(3 downto 0) => NLW_versal_cips_0_pcie1_cfg_msi_enable_UNCONNECTED(3 downto 0),
      pcie1_cfg_msi_function_number(7 downto 0) => B"00000000",
      pcie1_cfg_msi_int_vector(31 downto 0) => B"00000000000000000000000000000000",
      pcie1_cfg_msi_mmenable(11 downto 0) => NLW_versal_cips_0_pcie1_cfg_msi_mmenable_UNCONNECTED(11 downto 0),
      pcie1_cfg_msi_pending_status(31 downto 0) => B"00000000000000000000000000000000",
      pcie1_cfg_msi_pending_status_data_enable => '0',
      pcie1_cfg_msi_pending_status_function_number(1 downto 0) => B"00",
      pcie1_cfg_msi_select(1 downto 0) => B"00",
      pcie1_cfg_msi_tph_present => '0',
      pcie1_cfg_msi_tph_st_tag(7 downto 0) => B"00000000",
      pcie1_cfg_msi_tph_type(1 downto 0) => B"00",
      pcie1_gt_rxn(7 downto 0) => versal_cips_0_PCIE1_GT_GRX_N(7 downto 0),
      pcie1_gt_rxp(7 downto 0) => versal_cips_0_PCIE1_GT_GRX_P(7 downto 0),
      pcie1_gt_txn(7 downto 0) => versal_cips_0_PCIE1_GT_GTX_N(7 downto 0),
      pcie1_gt_txp(7 downto 0) => versal_cips_0_PCIE1_GT_GTX_P(7 downto 0),
      pcie1_m_axis_cq_tdata(511 downto 0) => NLW_versal_cips_0_pcie1_m_axis_cq_tdata_UNCONNECTED(511 downto 0),
      pcie1_m_axis_cq_tkeep(15 downto 0) => NLW_versal_cips_0_pcie1_m_axis_cq_tkeep_UNCONNECTED(15 downto 0),
      pcie1_m_axis_cq_tlast => NLW_versal_cips_0_pcie1_m_axis_cq_tlast_UNCONNECTED,
      pcie1_m_axis_cq_tready => '1',
      pcie1_m_axis_cq_tuser(182 downto 0) => NLW_versal_cips_0_pcie1_m_axis_cq_tuser_UNCONNECTED(182 downto 0),
      pcie1_m_axis_cq_tvalid => NLW_versal_cips_0_pcie1_m_axis_cq_tvalid_UNCONNECTED,
      pcie1_m_axis_rc_tdata(511 downto 0) => NLW_versal_cips_0_pcie1_m_axis_rc_tdata_UNCONNECTED(511 downto 0),
      pcie1_m_axis_rc_tkeep(15 downto 0) => NLW_versal_cips_0_pcie1_m_axis_rc_tkeep_UNCONNECTED(15 downto 0),
      pcie1_m_axis_rc_tlast => NLW_versal_cips_0_pcie1_m_axis_rc_tlast_UNCONNECTED,
      pcie1_m_axis_rc_tready => '1',
      pcie1_m_axis_rc_tuser(160 downto 0) => NLW_versal_cips_0_pcie1_m_axis_rc_tuser_UNCONNECTED(160 downto 0),
      pcie1_m_axis_rc_tvalid => NLW_versal_cips_0_pcie1_m_axis_rc_tvalid_UNCONNECTED,
      pcie1_s_axis_cc_tdata(511 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      pcie1_s_axis_cc_tkeep(15 downto 0) => B"1111111111111111",
      pcie1_s_axis_cc_tlast => '0',
      pcie1_s_axis_cc_tready => NLW_versal_cips_0_pcie1_s_axis_cc_tready_UNCONNECTED,
      pcie1_s_axis_cc_tuser(80 downto 0) => B"000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      pcie1_s_axis_cc_tvalid => '0',
      pcie1_s_axis_rq_tdata(511 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      pcie1_s_axis_rq_tkeep(15 downto 0) => B"1111111111111111",
      pcie1_s_axis_rq_tlast => '0',
      pcie1_s_axis_rq_tready => NLW_versal_cips_0_pcie1_s_axis_rq_tready_UNCONNECTED,
      pcie1_s_axis_rq_tuser(178 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      pcie1_s_axis_rq_tvalid => '0',
      pcie1_user_clk => NLW_versal_cips_0_pcie1_user_clk_UNCONNECTED,
      pcie1_user_lnk_up => NLW_versal_cips_0_pcie1_user_lnk_up_UNCONNECTED,
      pcie1_user_reset => NLW_versal_cips_0_pcie1_user_reset_UNCONNECTED,
      pmc_axi_noc_axi0_clk => versal_cips_0_pmc_axi_noc_axi0_clk,
      pmc_noc_axi0_araddr(63 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARADDR(63 downto 0),
      pmc_noc_axi0_arburst(1 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARBURST(1 downto 0),
      pmc_noc_axi0_arcache(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARCACHE(3 downto 0),
      pmc_noc_axi0_arid(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARID(15 downto 0),
      pmc_noc_axi0_arlen(7 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARLEN(7 downto 0),
      pmc_noc_axi0_arlock => versal_cips_0_PMC_NOC_AXI_0_ARLOCK,
      pmc_noc_axi0_arprot(2 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARPROT(2 downto 0),
      pmc_noc_axi0_arqos(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARQOS(3 downto 0),
      pmc_noc_axi0_arready => versal_cips_0_PMC_NOC_AXI_0_ARREADY(0),
      pmc_noc_axi0_arregion(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARREGION(3 downto 0),
      pmc_noc_axi0_arsize(2 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARSIZE(2 downto 0),
      pmc_noc_axi0_aruser(17 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARUSER(17 downto 0),
      pmc_noc_axi0_arvalid => versal_cips_0_PMC_NOC_AXI_0_ARVALID,
      pmc_noc_axi0_awaddr(63 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWADDR(63 downto 0),
      pmc_noc_axi0_awburst(1 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWBURST(1 downto 0),
      pmc_noc_axi0_awcache(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWCACHE(3 downto 0),
      pmc_noc_axi0_awid(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWID(15 downto 0),
      pmc_noc_axi0_awlen(7 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWLEN(7 downto 0),
      pmc_noc_axi0_awlock => versal_cips_0_PMC_NOC_AXI_0_AWLOCK,
      pmc_noc_axi0_awprot(2 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWPROT(2 downto 0),
      pmc_noc_axi0_awqos(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWQOS(3 downto 0),
      pmc_noc_axi0_awready => versal_cips_0_PMC_NOC_AXI_0_AWREADY(0),
      pmc_noc_axi0_awregion(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWREGION(3 downto 0),
      pmc_noc_axi0_awsize(2 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWSIZE(2 downto 0),
      pmc_noc_axi0_awuser(17 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWUSER(17 downto 0),
      pmc_noc_axi0_awvalid => versal_cips_0_PMC_NOC_AXI_0_AWVALID,
      pmc_noc_axi0_bid(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_BID(15 downto 0),
      pmc_noc_axi0_bready => versal_cips_0_PMC_NOC_AXI_0_BREADY,
      pmc_noc_axi0_bresp(1 downto 0) => versal_cips_0_PMC_NOC_AXI_0_BRESP(1 downto 0),
      pmc_noc_axi0_buser(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_BUSER(15 downto 0),
      pmc_noc_axi0_bvalid => versal_cips_0_PMC_NOC_AXI_0_BVALID(0),
      pmc_noc_axi0_rdata(127 downto 0) => versal_cips_0_PMC_NOC_AXI_0_RDATA(127 downto 0),
      pmc_noc_axi0_rid(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_RID(15 downto 0),
      pmc_noc_axi0_rlast => versal_cips_0_PMC_NOC_AXI_0_RLAST(0),
      pmc_noc_axi0_rready => versal_cips_0_PMC_NOC_AXI_0_RREADY,
      pmc_noc_axi0_rresp(1 downto 0) => versal_cips_0_PMC_NOC_AXI_0_RRESP(1 downto 0),
      pmc_noc_axi0_ruser(16 downto 0) => versal_cips_0_PMC_NOC_AXI_0_RUSER(16 downto 0),
      pmc_noc_axi0_rvalid => versal_cips_0_PMC_NOC_AXI_0_RVALID(0),
      pmc_noc_axi0_wdata(127 downto 0) => versal_cips_0_PMC_NOC_AXI_0_WDATA(127 downto 0),
      pmc_noc_axi0_wid(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_WID(15 downto 0),
      pmc_noc_axi0_wlast => versal_cips_0_PMC_NOC_AXI_0_WLAST,
      pmc_noc_axi0_wready => versal_cips_0_PMC_NOC_AXI_0_WREADY(0),
      pmc_noc_axi0_wstrb(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_WSTRB(15 downto 0),
      pmc_noc_axi0_wuser(16 downto 0) => versal_cips_0_PMC_NOC_AXI_0_WUSER(16 downto 0),
      pmc_noc_axi0_wvalid => versal_cips_0_PMC_NOC_AXI_0_WVALID,
      xdma0_usr_irq_ack(0) => NLW_versal_cips_0_xdma0_usr_irq_ack_UNCONNECTED(0),
      xdma0_usr_irq_req(0) => '0'
    );
xlconstant_0: component design_1_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
end STRUCTURE;
