// (c) Copyright 2017 - 2018 Xilinx, Inc. All rights reserved.
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

`timescale 1ps/1ps

module advanced_io_wizard_v1_0_4_clk_scheme #(
   parameter ENABLE_XPLL_DESKEW      = 1,
   parameter DATA_SPEED              = 600.0,
   parameter MAX_BANKS               = 1, 
   parameter TEMPLATE                = "None", 
   parameter BUS_DIR                 = 0,
   parameter MIPI_TXCALIB_EN         = 0,
   parameter TX_SERIALIZATION_FACTOR       = 8,
   parameter RX_SERIALIZATION_FACTOR       = 8, 
   parameter C_PLL_SHARE             = 0,
   parameter C_CLKIN_PERIOD          = 1.000, 
   parameter C_SIM_DEVICE            = "VERSAL_AI_CORE_ES1", 
   parameter C_PLL0_M                = 1,
   parameter C_PLL0_O0               = 1,
   parameter C_PLL0_O1               = 1,
   parameter C_PLL0_O2               = 1,
   parameter C_PLL0_O3               = 1,
   parameter C_PLL0_CLKOUTPHY_DIVIDE = 1,
   parameter C_PLL0_D                = 1,
   parameter C_PLL0_CLK0_PHASE       = 0.000, 
   parameter C_PLL0_CLK1_PHASE       = 0.000 ,
   parameter C_PLL1_M                = 1,
   parameter C_PLL1_O0               = 1,
   parameter C_PLL1_O1               = 1,
   parameter C_PLL1_O2               = 1,
   parameter C_PLL1_O3               = 1,
   parameter C_PLL1_CLKOUTPHY_DIVIDE = 1,
   parameter C_PLL1_D                = 1,
   parameter C_PLL1_CLK0_PHASE       = 0.000, 
   parameter C_PLL1_CLK1_PHASE       = 0.000 ,
   parameter C_PLL2_M                = 1,
   parameter C_PLL2_O0               = 1,
   parameter C_PLL2_O1               = 1,
   parameter C_PLL2_O2               = 1,
   parameter C_PLL2_O3               = 1,
   parameter C_PLL2_CLKOUTPHY_DIVIDE = 1,
   parameter C_PLL2_D                = 1,
   parameter C_PLL2_CLK0_PHASE       = 0.000, 
   parameter C_PLL2_CLK1_PHASE       = 0.000 
)
(
   input     pll0_clk_in,
   input     pll0_rst_in,
   input     pll0_clkoutphy_en_in,
   output    pll0_clkoutphy_out,
   output    pll0_clkout0_out,
   output    pll0_clkout0_div2,
   output    pll0_clkout0_div4,
   output    pll0_clkout1_out,
   output    pll0_clkout2_out,
   output    pll0_clkout3_out,
   output    pll0_locked_fb_out,
   output    pll0_locked_out,
   input     pll1_clk_in,
   input     pll1_rst_in,
   input     pll1_clkoutphy_en_in,
   output    pll1_clkoutphy_out,
   output    pll1_clkout0_out,
   output    pll1_clkout1_out,
   output    pll1_clkout2_out,
   output    pll1_clkout3_out,
   output    pll1_locked_fb_out,
   output    pll1_locked_out,
   input     pll2_clk_in,
   input     pll2_rst_in,
   input     pll2_clkoutphy_en_in,
   output    pll2_clkoutphy_out,
   output    pll2_clkout0_out,
   output    pll2_clkout1_out,
   output    pll2_clkout2_out,
   output    pll2_clkout3_out,
   output    pll2_locked_fb_out,
   output    pll2_locked_out,
   input     psclk,
   input     psen,
   input     psincdec,
   output    psdone
);

   wire      pll0_locked;
   wire      pll1_locked;
   wire      pll2_locked;
   
   wire      pll0_locked_fb;
   wire      pll1_locked_fb;
   wire      pll2_locked_fb;
   

   wire      pll0_clkout1;
   wire      pll1_clkout1;
   wire      pll2_clkout1;


   assign pll0_locked_out    =  pll0_locked;
   assign pll1_locked_out    =  pll1_locked;
   assign pll2_locked_out    =  pll2_locked;

   assign pll0_locked_fb_out    =  pll0_locked_fb;
   assign pll1_locked_fb_out    =  pll1_locked_fb;
   assign pll2_locked_fb_out    =  pll2_locked_fb;

  // Clocking PRIMITIVE
  //
  // BANK0 PLL
  //------------------------------------
  // Instantiation of the XPLL PRIMITIVE
  //    * Unused inputs are tied off
  //    * Unused outputs are labeled unused
  wire [15:0] pll0_do_unused;
  wire [15:0] pll0_riu_rd_data_unused;
  wire        pll0_drdy_unused;
  wire        pll0_psdone_unused;
  wire        pll0_clkout0;
  wire        pll0_clkout2;
  wire        pll0_clkout3;
  wire        pll0_riu_valid_unused;
  

   localparam C_PLL0_CLK3_PHASE = (BUS_DIR == 1) ? (840 * 360)/ (RX_SERIALIZATION_FACTOR * (1000000/DATA_SPEED)) : (840 * 360)/ (TX_SERIALIZATION_FACTOR * (1000000/DATA_SPEED));
   localparam C_PLL1_CLK3_PHASE = (BUS_DIR == 1) ? (840 * 360)/ (RX_SERIALIZATION_FACTOR * (1000000/DATA_SPEED)) : (840 * 360)/ (TX_SERIALIZATION_FACTOR * (1000000/DATA_SPEED));
   localparam C_PLL2_CLK3_PHASE = (BUS_DIR == 1) ? (840 * 360)/ (RX_SERIALIZATION_FACTOR * (1000000/DATA_SPEED)) : (840 * 360)/ (TX_SERIALIZATION_FACTOR * (1000000/DATA_SPEED));
   

  XPLL
  #(
    .CLKFBOUT_MULT        (C_PLL0_M),
    .CLKFBOUT_PHASE       (0.000),
    .CLKIN_PERIOD         (C_CLKIN_PERIOD),
    .CLKOUT0_DIVIDE       (C_PLL0_O0),
    .CLKOUT1_DIVIDE       (C_PLL0_O1),
    .CLKOUT2_DIVIDE       (C_PLL0_O2),
    .CLKOUT3_DIVIDE       (C_PLL0_O3),
    .CLKOUTPHY_DIVIDE     (C_PLL0_CLKOUTPHY_DIVIDE),
    .DIVCLK_DIVIDE        (C_PLL0_D),
    .CLKOUT0_PHASE        (C_PLL0_CLK0_PHASE),
    .CLKOUT0_PHASE_CTRL   ((ENABLE_XPLL_DESKEW == 1) ? 2'b01 : 2'b00),
    .CLKOUT3_PHASE_CTRL   ((MIPI_TXCALIB_EN == 1) ? 2'b10 : 2'b00),
    .CLKOUT1_PHASE        (C_PLL0_CLK1_PHASE),
    //.CLKOUT3_PHASE        ((TEMPLATE == "MIPI_TX" || TEMPLATE == "MIPI_RX") ? 119.5 : C_PLL0_CLK3_PHASE),
    .CLKOUT3_PHASE        (105),
    .CLKOUT0_DUTY_CYCLE   (0.500),
    .REF_JITTER           (0.010))
  xpll_pll0_inst
    // Output clocks
   (
    .CLKOUT0             (pll0_clkout0),
    .CLKOUT1             (pll0_clkout1),
    .CLKOUT2             (pll0_clkout2),
    .CLKOUT3             (pll0_clkout3),
    .CLKOUTPHY           (pll0_clkoutphy_out),
    .LOCKED              (pll0_locked),
    .LOCKED1_DESKEW      (),
    .LOCKED2_DESKEW      (),
    .LOCKED_FB           (pll0_locked_fb),
     // Input clock control
    .CLKIN               (pll0_clk_in),
    .CLKOUTPHYEN         (pll0_clkoutphy_en_in),
    // Ports for dynamic reconfiguration
    .DADDR               (7'h0),
    .DCLK                (1'b0),
    .DEN                 (1'b0),
    .DI                  (16'h0),
    .DO                  (pll0_do_unused),
    .DRDY                (pll0_drdy_unused),
    .DWE                 (1'b0),
    // RIU ports
    .RIU_RD_DATA         (pll0_riu_rd_data_unused),
    .RIU_VALID           (pll0_riu_valid_unused),
    .RIU_ADDR            (8'h0),
    .RIU_CLK             (1'b0),
    .RIU_NIBBLE_SEL      (1'b0),
    .RIU_WR_DATA         (16'h0),
    .RIU_WR_EN           (1'b0),
    // Other control and status signals
    .CLKFB1_DESKEW       ((ENABLE_XPLL_DESKEW == 1) ? pll0_clkout0_out : 1'b0),
    .CLKFB2_DESKEW       (1'b0),
    .CLKIN1_DESKEW       ((ENABLE_XPLL_DESKEW == 1) ? pll0_clkout3 : 1'b0),
    .CLKIN2_DESKEW       (1'b0),
    .PSCLK               (psclk),
    .PSEN                (psen),
    .PSINCDEC            (psincdec),
    .PWRDWN              (1'b0),
    .PSDONE              (psdone),
    .RST                 (pll0_rst_in)
);

  // Output buffering
  //-----------------------------------

  BUFGCE # (
  .SIM_DEVICE (C_SIM_DEVICE),
  .STARTUP_SYNC ("TRUE")
  )
  pll0_clkout0_buf
   ( .O   (pll0_clkout0_out),
     .CE   (pll0_locked_fb),
     .I    (pll0_clkout0)
   );


BUFGCE_DIV #(
  .BUFGCE_DIVIDE  (2)      // 1-8
  // Programmable Inversion Attributes: Specifies built-in programmable inversion on specific pins
  ,.IS_CE_INVERTED (1'b0) // Optional inversion for CE
  ,.IS_CLR_INVERTED(1'b0) // Optional inversion for CLR
  ,.IS_I_INVERTED  (1'b0) // Optional inversion for I
  ,.SIM_DEVICE     ("VERSAL_AI_CORE_ES1")
)u_mipi_bufgce_div2 (
   .O  (pll0_clkout0_div2) // 1-bit output: Buffer
  ,.CE (pll0_locked_fb)  // 1-bit input: Buffer enable
  ,.CLR(1'b0)  // 1-bit input: Asynchronous clear
  ,.I  (pll0_clkout0)   // 1-bit input: Buffer
);

BUFGCE_DIV #(
  .BUFGCE_DIVIDE  (4)      // 1-8
  // Programmable Inversion Attributes: Specifies built-in programmable inversion on specific pins
  ,.IS_CE_INVERTED (1'b0) // Optional inversion for CE
  ,.IS_CLR_INVERTED(1'b0) // Optional inversion for CLR
  ,.IS_I_INVERTED  (1'b0) // Optional inversion for I
  ,.SIM_DEVICE     ("VERSAL_AI_CORE_ES1")
)u_mipi_bufgce_div4 (
   .O  (pll0_clkout0_div4) // 1-bit output: Buffer
  ,.CE (pll0_locked_fb)  // 1-bit input: Buffer enable
  ,.CLR(1'b0)  // 1-bit input: Asynchronous clear
  ,.I  (pll0_clkout0)   // 1-bit input: Buffer
);


  BUFGCE # (
  .SIM_DEVICE (C_SIM_DEVICE),
  .STARTUP_SYNC ("TRUE")
  )
  pll0_clkout1_buf
   ( .O   (pll0_clkout1_out),
     .CE  (pll0_locked),
     .I   (pll0_clkout1)
   );

  BUFGCE # (
  .SIM_DEVICE (C_SIM_DEVICE),
  .STARTUP_SYNC ("TRUE")
  )
  pll0_clkout2_buf
   ( .O   (pll0_clkout2_out),
     .CE   (pll0_locked),
     .I    (pll0_clkout2)
   );

  BUFGCE # (
  .SIM_DEVICE (C_SIM_DEVICE),
  .STARTUP_SYNC ("TRUE")
  )
  pll0_clkout3_buf
   ( .O   (pll0_clkout3_out),
     .CE  (pll0_locked),
     .I   (pll0_clkout3)
   );


 // BANK1 PLL
  //------------------------------------
  // Instantiation of the XPLL PRIMITIVE
  //    * Unused inputs are tied off
  //    * Unused outputs are labeled unused
 generate if(MAX_BANKS > 1) begin

  wire [15:0] pll1_do_unused;
  wire [15:0] pll1_riu_rd_data_unused;
  wire        pll1_drdy_unused;
  wire        pll1_psdone_unused;
  wire        pll1_clkout0;
  wire        pll1_clkout2;
  wire        pll1_clkout3;
  wire        pll1_riu_valid_unused;

  XPLL
  #(
    .CLKFBOUT_MULT        (C_PLL1_M),
    .CLKFBOUT_PHASE       (0.000),
    .CLKIN_PERIOD         (C_CLKIN_PERIOD),
    .CLKOUT0_DIVIDE       (C_PLL1_O0),
    .CLKOUT1_DIVIDE       (C_PLL1_O1),
    .CLKOUT2_DIVIDE       (C_PLL1_O2),
    .CLKOUT3_DIVIDE       (C_PLL1_O3),
    .CLKOUTPHY_DIVIDE     (C_PLL1_CLKOUTPHY_DIVIDE),
    .DIVCLK_DIVIDE        (C_PLL1_D),
    .CLKOUT0_PHASE        (C_PLL1_CLK0_PHASE),
    .CLKOUT0_PHASE_CTRL   ((ENABLE_XPLL_DESKEW == 1) ? 2'b01 : 2'b00),
    .CLKOUT1_PHASE        (C_PLL1_CLK1_PHASE),
    //.CLKOUT3_PHASE        (C_PLL1_CLK3_PHASE),
    .CLKOUT3_PHASE        (105),
    .CLKOUT0_DUTY_CYCLE   (0.500),
    .REF_JITTER           (0.010))
  xpll_pll1_inst
    // Output clocks
   (
    .CLKOUT0             (pll1_clkout0),
    .CLKOUT1             (pll1_clkout1),
    .CLKOUT2             (pll1_clkout2),
    .CLKOUT3             (pll1_clkout3),
    .CLKOUTPHY           (pll1_clkoutphy_out),
    .LOCKED              (pll1_locked),
    .LOCKED_FB           (pll1_locked_fb),
     // Input clock control
    .CLKIN               (pll1_clk_in),
    .CLKOUTPHYEN         (pll1_clkoutphy_en_in),
    // Ports for dynamic reconfiguration
    .DADDR               (7'h0),
    .DCLK                (1'b0),
    .DEN                 (1'b0),
    .DI                  (16'h0),
    .DO                  (pll1_do_unused),
    .DRDY                (pll1_drdy_unused),
    .DWE                 (1'b0),
    // RIU ports
    .RIU_RD_DATA         (pll1_riu_rd_data_unused),
    .RIU_VALID           (pll1_riu_valid_unused),
    .RIU_ADDR            (8'h0),
    .RIU_CLK             (1'b0),
    .RIU_NIBBLE_SEL      (1'b0),
    .RIU_WR_DATA         (16'h0),
    .RIU_WR_EN           (1'b0),
    // Other control and status signals
    .CLKFB1_DESKEW        ((ENABLE_XPLL_DESKEW == 1) ? pll1_clkout0_out : 1'b0),
    .CLKFB2_DESKEW        (1'b0),
    .CLKIN1_DESKEW        ((ENABLE_XPLL_DESKEW == 1) ? pll1_clkout3 : 1'b0),
    .CLKIN2_DESKEW        (1'b0),
    .PSCLK               (1'b0),
    .PSEN                (1'b0),
    .PSINCDEC            (1'b0),
    .PWRDWN              (1'b0),
    .PSDONE              (pll1_psdone_unused),
    .RST                 (pll1_rst_in)
);

  // Output buffering
  //-----------------------------------

  BUFGCE # (
  .SIM_DEVICE (C_SIM_DEVICE),
  .STARTUP_SYNC ("TRUE")
  )
  pll1_clkout0_buf
   ( .O    (pll1_clkout0_out),
     .CE   (pll1_locked_fb),
     .I    (pll1_clkout0)
   );

  BUFGCE # (
  .SIM_DEVICE (C_SIM_DEVICE),
  .STARTUP_SYNC ("TRUE")
  )
  pll1_clkout1_buf
   ( .O   (pll1_clkout1_out),
     .CE  (pll1_locked),
     .I   (pll1_clkout1)
   );

  BUFGCE # (
  .SIM_DEVICE (C_SIM_DEVICE),
  .STARTUP_SYNC ("TRUE")
  )
  pll1_clkout2_buf
   ( .O    (pll1_clkout2_out),
     .CE   (pll1_locked),
     .I    (pll1_clkout2)
   );

  BUFGCE # (
  .SIM_DEVICE (C_SIM_DEVICE),
  .STARTUP_SYNC ("TRUE")
  )
  pll1_clkout3_buf
   ( .O   (pll1_clkout3_out),
     .CE  (pll1_locked),
     .I   (pll1_clkout3)
   );

end
endgenerate
  // BANK2 PLL
  //------------------------------------
  // Instantiation of the XPLL PRIMITIVE
  //    * Unused inputs are tied off
  //    * Unused outputs are labeled unused
 generate if(MAX_BANKS > 2) begin
  wire [15:0] pll2_do_unused;
  wire [15:0] pll2_riu_rd_data_unused;
  wire        pll2_drdy_unused;
  wire        pll2_psdone_unused;
  wire        pll2_clkout0;
  wire        pll2_clkout2;
  wire        pll2_clkout3;
  wire        pll2_riu_valid_unused;

  XPLL
  #(
    .CLKFBOUT_MULT        (C_PLL2_M),
    .CLKFBOUT_PHASE       (0.000),
    .CLKIN_PERIOD         (C_CLKIN_PERIOD),
    .CLKOUT0_DIVIDE       (C_PLL2_O0),
    .CLKOUT1_DIVIDE       (C_PLL2_O1),
    .CLKOUT2_DIVIDE       (C_PLL2_O2),
    .CLKOUT3_DIVIDE       (C_PLL2_O3),
    .CLKOUTPHY_DIVIDE     (C_PLL2_CLKOUTPHY_DIVIDE),
    .DIVCLK_DIVIDE        (C_PLL2_D),
    .CLKOUT0_PHASE        (C_PLL2_CLK0_PHASE),
    .CLKOUT0_PHASE_CTRL   ((ENABLE_XPLL_DESKEW == 1) ? 2'b01 : 2'b00),
    .CLKOUT1_PHASE        (C_PLL2_CLK1_PHASE),
    //.CLKOUT3_PHASE        (C_PLL2_CLK3_PHASE),
    .CLKOUT3_PHASE        (105),
    .CLKOUT0_DUTY_CYCLE   (0.500),
    .REF_JITTER           (0.010))
  xpll_pll2_inst
    // Output clocks
   (
    .CLKOUT0             (pll2_clkout0),
    .CLKOUT1             (pll2_clkout1),
    .CLKOUT2             (pll2_clkout2),
    .CLKOUT3             (pll2_clkout3),
    .CLKOUTPHY           (pll2_clkoutphy_out),
    .LOCKED              (pll2_locked),
    .LOCKED_FB           (pll2_locked_fb),
     // Input clock control
    .CLKIN               (pll2_clk_in),
    .CLKOUTPHYEN         (pll2_clkoutphy_en_in),
    // Ports for dynamic reconfiguration
    .DADDR               (7'h0),
    .DCLK                (1'b0),
    .DEN                 (1'b0),
    .DI                  (16'h0),
    .DO                  (pll2_do_unused),
    .DRDY                (pll2_drdy_unused),
    .DWE                 (1'b0),
    // RIU ports
    .RIU_RD_DATA         (pll2_riu_rd_data_unused),
    .RIU_VALID           (pll2_riu_valid_unused),
    .RIU_ADDR            (8'h0),
    .RIU_CLK             (1'b0),
    .RIU_NIBBLE_SEL      (1'b0),
    .RIU_WR_DATA         (16'h0),
    .RIU_WR_EN           (1'b0),
    // Other control and status signals
    .CLKFB1_DESKEW        ((ENABLE_XPLL_DESKEW == 1) ? pll2_clkout0_out : 1'b0),
    .CLKFB2_DESKEW        (1'b0),
    .CLKIN1_DESKEW        ((ENABLE_XPLL_DESKEW == 1) ? pll2_clkout3 : 1'b0),
    .CLKIN2_DESKEW        (1'b0),
    .PSCLK               (1'b0),
    .PSEN                (1'b0),
    .PSINCDEC            (1'b0),
    .PWRDWN              (1'b0),
    .PSDONE              (pll2_psdone_unused),
    .RST                 (pll2_rst_in)
);

  // Output buffering
  //-----------------------------------

  BUFGCE # (
  .SIM_DEVICE (C_SIM_DEVICE),
  .STARTUP_SYNC ("TRUE")
  )
  pll2_clkout0_buf
   ( .O    (pll2_clkout0_out),
     .CE   (pll2_locked_fb),
     .I    (pll2_clkout0)
   );

  BUFGCE # (
  .SIM_DEVICE (C_SIM_DEVICE),
  .STARTUP_SYNC ("TRUE")
  )
  pll2_clkout1_buf
   ( .O   (pll2_clkout1_out),
     .CE  (pll2_locked),
     .I   (pll2_clkout1)
   );

  BUFGCE # (
  .SIM_DEVICE (C_SIM_DEVICE),
  .STARTUP_SYNC ("TRUE")
  )
  pll2_clkout2_buf
   ( .O    (pll2_clkout2_out),
     .CE   (pll2_locked),
     .I    (pll2_clkout2)
   );

  BUFGCE # (
  .SIM_DEVICE (C_SIM_DEVICE),
  .STARTUP_SYNC ("TRUE")
  )
  pll2_clkout3_buf
   ( .O   (pll2_clkout3_out),
     .CE  (pll2_locked),
     .I   (pll2_clkout3)
   );
end
endgenerate
endmodule


/*Waveform of example expected behavior
*https://wavedrom.com/editor.html
*
{ signal: [{ name:"fabric_clk",wave: "P.......",period:2},
           { name:"DQ0 parllel data",wave: "8...............",data:["55"]},
           { name:"DQ2 parallel data",wave: "8.8.8.8.8.8.8.8.",node:'l.m.',
             data:["pattern","~pattern","pattern","~pattern","pattern","~pattern","pattern","~pattern"]},
           { name:"xphy_div4_clk",wave: "P.......",period:2,phase :0.5,node  :'.ab'},
           { name:"skewed fabric_clk",wave: "P......",period:2,phase :-2.5},
           { name:"Skewed DQ2 parallel data",wave: "7.7.7.7.7.7.7.",phase:'-2.5',node:'i.j.k.',
             data:["pattern","~pattern","pattern","~pattern","pattern","~pattern","pattern","~pattern"]},
           { name:"Skewed DQ0 parllel data",wave: "7...............",phase:'-2.5',data:["55"]}
          ],
           edge  : ["a->l",'a->m','l-p',"m-q",'b->i','b->j'],
           config: { hscale: 1 },
                      head  : { text:
                     ['tspan',
                      ['tspan',{class:'info h4'},'Fabric XPHY TX interface Diagram Before/After calibration']]}
}

*/
/*
*https://wavedrom.com/editor.html
{ signal: [{ name:"fabric_clk",wave: "P..|.|..|.."},
           { name:"ps_txn_start",wave: "010........",node:'.a'},
           { name:"ps_txn_progress",wave: "01..0......"},
           { name:"ps_txn_complete",wave: "0..10......",node  :'...l'},
           { name:"deskew_start",wave: "0..10......",node:'...b'},
           { name:"deskew_progress",wave: "0...1..0..."},
           { name:"deskew_complete",wave: "0....10....",node  :'.....m'},
           { name:"trfc_txn_start",wave: "0.....10...",node  :'......c'},
           { name:"trfc_txn_progress",wave: "0.....1..0."},
           { name:"trfc_txn_complete",wave: "0.......10.",node  :'........n'},
          ],
            edge  : ["a~>l 35-FAB_CLKs",'b~>m 32-PS_CLKs/67-FAB_CLKs','c~>n 20-FAB_CLKs'],
           config: { hscale: 1 },
           head  : { text:
                     ['tspan',
                      ['tspan',{class:'info h4'},'Each transaction timing in MIPI calibration']]}
}

*/

module advanced_io_wizard_v1_0_4_mipi_tx_cal #(
    //--------------------------------
    // PARAMETERS
    //--------------------------------
    parameter TCQ                 = 100
            , DLANES              = 1
            , DBG_BUS_WIDTH       = 100
            , C_EN_DEBUG_TX_CALIB = 0
            , SAMPLE_CNT          = 40
            , MIN_VLD_WINDOW      = 20
            , DATA_PATTERN        = 8'h55
    //--------------------------------
)(
    //--------------------------------
    // XPLL PS Intfc
    //--------------------------------
     input                          psclk
    ,output                         psen
    ,output                         psincdec
    ,input                          psdone

    //--------------------------------
    // XPHY Intfc
    //--------------------------------
    ,output reg [(DLANES*8)-1:0]    cal2phy_data
    ,output     [7:0]               cal2phy_clk_data
    ,input      [(DLANES*8)-1:0]    phy2cal_data

    //--------------------------------
    //Cntrl/Status intfc
    //--------------------------------
    ,output  reg                    cal_done
    ,output  reg                    cal_status  // 1- pass,0-fail

    ,input [7:0]                    sample_cnt
    ,input [4:0]                    min_vld_win
    ,input [7:0]                    data_pattern
    ,output[DBG_BUS_WIDTH-1:0]      dbg_bus

    //--------------------------------
    // VIO PS interface
    //--------------------------------
    ,input                          psen_vio
    ,input                          psincdec_vio
    ,output                         psdone_vio

    //--------------------------------
    //system ctrl intfc
    //--------------------------------
    ,input                          clk
    ,input                          rst
    //--------------------------------
);
localparam TAPS_PER_FAB_CLK = 32*8; // 32 taps for 1 vco period
                                    // so 32*8 for 1 fab cycle period

  function integer clogb2 (input integer size);
    begin
      size = size - 1;
      for (clogb2=1; size>1; clogb2=clogb2+1)
        size = size >> 1;
    end
  endfunction

reg       trfc_err;
reg       trfc_txn_progress;
reg       ps_txn_progress;
reg       deskew_progress;
reg       deskew_complete_r1;
reg       trfc_seq;
reg       exp_data_vld;
reg       n_exp_data_vld;
reg       n_use_both_metrics;
reg       use_both_metrics;
wire      data_stable;
wire      data_match ;
wire      data_err   ;
wire      rd_valid;
wire      deskew_complete;
wire      trfc_done;
wire      cal_err;
wire      deskew_start;
wire      trfc_txn_start;
wire      trfc_txn_complete;
wire      ps_txn_start;
wire      ps_txn_complete ;
wire      psdone_fab;

reg  [clogb2(TAPS_PER_FAB_CLK*2)-1:0] ps_tap_cntr;
wire [DLANES*8-1:0] current_data  ;
reg  [DLANES*8-1:0] prev_data     ;
reg  [DLANES*8-1:0] exp_data      ;
reg  [DLANES*8-1:0] n_exp_data    ;
reg  [02:0]         ps_done_cntr  ;
reg  [07:0]         watchdog_cntr ;
reg  [07:0]         trfc_txn_cntr ;
reg  [16:0]         rd_vld_shifter;

wire [7:0] int_sample_cnt  ;  // internal signal
wire [4:0] int_min_vld_win ;  // internal signal
wire [7:0] int_data_pattern;  // internal signal
wire       int_psen_vio    ;  // internal signal
wire       int_psincdec_vio;  // internal signal

generate if(C_EN_DEBUG_TX_CALIB == 0) begin
     assign int_sample_cnt    = SAMPLE_CNT    ;
     assign int_min_vld_win   = MIN_VLD_WINDOW;
     assign int_data_pattern  = DATA_PATTERN  ;
     assign int_psen_vio      = 1'b0;
     assign int_psincdec_vio  = 1'b0;
end else begin
     assign int_sample_cnt    = sample_cnt  ;
     assign int_min_vld_win   = min_vld_win ;
     assign int_data_pattern  = data_pattern;
     assign int_psen_vio      = psen_vio    ;
     assign int_psincdec_vio  = psincdec_vio;
end
endgenerate

//-------------------------------------
// FSM_START for the calibration
//-------------------------------------
localparam  RST      = 0
           ,INIT     = 1
           ,NOISE    = 2
           ,MIN_VLD  = 3
           ,VALID    = 4
           ,DONE     = 5
           ,ERROR    = 6
           ;

reg [2:0] state,n_state;
reg [4:0] vld_cnt   ,n_vld_cnt;
reg [3:0] n_err_code,err_code ;

reg [clogb2(TAPS_PER_FAB_CLK*2)-1:0] left_edge ,n_left_edge  ;
reg [clogb2(TAPS_PER_FAB_CLK*2)-1:0] right_edge,n_right_edge ;
reg [clogb2(TAPS_PER_FAB_CLK*2)-1:0] cntr_edge ;

reg  n_trfc_start,n_psen,n_psincdec ;
reg  trfc_start,psen_fab,psincdec_fab ;
reg  n_cal_done,n_cal_status;

assign cal_err = (ps_tap_cntr == ((2*TAPS_PER_FAB_CLK)-1));

    always@(posedge clk)
        if(rst) state <= #TCQ RST;
        else    state <= #TCQ n_state;

    always@* begin
                      n_state = state;    //Loop Back
      if(cal_err)     n_state = ERROR;
      else casez(state)
            RST     : n_state = INIT;

            INIT    :if(exp_data_vld)
                      n_state =  NOISE;

            NOISE   :if(trfc_done && (~trfc_err))
                      n_state = MIN_VLD;

            MIN_VLD :if((trfc_done || trfc_txn_progress) && trfc_err)
                      n_state = NOISE ;
                     else if(vld_cnt > int_min_vld_win)
                      n_state = VALID ;

            VALID   :if((trfc_done || trfc_txn_progress) && trfc_err)
                      n_state =  DONE;

            DONE    :if(trfc_done && trfc_err)
                      n_state = ERROR ;
        endcase
    end

    always@* begin
      n_trfc_start = 1'b0;
      casez(state)
       INIT      :if(~trfc_txn_progress && ~exp_data_vld)
                        n_trfc_start = 1'b1;
       NOISE,VALID
       ,MIN_VLD:
                  if((deskew_complete || deskew_complete_r1)&&(trfc_seq==0))
                       n_trfc_start = 1'b1;

       DONE:     if((deskew_complete || deskew_complete_r1)&&(trfc_seq==0)&&
                     (ps_tap_cntr <= cntr_edge) && (~cal_done))
                       n_trfc_start = 1'b1;
        endcase
      end

   always@* begin
     n_psen       = 1'b0;
     n_psincdec   = 1'b1;
     casez(state)
       NOISE :
                   if(~( ps_txn_progress   || trfc_txn_progress ||
                         deskew_progress   || deskew_complete_r1))
                       n_psen     = 1'b1;
                   else if (trfc_txn_progress && trfc_err) // this will decrease the time of stay in NOISE window
                       n_psen     = 1'b1;

       VALID,MIN_VLD:
                   if(~( ps_txn_progress   || trfc_txn_progress ||
                         deskew_progress   || deskew_complete_r1))
                       n_psen     = 1'b1;
        DONE: begin
                  n_psincdec  = 1'b0;
                  if((ps_tap_cntr > cntr_edge)&&(~ps_txn_progress))// decrementing the ps tap
                      n_psen     = 1'b1;
              end
        ERROR: begin
                  n_psincdec  = 1'b0;
                  if((ps_tap_cntr>0)&&(~ps_txn_progress))// decrementing the ps tap
                      n_psen     = 1'b1;
              end
     endcase
   end

   always@* begin
     n_vld_cnt    = vld_cnt;
     n_left_edge  = left_edge;
     n_right_edge = right_edge;
     casez(state)
       RST: begin
                n_vld_cnt    = 0;
                n_left_edge  = 0;
                n_right_edge = 0;
            end
       MIN_VLD: begin
            if(trfc_done)
                n_vld_cnt =  vld_cnt + 1'b1;

            if(n_state == VALID)
                n_left_edge = ps_tap_cntr-int_min_vld_win;
       end
       VALID: if(n_state == DONE)
                n_right_edge = ps_tap_cntr;

     endcase
   end

  always@* begin
                n_cal_done   = cal_done;
                n_cal_status = cal_status;
     casez(state)
      RST:begin
                n_cal_done   = 1'b0;
                n_cal_status = 1'b0;
              end
      DONE  : if(trfc_done && (~trfc_err)) begin
                n_cal_done   = 1'b1;
                n_cal_status = 1'b1;
            end
      ERROR :if (((ps_tap_cntr==0)&&deskew_complete))begin
                n_cal_done   = 1'b1;
                n_cal_status = 1'b0;
            end
      endcase
    end

    always@* begin
      n_err_code = err_code;
      if(cal_err)
        casez(state)
          RST     : n_err_code = 0;
          NOISE   : n_err_code = 1;
          MIN_VLD : n_err_code = 2;
          VALID   : n_err_code = 3;
          DONE    : n_err_code = 4;
        endcase
    end

  always@* begin
      n_exp_data         = exp_data;
      n_use_both_metrics = use_both_metrics;
      n_exp_data_vld     = exp_data_vld;
     casez(state)
      RST:begin
            n_exp_data         = 8'b0;
            n_use_both_metrics = 1'b0;
            n_exp_data_vld     = 1'b0;
          end
      INIT:
            if(trfc_done && (~trfc_err)) begin
              n_use_both_metrics = 1'b1;
              n_exp_data_vld     = 1'b1;
              if(data_stable && trfc_seq)
                n_exp_data = ~current_data;
              else if (data_stable)
                n_exp_data = current_data;
            end else if (trfc_txn_progress && rd_valid && (~data_stable))
              n_exp_data_vld     = 1'b1;
      endcase
    end

  always@(posedge clk) begin
    psen_fab          <= #TCQ n_psen       ;
    psincdec_fab      <= #TCQ n_psincdec   ;
    trfc_start        <= #TCQ n_trfc_start ;
    vld_cnt           <= #TCQ n_vld_cnt    ;
    left_edge         <= #TCQ n_left_edge  ;
    right_edge        <= #TCQ n_right_edge ;
    cntr_edge         <= #TCQ left_edge + ((right_edge - left_edge)>>1); // avg of left and right edge
    cal_done          <= #TCQ n_cal_done   ;
    cal_status        <= #TCQ n_cal_status ;
    err_code          <= #TCQ n_err_code   ;
    exp_data          <= #TCQ n_exp_data   ;
    use_both_metrics  <= #TCQ n_use_both_metrics;
    exp_data_vld      <= #TCQ n_exp_data_vld;
  end

//------------------------------------
// FSM_END for the calibration
//------------------------------------

assign trfc_txn_start    = trfc_start;
assign trfc_txn_complete = trfc_done;
assign ps_txn_start      = psen_fab;
assign ps_txn_complete   = ps_txn_progress && psdone_fab;

assign rd_valid = rd_vld_shifter[15];

  always@(posedge clk)
    if(rst)  cal2phy_data  <= #TCQ {DLANES{int_data_pattern}};
    else     cal2phy_data  <= #TCQ ~cal2phy_data;

assign cal2phy_clk_data = 8'h55;
assign current_data     = phy2cal_data;
assign data_stable      = (current_data == ~prev_data);
assign data_match       = (current_data ==   exp_data);
assign data_err         = use_both_metrics ? ~(data_match && data_stable) : ~data_stable;

  always@(posedge clk)
    prev_data   <= #TCQ phy2cal_data;

  always@(posedge clk) begin
    if(rst) trfc_seq <= #TCQ 1'b1;
    else    trfc_seq <= #TCQ ~trfc_seq;

    if(rst || trfc_txn_start || trfc_done || ps_txn_progress || (state != n_state))
          trfc_err <= #TCQ 0  ;
    else  trfc_err <= #TCQ (rd_valid && trfc_seq) ? (data_err || trfc_err )  : trfc_err  ;  // Avoiding first packet comparison to get valid prev_data

    if(rst || trfc_start || trfc_done || (state != n_state))
          trfc_txn_cntr <= #TCQ 0;
    else if(~trfc_done)
          trfc_txn_cntr <= #TCQ  rd_valid ? trfc_txn_cntr + 1'b1 : trfc_txn_cntr ;

      if(n_trfc_start || trfc_txn_progress)
          rd_vld_shifter <= #TCQ {rd_vld_shifter,trfc_txn_progress};
      else
          rd_vld_shifter <= #TCQ 0;
    end

    assign trfc_done = (trfc_txn_cntr == int_sample_cnt);

always@(posedge clk) begin
  if (rst || n_psen)  // this will decrease the time of stay in NOISE window
    trfc_txn_progress <= #TCQ 1'b0;
  else if (n_trfc_start)
    trfc_txn_progress <= #TCQ 1'b1;
  else if (trfc_txn_progress && trfc_done)
    trfc_txn_progress <= #TCQ 1'b0;
  else if (trfc_txn_progress && (state != n_state))
    trfc_txn_progress <= #TCQ 1'b0;

  if (rst)
    ps_txn_progress <= #TCQ 1'b0;
  else if (n_psen)
    ps_txn_progress <= #TCQ 1'b1;
  else if (ps_txn_progress && psdone_fab)
    ps_txn_progress <= #TCQ 1'b0;

  if(rst || deskew_complete)  begin
    ps_done_cntr    <= #TCQ 0;
    deskew_progress <= #TCQ 1'b0;
  end else if (deskew_start) begin
    ps_done_cntr    <= #TCQ 0;
    deskew_progress <= #TCQ 1'b1;
  end else if(deskew_progress && psdone_fab)
    ps_done_cntr    <= #TCQ ps_done_cntr + 1'b1;

end

 assign deskew_start     =  ps_txn_complete;
 assign deskew_complete  = (ps_done_cntr == 3'd1);

always@(posedge clk)
  deskew_complete_r1 <= #TCQ deskew_complete;

reg inc_cntr;
reg dec_cntr;

always@(posedge clk)
  if (rst || psdone_fab)begin
    inc_cntr <= #TCQ 1'b0;
    dec_cntr <= #TCQ 1'b0;
  end else if (psen_fab && psincdec_fab)
    inc_cntr <= #TCQ 1'b1;
  else if (psen_fab && (~psincdec_fab))
    dec_cntr <= #TCQ 1'b1;

always@(posedge clk)
  if      (rst)                    ps_tap_cntr <= #TCQ 0;
  else if (inc_cntr && psdone_fab) ps_tap_cntr <= #TCQ ps_tap_cntr + 1'b1;
  else if (dec_cntr && psdone_fab) ps_tap_cntr <= #TCQ ps_tap_cntr - 1'b1;
  else                             ps_tap_cntr <= #TCQ ps_tap_cntr;

//------------------------------------
//---------- PS interface Start ------
//------------------------------------
wire psen_vio2fab;
wire psincdec_vio2fab;
wire psen_vio2fab_posedge;
reg  ps_done_vio = 1'b0;
reg  psen_vio2fab_r1;
reg  vio_ps_txn_progress=1'b0;
reg  psen_mux;
reg  psincdec_mux;

generate if (C_EN_DEBUG_TX_CALIB == 1) begin

xpm_cdc_single #(
    .DEST_SYNC_FF   (2)
   ,.INIT_SYNC_FF   (0)
   ,.SIM_ASSERT_CHK (0)
   ,.SRC_INPUT_REG  (0)
)u_xpm_psincdec_vio2fabclk(
   .dest_out (psincdec_vio2fab)
  ,.dest_clk (clk)
  ,.src_clk  (1'b0 )
  ,.src_in   (int_psincdec_vio)
);

xpm_cdc_single #(
    .DEST_SYNC_FF   (2)
   ,.INIT_SYNC_FF   (0)
   ,.SIM_ASSERT_CHK (0)
   ,.SRC_INPUT_REG  (0)
)u_xpm_psen_vio2fabclk(
    .dest_out (psen_vio2fab)
   ,.dest_clk (clk)
   ,.src_clk  (1'b0 )
   ,.src_in   (int_psen_vio)
);

  always@(posedge clk) begin
      psen_mux        <= #TCQ cal_done  ? psen_vio2fab_posedge : psen_fab;
      psincdec_mux    <= #TCQ cal_done  ? psincdec_vio2fab     : psincdec_fab;
      if(psen_vio2fab_posedge) begin
          vio_ps_txn_progress <= #TCQ 1'b1;
          ps_done_vio         <= #TCQ 1'b0;
      end else if(vio_ps_txn_progress && psdone_fab) begin
          vio_ps_txn_progress <= #TCQ 1'b0;
          ps_done_vio         <= #TCQ 1'b1;
      end
      psen_vio2fab_r1 <= #TCQ psen_vio2fab;
  end

  assign psen_vio2fab_posedge = psen_vio2fab & (~psen_vio2fab_r1);  // posedge of psen
  assign psdone_vio           = ps_done_vio;

end
endgenerate

xpm_cdc_pulse #(
    .DEST_SYNC_FF   (2)
   ,.INIT_SYNC_FF   (0)
   ,.REG_OUTPUT     (1)
   ,.RST_USED       (1)
   ,.SIM_ASSERT_CHK (0)
)u_xpm_psen(
    .dest_pulse (psen)
   ,.dest_clk   (psclk)
   ,.src_clk    (clk )
   ,.src_pulse  ((C_EN_DEBUG_TX_CALIB == 1) ? psen_mux : psen_fab)
   ,.dest_rst   (1'b0)
   ,.src_rst    (rst)
);

xpm_cdc_single #(
    .DEST_SYNC_FF   (2)
   ,.INIT_SYNC_FF   (0)
   ,.SIM_ASSERT_CHK (0)
   ,.SRC_INPUT_REG  (0)
)u_xpm_psincdec(
   .dest_out (psincdec)
  ,.dest_clk (psclk)
  ,.src_clk  (clk )
  ,.src_in   ((C_EN_DEBUG_TX_CALIB == 1) ? psincdec_mux : psincdec_fab)
);

xpm_cdc_pulse #(
    .DEST_SYNC_FF   (2)
   ,.INIT_SYNC_FF   (0)
   ,.REG_OUTPUT     (1)
   ,.RST_USED       (0)
   ,.SIM_ASSERT_CHK (0)
)u_xpm_psdone(
    .dest_pulse (psdone_fab)
   ,.dest_clk   (clk)
   ,.src_clk    (psclk )
   ,.src_pulse  (psdone)
   ,.dest_rst   ()
   ,.src_rst    ()
);

//------------------------------------
//------- PS Interface END -----------
//------------------------------------

//----------------------------------
//synthesis translate_off
//----------------------------------
reg [2:0] prev_state;
    always@(posedge clk)
        if(rst) prev_state <= #TCQ RST;
        else    prev_state <= #TCQ (n_state != state) ? state : prev_state;

reg [07*8:1] state_ascii,next_state_ascii,prev_state_ascii;

  always@* begin
    state_ascii      = 56'hx;
    next_state_ascii = 56'hx;
    prev_state_ascii = 56'hx;

    casez(state)
      RST    :     state_ascii = "RST"    ;
      INIT   :     state_ascii = "INIT"   ;
      NOISE  :     state_ascii = "NOISE"  ;
      MIN_VLD:     state_ascii = "MIN_VLD";
      VALID  :     state_ascii = "VALID"  ;
      DONE   :     state_ascii = "DONE"   ;
      ERROR  :     state_ascii = "ERROR"  ;
    endcase

    casez(n_state)
      RST     :next_state_ascii = "RST"    ;
      INIT    :next_state_ascii = "INIT"   ;
      NOISE   :next_state_ascii = "NOISE"  ;
      MIN_VLD :next_state_ascii = "MIN_VLD";
      VALID   :next_state_ascii = "VALID"  ;
      DONE    :next_state_ascii = "DONE"   ;
      ERROR   :next_state_ascii = "ERROR"  ;
    endcase

    casez(prev_state)
      RST     :prev_state_ascii = "RST"    ;
      INIT    :prev_state_ascii = "INIT"   ;
      NOISE   :prev_state_ascii = "NOISE"  ;
      MIN_VLD :prev_state_ascii = "MIN_VLD";
      VALID   :prev_state_ascii = "VALID"  ;
      DONE    :prev_state_ascii = "DONE"   ;
      ERROR   :prev_state_ascii = "ERROR"  ;
    endcase

  end

   always@*
      if(cal_done && cal_status) begin
        #1 $display("RTL_INFO:: %-6t CALIBRATION PASSED           %m",$time);
           $display("RTL_INFO:: %-6t LEFT   EDGE VALUE = %3d taps %m",$time,left_edge );
           $display("RTL_INFO:: %-6t RIGHT  EDGE VALUE = %3d taps %m",$time,right_edge);
           $display("RTL_INFO:: %-6t CENTER EDGE VALUE = %3d taps %m",$time,cntr_edge );
      end else if(cal_done && (~cal_status)) begin
        #1 $display("RTL_INFO:: %-6t CALIBRATION FAILED :Error code = %1d %m",$time,err_code);
           if(err_code < 4)
              $display("RTL_INFO:: Taps got saturated");
           else
              $display("RTL_INFO:: Traffic Error in Done state");
      end

    always@(state)
        #1 $display("RTL_INFO:: %-6t State transitioned from %-7s to %-7s %m",$time,prev_state_ascii,state_ascii);

//----------------------------------
//synthesis translate_on
//----------------------------------


generate if (C_EN_DEBUG_TX_CALIB == 1) begin
assign
      dbg_bus[00+:09]   = left_edge
     ,dbg_bus[09+:09]   = right_edge
     ,dbg_bus[18+:09]   = cntr_edge
     ,dbg_bus[27+:09]   = ps_tap_cntr
     ,dbg_bus[36+:08]   = trfc_txn_cntr
     ,dbg_bus[44+:04]   = vld_cnt
     ,dbg_bus[48+:04]   = err_code
     ,dbg_bus[52+:03]   = state
     ,dbg_bus[55+:01]   = cal_done
     ,dbg_bus[56+:01]   = cal_status
     ,dbg_bus[57+:01]   = trfc_err
     ,dbg_bus[58+:01]   = trfc_done
     ,dbg_bus[59+:01]   = ps_txn_progress
     ,dbg_bus[60+:01]   = deskew_progress
     ,dbg_bus[61+:01]   = trfc_txn_progress
     ,dbg_bus[62+:01]   = rst
     ,dbg_bus[63+:01]   = trfc_seq
     ,dbg_bus[64+:01]   = use_both_metrics
     ,dbg_bus[65+:01]   = data_match
     ,dbg_bus[66+:01]   = data_stable
     ,dbg_bus[67+:01]   = data_err
     ,dbg_bus[68+:01]   = rd_valid
  ;
end else assign dbg_bus = 0;
endgenerate

endmodule


