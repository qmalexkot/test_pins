
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
// File       : design_1_versal_cips_0_0_xpipeif_phy_txeq.v
// Version    : 1.0 
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps

//--------------------------------------------------------------------------------------------------
//  TX Equalization Module
//--------------------------------------------------------------------------------------------------
module design_1_versal_cips_0_0_xpipeif_phy_txeq # 
(
    parameter TCQ   = 1,
    parameter IMPL_TARGET = "SOFT"
)
(
    //-------------------------------------------------------------------------- 
    //  Input Ports
    //-------------------------------------------------------------------------- 

    input      [15:0]                   attr_pl_eq_gt_txpreset_i,

    input      [5:0]                    attr_pl_eq_tx_precur_0_i,
    input      [5:0]                    attr_pl_eq_tx_precur_1_i,
    input      [5:0]                    attr_pl_eq_tx_precur_2_i,
    input      [5:0]                    attr_pl_eq_tx_precur_3_i,
    input      [5:0]                    attr_pl_eq_tx_precur_4_i,
    input      [5:0]                    attr_pl_eq_tx_precur_5_i,
    input      [5:0]                    attr_pl_eq_tx_precur_6_i,
    input      [5:0]                    attr_pl_eq_tx_precur_7_i,
    input      [5:0]                    attr_pl_eq_tx_precur_8_i,
    input      [5:0]                    attr_pl_eq_tx_precur_9_i,
    input      [5:0]                    attr_pl_eq_tx_precur_A_i,
    input      [5:0]                    attr_pl_eq_tx_precur_B_i,
    input      [5:0]                    attr_pl_eq_tx_precur_C_i,
    input      [5:0]                    attr_pl_eq_tx_precur_D_i,
    input      [5:0]                    attr_pl_eq_tx_precur_E_i,
    input      [5:0]                    attr_pl_eq_tx_precur_F_i,

    input      [6:0]                    attr_pl_eq_tx_maincur_0_i,
    input      [6:0]                    attr_pl_eq_tx_maincur_1_i,
    input      [6:0]                    attr_pl_eq_tx_maincur_2_i,
    input      [6:0]                    attr_pl_eq_tx_maincur_3_i,
    input      [6:0]                    attr_pl_eq_tx_maincur_4_i,
    input      [6:0]                    attr_pl_eq_tx_maincur_5_i,
    input      [6:0]                    attr_pl_eq_tx_maincur_6_i,
    input      [6:0]                    attr_pl_eq_tx_maincur_7_i,
    input      [6:0]                    attr_pl_eq_tx_maincur_8_i,
    input      [6:0]                    attr_pl_eq_tx_maincur_9_i,
    input      [6:0]                    attr_pl_eq_tx_maincur_A_i,
    input      [6:0]                    attr_pl_eq_tx_maincur_B_i,
    input      [6:0]                    attr_pl_eq_tx_maincur_C_i,
    input      [6:0]                    attr_pl_eq_tx_maincur_D_i,
    input      [6:0]                    attr_pl_eq_tx_maincur_E_i,
    input      [6:0]                    attr_pl_eq_tx_maincur_F_i,
 
    input      [5:0]                    attr_pl_eq_tx_postcur_0_i,
    input      [5:0]                    attr_pl_eq_tx_postcur_1_i,
    input      [5:0]                    attr_pl_eq_tx_postcur_2_i,
    input      [5:0]                    attr_pl_eq_tx_postcur_3_i,
    input      [5:0]                    attr_pl_eq_tx_postcur_4_i,
    input      [5:0]                    attr_pl_eq_tx_postcur_5_i,
    input      [5:0]                    attr_pl_eq_tx_postcur_6_i,
    input      [5:0]                    attr_pl_eq_tx_postcur_7_i,
    input      [5:0]                    attr_pl_eq_tx_postcur_8_i,
    input      [5:0]                    attr_pl_eq_tx_postcur_9_i,
    input      [5:0]                    attr_pl_eq_tx_postcur_A_i,
    input      [5:0]                    attr_pl_eq_tx_postcur_B_i,
    input      [5:0]                    attr_pl_eq_tx_postcur_C_i,
    input      [5:0]                    attr_pl_eq_tx_postcur_D_i,
    input      [5:0]                    attr_pl_eq_tx_postcur_E_i,
    input      [5:0]                    attr_pl_eq_tx_postcur_F_i,
    
    input                               TXEQ_CLK,                            
    input                               TXEQ_RST_N,

    input       [ 1:0]                  TXEQ_CTRL,    
    input       [ 3:0]                  TXEQ_PRESET,
    input       [ 5:0]                  TXEQ_COEFF,
    
    //-------------------------------------------------------------------------- 
    //  Output Ports
    //-------------------------------------------------------------------------- 
    output  reg [ 4:0]                  TXEQ_PRECURSOR, 
    output  reg [ 6:0]                  TXEQ_MAINCURSOR,
    output  reg [ 4:0]                  TXEQ_POSTCURSOR,
    output  reg [17:0]                  TXEQ_NEW_COEFF,
    output  reg                         TXEQ_DONE
);          
    //--------------------------------------------------------------------------
    //  Internal Signals
    //--------------------------------------------------------------------------
    reg         [18:0]                  preset;          
    reg                                 preset_done;

    reg                                 reset_flag;
    reg                                 reset_flag1;
    reg                                 reset_flag2;
    
    //--------------------------------------------------------------------------
    //  FSM Signals                                                            
    //--------------------------------------------------------------------------    
    reg         [ 2:0]                  fsm;
    reg         [18:0]                  coeff;
    reg         [ 1:0]                  coeff_cnt;
    reg                                 done;
   
    //----------------------------------------------------------------------------------------------                   
    //  FSM Encoding                                                                               
    //----------------------------------------------------------------------------------------------                   
    localparam FSM_IDLE   = 3'd0; 
    localparam FSM_PRESET = 3'd1;                                     
    localparam FSM_COEFF  = 3'd2;
    localparam FSM_REMAP  = 3'd3;
    localparam FSM_QUERY  = 3'd4;                                     
    localparam FSM_DONE   = 3'd5;

    //----------------------------------------------------------------------------------------------
    //  TX Equalization Preset 
    //----------------------------------------------------------------------------------------------
    //  Advertise FS = 40
    //  Advertise LF = 12
    //  Actual    FS = 80
    //  Actual    LF = 24
    //----------------------------------------------------------------------------------------------
    //  Coefficient Rules:
    //  * C(-1) < Floor(FS/4)
    //  * C(-1) + C(0) + C(+1) = FS
    //  * C(0) - C(-1) - C(+1) >= LF
    //----------------------------------------------------------------------------------------------
    //  TXPRECURSOR  or C(-1) should be 20 or less
    //  TXMAINCURSOR or C( 0) should be 52 or more (automatically calcuated in GT)
    //  TXPOSTCURSOR or C(+1) should be 28 or less
    //----------------------------------------------------------------------------------------------                           
//--------------------------------------------------------------------------------------------------
//  TX Equalization Preset
//--------------------------------------------------------------------------------------------------
always @ (posedge TXEQ_CLK or negedge TXEQ_RST_N)
begin

    if (!TXEQ_RST_N)
        begin
          preset <= 19'b0;
          preset_done <= 1'd0;
	  reset_flag <= 1'b1;
        end                    
    else if (reset_flag == 1'b1) 
        begin
          reset_flag <= 1'b0;
          //------------------------------------------------------------------
          //  Default TX Equalization Preset                                 
          //------------------------------------------------------------------
          case (attr_pl_eq_gt_txpreset_i[3:0])
                4'd0    : preset <= {attr_pl_eq_tx_postcur_0_i, attr_pl_eq_tx_maincur_0_i, attr_pl_eq_tx_precur_0_i};
                4'd1    : preset <= {attr_pl_eq_tx_postcur_1_i, attr_pl_eq_tx_maincur_1_i, attr_pl_eq_tx_precur_1_i};
                4'd2    : preset <= {attr_pl_eq_tx_postcur_2_i, attr_pl_eq_tx_maincur_2_i, attr_pl_eq_tx_precur_2_i};
                4'd3    : preset <= {attr_pl_eq_tx_postcur_3_i, attr_pl_eq_tx_maincur_3_i, attr_pl_eq_tx_precur_3_i};
                4'd4    : preset <= {attr_pl_eq_tx_postcur_4_i, attr_pl_eq_tx_maincur_4_i, attr_pl_eq_tx_precur_4_i};
                4'd5    : preset <= {attr_pl_eq_tx_postcur_5_i, attr_pl_eq_tx_maincur_5_i, attr_pl_eq_tx_precur_5_i};
                4'd6    : preset <= {attr_pl_eq_tx_postcur_6_i, attr_pl_eq_tx_maincur_6_i, attr_pl_eq_tx_precur_6_i};
                4'd7    : preset <= {attr_pl_eq_tx_postcur_7_i, attr_pl_eq_tx_maincur_7_i, attr_pl_eq_tx_precur_7_i};
                4'd8    : preset <= {attr_pl_eq_tx_postcur_8_i, attr_pl_eq_tx_maincur_8_i, attr_pl_eq_tx_precur_8_i};
                4'd9    : preset <= {attr_pl_eq_tx_postcur_9_i, attr_pl_eq_tx_maincur_9_i, attr_pl_eq_tx_precur_9_i};
                4'd10   : preset <= {attr_pl_eq_tx_postcur_A_i, attr_pl_eq_tx_maincur_A_i, attr_pl_eq_tx_precur_A_i};
                4'd11   : preset <= {attr_pl_eq_tx_postcur_B_i, attr_pl_eq_tx_maincur_B_i, attr_pl_eq_tx_precur_B_i};
                4'd12   : preset <= {attr_pl_eq_tx_postcur_C_i, attr_pl_eq_tx_maincur_C_i, attr_pl_eq_tx_precur_C_i};
                4'd13   : preset <= {attr_pl_eq_tx_postcur_D_i, attr_pl_eq_tx_maincur_D_i, attr_pl_eq_tx_precur_D_i};
                4'd14   : preset <= {attr_pl_eq_tx_postcur_E_i, attr_pl_eq_tx_maincur_E_i, attr_pl_eq_tx_precur_E_i};
                4'd15   : preset <= {attr_pl_eq_tx_postcur_F_i, attr_pl_eq_tx_maincur_F_i, attr_pl_eq_tx_precur_F_i}; 
          endcase	       
        end
    else
        begin   
        if (fsm == FSM_PRESET)
            begin    
                
            //------------------------------------------------------------------
            //  Update TX Equalization Preset
            //------------------------------------------------------------------
            case (TXEQ_PRESET)
                4'd0    : preset <= {attr_pl_eq_tx_postcur_0_i, attr_pl_eq_tx_maincur_0_i, attr_pl_eq_tx_precur_0_i};
                4'd1    : preset <= {attr_pl_eq_tx_postcur_1_i, attr_pl_eq_tx_maincur_1_i, attr_pl_eq_tx_precur_1_i};
                4'd2    : preset <= {attr_pl_eq_tx_postcur_2_i, attr_pl_eq_tx_maincur_2_i, attr_pl_eq_tx_precur_2_i};
                4'd3    : preset <= {attr_pl_eq_tx_postcur_3_i, attr_pl_eq_tx_maincur_3_i, attr_pl_eq_tx_precur_3_i};
                4'd4    : preset <= {attr_pl_eq_tx_postcur_4_i, attr_pl_eq_tx_maincur_4_i, attr_pl_eq_tx_precur_4_i};
                4'd5    : preset <= {attr_pl_eq_tx_postcur_5_i, attr_pl_eq_tx_maincur_5_i, attr_pl_eq_tx_precur_5_i};
                4'd6    : preset <= {attr_pl_eq_tx_postcur_6_i, attr_pl_eq_tx_maincur_6_i, attr_pl_eq_tx_precur_6_i};
                4'd7    : preset <= {attr_pl_eq_tx_postcur_7_i, attr_pl_eq_tx_maincur_7_i, attr_pl_eq_tx_precur_7_i};
                4'd8    : preset <= {attr_pl_eq_tx_postcur_8_i, attr_pl_eq_tx_maincur_8_i, attr_pl_eq_tx_precur_8_i};      
                4'd9    : preset <= {attr_pl_eq_tx_postcur_9_i, attr_pl_eq_tx_maincur_9_i, attr_pl_eq_tx_precur_9_i}; 
                4'd10   : preset <= {attr_pl_eq_tx_postcur_A_i, attr_pl_eq_tx_maincur_A_i, attr_pl_eq_tx_precur_A_i};
                4'd11   : preset <= {attr_pl_eq_tx_postcur_B_i, attr_pl_eq_tx_maincur_B_i, attr_pl_eq_tx_precur_B_i};
                4'd12   : preset <= {attr_pl_eq_tx_postcur_C_i, attr_pl_eq_tx_maincur_C_i, attr_pl_eq_tx_precur_C_i};
                4'd13   : preset <= {attr_pl_eq_tx_postcur_D_i, attr_pl_eq_tx_maincur_D_i, attr_pl_eq_tx_precur_D_i};
                4'd14   : preset <= {attr_pl_eq_tx_postcur_E_i, attr_pl_eq_tx_maincur_E_i, attr_pl_eq_tx_precur_E_i};
                4'd15   : preset <= {attr_pl_eq_tx_postcur_F_i, attr_pl_eq_tx_maincur_F_i, attr_pl_eq_tx_precur_F_i};
            endcase
              
            preset_done <= 1'd1;
            end
        else
            begin
            preset      <= preset;
            preset_done <= 1'd0;
            end
        end
        
end     



//--------------------------------------------------------------------------------------------------
//  TX Equalization FSM
//--------------------------------------------------------------------------------------------------
always @ (posedge TXEQ_CLK or negedge TXEQ_RST_N)
begin

    if (!TXEQ_RST_N)
        begin
        fsm       <= FSM_IDLE; 
        coeff     <= 19'b0;
        coeff_cnt <= 2'd0;
        done      <= 1'd0;
	reset_flag2 <= 1'b1;
        end                    
    else if (reset_flag2 == 1'b1)
        begin
	reset_flag2 <= 1'b0;
        fsm       <= FSM_IDLE; 
        coeff     <= preset;
        coeff_cnt <= 2'd0;
        done      <= 1'd0;
        end                    
    else
        begin
        
        case (fsm)
        
        //------------------------------------------------------------------------------------------
        //  Wait until TXEQ_CTRL != 2'b00
        //------------------------------------------------------------------------------------------
        FSM_IDLE :
        
            begin
            done <= 1'd0;
            
            case (TXEQ_CTRL)
            
            //------------------------------------------------------------------
            //  Idle
            //------------------------------------------------------------------
            2'd0 :
            
                begin
                fsm       <= FSM_IDLE; 
                coeff     <= coeff;
                coeff_cnt <= 2'd0;
                end 
                
            //------------------------------------------------------------------
            //  Preset
            //------------------------------------------------------------------
            2'd1 :
            
                begin
                fsm       <= FSM_PRESET; 
                coeff     <= coeff;
                coeff_cnt <= 2'd0;
                end  
                
            //------------------------------------------------------------------
            //  Coeff : Latch C(-1) 
            //------------------------------------------------------------------
            2'd2 :
            
                begin
                fsm       <= FSM_COEFF; 
                coeff     <= {TXEQ_COEFF, coeff[18:6]};
                coeff_cnt <= 2'd1;
                end
                
            //------------------------------------------------------------------
            //  Query
            //------------------------------------------------------------------
            2'd3 :
            
                begin
                fsm       <= FSM_QUERY; 
                coeff     <= coeff;
                coeff_cnt <= 2'd0;
                end
                
            //------------------------------------------------------------------
            //  Stay in IDLE state (Default)
            //------------------------------------------------------------------
            default :
            
                begin
                fsm       <= FSM_IDLE; 
                coeff     <= coeff;
                coeff_cnt <= 2'd0;
                end
                
            endcase
            
            end
            
        //------------------------------------------------------------------------------------------
        //  Wait for TXEQ preset done
        //------------------------------------------------------------------------------------------
        FSM_PRESET :
        
            begin
            fsm       <= preset_done ? FSM_DONE : FSM_PRESET;
            coeff     <= preset;
            coeff_cnt <= 2'd0;
            done      <= 1'd0;
            end    
            
        //------------------------------------------------------------------------------------------
        //  Latch C(0) and C(+1)
        //------------------------------------------------------------------------------------------
        FSM_COEFF :
        
            begin
            fsm <= (coeff_cnt == 2'd2) ? FSM_REMAP : FSM_COEFF;
            
            //------------------------------------------------------------------
            //  Shift in one extra bit for TXMAINCURSOR
            //------------------------------------------------------------------
            if (coeff_cnt == 2'd1)
                coeff <= {1'd0, TXEQ_COEFF, coeff[18:7]};
            else
                coeff <= {TXEQ_COEFF, coeff[18:6]};
                
            coeff_cnt <= coeff_cnt + 2'd1;
            done      <= 1'd0; 
            end
            
        //------------------------------------------------------------------------------------------
        //  Multiply coefficient by 2x
        //------------------------------------------------------------------------------------------
        FSM_REMAP :
        
            begin
            fsm       <= FSM_DONE;
            coeff     <= coeff << 1;        
            coeff_cnt <= 2'd0;
            done      <= 1'd0; 
            end
            
        //------------------------------------------------------------------------------------------
        //  Query to display current TXEQ_NEW_COEFF
        //------------------------------------------------------------------------------------------
        FSM_QUERY:
        
            begin
            fsm       <= FSM_DONE;
            coeff     <= coeff; 
            coeff_cnt <= 2'd0;
            done      <= 1'd0;
            end     
                  
        //------------------------------------------------------------------------------------------
        //  Assert TXEQ_DONE until TXEQ_CTRL == 2'd0
        //------------------------------------------------------------------------------------------
        FSM_DONE :
        
            begin
            fsm       <= (TXEQ_CTRL == 2'd0) ? FSM_IDLE : FSM_DONE;
            coeff     <= coeff;          
            coeff_cnt <= 2'd0;
            done      <= 1'd1;
            end        
                          
        //------------------------------------------------------------------------------------------
        //  Default State
        //------------------------------------------------------------------------------------------
        default : 
        
            begin
            fsm       <= FSM_IDLE;
            coeff     <= 19'd0; 
            coeff_cnt <=  2'd0;
            done      <=  1'd0;
            end    
                    
        endcase
        
        end
        
end  



//-------------------------------------------------------------------------------------------------- 
//  TX Equalization Output Register                                                                               
//-------------------------------------------------------------------------------------------------- 
always @ (posedge TXEQ_CLK or negedge TXEQ_RST_N)
begin

    if (!TXEQ_RST_N)
        begin
        TXEQ_PRECURSOR        <= 5'b0;
        TXEQ_MAINCURSOR       <= 7'b0;
        TXEQ_POSTCURSOR       <= 5'b0;
        TXEQ_NEW_COEFF[17:12] <= 6'b0;
        TXEQ_NEW_COEFF[11: 6] <= 6'b0;
        TXEQ_NEW_COEFF[ 5: 0] <= 6'b0;
        TXEQ_DONE             <= 1'd0;
	reset_flag1 <= 1'b1;
        end
    else if (reset_flag1 == 1'b1)
        begin
        reset_flag1 <= 1'b0;
        TXEQ_PRECURSOR        <= coeff[ 4: 0];  
        TXEQ_MAINCURSOR       <= coeff[12: 6]; 
        TXEQ_POSTCURSOR       <= coeff[17:13];
        TXEQ_NEW_COEFF[17:12] <= {1'd0, coeff[18:14]};
        TXEQ_NEW_COEFF[11: 6] <= coeff[12:7]; 
        TXEQ_NEW_COEFF[ 5: 0] <= {1'd0, coeff[5:1]}; 
        TXEQ_DONE             <= 1'd0;
        end
    else           
        begin
        TXEQ_DONE <= done;
        
        //----------------------------------------------------------------------
        //  Divide TXEQ_NEW_COEFF by 2x and update output
        //----------------------------------------------------------------------
        if (fsm == FSM_DONE)
            begin
            TXEQ_PRECURSOR        <= coeff[ 4: 0]; 
            TXEQ_MAINCURSOR       <= coeff[12: 6]; 
            TXEQ_POSTCURSOR       <= coeff[17:13];
            TXEQ_NEW_COEFF[17:12] <= {1'd0, coeff[18:14]};
            TXEQ_NEW_COEFF[11: 6] <= coeff[12:7]; 
            TXEQ_NEW_COEFF[ 5: 0] <= {1'd0, coeff[5:1]}; 
            end
            
        //----------------------------------------------------------------------
        //  Hold output
        //----------------------------------------------------------------------    
        else
            begin
            TXEQ_PRECURSOR        <= TXEQ_PRECURSOR;  
            TXEQ_MAINCURSOR       <= TXEQ_MAINCURSOR; 
            TXEQ_POSTCURSOR       <= TXEQ_POSTCURSOR; 
            TXEQ_NEW_COEFF[17:12] <= TXEQ_NEW_COEFF[17:12];
            TXEQ_NEW_COEFF[11: 6] <= TXEQ_NEW_COEFF[11: 6];
            TXEQ_NEW_COEFF[ 5: 0] <= TXEQ_NEW_COEFF[ 5: 0];
            end
            
        end    
        
end

 

endmodule
