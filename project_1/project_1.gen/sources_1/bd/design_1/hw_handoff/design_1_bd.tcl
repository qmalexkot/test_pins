
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# FIFO_CTRL, sys_clk_module

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcvc1802-vsva2197-2MP-e-S
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set COMe_VSL_PCIE [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gt_rtl:1.0 COMe_VSL_PCIE ]

  set OMe_VSL1_PCIE [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gt_rtl:1.0 OMe_VSL1_PCIE ]

  set PCIe_0_REFCLK [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 PCIe_0_REFCLK ]

  set PCIe_1_REFCLK [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 PCIe_1_REFCLK ]

  set VSL_DIMM0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 VSL_DIMM0 ]

  set VSL_DIMM0_REF_CLK [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 VSL_DIMM0_REF_CLK ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {250000000} \
   ] $VSL_DIMM0_REF_CLK

  set VSL_DIMM1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 VSL_DIMM1 ]

  set VSL_DIMM1_REF_CLK [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 VSL_DIMM1_REF_CLK ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {250000000} \
   ] $VSL_DIMM1_REF_CLK

  set VSL_DIMM2 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 VSL_DIMM2 ]

  set VSL_DIMM2_REF_CLK [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 VSL_DIMM2_REF_CLK ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {250000000} \
   ] $VSL_DIMM2_REF_CLK


  # Create ports
  set CNC_VSL_ALIGN_N [ create_bd_port -dir I CNC_VSL_ALIGN_N ]
  set CNC_VSL_ALIGN_P [ create_bd_port -dir I CNC_VSL_ALIGN_P ]
  set CORE_RST [ create_bd_port -dir I -type rst CORE_RST ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $CORE_RST
  set LMK_VSL_250M_CLK_IN_N [ create_bd_port -dir I LMK_VSL_250M_CLK_IN_N ]
  set LMK_VSL_250M_CLK_IN_P [ create_bd_port -dir I LMK_VSL_250M_CLK_IN_P ]
  set LMK_VSL_500M_CLK_IN_N [ create_bd_port -dir I LMK_VSL_500M_CLK_IN_N ]
  set LMK_VSL_500M_CLK_IN_P [ create_bd_port -dir I LMK_VSL_500M_CLK_IN_P ]
  set LMK_VSL_RFU_CLK_IN_N [ create_bd_port -dir I LMK_VSL_RFU_CLK_IN_N ]
  set LMK_VSL_RFU_CLK_IN_P [ create_bd_port -dir I LMK_VSL_RFU_CLK_IN_P ]
  set LVDS_706_n [ create_bd_port -dir I -from 23 -to 0 LVDS_706_n ]
  set LVDS_706_p [ create_bd_port -dir I -from 23 -to 0 LVDS_706_p ]
  set LVDS_707_n [ create_bd_port -dir I -from 17 -to 0 LVDS_707_n ]
  set LVDS_707_p [ create_bd_port -dir I -from 17 -to 0 LVDS_707_p ]
  set LVDS_708_n [ create_bd_port -dir I -from 21 -to 0 LVDS_708_n ]
  set LVDS_708_p [ create_bd_port -dir I -from 21 -to 0 LVDS_708_p ]
  set RD_CLK_706_n [ create_bd_port -dir I -from 0 -to 0 RD_CLK_706_n ]
  set RD_CLK_706_p [ create_bd_port -dir I -from 0 -to 0 RD_CLK_706_p ]
  set RD_CLK_707_n [ create_bd_port -dir I -from 0 -to 0 RD_CLK_707_n ]
  set RD_CLK_707_p [ create_bd_port -dir I -from 0 -to 0 RD_CLK_707_p ]
  set RD_CLK_708_n [ create_bd_port -dir I -from 0 -to 0 RD_CLK_708_n ]
  set RD_CLK_708_p [ create_bd_port -dir I -from 0 -to 0 RD_CLK_708_p ]
  set XPLL_IN_n_0 [ create_bd_port -dir I -from 0 -to 0 XPLL_IN_n_0 ]
  set XPLL_IN_p_0 [ create_bd_port -dir I -from 0 -to 0 XPLL_IN_p_0 ]
  set XPLL_RST [ create_bd_port -dir I XPLL_RST ]

  # Create instance: FIFO_CTRL_0, and set properties
  set block_name FIFO_CTRL
  set block_cell_name FIFO_CTRL_0
  if { [catch {set FIFO_CTRL_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $FIFO_CTRL_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: advanced_io_wizard_0, and set properties
  set advanced_io_wizard_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:advanced_io_wizard:1.0 advanced_io_wizard_0 ]
  set_property -dict [ list \
   CONFIG.BUS0_DIR {RX} \
   CONFIG.BUS0_IO_TYPE {DIFF} \
   CONFIG.BUS0_NUM_PINS {24} \
   CONFIG.BUS0_SIG_NAME {LVDS_706} \
   CONFIG.BUS0_STROBE_EN {1} \
   CONFIG.BUS0_STROBE_IO_TYPE {DIFF} \
   CONFIG.BUS0_STROBE_NAME {RD_CLK_706} \
   CONFIG.BUS12_WRCLK_EN {0} \
   CONFIG.BUS1_DIR {RX} \
   CONFIG.BUS1_IO_TYPE {DIFF} \
   CONFIG.BUS1_NUM_PINS {18} \
   CONFIG.BUS1_SIG_NAME {LVDS_707} \
   CONFIG.BUS1_STROBE_EN {1} \
   CONFIG.BUS1_STROBE_IO_TYPE {DIFF} \
   CONFIG.BUS1_STROBE_NAME {RD_CLK_707} \
   CONFIG.BUS2_DIR {RX} \
   CONFIG.BUS2_IO_TYPE {DIFF} \
   CONFIG.BUS2_NUM_PINS {22} \
   CONFIG.BUS2_SIG_NAME {LVDS_708} \
   CONFIG.BUS2_STROBE_EN {1} \
   CONFIG.BUS2_STROBE_IO_TYPE {DIFF} \
   CONFIG.BUS2_STROBE_NAME {RD_CLK_708} \
   CONFIG.BUS3_DIR {RX} \
   CONFIG.BUS3_IO_TYPE {DIFF} \
   CONFIG.BUS3_SIG_NAME {XPLL_IN} \
   CONFIG.BUS3_SIG_TYPE {Input Clock} \
   CONFIG.BUS3_STROBE_EN {0} \
   CONFIG.DIFFERENTIAL_IO_TERMINATION {TERM_100} \
   CONFIG.DIFF_IO_STD {LVDS15} \
   CONFIG.DIFF_IO_T {DIFF_TERM_ADV} \
   CONFIG.ENABLE_PLLOUT1 {0} \
   CONFIG.ENABLE_XPLL_DESKEW {1} \
   CONFIG.EN_REFCLK_STROBE {0} \
   CONFIG.INPUT_CLK_FREQ {250.000} \
   CONFIG.MAX_BANKS {3} \
   CONFIG.PLL0_PLLOUTCLK1 {200.000} \
   CONFIG.PLL_CLK {43.84030834306494} \
   CONFIG.PLL_CLK_SOURCE {IBUF_TO_PLL} \
   CONFIG.PLL_IN_CORE {1} \
   CONFIG.REDUCE_CONTROL_SIG_EN {1} \
   CONFIG.RX_SERIALIZATION_FACTOR {4} \
 ] $advanced_io_wizard_0

  # Create instance: axi_noc_0, and set properties
  set axi_noc_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_noc:1.0 axi_noc_0 ]
  set_property -dict [ list \
   CONFIG.HBM_CHNL0_CONFIG {} \
   CONFIG.LOGO_FILE {data/noc_mc.png} \
   CONFIG.MC0_CONFIG_NUM {config17} \
   CONFIG.MC0_FLIPPED_PINOUT {true} \
   CONFIG.MC1_CONFIG_NUM {config17} \
   CONFIG.MC2_CONFIG_NUM {config17} \
   CONFIG.MC3_CONFIG_NUM {config17} \
   CONFIG.MC_ADDR_BIT9 {CA5} \
   CONFIG.MC_BG_WIDTH {2} \
   CONFIG.MC_CASLATENCY {21} \
   CONFIG.MC_CA_MIRROR {true} \
   CONFIG.MC_CHAN_REGION1 {DDR_LOW1} \
   CONFIG.MC_COMPONENT_WIDTH {x8} \
   CONFIG.MC_CONFIG_NUM {config17} \
   CONFIG.MC_CS_WIDTH {2} \
   CONFIG.MC_DATAWIDTH {72} \
   CONFIG.MC_DDR4_2T {Disable} \
   CONFIG.MC_DDR_INIT_TIMEOUT {0x001118F4} \
   CONFIG.MC_DM_WIDTH {9} \
   CONFIG.MC_DQS_WIDTH {9} \
   CONFIG.MC_DQ_WIDTH {72} \
   CONFIG.MC_ECC {true} \
   CONFIG.MC_ECC_SCRUB_PERIOD {0x0035BC} \
   CONFIG.MC_ECC_SCRUB_SIZE {16384} \
   CONFIG.MC_EN_ECC_SCRUBBING {true} \
   CONFIG.MC_F1_LPDDR4_MR1 {0x0000} \
   CONFIG.MC_F1_LPDDR4_MR2 {0x0000} \
   CONFIG.MC_F1_LPDDR4_MR3 {0x0000} \
   CONFIG.MC_F1_LPDDR4_MR13 {0x0000} \
   CONFIG.MC_F1_TFAW {21000} \
   CONFIG.MC_F1_TFAWMIN {21000} \
   CONFIG.MC_F1_TRCD {13750} \
   CONFIG.MC_F1_TRCDMIN {13750} \
   CONFIG.MC_F1_TRRD_L {8} \
   CONFIG.MC_F1_TRRD_L_MIN {8} \
   CONFIG.MC_F1_TRRD_S {4} \
   CONFIG.MC_F1_TRRD_S_MIN {4} \
   CONFIG.MC_INIT_MEM_USING_ECC_SCRUB {true} \
   CONFIG.MC_INPUTCLK0_PERIOD {3998} \
   CONFIG.MC_INPUT_FREQUENCY0 {250.094} \
   CONFIG.MC_MEMORY_DENSITY {16GB} \
   CONFIG.MC_MEMORY_DEVICETYPE {UDIMMs} \
   CONFIG.MC_MEMORY_SPEEDGRADE {DDR4-3200AA(22-22-22)} \
   CONFIG.MC_MEMORY_TIMEPERIOD0 {727} \
   CONFIG.MC_MEMORY_TIMEPERIOD1 {695} \
   CONFIG.MC_MEM_DEVICE_WIDTH {x8} \
   CONFIG.MC_RANK {2} \
   CONFIG.MC_TCCD_L {7} \
   CONFIG.MC_TCKE {7} \
   CONFIG.MC_TCKEMIN {7} \
   CONFIG.MC_TFAW {21000} \
   CONFIG.MC_TFAWMIN {21000} \
   CONFIG.MC_TRC {45750} \
   CONFIG.MC_TRCD {13750} \
   CONFIG.MC_TRP {13750} \
   CONFIG.MC_TRPMIN {13750} \
   CONFIG.MC_TRRD_L {7} \
   CONFIG.MC_TRRD_S {4} \
   CONFIG.MC_TRRD_S_MIN {4} \
   CONFIG.MC_TRTP_nCK {11} \
   CONFIG.MC_TXP {9} \
   CONFIG.MC_TXPMIN {9} \
   CONFIG.MC_TXPR {496} \
   CONFIG.MC_USER_DEFINED_ADDRESS_MAP {1CS-16RA-2BA-2BG-10CA} \
   CONFIG.MC_WRITE_BANDWIDTH {5502.0635} \
   CONFIG.MC_XPLL_CLKOUT1_PERIOD {1454} \
   CONFIG.MC_XPLL_CLKOUT1_PHASE {255.26822558459423} \
   CONFIG.NUM_CLKS {9} \
   CONFIG.NUM_MC {1} \
   CONFIG.NUM_MCP {4} \
   CONFIG.NUM_MI {0} \
   CONFIG.NUM_NMI {4} \
   CONFIG.NUM_NSI {0} \
   CONFIG.NUM_SI {9} \
 ] $axi_noc_0

  set_property -dict [ list \
   CONFIG.DATA_WIDTH {128} \
   CONFIG.CONNECTIONS {MC_0 { read_bw {300} write_bw {300} read_avg_burst {4} write_avg_burst {4}} M00_INI { read_bw {300} write_bw {300}} } \
   CONFIG.DEST_IDS {} \
   CONFIG.CATEGORY {ps_cci} \
 ] [get_bd_intf_pins /axi_noc_0/S00_AXI]

  set_property -dict [ list \
   CONFIG.DATA_WIDTH {128} \
   CONFIG.CONNECTIONS {M01_INI { read_bw {300} write_bw {300}} MC_1 { read_bw {300} write_bw {300} read_avg_burst {4} write_avg_burst {4}} } \
   CONFIG.DEST_IDS {} \
   CONFIG.CATEGORY {ps_cci} \
 ] [get_bd_intf_pins /axi_noc_0/S01_AXI]

  set_property -dict [ list \
   CONFIG.DATA_WIDTH {128} \
   CONFIG.CONNECTIONS {M02_INI { read_bw {1720} write_bw {1720}} MC_2 { read_bw {300} write_bw {300} read_avg_burst {4} write_avg_burst {4}} } \
   CONFIG.DEST_IDS {} \
   CONFIG.CATEGORY {ps_cci} \
 ] [get_bd_intf_pins /axi_noc_0/S02_AXI]

  set_property -dict [ list \
   CONFIG.DATA_WIDTH {128} \
   CONFIG.CONNECTIONS {M03_INI { read_bw {1720} write_bw {1720}} MC_3 { read_bw {300} write_bw {300} read_avg_burst {4} write_avg_burst {4}} } \
   CONFIG.DEST_IDS {} \
   CONFIG.CATEGORY {ps_cci} \
 ] [get_bd_intf_pins /axi_noc_0/S03_AXI]

  set_property -dict [ list \
   CONFIG.DATA_WIDTH {128} \
   CONFIG.CONNECTIONS {M00_INI { read_bw {300} write_bw {300}} } \
   CONFIG.DEST_IDS {} \
   CONFIG.CATEGORY {ps_nci} \
 ] [get_bd_intf_pins /axi_noc_0/S04_AXI]

  set_property -dict [ list \
   CONFIG.DATA_WIDTH {128} \
   CONFIG.CONNECTIONS {M00_INI { read_bw {300} write_bw {300}} } \
   CONFIG.DEST_IDS {} \
   CONFIG.CATEGORY {ps_pcie} \
 ] [get_bd_intf_pins /axi_noc_0/S05_AXI]

  set_property -dict [ list \
   CONFIG.DATA_WIDTH {128} \
   CONFIG.CONNECTIONS {M00_INI { read_bw {300} write_bw {300}} } \
   CONFIG.DEST_IDS {} \
   CONFIG.CATEGORY {ps_pcie} \
 ] [get_bd_intf_pins /axi_noc_0/S06_AXI]

  set_property -dict [ list \
   CONFIG.DATA_WIDTH {128} \
   CONFIG.CONNECTIONS {M00_INI { read_bw {300} write_bw {300}} } \
   CONFIG.DEST_IDS {} \
   CONFIG.CATEGORY {ps_rpu} \
 ] [get_bd_intf_pins /axi_noc_0/S07_AXI]

  set_property -dict [ list \
   CONFIG.DATA_WIDTH {128} \
   CONFIG.CONNECTIONS {M00_INI { read_bw {300} write_bw {300}} } \
   CONFIG.DEST_IDS {} \
   CONFIG.CATEGORY {ps_pmc} \
 ] [get_bd_intf_pins /axi_noc_0/S08_AXI]

  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {S00_AXI} \
 ] [get_bd_pins /axi_noc_0/aclk0]

  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {S01_AXI} \
 ] [get_bd_pins /axi_noc_0/aclk1]

  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {S02_AXI} \
 ] [get_bd_pins /axi_noc_0/aclk2]

  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {S03_AXI} \
 ] [get_bd_pins /axi_noc_0/aclk3]

  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {S04_AXI} \
 ] [get_bd_pins /axi_noc_0/aclk4]

  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {S05_AXI} \
 ] [get_bd_pins /axi_noc_0/aclk5]

  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {S06_AXI} \
 ] [get_bd_pins /axi_noc_0/aclk6]

  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {S07_AXI} \
 ] [get_bd_pins /axi_noc_0/aclk7]

  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {S08_AXI} \
 ] [get_bd_pins /axi_noc_0/aclk8]

  # Create instance: axi_noc_2, and set properties
  set axi_noc_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_noc:1.0 axi_noc_2 ]
  set_property -dict [ list \
   CONFIG.HBM_CHNL0_CONFIG {} \
   CONFIG.LOGO_FILE {data/noc_mc.png} \
   CONFIG.MC0_CONFIG_NUM {config17} \
   CONFIG.MC0_FLIPPED_PINOUT {true} \
   CONFIG.MC1_CONFIG_NUM {config17} \
   CONFIG.MC1_FLIPPED_PINOUT {true} \
   CONFIG.MC2_CONFIG_NUM {config17} \
   CONFIG.MC3_CONFIG_NUM {config17} \
   CONFIG.MC_ADDR_BIT9 {CA4} \
   CONFIG.MC_BG_WIDTH {2} \
   CONFIG.MC_CASLATENCY {21} \
   CONFIG.MC_CA_MIRROR {true} \
   CONFIG.MC_CHAN_REGION0 {DDR_CH1} \
   CONFIG.MC_COMPONENT_WIDTH {x8} \
   CONFIG.MC_CONFIG_NUM {config17} \
   CONFIG.MC_CS_WIDTH {2} \
   CONFIG.MC_DATAWIDTH {72} \
   CONFIG.MC_DDR4_2T {Disable} \
   CONFIG.MC_DDR_INIT_TIMEOUT {0x001118F4} \
   CONFIG.MC_DM_WIDTH {9} \
   CONFIG.MC_DQS_WIDTH {9} \
   CONFIG.MC_DQ_WIDTH {72} \
   CONFIG.MC_ECC {true} \
   CONFIG.MC_ECC_SCRUB_PERIOD {0x0035BC} \
   CONFIG.MC_ECC_SCRUB_SIZE {16384} \
   CONFIG.MC_EN_ECC_SCRUBBING {true} \
   CONFIG.MC_F1_LPDDR4_MR1 {0x0000} \
   CONFIG.MC_F1_LPDDR4_MR2 {0x0000} \
   CONFIG.MC_F1_LPDDR4_MR3 {0x0000} \
   CONFIG.MC_F1_LPDDR4_MR13 {0x0000} \
   CONFIG.MC_F1_TFAW {21000} \
   CONFIG.MC_F1_TFAWMIN {21000} \
   CONFIG.MC_F1_TRCD {13750} \
   CONFIG.MC_F1_TRCDMIN {13750} \
   CONFIG.MC_F1_TRRD_L {8} \
   CONFIG.MC_F1_TRRD_L_MIN {8} \
   CONFIG.MC_F1_TRRD_S {4} \
   CONFIG.MC_F1_TRRD_S_MIN {4} \
   CONFIG.MC_INIT_MEM_USING_ECC_SCRUB {true} \
   CONFIG.MC_INPUTCLK0_PERIOD {3998} \
   CONFIG.MC_INPUT_FREQUENCY0 {250.094} \
   CONFIG.MC_MEMORY_DENSITY {16GB} \
   CONFIG.MC_MEMORY_DEVICETYPE {UDIMMs} \
   CONFIG.MC_MEMORY_SPEEDGRADE {DDR4-3200AA(22-22-22)} \
   CONFIG.MC_MEMORY_TIMEPERIOD0 {727} \
   CONFIG.MC_MEMORY_TIMEPERIOD1 {695} \
   CONFIG.MC_MEM_DEVICE_WIDTH {x8} \
   CONFIG.MC_RANK {2} \
   CONFIG.MC_TCCD_L {7} \
   CONFIG.MC_TCKE {7} \
   CONFIG.MC_TCKEMIN {7} \
   CONFIG.MC_TFAW {21000} \
   CONFIG.MC_TFAWMIN {21000} \
   CONFIG.MC_TRC {45750} \
   CONFIG.MC_TRCD {13750} \
   CONFIG.MC_TRP {13750} \
   CONFIG.MC_TRPMIN {13750} \
   CONFIG.MC_TRRD_L {7} \
   CONFIG.MC_TRRD_S {4} \
   CONFIG.MC_TRRD_S_MIN {4} \
   CONFIG.MC_TRTP_nCK {11} \
   CONFIG.MC_TXP {9} \
   CONFIG.MC_TXPMIN {9} \
   CONFIG.MC_TXPR {496} \
   CONFIG.MC_USER_DEFINED_ADDRESS_MAP {1CS-16RA-2BA-2BG-10CA} \
   CONFIG.MC_WRITE_BANDWIDTH {5502.0635} \
   CONFIG.MC_XPLL_CLKOUT1_PERIOD {1454} \
   CONFIG.MC_XPLL_CLKOUT1_PHASE {255.26822558459423} \
   CONFIG.NUM_CLKS {0} \
   CONFIG.NUM_MC {2} \
   CONFIG.NUM_MCP {4} \
   CONFIG.NUM_MI {0} \
   CONFIG.NUM_NSI {4} \
   CONFIG.NUM_SI {0} \
 ] $axi_noc_2

  set_property -dict [ list \
   CONFIG.CONNECTIONS {MC_0 { read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}} } \
 ] [get_bd_intf_pins /axi_noc_2/S00_INI]

  set_property -dict [ list \
   CONFIG.CONNECTIONS {MC_1 { read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}} } \
 ] [get_bd_intf_pins /axi_noc_2/S01_INI]

  set_property -dict [ list \
   CONFIG.CONNECTIONS {MC_2 { read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}} } \
 ] [get_bd_intf_pins /axi_noc_2/S02_INI]

  set_property -dict [ list \
   CONFIG.CONNECTIONS {MC_3 { read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}} } \
 ] [get_bd_intf_pins /axi_noc_2/S03_INI]

  # Create instance: sys_clk_module_0, and set properties
  set block_name sys_clk_module
  set block_cell_name sys_clk_module_0
  if { [catch {set sys_clk_module_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $sys_clk_module_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: versal_cips_0, and set properties
  set versal_cips_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:versal_cips:2.1 versal_cips_0 ]
  set_property -dict [ list \
   CONFIG.CPM_PCIE0_MAX_LINK_SPEED {16.0_GT/s} \
   CONFIG.CPM_PCIE0_MODES {DMA} \
   CONFIG.CPM_PCIE0_PF0_BAR2_XDMA_ENABLED {0} \
   CONFIG.CPM_PCIE0_PF0_MSI_ENABLED {0} \
   CONFIG.CPM_PCIE0_PL_LINK_CAP_MAX_LINK_WIDTH {X8} \
   CONFIG.CPM_PCIE1_MAX_LINK_SPEED {16.0_GT/s} \
   CONFIG.CPM_PCIE1_MODES {PCIE} \
   CONFIG.CPM_PCIE1_PL_LINK_CAP_MAX_LINK_WIDTH {X8} \
   CONFIG.PMC_BANK_1_IO_STANDARD {LVCMOS3.3} \
   CONFIG.PMC_QSPI_GRP_FBCLK_ENABLE {1} \
   CONFIG.PMC_QSPI_PERIPHERAL_DATA_MODE {x4} \
   CONFIG.PMC_QSPI_PERIPHERAL_ENABLE {1} \
   CONFIG.PMC_QSPI_PERIPHERAL_MODE {Dual Parallel} \
   CONFIG.PMC_SD1_DATA_TRANSFER_MODE {8Bit} \
   CONFIG.PMC_SD1_GRP_RESET_ENABLE {1} \
   CONFIG.PMC_SD1_PERIPHERAL_ENABLE {1} \
   CONFIG.PMC_SD1_PERIPHERAL_IO {PMC_MIO 26 .. 36} \
   CONFIG.PMC_SD1_SLOT_TYPE {eMMC} \
   CONFIG.PMC_USE_PMC_NOC_AXI0 {1} \
   CONFIG.PS_ENET0_GRP_MDIO_ENABLE {1} \
   CONFIG.PS_ENET0_GRP_MDIO_IO {PS_MIO 24 .. 25} \
   CONFIG.PS_ENET0_PERIPHERAL_ENABLE {1} \
   CONFIG.PS_ENET0_PERIPHERAL_IO {PS_MIO 0 .. 11} \
   CONFIG.PS_ENET1_PERIPHERAL_ENABLE {0} \
   CONFIG.PS_GPIO_EMIO_PERIPHERAL_ENABLE {0} \
   CONFIG.PS_I2C0_PERIPHERAL_ENABLE {1} \
   CONFIG.PS_I2C0_PERIPHERAL_IO {PMC_MIO 46 .. 47} \
   CONFIG.PS_I2C1_PERIPHERAL_ENABLE {1} \
   CONFIG.PS_I2C1_PERIPHERAL_IO {PMC_MIO 44 .. 45} \
   CONFIG.PS_MIO_12_USAGE {Unassigned} \
   CONFIG.PS_PCIE_EP_RESET1_IO {PMC_MIO 38} \
   CONFIG.PS_PCIE_EP_RESET2_IO {PMC_MIO 39} \
   CONFIG.PS_PCIE_RESET_ENABLE {1} \
   CONFIG.PS_UART0_PERIPHERAL_ENABLE {1} \
   CONFIG.PS_UART0_PERIPHERAL_IO {PMC_MIO 42 .. 43} \
   CONFIG.PS_UART1_PERIPHERAL_ENABLE {0} \
   CONFIG.PS_USB3_PERIPHERAL_ENABLE {1} \
   CONFIG.PS_USE_PS_NOC_CCI {1} \
   CONFIG.PS_USE_PS_NOC_NCI_0 {1} \
   CONFIG.PS_USE_PS_NOC_NCI_1 {0} \
   CONFIG.PS_USE_PS_NOC_RPU_0 {1} \
   CONFIG.SUBPRESET1 {simple_temperature_monitoring} \
 ] $versal_cips_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1} \
 ] $xlconstant_0

  # Create interface connections
  connect_bd_intf_net -intf_net axi_noc_0_CH0_DDR4_0 [get_bd_intf_ports VSL_DIMM0] [get_bd_intf_pins axi_noc_0/CH0_DDR4_0]
  connect_bd_intf_net -intf_net axi_noc_0_M00_INI [get_bd_intf_pins axi_noc_0/M00_INI] [get_bd_intf_pins axi_noc_2/S00_INI]
  connect_bd_intf_net -intf_net axi_noc_0_M01_INI [get_bd_intf_pins axi_noc_0/M01_INI] [get_bd_intf_pins axi_noc_2/S01_INI]
  connect_bd_intf_net -intf_net axi_noc_0_M02_INI [get_bd_intf_pins axi_noc_0/M02_INI] [get_bd_intf_pins axi_noc_2/S02_INI]
  connect_bd_intf_net -intf_net axi_noc_0_M03_INI [get_bd_intf_pins axi_noc_0/M03_INI] [get_bd_intf_pins axi_noc_2/S03_INI]
  connect_bd_intf_net -intf_net axi_noc_2_CH0_DDR4_0 [get_bd_intf_ports VSL_DIMM1] [get_bd_intf_pins axi_noc_2/CH0_DDR4_0]
  connect_bd_intf_net -intf_net axi_noc_2_CH0_DDR4_1 [get_bd_intf_ports VSL_DIMM2] [get_bd_intf_pins axi_noc_2/CH0_DDR4_1]
  connect_bd_intf_net -intf_net gt_refclk0_0_1 [get_bd_intf_ports PCIe_0_REFCLK] [get_bd_intf_pins versal_cips_0/gt_refclk0]
  connect_bd_intf_net -intf_net gt_refclk1_0_1 [get_bd_intf_ports PCIe_1_REFCLK] [get_bd_intf_pins versal_cips_0/gt_refclk1]
  connect_bd_intf_net -intf_net sys_clk0_0_1 [get_bd_intf_ports VSL_DIMM0_REF_CLK] [get_bd_intf_pins axi_noc_0/sys_clk0]
  connect_bd_intf_net -intf_net sys_clk0_0_3 [get_bd_intf_ports VSL_DIMM1_REF_CLK] [get_bd_intf_pins axi_noc_2/sys_clk0]
  connect_bd_intf_net -intf_net sys_clk1_0_1 [get_bd_intf_ports VSL_DIMM2_REF_CLK] [get_bd_intf_pins axi_noc_2/sys_clk1]
  connect_bd_intf_net -intf_net versal_cips_0_CPM_PCIE_NOC_0 [get_bd_intf_pins axi_noc_0/S05_AXI] [get_bd_intf_pins versal_cips_0/CPM_PCIE_NOC_0]
  connect_bd_intf_net -intf_net versal_cips_0_CPM_PCIE_NOC_1 [get_bd_intf_pins axi_noc_0/S06_AXI] [get_bd_intf_pins versal_cips_0/CPM_PCIE_NOC_1]
  connect_bd_intf_net -intf_net versal_cips_0_FPD_AXI_NOC_0 [get_bd_intf_pins axi_noc_0/S04_AXI] [get_bd_intf_pins versal_cips_0/FPD_AXI_NOC_0]
  connect_bd_intf_net -intf_net versal_cips_0_FPD_CCI_NOC_0 [get_bd_intf_pins axi_noc_0/S00_AXI] [get_bd_intf_pins versal_cips_0/FPD_CCI_NOC_0]
  connect_bd_intf_net -intf_net versal_cips_0_FPD_CCI_NOC_1 [get_bd_intf_pins axi_noc_0/S01_AXI] [get_bd_intf_pins versal_cips_0/FPD_CCI_NOC_1]
  connect_bd_intf_net -intf_net versal_cips_0_FPD_CCI_NOC_2 [get_bd_intf_pins axi_noc_0/S02_AXI] [get_bd_intf_pins versal_cips_0/FPD_CCI_NOC_2]
  connect_bd_intf_net -intf_net versal_cips_0_FPD_CCI_NOC_3 [get_bd_intf_pins axi_noc_0/S03_AXI] [get_bd_intf_pins versal_cips_0/FPD_CCI_NOC_3]
  connect_bd_intf_net -intf_net versal_cips_0_NOC_LPD_AXI_0 [get_bd_intf_pins axi_noc_0/S07_AXI] [get_bd_intf_pins versal_cips_0/NOC_LPD_AXI_0]
  connect_bd_intf_net -intf_net versal_cips_0_PCIE0_GT [get_bd_intf_ports COMe_VSL_PCIE] [get_bd_intf_pins versal_cips_0/PCIE0_GT]
  connect_bd_intf_net -intf_net versal_cips_0_PCIE1_GT [get_bd_intf_ports OMe_VSL1_PCIE] [get_bd_intf_pins versal_cips_0/PCIE1_GT]
  connect_bd_intf_net -intf_net versal_cips_0_PMC_NOC_AXI_0 [get_bd_intf_pins axi_noc_0/S08_AXI] [get_bd_intf_pins versal_cips_0/PMC_NOC_AXI_0]

  # Create port connections
  connect_bd_net -net CNC_VSL_ALIGN_N_0_1 [get_bd_ports CNC_VSL_ALIGN_N] [get_bd_pins sys_clk_module_0/CNC_VSL_ALIGN_N]
  connect_bd_net -net CNC_VSL_ALIGN_P_0_1 [get_bd_ports CNC_VSL_ALIGN_P] [get_bd_pins sys_clk_module_0/CNC_VSL_ALIGN_P]
  connect_bd_net -net FIFO_CTRL_0_FIFO_RD_EN [get_bd_pins FIFO_CTRL_0/FIFO_RD_EN] [get_bd_pins advanced_io_wizard_0/fifo_rd_en]
  connect_bd_net -net LMK_VSL_250M_CLK_IN_N_0_1 [get_bd_ports LMK_VSL_250M_CLK_IN_N] [get_bd_pins sys_clk_module_0/LMK_VSL_250M_CLK_IN_N]
  connect_bd_net -net LMK_VSL_250M_CLK_IN_P_0_1 [get_bd_ports LMK_VSL_250M_CLK_IN_P] [get_bd_pins sys_clk_module_0/LMK_VSL_250M_CLK_IN_P]
  connect_bd_net -net LMK_VSL_500M_CLK_IN_N_0_1 [get_bd_ports LMK_VSL_500M_CLK_IN_N] [get_bd_pins sys_clk_module_0/LMK_VSL_500M_CLK_IN_N]
  connect_bd_net -net LMK_VSL_500M_CLK_IN_P_0_1 [get_bd_ports LMK_VSL_500M_CLK_IN_P] [get_bd_pins sys_clk_module_0/LMK_VSL_500M_CLK_IN_P]
  connect_bd_net -net LMK_VSL_RFU_CLK_IN_N_0_1 [get_bd_ports LMK_VSL_RFU_CLK_IN_N] [get_bd_pins sys_clk_module_0/LMK_VSL_RFU_CLK_IN_N]
  connect_bd_net -net LMK_VSL_RFU_CLK_IN_P_0_1 [get_bd_ports LMK_VSL_RFU_CLK_IN_P] [get_bd_pins sys_clk_module_0/LMK_VSL_RFU_CLK_IN_P]
  connect_bd_net -net LVDS_706_n_0_1 [get_bd_ports LVDS_706_n] [get_bd_pins advanced_io_wizard_0/LVDS_706_n]
  connect_bd_net -net LVDS_706_p_0_1 [get_bd_ports LVDS_706_p] [get_bd_pins advanced_io_wizard_0/LVDS_706_p]
  connect_bd_net -net LVDS_707_n_0_1 [get_bd_ports LVDS_707_n] [get_bd_pins advanced_io_wizard_0/LVDS_707_n]
  connect_bd_net -net LVDS_707_p_0_1 [get_bd_ports LVDS_707_p] [get_bd_pins advanced_io_wizard_0/LVDS_707_p]
  connect_bd_net -net LVDS_708_n_0_1 [get_bd_ports LVDS_708_n] [get_bd_pins advanced_io_wizard_0/LVDS_708_n]
  connect_bd_net -net LVDS_708_p_0_1 [get_bd_ports LVDS_708_p] [get_bd_pins advanced_io_wizard_0/LVDS_708_p]
  connect_bd_net -net Net [get_bd_ports XPLL_RST] [get_bd_pins advanced_io_wizard_0/bank0_pll_rst_pll] [get_bd_pins advanced_io_wizard_0/bank1_pll_rst_pll] [get_bd_pins advanced_io_wizard_0/bank2_pll_rst_pll]
  connect_bd_net -net RD_CLK_706_n_0_1 [get_bd_ports RD_CLK_706_n] [get_bd_pins advanced_io_wizard_0/RD_CLK_706_n]
  connect_bd_net -net RD_CLK_706_p_0_1 [get_bd_ports RD_CLK_706_p] [get_bd_pins advanced_io_wizard_0/RD_CLK_706_p]
  connect_bd_net -net RD_CLK_707_n_0_1 [get_bd_ports RD_CLK_707_n] [get_bd_pins advanced_io_wizard_0/RD_CLK_707_n]
  connect_bd_net -net RD_CLK_707_p_0_1 [get_bd_ports RD_CLK_707_p] [get_bd_pins advanced_io_wizard_0/RD_CLK_707_p]
  connect_bd_net -net RD_CLK_708_n_0_1 [get_bd_ports RD_CLK_708_n] [get_bd_pins advanced_io_wizard_0/RD_CLK_708_n]
  connect_bd_net -net RD_CLK_708_p_0_1 [get_bd_ports RD_CLK_708_p] [get_bd_pins advanced_io_wizard_0/RD_CLK_708_p]
  connect_bd_net -net XPLL_IN_n_0_1 [get_bd_ports XPLL_IN_n_0] [get_bd_pins advanced_io_wizard_0/XPLL_IN_n]
  connect_bd_net -net XPLL_IN_p_0_1 [get_bd_ports XPLL_IN_p_0] [get_bd_pins advanced_io_wizard_0/XPLL_IN_p]
  connect_bd_net -net advanced_io_wizard_0_bank0_pll_clkout0 [get_bd_pins FIFO_CTRL_0/clk] [get_bd_pins advanced_io_wizard_0/bank0_pll_clkout0] [get_bd_pins advanced_io_wizard_0/ctrl_clk] [get_bd_pins advanced_io_wizard_0/fifo_rd_clk]
  connect_bd_net -net advanced_io_wizard_0_fifo_empty [get_bd_pins FIFO_CTRL_0/FIFO_EMPTY] [get_bd_pins advanced_io_wizard_0/fifo_empty]
  connect_bd_net -net advanced_io_wizard_0_intf_rdy [get_bd_pins FIFO_CTRL_0/INT_RDY] [get_bd_pins advanced_io_wizard_0/intf_rdy]
  connect_bd_net -net data_to_fabric_LVDS_706 [get_bd_pins advanced_io_wizard_0/data_to_fabric_LVDS_706]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_nets data_to_fabric_LVDS_706]
  connect_bd_net -net data_to_fabric_LVDS_707 [get_bd_pins advanced_io_wizard_0/data_to_fabric_LVDS_707]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_nets data_to_fabric_LVDS_707]
  connect_bd_net -net data_to_fabric_LVDS_708 [get_bd_pins advanced_io_wizard_0/data_to_fabric_LVDS_708]
  set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_nets data_to_fabric_LVDS_708]
  connect_bd_net -net rst_0_1 [get_bd_ports CORE_RST] [get_bd_pins advanced_io_wizard_0/rst]
  connect_bd_net -net versal_cips_0_cpm_pcie_noc_axi0_clk [get_bd_pins axi_noc_0/aclk5] [get_bd_pins versal_cips_0/cpm_pcie_noc_axi0_clk]
  connect_bd_net -net versal_cips_0_cpm_pcie_noc_axi1_clk [get_bd_pins axi_noc_0/aclk6] [get_bd_pins versal_cips_0/cpm_pcie_noc_axi1_clk]
  connect_bd_net -net versal_cips_0_fpd_axi_noc_axi0_clk [get_bd_pins axi_noc_0/aclk4] [get_bd_pins versal_cips_0/fpd_axi_noc_axi0_clk]
  connect_bd_net -net versal_cips_0_fpd_cci_noc_axi0_clk [get_bd_pins axi_noc_0/aclk0] [get_bd_pins versal_cips_0/fpd_cci_noc_axi0_clk]
  connect_bd_net -net versal_cips_0_fpd_cci_noc_axi1_clk [get_bd_pins axi_noc_0/aclk1] [get_bd_pins versal_cips_0/fpd_cci_noc_axi1_clk]
  connect_bd_net -net versal_cips_0_fpd_cci_noc_axi2_clk [get_bd_pins axi_noc_0/aclk2] [get_bd_pins versal_cips_0/fpd_cci_noc_axi2_clk]
  connect_bd_net -net versal_cips_0_fpd_cci_noc_axi3_clk [get_bd_pins axi_noc_0/aclk3] [get_bd_pins versal_cips_0/fpd_cci_noc_axi3_clk]
  connect_bd_net -net versal_cips_0_lpd_axi_noc_clk [get_bd_pins axi_noc_0/aclk7] [get_bd_pins versal_cips_0/lpd_axi_noc_clk]
  connect_bd_net -net versal_cips_0_pmc_axi_noc_axi0_clk [get_bd_pins axi_noc_0/aclk8] [get_bd_pins versal_cips_0/pmc_axi_noc_axi0_clk]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins advanced_io_wizard_0/en_vtc] [get_bd_pins xlconstant_0/dout]

  # Create address segments
  assign_bd_address -offset 0x00000000 -range 0x80000000 -target_address_space [get_bd_addr_spaces versal_cips_0/DATA_CCI0] [get_bd_addr_segs axi_noc_0/S00_AXI/C0_DDR_LOW0] -force
  assign_bd_address -offset 0x000800000000 -range 0x000100000000 -target_address_space [get_bd_addr_spaces versal_cips_0/DATA_CCI0] [get_bd_addr_segs axi_noc_0/S00_AXI/C0_DDR_LOW1] -force
  assign_bd_address -offset 0x00000000 -range 0x80000000 -target_address_space [get_bd_addr_spaces versal_cips_0/DATA_CCI1] [get_bd_addr_segs axi_noc_0/S01_AXI/C1_DDR_LOW0] -force
  assign_bd_address -offset 0x000800000000 -range 0x000100000000 -target_address_space [get_bd_addr_spaces versal_cips_0/DATA_CCI1] [get_bd_addr_segs axi_noc_0/S01_AXI/C1_DDR_LOW1] -force
  assign_bd_address -offset 0x00000000 -range 0x80000000 -target_address_space [get_bd_addr_spaces versal_cips_0/DATA_CCI2] [get_bd_addr_segs axi_noc_0/S02_AXI/C2_DDR_LOW0] -force
  assign_bd_address -offset 0x000800000000 -range 0x000100000000 -target_address_space [get_bd_addr_spaces versal_cips_0/DATA_CCI2] [get_bd_addr_segs axi_noc_0/S02_AXI/C2_DDR_LOW1] -force
  assign_bd_address -offset 0x00000000 -range 0x80000000 -target_address_space [get_bd_addr_spaces versal_cips_0/DATA_CCI3] [get_bd_addr_segs axi_noc_0/S03_AXI/C3_DDR_LOW0] -force
  assign_bd_address -offset 0x000800000000 -range 0x000100000000 -target_address_space [get_bd_addr_spaces versal_cips_0/DATA_CCI3] [get_bd_addr_segs axi_noc_0/S03_AXI/C3_DDR_LOW1] -force
  assign_bd_address -offset 0x050000000000 -range 0x000200000000 -target_address_space [get_bd_addr_spaces versal_cips_0/DATA_CCI0] [get_bd_addr_segs axi_noc_2/S00_INI/C0_DDR_CH1x2] -force
  assign_bd_address -offset 0x050000000000 -range 0x000200000000 -target_address_space [get_bd_addr_spaces versal_cips_0/DATA_NCI0] [get_bd_addr_segs axi_noc_2/S00_INI/C0_DDR_CH1x2] -force
  assign_bd_address -offset 0x050000000000 -range 0x000200000000 -target_address_space [get_bd_addr_spaces versal_cips_0/DATA_PMC] [get_bd_addr_segs axi_noc_2/S00_INI/C0_DDR_CH1x2] -force
  assign_bd_address -offset 0x050000000000 -range 0x000200000000 -target_address_space [get_bd_addr_spaces versal_cips_0/DATA_PCIE0] [get_bd_addr_segs axi_noc_2/S00_INI/C0_DDR_CH1x2] -force
  assign_bd_address -offset 0x050000000000 -range 0x000200000000 -target_address_space [get_bd_addr_spaces versal_cips_0/DATA_PCIE1] [get_bd_addr_segs axi_noc_2/S00_INI/C0_DDR_CH1x2] -force
  assign_bd_address -offset 0x050000000000 -range 0x000200000000 -target_address_space [get_bd_addr_spaces versal_cips_0/DATA_RPU0] [get_bd_addr_segs axi_noc_2/S00_INI/C0_DDR_CH1x2] -force
  assign_bd_address -offset 0x050000000000 -range 0x000200000000 -target_address_space [get_bd_addr_spaces versal_cips_0/DATA_CCI1] [get_bd_addr_segs axi_noc_2/S01_INI/C1_DDR_CH1x2] -force
  assign_bd_address -offset 0x050000000000 -range 0x000200000000 -target_address_space [get_bd_addr_spaces versal_cips_0/DATA_CCI2] [get_bd_addr_segs axi_noc_2/S02_INI/C2_DDR_CH1x2] -force
  assign_bd_address -offset 0x050000000000 -range 0x000200000000 -target_address_space [get_bd_addr_spaces versal_cips_0/DATA_CCI3] [get_bd_addr_segs axi_noc_2/S03_INI/C3_DDR_CH1x2] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


