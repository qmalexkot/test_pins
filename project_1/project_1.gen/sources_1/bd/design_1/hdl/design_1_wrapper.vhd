--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.3 (win64) Build 3173277 Wed Apr  7 05:07:49 MDT 2021
--Date        : Thu Jun 24 19:36:22 2021
--Host        : alexk-laptop running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
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
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    LMK_VSL_250M_CLK_IN_N : in STD_LOGIC;
    LMK_VSL_250M_CLK_IN_P : in STD_LOGIC;
    LMK_VSL_500M_CLK_IN_N : in STD_LOGIC;
    LMK_VSL_500M_CLK_IN_P : in STD_LOGIC;
    LMK_VSL_RFU_CLK_IN_N : in STD_LOGIC;
    CNC_VSL_ALIGN_N : in STD_LOGIC;
    CNC_VSL_ALIGN_P : in STD_LOGIC;
    LMK_VSL_RFU_CLK_IN_P : in STD_LOGIC;
    LVDS_707_p : in STD_LOGIC_VECTOR ( 17 downto 0 );
    LVDS_708_p : in STD_LOGIC_VECTOR ( 21 downto 0 );
    LVDS_707_n : in STD_LOGIC_VECTOR ( 17 downto 0 );
    LVDS_706_n : in STD_LOGIC_VECTOR ( 23 downto 0 );
    LVDS_706_p : in STD_LOGIC_VECTOR ( 23 downto 0 );
    LVDS_708_n : in STD_LOGIC_VECTOR ( 21 downto 0 );
    RD_CLK_706_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    RD_CLK_707_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    RD_CLK_707_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    RD_CLK_708_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    RD_CLK_708_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    RD_CLK_706_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    CORE_RST : in STD_LOGIC;
    XPLL_RST : in STD_LOGIC;
    OMe_VSL1_PCIE_grx_n : in STD_LOGIC_VECTOR ( 7 downto 0 );
    OMe_VSL1_PCIE_grx_p : in STD_LOGIC_VECTOR ( 7 downto 0 );
    OMe_VSL1_PCIE_gtx_n : out STD_LOGIC_VECTOR ( 7 downto 0 );
    OMe_VSL1_PCIE_gtx_p : out STD_LOGIC_VECTOR ( 7 downto 0 );
    PCIe_0_REFCLK_clk_n : in STD_LOGIC;
    PCIe_0_REFCLK_clk_p : in STD_LOGIC;
    VSL_DIMM1_REF_CLK_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    VSL_DIMM1_REF_CLK_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    VSL_DIMM0_REF_CLK_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    VSL_DIMM0_REF_CLK_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    PCIe_1_REFCLK_clk_n : in STD_LOGIC;
    PCIe_1_REFCLK_clk_p : in STD_LOGIC;
    VSL_DIMM2_dq : inout STD_LOGIC_VECTOR ( 71 downto 0 );
    VSL_DIMM2_dqs_t : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    VSL_DIMM2_dqs_c : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    VSL_DIMM2_adr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    VSL_DIMM2_ba : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM2_bg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM2_act_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    VSL_DIMM2_reset_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    VSL_DIMM2_ck_t : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM2_ck_c : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM2_cke : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM2_cs_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM2_dm_n : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    VSL_DIMM2_odt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM0_dq : inout STD_LOGIC_VECTOR ( 71 downto 0 );
    VSL_DIMM0_dqs_t : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    VSL_DIMM0_dqs_c : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    VSL_DIMM0_adr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    VSL_DIMM0_ba : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM0_bg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM0_act_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    VSL_DIMM0_reset_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    VSL_DIMM0_ck_t : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM0_ck_c : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM0_cke : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM0_cs_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM0_dm_n : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    VSL_DIMM0_odt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM1_dq : inout STD_LOGIC_VECTOR ( 71 downto 0 );
    VSL_DIMM1_dqs_t : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    VSL_DIMM1_dqs_c : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    VSL_DIMM1_adr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    VSL_DIMM1_ba : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM1_bg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM1_act_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    VSL_DIMM1_reset_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    VSL_DIMM1_ck_t : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM1_ck_c : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM1_cke : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM1_cs_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    VSL_DIMM1_dm_n : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    VSL_DIMM1_odt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    COMe_VSL_PCIE_grx_n : in STD_LOGIC_VECTOR ( 7 downto 0 );
    COMe_VSL_PCIE_grx_p : in STD_LOGIC_VECTOR ( 7 downto 0 );
    COMe_VSL_PCIE_gtx_n : out STD_LOGIC_VECTOR ( 7 downto 0 );
    COMe_VSL_PCIE_gtx_p : out STD_LOGIC_VECTOR ( 7 downto 0 );
    VSL_DIMM2_REF_CLK_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    VSL_DIMM2_REF_CLK_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    XPLL_IN_p_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    XPLL_IN_n_0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      CNC_VSL_ALIGN_N => CNC_VSL_ALIGN_N,
      CNC_VSL_ALIGN_P => CNC_VSL_ALIGN_P,
      COMe_VSL_PCIE_grx_n(7 downto 0) => COMe_VSL_PCIE_grx_n(7 downto 0),
      COMe_VSL_PCIE_grx_p(7 downto 0) => COMe_VSL_PCIE_grx_p(7 downto 0),
      COMe_VSL_PCIE_gtx_n(7 downto 0) => COMe_VSL_PCIE_gtx_n(7 downto 0),
      COMe_VSL_PCIE_gtx_p(7 downto 0) => COMe_VSL_PCIE_gtx_p(7 downto 0),
      CORE_RST => CORE_RST,
      LMK_VSL_250M_CLK_IN_N => LMK_VSL_250M_CLK_IN_N,
      LMK_VSL_250M_CLK_IN_P => LMK_VSL_250M_CLK_IN_P,
      LMK_VSL_500M_CLK_IN_N => LMK_VSL_500M_CLK_IN_N,
      LMK_VSL_500M_CLK_IN_P => LMK_VSL_500M_CLK_IN_P,
      LMK_VSL_RFU_CLK_IN_N => LMK_VSL_RFU_CLK_IN_N,
      LMK_VSL_RFU_CLK_IN_P => LMK_VSL_RFU_CLK_IN_P,
      LVDS_706_n(23 downto 0) => LVDS_706_n(23 downto 0),
      LVDS_706_p(23 downto 0) => LVDS_706_p(23 downto 0),
      LVDS_707_n(17 downto 0) => LVDS_707_n(17 downto 0),
      LVDS_707_p(17 downto 0) => LVDS_707_p(17 downto 0),
      LVDS_708_n(21 downto 0) => LVDS_708_n(21 downto 0),
      LVDS_708_p(21 downto 0) => LVDS_708_p(21 downto 0),
      OMe_VSL1_PCIE_grx_n(7 downto 0) => OMe_VSL1_PCIE_grx_n(7 downto 0),
      OMe_VSL1_PCIE_grx_p(7 downto 0) => OMe_VSL1_PCIE_grx_p(7 downto 0),
      OMe_VSL1_PCIE_gtx_n(7 downto 0) => OMe_VSL1_PCIE_gtx_n(7 downto 0),
      OMe_VSL1_PCIE_gtx_p(7 downto 0) => OMe_VSL1_PCIE_gtx_p(7 downto 0),
      PCIe_0_REFCLK_clk_n => PCIe_0_REFCLK_clk_n,
      PCIe_0_REFCLK_clk_p => PCIe_0_REFCLK_clk_p,
      PCIe_1_REFCLK_clk_n => PCIe_1_REFCLK_clk_n,
      PCIe_1_REFCLK_clk_p => PCIe_1_REFCLK_clk_p,
      RD_CLK_706_n(0) => RD_CLK_706_n(0),
      RD_CLK_706_p(0) => RD_CLK_706_p(0),
      RD_CLK_707_n(0) => RD_CLK_707_n(0),
      RD_CLK_707_p(0) => RD_CLK_707_p(0),
      RD_CLK_708_n(0) => RD_CLK_708_n(0),
      RD_CLK_708_p(0) => RD_CLK_708_p(0),
      VSL_DIMM0_REF_CLK_clk_n(0) => VSL_DIMM0_REF_CLK_clk_n(0),
      VSL_DIMM0_REF_CLK_clk_p(0) => VSL_DIMM0_REF_CLK_clk_p(0),
      VSL_DIMM0_act_n(0) => VSL_DIMM0_act_n(0),
      VSL_DIMM0_adr(16 downto 0) => VSL_DIMM0_adr(16 downto 0),
      VSL_DIMM0_ba(1 downto 0) => VSL_DIMM0_ba(1 downto 0),
      VSL_DIMM0_bg(1 downto 0) => VSL_DIMM0_bg(1 downto 0),
      VSL_DIMM0_ck_c(1 downto 0) => VSL_DIMM0_ck_c(1 downto 0),
      VSL_DIMM0_ck_t(1 downto 0) => VSL_DIMM0_ck_t(1 downto 0),
      VSL_DIMM0_cke(1 downto 0) => VSL_DIMM0_cke(1 downto 0),
      VSL_DIMM0_cs_n(1 downto 0) => VSL_DIMM0_cs_n(1 downto 0),
      VSL_DIMM0_dm_n(8 downto 0) => VSL_DIMM0_dm_n(8 downto 0),
      VSL_DIMM0_dq(71 downto 0) => VSL_DIMM0_dq(71 downto 0),
      VSL_DIMM0_dqs_c(8 downto 0) => VSL_DIMM0_dqs_c(8 downto 0),
      VSL_DIMM0_dqs_t(8 downto 0) => VSL_DIMM0_dqs_t(8 downto 0),
      VSL_DIMM0_odt(1 downto 0) => VSL_DIMM0_odt(1 downto 0),
      VSL_DIMM0_reset_n(0) => VSL_DIMM0_reset_n(0),
      VSL_DIMM1_REF_CLK_clk_n(0) => VSL_DIMM1_REF_CLK_clk_n(0),
      VSL_DIMM1_REF_CLK_clk_p(0) => VSL_DIMM1_REF_CLK_clk_p(0),
      VSL_DIMM1_act_n(0) => VSL_DIMM1_act_n(0),
      VSL_DIMM1_adr(16 downto 0) => VSL_DIMM1_adr(16 downto 0),
      VSL_DIMM1_ba(1 downto 0) => VSL_DIMM1_ba(1 downto 0),
      VSL_DIMM1_bg(1 downto 0) => VSL_DIMM1_bg(1 downto 0),
      VSL_DIMM1_ck_c(1 downto 0) => VSL_DIMM1_ck_c(1 downto 0),
      VSL_DIMM1_ck_t(1 downto 0) => VSL_DIMM1_ck_t(1 downto 0),
      VSL_DIMM1_cke(1 downto 0) => VSL_DIMM1_cke(1 downto 0),
      VSL_DIMM1_cs_n(1 downto 0) => VSL_DIMM1_cs_n(1 downto 0),
      VSL_DIMM1_dm_n(8 downto 0) => VSL_DIMM1_dm_n(8 downto 0),
      VSL_DIMM1_dq(71 downto 0) => VSL_DIMM1_dq(71 downto 0),
      VSL_DIMM1_dqs_c(8 downto 0) => VSL_DIMM1_dqs_c(8 downto 0),
      VSL_DIMM1_dqs_t(8 downto 0) => VSL_DIMM1_dqs_t(8 downto 0),
      VSL_DIMM1_odt(1 downto 0) => VSL_DIMM1_odt(1 downto 0),
      VSL_DIMM1_reset_n(0) => VSL_DIMM1_reset_n(0),
      VSL_DIMM2_REF_CLK_clk_n(0) => VSL_DIMM2_REF_CLK_clk_n(0),
      VSL_DIMM2_REF_CLK_clk_p(0) => VSL_DIMM2_REF_CLK_clk_p(0),
      VSL_DIMM2_act_n(0) => VSL_DIMM2_act_n(0),
      VSL_DIMM2_adr(16 downto 0) => VSL_DIMM2_adr(16 downto 0),
      VSL_DIMM2_ba(1 downto 0) => VSL_DIMM2_ba(1 downto 0),
      VSL_DIMM2_bg(1 downto 0) => VSL_DIMM2_bg(1 downto 0),
      VSL_DIMM2_ck_c(1 downto 0) => VSL_DIMM2_ck_c(1 downto 0),
      VSL_DIMM2_ck_t(1 downto 0) => VSL_DIMM2_ck_t(1 downto 0),
      VSL_DIMM2_cke(1 downto 0) => VSL_DIMM2_cke(1 downto 0),
      VSL_DIMM2_cs_n(1 downto 0) => VSL_DIMM2_cs_n(1 downto 0),
      VSL_DIMM2_dm_n(8 downto 0) => VSL_DIMM2_dm_n(8 downto 0),
      VSL_DIMM2_dq(71 downto 0) => VSL_DIMM2_dq(71 downto 0),
      VSL_DIMM2_dqs_c(8 downto 0) => VSL_DIMM2_dqs_c(8 downto 0),
      VSL_DIMM2_dqs_t(8 downto 0) => VSL_DIMM2_dqs_t(8 downto 0),
      VSL_DIMM2_odt(1 downto 0) => VSL_DIMM2_odt(1 downto 0),
      VSL_DIMM2_reset_n(0) => VSL_DIMM2_reset_n(0),
      XPLL_IN_n_0(0) => XPLL_IN_n_0(0),
      XPLL_IN_p_0(0) => XPLL_IN_p_0(0),
      XPLL_RST => XPLL_RST
    );
end STRUCTURE;
