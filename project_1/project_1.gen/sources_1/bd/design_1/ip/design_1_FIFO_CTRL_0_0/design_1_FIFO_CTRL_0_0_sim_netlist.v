// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.3 (win64) Build 3173277 Wed Apr  7 05:07:49 MDT 2021
// Date        : Wed Jun 23 16:47:45 2021
// Host        : alexk-laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/alexk/hds_projects/OPY/versal_pin_test/project_1.gen/sources_1/bd/design_1/ip/design_1_FIFO_CTRL_0_0/design_1_FIFO_CTRL_0_0_sim_netlist.v
// Design      : design_1_FIFO_CTRL_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvc1802-vsva2197-2MP-e-S
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_FIFO_CTRL_0_0,FIFO_CTRL,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "FIFO_CTRL,Vivado 2020.3" *) 
(* NotValidForBitStream *)
module design_1_FIFO_CTRL_0_0
   (FIFO_EMPTY,
    INT_RDY,
    clk,
    FIFO_RD_EN);
  input FIFO_EMPTY;
  input INT_RDY;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  output FIFO_RD_EN;

  wire FIFO_EMPTY;
  wire FIFO_RD_EN;
  wire INT_RDY;
  wire clk;

  design_1_FIFO_CTRL_0_0_FIFO_CTRL U0
       (.FIFO_EMPTY(FIFO_EMPTY),
        .FIFO_RD_EN(FIFO_RD_EN),
        .INT_RDY(INT_RDY),
        .clk(clk));
endmodule

(* ORIG_REF_NAME = "FIFO_CTRL" *) 
module design_1_FIFO_CTRL_0_0_FIFO_CTRL
   (FIFO_RD_EN,
    clk,
    FIFO_EMPTY,
    INT_RDY);
  output FIFO_RD_EN;
  input clk;
  input FIFO_EMPTY;
  input INT_RDY;

  wire FIFO_EMPTY;
  wire FIFO_RD_EN;
  wire FIFO_RD_EN_i_1_n_0;
  wire INT_RDY;
  wire clk;
  wire not_empty;
  wire p_0_in;

  LUT2 #(
    .INIT(4'h8)) 
    FIFO_RD_EN_i_1
       (.I0(INT_RDY),
        .I1(not_empty),
        .O(FIFO_RD_EN_i_1_n_0));
  FDRE FIFO_RD_EN_reg
       (.C(clk),
        .CE(1'b1),
        .D(FIFO_RD_EN_i_1_n_0),
        .Q(FIFO_RD_EN),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    not_empty_i_1
       (.I0(FIFO_EMPTY),
        .O(p_0_in));
  FDRE not_empty_reg
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(not_empty),
        .R(1'b0));
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
