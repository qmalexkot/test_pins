
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
// File       : design_1_versal_cips_0_0_xpipeif.v
// Version    : 1.0 
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps


`define XPREG(clk, reset_n, q,d,rstval)          \
    always @(posedge clk)                        \
    begin                                        \
     if (reset_n == 1'b0)                        \
         q <= #(TCQ) rstval;                     \
     else                                        \
         q <= #(TCQ)  d;                         \
     end

//--------------------------------------------------------------------------------------------------
//  XPIPE IF
//--------------------------------------------------------------------------------------------------
module design_1_versal_cips_0_0_xpipeif # 
(
    //--------------------------------------------------------------------------
    //  Parameters
    //--------------------------------------------------------------------------
    parameter                          TCQ         = 1,
    parameter                          IMPL_TARGET = "SOFT",
    parameter integer                  PHY_LANE    = 16
)                                                            
(                                         

    //-----------------------------------------------------------------------
    // Memory Cell Interface
    //-----------------------------------------------------------------------

    input wire    [5:0]                     attr_pl_eq_tx_precur_0_i,
    input wire    [5:0]                     attr_pl_eq_tx_precur_1_i,
    input wire    [5:0]                     attr_pl_eq_tx_precur_2_i,
    input wire    [5:0]                     attr_pl_eq_tx_precur_3_i,
    input wire    [5:0]                     attr_pl_eq_tx_precur_4_i,
    input wire    [5:0]                     attr_pl_eq_tx_precur_5_i,
    input wire    [5:0]                     attr_pl_eq_tx_precur_6_i,
    input wire    [5:0]                     attr_pl_eq_tx_precur_7_i,
    input wire    [5:0]                     attr_pl_eq_tx_precur_8_i,
    input wire    [5:0]                     attr_pl_eq_tx_precur_9_i,
    input wire    [5:0]                     attr_pl_eq_tx_precur_A_i,
    input wire    [5:0]                     attr_pl_eq_tx_precur_B_i,
    input wire    [5:0]                     attr_pl_eq_tx_precur_C_i,
    input wire    [5:0]                     attr_pl_eq_tx_precur_D_i,
    input wire    [5:0]                     attr_pl_eq_tx_precur_E_i,
    input wire    [5:0]                     attr_pl_eq_tx_precur_F_i,

    input wire    [6:0]                     attr_pl_eq_tx_maincur_0_i,
    input wire    [6:0]                     attr_pl_eq_tx_maincur_1_i,
    input wire    [6:0]                     attr_pl_eq_tx_maincur_2_i,
    input wire    [6:0]                     attr_pl_eq_tx_maincur_3_i,
    input wire    [6:0]                     attr_pl_eq_tx_maincur_4_i,
    input wire    [6:0]                     attr_pl_eq_tx_maincur_5_i,
    input wire    [6:0]                     attr_pl_eq_tx_maincur_6_i,
    input wire    [6:0]                     attr_pl_eq_tx_maincur_7_i,
    input wire    [6:0]                     attr_pl_eq_tx_maincur_8_i,
    input wire    [6:0]                     attr_pl_eq_tx_maincur_9_i,
    input wire    [6:0]                     attr_pl_eq_tx_maincur_A_i,
    input wire    [6:0]                     attr_pl_eq_tx_maincur_B_i,
    input wire    [6:0]                     attr_pl_eq_tx_maincur_C_i,
    input wire    [6:0]                     attr_pl_eq_tx_maincur_D_i,
    input wire    [6:0]                     attr_pl_eq_tx_maincur_E_i,
    input wire    [6:0]                     attr_pl_eq_tx_maincur_F_i,

    input wire    [5:0]                     attr_pl_eq_tx_postcur_0_i,
    input wire    [5:0]                     attr_pl_eq_tx_postcur_1_i,
    input wire    [5:0]                     attr_pl_eq_tx_postcur_2_i,
    input wire    [5:0]                     attr_pl_eq_tx_postcur_3_i,
    input wire    [5:0]                     attr_pl_eq_tx_postcur_4_i,
    input wire    [5:0]                     attr_pl_eq_tx_postcur_5_i,
    input wire    [5:0]                     attr_pl_eq_tx_postcur_6_i,
    input wire    [5:0]                     attr_pl_eq_tx_postcur_7_i,
    input wire    [5:0]                     attr_pl_eq_tx_postcur_8_i,
    input wire    [5:0]                     attr_pl_eq_tx_postcur_9_i,
    input wire    [5:0]                     attr_pl_eq_tx_postcur_A_i,
    input wire    [5:0]                     attr_pl_eq_tx_postcur_B_i,
    input wire    [5:0]                     attr_pl_eq_tx_postcur_C_i,
    input wire    [5:0]                     attr_pl_eq_tx_postcur_D_i,
    input wire    [5:0]                     attr_pl_eq_tx_postcur_E_i,
    input wire    [5:0]                     attr_pl_eq_tx_postcur_F_i,

    input wire    [15:0]                    attr_pl_eq_gt_txpreset_i, //Default Tx Preset
    input wire    [15:0]                    attr_pl_eq_lp_txpreset_i, //Main Tx Preset Proposal
    input wire    [15:0]                    attr_pl_eq_lp_txpreset2_i,//Backup Tx Preset Proposal
    input wire    [21:0]                    attr_pl_eq_rx_adapt_timer_i,
    input wire    [21:0]                    attr_pl_eq_rx_adapt_timer_sim_i,
    input wire                              attr_pl_eq_rx_adapt_sim_enable_i,

    //-----------------------------------------------------------------------
    // Clock and Reset Interface
    //-----------------------------------------------------------------------

    input wire                              pipe_clk_i,
    input wire                              pipe_reset_pipe_n_i,

    //--------------------------------------------------------------------------   
    //  TX Equalization Ports
    //--------------------------------------------------------------------------  
    input wire      [(PHY_LANE*2)-1:0]      phy_txeq_ctrl_i,      
    input wire      [(PHY_LANE*4)-1:0]      phy_txeq_preset_i,       
    input wire      [(PHY_LANE*6)-1:0]      phy_txeq_coeff_i,                                                            
    output reg     [(PHY_LANE*18)-1:0]     phy_txeq_new_coeff_o,        
    output reg     [PHY_LANE-1:0]          phy_txeq_done_o,         

    //--------------------------------------------------------------------------
    //  RX Equalization Ports
    //--------------------------------------------------------------------------                                                
    input wire      [(PHY_LANE*2)-1:0]      phy_rxeq_ctrl_i,     
    input wire      [(PHY_LANE*3)-1:0]      phy_rxeq_preset_i,  
    input wire      [(PHY_LANE*4)-1:0]      phy_rxeq_txpreset_i,      
    input wire      [(PHY_LANE*6)-1:0]      phy_rxeq_lffs_i,                                                         

    output reg     [PHY_LANE-1:0]          phy_rxeq_lffs_sel_o,    
    output reg     [(PHY_LANE*18)-1:0]     phy_rxeq_new_txcoeff_o,   
    output reg     [PHY_LANE-1:0]          phy_rxeq_adapt_done_o,     
    output reg     [PHY_LANE-1:0]          phy_rxeq_done_o,         

    //--------------------------------------------------------------------------
    // GT Tx FIR interface
    //--------------------------------------------------------------------------

    output reg     [(PHY_LANE*5)-1:0]      pipe_txeq_precursor_o,
    output reg     [(PHY_LANE*7)-1:0]      pipe_txeq_maincursor_o, 
    output reg     [(PHY_LANE*5)-1:0]      pipe_txeq_postcursor_o 
    
);


    //--------------------------------------------------------------------------
    //  TX Equalization (Gen3/Gen4)
    //-------------------------------------------------------------------------- 
    wire        [(PHY_LANE*18)-1:0]     txeq_new_coeff; 
    wire        [PHY_LANE-1:0]          txeq_done;  
    
    //--------------------------------------------------------------------------
    //  RX Equalization
    //-------------------------------------------------------------------------- 
    wire        [PHY_LANE-1:0]          rxeq_lffs_sel;   
    wire        [(PHY_LANE*18)-1:0]     rxeq_new_txcoeff;    
    wire        [PHY_LANE-1:0]          rxeq_adapt_done;     
    wire        [PHY_LANE-1:0]          rxeq_done;   


    wire        [(PHY_LANE*5)-1:0]      txeq_precursor;
    wire        [(PHY_LANE*7)-1:0]      txeq_maincursor; 
    wire        [(PHY_LANE*5)-1:0]      txeq_postcursor; 
    
    reg         [(PHY_LANE*2)-1:0]      phy_txeq_ctrl_reg;      
    reg         [(PHY_LANE*4)-1:0]      phy_txeq_preset_reg;     
    reg         [(PHY_LANE*6)-1:0]      phy_txeq_coeff_reg;      
    reg         [(PHY_LANE*2)-1:0]      phy_rxeq_ctrl_reg;     
    reg         [(PHY_LANE*3)-1:0]      phy_rxeq_preset_reg;  
    reg         [(PHY_LANE*4)-1:0]      phy_rxeq_txpreset_reg;   
    reg         [(PHY_LANE*6)-1:0]      phy_rxeq_lffs_reg;       
                                                         
//----------------------------------------------------------------------------
//  Generate PHY Lane - Begin
//---------------------------------------------------------------------------
genvar i;   
    
generate for (i=0; i<PHY_LANE; i=i+1) 

    begin : phy_lane
    
    //-----------------------------------------------------------------------
    //  PHY TX Equalization
    //-----------------------------------------------------------------------
    design_1_versal_cips_0_0_xpipeif_phy_txeq #
    (
      .TCQ( TCQ ),
      .IMPL_TARGET ( IMPL_TARGET )
    )
    phy_txeq_i
    (
        //---------------------------------------------------------------------- 
        //  Input Ports
        //----------------------------------------------------------------------  
	      .attr_pl_eq_gt_txpreset_i(attr_pl_eq_gt_txpreset_i),
        .attr_pl_eq_tx_precur_0_i(attr_pl_eq_tx_precur_0_i),
        .attr_pl_eq_tx_precur_1_i(attr_pl_eq_tx_precur_1_i),
        .attr_pl_eq_tx_precur_2_i(attr_pl_eq_tx_precur_2_i),
        .attr_pl_eq_tx_precur_3_i(attr_pl_eq_tx_precur_3_i),
        .attr_pl_eq_tx_precur_4_i(attr_pl_eq_tx_precur_4_i),
        .attr_pl_eq_tx_precur_5_i(attr_pl_eq_tx_precur_5_i),
        .attr_pl_eq_tx_precur_6_i(attr_pl_eq_tx_precur_6_i),
        .attr_pl_eq_tx_precur_7_i(attr_pl_eq_tx_precur_7_i),
        .attr_pl_eq_tx_precur_8_i(attr_pl_eq_tx_precur_8_i),
        .attr_pl_eq_tx_precur_9_i(attr_pl_eq_tx_precur_9_i),
        .attr_pl_eq_tx_precur_A_i(attr_pl_eq_tx_precur_A_i),
        .attr_pl_eq_tx_precur_B_i(attr_pl_eq_tx_precur_B_i),
        .attr_pl_eq_tx_precur_C_i(attr_pl_eq_tx_precur_C_i),
        .attr_pl_eq_tx_precur_D_i(attr_pl_eq_tx_precur_D_i),
        .attr_pl_eq_tx_precur_E_i(attr_pl_eq_tx_precur_E_i),
        .attr_pl_eq_tx_precur_F_i(attr_pl_eq_tx_precur_F_i),
        .attr_pl_eq_tx_maincur_0_i(attr_pl_eq_tx_maincur_0_i),
        .attr_pl_eq_tx_maincur_1_i(attr_pl_eq_tx_maincur_1_i),
        .attr_pl_eq_tx_maincur_2_i(attr_pl_eq_tx_maincur_2_i),
        .attr_pl_eq_tx_maincur_3_i(attr_pl_eq_tx_maincur_3_i),
        .attr_pl_eq_tx_maincur_4_i(attr_pl_eq_tx_maincur_4_i),
        .attr_pl_eq_tx_maincur_5_i(attr_pl_eq_tx_maincur_5_i),
        .attr_pl_eq_tx_maincur_6_i(attr_pl_eq_tx_maincur_6_i),
        .attr_pl_eq_tx_maincur_7_i(attr_pl_eq_tx_maincur_7_i),
        .attr_pl_eq_tx_maincur_8_i(attr_pl_eq_tx_maincur_8_i),
        .attr_pl_eq_tx_maincur_9_i(attr_pl_eq_tx_maincur_9_i),
        .attr_pl_eq_tx_maincur_A_i(attr_pl_eq_tx_maincur_A_i),
        .attr_pl_eq_tx_maincur_B_i(attr_pl_eq_tx_maincur_B_i),
        .attr_pl_eq_tx_maincur_C_i(attr_pl_eq_tx_maincur_C_i),
        .attr_pl_eq_tx_maincur_D_i(attr_pl_eq_tx_maincur_D_i),
        .attr_pl_eq_tx_maincur_E_i(attr_pl_eq_tx_maincur_E_i),
        .attr_pl_eq_tx_maincur_F_i(attr_pl_eq_tx_maincur_F_i),
        .attr_pl_eq_tx_postcur_0_i(attr_pl_eq_tx_postcur_0_i),
        .attr_pl_eq_tx_postcur_1_i(attr_pl_eq_tx_postcur_1_i),
        .attr_pl_eq_tx_postcur_2_i(attr_pl_eq_tx_postcur_2_i),
        .attr_pl_eq_tx_postcur_3_i(attr_pl_eq_tx_postcur_3_i),
        .attr_pl_eq_tx_postcur_4_i(attr_pl_eq_tx_postcur_4_i),
        .attr_pl_eq_tx_postcur_5_i(attr_pl_eq_tx_postcur_5_i),
        .attr_pl_eq_tx_postcur_6_i(attr_pl_eq_tx_postcur_6_i),
        .attr_pl_eq_tx_postcur_7_i(attr_pl_eq_tx_postcur_7_i),
        .attr_pl_eq_tx_postcur_8_i(attr_pl_eq_tx_postcur_8_i),
        .attr_pl_eq_tx_postcur_9_i(attr_pl_eq_tx_postcur_9_i),
        .attr_pl_eq_tx_postcur_A_i(attr_pl_eq_tx_postcur_A_i),
        .attr_pl_eq_tx_postcur_B_i(attr_pl_eq_tx_postcur_B_i),
        .attr_pl_eq_tx_postcur_C_i(attr_pl_eq_tx_postcur_C_i),
        .attr_pl_eq_tx_postcur_D_i(attr_pl_eq_tx_postcur_D_i),
        .attr_pl_eq_tx_postcur_E_i(attr_pl_eq_tx_postcur_E_i),
        .attr_pl_eq_tx_postcur_F_i(attr_pl_eq_tx_postcur_F_i),
        
        .TXEQ_CLK                       (pipe_clk_i),
        .TXEQ_RST_N                     (pipe_reset_pipe_n_i),    

        .TXEQ_CTRL                      (phy_txeq_ctrl_reg[(2*i)+1:(2*i)]), 
        .TXEQ_PRESET                    (phy_txeq_preset_reg[(4*i)+3:(4*i)]), 
        .TXEQ_COEFF                     (phy_txeq_coeff_reg[(6*i)+5:(6*i)]),

        //---------------------------------------------------------------------- 
        //  Output Ports
        //----------------------------------------------------------------------   
        .TXEQ_PRECURSOR                 (txeq_precursor[(5*i)+4:(5*i)]),        
        .TXEQ_MAINCURSOR                (txeq_maincursor[(7*i)+6:(7*i)]),       
        .TXEQ_POSTCURSOR                (txeq_postcursor[(5*i)+4:(5*i)]),       
        .TXEQ_NEW_COEFF                 (txeq_new_coeff[(18*i)+17:(18*i)]),          
        .TXEQ_DONE                      (txeq_done[i])      
    );                                                   



    //--------------------------------------------------------------------------
    //  PHY RX Equalization
    //-------------------------------------------------------------------------
    design_1_versal_cips_0_0_xpipeif_phy_rxeq #
    (
        .TCQ( TCQ ),
        .IMPL_TARGET ( IMPL_TARGET )
    )
    phy_rxeq_i
    (
        //---------------------------------------------------------------------- 
        //  Input Ports
        //----------------------------------------------------------------------  
        .attr_pl_eq_lp_txpreset_i          (attr_pl_eq_lp_txpreset_i),
        .attr_pl_eq_lp_txpreset2_i         (attr_pl_eq_lp_txpreset2_i),
	      .attr_pl_eq_rx_adapt_timer_i       (attr_pl_eq_rx_adapt_timer_i),
	      .attr_pl_eq_rx_adapt_timer_sim_i   (attr_pl_eq_rx_adapt_timer_sim_i),
	      .attr_pl_eq_rx_adapt_sim_enable_i  (attr_pl_eq_rx_adapt_sim_enable_i),

        .RXEQ_CLK                       (pipe_clk_i),
        .RXEQ_RST_N                     (pipe_reset_pipe_n_i),  

        .RXEQ_CTRL                      (phy_rxeq_ctrl_reg[(2*i)+1:(2*i)]), 
        .RXEQ_PRESET                    (phy_rxeq_preset_reg[(3*i)+2:(3*i)]), 
        .RXEQ_TXPRESET                  (phy_rxeq_txpreset_reg[(4*i)+3:(4*i)]),
        .RXEQ_TXCOEFF                   (phy_txeq_coeff_reg[(6*i)+5:(6*i)]),
        .RXEQ_LFFS                      (phy_rxeq_lffs_reg[(6*i)+5:(6*i)]),

        //---------------------------------------------------------------------- 
        //  Output Ports
        //----------------------------------------------------------------------     
        .RXEQ_LFFS_SEL                  (rxeq_lffs_sel[i]),   
        .RXEQ_NEW_TXCOEFF               (rxeq_new_txcoeff[(18*i)+17:(18*i)]),    
        .RXEQ_ADAPT_DONE                (rxeq_adapt_done[i]),      
        .RXEQ_DONE                      (rxeq_done[i])      
    );

    end

endgenerate 
//------------------------------------------------------------------------------
//  Generate - End
//-----------------------------------------------------------------------------


//------------------------------------------------------------------------------
//  TX Equalization Outputs
//------------------------------------------------------------------------------
`XPREG(pipe_clk_i, pipe_reset_pipe_n_i, phy_txeq_ctrl_reg, phy_txeq_ctrl_i, 'b0)
`XPREG(pipe_clk_i, pipe_reset_pipe_n_i, phy_txeq_preset_reg, phy_txeq_preset_i, 'b0)
`XPREG(pipe_clk_i, pipe_reset_pipe_n_i, phy_txeq_coeff_reg, phy_txeq_coeff_i, 'b0)
`XPREG(pipe_clk_i, pipe_reset_pipe_n_i, phy_txeq_new_coeff_o, txeq_new_coeff, 'b0)
`XPREG(pipe_clk_i, pipe_reset_pipe_n_i, phy_txeq_done_o, txeq_done, 'b0)
//------------------------------------------------------------------------------
//  RX Equalization Outputs
//------------------------------------------------------------------------------     
`XPREG(pipe_clk_i, pipe_reset_pipe_n_i, phy_rxeq_ctrl_reg, phy_rxeq_ctrl_i, 'b0)
`XPREG(pipe_clk_i, pipe_reset_pipe_n_i, phy_rxeq_preset_reg, phy_rxeq_preset_i, 'b0)
`XPREG(pipe_clk_i, pipe_reset_pipe_n_i, phy_rxeq_txpreset_reg, phy_rxeq_txpreset_i, 'b0)
`XPREG(pipe_clk_i, pipe_reset_pipe_n_i, phy_rxeq_lffs_reg, phy_rxeq_lffs_i, 'b0)

`XPREG(pipe_clk_i, pipe_reset_pipe_n_i, phy_rxeq_lffs_sel_o, rxeq_lffs_sel, 'b0)
`XPREG(pipe_clk_i, pipe_reset_pipe_n_i, phy_rxeq_new_txcoeff_o, rxeq_new_txcoeff, 'b0)
`XPREG(pipe_clk_i, pipe_reset_pipe_n_i, phy_rxeq_adapt_done_o, rxeq_adapt_done, 'b0)
`XPREG(pipe_clk_i, pipe_reset_pipe_n_i, phy_rxeq_done_o, rxeq_done, 'b0)
//------------------------------------------------------------------------------
//  
//------------------------------------------------------------------------------     
`XPREG(pipe_clk_i, pipe_reset_pipe_n_i, pipe_txeq_precursor_o, txeq_precursor, 'b0)
`XPREG(pipe_clk_i, pipe_reset_pipe_n_i, pipe_txeq_maincursor_o, txeq_maincursor, 'b0)
`XPREG(pipe_clk_i, pipe_reset_pipe_n_i, pipe_txeq_postcursor_o, txeq_postcursor, 'b0)

endmodule
