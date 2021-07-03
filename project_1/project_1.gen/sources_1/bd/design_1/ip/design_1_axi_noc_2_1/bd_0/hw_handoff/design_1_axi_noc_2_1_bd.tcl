
################################################################
# This is a generated script based on design: bd_8b85
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
# source bd_8b85_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcvc1802-vsva2197-2MP-e-S
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name bd_8b85

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

   create_bd_design -bdsource SBD $design_name

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


# Hierarchical cell: hier_nsw
proc create_hier_cell_hier_nsw { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_hier_nsw() - Empty argument(s)!"}
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:inimm_rtl:1.0 S00_INI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:inimm_rtl:1.0 S01_INI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:inimm_rtl:1.0 S02_INI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:inimm_rtl:1.0 S03_INI


  # Create pins
  create_bd_pin -dir O NSU
  create_bd_pin -dir O NSU1
  create_bd_pin -dir O NSU2
  create_bd_pin -dir O NSU3

  # Create instance: MC0_nsw, and set properties
  set MC0_nsw [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_nsw:1.0 MC0_nsw ]
  set_property -dict [ list \
   CONFIG.NSW_MODE {SW_Slave} \
   CONFIG.NSW_NUM_PATHS {1} \
   CONFIG.NSW_PATH_TYPE {RDWR} \
   CONFIG.NSW_PROTOCOL {MemoryMapped} \
 ] $MC0_nsw
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells /hier_nsw/MC0_nsw]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_cells /hier_nsw/MC0_nsw]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_CELL {true} [get_bd_cells /hier_nsw/MC0_nsw]

  # Create instance: MC1_nsw, and set properties
  set MC1_nsw [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_nsw:1.0 MC1_nsw ]
  set_property -dict [ list \
   CONFIG.NSW_MODE {SW_Slave} \
   CONFIG.NSW_NUM_PATHS {1} \
   CONFIG.NSW_PATH_TYPE {RDWR} \
   CONFIG.NSW_PROTOCOL {MemoryMapped} \
 ] $MC1_nsw
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells /hier_nsw/MC1_nsw]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_cells /hier_nsw/MC1_nsw]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_CELL {true} [get_bd_cells /hier_nsw/MC1_nsw]

  # Create instance: MC2_nsw, and set properties
  set MC2_nsw [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_nsw:1.0 MC2_nsw ]
  set_property -dict [ list \
   CONFIG.NSW_MODE {SW_Slave} \
   CONFIG.NSW_NUM_PATHS {1} \
   CONFIG.NSW_PATH_TYPE {RDWR} \
   CONFIG.NSW_PROTOCOL {MemoryMapped} \
 ] $MC2_nsw
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells /hier_nsw/MC2_nsw]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_cells /hier_nsw/MC2_nsw]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_CELL {true} [get_bd_cells /hier_nsw/MC2_nsw]

  # Create instance: MC3_nsw, and set properties
  set MC3_nsw [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_nsw:1.0 MC3_nsw ]
  set_property -dict [ list \
   CONFIG.NSW_MODE {SW_Slave} \
   CONFIG.NSW_NUM_PATHS {1} \
   CONFIG.NSW_PATH_TYPE {RDWR} \
   CONFIG.NSW_PROTOCOL {MemoryMapped} \
 ] $MC3_nsw
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells /hier_nsw/MC3_nsw]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_cells /hier_nsw/MC3_nsw]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_CELL {true} [get_bd_cells /hier_nsw/MC3_nsw]

  # Create instance: S00_INI_nsw, and set properties
  set S00_INI_nsw [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_nsw:1.0 S00_INI_nsw ]
  set_property -dict [ list \
   CONFIG.NSW_MODE {SW_INI_Master} \
   CONFIG.NSW_NUM_PATHS {1} \
   CONFIG.NSW_PATH_TYPE {RDWR} \
   CONFIG.NSW_PROTOCOL {MemoryMapped} \
 ] $S00_INI_nsw
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells /hier_nsw/S00_INI_nsw]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_cells /hier_nsw/S00_INI_nsw]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_CELL {true} [get_bd_cells /hier_nsw/S00_INI_nsw]

  # Create instance: S01_INI_nsw, and set properties
  set S01_INI_nsw [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_nsw:1.0 S01_INI_nsw ]
  set_property -dict [ list \
   CONFIG.NSW_MODE {SW_INI_Master} \
   CONFIG.NSW_NUM_PATHS {1} \
   CONFIG.NSW_PATH_TYPE {RDWR} \
   CONFIG.NSW_PROTOCOL {MemoryMapped} \
 ] $S01_INI_nsw
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells /hier_nsw/S01_INI_nsw]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_cells /hier_nsw/S01_INI_nsw]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_CELL {true} [get_bd_cells /hier_nsw/S01_INI_nsw]

  # Create instance: S02_INI_nsw, and set properties
  set S02_INI_nsw [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_nsw:1.0 S02_INI_nsw ]
  set_property -dict [ list \
   CONFIG.NSW_MODE {SW_INI_Master} \
   CONFIG.NSW_NUM_PATHS {1} \
   CONFIG.NSW_PATH_TYPE {RDWR} \
   CONFIG.NSW_PROTOCOL {MemoryMapped} \
 ] $S02_INI_nsw
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells /hier_nsw/S02_INI_nsw]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_cells /hier_nsw/S02_INI_nsw]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_CELL {true} [get_bd_cells /hier_nsw/S02_INI_nsw]

  # Create instance: S03_INI_nsw, and set properties
  set S03_INI_nsw [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_nsw:1.0 S03_INI_nsw ]
  set_property -dict [ list \
   CONFIG.NSW_MODE {SW_INI_Master} \
   CONFIG.NSW_NUM_PATHS {1} \
   CONFIG.NSW_PATH_TYPE {RDWR} \
   CONFIG.NSW_PROTOCOL {MemoryMapped} \
 ] $S03_INI_nsw
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells /hier_nsw/S03_INI_nsw]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_cells /hier_nsw/S03_INI_nsw]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_CELL {true} [get_bd_cells /hier_nsw/S03_INI_nsw]

  # Create interface connections
  connect_bd_intf_net -intf_net S00_INI_1 [get_bd_intf_pins S00_INI] [get_bd_intf_pins S00_INI_nsw/S_INIMM]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets S00_INI_1]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets S00_INI_1]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets S00_INI_1]
  connect_bd_intf_net -intf_net S00_INI_nsw_M00_INCMM [get_bd_intf_pins MC0_nsw/S00_INCMM] [get_bd_intf_pins S00_INI_nsw/M00_INCMM]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets S00_INI_nsw_M00_INCMM]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets S00_INI_nsw_M00_INCMM]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets S00_INI_nsw_M00_INCMM]
  connect_bd_intf_net -intf_net S01_INI_1 [get_bd_intf_pins S01_INI] [get_bd_intf_pins S01_INI_nsw/S_INIMM]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets S01_INI_1]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets S01_INI_1]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets S01_INI_1]
  connect_bd_intf_net -intf_net S01_INI_nsw_M00_INCMM [get_bd_intf_pins MC1_nsw/S00_INCMM] [get_bd_intf_pins S01_INI_nsw/M00_INCMM]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets S01_INI_nsw_M00_INCMM]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets S01_INI_nsw_M00_INCMM]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets S01_INI_nsw_M00_INCMM]
  connect_bd_intf_net -intf_net S02_INI_1 [get_bd_intf_pins S02_INI] [get_bd_intf_pins S02_INI_nsw/S_INIMM]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets S02_INI_1]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets S02_INI_1]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets S02_INI_1]
  connect_bd_intf_net -intf_net S02_INI_nsw_M00_INCMM [get_bd_intf_pins MC2_nsw/S00_INCMM] [get_bd_intf_pins S02_INI_nsw/M00_INCMM]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets S02_INI_nsw_M00_INCMM]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets S02_INI_nsw_M00_INCMM]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets S02_INI_nsw_M00_INCMM]
  connect_bd_intf_net -intf_net S03_INI_1 [get_bd_intf_pins S03_INI] [get_bd_intf_pins S03_INI_nsw/S_INIMM]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets S03_INI_1]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets S03_INI_1]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets S03_INI_1]
  connect_bd_intf_net -intf_net S03_INI_nsw_M00_INCMM [get_bd_intf_pins MC3_nsw/S00_INCMM] [get_bd_intf_pins S03_INI_nsw/M00_INCMM]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets S03_INI_nsw_M00_INCMM]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets S03_INI_nsw_M00_INCMM]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets S03_INI_nsw_M00_INCMM]

  # Create port connections
  connect_bd_net -net MC0_nsw_NSU [get_bd_pins NSU] [get_bd_pins MC0_nsw/NSU]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_nets MC0_nsw_NSU]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_nets MC0_nsw_NSU]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_nets MC0_nsw_NSU]
  connect_bd_net -net MC1_nsw_NSU [get_bd_pins NSU1] [get_bd_pins MC1_nsw/NSU]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_nets MC1_nsw_NSU]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_nets MC1_nsw_NSU]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_nets MC1_nsw_NSU]
  connect_bd_net -net MC2_nsw_NSU [get_bd_pins NSU2] [get_bd_pins MC2_nsw/NSU]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_nets MC2_nsw_NSU]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_nets MC2_nsw_NSU]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_nets MC2_nsw_NSU]
  connect_bd_net -net MC3_nsw_NSU [get_bd_pins NSU3] [get_bd_pins MC3_nsw/NSU]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_nets MC3_nsw_NSU]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_nets MC3_nsw_NSU]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_nets MC3_nsw_NSU]

  # Restore current instance
  current_bd_instance $oldCurInst
}


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
  set CH0_DDR4_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 CH0_DDR4_0 ]

  set CH0_DDR4_1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 CH0_DDR4_1 ]

  set S00_INI [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:inimm_rtl:1.0 S00_INI ]
  set_property -dict [ list \
   CONFIG.CONNECTIONS {MC_0 { read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}} } \
   ] $S00_INI

  set S01_INI [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:inimm_rtl:1.0 S01_INI ]
  set_property -dict [ list \
   CONFIG.CONNECTIONS {MC_1 { read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}} } \
   ] $S01_INI

  set S02_INI [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:inimm_rtl:1.0 S02_INI ]
  set_property -dict [ list \
   CONFIG.CONNECTIONS {MC_2 { read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}} } \
   ] $S02_INI

  set S03_INI [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:inimm_rtl:1.0 S03_INI ]
  set_property -dict [ list \
   CONFIG.CONNECTIONS {MC_3 { read_bw {1720} write_bw {1720} read_avg_burst {4} write_avg_burst {4}} } \
   ] $S03_INI

  set sys_clk0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 sys_clk0 ]

  set sys_clk1 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 sys_clk1 ]


  # Create ports

  # Create instance: MC0_ddrc, and set properties
  set MC0_ddrc [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_mc_ddr4:1.0 MC0_ddrc ]
  set_property -dict [ list \
   CONFIG.CONTROLLERTYPE {DDR4_SDRAM} \
   CONFIG.MC_ADDR_BIT7 {NC} \
   CONFIG.MC_ADDR_BIT8 {CA3} \
   CONFIG.MC_ADDR_BIT9 {CA4} \
   CONFIG.MC_ADDR_BIT10 {CA5} \
   CONFIG.MC_ADDR_BIT11 {CA6} \
   CONFIG.MC_ADDR_BIT12 {CA7} \
   CONFIG.MC_ADDR_BIT13 {CA8} \
   CONFIG.MC_ADDR_BIT14 {CA9} \
   CONFIG.MC_ADDR_BIT15 {BG1} \
   CONFIG.MC_ADDR_BIT16 {BA0} \
   CONFIG.MC_ADDR_BIT17 {BA1} \
   CONFIG.MC_ADDR_BIT18 {RA0} \
   CONFIG.MC_ADDR_BIT19 {RA1} \
   CONFIG.MC_ADDR_BIT20 {RA2} \
   CONFIG.MC_ADDR_BIT21 {RA3} \
   CONFIG.MC_ADDR_BIT22 {RA4} \
   CONFIG.MC_ADDR_BIT23 {RA5} \
   CONFIG.MC_ADDR_BIT24 {RA6} \
   CONFIG.MC_ADDR_BIT25 {RA7} \
   CONFIG.MC_ADDR_BIT26 {RA8} \
   CONFIG.MC_ADDR_BIT27 {RA9} \
   CONFIG.MC_ADDR_BIT28 {RA10} \
   CONFIG.MC_ADDR_BIT29 {RA11} \
   CONFIG.MC_ADDR_BIT30 {RA12} \
   CONFIG.MC_ADDR_BIT31 {RA13} \
   CONFIG.MC_ADDR_BIT32 {RA14} \
   CONFIG.MC_ADDR_BIT33 {RA15} \
   CONFIG.MC_ADDR_BIT34 {CS0} \
   CONFIG.MC_ATTR_FILE {nocattrs.dat} \
   CONFIG.MC_BG_WIDTH {2} \
   CONFIG.MC_CASLATENCY {21} \
   CONFIG.MC_CA_MIRROR {true} \
   CONFIG.MC_CHAN_REGION0 {DDR_CH1} \
   CONFIG.MC_CHAN_REGION1 {NONE} \
   CONFIG.MC_CKE_WIDTH {2} \
   CONFIG.MC_CK_WIDTH {2} \
   CONFIG.MC_COMPONENT_WIDTH {x8} \
   CONFIG.MC_CONFIG_NUM {config17} \
   CONFIG.MC_CS_WIDTH {2} \
   CONFIG.MC_DATAWIDTH {72} \
   CONFIG.MC_DC_CMD_CREDITS {0x000002a8} \
   CONFIG.MC_DDR4_2T {Disable} \
   CONFIG.MC_DDR_INIT_TIMEOUT {0x001118F4} \
   CONFIG.MC_DM_WIDTH {9} \
   CONFIG.MC_DQS_WIDTH {9} \
   CONFIG.MC_DQ_WIDTH {72} \
   CONFIG.MC_ECC {true} \
   CONFIG.MC_ECC_SCRUB_PERIOD {0x0035BC} \
   CONFIG.MC_ECC_SCRUB_SIZE {16384} \
   CONFIG.MC_EN_ECC_SCRUBBING {true} \
   CONFIG.MC_EN_INTR_RESP {FALSE} \
   CONFIG.MC_EXMON_CLR_EXE {0x00000100} \
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
   CONFIG.MC_FLIPPED_PINOUT {true} \
   CONFIG.MC_INIT_MEM_USING_ECC_SCRUB {true} \
   CONFIG.MC_INPUTCLK0_PERIOD {3998} \
   CONFIG.MC_INPUT_FREQUENCY0 {250.094} \
   CONFIG.MC_INTERLEAVE_SIZE {128} \
   CONFIG.MC_IP_TIMEPERIOD1 {695} \
   CONFIG.MC_MEMORY_DENSITY {16GB} \
   CONFIG.MC_MEMORY_DEVICETYPE {UDIMMs} \
   CONFIG.MC_MEMORY_SPEEDGRADE {DDR4-3200AA(22-22-22)} \
   CONFIG.MC_MEMORY_TIMEPERIOD0 {727} \
   CONFIG.MC_MEMORY_TIMEPERIOD1 {695} \
   CONFIG.MC_MEM_DEVICE_WIDTH {x8} \
   CONFIG.MC_MEM_INIT_FILE {no_file_loaded} \
   CONFIG.MC_NO_CHANNELS {Single} \
   CONFIG.MC_ODT_WIDTH {2} \
   CONFIG.MC_PHYS_NAME {DDRMC_X1Y0} \
   CONFIG.MC_RANK {2} \
   CONFIG.MC_READ_BANDWIDTH {5502.0635} \
   CONFIG.MC_REG_ADEC0 {0x00005000} \
   CONFIG.MC_REG_ADEC1 {0x00005000} \
   CONFIG.MC_REG_ADEC2 {0x00000000} \
   CONFIG.MC_REG_ADEC3 {0x00000000} \
   CONFIG.MC_REG_ADEC4 {0x30c30c22} \
   CONFIG.MC_REG_ADEC5 {0x165544d2} \
   CONFIG.MC_REG_ADEC6 {0x1b699617} \
   CONFIG.MC_REG_ADEC7 {0x207de75c} \
   CONFIG.MC_REG_ADEC8 {0x03c30c21} \
   CONFIG.MC_REG_ADEC9 {0x0a248144} \
   CONFIG.MC_REG_ADEC10 {0x1038d30b} \
   CONFIG.MC_REG_ADEC11 {0x00c0f191} \
   CONFIG.MC_REG_CMDQ_BER_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_CMDQ_BEW_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_CMDQ_CTRL0 {0x01ffffff} \
   CONFIG.MC_REG_CMDQ_CTRL1 {0x01084210} \
   CONFIG.MC_REG_CMDQ_ISR_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_CMDQ_ISW_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_CMDQ_LLR_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_NSU0_PORT {0x00000340} \
   CONFIG.MC_REG_NSU1_PORT {0x00000380} \
   CONFIG.MC_REG_NSU2_PORT {0x000003c0} \
   CONFIG.MC_REG_NSU3_PORT {0x00000400} \
   CONFIG.MC_REG_P0_BER_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P0_BEW_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P0_ISR_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P0_ISW_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P0_LLR_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P1_BER_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P1_BEW_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P1_ISR_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P1_ISW_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P1_LLR_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P2_BER_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P2_BEW_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P2_ISR_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P2_ISW_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P2_LLR_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P3_BER_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P3_BEW_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P3_ISR_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P3_ISW_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P3_LLR_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_QOS0 {0x001e01e0} \
   CONFIG.MC_REG_QOS1 {0x0ff00804} \
   CONFIG.MC_REG_QOS2 {0x0003fc02} \
   CONFIG.MC_REG_QOS_RATE_CTRL_SCALE {0x00000000} \
   CONFIG.MC_REG_QOS_TIMEOUT0 {0x00421084} \
   CONFIG.MC_REG_QOS_TIMEOUT1 {0xbbbbbbbb} \
   CONFIG.MC_REG_QOS_TIMEOUT2 {0x000000bb} \
   CONFIG.MC_REG_RATE_CTRL_SCALE {0x00000000} \
   CONFIG.MC_REG_RD_DRR_TKN_P0 {0x00ff0404} \
   CONFIG.MC_REG_RD_DRR_TKN_P1 {0x002b0404} \
   CONFIG.MC_REG_RD_DRR_TKN_P2 {0x00f40404} \
   CONFIG.MC_REG_RD_DRR_TKN_P3 {0x00f40404} \
   CONFIG.MC_REG_WR_DRR_TKN_P0 {0x0000ff04} \
   CONFIG.MC_REG_WR_DRR_TKN_P1 {0x00002b04} \
   CONFIG.MC_REG_WR_DRR_TKN_P2 {0x0000f404} \
   CONFIG.MC_REG_WR_DRR_TKN_P3 {0x0000f404} \
   CONFIG.MC_TCCD_L {7} \
   CONFIG.MC_TCCD_L_MIN {7} \
   CONFIG.MC_TCKE {7} \
   CONFIG.MC_TCKEMIN {7} \
   CONFIG.MC_TFAW {21000} \
   CONFIG.MC_TFAWMIN {21000} \
   CONFIG.MC_TFAW_nCK {29} \
   CONFIG.MC_TRC {45750} \
   CONFIG.MC_TRCD {13750} \
   CONFIG.MC_TRCDMIN {13750} \
   CONFIG.MC_TRCMIN {45750} \
   CONFIG.MC_TRP {13750} \
   CONFIG.MC_TRPMIN {13750} \
   CONFIG.MC_TRRD_L {7} \
   CONFIG.MC_TRRD_L_MIN {7} \
   CONFIG.MC_TRRD_S {4} \
   CONFIG.MC_TRRD_S_MIN {4} \
   CONFIG.MC_TRTP_nCK {11} \
   CONFIG.MC_TXP {9} \
   CONFIG.MC_TXPMIN {9} \
   CONFIG.MC_TXPR {496} \
   CONFIG.MC_UB_CLK_MUX {0x00000000} \
   CONFIG.MC_USER_DEFINED_ADDRESS_MAP {1CS-16RA-2BA-2BG-10CA} \
   CONFIG.MC_WRITE_BANDWIDTH {5502.0635} \
   CONFIG.MC_XMPU_CONFIG0 {0x00000008} \
   CONFIG.MC_XMPU_CONFIG1 {0x00000008} \
   CONFIG.MC_XMPU_CONFIG2 {0x00000008} \
   CONFIG.MC_XMPU_CONFIG3 {0x00000008} \
   CONFIG.MC_XMPU_CONFIG4 {0x00000008} \
   CONFIG.MC_XMPU_CONFIG5 {0x00000008} \
   CONFIG.MC_XMPU_CONFIG6 {0x00000008} \
   CONFIG.MC_XMPU_CONFIG7 {0x00000008} \
   CONFIG.MC_XMPU_CONFIG8 {0x00000008} \
   CONFIG.MC_XMPU_CONFIG9 {0x00000008} \
   CONFIG.MC_XMPU_CONFIG10 {0x00000008} \
   CONFIG.MC_XMPU_CONFIG11 {0x00000008} \
   CONFIG.MC_XMPU_CONFIG12 {0x00000008} \
   CONFIG.MC_XMPU_CONFIG13 {0x00000008} \
   CONFIG.MC_XMPU_CONFIG14 {0x00000008} \
   CONFIG.MC_XMPU_CONFIG15 {0x00000008} \
   CONFIG.MC_XMPU_CTRL {0x0000000b} \
   CONFIG.MC_XMPU_END_HI0 {0x00000000} \
   CONFIG.MC_XMPU_END_HI1 {0x00000000} \
   CONFIG.MC_XMPU_END_HI2 {0x00000000} \
   CONFIG.MC_XMPU_END_HI3 {0x00000000} \
   CONFIG.MC_XMPU_END_HI4 {0x00000000} \
   CONFIG.MC_XMPU_END_HI5 {0x00000000} \
   CONFIG.MC_XMPU_END_HI6 {0x00000000} \
   CONFIG.MC_XMPU_END_HI7 {0x00000000} \
   CONFIG.MC_XMPU_END_HI8 {0x00000000} \
   CONFIG.MC_XMPU_END_HI9 {0x00000000} \
   CONFIG.MC_XMPU_END_HI10 {0x00000000} \
   CONFIG.MC_XMPU_END_HI11 {0x00000000} \
   CONFIG.MC_XMPU_END_HI12 {0x00000000} \
   CONFIG.MC_XMPU_END_HI13 {0x00000000} \
   CONFIG.MC_XMPU_END_HI14 {0x00000000} \
   CONFIG.MC_XMPU_END_HI15 {0x00000000} \
   CONFIG.MC_XMPU_END_LO0 {0x00000000} \
   CONFIG.MC_XMPU_END_LO1 {0x00000000} \
   CONFIG.MC_XMPU_END_LO2 {0x00000000} \
   CONFIG.MC_XMPU_END_LO3 {0x00000000} \
   CONFIG.MC_XMPU_END_LO4 {0x00000000} \
   CONFIG.MC_XMPU_END_LO5 {0x00000000} \
   CONFIG.MC_XMPU_END_LO6 {0x00000000} \
   CONFIG.MC_XMPU_END_LO7 {0x00000000} \
   CONFIG.MC_XMPU_END_LO8 {0x00000000} \
   CONFIG.MC_XMPU_END_LO9 {0x00000000} \
   CONFIG.MC_XMPU_END_LO10 {0x00000000} \
   CONFIG.MC_XMPU_END_LO11 {0x00000000} \
   CONFIG.MC_XMPU_END_LO12 {0x00000000} \
   CONFIG.MC_XMPU_END_LO13 {0x00000000} \
   CONFIG.MC_XMPU_END_LO14 {0x00000000} \
   CONFIG.MC_XMPU_END_LO15 {0x00000000} \
   CONFIG.MC_XMPU_MASTER0 {0x00000000} \
   CONFIG.MC_XMPU_MASTER1 {0x00000000} \
   CONFIG.MC_XMPU_MASTER2 {0x00000000} \
   CONFIG.MC_XMPU_MASTER3 {0x00000000} \
   CONFIG.MC_XMPU_MASTER4 {0x00000000} \
   CONFIG.MC_XMPU_MASTER5 {0x00000000} \
   CONFIG.MC_XMPU_MASTER6 {0x00000000} \
   CONFIG.MC_XMPU_MASTER7 {0x00000000} \
   CONFIG.MC_XMPU_MASTER8 {0x00000000} \
   CONFIG.MC_XMPU_MASTER9 {0x00000000} \
   CONFIG.MC_XMPU_MASTER10 {0x00000000} \
   CONFIG.MC_XMPU_MASTER11 {0x00000000} \
   CONFIG.MC_XMPU_MASTER12 {0x00000000} \
   CONFIG.MC_XMPU_MASTER13 {0x00000000} \
   CONFIG.MC_XMPU_MASTER14 {0x00000000} \
   CONFIG.MC_XMPU_MASTER15 {0x00000000} \
   CONFIG.MC_XMPU_START_HI0 {0x00000000} \
   CONFIG.MC_XMPU_START_HI1 {0x00000000} \
   CONFIG.MC_XMPU_START_HI2 {0x00000000} \
   CONFIG.MC_XMPU_START_HI3 {0x00000000} \
   CONFIG.MC_XMPU_START_HI4 {0x00000000} \
   CONFIG.MC_XMPU_START_HI5 {0x00000000} \
   CONFIG.MC_XMPU_START_HI6 {0x00000000} \
   CONFIG.MC_XMPU_START_HI7 {0x00000000} \
   CONFIG.MC_XMPU_START_HI8 {0x00000000} \
   CONFIG.MC_XMPU_START_HI9 {0x00000000} \
   CONFIG.MC_XMPU_START_HI10 {0x00000000} \
   CONFIG.MC_XMPU_START_HI11 {0x00000000} \
   CONFIG.MC_XMPU_START_HI12 {0x00000000} \
   CONFIG.MC_XMPU_START_HI13 {0x00000000} \
   CONFIG.MC_XMPU_START_HI14 {0x00000000} \
   CONFIG.MC_XMPU_START_HI15 {0x00000000} \
   CONFIG.MC_XMPU_START_LO0 {0x00000000} \
   CONFIG.MC_XMPU_START_LO1 {0x00000000} \
   CONFIG.MC_XMPU_START_LO2 {0x00000000} \
   CONFIG.MC_XMPU_START_LO3 {0x00000000} \
   CONFIG.MC_XMPU_START_LO4 {0x00000000} \
   CONFIG.MC_XMPU_START_LO5 {0x00000000} \
   CONFIG.MC_XMPU_START_LO6 {0x00000000} \
   CONFIG.MC_XMPU_START_LO7 {0x00000000} \
   CONFIG.MC_XMPU_START_LO8 {0x00000000} \
   CONFIG.MC_XMPU_START_LO9 {0x00000000} \
   CONFIG.MC_XMPU_START_LO10 {0x00000000} \
   CONFIG.MC_XMPU_START_LO11 {0x00000000} \
   CONFIG.MC_XMPU_START_LO12 {0x00000000} \
   CONFIG.MC_XMPU_START_LO13 {0x00000000} \
   CONFIG.MC_XMPU_START_LO14 {0x00000000} \
   CONFIG.MC_XMPU_START_LO15 {0x00000000} \
   CONFIG.MC_XPLL_CLKOUT1_PERIOD {1454} \
   CONFIG.MC_XPLL_CLKOUT1_PHASE {255.26822558459423} \
   CONFIG.NUM_MC {2} \
   CONFIG.USER_NPI_REG_MC_NSU_0_EGR {0x00473610} \
   CONFIG.USER_NPI_REG_MC_NSU_0_ING {0x04534101} \
   CONFIG.USER_NPI_REG_MC_NSU_1_EGR {0x00473610} \
   CONFIG.USER_NPI_REG_MC_NSU_1_ING {0x04534101} \
   CONFIG.USER_NPI_REG_MC_NSU_2_EGR {0x00473610} \
   CONFIG.USER_NPI_REG_MC_NSU_2_ING {0x04534101} \
   CONFIG.USER_NPI_REG_MC_NSU_3_EGR {0x00473610} \
   CONFIG.USER_NPI_REG_MC_NSU_3_ING {0x04534101} \
 ] $MC0_ddrc
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells MC0_ddrc]

  # Create instance: MC1_ddrc, and set properties
  set MC1_ddrc [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_mc_ddr4:1.0 MC1_ddrc ]
  set_property -dict [ list \
   CONFIG.CONTROLLERTYPE {DDR4_SDRAM} \
   CONFIG.MC_ADDR_BIT7 {NC} \
   CONFIG.MC_ADDR_BIT8 {CA3} \
   CONFIG.MC_ADDR_BIT9 {CA4} \
   CONFIG.MC_ADDR_BIT10 {CA5} \
   CONFIG.MC_ADDR_BIT11 {CA6} \
   CONFIG.MC_ADDR_BIT12 {CA7} \
   CONFIG.MC_ADDR_BIT13 {CA8} \
   CONFIG.MC_ADDR_BIT14 {CA9} \
   CONFIG.MC_ADDR_BIT15 {BG1} \
   CONFIG.MC_ADDR_BIT16 {BA0} \
   CONFIG.MC_ADDR_BIT17 {BA1} \
   CONFIG.MC_ADDR_BIT18 {RA0} \
   CONFIG.MC_ADDR_BIT19 {RA1} \
   CONFIG.MC_ADDR_BIT20 {RA2} \
   CONFIG.MC_ADDR_BIT21 {RA3} \
   CONFIG.MC_ADDR_BIT22 {RA4} \
   CONFIG.MC_ADDR_BIT23 {RA5} \
   CONFIG.MC_ADDR_BIT24 {RA6} \
   CONFIG.MC_ADDR_BIT25 {RA7} \
   CONFIG.MC_ADDR_BIT26 {RA8} \
   CONFIG.MC_ADDR_BIT27 {RA9} \
   CONFIG.MC_ADDR_BIT28 {RA10} \
   CONFIG.MC_ADDR_BIT29 {RA11} \
   CONFIG.MC_ADDR_BIT30 {RA12} \
   CONFIG.MC_ADDR_BIT31 {RA13} \
   CONFIG.MC_ADDR_BIT32 {RA14} \
   CONFIG.MC_ADDR_BIT33 {RA15} \
   CONFIG.MC_ADDR_BIT34 {CS0} \
   CONFIG.MC_ATTR_FILE {nocattrs.dat} \
   CONFIG.MC_BG_WIDTH {2} \
   CONFIG.MC_CASLATENCY {21} \
   CONFIG.MC_CA_MIRROR {true} \
   CONFIG.MC_CHAN_REGION0 {DDR_CH1} \
   CONFIG.MC_CHAN_REGION1 {NONE} \
   CONFIG.MC_CKE_WIDTH {2} \
   CONFIG.MC_CK_WIDTH {2} \
   CONFIG.MC_COMPONENT_WIDTH {x8} \
   CONFIG.MC_CONFIG_NUM {config17} \
   CONFIG.MC_CS_WIDTH {2} \
   CONFIG.MC_DATAWIDTH {72} \
   CONFIG.MC_DC_CMD_CREDITS {0x000002a8} \
   CONFIG.MC_DDR4_2T {Disable} \
   CONFIG.MC_DDR_INIT_TIMEOUT {0x001118F4} \
   CONFIG.MC_DM_WIDTH {9} \
   CONFIG.MC_DQS_WIDTH {9} \
   CONFIG.MC_DQ_WIDTH {72} \
   CONFIG.MC_ECC {true} \
   CONFIG.MC_ECC_SCRUB_PERIOD {0x0035BC} \
   CONFIG.MC_ECC_SCRUB_SIZE {16384} \
   CONFIG.MC_EN_ECC_SCRUBBING {true} \
   CONFIG.MC_EN_INTR_RESP {FALSE} \
   CONFIG.MC_EXMON_CLR_EXE {0x00000100} \
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
   CONFIG.MC_FLIPPED_PINOUT {true} \
   CONFIG.MC_INIT_MEM_USING_ECC_SCRUB {true} \
   CONFIG.MC_INPUTCLK0_PERIOD {3998} \
   CONFIG.MC_INPUT_FREQUENCY0 {250.094} \
   CONFIG.MC_INTERLEAVE_SIZE {128} \
   CONFIG.MC_IP_TIMEPERIOD1 {695} \
   CONFIG.MC_MEMORY_DENSITY {16GB} \
   CONFIG.MC_MEMORY_DEVICETYPE {UDIMMs} \
   CONFIG.MC_MEMORY_SPEEDGRADE {DDR4-3200AA(22-22-22)} \
   CONFIG.MC_MEMORY_TIMEPERIOD0 {727} \
   CONFIG.MC_MEMORY_TIMEPERIOD1 {695} \
   CONFIG.MC_MEM_DEVICE_WIDTH {x8} \
   CONFIG.MC_MEM_INIT_FILE {no_file_loaded} \
   CONFIG.MC_NO_CHANNELS {Single} \
   CONFIG.MC_ODT_WIDTH {2} \
   CONFIG.MC_PHYS_NAME {DDRMC_X0Y0} \
   CONFIG.MC_RANK {2} \
   CONFIG.MC_READ_BANDWIDTH {5502.0635} \
   CONFIG.MC_REG_ADEC0 {0x00005000} \
   CONFIG.MC_REG_ADEC1 {0x00005000} \
   CONFIG.MC_REG_ADEC2 {0x00000000} \
   CONFIG.MC_REG_ADEC3 {0x00000000} \
   CONFIG.MC_REG_ADEC4 {0x30c30c22} \
   CONFIG.MC_REG_ADEC5 {0x165544d2} \
   CONFIG.MC_REG_ADEC6 {0x1b699617} \
   CONFIG.MC_REG_ADEC7 {0x207de75c} \
   CONFIG.MC_REG_ADEC8 {0x03c30c21} \
   CONFIG.MC_REG_ADEC9 {0x0a248144} \
   CONFIG.MC_REG_ADEC10 {0x1038d30b} \
   CONFIG.MC_REG_ADEC11 {0x00c0f191} \
   CONFIG.MC_REG_CMDQ_BER_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_CMDQ_BEW_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_CMDQ_CTRL0 {0x01ffffff} \
   CONFIG.MC_REG_CMDQ_CTRL1 {0x01084210} \
   CONFIG.MC_REG_CMDQ_ISR_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_CMDQ_ISW_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_CMDQ_LLR_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_NSU0_PORT {0x00000240} \
   CONFIG.MC_REG_NSU1_PORT {0x00000280} \
   CONFIG.MC_REG_NSU2_PORT {0x000002c0} \
   CONFIG.MC_REG_NSU3_PORT {0x00000300} \
   CONFIG.MC_REG_P0_BER_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P0_BEW_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P0_ISR_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P0_ISW_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P0_LLR_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P1_BER_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P1_BEW_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P1_ISR_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P1_ISW_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P1_LLR_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P2_BER_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P2_BEW_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P2_ISR_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P2_ISW_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P2_LLR_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P3_BER_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P3_BEW_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P3_ISR_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P3_ISW_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_P3_LLR_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_QOS0 {0x001e01e0} \
   CONFIG.MC_REG_QOS1 {0x0ff00804} \
   CONFIG.MC_REG_QOS2 {0x0003fc02} \
   CONFIG.MC_REG_QOS_RATE_CTRL_SCALE {0x00000000} \
   CONFIG.MC_REG_QOS_TIMEOUT0 {0x00421084} \
   CONFIG.MC_REG_QOS_TIMEOUT1 {0xbbbbbbbb} \
   CONFIG.MC_REG_QOS_TIMEOUT2 {0x000000bb} \
   CONFIG.MC_REG_RATE_CTRL_SCALE {0x00000000} \
   CONFIG.MC_REG_RD_DRR_TKN_P0 {0x00ff0404} \
   CONFIG.MC_REG_RD_DRR_TKN_P1 {0x002b0404} \
   CONFIG.MC_REG_RD_DRR_TKN_P2 {0x00f40404} \
   CONFIG.MC_REG_RD_DRR_TKN_P3 {0x00f40404} \
   CONFIG.MC_REG_WR_DRR_TKN_P0 {0x0000ff04} \
   CONFIG.MC_REG_WR_DRR_TKN_P1 {0x00002b04} \
   CONFIG.MC_REG_WR_DRR_TKN_P2 {0x0000f404} \
   CONFIG.MC_REG_WR_DRR_TKN_P3 {0x0000f404} \
   CONFIG.MC_TCCD_L {7} \
   CONFIG.MC_TCCD_L_MIN {7} \
   CONFIG.MC_TCKE {7} \
   CONFIG.MC_TCKEMIN {7} \
   CONFIG.MC_TFAW {21000} \
   CONFIG.MC_TFAWMIN {21000} \
   CONFIG.MC_TFAW_nCK {29} \
   CONFIG.MC_TRC {45750} \
   CONFIG.MC_TRCD {13750} \
   CONFIG.MC_TRCDMIN {13750} \
   CONFIG.MC_TRCMIN {45750} \
   CONFIG.MC_TRP {13750} \
   CONFIG.MC_TRPMIN {13750} \
   CONFIG.MC_TRRD_L {7} \
   CONFIG.MC_TRRD_L_MIN {7} \
   CONFIG.MC_TRRD_S {4} \
   CONFIG.MC_TRRD_S_MIN {4} \
   CONFIG.MC_TRTP_nCK {11} \
   CONFIG.MC_TXP {9} \
   CONFIG.MC_TXPMIN {9} \
   CONFIG.MC_TXPR {496} \
   CONFIG.MC_UB_CLK_MUX {0x00000000} \
   CONFIG.MC_USER_DEFINED_ADDRESS_MAP {1CS-16RA-2BA-2BG-10CA} \
   CONFIG.MC_WRITE_BANDWIDTH {5502.0635} \
   CONFIG.MC_XMPU_CONFIG0 {0x00000008} \
   CONFIG.MC_XMPU_CONFIG1 {0x00000008} \
   CONFIG.MC_XMPU_CONFIG2 {0x00000008} \
   CONFIG.MC_XMPU_CONFIG3 {0x00000008} \
   CONFIG.MC_XMPU_CONFIG4 {0x00000008} \
   CONFIG.MC_XMPU_CONFIG5 {0x00000008} \
   CONFIG.MC_XMPU_CONFIG6 {0x00000008} \
   CONFIG.MC_XMPU_CONFIG7 {0x00000008} \
   CONFIG.MC_XMPU_CONFIG8 {0x00000008} \
   CONFIG.MC_XMPU_CONFIG9 {0x00000008} \
   CONFIG.MC_XMPU_CONFIG10 {0x00000008} \
   CONFIG.MC_XMPU_CONFIG11 {0x00000008} \
   CONFIG.MC_XMPU_CONFIG12 {0x00000008} \
   CONFIG.MC_XMPU_CONFIG13 {0x00000008} \
   CONFIG.MC_XMPU_CONFIG14 {0x00000008} \
   CONFIG.MC_XMPU_CONFIG15 {0x00000008} \
   CONFIG.MC_XMPU_CTRL {0x0000000b} \
   CONFIG.MC_XMPU_END_HI0 {0x00000000} \
   CONFIG.MC_XMPU_END_HI1 {0x00000000} \
   CONFIG.MC_XMPU_END_HI2 {0x00000000} \
   CONFIG.MC_XMPU_END_HI3 {0x00000000} \
   CONFIG.MC_XMPU_END_HI4 {0x00000000} \
   CONFIG.MC_XMPU_END_HI5 {0x00000000} \
   CONFIG.MC_XMPU_END_HI6 {0x00000000} \
   CONFIG.MC_XMPU_END_HI7 {0x00000000} \
   CONFIG.MC_XMPU_END_HI8 {0x00000000} \
   CONFIG.MC_XMPU_END_HI9 {0x00000000} \
   CONFIG.MC_XMPU_END_HI10 {0x00000000} \
   CONFIG.MC_XMPU_END_HI11 {0x00000000} \
   CONFIG.MC_XMPU_END_HI12 {0x00000000} \
   CONFIG.MC_XMPU_END_HI13 {0x00000000} \
   CONFIG.MC_XMPU_END_HI14 {0x00000000} \
   CONFIG.MC_XMPU_END_HI15 {0x00000000} \
   CONFIG.MC_XMPU_END_LO0 {0x00000000} \
   CONFIG.MC_XMPU_END_LO1 {0x00000000} \
   CONFIG.MC_XMPU_END_LO2 {0x00000000} \
   CONFIG.MC_XMPU_END_LO3 {0x00000000} \
   CONFIG.MC_XMPU_END_LO4 {0x00000000} \
   CONFIG.MC_XMPU_END_LO5 {0x00000000} \
   CONFIG.MC_XMPU_END_LO6 {0x00000000} \
   CONFIG.MC_XMPU_END_LO7 {0x00000000} \
   CONFIG.MC_XMPU_END_LO8 {0x00000000} \
   CONFIG.MC_XMPU_END_LO9 {0x00000000} \
   CONFIG.MC_XMPU_END_LO10 {0x00000000} \
   CONFIG.MC_XMPU_END_LO11 {0x00000000} \
   CONFIG.MC_XMPU_END_LO12 {0x00000000} \
   CONFIG.MC_XMPU_END_LO13 {0x00000000} \
   CONFIG.MC_XMPU_END_LO14 {0x00000000} \
   CONFIG.MC_XMPU_END_LO15 {0x00000000} \
   CONFIG.MC_XMPU_MASTER0 {0x00000000} \
   CONFIG.MC_XMPU_MASTER1 {0x00000000} \
   CONFIG.MC_XMPU_MASTER2 {0x00000000} \
   CONFIG.MC_XMPU_MASTER3 {0x00000000} \
   CONFIG.MC_XMPU_MASTER4 {0x00000000} \
   CONFIG.MC_XMPU_MASTER5 {0x00000000} \
   CONFIG.MC_XMPU_MASTER6 {0x00000000} \
   CONFIG.MC_XMPU_MASTER7 {0x00000000} \
   CONFIG.MC_XMPU_MASTER8 {0x00000000} \
   CONFIG.MC_XMPU_MASTER9 {0x00000000} \
   CONFIG.MC_XMPU_MASTER10 {0x00000000} \
   CONFIG.MC_XMPU_MASTER11 {0x00000000} \
   CONFIG.MC_XMPU_MASTER12 {0x00000000} \
   CONFIG.MC_XMPU_MASTER13 {0x00000000} \
   CONFIG.MC_XMPU_MASTER14 {0x00000000} \
   CONFIG.MC_XMPU_MASTER15 {0x00000000} \
   CONFIG.MC_XMPU_START_HI0 {0x00000000} \
   CONFIG.MC_XMPU_START_HI1 {0x00000000} \
   CONFIG.MC_XMPU_START_HI2 {0x00000000} \
   CONFIG.MC_XMPU_START_HI3 {0x00000000} \
   CONFIG.MC_XMPU_START_HI4 {0x00000000} \
   CONFIG.MC_XMPU_START_HI5 {0x00000000} \
   CONFIG.MC_XMPU_START_HI6 {0x00000000} \
   CONFIG.MC_XMPU_START_HI7 {0x00000000} \
   CONFIG.MC_XMPU_START_HI8 {0x00000000} \
   CONFIG.MC_XMPU_START_HI9 {0x00000000} \
   CONFIG.MC_XMPU_START_HI10 {0x00000000} \
   CONFIG.MC_XMPU_START_HI11 {0x00000000} \
   CONFIG.MC_XMPU_START_HI12 {0x00000000} \
   CONFIG.MC_XMPU_START_HI13 {0x00000000} \
   CONFIG.MC_XMPU_START_HI14 {0x00000000} \
   CONFIG.MC_XMPU_START_HI15 {0x00000000} \
   CONFIG.MC_XMPU_START_LO0 {0x00000000} \
   CONFIG.MC_XMPU_START_LO1 {0x00000000} \
   CONFIG.MC_XMPU_START_LO2 {0x00000000} \
   CONFIG.MC_XMPU_START_LO3 {0x00000000} \
   CONFIG.MC_XMPU_START_LO4 {0x00000000} \
   CONFIG.MC_XMPU_START_LO5 {0x00000000} \
   CONFIG.MC_XMPU_START_LO6 {0x00000000} \
   CONFIG.MC_XMPU_START_LO7 {0x00000000} \
   CONFIG.MC_XMPU_START_LO8 {0x00000000} \
   CONFIG.MC_XMPU_START_LO9 {0x00000000} \
   CONFIG.MC_XMPU_START_LO10 {0x00000000} \
   CONFIG.MC_XMPU_START_LO11 {0x00000000} \
   CONFIG.MC_XMPU_START_LO12 {0x00000000} \
   CONFIG.MC_XMPU_START_LO13 {0x00000000} \
   CONFIG.MC_XMPU_START_LO14 {0x00000000} \
   CONFIG.MC_XMPU_START_LO15 {0x00000000} \
   CONFIG.MC_XPLL_CLKOUT1_PERIOD {1454} \
   CONFIG.MC_XPLL_CLKOUT1_PHASE {255.26822558459423} \
   CONFIG.NUM_MC {2} \
   CONFIG.USER_NPI_REG_MC_NSU_0_EGR {0x00473610} \
   CONFIG.USER_NPI_REG_MC_NSU_0_ING {0x04534101} \
   CONFIG.USER_NPI_REG_MC_NSU_1_EGR {0x00473610} \
   CONFIG.USER_NPI_REG_MC_NSU_1_ING {0x04534101} \
   CONFIG.USER_NPI_REG_MC_NSU_2_EGR {0x00473610} \
   CONFIG.USER_NPI_REG_MC_NSU_2_ING {0x04534101} \
   CONFIG.USER_NPI_REG_MC_NSU_3_EGR {0x00473610} \
   CONFIG.USER_NPI_REG_MC_NSU_3_ING {0x04534101} \
 ] $MC1_ddrc
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells MC1_ddrc]

  # Create instance: hier_nsw
  create_hier_cell_hier_nsw [current_bd_instance .] hier_nsw

  # Create interface connections
  connect_bd_intf_net -intf_net MC0_ddrc_CH0_DDR4 [get_bd_intf_ports CH0_DDR4_0] [get_bd_intf_pins MC0_ddrc/CH0_DDR4]
  connect_bd_intf_net -intf_net MC1_ddrc_CH0_DDR4 [get_bd_intf_ports CH0_DDR4_1] [get_bd_intf_pins MC1_ddrc/CH0_DDR4]
  connect_bd_intf_net -intf_net S00_INI_1 [get_bd_intf_ports S00_INI] [get_bd_intf_pins hier_nsw/S00_INI]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets S00_INI_1]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets S00_INI_1]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets S00_INI_1]
  connect_bd_intf_net -intf_net S01_INI_1 [get_bd_intf_ports S01_INI] [get_bd_intf_pins hier_nsw/S01_INI]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets S01_INI_1]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets S01_INI_1]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets S01_INI_1]
  connect_bd_intf_net -intf_net S02_INI_1 [get_bd_intf_ports S02_INI] [get_bd_intf_pins hier_nsw/S02_INI]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets S02_INI_1]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets S02_INI_1]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets S02_INI_1]
  connect_bd_intf_net -intf_net S03_INI_1 [get_bd_intf_ports S03_INI] [get_bd_intf_pins hier_nsw/S03_INI]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets S03_INI_1]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets S03_INI_1]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets S03_INI_1]
  connect_bd_intf_net -intf_net sys_clk0_1 [get_bd_intf_ports sys_clk0] [get_bd_intf_pins MC0_ddrc/SYS_CLK]
  connect_bd_intf_net -intf_net sys_clk1_1 [get_bd_intf_ports sys_clk1] [get_bd_intf_pins MC1_ddrc/SYS_CLK]

  # Create port connections
  connect_bd_net -net MC0_nsw_NSU [get_bd_pins MC0_ddrc/from_noc_0] [get_bd_pins MC1_ddrc/from_noc_0] [get_bd_pins hier_nsw/NSU]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_nets MC0_nsw_NSU]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_nets MC0_nsw_NSU]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_nets MC0_nsw_NSU]
  connect_bd_net -net MC1_nsw_NSU [get_bd_pins MC0_ddrc/from_noc_1] [get_bd_pins MC1_ddrc/from_noc_1] [get_bd_pins hier_nsw/NSU1]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_nets MC1_nsw_NSU]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_nets MC1_nsw_NSU]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_nets MC1_nsw_NSU]
  connect_bd_net -net MC2_nsw_NSU [get_bd_pins MC0_ddrc/from_noc_2] [get_bd_pins MC1_ddrc/from_noc_2] [get_bd_pins hier_nsw/NSU2]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_nets MC2_nsw_NSU]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_nets MC2_nsw_NSU]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_nets MC2_nsw_NSU]
  connect_bd_net -net MC3_nsw_NSU [get_bd_pins MC0_ddrc/from_noc_3] [get_bd_pins MC1_ddrc/from_noc_3] [get_bd_pins hier_nsw/NSU3]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_nets MC3_nsw_NSU]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_nets MC3_nsw_NSU]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_nets MC3_nsw_NSU]
  connect_bd_net -net mc0_ddrc_dmc2noc_credit_rdy_0 [get_bd_pins MC0_ddrc/dmc2noc_credit_rdy_0]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_credit_rdy_0]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_credit_rdy_0]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_credit_rdy_0]
  connect_bd_net -net mc0_ddrc_dmc2noc_credit_rdy_1 [get_bd_pins MC0_ddrc/dmc2noc_credit_rdy_1]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_credit_rdy_1]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_credit_rdy_1]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_credit_rdy_1]
  connect_bd_net -net mc0_ddrc_dmc2noc_credit_rdy_2 [get_bd_pins MC0_ddrc/dmc2noc_credit_rdy_2]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_credit_rdy_2]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_credit_rdy_2]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_credit_rdy_2]
  connect_bd_net -net mc0_ddrc_dmc2noc_credit_rdy_3 [get_bd_pins MC0_ddrc/dmc2noc_credit_rdy_3]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_credit_rdy_3]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_credit_rdy_3]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_credit_rdy_3]
  connect_bd_net -net mc0_ddrc_dmc2noc_credit_rtn_0 [get_bd_pins MC0_ddrc/dmc2noc_credit_rtn_0]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_credit_rtn_0]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_credit_rtn_0]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_credit_rtn_0]
  connect_bd_net -net mc0_ddrc_dmc2noc_credit_rtn_1 [get_bd_pins MC0_ddrc/dmc2noc_credit_rtn_1]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_credit_rtn_1]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_credit_rtn_1]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_credit_rtn_1]
  connect_bd_net -net mc0_ddrc_dmc2noc_credit_rtn_2 [get_bd_pins MC0_ddrc/dmc2noc_credit_rtn_2]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_credit_rtn_2]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_credit_rtn_2]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_credit_rtn_2]
  connect_bd_net -net mc0_ddrc_dmc2noc_credit_rtn_3 [get_bd_pins MC0_ddrc/dmc2noc_credit_rtn_3]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_credit_rtn_3]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_credit_rtn_3]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_credit_rtn_3]
  connect_bd_net -net mc0_ddrc_dmc2noc_data_out_0 [get_bd_pins MC0_ddrc/dmc2noc_data_out_0]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_data_out_0]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_data_out_0]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_data_out_0]
  connect_bd_net -net mc0_ddrc_dmc2noc_data_out_1 [get_bd_pins MC0_ddrc/dmc2noc_data_out_1]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_data_out_1]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_data_out_1]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_data_out_1]
  connect_bd_net -net mc0_ddrc_dmc2noc_data_out_2 [get_bd_pins MC0_ddrc/dmc2noc_data_out_2]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_data_out_2]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_data_out_2]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_data_out_2]
  connect_bd_net -net mc0_ddrc_dmc2noc_data_out_3 [get_bd_pins MC0_ddrc/dmc2noc_data_out_3]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_data_out_3]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_data_out_3]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_data_out_3]
  connect_bd_net -net mc0_ddrc_dmc2noc_valid_out_0 [get_bd_pins MC0_ddrc/dmc2noc_valid_out_0]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_valid_out_0]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_valid_out_0]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_valid_out_0]
  connect_bd_net -net mc0_ddrc_dmc2noc_valid_out_1 [get_bd_pins MC0_ddrc/dmc2noc_valid_out_1]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_valid_out_1]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_valid_out_1]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_valid_out_1]
  connect_bd_net -net mc0_ddrc_dmc2noc_valid_out_2 [get_bd_pins MC0_ddrc/dmc2noc_valid_out_2]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_valid_out_2]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_valid_out_2]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_valid_out_2]
  connect_bd_net -net mc0_ddrc_dmc2noc_valid_out_3 [get_bd_pins MC0_ddrc/dmc2noc_valid_out_3]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_valid_out_3]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_valid_out_3]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc0_ddrc_dmc2noc_valid_out_3]
  connect_bd_net -net mc0_ddrc_noc2dmc_credit_rdy_0 [get_bd_pins MC0_ddrc/noc2dmc_credit_rdy_0]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_credit_rdy_0]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_credit_rdy_0]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_credit_rdy_0]
  connect_bd_net -net mc0_ddrc_noc2dmc_credit_rdy_1 [get_bd_pins MC0_ddrc/noc2dmc_credit_rdy_1]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_credit_rdy_1]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_credit_rdy_1]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_credit_rdy_1]
  connect_bd_net -net mc0_ddrc_noc2dmc_credit_rdy_2 [get_bd_pins MC0_ddrc/noc2dmc_credit_rdy_2]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_credit_rdy_2]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_credit_rdy_2]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_credit_rdy_2]
  connect_bd_net -net mc0_ddrc_noc2dmc_credit_rdy_3 [get_bd_pins MC0_ddrc/noc2dmc_credit_rdy_3]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_credit_rdy_3]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_credit_rdy_3]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_credit_rdy_3]
  connect_bd_net -net mc0_ddrc_noc2dmc_credit_rtn_0 [get_bd_pins MC0_ddrc/noc2dmc_credit_rtn_0]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_credit_rtn_0]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_credit_rtn_0]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_credit_rtn_0]
  connect_bd_net -net mc0_ddrc_noc2dmc_credit_rtn_1 [get_bd_pins MC0_ddrc/noc2dmc_credit_rtn_1]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_credit_rtn_1]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_credit_rtn_1]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_credit_rtn_1]
  connect_bd_net -net mc0_ddrc_noc2dmc_credit_rtn_2 [get_bd_pins MC0_ddrc/noc2dmc_credit_rtn_2]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_credit_rtn_2]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_credit_rtn_2]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_credit_rtn_2]
  connect_bd_net -net mc0_ddrc_noc2dmc_credit_rtn_3 [get_bd_pins MC0_ddrc/noc2dmc_credit_rtn_3]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_credit_rtn_3]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_credit_rtn_3]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_credit_rtn_3]
  connect_bd_net -net mc0_ddrc_noc2dmc_data_in_0 [get_bd_pins MC0_ddrc/noc2dmc_data_in_0]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_data_in_0]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_data_in_0]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_data_in_0]
  connect_bd_net -net mc0_ddrc_noc2dmc_data_in_1 [get_bd_pins MC0_ddrc/noc2dmc_data_in_1]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_data_in_1]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_data_in_1]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_data_in_1]
  connect_bd_net -net mc0_ddrc_noc2dmc_data_in_2 [get_bd_pins MC0_ddrc/noc2dmc_data_in_2]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_data_in_2]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_data_in_2]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_data_in_2]
  connect_bd_net -net mc0_ddrc_noc2dmc_data_in_3 [get_bd_pins MC0_ddrc/noc2dmc_data_in_3]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_data_in_3]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_data_in_3]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_data_in_3]
  connect_bd_net -net mc0_ddrc_noc2dmc_valid_in_0 [get_bd_pins MC0_ddrc/noc2dmc_valid_in_0]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_valid_in_0]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_valid_in_0]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_valid_in_0]
  connect_bd_net -net mc0_ddrc_noc2dmc_valid_in_1 [get_bd_pins MC0_ddrc/noc2dmc_valid_in_1]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_valid_in_1]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_valid_in_1]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_valid_in_1]
  connect_bd_net -net mc0_ddrc_noc2dmc_valid_in_2 [get_bd_pins MC0_ddrc/noc2dmc_valid_in_2]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_valid_in_2]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_valid_in_2]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_valid_in_2]
  connect_bd_net -net mc0_ddrc_noc2dmc_valid_in_3 [get_bd_pins MC0_ddrc/noc2dmc_valid_in_3]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_valid_in_3]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_valid_in_3]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc0_ddrc_noc2dmc_valid_in_3]
  connect_bd_net -net mc1_ddrc_dmc2noc_credit_rdy_0 [get_bd_pins MC1_ddrc/dmc2noc_credit_rdy_0]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_credit_rdy_0]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_credit_rdy_0]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_credit_rdy_0]
  connect_bd_net -net mc1_ddrc_dmc2noc_credit_rdy_1 [get_bd_pins MC1_ddrc/dmc2noc_credit_rdy_1]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_credit_rdy_1]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_credit_rdy_1]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_credit_rdy_1]
  connect_bd_net -net mc1_ddrc_dmc2noc_credit_rdy_2 [get_bd_pins MC1_ddrc/dmc2noc_credit_rdy_2]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_credit_rdy_2]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_credit_rdy_2]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_credit_rdy_2]
  connect_bd_net -net mc1_ddrc_dmc2noc_credit_rdy_3 [get_bd_pins MC1_ddrc/dmc2noc_credit_rdy_3]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_credit_rdy_3]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_credit_rdy_3]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_credit_rdy_3]
  connect_bd_net -net mc1_ddrc_dmc2noc_credit_rtn_0 [get_bd_pins MC1_ddrc/dmc2noc_credit_rtn_0]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_credit_rtn_0]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_credit_rtn_0]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_credit_rtn_0]
  connect_bd_net -net mc1_ddrc_dmc2noc_credit_rtn_1 [get_bd_pins MC1_ddrc/dmc2noc_credit_rtn_1]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_credit_rtn_1]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_credit_rtn_1]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_credit_rtn_1]
  connect_bd_net -net mc1_ddrc_dmc2noc_credit_rtn_2 [get_bd_pins MC1_ddrc/dmc2noc_credit_rtn_2]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_credit_rtn_2]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_credit_rtn_2]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_credit_rtn_2]
  connect_bd_net -net mc1_ddrc_dmc2noc_credit_rtn_3 [get_bd_pins MC1_ddrc/dmc2noc_credit_rtn_3]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_credit_rtn_3]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_credit_rtn_3]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_credit_rtn_3]
  connect_bd_net -net mc1_ddrc_dmc2noc_data_out_0 [get_bd_pins MC1_ddrc/dmc2noc_data_out_0]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_data_out_0]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_data_out_0]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_data_out_0]
  connect_bd_net -net mc1_ddrc_dmc2noc_data_out_1 [get_bd_pins MC1_ddrc/dmc2noc_data_out_1]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_data_out_1]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_data_out_1]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_data_out_1]
  connect_bd_net -net mc1_ddrc_dmc2noc_data_out_2 [get_bd_pins MC1_ddrc/dmc2noc_data_out_2]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_data_out_2]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_data_out_2]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_data_out_2]
  connect_bd_net -net mc1_ddrc_dmc2noc_data_out_3 [get_bd_pins MC1_ddrc/dmc2noc_data_out_3]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_data_out_3]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_data_out_3]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_data_out_3]
  connect_bd_net -net mc1_ddrc_dmc2noc_valid_out_0 [get_bd_pins MC1_ddrc/dmc2noc_valid_out_0]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_valid_out_0]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_valid_out_0]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_valid_out_0]
  connect_bd_net -net mc1_ddrc_dmc2noc_valid_out_1 [get_bd_pins MC1_ddrc/dmc2noc_valid_out_1]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_valid_out_1]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_valid_out_1]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_valid_out_1]
  connect_bd_net -net mc1_ddrc_dmc2noc_valid_out_2 [get_bd_pins MC1_ddrc/dmc2noc_valid_out_2]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_valid_out_2]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_valid_out_2]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_valid_out_2]
  connect_bd_net -net mc1_ddrc_dmc2noc_valid_out_3 [get_bd_pins MC1_ddrc/dmc2noc_valid_out_3]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_valid_out_3]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_valid_out_3]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc1_ddrc_dmc2noc_valid_out_3]
  connect_bd_net -net mc1_ddrc_noc2dmc_credit_rdy_0 [get_bd_pins MC1_ddrc/noc2dmc_credit_rdy_0]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_credit_rdy_0]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_credit_rdy_0]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_credit_rdy_0]
  connect_bd_net -net mc1_ddrc_noc2dmc_credit_rdy_1 [get_bd_pins MC1_ddrc/noc2dmc_credit_rdy_1]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_credit_rdy_1]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_credit_rdy_1]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_credit_rdy_1]
  connect_bd_net -net mc1_ddrc_noc2dmc_credit_rdy_2 [get_bd_pins MC1_ddrc/noc2dmc_credit_rdy_2]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_credit_rdy_2]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_credit_rdy_2]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_credit_rdy_2]
  connect_bd_net -net mc1_ddrc_noc2dmc_credit_rdy_3 [get_bd_pins MC1_ddrc/noc2dmc_credit_rdy_3]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_credit_rdy_3]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_credit_rdy_3]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_credit_rdy_3]
  connect_bd_net -net mc1_ddrc_noc2dmc_credit_rtn_0 [get_bd_pins MC1_ddrc/noc2dmc_credit_rtn_0]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_credit_rtn_0]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_credit_rtn_0]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_credit_rtn_0]
  connect_bd_net -net mc1_ddrc_noc2dmc_credit_rtn_1 [get_bd_pins MC1_ddrc/noc2dmc_credit_rtn_1]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_credit_rtn_1]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_credit_rtn_1]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_credit_rtn_1]
  connect_bd_net -net mc1_ddrc_noc2dmc_credit_rtn_2 [get_bd_pins MC1_ddrc/noc2dmc_credit_rtn_2]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_credit_rtn_2]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_credit_rtn_2]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_credit_rtn_2]
  connect_bd_net -net mc1_ddrc_noc2dmc_credit_rtn_3 [get_bd_pins MC1_ddrc/noc2dmc_credit_rtn_3]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_credit_rtn_3]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_credit_rtn_3]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_credit_rtn_3]
  connect_bd_net -net mc1_ddrc_noc2dmc_data_in_0 [get_bd_pins MC1_ddrc/noc2dmc_data_in_0]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_data_in_0]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_data_in_0]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_data_in_0]
  connect_bd_net -net mc1_ddrc_noc2dmc_data_in_1 [get_bd_pins MC1_ddrc/noc2dmc_data_in_1]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_data_in_1]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_data_in_1]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_data_in_1]
  connect_bd_net -net mc1_ddrc_noc2dmc_data_in_2 [get_bd_pins MC1_ddrc/noc2dmc_data_in_2]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_data_in_2]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_data_in_2]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_data_in_2]
  connect_bd_net -net mc1_ddrc_noc2dmc_data_in_3 [get_bd_pins MC1_ddrc/noc2dmc_data_in_3]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_data_in_3]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_data_in_3]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_data_in_3]
  connect_bd_net -net mc1_ddrc_noc2dmc_valid_in_0 [get_bd_pins MC1_ddrc/noc2dmc_valid_in_0]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_valid_in_0]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_valid_in_0]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_valid_in_0]
  connect_bd_net -net mc1_ddrc_noc2dmc_valid_in_1 [get_bd_pins MC1_ddrc/noc2dmc_valid_in_1]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_valid_in_1]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_valid_in_1]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_valid_in_1]
  connect_bd_net -net mc1_ddrc_noc2dmc_valid_in_2 [get_bd_pins MC1_ddrc/noc2dmc_valid_in_2]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_valid_in_2]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_valid_in_2]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_valid_in_2]
  connect_bd_net -net mc1_ddrc_noc2dmc_valid_in_3 [get_bd_pins MC1_ddrc/noc2dmc_valid_in_3]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_valid_in_3]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_valid_in_3]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets mc1_ddrc_noc2dmc_valid_in_3]

  # Create address segments


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


