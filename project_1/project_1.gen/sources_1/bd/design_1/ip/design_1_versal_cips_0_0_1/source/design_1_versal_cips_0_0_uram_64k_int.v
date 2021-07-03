
//-----------------------------------------------------------------------------
//
// (c) Copyright 2017-2019 Xilinx, Inc. All rights reserved.
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
//-----------------------------------------------------------------------------
//
// Project    : Versal PCI Express Integrated Block
// File       : design_1_versal_cips_0_0_uram_64k_int.v
// Version    : 1.0 
//-----------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------
`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_versal_cips_0_0_uram_64k_int #(

  parameter EN_ECC_PIPE ="FALSE",
  parameter TCQ = 100

  ) (

  input  wire         clk_i,
  input  wire         reset_i,

  input  wire  [10:0] waddr0_i,
  input  wire   [0:0] wen0_i,
  input  wire [143:0] wdata0_i,
  input  wire  [10:0] waddr1_i,
  input  wire   [0:0] wen1_i,
  input  wire [143:0] wdata1_i,

  input  wire  [10:0] raddr0_i,
  input  wire   [0:0] ren0_i,
  output wire [143:0] rdata0_o,
  input  wire  [10:0] raddr1_i,
  input  wire   [0:0] ren1_i,
  output wire [143:0] rdata1_o,

  output wire   [5:0] err_cor_o,
  output wire   [5:0] err_uncor_o

  );

  genvar              i;

  wire [431:0]        rdata_w;
  wire [431:0]        wdata_w = { 
	                         56'b0, wdata1_i[143:128],
	                          8'b0, wdata1_i[127:64],
	                          8'b0, wdata1_i[63:00],
	                         56'b0, wdata0_i[143:128],
	                          8'b0, wdata0_i[127:64],
	                          8'b0, wdata0_i[63:00]
				};

  generate begin : ECC_RAM

    for (i = 0; i < 6; i = i + 1) begin : URAM288
      URAM288E5 #(
//`ifdef XIL_TIMING
//         .LOC  (  "UNPLACED"  ),
//`endif
         .AUTO_SLEEP_LATENCY  (  8  ),
         .AVG_CONS_INACTIVE_CYCLES  (  10  ),
         .BWE_MODE_A  (  "PARITY_INTERLEAVED"  ),
         .BWE_MODE_B  (  "PARITY_INTERLEAVED"  ),
         .EN_AUTO_SLEEP_MODE  (  "FALSE"  ),
         .EN_ECC_RD_A  (  "FALSE"  ),
         .EN_ECC_RD_B  (  "TRUE"  ),  // Port B is RD
         .EN_ECC_WR_A  (  "TRUE"  ),  // Port A is WR
         .EN_ECC_WR_B  (  "FALSE"  ),
         .IREG_PRE_A  (  "FALSE"  ),
         .IREG_PRE_B  (  "FALSE"  ),
         .IS_CLK_INVERTED  (  1'b0  ),
         .IS_EN_A_INVERTED  (  1'b0  ),
         .IS_EN_B_INVERTED  (  1'b0  ),
         .IS_RDB_WR_A_INVERTED  (  1'b0  ),
         .IS_RDB_WR_B_INVERTED  (  1'b0  ),
         .IS_RST_A_INVERTED  (  1'b0  ),
         .IS_RST_B_INVERTED  (  1'b0  ),
         .MATRIX_ID  (  "NONE"  ),
         .NUM_UNIQUE_SELF_ADDR_A  (  1  ),
         .NUM_UNIQUE_SELF_ADDR_B  (  1  ),
         .NUM_URAM_IN_MATRIX  (  1  ),
         .OREG_A  (  "FALSE"  ),
         .OREG_B  (  (EN_ECC_PIPE == "TRUE") ? "TRUE" : "FALSE"  ),
         .OREG_ECC_A  (  "TRUE"  ),
         .OREG_ECC_B  (  (EN_ECC_PIPE == "TRUE") ? "FALSE" : "TRUE" ),
         .REG_CAS_A  (  "FALSE"  ),
         .REG_CAS_B  (  "FALSE"  ),
         .RST_MODE_A  (  "SYNC"  ),
         .RST_MODE_B  (  "SYNC"  ),
         .SELF_ADDR_A  (  11'h000  ),
         .SELF_ADDR_B  (  11'h000  ),
         .SELF_MASK_A  (  11'h7FF  ),
         .SELF_MASK_B  (  11'h7FF  ),
         .USE_EXT_CE_A  (  "FALSE"  ),
         .USE_EXT_CE_B  (  "FALSE" )
      ) IURAM288 (
         .CAS_OUT_ADDR_A(),
         .CAS_OUT_ADDR_B(),
         .CAS_OUT_BWE_A(),
         .CAS_OUT_BWE_B(),
         .CAS_OUT_DBITERR_A(),
         .CAS_OUT_DBITERR_B(),
         .CAS_OUT_DIN_A(),
         .CAS_OUT_DIN_B(),
         .CAS_OUT_DOUT_A(),
         .CAS_OUT_DOUT_B(),
         .CAS_OUT_EN_A(),
         .CAS_OUT_EN_B(),
         .CAS_OUT_RDACCESS_A(),
         .CAS_OUT_RDACCESS_B(),
         .CAS_OUT_RDB_WR_A(),
         .CAS_OUT_RDB_WR_B(),
         .CAS_OUT_SBITERR_A(),
         .CAS_OUT_SBITERR_B(),
         .DBITERR_A(),
         .DBITERR_B(err_uncor_o[i]),
         .DOUT_A(),
         .DOUT_B(rdata_w[(72*i)+71:(72*i)+0]),
         .RDACCESS_A(),
         .RDACCESS_B(),
         .SBITERR_A(),
         .SBITERR_B(err_cor_o[i]),
      
         .ADDR_A({12'b0,(i > 2) ? waddr1_i[10:0]:waddr0_i[10:0],3'b000}), // 26b
         .ADDR_B({12'b0,(i > 2) ? raddr1_i[10:0]:raddr0_i[10:0],3'b000}), // 26b
         .BWE_A({9{1'b1}}),  // 9b, 
         .BWE_B(9'b000000000), // 9b, 
         .CAS_IN_ADDR_A(26'b0),  // Cascade suff is disabled
         .CAS_IN_ADDR_B(26'b0),
         .CAS_IN_BWE_A(9'b0),
         .CAS_IN_BWE_B(9'b0),
         .CAS_IN_DBITERR_A(1'b0),
         .CAS_IN_DBITERR_B(1'b0),
         .CAS_IN_DIN_A(72'b0),
         .CAS_IN_DIN_B(72'b0),
         .CAS_IN_DOUT_A(72'b0),
         .CAS_IN_DOUT_B(72'b0),
         .CAS_IN_EN_A(1'b0),
         .CAS_IN_EN_B(1'b0),
         .CAS_IN_RDACCESS_A(1'b0),
         .CAS_IN_RDACCESS_B(1'b0),
         .CAS_IN_RDB_WR_A(1'b0),
         .CAS_IN_RDB_WR_B(1'b0),
         .CAS_IN_SBITERR_A(1'b0),
         .CAS_IN_SBITERR_B(1'b0),
         .CLK(clk_i),
         .DIN_A(wdata_w[(72*i)+71:(72*i)+0]), // 72b
         .DIN_B(72'b0), // 72b
         .EN_A((i > 2) ? wen1_i : wen0_i), // 1b
         .EN_B((i > 2) ? ren1_i : ren0_i), // 1b
         .INJECT_DBITERR_A(1'b0),
         .INJECT_DBITERR_B(1'b0),
         .INJECT_SBITERR_A(1'b0),
         .INJECT_SBITERR_B(1'b0),
         .OREG_CE_A(1'b0),
         .OREG_CE_B(1'b0),
         .OREG_ECC_CE_A(1'b1),
         .OREG_ECC_CE_B(1'b1),
         .RDB_WR_A(1'b1), // Read (0)/ Write (1)Select
         .RDB_WR_B(1'b0), // Read (0)/ Write (1)Select
         .RST_A(reset_i),
         .RST_B(reset_i),
         .SLEEP(1'b0)
      );

    end

  end
  endgenerate

  assign rdata1_o =  {
	              rdata_w[423:360],
	              rdata_w[351:288],
	              rdata_w[279:216]
	              };

  assign rdata0_o =  {
	              rdata_w[207:144],
	              rdata_w[135:72],
	              rdata_w[63:0]
	              };

endmodule

