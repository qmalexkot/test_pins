//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_8b85.bd
//Design : bd_8b85
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_8b85,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_8b85,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=11,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Global}" *) (* HW_HANDOFF = "design_1_axi_noc_2_1.hwdef" *) 
module bd_8b85
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
    CH0_DDR4_1_act_n,
    CH0_DDR4_1_adr,
    CH0_DDR4_1_ba,
    CH0_DDR4_1_bg,
    CH0_DDR4_1_ck_c,
    CH0_DDR4_1_ck_t,
    CH0_DDR4_1_cke,
    CH0_DDR4_1_cs_n,
    CH0_DDR4_1_dm_n,
    CH0_DDR4_1_dq,
    CH0_DDR4_1_dqs_c,
    CH0_DDR4_1_dqs_t,
    CH0_DDR4_1_odt,
    CH0_DDR4_1_reset_n,
    S00_INI_internoc,
    S01_INI_internoc,
    S02_INI_internoc,
    S03_INI_internoc,
    sys_clk0_clk_n,
    sys_clk0_clk_p,
    sys_clk1_clk_n,
    sys_clk1_clk_p);
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 ACT_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CH0_DDR4_1, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, MY_CATEGORY pl, NOC_ID -1, SLOT Single, TIMEPERIOD_PS 1250, WRITE_BUFFER_SIZE 80" *) output [0:0]CH0_DDR4_1_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 ADR" *) output [16:0]CH0_DDR4_1_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 BA" *) output [1:0]CH0_DDR4_1_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 BG" *) output [1:0]CH0_DDR4_1_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 CK_C" *) output [1:0]CH0_DDR4_1_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 CK_T" *) output [1:0]CH0_DDR4_1_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 CKE" *) output [1:0]CH0_DDR4_1_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 CS_N" *) output [1:0]CH0_DDR4_1_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 DM_N" *) inout [8:0]CH0_DDR4_1_dm_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 DQ" *) inout [71:0]CH0_DDR4_1_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 DQS_C" *) inout [8:0]CH0_DDR4_1_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 DQS_T" *) inout [8:0]CH0_DDR4_1_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 ODT" *) output [1:0]CH0_DDR4_1_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 CH0_DDR4_1 RESET_N" *) output [0:0]CH0_DDR4_1_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:inimm:1.0 S00_INI INTERNOC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_INI, ADDR_WIDTH 64, CATEGORY pl, COMPUTED_STRATEGY load, CONNECTIONS MC_0 { read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}} , INI_STRATEGY auto, MY_CATEGORY pl, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, WRITE_BUFFER_SIZE 80, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [0:0]S00_INI_internoc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:inimm:1.0 S01_INI INTERNOC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S01_INI, ADDR_WIDTH 64, CATEGORY pl, COMPUTED_STRATEGY load, CONNECTIONS MC_1 { read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}} , INI_STRATEGY auto, MY_CATEGORY pl, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, WRITE_BUFFER_SIZE 80, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [0:0]S01_INI_internoc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:inimm:1.0 S02_INI INTERNOC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S02_INI, ADDR_WIDTH 64, CATEGORY pl, COMPUTED_STRATEGY load, CONNECTIONS MC_2 { read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}} , INI_STRATEGY auto, MY_CATEGORY pl, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, WRITE_BUFFER_SIZE 80, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [0:0]S02_INI_internoc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:inimm:1.0 S03_INI INTERNOC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S03_INI, ADDR_WIDTH 64, CATEGORY pl, COMPUTED_STRATEGY load, CONNECTIONS MC_3 { read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}} , INI_STRATEGY auto, MY_CATEGORY pl, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, WRITE_BUFFER_SIZE 80, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [0:0]S03_INI_internoc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_clk0 CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk0, CAN_DEBUG false, FREQ_HZ 250000000" *) input [0:0]sys_clk0_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_clk0 CLK_P" *) input [0:0]sys_clk0_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_clk1 CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk1, CAN_DEBUG false, FREQ_HZ 250000000" *) input [0:0]sys_clk1_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_clk1 CLK_P" *) input [0:0]sys_clk1_clk_p;

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
  (* DONT_TOUCH *) (* \NOC.IS_NOC_NET  = "true" *) (* SYNTH_ONLY = "true" *) wire MC0_nsw_NSU;
  wire MC1_ddrc_CH0_DDR4_ACT_N;
  wire [16:0]MC1_ddrc_CH0_DDR4_ADR;
  wire [1:0]MC1_ddrc_CH0_DDR4_BA;
  wire [1:0]MC1_ddrc_CH0_DDR4_BG;
  wire [1:0]MC1_ddrc_CH0_DDR4_CKE;
  wire [1:0]MC1_ddrc_CH0_DDR4_CK_C;
  wire [1:0]MC1_ddrc_CH0_DDR4_CK_T;
  wire [1:0]MC1_ddrc_CH0_DDR4_CS_N;
  wire [8:0]MC1_ddrc_CH0_DDR4_DM_N;
  wire [71:0]MC1_ddrc_CH0_DDR4_DQ;
  wire [8:0]MC1_ddrc_CH0_DDR4_DQS_C;
  wire [8:0]MC1_ddrc_CH0_DDR4_DQS_T;
  wire [1:0]MC1_ddrc_CH0_DDR4_ODT;
  wire MC1_ddrc_CH0_DDR4_RESET_N;
  (* DONT_TOUCH *) (* \NOC.IS_NOC_NET  = "true" *) (* SYNTH_ONLY = "true" *) wire MC1_nsw_NSU;
  (* DONT_TOUCH *) (* \NOC.IS_NOC_NET  = "true" *) (* SYNTH_ONLY = "true" *) wire MC2_nsw_NSU;
  (* DONT_TOUCH *) (* \NOC.IS_NOC_NET  = "true" *) (* SYNTH_ONLY = "true" *) wire MC3_nsw_NSU;
  (* DONT_TOUCH *) (* \NOC.IS_NOC_NET  = "true" *) (* SYNTH_ONLY = "true" *) wire [0:0]S00_INI_1_INTERNOC;
  (* DONT_TOUCH *) (* \NOC.IS_NOC_NET  = "true" *) (* SYNTH_ONLY = "true" *) wire [0:0]S01_INI_1_INTERNOC;
  (* DONT_TOUCH *) (* \NOC.IS_NOC_NET  = "true" *) (* SYNTH_ONLY = "true" *) wire [0:0]S02_INI_1_INTERNOC;
  (* DONT_TOUCH *) (* \NOC.IS_NOC_NET  = "true" *) (* SYNTH_ONLY = "true" *) wire [0:0]S03_INI_1_INTERNOC;
  wire [0:0]sys_clk0_1_CLK_N;
  wire [0:0]sys_clk0_1_CLK_P;
  wire [0:0]sys_clk1_1_CLK_N;
  wire [0:0]sys_clk1_1_CLK_P;

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
  assign CH0_DDR4_1_act_n[0] = MC1_ddrc_CH0_DDR4_ACT_N;
  assign CH0_DDR4_1_adr[16:0] = MC1_ddrc_CH0_DDR4_ADR;
  assign CH0_DDR4_1_ba[1:0] = MC1_ddrc_CH0_DDR4_BA;
  assign CH0_DDR4_1_bg[1:0] = MC1_ddrc_CH0_DDR4_BG;
  assign CH0_DDR4_1_ck_c[1:0] = MC1_ddrc_CH0_DDR4_CK_C;
  assign CH0_DDR4_1_ck_t[1:0] = MC1_ddrc_CH0_DDR4_CK_T;
  assign CH0_DDR4_1_cke[1:0] = MC1_ddrc_CH0_DDR4_CKE;
  assign CH0_DDR4_1_cs_n[1:0] = MC1_ddrc_CH0_DDR4_CS_N;
  assign CH0_DDR4_1_odt[1:0] = MC1_ddrc_CH0_DDR4_ODT;
  assign CH0_DDR4_1_reset_n[0] = MC1_ddrc_CH0_DDR4_RESET_N;
  assign S00_INI_1_INTERNOC = S00_INI_internoc[0];
  assign S01_INI_1_INTERNOC = S01_INI_internoc[0];
  assign S02_INI_1_INTERNOC = S02_INI_internoc[0];
  assign S03_INI_1_INTERNOC = S03_INI_internoc[0];
  assign sys_clk0_1_CLK_N = sys_clk0_clk_n[0];
  assign sys_clk0_1_CLK_P = sys_clk0_clk_p[0];
  assign sys_clk1_1_CLK_N = sys_clk1_clk_n[0];
  assign sys_clk1_1_CLK_P = sys_clk1_clk_p[0];
  (* DONT_TOUCH *) 
  bd_8b85_MC0_ddrc_0 MC0_ddrc
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
        .from_noc_0(MC0_nsw_NSU),
        .from_noc_1(MC1_nsw_NSU),
        .from_noc_2(MC2_nsw_NSU),
        .from_noc_3(MC3_nsw_NSU),
        .sys_clk_n(sys_clk0_1_CLK_N),
        .sys_clk_p(sys_clk0_1_CLK_P));
  (* DONT_TOUCH *) 
  bd_8b85_MC1_ddrc_0 MC1_ddrc
       (.ch0_ddr4_act_n(MC1_ddrc_CH0_DDR4_ACT_N),
        .ch0_ddr4_adr(MC1_ddrc_CH0_DDR4_ADR),
        .ch0_ddr4_ba(MC1_ddrc_CH0_DDR4_BA),
        .ch0_ddr4_bg(MC1_ddrc_CH0_DDR4_BG),
        .ch0_ddr4_ck_c(MC1_ddrc_CH0_DDR4_CK_C),
        .ch0_ddr4_ck_t(MC1_ddrc_CH0_DDR4_CK_T),
        .ch0_ddr4_cke(MC1_ddrc_CH0_DDR4_CKE),
        .ch0_ddr4_cs_n(MC1_ddrc_CH0_DDR4_CS_N),
        .ch0_ddr4_dm_dbi_n(CH0_DDR4_1_dm_n[8:0]),
        .ch0_ddr4_dq(CH0_DDR4_1_dq[71:0]),
        .ch0_ddr4_dqs_c(CH0_DDR4_1_dqs_c[8:0]),
        .ch0_ddr4_dqs_t(CH0_DDR4_1_dqs_t[8:0]),
        .ch0_ddr4_odt(MC1_ddrc_CH0_DDR4_ODT),
        .ch0_ddr4_reset_n(MC1_ddrc_CH0_DDR4_RESET_N),
        .from_noc_0(MC0_nsw_NSU),
        .from_noc_1(MC1_nsw_NSU),
        .from_noc_2(MC2_nsw_NSU),
        .from_noc_3(MC3_nsw_NSU),
        .sys_clk_n(sys_clk1_1_CLK_N),
        .sys_clk_p(sys_clk1_1_CLK_P));
  (* DONT_TOUCH *) 
  (* \NOC.IS_HIER_NSW  = "true" *) 
  (* \NOC.IS_NOC_CELL  = "true" *) 
  (* SYNTH_ONLY = "true" *) 
  hier_nsw_imp_HYWFR7 hier_nsw
       (.NSU(MC0_nsw_NSU),
        .NSU1(MC1_nsw_NSU),
        .NSU2(MC2_nsw_NSU),
        .NSU3(MC3_nsw_NSU),
        .S00_INI_internoc(S00_INI_1_INTERNOC),
        .S01_INI_internoc(S01_INI_1_INTERNOC),
        .S02_INI_internoc(S02_INI_1_INTERNOC),
        .S03_INI_internoc(S03_INI_1_INTERNOC));
endmodule

module hier_nsw_imp_HYWFR7
   (NSU,
    NSU1,
    NSU2,
    NSU3,
    S00_INI_internoc,
    S01_INI_internoc,
    S02_INI_internoc,
    S03_INI_internoc);
  output NSU;
  output NSU1;
  output NSU2;
  output NSU3;
  input S00_INI_internoc;
  input S01_INI_internoc;
  input S02_INI_internoc;
  input S03_INI_internoc;

  (* DONT_TOUCH *) (* \NOC.IS_NOC_NET  = "true" *) (* SYNTH_ONLY = "true" *) wire MC0_nsw_NSU;
  (* DONT_TOUCH *) (* \NOC.IS_NOC_NET  = "true" *) (* SYNTH_ONLY = "true" *) wire MC1_nsw_NSU;
  (* DONT_TOUCH *) (* \NOC.IS_NOC_NET  = "true" *) (* SYNTH_ONLY = "true" *) wire MC2_nsw_NSU;
  (* DONT_TOUCH *) (* \NOC.IS_NOC_NET  = "true" *) (* SYNTH_ONLY = "true" *) wire MC3_nsw_NSU;
  (* DONT_TOUCH *) (* \NOC.IS_NOC_NET  = "true" *) (* SYNTH_ONLY = "true" *) wire S00_INI_1_INTERNOC;
  (* DONT_TOUCH *) (* \NOC.IS_NOC_NET  = "true" *) (* SYNTH_ONLY = "true" *) wire S00_INI_nsw_M00_INCMM_RDRQST;
  (* DONT_TOUCH *) (* \NOC.IS_NOC_NET  = "true" *) (* SYNTH_ONLY = "true" *) wire S00_INI_nsw_M00_INCMM_RDRSPNS;
  (* DONT_TOUCH *) (* \NOC.IS_NOC_NET  = "true" *) (* SYNTH_ONLY = "true" *) wire S00_INI_nsw_M00_INCMM_WRRQST;
  (* DONT_TOUCH *) (* \NOC.IS_NOC_NET  = "true" *) (* SYNTH_ONLY = "true" *) wire S00_INI_nsw_M00_INCMM_WRRSPNS;
  (* DONT_TOUCH *) (* \NOC.IS_NOC_NET  = "true" *) (* SYNTH_ONLY = "true" *) wire S01_INI_1_INTERNOC;
  (* DONT_TOUCH *) (* \NOC.IS_NOC_NET  = "true" *) (* SYNTH_ONLY = "true" *) wire S01_INI_nsw_M00_INCMM_RDRQST;
  (* DONT_TOUCH *) (* \NOC.IS_NOC_NET  = "true" *) (* SYNTH_ONLY = "true" *) wire S01_INI_nsw_M00_INCMM_RDRSPNS;
  (* DONT_TOUCH *) (* \NOC.IS_NOC_NET  = "true" *) (* SYNTH_ONLY = "true" *) wire S01_INI_nsw_M00_INCMM_WRRQST;
  (* DONT_TOUCH *) (* \NOC.IS_NOC_NET  = "true" *) (* SYNTH_ONLY = "true" *) wire S01_INI_nsw_M00_INCMM_WRRSPNS;
  (* DONT_TOUCH *) (* \NOC.IS_NOC_NET  = "true" *) (* SYNTH_ONLY = "true" *) wire S02_INI_1_INTERNOC;
  (* DONT_TOUCH *) (* \NOC.IS_NOC_NET  = "true" *) (* SYNTH_ONLY = "true" *) wire S02_INI_nsw_M00_INCMM_RDRQST;
  (* DONT_TOUCH *) (* \NOC.IS_NOC_NET  = "true" *) (* SYNTH_ONLY = "true" *) wire S02_INI_nsw_M00_INCMM_RDRSPNS;
  (* DONT_TOUCH *) (* \NOC.IS_NOC_NET  = "true" *) (* SYNTH_ONLY = "true" *) wire S02_INI_nsw_M00_INCMM_WRRQST;
  (* DONT_TOUCH *) (* \NOC.IS_NOC_NET  = "true" *) (* SYNTH_ONLY = "true" *) wire S02_INI_nsw_M00_INCMM_WRRSPNS;
  (* DONT_TOUCH *) (* \NOC.IS_NOC_NET  = "true" *) (* SYNTH_ONLY = "true" *) wire S03_INI_1_INTERNOC;
  (* DONT_TOUCH *) (* \NOC.IS_NOC_NET  = "true" *) (* SYNTH_ONLY = "true" *) wire S03_INI_nsw_M00_INCMM_RDRQST;
  (* DONT_TOUCH *) (* \NOC.IS_NOC_NET  = "true" *) (* SYNTH_ONLY = "true" *) wire S03_INI_nsw_M00_INCMM_RDRSPNS;
  (* DONT_TOUCH *) (* \NOC.IS_NOC_NET  = "true" *) (* SYNTH_ONLY = "true" *) wire S03_INI_nsw_M00_INCMM_WRRQST;
  (* DONT_TOUCH *) (* \NOC.IS_NOC_NET  = "true" *) (* SYNTH_ONLY = "true" *) wire S03_INI_nsw_M00_INCMM_WRRSPNS;

  assign NSU = MC0_nsw_NSU;
  assign NSU1 = MC1_nsw_NSU;
  assign NSU2 = MC2_nsw_NSU;
  assign NSU3 = MC3_nsw_NSU;
  assign S00_INI_1_INTERNOC = S00_INI_internoc;
  assign S01_INI_1_INTERNOC = S01_INI_internoc;
  assign S02_INI_1_INTERNOC = S02_INI_internoc;
  assign S03_INI_1_INTERNOC = S03_INI_internoc;
  (* DONT_TOUCH *) 
  (* \NOC.IS_NOC_CELL  = "true" *) 
  (* SYNTH_ONLY = "true" *) 
  bd_8b85_MC0_nsw_0 MC0_nsw
       (.NSU(MC0_nsw_NSU),
        .S00_INCMM_RDRQST(S00_INI_nsw_M00_INCMM_RDRQST),
        .S00_INCMM_RDRSPNS(S00_INI_nsw_M00_INCMM_RDRSPNS),
        .S00_INCMM_WRRQST(S00_INI_nsw_M00_INCMM_WRRQST),
        .S00_INCMM_WRRSPNS(S00_INI_nsw_M00_INCMM_WRRSPNS));
  (* DONT_TOUCH *) 
  (* \NOC.IS_NOC_CELL  = "true" *) 
  (* SYNTH_ONLY = "true" *) 
  bd_8b85_MC1_nsw_0 MC1_nsw
       (.NSU(MC1_nsw_NSU),
        .S00_INCMM_RDRQST(S01_INI_nsw_M00_INCMM_RDRQST),
        .S00_INCMM_RDRSPNS(S01_INI_nsw_M00_INCMM_RDRSPNS),
        .S00_INCMM_WRRQST(S01_INI_nsw_M00_INCMM_WRRQST),
        .S00_INCMM_WRRSPNS(S01_INI_nsw_M00_INCMM_WRRSPNS));
  (* DONT_TOUCH *) 
  (* \NOC.IS_NOC_CELL  = "true" *) 
  (* SYNTH_ONLY = "true" *) 
  bd_8b85_MC2_nsw_0 MC2_nsw
       (.NSU(MC2_nsw_NSU),
        .S00_INCMM_RDRQST(S02_INI_nsw_M00_INCMM_RDRQST),
        .S00_INCMM_RDRSPNS(S02_INI_nsw_M00_INCMM_RDRSPNS),
        .S00_INCMM_WRRQST(S02_INI_nsw_M00_INCMM_WRRQST),
        .S00_INCMM_WRRSPNS(S02_INI_nsw_M00_INCMM_WRRSPNS));
  (* DONT_TOUCH *) 
  (* \NOC.IS_NOC_CELL  = "true" *) 
  (* SYNTH_ONLY = "true" *) 
  bd_8b85_MC3_nsw_0 MC3_nsw
       (.NSU(MC3_nsw_NSU),
        .S00_INCMM_RDRQST(S03_INI_nsw_M00_INCMM_RDRQST),
        .S00_INCMM_RDRSPNS(S03_INI_nsw_M00_INCMM_RDRSPNS),
        .S00_INCMM_WRRQST(S03_INI_nsw_M00_INCMM_WRRQST),
        .S00_INCMM_WRRSPNS(S03_INI_nsw_M00_INCMM_WRRSPNS));
  (* DONT_TOUCH *) 
  (* \NOC.IS_NOC_CELL  = "true" *) 
  (* SYNTH_ONLY = "true" *) 
  bd_8b85_S00_INI_nsw_0 S00_INI_nsw
       (.M00_INCMM_RDRQST(S00_INI_nsw_M00_INCMM_RDRQST),
        .M00_INCMM_RDRSPNS(S00_INI_nsw_M00_INCMM_RDRSPNS),
        .M00_INCMM_WRRQST(S00_INI_nsw_M00_INCMM_WRRQST),
        .M00_INCMM_WRRSPNS(S00_INI_nsw_M00_INCMM_WRRSPNS),
        .S_INIMM_internoc(S00_INI_1_INTERNOC));
  (* DONT_TOUCH *) 
  (* \NOC.IS_NOC_CELL  = "true" *) 
  (* SYNTH_ONLY = "true" *) 
  bd_8b85_S01_INI_nsw_0 S01_INI_nsw
       (.M00_INCMM_RDRQST(S01_INI_nsw_M00_INCMM_RDRQST),
        .M00_INCMM_RDRSPNS(S01_INI_nsw_M00_INCMM_RDRSPNS),
        .M00_INCMM_WRRQST(S01_INI_nsw_M00_INCMM_WRRQST),
        .M00_INCMM_WRRSPNS(S01_INI_nsw_M00_INCMM_WRRSPNS),
        .S_INIMM_internoc(S01_INI_1_INTERNOC));
  (* DONT_TOUCH *) 
  (* \NOC.IS_NOC_CELL  = "true" *) 
  (* SYNTH_ONLY = "true" *) 
  bd_8b85_S02_INI_nsw_0 S02_INI_nsw
       (.M00_INCMM_RDRQST(S02_INI_nsw_M00_INCMM_RDRQST),
        .M00_INCMM_RDRSPNS(S02_INI_nsw_M00_INCMM_RDRSPNS),
        .M00_INCMM_WRRQST(S02_INI_nsw_M00_INCMM_WRRQST),
        .M00_INCMM_WRRSPNS(S02_INI_nsw_M00_INCMM_WRRSPNS),
        .S_INIMM_internoc(S02_INI_1_INTERNOC));
  (* DONT_TOUCH *) 
  (* \NOC.IS_NOC_CELL  = "true" *) 
  (* SYNTH_ONLY = "true" *) 
  bd_8b85_S03_INI_nsw_0 S03_INI_nsw
       (.M00_INCMM_RDRQST(S03_INI_nsw_M00_INCMM_RDRQST),
        .M00_INCMM_RDRSPNS(S03_INI_nsw_M00_INCMM_RDRSPNS),
        .M00_INCMM_WRRQST(S03_INI_nsw_M00_INCMM_WRRQST),
        .M00_INCMM_WRRSPNS(S03_INI_nsw_M00_INCMM_WRRSPNS),
        .S_INIMM_internoc(S03_INI_1_INTERNOC));
endmodule
