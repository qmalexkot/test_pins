
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
// File       : design_1_versal_cips_0_0_xpipeif_phy_rxeq.v
// Version    : 1.0 
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps
//--------------------------------------------------------------------------------------------------
//  RX Equalization Module
//--------------------------------------------------------------------------------------------------
module design_1_versal_cips_0_0_xpipeif_phy_rxeq # 
(
    parameter         TCQ             = 1,
    parameter         IMPL_TARGET     = "SOFT"
)
(
    //-------------------------------------------------------------------------- 
    //  Input Ports
    //-------------------------------------------------------------------------- 
    input       [15:0]                  attr_pl_eq_lp_txpreset_i,
    input       [15:0]                  attr_pl_eq_lp_txpreset2_i,

    input       [21:0]                  attr_pl_eq_rx_adapt_timer_i,
    input       [21:0]                  attr_pl_eq_rx_adapt_timer_sim_i,
    input                               attr_pl_eq_rx_adapt_sim_enable_i,

    input                               RXEQ_CLK,                            
    input                               RXEQ_RST_N,
    
    input       [ 1:0]                  RXEQ_CTRL,    
    input       [ 2:0]                  RXEQ_PRESET,
    input       [ 3:0]                  RXEQ_TXPRESET,
    input       [ 5:0]                  RXEQ_TXCOEFF,
    input       [ 5:0]                  RXEQ_LFFS,
    
    //-------------------------------------------------------------------------- 
    //  Output Ports
    //-------------------------------------------------------------------------- 
    output                              RXEQ_LFFS_SEL, 
    output      [17:0]                  RXEQ_NEW_TXCOEFF,
    output                              RXEQ_ADAPT_DONE,
    output                              RXEQ_DONE 
);          

    //--------------------------------------------------------------------------
    //  Internal Signals
    //--------------------------------------------------------------------------
    reg         [ 21:0]                 adapt_cnt;

    //--------------------------------------------------------------------------
    //  FSM Signals                                                            
    //--------------------------------------------------------------------------    
    reg         [ 2:0]                  fsm;
    reg         [ 3:0]                  txpreset;
    reg         [17:0]                  txcoeff;
    reg         [ 1:0]                  txcoeff_cnt;
    reg                                 lffs_sel;
    reg                                 adapt_done;
    reg                                 adapt_2nd;
    reg                                 done;
   
    //----------------------------------------------------------------------------------------------  
    //  FSM Encoding                                                                                  
    //----------------------------------------------------------------------------------------------                                            
    localparam FSM_IDLE    = 3'd0; 
    localparam FSM_PRESET  = 3'd1;                                     
    localparam FSM_TXCOEFF = 3'd2;
    localparam FSM_ADAPT   = 3'd3;
    localparam FSM_DONE    = 3'd4;                                  

    //--------------------------------------------------------------------------
    //  Counters (Simulation vs. Silicon)
    //--------------------------------------------------------------------------
    wire [21:0]  ADAPT_MAX = attr_pl_eq_rx_adapt_sim_enable_i ? 
                                          attr_pl_eq_rx_adapt_timer_sim_i :  
					  attr_pl_eq_rx_adapt_timer_i;
  
    
//--------------------------------------------------------------------------------------------------
//  Adaptation Counter
//--------------------------------------------------------------------------------------------------
always @ (posedge RXEQ_CLK or negedge RXEQ_RST_N)
begin

    if (!RXEQ_RST_N)
        begin
        adapt_cnt <= 22'd0;
        end
    else
        begin
        
        //----------------------------------------------------------------------
        //  Increment Counter
        //----------------------------------------------------------------------
        if (fsm == FSM_ADAPT)
            begin
            adapt_cnt <= adapt_cnt + 22'd1;
            end
            
        //----------------------------------------------------------------------
        //  Reset Counter
        //----------------------------------------------------------------------
        else
            begin
            adapt_cnt <= 22'd0;
            end

        end
        
end



//-------------------------------------------------------------------------------------------------- 
//  RX Equalization FSM                                                                              
//-------------------------------------------------------------------------------------------------- 
always @ (posedge RXEQ_CLK or negedge RXEQ_RST_N)
begin

    if (!RXEQ_RST_N)
        begin
        fsm         <= FSM_IDLE; 
        txpreset    <=  4'd0;
        txcoeff     <= 18'd0;
        txcoeff_cnt <=  2'd0;
        lffs_sel    <=  1'd0;
        adapt_done  <=  1'd0;
        adapt_2nd   <=  1'd1;
        done        <=  1'd0;
        end                    
    else
        begin
        
        case (fsm)
        
        //------------------------------------------------------------------------------------------
        //  Wait until RXEQ_CTRL != 2'b00
        //------------------------------------------------------------------------------------------
        FSM_IDLE :
        
            begin
            
            case (RXEQ_CTRL)
                
            //------------------------------------------------------------------
            //  Idle
            //------------------------------------------------------------------
            2'd0 :
            
                begin
                fsm         <= FSM_IDLE; 
                txpreset    <=  4'd0;
                txcoeff     <= 18'd0;
                txcoeff_cnt <=  2'd0;
                lffs_sel    <=  1'd0;
                adapt_done  <=  1'd0;
                adapt_2nd   <= adapt_2nd;
                done        <=  1'd0;
                end      
                
            //------------------------------------------------------------------
            //  Preset
            //------------------------------------------------------------------
            2'd1 :
            
                begin
                fsm         <= FSM_PRESET; 
                txpreset    <=  4'd0;
                txcoeff     <= 18'd0;
                txcoeff_cnt <=  2'd0;
                lffs_sel    <=  1'd0;
                adapt_done  <=  1'd0;
                adapt_2nd   <= adapt_2nd;
                done        <=  1'd0;
                end  
                
            //------------------------------------------------------------------
            //  Coeff : Latch C(-1) and TXPRESET
            //------------------------------------------------------------------
            2'd2 :
            
                begin
                fsm         <= FSM_TXCOEFF; 
                txpreset    <= RXEQ_TXPRESET;
                txcoeff     <= {RXEQ_TXCOEFF, txcoeff[17:6]};
                txcoeff_cnt <= 2'd1;
                lffs_sel    <= 1'd1;
                adapt_done  <= 1'd0;
                adapt_2nd   <= !adapt_2nd;                                      // Toggle adapt done
                done        <= 1'd0;
                end
                
            //------------------------------------------------------------------
            //  Bypass : Latch C(-1) and TXPRESET
            //------------------------------------------------------------------
            2'd3 :
            
                begin
                fsm         <= FSM_TXCOEFF; 
                txpreset    <= RXEQ_TXPRESET;
                txcoeff     <= {RXEQ_TXCOEFF, txcoeff[17:6]};
                txcoeff_cnt <= 2'd1;
                lffs_sel    <= 1'd1;
                adapt_done  <= 1'd0;
                adapt_2nd   <= 1'd1;
                done        <= 1'd0;
                end
                
            //------------------------------------------------------------------
            //  Default
            //------------------------------------------------------------------
            default :
            
                begin
                fsm         <= FSM_IDLE; 
                txpreset    <=  4'd0;
                txcoeff     <= 18'd0;
                txcoeff_cnt <=  2'd0;
                lffs_sel    <=  1'd0;
                adapt_done  <=  1'd0;
                adapt_2nd   <= adapt_2nd;
                done        <=  1'd0;
                end
                
            endcase
            
            end
            
        //------------------------------------------------------------------------------------------
        //  Go to DONE state (RXEQ preset not supported)
        //------------------------------------------------------------------------------------------
        FSM_PRESET :
        
            begin
            fsm         <= FSM_DONE;
            txpreset    <=  4'd0;
            txcoeff     <= 18'd0; 
            txcoeff_cnt <=  2'd0;
            lffs_sel    <=  1'd0;
            adapt_done  <=  1'd0;
            adapt_2nd   <= adapt_2nd;
            done        <=  1'd0; 
            end        
            
        //------------------------------------------------------------------------------------------
        //  Latch C(0) and C(+1)
        //------------------------------------------------------------------------------------------
        FSM_TXCOEFF :
        
            begin
            fsm         <= (txcoeff_cnt == 2'd2) ? FSM_ADAPT : FSM_TXCOEFF;
            txpreset    <= txpreset;
            txcoeff     <= {RXEQ_TXCOEFF, txcoeff[17:6]};
            txcoeff_cnt <= txcoeff_cnt + 2'd1;
            lffs_sel    <= 1'd0;
            adapt_done  <= 1'd0;
            adapt_2nd   <= adapt_2nd;
            done        <= 1'd0; 
            end
   
        //------------------------------------------------------------------------------------------
        //  Wait for adaptation timer 
        //------------------------------------------------------------------------------------------
        FSM_ADAPT :
        
            begin            
            fsm         <= (adapt_cnt == ADAPT_MAX) || (!adapt_2nd) ? FSM_DONE : FSM_ADAPT;
            txpreset    <= txpreset;
            txcoeff     <= txcoeff;
            txcoeff_cnt <= 2'd0;
            lffs_sel    <= 1'd0;
            adapt_done  <= 1'd0;
            adapt_2nd   <= adapt_2nd;
            done        <= 1'd0;
            end             
             
        //------------------------------------------------------------------------------------------
        //  Assert RXEQ_DONE until RXEQ_CTRL == 2'd0
        //------------------------------------------------------------------------------------------
        FSM_DONE :
        
            begin
            fsm         <= (RXEQ_CTRL == 2'd0) ? FSM_IDLE : FSM_DONE;
            txpreset    <= txpreset;
            txcoeff     <= txcoeff;
            txcoeff_cnt <= 2'd0;
            lffs_sel    <= ((RXEQ_CTRL == 2'd2) || (RXEQ_CTRL == 2'd3));
            adapt_done  <= ((RXEQ_CTRL == 2'd2) || (RXEQ_CTRL == 2'd3)) ? adapt_2nd : 1'd0;
            adapt_2nd   <= adapt_2nd;  
            done        <= 1'd1;
            end        
                          
        //------------------------------------------------------------------------------------------
        //  Default State
        //------------------------------------------------------------------------------------------
        default : 
        
            begin
            fsm         <= FSM_IDLE;
            txpreset    <=  4'd0;
            txcoeff     <= 18'd0;
            txcoeff_cnt <=  2'd0;
            lffs_sel    <=  1'd0;
            adapt_done  <=  1'd0; 
            adapt_2nd   <=  1'd1; 
            done        <=  1'd0; 
            end    
                    
        endcase
        
        end
        
end      



//-------------------------------------------------------------------------------------------------- 
//  RX Equalization Output                                                                           
//-------------------------------------------------------------------------------------------------- 
assign RXEQ_NEW_TXCOEFF = attr_pl_eq_lp_txpreset_i[3:0];
assign RXEQ_LFFS_SEL    = lffs_sel;
assign RXEQ_ADAPT_DONE  = adapt_done;
assign RXEQ_DONE        = done;



endmodule
