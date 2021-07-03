
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
// File       : design_1_versal_cips_0_0_init_ctrl.v
// Version    : 1.0 
//-----------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------
`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_versal_cips_0_0_init_ctrl 
 # (
     parameter           TCQ = 100
   , parameter           PL_UPSTREAM_FACING = "TRUE"
   , parameter           IS_SWITCH_PORT = "FALSE"
   , parameter           CRM_CORE_CLK_FREQ_500="TRUE"
   , parameter [2:0]     CRM_USER_CLK_FREQ=3'b10
)(
  input  wire         core_clk_i,
  input  wire         user_clk_i,
  input  wire         pipe_clk_i,
  input  wire         phy_rdy_i,
  input  wire         cfg_hot_reset_in_i,
  input  wire         cfg_phy_link_down_i,
  output reg          cfg_phy_link_down_user_clk_o,
  output wire   [2:0] state_o,

  output reg          reset_n_o,
  output reg          reset_n_n_o,
  output reg          core_reset_n_o,
  output wire         pipe_reset_n_o,
  output wire          mgmt_reset_n_o,
  output wire          mgmt_sticky_reset_n_o,

  output wire         user_clk_en_o,
  output wire         user_clkgate_en_o,
  output wire         pipe_clkgate_en_o
  );

   localparam STATE_RESET   = 3'b000;
   localparam STATE_RESET2  = 3'b010;
   localparam STATE_MGMT_RESET_DEASSERT = 3'b001;
   localparam STATE_PHY_RDY = 3'b100;
   localparam STATE_RESET_DEASSERT = 3'b101;
   localparam STATE_RESET_DEASSERT2 = 3'b110;
   
   localparam CLK_QUARTER0  = 4'b0_000; // core=250, user=62.5, user2 = 62.5 
   localparam CLK_HALF0     = 4'b0_001; // core=250, user=125,  user2 = 125
   localparam CLK_EQUAL0    = 4'b0_010; // core=250, user=250,  user2 = 250
   localparam CLK_INVALID0  = 4'b0_011; // reserved
   localparam CLK_INVALID1  = 4'b0_100; // reserved
   localparam CLK_INVALID2  = 4'b0_101; // reserved
   localparam CLK_INVALID3  = 4'b0_110; // reserved
   localparam CLK_INVALID4  = 4'b0_111; // reserved
   localparam CLK_INVALID5  = 4'b1_000; // core=500, user=62.5, user2 = 62.5
   localparam CLK_QUARTER1  = 4'b1_001; // core=500, user=125,  user2 = 125
   localparam CLK_HALF1     = 4'b1_010; // core=500, user=250,  user2 = 250
   localparam CLK_HALF2     = 4'b1_011; // core=500, user=250,  user2 = 500
   localparam CLK_EQUAL1    = 4'b1_100; // core=500, user=500,  user2 = 500
   localparam CLK_INVALID6  = 4'b1_101; // reserved
   localparam CLK_INVALID7  = 4'b1_110; // reserved
   localparam CLK_INVALID8  = 4'b1_111; // reserved

   reg           [2:0] reg_state;
   reg           [2:0] reg_next_state;
(* ASYNC_REG = "true", max_fanout = 1000, SHREG_EXTRACT = "NO" *) reg [1:0] reg_phy_rdy_uc = 2'b11; 
(* ASYNC_REG = "true", max_fanout = 1000, SHREG_EXTRACT = "NO" *) reg [1:0] reg_phy_rdy_cc = 2'b11; 
(* ASYNC_REG = "true", max_fanout = 1000, SHREG_EXTRACT = "NO" *) reg [1:0] reg_phy_rdy_pc = 2'b11; 
   reg           [1:0] reg_cold_reset = 2'b11;
   reg                 reg_reset_n_o;
   reg                 reg_pipe_reset_n_o;
   reg                 reg_mgmt_reset_n_o;
   reg                 reg_mgmt_sticky_reset_n_o;
   reg           [1:0] reg_reset_timer;
   wire          [2:0] state_w;
   wire          [2:0] next_state_w;
   reg                phy_rdy_uc;
   reg                phy_rdy_cc;
   reg                phy_rdy_pc;
   reg                cold_reset_n;
   wire          [1:0] reset_timer_w;
   wire                attr_pl_upstream_facing;
   wire                attr_is_switch_port;

   wire 	       attr_crm_core_clk_freq_500;
   wire [2:0] 	       attr_crm_user_clk_freq;
   reg [1:0] 	       counter;
   reg [3:0]           hot_reset_timer;
   reg [3:0]           reg_hot_reset_timer = 4'b0000;
   wire [3:0]          hot_reset_timer_w;

   
   (* keep = "true", max_fanout = 1000 *) reg 		       user_clk_en_int;
   
   reg 		       user_clkgate_en_int;
   
      
   assign attr_crm_core_clk_freq_500 = (CRM_CORE_CLK_FREQ_500 == "TRUE") ? 1'b1 : 1'b0;
   assign attr_crm_user_clk_freq = CRM_USER_CLK_FREQ[2:0];
				       
   wire [3:0]  coreuser_clk_ratio  = {attr_crm_core_clk_freq_500, attr_crm_user_clk_freq};

  // common values for {attr_crm_core_clk_freq, attr_crm_user_clk_freq}
  // attr_crm_core_clk_freq[0] == 1 ; 250Mhz
  // attr_crm_core_clk_freq[1] == 1 ; 500Mhz
  // attr_crm_core_clk_freq[2] == 1 ; 1000Mhz for PCIEA, reserved for PCIEB
  // attr_crm_core_clk_freq[3] ; reserved
  // attr_crm_core_clk_freq[4] ; reserved

  // attr_crm_user_clk_freq[2:0] defines user_clk/user_clk2 frequency
  // 000 = 62.5/62.5 when crm_core_clk_freq[2:0] == 010 || 001
  // 001 = 125/125   when crm_core_clk_freq[2:0] == 010 || 001
  // 010 = 250/250   when crm_core_clk_freq[2:0] == 010 || 001
  //       500/500   when crm_core_clk_freq[2:0] == 100
  // 011 = 250/500   when crm_core_clk_freq[1] == 1
  //       reserved  when crm_core_clk_freq[0] == 1
  //       reserved  when crm_core_clk_freq[2] == 1
  // 100 = 500/500   when crm_core_clk_freq[1] == 1 (core=500Mhz)
  //       reserved  when crm_core_clk_freq[0] == 1 (core=250Mhz)
  //       reserved  when crm_core_clk_freq[2] == 1 (core=1000Mhz)
  //
  //
  //---------------------------------------------------
  // ratios: c:u(:u2)
  // 0/0 250:62.5(62.5)  -> 1/4(/4) CLK_QUARTER0       // user2_eq_core == 0
  // 0/1 250:125 (125)   -> 1/2(/2) CLK_HALF0          // user2_eq_core == 0
  // 0/2 250:250 (250)   -> 1/1(/1) CLK_EQUAL0         // user2_eq_core == 0
  // 0/3 250:250 (500)   -> 1/1(x2) CLK_INVALID0/EQUAL // user2_eq_core == 0
  // 0/4 250:500 (500)   -> 1/1(x2) CLK_INVALID1/EQUAL // user2_eq_core == 0
  // 0/5                            CLK_INVALID2/EQUAL // user2_eq_core == 0
  // 0/6                            CLK_INVALID3/EQUAL // user2_eq_core == 0
  // 0/7                            CLK_INVALID4/EQUAL // user2_eq_core == 0
  // 1/0 500:62.5(62.5)  -> 1/8(/8) CLK_INVALID5/EQUAL // user2_eq_core == 0
  // 1/1 500:125 (125)   -> 1/4(/4) CLK_QUARTER1       // user2_eq_core == 0
  // 1/2 500:250 (250)   -> 1/2(/2) CLK_HALF1          // user2_eq_core == 0
  // 1/3 500:250 (500)   -> 1/2(/1) CLK_HALF2          // user2_eq_core == 1
  // 1/4 500:500 (500)   -> 1/1(/1) CLK_EQUAL1         // user2_eq_core == 0
  // 1/5                            CLK_INVALID6/EQUAL // user2_eq_core == 0
  // 1/6                            CLK_INVALID7/EQUAL // user2_eq_core == 0
  // 1/7                            CLK_INVALID8/EQUAL // user2_eq_core == 0
   
xpm_cdc_sync_rst #(
  .DEST_SYNC_FF          (2)
) mgmt_rst_n_0_cc_cdc (
  .src_rst              (mgmt_reset_n_o),
  .dest_rst             (mgmt_reset_n_core_clk_o),
  .dest_clk             (core_clk_i)
);

  always @(posedge core_clk_i or negedge mgmt_reset_n_core_clk_o) begin

    // hold the count during power-on reset
    if (!mgmt_reset_n_core_clk_o) begin
      user_clkgate_en_int  <= #TCQ 1'b0;
      user_clk_en_int      <= #TCQ 1'b0;
      counter              <= #TCQ 2'h0;
    // normal free-running operation
    end else begin
      // counter always increments and rolls over, no matter the ratio
      counter <= #TCQ counter + 1;

      // Choose the valid based on the table above
      case (coreuser_clk_ratio)
        CLK_HALF0, CLK_HALF1, CLK_HALF2: begin
	   // one core_clk cycle advanced for _e4 input
          user_clkgate_en_int <= #TCQ counter[0];
          user_clk_en_int     <= #TCQ !counter[0];
        end
        CLK_QUARTER0, CLK_QUARTER1: begin
	   // one core_clk cycle advanced for _e4 input 
          user_clkgate_en_int <= #TCQ (counter == 2'h1);
          user_clk_en_int     <= #TCQ (counter == 2'h2);
        end
        default: begin  // and CLK_EQUAL*,CLK_INVALID* case which ties off to high
          user_clkgate_en_int <= #TCQ 1'b1;
          user_clk_en_int     <= #TCQ 1'b1;
        end
      endcase

    end

  end
  // }}} user_clk_en generation
 
  assign attr_pl_upstream_facing = (PL_UPSTREAM_FACING == "TRUE") ? 1'b1 : 1'b0 ;
  assign attr_is_switch_port     = (IS_SWITCH_PORT == "TRUE") ? 1'b1 : 1'b0 ;

  // Generate PHY Ready in user_clk domain
  always @(posedge user_clk_i or negedge phy_rdy_i)
  begin
    if (!phy_rdy_i) begin
      reg_phy_rdy_uc[1:0] <= #TCQ 2'b11;
      phy_rdy_uc       <= #TCQ 1'b0;
    end else begin
      reg_phy_rdy_uc[1:0] <= #TCQ {reg_phy_rdy_uc[0], 1'b0};
      phy_rdy_uc       <= #TCQ !reg_phy_rdy_uc[1];
    end
  end

  // Generate PHY Ready in core_clk domain
  always @(posedge core_clk_i or negedge phy_rdy_i)
  begin
    if (!phy_rdy_i) begin
      reg_phy_rdy_cc[1:0] <= #TCQ 2'b11;
      phy_rdy_cc       <= #TCQ 1'b0;
    end else begin
      reg_phy_rdy_cc[1:0] <= #TCQ {reg_phy_rdy_cc[0], 1'b0};
      phy_rdy_cc       <= #TCQ !reg_phy_rdy_cc[1];
    end
  end

  // Generate PHY Ready in pipe_clk domain
  always @(posedge pipe_clk_i or negedge phy_rdy_i)
  begin
    if (!phy_rdy_i) begin
      reg_phy_rdy_pc[1:0] <= #TCQ 2'b11;
      phy_rdy_pc       <= #TCQ 1'b0;
    end else begin
      reg_phy_rdy_pc[1:0] <= #TCQ {reg_phy_rdy_pc[0], 1'b0};
      phy_rdy_pc       <= #TCQ !reg_phy_rdy_pc[1];
    end
  end


   // Generate Cold reset

  always @(posedge user_clk_i)
  begin
    if (!phy_rdy_uc && reg_cold_reset[1] ) begin
      reg_cold_reset[1:0] <= #TCQ 2'b11;
      cold_reset_n        <= #TCQ 1'b0;
    end else begin
      reg_cold_reset[1:0] <= #TCQ {reg_cold_reset[0], 1'b0};
      cold_reset_n        <= #TCQ !reg_cold_reset[1];
    end
  end

  
  // Reset Timer
  
  always @(posedge user_clk_i or negedge phy_rdy_i)
  begin
    if (!phy_rdy_i)
        reg_reset_timer <= #TCQ 2'b00;
    else if ((state_w == STATE_MGMT_RESET_DEASSERT) && (reset_timer_w != 2'b11))
        reg_reset_timer <= #TCQ reset_timer_w + 1'b1;
    else
        reg_reset_timer <= #TCQ reset_timer_w;    
  end
  
  
  // Reset SM
  
  always @(posedge user_clk_i or negedge cold_reset_n)
  begin
    if (!cold_reset_n)
      reg_state <= #TCQ STATE_RESET;
    else
      reg_state <= #TCQ reg_next_state;
  end

  always @(posedge user_clk_i or negedge cold_reset_n)
  begin
    if (!cold_reset_n)
      hot_reset_timer <= #TCQ 4'b0;
    else
      hot_reset_timer <= #TCQ reg_hot_reset_timer;
  end
  
  always @* begin

    if (attr_pl_upstream_facing) begin // Design is a Upstream Port 

      reg_next_state = STATE_RESET;
      reg_mgmt_reset_n_o = 1'b1;
      reg_mgmt_sticky_reset_n_o = 1'b1;
      reg_reset_n_o = 1'b0;
      reg_pipe_reset_n_o = 1'b0;
      case (state_w)
        STATE_RESET:
        begin
          reg_mgmt_reset_n_o = 1'b0;
          reg_mgmt_sticky_reset_n_o = 1'b0;
          if (phy_rdy_uc)
            reg_next_state = STATE_MGMT_RESET_DEASSERT;
          else
            reg_next_state = STATE_RESET;
          end
        STATE_RESET2:
        begin
          reg_mgmt_reset_n_o = 1'b0;
          reg_reset_n_o = 1'b1;
          reg_pipe_reset_n_o = 1'b1;
          if (phy_rdy_uc)
            reg_next_state = STATE_MGMT_RESET_DEASSERT;
          else
            reg_next_state = STATE_RESET2;
          end
        STATE_MGMT_RESET_DEASSERT:
        begin
          reg_reset_n_o = 1'b1;
          reg_pipe_reset_n_o = 1'b1;
          if (reset_timer_w == 2'b11)
          reg_next_state = STATE_RESET_DEASSERT;
          else
          reg_next_state = STATE_MGMT_RESET_DEASSERT;
        end
        STATE_RESET_DEASSERT:
        begin
          reg_reset_n_o = 1'b1;
          reg_pipe_reset_n_o = 1'b1;
          if (!phy_rdy_uc) 
            reg_next_state = STATE_RESET;
          else if (attr_is_switch_port && cfg_hot_reset_in_i)
            reg_next_state = STATE_RESET2;
          else
            reg_next_state = STATE_RESET_DEASSERT;
            end
      endcase

    end else  begin // Design is a Downstream Port
      
      reg_next_state = STATE_RESET;
      reg_mgmt_reset_n_o = 1'b1;
      reg_mgmt_sticky_reset_n_o = 1'b1;
      reg_reset_n_o = 1'b0;
      reg_pipe_reset_n_o = 1'b0;
      reg_hot_reset_timer = hot_reset_timer_w;
      case (state_w)
        STATE_RESET:
        begin
          reg_mgmt_reset_n_o = 1'b0;
          reg_mgmt_sticky_reset_n_o = 1'b0;
          if (phy_rdy_uc)
            reg_next_state = STATE_MGMT_RESET_DEASSERT;
          else
            reg_next_state = STATE_RESET;
        end
        STATE_MGMT_RESET_DEASSERT:
        begin
          if (reset_timer_w == 2'b11)
            reg_next_state = STATE_PHY_RDY;
          else
            reg_next_state = STATE_MGMT_RESET_DEASSERT;
          end
        STATE_PHY_RDY:
        begin
          if (phy_rdy_uc)
            reg_next_state = STATE_RESET_DEASSERT;
          else
            reg_next_state = STATE_PHY_RDY;
        end
        STATE_RESET_DEASSERT:
        begin
          reg_reset_n_o = 1'b1;
          reg_pipe_reset_n_o = 1'b1;
          if (!phy_rdy_uc)
            reg_next_state = STATE_PHY_RDY;
          else if (attr_is_switch_port && cfg_hot_reset_in_i) begin  // Downstream Port Only
            reg_next_state = STATE_RESET_DEASSERT2;
            reg_mgmt_reset_n_o = 1'b0;  
          end else
            reg_next_state = STATE_RESET_DEASSERT;
        end
        STATE_RESET_DEASSERT2:
        begin
          reg_reset_n_o = 1'b1;
          reg_pipe_reset_n_o = 1'b1;
          reg_hot_reset_timer = hot_reset_timer_w + 1;
          if ((hot_reset_timer_w == 4'b0) && cfg_phy_link_down_user_clk_o)
          begin
            reg_mgmt_reset_n_o = 1'b0;  
            reg_next_state = STATE_RESET_DEASSERT;
          end else 
            reg_next_state = STATE_RESET_DEASSERT2;
        end
      endcase
     
    end

  end // 

  // Reset registers pipeline



xpm_cdc_async_rst #(
  .DEST_SYNC_FF          (2),
  .RST_ACTIVE_HIGH       (0)
) mgmt_rst_n_0_cdc (
  .src_arst              (reg_mgmt_reset_n_o),
  .dest_arst             (mgmt_reset_n_o),
  .dest_clk              (user_clk_i)
);

xpm_cdc_async_rst #(
  .DEST_SYNC_FF          (2),
  .RST_ACTIVE_HIGH       (0)
) mgmt_sticky_rst_n_0_cdc (
  .src_arst              (reg_mgmt_sticky_reset_n_o),
  .dest_arst             (mgmt_sticky_reset_n_o),
  .dest_clk              (user_clk_i)
);

  wire reg_reset_n_2;
xpm_cdc_async_rst #(
  .DEST_SYNC_FF          (2),
  .RST_ACTIVE_HIGH       (0)
) rst_n_0_cdc (
  .src_arst              (reg_reset_n_o),
  .dest_arst             (reg_reset_n_2),
  .dest_clk              (user_clk_i)
);

  always @(posedge user_clk_i or negedge phy_rdy_uc)
  begin
    if (!phy_rdy_uc) begin
      reset_n_o             <= #TCQ 1'b0;
      reset_n_n_o           <= #TCQ 1'b0;
    end else begin
      reset_n_o             <= #TCQ reg_reset_n_2;
      reset_n_n_o           <= #TCQ !reg_reset_n_2;
    end
  end
   // Time reset_n_o to the core_clk domain
  wire reset_n_core_clk_ff;
  reg reset_n_core_clk_n_ff;

xpm_cdc_sync_rst #(
  .DEST_SYNC_FF          (2)
) core_rst_n_0_cdc (
  .src_rst              (reset_n_o),
  .dest_rst             (reset_n_core_clk_ff),
  .dest_clk             (core_clk_i)
);

  always @(posedge core_clk_i) begin
      reset_n_core_clk_n_ff  <= #TCQ !reset_n_core_clk_ff;
      core_reset_n_o         <= #TCQ reset_n_core_clk_n_ff;
  end

  assign state_w = reg_state;
  assign next_state_w = reg_next_state;
  assign pipe_reset_n_o = reg_pipe_reset_n_o;
  assign state_o = reg_state;
  assign reset_timer_w = reg_reset_timer;

  assign user_clkgate_en_o  = user_clkgate_en_int;

  assign user_clk_en_o  = user_clk_en_int;

  assign hot_reset_timer_w = hot_reset_timer;


  // Retime cfg_phy_link_down to user clock

  always @(posedge user_clk_i or negedge phy_rdy_uc)
  begin
    if (!phy_rdy_uc)
      cfg_phy_link_down_user_clk_o <= #TCQ 1'b1;
    else
      cfg_phy_link_down_user_clk_o <= #TCQ cfg_phy_link_down_i;
  end

  // pipe_clk_en for clock gating (IMPL_TARGET=HARD) generation
  reg [2:0] core_cnt;
  wire [2:0] c2p_core_cnt;
  wire [2:0] c2p2c_core_cnt;
  reg [2:0] c2p2c_core_cnt_d;
  reg       pipe_pulse;

  // 1. core_clk domain counter
  always @(posedge core_clk_i or negedge phy_rdy_cc)
    if (!phy_rdy_cc)
      core_cnt <= 3'b000;
    else
      core_cnt <= core_cnt + 1'b1;

xpm_cdc_gray # (
  .DEST_SYNC_FF (2),
  .INIT_SYNC_FF(0),
  .REG_OUTPUT (0),
  .SIM_ASSERT_CHK (0),
  .SIM_LOSSLESS_GRAY_CHK (0),
  .WIDTH (3)
)
xpm_cdc_gray_c2p_inst (
  .dest_out_bin ( c2p_core_cnt ),
  .dest_clk     ( pipe_clk_i ),
  .src_clk      ( core_clk_i ),
  .src_in_bin   ( core_cnt )
);

//  // 2. transfer core_clk domain count to pipe_clk (pipe_clk domain)
//  always @(posedge pipe_clk_i or negedge phy_rdy_pc)
//    if (!phy_rdy_pc)
//      c2p_core_cnt <= 3'b000;
//    else
//      c2p_core_cnt <= core_cnt;

xpm_cdc_gray # (
  .DEST_SYNC_FF (2),
  .INIT_SYNC_FF(0),
  .REG_OUTPUT (0),
  .SIM_ASSERT_CHK (0),
  .SIM_LOSSLESS_GRAY_CHK (0),
  .WIDTH (3)
)
xpm_cdc_gray_c2p2c_inst (
  .dest_out_bin ( c2p2c_core_cnt ),
  .dest_clk     ( core_clk_i ),
  .src_clk      ( pipe_clk_i ),
  .src_in_bin   ( c2p_core_cnt )
);

//  // 3. transfer pipe_clk domain count to core_clk (core_clk domain)
//  always @(posedge core_clk_i or negedge phy_rdy_cc)
//    if (!phy_rdy_cc)
//      c2p2c_core_cnt <= 3'b000;
//    else
//      c2p2c_core_cnt <= c2p_core_cnt;
   
  // 4. delayed version (core_clk domain)
  always @(posedge core_clk_i or negedge phy_rdy_cc)
    if (!phy_rdy_cc)
      c2p2c_core_cnt_d <= 3'b000;
    else
      c2p2c_core_cnt_d <= c2p2c_core_cnt;

  // 5. Look for changes in the count (all core_clk domain)
  always @(posedge core_clk_i or negedge phy_rdy_cc)
    if (!phy_rdy_cc)
      pipe_pulse <= 1'b0;
    else
      pipe_pulse <= (c2p2c_core_cnt != c2p2c_core_cnt_d);

  assign pipe_clkgate_en_o  = pipe_pulse;

endmodule
