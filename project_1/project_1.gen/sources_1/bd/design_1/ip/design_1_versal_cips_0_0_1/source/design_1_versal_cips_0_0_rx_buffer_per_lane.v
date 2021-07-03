
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
// File       : design_1_versal_cips_0_0_rx_buffer_per_lane.v
// Version    : 1.0 
//-----------------------------------------------------------------------------

`timescale 1ps/1ps

//PHY layer Gen12 Defines
`define SKP_8B    8'h1c
`define COMMA_8B  8'hbc
`define FTS_8B    8'h3c
`define SKP_10B   10'h11c
`define COMMA_10B 10'h1bc
`define STP_8B    8'hfb
`define SDP_8B    8'h5c
`define END_8B    8'hfd
`define PAD_8B    8'hf7
`define EDB_8B    8'hfe
`define IDL_8B    8'h7c
`define EIE_8B    8'hfc

`define XPREG(clk, reset_n, q,d,rstval)          \
    always @(posedge clk)                        \
    begin                                        \
     if (reset_n == 1'b0)                        \
         q <= #(TCQ) rstval;                     \
     else                                        \
         q <= #(TCQ)  d;                         \
     end


module design_1_versal_cips_0_0_rx_buffer_per_lane #(
    parameter           TCQ = 100,
    parameter           LANE = 0,
    parameter           DEPTH = 4,
    parameter           WIDTH = 35,
    parameter           STYLE = "REG",
    parameter           IMPL_TARGET = "SOFT",
    parameter ADDRW = (DEPTH<=2)    ? 1:
                      (DEPTH<=4)    ? 2:
                      (DEPTH<=8)    ? 3:
                      (DEPTH<=16)   ? 4:
                      (DEPTH<=32)   ? 5:
                      (DEPTH<=64)   ? 6:
                      (DEPTH<=128)  ? 7:
                      (DEPTH<=256)  ? 8:
                      (DEPTH<=512)  ? 9:
                      (DEPTH<=1024) ?10:
                      (DEPTH<=2048) ?11:
                      (DEPTH<=4096) ?12:
                      (DEPTH<=8192) ?13:
                      (DEPTH<=16384)?14: -1

    )
    (
    input               clk,
    input               reset_n,
    input [5:0]         cfg_ltssm_state,
    input [1:0]         cfg_rx_pm_state,
    input [1:0]         tx_rate,
    input [31:0]        rx_data_in,
    input [1:0]         rx_kchar_in,
    input               rx_valid_in,
    input [2:0]         rx_status_in,
    input               rx_phy_status_in,
    input               rx_elec_idle_in,
    output [31:0]       rx_data_out,
    output [1:0]        rx_kchar_out,
    output              rx_valid_out,
    output [2:0]        rx_status_out,
    output              rx_phy_status_out,
    output              rx_elec_idle_out
    );

    reg wr_en, rx_l0s_en, rx_l0s_en_ff, com_w_skp_found, com_w_skp_found_ff, com_upper_byte, com_upper_byte_ff, com_w_eios_found, com_w_eios_found_ff, com_upper_byte_found, com_upper_byte_found_ff, rd_en_ff, release_ei_nxt, release_ei_ff, save_upper_kchar_ff, com1_found, com1_found_ff;
    reg [15:0]   cnt_ff, cnt_nxt;
    reg [7:0]   save_upper_byte_ff;
    wire fifo_rst = 1'b0;
    wire afull;
    wire cfull; 
    wire cempty; 
    wire aempty;
    wire [39:0] fifo_out; 
    wire rd_en = wr_en ? afull : ~cempty;
    //wire rd_en = 1'b0;
    wire [ADDRW:0] data_count;
    wire com0 = ((rx_data_in[7:0] ==  `COMMA_8B) & (rx_kchar_in[0])) & rx_valid_in;
    wire com1 = ((rx_data_in[15:8] ==  `COMMA_8B) & (rx_kchar_in[1])) & rx_valid_in;
    wire skp0 = ((rx_data_in[7:0] ==  `SKP_8B) & (rx_kchar_in[0])) & rx_valid_in;
    wire skp1 = ((rx_data_in[15:8] ==  `SKP_8B) & (rx_kchar_in[1])) & rx_valid_in;
    wire eios0 = ((rx_data_in[7:0] ==  `IDL_8B) & (rx_kchar_in[0])) & rx_valid_in;
    wire eios1 = ((rx_data_in[15:8] ==  `IDL_8B) & (rx_kchar_in[1])) & rx_valid_in; 
    wire in_l0 = (cfg_ltssm_state == 6'h10);
    wire [15:0] nfts_timer_value_low = tx_rate[0] ? 'h3CC : 'h7C8; 
    wire [15:0] nfts_timer_value_high = tx_rate[0] ? 'h42C : 'h828; 
    wire move_to_fts = ~release_ei_ff & (cfg_rx_pm_state == 2'b10);
    wire [39:0] fifo_in;
    wire error_found = com_w_skp_found_ff & rx_status_in[2] & (~com_w_eios_found_ff) &  rx_valid_in;
    wire com_with_skp_found = com_w_skp_found_ff;
    wire com1_found_rxbuff = com1_found_ff;
    wire [15:0] cnt_wire = cnt_ff;
    wire realease_ei_wire = release_ei_ff;

    always @* begin
        wr_en = 1'b0;
        com1_found = 1'b0;
        rx_l0s_en = rx_l0s_en_ff;
        if((|cfg_rx_pm_state) | rx_l0s_en_ff) begin
            wr_en = 1'b1;
            com1_found =  ((cfg_rx_pm_state == 2'b11) & ~com_w_skp_found_ff) ? ((com1 | com1_found_ff) & ~com0 ) : ((cfg_rx_pm_state==2'b01)|(cfg_rx_pm_state==2'b10)) ? 'b0 : com1_found_ff;   
            rx_l0s_en = in_l0;     
        end
    end 

    always @* begin
        com_w_skp_found = com_w_skp_found_ff;
        com_upper_byte = 1'b0;
        if(cfg_rx_pm_state[1] & ~com_w_skp_found_ff) begin    
            com_w_skp_found = ((com0 & skp1) | (com_upper_byte_ff & skp0));
            com_upper_byte = com1;  
        end else if((cfg_rx_pm_state == 2'b01) | (cfg_rx_pm_state == 2'b10)) begin
            com_w_skp_found = 1'b0;
        end
    end

    always @* begin
        com_w_eios_found = com_w_eios_found_ff;
        com_upper_byte_found = 1'b0;
        if(in_l0 & rx_valid_in) begin  
            com_w_eios_found = 1'b0;  
            //com_w_eios_found = ((com0 & eios1) | (com_upper_byte_found_ff & eios0) | (com_upper_byte_found_ff & eios1) | com_w_eios_found_ff);
            com_upper_byte_found = com1;  
        end else begin
            com_w_eios_found = 1'b0;
        end
    end

    always @* begin
        cnt_nxt = cnt_ff;
        release_ei_nxt = 1'b0;
        if((cfg_rx_pm_state == 2'b10) & ~rx_elec_idle_in) begin
            if((cnt_ff <= nfts_timer_value_low) | (cnt_ff >= nfts_timer_value_high)) begin
                cnt_nxt = (cfg_rx_pm_state == 2'b10) ? cnt_ff : 'd0;
                release_ei_nxt = 1'b1;
            end else begin
                cnt_nxt = cnt_ff + 1;
            end
        end else begin
            cnt_nxt = ((cfg_rx_pm_state == 2'b10) & (cnt_ff <= (nfts_timer_value_high + 'd20))) ? (cnt_ff + 1) : 'd0;
        end
    end 

  design_1_versal_cips_0_0_sync_fifo #(
    .TCQ(TCQ),
    .WIDTH(WIDTH),
    .DEPTH(DEPTH),
    .STYLE("REG"),
    .AFASSERT(3),
    .AEASSERT(1),
    .ADDRW(ADDRW)
    ) pcie4_sync_fifo_inst (
   .clk(clk),
   .rst_n(reset_n),
   .load(1'b0),
   .din(fifo_in),
   .dout(fifo_out[WIDTH-1:0]),
   .wr_en(wr_en),
   .rd_en(rd_en),
   .full(cfull),
   .afull(afull),
   .empty(cempty),
   .aempty(aempty),
   .data_count(data_count)
   );    


    assign fifo_in = {((move_to_fts) ? 1'b1 : rx_elec_idle_in), rx_phy_status_in, rx_status_in, rx_valid_in, ((wr_en & com1_found) ? {rx_kchar_in[0], save_upper_kchar_ff} : rx_kchar_in), ((wr_en & com1_found) ? {rx_data_in[7:0], save_upper_byte_ff} : rx_data_in)};
    assign rx_data_out = (rx_l0s_en_ff & rd_en_ff) ? (com_w_skp_found_ff ? fifo_out[31:0] : 'b0) : rx_data_in;
    assign rx_kchar_out = (rx_l0s_en_ff & rd_en_ff) ? fifo_out[33:32] : rx_kchar_in;
    assign rx_valid_out = (rx_l0s_en_ff & rd_en_ff) ? fifo_out[34] : rx_valid_in; 
    assign rx_status_out = (&cfg_rx_pm_state) ? 'b0 : (rx_l0s_en_ff & rd_en_ff) ? fifo_out[37:35] : rx_status_in;
    assign rx_phy_status_out = (rx_l0s_en_ff & rd_en_ff) ? fifo_out[38] : rx_phy_status_in;
    assign rx_elec_idle_out = (&cfg_rx_pm_state) ? 1'b0 : (rx_l0s_en_ff & rd_en_ff) ? fifo_out[39] : rx_elec_idle_in;
    //assign rx_elec_idle_out = (&cfg_rx_pm_state) ? 1'b0 : (rx_l0s_en_ff & rd_en_ff) ? fifo_out[39] : rx_elec_idle_in_eff;
    //
    wire fifo_in_ei = fifo_in[39];

    `XPREG(clk, reset_n, rx_l0s_en_ff, rx_l0s_en, 1'b0)
    `XPREG(clk, reset_n, com_w_skp_found_ff, com_w_skp_found, 1'b0)
    `XPREG(clk, reset_n, com_upper_byte_ff, com_upper_byte, 1'b0)
    `XPREG(clk, reset_n, com_upper_byte_found_ff, com_upper_byte_found, 1'b0)
    `XPREG(clk, reset_n, com_w_eios_found_ff, com_w_eios_found, 1'b0)
    `XPREG(clk, reset_n, com1_found_ff, com1_found, 1'b0)
    `XPREG(clk, reset_n, save_upper_kchar_ff, rx_kchar_in[1], 1'b0)
    `XPREG(clk, reset_n, save_upper_byte_ff, rx_data_in[15:8], 8'b0)
    `XPREG(clk, reset_n, rd_en_ff, rd_en, 1'b0)
    `XPREG(clk, reset_n, cnt_ff, cnt_nxt, 16'b0)
    `XPREG(clk, reset_n, release_ei_ff, release_ei_nxt, 5'b0)

endmodule
    

