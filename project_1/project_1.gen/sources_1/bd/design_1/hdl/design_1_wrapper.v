//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.3 (win64) Build 3173277 Wed Apr  7 05:07:49 MDT 2021
//Date        : Sun Jun 20 17:43:59 2021
//Host        : alexk-laptop running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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
  input [7:0]COMe_VSL_PCIE_grx_n;
  input [7:0]COMe_VSL_PCIE_grx_p;
  output [7:0]COMe_VSL_PCIE_gtx_n;
  output [7:0]COMe_VSL_PCIE_gtx_p;
  input [7:0]OMe_VSL1_PCIE_grx_n;
  input [7:0]OMe_VSL1_PCIE_grx_p;
  output [7:0]OMe_VSL1_PCIE_gtx_n;
  output [7:0]OMe_VSL1_PCIE_gtx_p;
  input PCIe_0_REFCLK_clk_n;
  input PCIe_0_REFCLK_clk_p;
  input PCIe_1_REFCLK_clk_n;
  input PCIe_1_REFCLK_clk_p;
  input [0:0]VSL_DIMM0_REF_CLK_clk_n;
  input [0:0]VSL_DIMM0_REF_CLK_clk_p;
  output [0:0]VSL_DIMM0_act_n;
  output [16:0]VSL_DIMM0_adr;
  output [1:0]VSL_DIMM0_ba;
  output [1:0]VSL_DIMM0_bg;
  output [1:0]VSL_DIMM0_ck_c;
  output [1:0]VSL_DIMM0_ck_t;
  output [1:0]VSL_DIMM0_cke;
  output [1:0]VSL_DIMM0_cs_n;
  inout [8:0]VSL_DIMM0_dm_n;
  inout [71:0]VSL_DIMM0_dq;
  inout [8:0]VSL_DIMM0_dqs_c;
  inout [8:0]VSL_DIMM0_dqs_t;
  output [1:0]VSL_DIMM0_odt;
  output [0:0]VSL_DIMM0_reset_n;
  input [0:0]VSL_DIMM1_REF_CLK_clk_n;
  input [0:0]VSL_DIMM1_REF_CLK_clk_p;
  output [0:0]VSL_DIMM1_act_n;
  output [16:0]VSL_DIMM1_adr;
  output [1:0]VSL_DIMM1_ba;
  output [1:0]VSL_DIMM1_bg;
  output [1:0]VSL_DIMM1_ck_c;
  output [1:0]VSL_DIMM1_ck_t;
  output [1:0]VSL_DIMM1_cke;
  output [1:0]VSL_DIMM1_cs_n;
  inout [8:0]VSL_DIMM1_dm_n;
  inout [71:0]VSL_DIMM1_dq;
  inout [8:0]VSL_DIMM1_dqs_c;
  inout [8:0]VSL_DIMM1_dqs_t;
  output [1:0]VSL_DIMM1_odt;
  output [0:0]VSL_DIMM1_reset_n;
  input [0:0]VSL_DIMM2_REF_CLK_clk_n;
  input [0:0]VSL_DIMM2_REF_CLK_clk_p;
  output [0:0]VSL_DIMM2_act_n;
  output [16:0]VSL_DIMM2_adr;
  output [1:0]VSL_DIMM2_ba;
  output [1:0]VSL_DIMM2_bg;
  output [1:0]VSL_DIMM2_ck_c;
  output [1:0]VSL_DIMM2_ck_t;
  output [1:0]VSL_DIMM2_cke;
  output [1:0]VSL_DIMM2_cs_n;
  inout [8:0]VSL_DIMM2_dm_n;
  inout [71:0]VSL_DIMM2_dq;
  inout [8:0]VSL_DIMM2_dqs_c;
  inout [8:0]VSL_DIMM2_dqs_t;
  output [1:0]VSL_DIMM2_odt;
  output [0:0]VSL_DIMM2_reset_n;

  wire [7:0]COMe_VSL_PCIE_grx_n;
  wire [7:0]COMe_VSL_PCIE_grx_p;
  wire [7:0]COMe_VSL_PCIE_gtx_n;
  wire [7:0]COMe_VSL_PCIE_gtx_p;
  wire [7:0]OMe_VSL1_PCIE_grx_n;
  wire [7:0]OMe_VSL1_PCIE_grx_p;
  wire [7:0]OMe_VSL1_PCIE_gtx_n;
  wire [7:0]OMe_VSL1_PCIE_gtx_p;
  wire PCIe_0_REFCLK_clk_n;
  wire PCIe_0_REFCLK_clk_p;
  wire PCIe_1_REFCLK_clk_n;
  wire PCIe_1_REFCLK_clk_p;
  wire [0:0]VSL_DIMM0_REF_CLK_clk_n;
  wire [0:0]VSL_DIMM0_REF_CLK_clk_p;
  wire [0:0]VSL_DIMM0_act_n;
  wire [16:0]VSL_DIMM0_adr;
  wire [1:0]VSL_DIMM0_ba;
  wire [1:0]VSL_DIMM0_bg;
  wire [1:0]VSL_DIMM0_ck_c;
  wire [1:0]VSL_DIMM0_ck_t;
  wire [1:0]VSL_DIMM0_cke;
  wire [1:0]VSL_DIMM0_cs_n;
  wire [8:0]VSL_DIMM0_dm_n;
  wire [71:0]VSL_DIMM0_dq;
  wire [8:0]VSL_DIMM0_dqs_c;
  wire [8:0]VSL_DIMM0_dqs_t;
  wire [1:0]VSL_DIMM0_odt;
  wire [0:0]VSL_DIMM0_reset_n;
  wire [0:0]VSL_DIMM1_REF_CLK_clk_n;
  wire [0:0]VSL_DIMM1_REF_CLK_clk_p;
  wire [0:0]VSL_DIMM1_act_n;
  wire [16:0]VSL_DIMM1_adr;
  wire [1:0]VSL_DIMM1_ba;
  wire [1:0]VSL_DIMM1_bg;
  wire [1:0]VSL_DIMM1_ck_c;
  wire [1:0]VSL_DIMM1_ck_t;
  wire [1:0]VSL_DIMM1_cke;
  wire [1:0]VSL_DIMM1_cs_n;
  wire [8:0]VSL_DIMM1_dm_n;
  wire [71:0]VSL_DIMM1_dq;
  wire [8:0]VSL_DIMM1_dqs_c;
  wire [8:0]VSL_DIMM1_dqs_t;
  wire [1:0]VSL_DIMM1_odt;
  wire [0:0]VSL_DIMM1_reset_n;
  wire [0:0]VSL_DIMM2_REF_CLK_clk_n;
  wire [0:0]VSL_DIMM2_REF_CLK_clk_p;
  wire [0:0]VSL_DIMM2_act_n;
  wire [16:0]VSL_DIMM2_adr;
  wire [1:0]VSL_DIMM2_ba;
  wire [1:0]VSL_DIMM2_bg;
  wire [1:0]VSL_DIMM2_ck_c;
  wire [1:0]VSL_DIMM2_ck_t;
  wire [1:0]VSL_DIMM2_cke;
  wire [1:0]VSL_DIMM2_cs_n;
  wire [8:0]VSL_DIMM2_dm_n;
  wire [71:0]VSL_DIMM2_dq;
  wire [8:0]VSL_DIMM2_dqs_c;
  wire [8:0]VSL_DIMM2_dqs_t;
  wire [1:0]VSL_DIMM2_odt;
  wire [0:0]VSL_DIMM2_reset_n;

  design_1 design_1_i
       (.COMe_VSL_PCIE_grx_n(COMe_VSL_PCIE_grx_n),
        .COMe_VSL_PCIE_grx_p(COMe_VSL_PCIE_grx_p),
        .COMe_VSL_PCIE_gtx_n(COMe_VSL_PCIE_gtx_n),
        .COMe_VSL_PCIE_gtx_p(COMe_VSL_PCIE_gtx_p),
        .OMe_VSL1_PCIE_grx_n(OMe_VSL1_PCIE_grx_n),
        .OMe_VSL1_PCIE_grx_p(OMe_VSL1_PCIE_grx_p),
        .OMe_VSL1_PCIE_gtx_n(OMe_VSL1_PCIE_gtx_n),
        .OMe_VSL1_PCIE_gtx_p(OMe_VSL1_PCIE_gtx_p),
        .PCIe_0_REFCLK_clk_n(PCIe_0_REFCLK_clk_n),
        .PCIe_0_REFCLK_clk_p(PCIe_0_REFCLK_clk_p),
        .PCIe_1_REFCLK_clk_n(PCIe_1_REFCLK_clk_n),
        .PCIe_1_REFCLK_clk_p(PCIe_1_REFCLK_clk_p),
        .VSL_DIMM0_REF_CLK_clk_n(VSL_DIMM0_REF_CLK_clk_n),
        .VSL_DIMM0_REF_CLK_clk_p(VSL_DIMM0_REF_CLK_clk_p),
        .VSL_DIMM0_act_n(VSL_DIMM0_act_n),
        .VSL_DIMM0_adr(VSL_DIMM0_adr),
        .VSL_DIMM0_ba(VSL_DIMM0_ba),
        .VSL_DIMM0_bg(VSL_DIMM0_bg),
        .VSL_DIMM0_ck_c(VSL_DIMM0_ck_c),
        .VSL_DIMM0_ck_t(VSL_DIMM0_ck_t),
        .VSL_DIMM0_cke(VSL_DIMM0_cke),
        .VSL_DIMM0_cs_n(VSL_DIMM0_cs_n),
        .VSL_DIMM0_dm_n(VSL_DIMM0_dm_n),
        .VSL_DIMM0_dq(VSL_DIMM0_dq),
        .VSL_DIMM0_dqs_c(VSL_DIMM0_dqs_c),
        .VSL_DIMM0_dqs_t(VSL_DIMM0_dqs_t),
        .VSL_DIMM0_odt(VSL_DIMM0_odt),
        .VSL_DIMM0_reset_n(VSL_DIMM0_reset_n),
        .VSL_DIMM1_REF_CLK_clk_n(VSL_DIMM1_REF_CLK_clk_n),
        .VSL_DIMM1_REF_CLK_clk_p(VSL_DIMM1_REF_CLK_clk_p),
        .VSL_DIMM1_act_n(VSL_DIMM1_act_n),
        .VSL_DIMM1_adr(VSL_DIMM1_adr),
        .VSL_DIMM1_ba(VSL_DIMM1_ba),
        .VSL_DIMM1_bg(VSL_DIMM1_bg),
        .VSL_DIMM1_ck_c(VSL_DIMM1_ck_c),
        .VSL_DIMM1_ck_t(VSL_DIMM1_ck_t),
        .VSL_DIMM1_cke(VSL_DIMM1_cke),
        .VSL_DIMM1_cs_n(VSL_DIMM1_cs_n),
        .VSL_DIMM1_dm_n(VSL_DIMM1_dm_n),
        .VSL_DIMM1_dq(VSL_DIMM1_dq),
        .VSL_DIMM1_dqs_c(VSL_DIMM1_dqs_c),
        .VSL_DIMM1_dqs_t(VSL_DIMM1_dqs_t),
        .VSL_DIMM1_odt(VSL_DIMM1_odt),
        .VSL_DIMM1_reset_n(VSL_DIMM1_reset_n),
        .VSL_DIMM2_REF_CLK_clk_n(VSL_DIMM2_REF_CLK_clk_n),
        .VSL_DIMM2_REF_CLK_clk_p(VSL_DIMM2_REF_CLK_clk_p),
        .VSL_DIMM2_act_n(VSL_DIMM2_act_n),
        .VSL_DIMM2_adr(VSL_DIMM2_adr),
        .VSL_DIMM2_ba(VSL_DIMM2_ba),
        .VSL_DIMM2_bg(VSL_DIMM2_bg),
        .VSL_DIMM2_ck_c(VSL_DIMM2_ck_c),
        .VSL_DIMM2_ck_t(VSL_DIMM2_ck_t),
        .VSL_DIMM2_cke(VSL_DIMM2_cke),
        .VSL_DIMM2_cs_n(VSL_DIMM2_cs_n),
        .VSL_DIMM2_dm_n(VSL_DIMM2_dm_n),
        .VSL_DIMM2_dq(VSL_DIMM2_dq),
        .VSL_DIMM2_dqs_c(VSL_DIMM2_dqs_c),
        .VSL_DIMM2_dqs_t(VSL_DIMM2_dqs_t),
        .VSL_DIMM2_odt(VSL_DIMM2_odt),
        .VSL_DIMM2_reset_n(VSL_DIMM2_reset_n));
endmodule
