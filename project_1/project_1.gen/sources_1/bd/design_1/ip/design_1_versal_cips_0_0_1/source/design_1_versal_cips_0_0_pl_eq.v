
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
// File       : design_1_versal_cips_0_0_pl_eq.v
// Version    : 1.0 
//-----------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------
`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)

module design_1_versal_cips_0_0_pl_eq #(
  
    parameter             TCQ = 100
   ,parameter             IMPL_TARGET = "SOFT"
   ,parameter             PL_UPSTREAM_FACING="TRUE"
  ) (
   
    input  wire           clk_i
   ,input  wire           reset_i
   ,input  wire           link_down_reset_i

   ,input  wire [5:0]     cfg_ltssm_state_i
   ,input  wire           pl_redo_eq_i
   ,input  wire           pl_redo_eq_speed_i
   ,output wire           pl_eq_mismatch_o
   ,output wire           pl_redo_eq_pending_o
   
   ,output wire           pl_gen34_redo_equalization_o
   ,output wire           pl_gen34_redo_eq_speed_o
   ,input  wire           pl_gen34_eq_mismatch_i
   );

   wire attr_pl_upstream_facing = (PL_UPSTREAM_FACING == "TRUE") ? 1'b1 : 1'b0 ;

    design_1_versal_cips_0_0_pl_eq_attr # (

      .TCQ(TCQ)
      ,.IMPL_TARGET(IMPL_TARGET)

    ) pcie_4_0_pl_eq_inst (

      .clk_i(clk_i)
      ,.reset_i(reset_i)
      ,.link_down_reset_i(link_down_reset_i)
      
      ,.cfg_ltssm_state_i(cfg_ltssm_state_i[5:0])
      ,.pl_redo_eq_i(pl_redo_eq_i)
      ,.pl_redo_eq_speed_i(pl_redo_eq_speed_i)
      ,.pl_eq_mismatch_o(pl_eq_mismatch_o)
      ,.pl_redo_eq_pending_o(pl_redo_eq_pending_o)
      ,.pl_gen34_redo_equalization_o(pl_gen34_redo_equalization_o)
      ,.pl_gen34_redo_eq_speed_o(pl_gen34_redo_eq_speed_o)
      ,.pl_gen34_eq_mismatch_i(pl_gen34_eq_mismatch_i)
      ,.attr_pl_upstream_facing_i(attr_pl_upstream_facing)

    );


endmodule // pcie_4_0_pl_eq
