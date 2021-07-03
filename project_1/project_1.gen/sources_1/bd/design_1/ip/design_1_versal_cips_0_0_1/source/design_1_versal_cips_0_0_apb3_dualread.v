
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
// File       : design_1_versal_cips_0_0_apb3_dualread.v
// Version    : 1.0 
//-----------------------------------------------------------------------------

`timescale 1ps/1ps

`define XLREG_EDGE(clkedge,clk,rstedge,rst) \
    always @(clkedge clk)


module design_1_versal_cips_0_0_apb3_dualread
#(
    parameter TCQ      = 100
) (
  //--------------------------------------------------------------------------                   
  // PCIe APB3 Port
  //--------------------------------------------------------------------------                   
  input  wire                                apb3_clk,
  input  wire                                apb3_presetn,
  
  input  wire                     [8:0]      s_apb3_paddr,
  input  wire                                s_apb3_penable,
  input  wire                                s_apb3_psel,
  input  wire                     [31:0]     s_apb3_pwdata,
  input  wire                                s_apb3_pwrite,
  output wire                     [31:0]     s_apb3_prdata,
  output wire                                s_apb3_pready,
  output wire                                s_apb3_pslverr,
  
  output wire                     [8:0]      m_apb3_paddr,
  output wire                                m_apb3_penable,
  output wire                                m_apb3_psel,
  output wire                     [31:0]     m_apb3_pwdata,
  output wire                                m_apb3_pwrite,
  input  wire                     [31:0]     m_apb3_prdata,
  input  wire                                m_apb3_pready,
  input  wire                                m_apb3_pslverr

);

wire    cmd_is_read;
wire    cmd_is_write;
reg     m_apb3_pready_d1;
reg     read_count;


assign  m_apb3_paddr    =  s_apb3_paddr; 
assign  m_apb3_penable  =  cmd_is_read ? (s_apb3_penable && ~m_apb3_pready_d1) : s_apb3_penable; 
assign  m_apb3_psel     =  s_apb3_psel; 
assign  m_apb3_pwdata   =  s_apb3_pwdata; 
assign  m_apb3_pwrite   =  s_apb3_pwrite; 
assign  s_apb3_prdata   =  m_apb3_prdata;
assign  s_apb3_pready   =  cmd_is_read ? (m_apb3_pready && read_count) : m_apb3_pready; 
assign  s_apb3_pslverr  =  m_apb3_pslverr;


assign cmd_is_read  = s_apb3_psel && ~s_apb3_pwrite;
assign cmd_is_write = s_apb3_psel &&  s_apb3_pwrite;


always@(posedge apb3_clk, negedge apb3_presetn)
begin
  if(~apb3_presetn)
  begin
    read_count       <= 'd0;
    m_apb3_pready_d1 <= 'd0;
  end
  else
  begin
    m_apb3_pready_d1 <= m_apb3_pready;
    read_count       <= (m_apb3_pready && cmd_is_read) ? (read_count + 1'b1) : read_count;
  end
end

endmodule
