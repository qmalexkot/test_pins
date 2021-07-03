############################################################################
##
##  Xilinx, Inc. 2020            www.xilinx.com
############################################################################
# This file contains confidential and proprietary information
# of Xilinx, Inc. and is protected under U.S. and
# international copyright and other intellectual property
# laws.
# 
# DISCLAIMER
# This disclaimer is not a license and does not grant any
# rights to the materials distributed herewith. Except as
# otherwise provided in a valid license issued to you by
# Xilinx, and to the maximum extent permitted by applicable
# law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
# WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
# AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
# BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
# INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
# (2) Xilinx shall not be liable (whether in contract or tort,
# including negligence, or under any other theory of
# liability) for any loss or damage of any kind or nature
# related to, arising under or in connection with these
# materials, including for any direct, or any indirect,
# special, incidental, or consequential loss or damage
# (including loss of data, profits, goodwill, or any type of
# loss or damage suffered as a result of any action brought
# by a third party) even if such damage or loss was
# reasonably foreseeable or Xilinx had been advised of the
# possibility of the same.
# 
# CRITICAL APPLICATIONS
# Xilinx products are not designed or intended to be fail-
# safe, or for use in any application requiring fail-safe
# performance, such as life-support or safety devices or
# systems, Class III medical devices, nuclear facilities,
# applications related to the deployment of airbags, or any
# other applications that could lead to death, personal
# injury, or severe property or environmental damage
# (individually and collectively, "Critical
# Applications"). Customer assumes the sole risk and
# liability of any use of Xilinx products in Critical
# Applications, subject only to applicable laws and
# regulations governing limitations on product liability.
# 
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
# PART OF THIS FILE AT ALL TIMES.
############################################################################
# Clock constraints                                                        #
############################################################################



set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/DEBUGTRACEREADY]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH*_RXCHBONDI[*]]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH*_*XPD[*]]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH*_*XRATE[*]]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH*_TXCTRL*[*]]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH*_*XPRBSSEL[*]]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH*_TXDATA[*]]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/M*_AXIS_TREADY]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/S*_AXIS_TDATA[*]]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/S*_AXIS_TLAST]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/S*_AXIS_TVALID]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH*_EYESCANTRIGGER]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH*_RXGEARBOXSLIP]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH*_*XPOLARITY]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH*_RXSLIDE]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH*_TXCOMINIT]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH*_TXCOMSAS]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH*_TXCOMWAKE]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH*_TXDETECTRX]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH*_TXELECIDLE]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH*_TXHEADER[*]]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH*_TXINHIBIT]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH*_TXONESZEROS]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH*_TXPIPPMEN]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH*_TXPIPPMSTEPSIZE[*]]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/CH*_TXSEQUENCE[*]]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/RXMARGINREQCMD[*]]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/RXMARGINREQLANENUM[*]]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/RXMARGINREQPAYLD[*]]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/RXMARGINREQREQ]
set_case_analysis 0 [get_pins gt_quad_inst*/inst/quad_inst/RXMARGINRESACK]
set_property DONT_TOUCH true [get_cells PS9_inst]
set_property HD.TANDEM 1 [get_cells CPM_INST]
set_property HD.TANDEM 1 [get_cells IBUFDS_GTE5_PCIeA0_inst]
set_property HD.TANDEM 1 [get_cells XPIPE_QUAD0_inst]
set_property HD.TANDEM 1 [get_cells XPIPE_QUAD1_inst]
set_property HD.TANDEM 1 [get_cells gt_quad_inst0/inst/quad_inst]
set_property HD.TANDEM 1 [get_cells gt_quad_inst1/inst/quad_inst]
set_property HD.TANDEM 1 [get_cells CPM_INST]
set_property HD.TANDEM 1 [get_cells IBUFDS_GTE5_PCIeA1_inst]
set_property HD.TANDEM 1 [get_cells XPIPE_QUAD2_inst]
set_property HD.TANDEM 1 [get_cells XPIPE_QUAD3_inst]
set_property HD.TANDEM 1 [get_cells gt_quad_inst2/inst/quad_inst]
set_property HD.TANDEM 1 [get_cells gt_quad_inst3/inst/quad_inst]
set_property HD.TANDEM_BITSTREAMS COMBINED [current_design]
# Waiving DPLL Deskew defeatured
create_waiver -type DRC -id {AVALXA-261} -tags 1079051 -scope -internal -description "Waiving DPLL Deskew defeatured DRC" -objects [get_cells  DPLL_*]
