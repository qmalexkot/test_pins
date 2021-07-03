//------------------------------------------------------------------------------
//  (c) Copyright 2017-2018 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES.
//------------------------------------------------------------------------------

`timescale 1ps/1ps

module versal_cips_v2_1_gt_quad_base_1_tx_function 
(
  input apbclk, 
  input reset, 
  input wire MSTTXRESET,
  input wire TXPRERATECHANGE,
  input wire TXDATAPATHRESET,
  input wire gpoFromGT,
  
  output reg [3:0] Command, 
  output wire gpiToGT,
  output wire gpoTouser
); 

  reg   [6:0]  request;
  reg   MSTTXRESET_r2, MSTTXRESET_r1;
  reg   TXPRERATECHANGE_r2, TXPRERATECHANGE_r1;
  reg   TXDATAPATHRESET_r2, TXDATAPATHRESET_r1;  
  reg   gpi;
  reg   gpo;
  reg   [6:0] request_r;
  reg   [6:0] en = 7'h0;
  reg   [2:0] idx = 3'b000;
  
  //
  // Arbitration state machine encodings
  //
  localparam [4:0] ARB_START            = 5'd1;
  localparam [4:0] ARB_WAIT             = 5'd2;
  localparam [4:0] ARB_REPORT           = 5'd4;
  localparam [4:0] ARB_WAIT_NXT_REQ     = 5'd8;  
  localparam [4:0] ARB_INC              = 5'd16;
    
  reg [4:0] arb_state = ARB_START;    
  reg [3:0] rrst_r;
  wire rrst;
  integer i;
  reg [7:0] counter;
  reg [1:0] gpoState;
  (* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *) reg [3:0] gpoFromGTsync_r; 
  wire gpoFromGTsync;
  wire TXPRERATECHANGE_sync;
  wire MSTTXRESET_sync;
  wire TXDATAPATHRESET_sync;

  //--------------------------------------------------------------------------------------------------
  //  Reset Synchronizer for REFCLK
  //--------------------------------------------------------------------------------------------------
  always @ (posedge apbclk or posedge reset)
  begin
    if (reset) 
        rrst_r <= 4'b1111;
    else
        rrst_r <= {rrst_r[2:0], 1'd0};
  end   

  assign rrst = rrst_r[3];

  //--------------------------------------------------------------------------------------------------
  //  Synchronizier
  //--------------------------------------------------------------------------------------------------
  always @ (posedge apbclk)
  begin
      gpoFromGTsync_r <= {gpoFromGTsync_r[3:0], gpoFromGT};  
  end   

  assign gpoFromGTsync = gpoFromGTsync_r[3];

  xpm_cdc_sync_rst # (
   .DEST_SYNC_FF (3),
   .INIT          (0)
  ) TXPRERATECHANGE_xpm_internal_sync (
    .src_rst  (TXPRERATECHANGE),
    .dest_rst (TXPRERATECHANGE_sync),
    .dest_clk (apbclk)
  );

  xpm_cdc_sync_rst # (
   .DEST_SYNC_FF (3)
  ) MSTTXRESET_xpm_internal_sync (
    .src_rst  (MSTTXRESET),
    .dest_rst (MSTTXRESET_sync),
    .dest_clk (apbclk)
  );
  xpm_cdc_sync_rst # (
   .DEST_SYNC_FF (3)
  ) TXDATAPATHRESET_xpm_internal_sync (
    .src_rst  (TXDATAPATHRESET),
    .dest_rst (TXDATAPATHRESET_sync),
    .dest_clk (apbclk)
  );

  always @(posedge apbclk) begin
    if (rrst) begin 
      MSTTXRESET_r2 <= 1'b0;
      MSTTXRESET_r1 <= 1'b0;
    end
    else begin 
      MSTTXRESET_r2 <= MSTTXRESET_r1;
      MSTTXRESET_r1 <= MSTTXRESET_sync;
    end
  end 
  
  always @(posedge apbclk) begin
    if (rrst) begin 
      TXPRERATECHANGE_r2 <= 1'b0;
      TXPRERATECHANGE_r1 <= 1'b0;
    end
    else begin
      TXPRERATECHANGE_r2 <= TXPRERATECHANGE_r1;
      TXPRERATECHANGE_r1 <= TXPRERATECHANGE_sync;
    end
  end 

  always @(posedge apbclk) begin
    if (rrst) begin 
      TXDATAPATHRESET_r2 <= 1'b0;
      TXDATAPATHRESET_r1 <= 1'b0;
    end
    else begin
      TXDATAPATHRESET_r2 <= TXDATAPATHRESET_r1;
      TXDATAPATHRESET_r1 <= TXDATAPATHRESET_sync;
    end
  end

  always @(posedge apbclk) begin
    if (rrst) begin
      request <= 7'b000000;
    end 
    else begin
      if (!MSTTXRESET_r2 && MSTTXRESET_r1) 
        request[1] <= 1'b1;
      else 
        request[1] <= 1'b0;
        
      if (MSTTXRESET_r2 && !MSTTXRESET_r1) 
        request[2] <= 1'b1; 
      else 
        request[2] <= 1'b0;  
        
      if (!TXPRERATECHANGE_r2 && TXPRERATECHANGE_r1) 
        request[3] <= 1'b1;
      else 
        request[3] <= 1'b0;
        
      if (TXPRERATECHANGE_r2 && !TXPRERATECHANGE_r1)
        request[4] <= 1'b1;
      else
        request[4] <= 1'b0;

      if (!TXDATAPATHRESET_r2 && TXDATAPATHRESET_r1) 
        request[5] <= 1'b1;
      else 
        request[5] <= 1'b0;
        
      if (TXDATAPATHRESET_r2 && !TXDATAPATHRESET_r1)
        request[6] <= 1'b1;
      else
        request[6] <= 1'b0;
    end
  end

  always @(posedge apbclk) begin
    if (rrst) begin
      en <= 7'h0;
    end
    else begin
      for (i = 0; i < 7; i= i+1) begin
        if (request[i])
        begin
          en[i] <= 1'b1;
        end
      end
      if (gpoFromGTsync)
      begin
        en[idx] <= 1'b0;
      end
    end
  end

  //
  // Arbitration FSM - does a round-robin arbritration scheme
  //
  always @(posedge apbclk)
  begin
    if (rrst)
    begin
      idx <= 3'b000;
      Command <= 4'b0000;
      gpi <= 1'b0;
      arb_state <= ARB_START;
      counter <= 8'd0;
    end
    else
    begin
      case (arb_state)
        ARB_START: begin
          if (en[idx] == 1'b1)
          begin
            Command <= {1'b0,idx};
            gpi <= 1'b1;
            arb_state <= ARB_WAIT;
          end
          else
          begin
            gpi <= 1'b0; 
            arb_state <= ARB_INC;
            Command <= 4'b0000;
          end 
        end
        ARB_WAIT: begin
          gpi <= 1'b1;
          if (gpoFromGTsync == 1'b1)
            arb_state <= ARB_REPORT;
          else
            arb_state <= ARB_WAIT;
        end
        ARB_REPORT: begin
          gpi <= 1'b0;
          counter <= 8'd0;
          if (gpoFromGTsync == 1'b0)
            arb_state <= ARB_WAIT_NXT_REQ;
          else
            arb_state <= ARB_REPORT;
        end
        ARB_WAIT_NXT_REQ: begin
          gpi <= 1'b0;
          counter <= counter + 1; 
          if (counter[7])
            arb_state <= ARB_INC;
          else
            arb_state <= ARB_WAIT_NXT_REQ;
        end        
        ARB_INC : begin
          gpi <= 1'b0;
          if (idx == 3'b110)
            idx <= 1'b0;
          else
            idx <= idx + 1;
          arb_state <= ARB_START;
        end
        default: arb_state <= ARB_START;
        
      endcase
    end
  end
  
  always @(posedge apbclk)
  begin
    if (rrst) begin
      gpoState <= 2'b00;
      gpo <= 1'b0;
    end 
    else 
    begin 
      case(gpoState)
      2'b00: begin 
        if (Command == 4'b0011 && gpoFromGTsync) begin 
          gpo <= 1'b1;
          gpoState <= 2'b01; 
        end
        else begin 
          gpoState <= 2'b00; 
          gpo <= 1'b0;
        end
      end 
      2'b01: begin 
        if (Command == 4'b0100 && gpoFromGTsync) begin 
          gpoState <= 2'b00;
          gpo <= 1'b0;
        end 
        else begin
          gpo <= 1'b1;
          gpoState <= 2'b01;
        end 
      end
      default: gpoState <= 2'b00;
      endcase
    end
  end
  
  assign gpoTouser = gpo;
  assign gpiToGT = gpi;

endmodule 
