// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.3 (win64) Build 3173277 Wed Apr  7 05:07:49 MDT 2021
// Date        : Wed Jun 23 14:34:48 2021
// Host        : alexk-laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/alexk/hds_projects/OPY/versal_pin_test/project_1.gen/sources_1/bd/design_1/ip/design_1_sys_clk_module_0_0/design_1_sys_clk_module_0_0_sim_netlist.v
// Design      : design_1_sys_clk_module_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvc1802-vsva2197-2MP-e-S
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_sys_clk_module_0_0,sys_clk_module,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "sys_clk_module,Vivado 2020.3" *) 
(* NotValidForBitStream *)
module design_1_sys_clk_module_0_0
   (CNC_VSL_ALIGN_N,
    CNC_VSL_ALIGN_P,
    LMK_VSL_250M_CLK_IN_N,
    LMK_VSL_250M_CLK_IN_P,
    LMK_VSL_500M_CLK_IN_N,
    LMK_VSL_500M_CLK_IN_P,
    LMK_VSL_RFU_CLK_IN_N,
    LMK_VSL_RFU_CLK_IN_P,
    clk_500m,
    clk_500m_vec,
    clk_250m,
    clk_250m_direct);
  input CNC_VSL_ALIGN_N;
  input CNC_VSL_ALIGN_P;
  input LMK_VSL_250M_CLK_IN_N;
  input LMK_VSL_250M_CLK_IN_P;
  input LMK_VSL_500M_CLK_IN_N;
  input LMK_VSL_500M_CLK_IN_P;
  input LMK_VSL_RFU_CLK_IN_N;
  input LMK_VSL_RFU_CLK_IN_P;
  output clk_500m;
  output [0:0]clk_500m_vec;
  output clk_250m;
  output clk_250m_direct;

  (* IBUF_LOW_PWR *) wire LMK_VSL_250M_CLK_IN_N;
  (* IBUF_LOW_PWR *) wire LMK_VSL_250M_CLK_IN_P;
  (* IBUF_LOW_PWR *) wire LMK_VSL_500M_CLK_IN_N;
  (* IBUF_LOW_PWR *) wire LMK_VSL_500M_CLK_IN_P;
  wire clk_250m;
  wire clk_250m_direct;
  wire [0:0]clk_500m_vec;

  assign clk_500m = clk_500m_vec;
  design_1_sys_clk_module_0_0_sys_clk_module U0
       (.LMK_VSL_250M_CLK_IN_N(LMK_VSL_250M_CLK_IN_N),
        .LMK_VSL_250M_CLK_IN_P(LMK_VSL_250M_CLK_IN_P),
        .LMK_VSL_500M_CLK_IN_N(LMK_VSL_500M_CLK_IN_N),
        .LMK_VSL_500M_CLK_IN_P(LMK_VSL_500M_CLK_IN_P),
        .clk_250m(clk_250m),
        .clk_250m_direct(clk_250m_direct),
        .clk_500m_vec(clk_500m_vec));
endmodule

(* ORIG_REF_NAME = "sys_clk_module" *) 
module design_1_sys_clk_module_0_0_sys_clk_module
   (clk_250m,
    clk_500m_vec,
    clk_250m_direct,
    LMK_VSL_500M_CLK_IN_P,
    LMK_VSL_500M_CLK_IN_N,
    LMK_VSL_250M_CLK_IN_P,
    LMK_VSL_250M_CLK_IN_N);
  output clk_250m;
  output [0:0]clk_500m_vec;
  output clk_250m_direct;
  input LMK_VSL_500M_CLK_IN_P;
  input LMK_VSL_500M_CLK_IN_N;
  input LMK_VSL_250M_CLK_IN_P;
  input LMK_VSL_250M_CLK_IN_N;

  wire LMK_VSL_250M_CLK_IN_N;
  wire LMK_VSL_250M_CLK_IN_P;
  wire LMK_VSL_500M_CLK_IN_N;
  wire LMK_VSL_500M_CLK_IN_P;
  wire bufds250m_out;
  wire bufds_out;
  wire clk_250m;
  wire clk_250m_direct;
  wire [0:0]clk_500m_vec;

  (* box_type = "PRIMITIVE" *) 
  BUFGCE_DIV #(
    .BUFGCE_DIVIDE(2),
    .CE_TYPE("SYNC"),
    .HARDSYNC_CLR("FALSE"),
    .IS_CE_INVERTED(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_I_INVERTED(1'b0),
    .SIM_DEVICE("VERSAL_AI_CORE"),
    .STARTUP_SYNC("FALSE")) 
    BUFGCE_DIV_250M_inst
       (.CE(1'b1),
        .CLR(1'b0),
        .I(bufds_out),
        .O(clk_250m));
  (* box_type = "PRIMITIVE" *) 
  BUFG_FABRIC BUFG_FABRIC_250M_direct_inst
       (.I(bufds250m_out),
        .O(clk_250m_direct));
  (* box_type = "PRIMITIVE" *) 
  BUFG_FABRIC BUFG_FABRIC_500M_inst
       (.I(bufds_out),
        .O(clk_500m_vec));
  (* box_type = "PRIMITIVE" *) 
  IBUFDSE3 #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT"),
    .SIM_DEVICE("VERSAL_AI_CORE"),
    .SIM_INPUT_BUFFER_OFFSET(0),
    .USE_IBUFDISABLE("FALSE")) 
    IBUFDSE3_250M_inst
       (.I(LMK_VSL_250M_CLK_IN_P),
        .IB(LMK_VSL_250M_CLK_IN_N),
        .IBUFDISABLE(1'b0),
        .O(bufds250m_out),
        .OSC({1'b0,1'b0,1'b0,1'b0}),
        .OSC_EN({1'b0,1'b0}));
  (* box_type = "PRIMITIVE" *) 
  IBUFDSE3 #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT"),
    .SIM_DEVICE("VERSAL_AI_CORE"),
    .SIM_INPUT_BUFFER_OFFSET(0),
    .USE_IBUFDISABLE("FALSE")) 
    IBUFDSE3_inst
       (.I(LMK_VSL_500M_CLK_IN_P),
        .IB(LMK_VSL_500M_CLK_IN_N),
        .IBUFDISABLE(1'b0),
        .O(bufds_out),
        .OSC({1'b0,1'b0,1'b0,1'b0}),
        .OSC_EN({1'b0,1'b0}));
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
