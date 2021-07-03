
################################################################
# This is a generated script based on design: bd_8be5
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
# source bd_8be5_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcvc1802-vsva2197-2MP-e-S
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name bd_8be5

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
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:inimm_rtl:1.0 M00_INI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:inimm_rtl:1.0 M01_INI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:inimm_rtl:1.0 M02_INI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:inimm_rtl:1.0 M03_INI


  # Create pins
  create_bd_pin -dir I NMU
  create_bd_pin -dir I NMU1
  create_bd_pin -dir I NMU2
  create_bd_pin -dir I NMU3
  create_bd_pin -dir I NMU4
  create_bd_pin -dir I NMU5
  create_bd_pin -dir I NMU6
  create_bd_pin -dir I NMU7
  create_bd_pin -dir I NMU8
  create_bd_pin -dir O NSU
  create_bd_pin -dir O NSU1
  create_bd_pin -dir O NSU2
  create_bd_pin -dir O NSU3

  # Create instance: M00_INI_nsw, and set properties
  set M00_INI_nsw [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_nsw:1.0 M00_INI_nsw ]
  set_property -dict [ list \
   CONFIG.NSW_MODE {SW_INI_Slave} \
   CONFIG.NSW_NUM_PATHS {6} \
   CONFIG.NSW_PATH_TYPE {RDWR:RDWR:RDWR:RDWR:RDWR:RDWR} \
   CONFIG.NSW_PROTOCOL {MemoryMapped} \
 ] $M00_INI_nsw
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells /hier_nsw/M00_INI_nsw]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_cells /hier_nsw/M00_INI_nsw]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_CELL {true} [get_bd_cells /hier_nsw/M00_INI_nsw]

  # Create instance: M01_INI_nsw, and set properties
  set M01_INI_nsw [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_nsw:1.0 M01_INI_nsw ]
  set_property -dict [ list \
   CONFIG.NSW_MODE {SW_INI_Slave} \
   CONFIG.NSW_NUM_PATHS {1} \
   CONFIG.NSW_PATH_TYPE {RDWR} \
   CONFIG.NSW_PROTOCOL {MemoryMapped} \
 ] $M01_INI_nsw
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells /hier_nsw/M01_INI_nsw]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_cells /hier_nsw/M01_INI_nsw]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_CELL {true} [get_bd_cells /hier_nsw/M01_INI_nsw]

  # Create instance: M02_INI_nsw, and set properties
  set M02_INI_nsw [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_nsw:1.0 M02_INI_nsw ]
  set_property -dict [ list \
   CONFIG.NSW_MODE {SW_INI_Slave} \
   CONFIG.NSW_NUM_PATHS {1} \
   CONFIG.NSW_PATH_TYPE {RDWR} \
   CONFIG.NSW_PROTOCOL {MemoryMapped} \
 ] $M02_INI_nsw
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells /hier_nsw/M02_INI_nsw]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_cells /hier_nsw/M02_INI_nsw]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_CELL {true} [get_bd_cells /hier_nsw/M02_INI_nsw]

  # Create instance: M03_INI_nsw, and set properties
  set M03_INI_nsw [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_nsw:1.0 M03_INI_nsw ]
  set_property -dict [ list \
   CONFIG.NSW_MODE {SW_INI_Slave} \
   CONFIG.NSW_NUM_PATHS {1} \
   CONFIG.NSW_PATH_TYPE {RDWR} \
   CONFIG.NSW_PROTOCOL {MemoryMapped} \
 ] $M03_INI_nsw
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells /hier_nsw/M03_INI_nsw]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_cells /hier_nsw/M03_INI_nsw]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_CELL {true} [get_bd_cells /hier_nsw/M03_INI_nsw]

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

  # Create instance: S00_AXI_nsw, and set properties
  set S00_AXI_nsw [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_nsw:1.0 S00_AXI_nsw ]
  set_property -dict [ list \
   CONFIG.NSW_MODE {SW_Master} \
   CONFIG.NSW_NUM_PATHS {2} \
   CONFIG.NSW_PATH_TYPE {RDWR:RDWR} \
   CONFIG.NSW_PROTOCOL {MemoryMapped} \
 ] $S00_AXI_nsw
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells /hier_nsw/S00_AXI_nsw]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_cells /hier_nsw/S00_AXI_nsw]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_CELL {true} [get_bd_cells /hier_nsw/S00_AXI_nsw]

  # Create instance: S01_AXI_nsw, and set properties
  set S01_AXI_nsw [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_nsw:1.0 S01_AXI_nsw ]
  set_property -dict [ list \
   CONFIG.NSW_MODE {SW_Master} \
   CONFIG.NSW_NUM_PATHS {2} \
   CONFIG.NSW_PATH_TYPE {RDWR:RDWR} \
   CONFIG.NSW_PROTOCOL {MemoryMapped} \
 ] $S01_AXI_nsw
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells /hier_nsw/S01_AXI_nsw]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_cells /hier_nsw/S01_AXI_nsw]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_CELL {true} [get_bd_cells /hier_nsw/S01_AXI_nsw]

  # Create instance: S02_AXI_nsw, and set properties
  set S02_AXI_nsw [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_nsw:1.0 S02_AXI_nsw ]
  set_property -dict [ list \
   CONFIG.NSW_MODE {SW_Master} \
   CONFIG.NSW_NUM_PATHS {2} \
   CONFIG.NSW_PATH_TYPE {RDWR:RDWR} \
   CONFIG.NSW_PROTOCOL {MemoryMapped} \
 ] $S02_AXI_nsw
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells /hier_nsw/S02_AXI_nsw]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_cells /hier_nsw/S02_AXI_nsw]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_CELL {true} [get_bd_cells /hier_nsw/S02_AXI_nsw]

  # Create instance: S03_AXI_nsw, and set properties
  set S03_AXI_nsw [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_nsw:1.0 S03_AXI_nsw ]
  set_property -dict [ list \
   CONFIG.NSW_MODE {SW_Master} \
   CONFIG.NSW_NUM_PATHS {2} \
   CONFIG.NSW_PATH_TYPE {RDWR:RDWR} \
   CONFIG.NSW_PROTOCOL {MemoryMapped} \
 ] $S03_AXI_nsw
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells /hier_nsw/S03_AXI_nsw]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_cells /hier_nsw/S03_AXI_nsw]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_CELL {true} [get_bd_cells /hier_nsw/S03_AXI_nsw]

  # Create instance: S04_AXI_nsw, and set properties
  set S04_AXI_nsw [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_nsw:1.0 S04_AXI_nsw ]
  set_property -dict [ list \
   CONFIG.NSW_MODE {SW_Master} \
   CONFIG.NSW_NUM_PATHS {1} \
   CONFIG.NSW_PATH_TYPE {RDWR} \
   CONFIG.NSW_PROTOCOL {MemoryMapped} \
 ] $S04_AXI_nsw
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells /hier_nsw/S04_AXI_nsw]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_cells /hier_nsw/S04_AXI_nsw]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_CELL {true} [get_bd_cells /hier_nsw/S04_AXI_nsw]

  # Create instance: S05_AXI_nsw, and set properties
  set S05_AXI_nsw [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_nsw:1.0 S05_AXI_nsw ]
  set_property -dict [ list \
   CONFIG.NSW_MODE {SW_Master} \
   CONFIG.NSW_NUM_PATHS {1} \
   CONFIG.NSW_PATH_TYPE {RDWR} \
   CONFIG.NSW_PROTOCOL {MemoryMapped} \
 ] $S05_AXI_nsw
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells /hier_nsw/S05_AXI_nsw]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_cells /hier_nsw/S05_AXI_nsw]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_CELL {true} [get_bd_cells /hier_nsw/S05_AXI_nsw]

  # Create instance: S06_AXI_nsw, and set properties
  set S06_AXI_nsw [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_nsw:1.0 S06_AXI_nsw ]
  set_property -dict [ list \
   CONFIG.NSW_MODE {SW_Master} \
   CONFIG.NSW_NUM_PATHS {1} \
   CONFIG.NSW_PATH_TYPE {RDWR} \
   CONFIG.NSW_PROTOCOL {MemoryMapped} \
 ] $S06_AXI_nsw
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells /hier_nsw/S06_AXI_nsw]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_cells /hier_nsw/S06_AXI_nsw]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_CELL {true} [get_bd_cells /hier_nsw/S06_AXI_nsw]

  # Create instance: S07_AXI_nsw, and set properties
  set S07_AXI_nsw [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_nsw:1.0 S07_AXI_nsw ]
  set_property -dict [ list \
   CONFIG.NSW_MODE {SW_Master} \
   CONFIG.NSW_NUM_PATHS {1} \
   CONFIG.NSW_PATH_TYPE {RDWR} \
   CONFIG.NSW_PROTOCOL {MemoryMapped} \
 ] $S07_AXI_nsw
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells /hier_nsw/S07_AXI_nsw]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_cells /hier_nsw/S07_AXI_nsw]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_CELL {true} [get_bd_cells /hier_nsw/S07_AXI_nsw]

  # Create instance: S08_AXI_nsw, and set properties
  set S08_AXI_nsw [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_nsw:1.0 S08_AXI_nsw ]
  set_property -dict [ list \
   CONFIG.NSW_MODE {SW_Master} \
   CONFIG.NSW_NUM_PATHS {1} \
   CONFIG.NSW_PATH_TYPE {RDWR} \
   CONFIG.NSW_PROTOCOL {MemoryMapped} \
 ] $S08_AXI_nsw
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells /hier_nsw/S08_AXI_nsw]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_cells /hier_nsw/S08_AXI_nsw]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_CELL {true} [get_bd_cells /hier_nsw/S08_AXI_nsw]

  # Create interface connections
  connect_bd_intf_net -intf_net M00_INI_nsw_M_INIMM [get_bd_intf_pins M00_INI] [get_bd_intf_pins M00_INI_nsw/M_INIMM]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets M00_INI_nsw_M_INIMM]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets M00_INI_nsw_M_INIMM]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets M00_INI_nsw_M_INIMM]
  connect_bd_intf_net -intf_net M01_INI_nsw_M_INIMM [get_bd_intf_pins M01_INI] [get_bd_intf_pins M01_INI_nsw/M_INIMM]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets M01_INI_nsw_M_INIMM]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets M01_INI_nsw_M_INIMM]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets M01_INI_nsw_M_INIMM]
  connect_bd_intf_net -intf_net M02_INI_nsw_M_INIMM [get_bd_intf_pins M02_INI] [get_bd_intf_pins M02_INI_nsw/M_INIMM]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets M02_INI_nsw_M_INIMM]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets M02_INI_nsw_M_INIMM]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets M02_INI_nsw_M_INIMM]
  connect_bd_intf_net -intf_net M03_INI_nsw_M_INIMM [get_bd_intf_pins M03_INI] [get_bd_intf_pins M03_INI_nsw/M_INIMM]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets M03_INI_nsw_M_INIMM]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets M03_INI_nsw_M_INIMM]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets M03_INI_nsw_M_INIMM]
  connect_bd_intf_net -intf_net S00_AXI_nsw_M00_INCMM [get_bd_intf_pins MC0_nsw/S00_INCMM] [get_bd_intf_pins S00_AXI_nsw/M00_INCMM]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets S00_AXI_nsw_M00_INCMM]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets S00_AXI_nsw_M00_INCMM]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets S00_AXI_nsw_M00_INCMM]
  connect_bd_intf_net -intf_net S00_AXI_nsw_M01_INCMM [get_bd_intf_pins M00_INI_nsw/S01_INCMM] [get_bd_intf_pins S00_AXI_nsw/M01_INCMM]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets S00_AXI_nsw_M01_INCMM]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets S00_AXI_nsw_M01_INCMM]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets S00_AXI_nsw_M01_INCMM]
  connect_bd_intf_net -intf_net S01_AXI_nsw_M00_INCMM [get_bd_intf_pins M01_INI_nsw/S00_INCMM] [get_bd_intf_pins S01_AXI_nsw/M00_INCMM]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets S01_AXI_nsw_M00_INCMM]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets S01_AXI_nsw_M00_INCMM]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets S01_AXI_nsw_M00_INCMM]
  connect_bd_intf_net -intf_net S01_AXI_nsw_M01_INCMM [get_bd_intf_pins MC1_nsw/S00_INCMM] [get_bd_intf_pins S01_AXI_nsw/M01_INCMM]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets S01_AXI_nsw_M01_INCMM]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets S01_AXI_nsw_M01_INCMM]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets S01_AXI_nsw_M01_INCMM]
  connect_bd_intf_net -intf_net S02_AXI_nsw_M00_INCMM [get_bd_intf_pins M02_INI_nsw/S00_INCMM] [get_bd_intf_pins S02_AXI_nsw/M00_INCMM]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets S02_AXI_nsw_M00_INCMM]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets S02_AXI_nsw_M00_INCMM]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets S02_AXI_nsw_M00_INCMM]
  connect_bd_intf_net -intf_net S02_AXI_nsw_M01_INCMM [get_bd_intf_pins MC2_nsw/S00_INCMM] [get_bd_intf_pins S02_AXI_nsw/M01_INCMM]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets S02_AXI_nsw_M01_INCMM]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets S02_AXI_nsw_M01_INCMM]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets S02_AXI_nsw_M01_INCMM]
  connect_bd_intf_net -intf_net S03_AXI_nsw_M00_INCMM [get_bd_intf_pins M03_INI_nsw/S00_INCMM] [get_bd_intf_pins S03_AXI_nsw/M00_INCMM]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets S03_AXI_nsw_M00_INCMM]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets S03_AXI_nsw_M00_INCMM]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets S03_AXI_nsw_M00_INCMM]
  connect_bd_intf_net -intf_net S03_AXI_nsw_M01_INCMM [get_bd_intf_pins MC3_nsw/S00_INCMM] [get_bd_intf_pins S03_AXI_nsw/M01_INCMM]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets S03_AXI_nsw_M01_INCMM]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets S03_AXI_nsw_M01_INCMM]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets S03_AXI_nsw_M01_INCMM]
  connect_bd_intf_net -intf_net S04_AXI_nsw_M00_INCMM [get_bd_intf_pins M00_INI_nsw/S03_INCMM] [get_bd_intf_pins S04_AXI_nsw/M00_INCMM]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets S04_AXI_nsw_M00_INCMM]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets S04_AXI_nsw_M00_INCMM]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets S04_AXI_nsw_M00_INCMM]
  connect_bd_intf_net -intf_net S05_AXI_nsw_M00_INCMM [get_bd_intf_pins M00_INI_nsw/S02_INCMM] [get_bd_intf_pins S05_AXI_nsw/M00_INCMM]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets S05_AXI_nsw_M00_INCMM]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets S05_AXI_nsw_M00_INCMM]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets S05_AXI_nsw_M00_INCMM]
  connect_bd_intf_net -intf_net S06_AXI_nsw_M00_INCMM [get_bd_intf_pins M00_INI_nsw/S00_INCMM] [get_bd_intf_pins S06_AXI_nsw/M00_INCMM]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets S06_AXI_nsw_M00_INCMM]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets S06_AXI_nsw_M00_INCMM]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets S06_AXI_nsw_M00_INCMM]
  connect_bd_intf_net -intf_net S07_AXI_nsw_M00_INCMM [get_bd_intf_pins M00_INI_nsw/S04_INCMM] [get_bd_intf_pins S07_AXI_nsw/M00_INCMM]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets S07_AXI_nsw_M00_INCMM]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets S07_AXI_nsw_M00_INCMM]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets S07_AXI_nsw_M00_INCMM]
  connect_bd_intf_net -intf_net S08_AXI_nsw_M00_INCMM [get_bd_intf_pins M00_INI_nsw/S05_INCMM] [get_bd_intf_pins S08_AXI_nsw/M00_INCMM]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets S08_AXI_nsw_M00_INCMM]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets S08_AXI_nsw_M00_INCMM]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets S08_AXI_nsw_M00_INCMM]

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
  connect_bd_net -net S00_AXI_nmu_NMU [get_bd_pins NMU1] [get_bd_pins S00_AXI_nsw/NMU]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_nets S00_AXI_nmu_NMU]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_nets S00_AXI_nmu_NMU]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_nets S00_AXI_nmu_NMU]
  connect_bd_net -net S01_AXI_nmu_NMU [get_bd_pins NMU3] [get_bd_pins S01_AXI_nsw/NMU]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_nets S01_AXI_nmu_NMU]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_nets S01_AXI_nmu_NMU]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_nets S01_AXI_nmu_NMU]
  connect_bd_net -net S02_AXI_nmu_NMU [get_bd_pins NMU4] [get_bd_pins S02_AXI_nsw/NMU]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_nets S02_AXI_nmu_NMU]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_nets S02_AXI_nmu_NMU]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_nets S02_AXI_nmu_NMU]
  connect_bd_net -net S03_AXI_nmu_NMU [get_bd_pins NMU5] [get_bd_pins S03_AXI_nsw/NMU]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_nets S03_AXI_nmu_NMU]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_nets S03_AXI_nmu_NMU]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_nets S03_AXI_nmu_NMU]
  connect_bd_net -net S04_AXI_nmu_NMU [get_bd_pins NMU6] [get_bd_pins S04_AXI_nsw/NMU]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_nets S04_AXI_nmu_NMU]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_nets S04_AXI_nmu_NMU]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_nets S04_AXI_nmu_NMU]
  connect_bd_net -net S05_AXI_nmu_NMU [get_bd_pins NMU2] [get_bd_pins S05_AXI_nsw/NMU]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_nets S05_AXI_nmu_NMU]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_nets S05_AXI_nmu_NMU]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_nets S05_AXI_nmu_NMU]
  connect_bd_net -net S06_AXI_nmu_NMU [get_bd_pins NMU] [get_bd_pins S06_AXI_nsw/NMU]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_nets S06_AXI_nmu_NMU]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_nets S06_AXI_nmu_NMU]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_nets S06_AXI_nmu_NMU]
  connect_bd_net -net S07_AXI_rpu_NMU [get_bd_pins NMU7] [get_bd_pins S07_AXI_nsw/NMU]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_nets S07_AXI_rpu_NMU]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_nets S07_AXI_rpu_NMU]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_nets S07_AXI_rpu_NMU]
  connect_bd_net -net S08_AXI_nmu_NMU [get_bd_pins NMU8] [get_bd_pins S08_AXI_nsw/NMU]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_nets S08_AXI_nmu_NMU]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_nets S08_AXI_nmu_NMU]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_nets S08_AXI_nmu_NMU]

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

  set M00_INI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:inimm_rtl:1.0 M00_INI ]

  set M01_INI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:inimm_rtl:1.0 M01_INI ]

  set M02_INI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:inimm_rtl:1.0 M02_INI ]

  set M03_INI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:inimm_rtl:1.0 M03_INI ]

  set S00_AXI [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI ]
  set_property -dict [ list \
   CONFIG.CATEGORY {ps_cci} \
   CONFIG.CONNECTIONS {MC_0 { read_bw {300} write_bw {300} read_avg_burst {4} write_avg_burst {4}} M00_INI { read_bw {300} write_bw {300}} } \
   CONFIG.DATA_WIDTH {128} \
   CONFIG.DEST_IDS {} \
   ] $S00_AXI

  set S01_AXI [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S01_AXI ]
  set_property -dict [ list \
   CONFIG.CATEGORY {ps_cci} \
   CONFIG.CONNECTIONS {M01_INI { read_bw {300} write_bw {300}} MC_1 { read_bw {300} write_bw {300} read_avg_burst {4} write_avg_burst {4}} } \
   CONFIG.DATA_WIDTH {128} \
   CONFIG.DEST_IDS {} \
   ] $S01_AXI

  set S02_AXI [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S02_AXI ]
  set_property -dict [ list \
   CONFIG.CATEGORY {ps_cci} \
   CONFIG.CONNECTIONS {M02_INI { read_bw {1720} write_bw {1720}} MC_2 { read_bw {300} write_bw {300} read_avg_burst {4} write_avg_burst {4}} } \
   CONFIG.DATA_WIDTH {128} \
   CONFIG.DEST_IDS {} \
   ] $S02_AXI

  set S03_AXI [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S03_AXI ]
  set_property -dict [ list \
   CONFIG.CATEGORY {ps_cci} \
   CONFIG.CONNECTIONS {M03_INI { read_bw {1720} write_bw {1720}} MC_3 { read_bw {300} write_bw {300} read_avg_burst {4} write_avg_burst {4}} } \
   CONFIG.DATA_WIDTH {128} \
   CONFIG.DEST_IDS {} \
   ] $S03_AXI

  set S04_AXI [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S04_AXI ]
  set_property -dict [ list \
   CONFIG.CATEGORY {ps_nci} \
   CONFIG.CONNECTIONS {M00_INI { read_bw {300} write_bw {300}} } \
   CONFIG.DATA_WIDTH {128} \
   CONFIG.DEST_IDS {} \
   ] $S04_AXI

  set S05_AXI [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S05_AXI ]
  set_property -dict [ list \
   CONFIG.CATEGORY {ps_pcie} \
   CONFIG.CONNECTIONS {M00_INI { read_bw {300} write_bw {300}} } \
   CONFIG.DATA_WIDTH {128} \
   CONFIG.DEST_IDS {} \
   ] $S05_AXI

  set S06_AXI [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S06_AXI ]
  set_property -dict [ list \
   CONFIG.CATEGORY {ps_pcie} \
   CONFIG.CONNECTIONS {M00_INI { read_bw {300} write_bw {300}} } \
   CONFIG.DATA_WIDTH {128} \
   CONFIG.DEST_IDS {} \
   ] $S06_AXI

  set S07_AXI [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S07_AXI ]
  set_property -dict [ list \
   CONFIG.CATEGORY {ps_rpu} \
   CONFIG.CONNECTIONS {M00_INI { read_bw {300} write_bw {300}} } \
   CONFIG.DATA_WIDTH {128} \
   CONFIG.DEST_IDS {} \
   ] $S07_AXI

  set S08_AXI [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S08_AXI ]
  set_property -dict [ list \
   CONFIG.CATEGORY {ps_pmc} \
   CONFIG.CONNECTIONS {M00_INI { read_bw {300} write_bw {300}} } \
   CONFIG.DATA_WIDTH {128} \
   CONFIG.DEST_IDS {} \
   ] $S08_AXI

  set sys_clk0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 sys_clk0 ]


  # Create ports
  set aclk0 [ create_bd_port -dir I -type clk aclk0 ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {S00_AXI} \
 ] $aclk0
  set aclk1 [ create_bd_port -dir I -type clk aclk1 ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {S01_AXI} \
 ] $aclk1
  set aclk2 [ create_bd_port -dir I -type clk aclk2 ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {S02_AXI} \
 ] $aclk2
  set aclk3 [ create_bd_port -dir I -type clk aclk3 ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {S03_AXI} \
 ] $aclk3
  set aclk4 [ create_bd_port -dir I -type clk aclk4 ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {S04_AXI} \
 ] $aclk4
  set aclk5 [ create_bd_port -dir I -type clk aclk5 ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {S05_AXI} \
 ] $aclk5
  set aclk6 [ create_bd_port -dir I -type clk aclk6 ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {S06_AXI} \
 ] $aclk6
  set aclk7 [ create_bd_port -dir I -type clk aclk7 ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {S07_AXI} \
 ] $aclk7
  set aclk8 [ create_bd_port -dir I -type clk aclk8 ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {S08_AXI} \
 ] $aclk8

  # Create instance: MC0_ddrc, and set properties
  set MC0_ddrc [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_mc_ddr4:1.0 MC0_ddrc ]
  set_property -dict [ list \
   CONFIG.CONTROLLERTYPE {DDR4_SDRAM} \
   CONFIG.MC_ADDR_BIT9 {CA5} \
   CONFIG.MC_ADDR_BIT33 {CS0} \
   CONFIG.MC_ATTR_FILE {nocattrs.dat} \
   CONFIG.MC_BG_WIDTH {2} \
   CONFIG.MC_CASLATENCY {21} \
   CONFIG.MC_CA_MIRROR {true} \
   CONFIG.MC_CHAN_REGION0 {DDR_LOW0} \
   CONFIG.MC_CHAN_REGION1 {DDR_LOW1} \
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
   CONFIG.MC_PHYS_NAME {DDRMC_X2Y0} \
   CONFIG.MC_RANK {2} \
   CONFIG.MC_READ_BANDWIDTH {5502.0635} \
   CONFIG.MC_REG_ADEC0 {0x00000000} \
   CONFIG.MC_REG_ADEC1 {0x00000000} \
   CONFIG.MC_REG_ADEC2 {0x00100080} \
   CONFIG.MC_REG_ADEC3 {0x00000078} \
   CONFIG.MC_REG_ADEC4 {0x30c30c21} \
   CONFIG.MC_REG_ADEC5 {0x15513491} \
   CONFIG.MC_REG_ADEC6 {0x1a6585d6} \
   CONFIG.MC_REG_ADEC7 {0x1f79d71b} \
   CONFIG.MC_REG_ADEC8 {0x03c30c20} \
   CONFIG.MC_REG_ADEC9 {0x09207144} \
   CONFIG.MC_REG_ADEC10 {0x0f34c2ca} \
   CONFIG.MC_REG_ADEC11 {0x00c0e190} \
   CONFIG.MC_REG_CMDQ_BER_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_CMDQ_BEW_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_CMDQ_CTRL0 {0x01ffffff} \
   CONFIG.MC_REG_CMDQ_CTRL1 {0x01084210} \
   CONFIG.MC_REG_CMDQ_ISR_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_CMDQ_ISW_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_CMDQ_LLR_RATE_CTRL {0x003ffc0f} \
   CONFIG.MC_REG_NSU0_PORT {0x00000440} \
   CONFIG.MC_REG_NSU1_PORT {0x00000480} \
   CONFIG.MC_REG_NSU2_PORT {0x000004c0} \
   CONFIG.MC_REG_NSU3_PORT {0x00000500} \
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
   CONFIG.MC_REG_RD_DRR_TKN_P1 {0x00ff0404} \
   CONFIG.MC_REG_RD_DRR_TKN_P2 {0x00ff0404} \
   CONFIG.MC_REG_RD_DRR_TKN_P3 {0x00ff0404} \
   CONFIG.MC_REG_WR_DRR_TKN_P0 {0x0000ff04} \
   CONFIG.MC_REG_WR_DRR_TKN_P1 {0x0000ff04} \
   CONFIG.MC_REG_WR_DRR_TKN_P2 {0x0000ff04} \
   CONFIG.MC_REG_WR_DRR_TKN_P3 {0x0000ff04} \
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
   CONFIG.NUM_MC {1} \
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

  # Create instance: S00_AXI_nmu, and set properties
  set S00_AXI_nmu [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_nmu:1.0 S00_AXI_nmu ]
  set_property -dict [ list \
   CONFIG.ATTR_FILE {nocattrs.dat} \
   CONFIG.USER_NOC_CATEGORY {PS} \
   CONFIG.USER_NOC_DATA512_WIDTH {128} \
   CONFIG.USER_NOC_NMU_WIDTH {128} \
   CONFIG.USER_PHYS_NAME {NOC_NMU128_X0Y8} \
   CONFIG.USER_REG_ADDR_DST0 {0x0000} \
   CONFIG.USER_REG_ADDR_DST1 {0x0000} \
   CONFIG.USER_REG_ADDR_DST2 {0x0000} \
   CONFIG.USER_REG_ADDR_DST3 {0x0000} \
   CONFIG.USER_REG_ADDR_DST4 {0x0000} \
   CONFIG.USER_REG_ADDR_DST5 {0x0000} \
   CONFIG.USER_REG_ADDR_DST6 {0x0000} \
   CONFIG.USER_REG_ADDR_DST7 {0x0000} \
   CONFIG.USER_REG_ADDR_DST8 {0x0000} \
   CONFIG.USER_REG_ADDR_DST9 {0x0000} \
   CONFIG.USER_REG_ADDR_DST10 {0x0000} \
   CONFIG.USER_REG_ADDR_DST11 {0x0000} \
   CONFIG.USER_REG_ADDR_DST12 {0x0000} \
   CONFIG.USER_REG_ADDR_DST13 {0x0000} \
   CONFIG.USER_REG_ADDR_DST14 {0x0000} \
   CONFIG.USER_REG_ADDR_DST15 {0x0000} \
   CONFIG.USER_REG_ADDR_ENABLE {0x0000} \
   CONFIG.USER_REG_ADDR_MADDR0 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR1 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR2 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR3 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR4 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR5 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR6 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR7 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR8 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR9 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR10 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR11 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR12 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR13 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR14 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR15 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK0 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK1 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK2 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK3 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK4 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK5 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK6 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK7 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK8 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK9 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK10 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK11 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK12 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK13 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK14 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK15 {0x00000000} \
   CONFIG.USER_REG_ADDR_REMAP {0x0000} \
   CONFIG.USER_REG_ADDR_RPADDR0 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR1 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR2 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR3 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR4 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR5 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR6 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR7 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR8 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR9 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR10 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR11 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR12 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR13 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR14 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR15 {0x00000000} \
   CONFIG.USER_REG_ADR_MAP_CPM {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_FPD_AFI_0 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_FPD_AFI_1 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_LPD_AFI_FS {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_0 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_1 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_2 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_3 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PCIE {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_0 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_1 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_2 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_3 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_QSPI {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_STM_GIC {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_XPDS {0xFC0} \
   CONFIG.USER_REG_AXI_LOOPBACK {0x00} \
   CONFIG.USER_REG_AXI_NON_MOD_DISABLE {0x0} \
   CONFIG.USER_REG_AXI_PAR_CHK {0x0} \
   CONFIG.USER_REG_CHOPSIZE {0xA} \
   CONFIG.USER_REG_DDR_ADR_MAP0 {0x6000} \
   CONFIG.USER_REG_DDR_ADR_MAP1 {0x1451} \
   CONFIG.USER_REG_DDR_ADR_MAP2 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP3 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP4 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP5 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP6 {0x1FFF} \
   CONFIG.USER_REG_DDR_DST_MAP0 {0x440} \
   CONFIG.USER_REG_DDR_DST_MAP1 {0x340} \
   CONFIG.USER_REG_DDR_DST_MAP2 {0x240} \
   CONFIG.USER_REG_DDR_DST_MAP3 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP4 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP5 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP6 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP7 {0xFC0} \
   CONFIG.USER_REG_DWIDTH {0x4} \
   CONFIG.USER_REG_ECC_CHK_EN {0x1} \
   CONFIG.USER_REG_HBM_MAP_T0_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH15 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH15 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH15 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH15 {0xFC0} \
   CONFIG.USER_REG_MODE_SELECT {0x0000} \
   CONFIG.USER_REG_OUTSTANDING_RD_TXN {0x40} \
   CONFIG.USER_REG_OUTSTANDING_WR_TXN {0x40} \
   CONFIG.USER_REG_PRIORITY {0x0} \
   CONFIG.USER_REG_RD_AXPROT_SEL {0x00} \
   CONFIG.USER_REG_RD_RATE_CREDIT_DROP {0x004} \
   CONFIG.USER_REG_RD_RATE_CREDIT_LIMIT {0x0100} \
   CONFIG.USER_REG_RD_VCA_TOKEN0 {0x33} \
   CONFIG.USER_REG_RPOISON_TO_SLVERR {0x0} \
   CONFIG.USER_REG_RROB_RAM_SETTING {0x012} \
   CONFIG.USER_REG_SMID_SEL {0x00000} \
   CONFIG.USER_REG_SRC {0x1C0} \
   CONFIG.USER_REG_TBASE_AXI_TIMEOUT {0x1} \
   CONFIG.USER_REG_TBASE_MODE_RLIMIT_RD {0x2} \
   CONFIG.USER_REG_TBASE_MODE_RLIMIT_WR {0x2} \
   CONFIG.USER_REG_TBASE_TRK_TIMEOUT {0x1} \
   CONFIG.USER_REG_VC_MAP {0xFAC} \
   CONFIG.USER_REG_WBUF_LAUNCH_SIZE {0x10} \
   CONFIG.USER_REG_WBUF_RAM_SETTING {0x012} \
   CONFIG.USER_REG_WR_AXPROT_SEL {0x00} \
   CONFIG.USER_REG_WR_RATE_CREDIT_DROP {0x004} \
   CONFIG.USER_REG_WR_RATE_CREDIT_LIMIT {0x0100} \
   CONFIG.USER_REG_WR_VCA_TOKEN0 {0xFF} \
 ] $S00_AXI_nmu
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells S00_AXI_nmu]

  # Create instance: S01_AXI_nmu, and set properties
  set S01_AXI_nmu [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_nmu:1.0 S01_AXI_nmu ]
  set_property -dict [ list \
   CONFIG.ATTR_FILE {nocattrs.dat} \
   CONFIG.USER_NOC_CATEGORY {PS} \
   CONFIG.USER_NOC_DATA512_WIDTH {128} \
   CONFIG.USER_NOC_NMU_WIDTH {128} \
   CONFIG.USER_PHYS_NAME {NOC_NMU128_X0Y9} \
   CONFIG.USER_REG_ADDR_DST0 {0x0000} \
   CONFIG.USER_REG_ADDR_DST1 {0x0000} \
   CONFIG.USER_REG_ADDR_DST2 {0x0000} \
   CONFIG.USER_REG_ADDR_DST3 {0x0000} \
   CONFIG.USER_REG_ADDR_DST4 {0x0000} \
   CONFIG.USER_REG_ADDR_DST5 {0x0000} \
   CONFIG.USER_REG_ADDR_DST6 {0x0000} \
   CONFIG.USER_REG_ADDR_DST7 {0x0000} \
   CONFIG.USER_REG_ADDR_DST8 {0x0000} \
   CONFIG.USER_REG_ADDR_DST9 {0x0000} \
   CONFIG.USER_REG_ADDR_DST10 {0x0000} \
   CONFIG.USER_REG_ADDR_DST11 {0x0000} \
   CONFIG.USER_REG_ADDR_DST12 {0x0000} \
   CONFIG.USER_REG_ADDR_DST13 {0x0000} \
   CONFIG.USER_REG_ADDR_DST14 {0x0000} \
   CONFIG.USER_REG_ADDR_DST15 {0x0000} \
   CONFIG.USER_REG_ADDR_ENABLE {0x0000} \
   CONFIG.USER_REG_ADDR_MADDR0 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR1 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR2 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR3 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR4 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR5 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR6 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR7 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR8 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR9 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR10 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR11 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR12 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR13 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR14 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR15 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK0 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK1 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK2 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK3 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK4 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK5 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK6 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK7 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK8 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK9 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK10 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK11 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK12 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK13 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK14 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK15 {0x00000000} \
   CONFIG.USER_REG_ADDR_REMAP {0x0000} \
   CONFIG.USER_REG_ADDR_RPADDR0 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR1 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR2 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR3 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR4 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR5 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR6 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR7 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR8 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR9 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR10 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR11 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR12 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR13 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR14 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR15 {0x00000000} \
   CONFIG.USER_REG_ADR_MAP_CPM {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_FPD_AFI_0 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_FPD_AFI_1 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_LPD_AFI_FS {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_0 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_1 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_2 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_3 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PCIE {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_0 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_1 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_2 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_3 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_QSPI {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_STM_GIC {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_XPDS {0xFC0} \
   CONFIG.USER_REG_AXI_LOOPBACK {0x00} \
   CONFIG.USER_REG_AXI_NON_MOD_DISABLE {0x0} \
   CONFIG.USER_REG_AXI_PAR_CHK {0x0} \
   CONFIG.USER_REG_CHOPSIZE {0xA} \
   CONFIG.USER_REG_DDR_ADR_MAP0 {0x6000} \
   CONFIG.USER_REG_DDR_ADR_MAP1 {0x1451} \
   CONFIG.USER_REG_DDR_ADR_MAP2 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP3 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP4 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP5 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP6 {0x1FFF} \
   CONFIG.USER_REG_DDR_DST_MAP0 {0x480} \
   CONFIG.USER_REG_DDR_DST_MAP1 {0x380} \
   CONFIG.USER_REG_DDR_DST_MAP2 {0x280} \
   CONFIG.USER_REG_DDR_DST_MAP3 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP4 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP5 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP6 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP7 {0xFC0} \
   CONFIG.USER_REG_DWIDTH {0x4} \
   CONFIG.USER_REG_ECC_CHK_EN {0x1} \
   CONFIG.USER_REG_HBM_MAP_T0_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH15 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH15 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH15 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH15 {0xFC0} \
   CONFIG.USER_REG_MODE_SELECT {0x0000} \
   CONFIG.USER_REG_OUTSTANDING_RD_TXN {0x40} \
   CONFIG.USER_REG_OUTSTANDING_WR_TXN {0x40} \
   CONFIG.USER_REG_PRIORITY {0x0} \
   CONFIG.USER_REG_RD_AXPROT_SEL {0x00} \
   CONFIG.USER_REG_RD_RATE_CREDIT_DROP {0x004} \
   CONFIG.USER_REG_RD_RATE_CREDIT_LIMIT {0x0100} \
   CONFIG.USER_REG_RD_VCA_TOKEN0 {0x33} \
   CONFIG.USER_REG_RPOISON_TO_SLVERR {0x0} \
   CONFIG.USER_REG_RROB_RAM_SETTING {0x012} \
   CONFIG.USER_REG_SMID_SEL {0x00000} \
   CONFIG.USER_REG_SRC {0x200} \
   CONFIG.USER_REG_TBASE_AXI_TIMEOUT {0x1} \
   CONFIG.USER_REG_TBASE_MODE_RLIMIT_RD {0x2} \
   CONFIG.USER_REG_TBASE_MODE_RLIMIT_WR {0x2} \
   CONFIG.USER_REG_TBASE_TRK_TIMEOUT {0x1} \
   CONFIG.USER_REG_VC_MAP {0xFAC} \
   CONFIG.USER_REG_WBUF_LAUNCH_SIZE {0x10} \
   CONFIG.USER_REG_WBUF_RAM_SETTING {0x012} \
   CONFIG.USER_REG_WR_AXPROT_SEL {0x00} \
   CONFIG.USER_REG_WR_RATE_CREDIT_DROP {0x004} \
   CONFIG.USER_REG_WR_RATE_CREDIT_LIMIT {0x0100} \
   CONFIG.USER_REG_WR_VCA_TOKEN0 {0xFF} \
 ] $S01_AXI_nmu
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells S01_AXI_nmu]

  # Create instance: S02_AXI_nmu, and set properties
  set S02_AXI_nmu [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_nmu:1.0 S02_AXI_nmu ]
  set_property -dict [ list \
   CONFIG.ATTR_FILE {nocattrs.dat} \
   CONFIG.USER_NOC_CATEGORY {PS} \
   CONFIG.USER_NOC_DATA512_WIDTH {128} \
   CONFIG.USER_NOC_NMU_WIDTH {128} \
   CONFIG.USER_PHYS_NAME {NOC_NMU128_X0Y7} \
   CONFIG.USER_REG_ADDR_DST0 {0x0000} \
   CONFIG.USER_REG_ADDR_DST1 {0x0000} \
   CONFIG.USER_REG_ADDR_DST2 {0x0000} \
   CONFIG.USER_REG_ADDR_DST3 {0x0000} \
   CONFIG.USER_REG_ADDR_DST4 {0x0000} \
   CONFIG.USER_REG_ADDR_DST5 {0x0000} \
   CONFIG.USER_REG_ADDR_DST6 {0x0000} \
   CONFIG.USER_REG_ADDR_DST7 {0x0000} \
   CONFIG.USER_REG_ADDR_DST8 {0x0000} \
   CONFIG.USER_REG_ADDR_DST9 {0x0000} \
   CONFIG.USER_REG_ADDR_DST10 {0x0000} \
   CONFIG.USER_REG_ADDR_DST11 {0x0000} \
   CONFIG.USER_REG_ADDR_DST12 {0x0000} \
   CONFIG.USER_REG_ADDR_DST13 {0x0000} \
   CONFIG.USER_REG_ADDR_DST14 {0x0000} \
   CONFIG.USER_REG_ADDR_DST15 {0x0000} \
   CONFIG.USER_REG_ADDR_ENABLE {0x0000} \
   CONFIG.USER_REG_ADDR_MADDR0 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR1 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR2 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR3 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR4 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR5 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR6 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR7 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR8 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR9 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR10 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR11 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR12 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR13 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR14 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR15 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK0 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK1 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK2 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK3 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK4 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK5 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK6 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK7 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK8 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK9 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK10 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK11 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK12 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK13 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK14 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK15 {0x00000000} \
   CONFIG.USER_REG_ADDR_REMAP {0x0000} \
   CONFIG.USER_REG_ADDR_RPADDR0 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR1 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR2 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR3 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR4 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR5 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR6 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR7 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR8 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR9 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR10 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR11 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR12 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR13 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR14 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR15 {0x00000000} \
   CONFIG.USER_REG_ADR_MAP_CPM {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_FPD_AFI_0 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_FPD_AFI_1 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_LPD_AFI_FS {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_0 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_1 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_2 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_3 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PCIE {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_0 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_1 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_2 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_3 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_QSPI {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_STM_GIC {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_XPDS {0xFC0} \
   CONFIG.USER_REG_AXI_LOOPBACK {0x00} \
   CONFIG.USER_REG_AXI_NON_MOD_DISABLE {0x0} \
   CONFIG.USER_REG_AXI_PAR_CHK {0x0} \
   CONFIG.USER_REG_CHOPSIZE {0xA} \
   CONFIG.USER_REG_DDR_ADR_MAP0 {0x6000} \
   CONFIG.USER_REG_DDR_ADR_MAP1 {0x1451} \
   CONFIG.USER_REG_DDR_ADR_MAP2 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP3 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP4 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP5 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP6 {0x1FFF} \
   CONFIG.USER_REG_DDR_DST_MAP0 {0x4C0} \
   CONFIG.USER_REG_DDR_DST_MAP1 {0x3C0} \
   CONFIG.USER_REG_DDR_DST_MAP2 {0x2C0} \
   CONFIG.USER_REG_DDR_DST_MAP3 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP4 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP5 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP6 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP7 {0xFC0} \
   CONFIG.USER_REG_DWIDTH {0x4} \
   CONFIG.USER_REG_ECC_CHK_EN {0x1} \
   CONFIG.USER_REG_HBM_MAP_T0_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH15 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH15 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH15 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH15 {0xFC0} \
   CONFIG.USER_REG_MODE_SELECT {0x0000} \
   CONFIG.USER_REG_OUTSTANDING_RD_TXN {0x40} \
   CONFIG.USER_REG_OUTSTANDING_WR_TXN {0x40} \
   CONFIG.USER_REG_PRIORITY {0x0} \
   CONFIG.USER_REG_RD_AXPROT_SEL {0x00} \
   CONFIG.USER_REG_RD_RATE_CREDIT_DROP {0x004} \
   CONFIG.USER_REG_RD_RATE_CREDIT_LIMIT {0x0100} \
   CONFIG.USER_REG_RD_VCA_TOKEN0 {0x33} \
   CONFIG.USER_REG_RPOISON_TO_SLVERR {0x0} \
   CONFIG.USER_REG_RROB_RAM_SETTING {0x012} \
   CONFIG.USER_REG_SMID_SEL {0x00000} \
   CONFIG.USER_REG_SRC {0x180} \
   CONFIG.USER_REG_TBASE_AXI_TIMEOUT {0x1} \
   CONFIG.USER_REG_TBASE_MODE_RLIMIT_RD {0x2} \
   CONFIG.USER_REG_TBASE_MODE_RLIMIT_WR {0x2} \
   CONFIG.USER_REG_TBASE_TRK_TIMEOUT {0x1} \
   CONFIG.USER_REG_VC_MAP {0xFAC} \
   CONFIG.USER_REG_WBUF_LAUNCH_SIZE {0x10} \
   CONFIG.USER_REG_WBUF_RAM_SETTING {0x012} \
   CONFIG.USER_REG_WR_AXPROT_SEL {0x00} \
   CONFIG.USER_REG_WR_RATE_CREDIT_DROP {0x004} \
   CONFIG.USER_REG_WR_RATE_CREDIT_LIMIT {0x0100} \
   CONFIG.USER_REG_WR_VCA_TOKEN0 {0xFF} \
 ] $S02_AXI_nmu
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells S02_AXI_nmu]

  # Create instance: S03_AXI_nmu, and set properties
  set S03_AXI_nmu [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_nmu:1.0 S03_AXI_nmu ]
  set_property -dict [ list \
   CONFIG.ATTR_FILE {nocattrs.dat} \
   CONFIG.USER_NOC_CATEGORY {PS} \
   CONFIG.USER_NOC_DATA512_WIDTH {128} \
   CONFIG.USER_NOC_NMU_WIDTH {128} \
   CONFIG.USER_PHYS_NAME {NOC_NMU128_X0Y6} \
   CONFIG.USER_REG_ADDR_DST0 {0x0000} \
   CONFIG.USER_REG_ADDR_DST1 {0x0000} \
   CONFIG.USER_REG_ADDR_DST2 {0x0000} \
   CONFIG.USER_REG_ADDR_DST3 {0x0000} \
   CONFIG.USER_REG_ADDR_DST4 {0x0000} \
   CONFIG.USER_REG_ADDR_DST5 {0x0000} \
   CONFIG.USER_REG_ADDR_DST6 {0x0000} \
   CONFIG.USER_REG_ADDR_DST7 {0x0000} \
   CONFIG.USER_REG_ADDR_DST8 {0x0000} \
   CONFIG.USER_REG_ADDR_DST9 {0x0000} \
   CONFIG.USER_REG_ADDR_DST10 {0x0000} \
   CONFIG.USER_REG_ADDR_DST11 {0x0000} \
   CONFIG.USER_REG_ADDR_DST12 {0x0000} \
   CONFIG.USER_REG_ADDR_DST13 {0x0000} \
   CONFIG.USER_REG_ADDR_DST14 {0x0000} \
   CONFIG.USER_REG_ADDR_DST15 {0x0000} \
   CONFIG.USER_REG_ADDR_ENABLE {0x0000} \
   CONFIG.USER_REG_ADDR_MADDR0 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR1 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR2 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR3 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR4 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR5 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR6 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR7 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR8 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR9 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR10 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR11 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR12 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR13 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR14 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR15 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK0 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK1 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK2 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK3 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK4 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK5 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK6 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK7 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK8 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK9 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK10 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK11 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK12 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK13 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK14 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK15 {0x00000000} \
   CONFIG.USER_REG_ADDR_REMAP {0x0000} \
   CONFIG.USER_REG_ADDR_RPADDR0 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR1 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR2 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR3 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR4 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR5 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR6 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR7 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR8 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR9 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR10 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR11 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR12 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR13 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR14 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR15 {0x00000000} \
   CONFIG.USER_REG_ADR_MAP_CPM {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_FPD_AFI_0 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_FPD_AFI_1 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_LPD_AFI_FS {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_0 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_1 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_2 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_3 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PCIE {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_0 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_1 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_2 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_3 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_QSPI {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_STM_GIC {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_XPDS {0xFC0} \
   CONFIG.USER_REG_AXI_LOOPBACK {0x00} \
   CONFIG.USER_REG_AXI_NON_MOD_DISABLE {0x0} \
   CONFIG.USER_REG_AXI_PAR_CHK {0x0} \
   CONFIG.USER_REG_CHOPSIZE {0xA} \
   CONFIG.USER_REG_DDR_ADR_MAP0 {0x6000} \
   CONFIG.USER_REG_DDR_ADR_MAP1 {0x1451} \
   CONFIG.USER_REG_DDR_ADR_MAP2 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP3 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP4 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP5 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP6 {0x1FFF} \
   CONFIG.USER_REG_DDR_DST_MAP0 {0x500} \
   CONFIG.USER_REG_DDR_DST_MAP1 {0x400} \
   CONFIG.USER_REG_DDR_DST_MAP2 {0x300} \
   CONFIG.USER_REG_DDR_DST_MAP3 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP4 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP5 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP6 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP7 {0xFC0} \
   CONFIG.USER_REG_DWIDTH {0x4} \
   CONFIG.USER_REG_ECC_CHK_EN {0x1} \
   CONFIG.USER_REG_HBM_MAP_T0_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH15 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH15 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH15 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH15 {0xFC0} \
   CONFIG.USER_REG_MODE_SELECT {0x0000} \
   CONFIG.USER_REG_OUTSTANDING_RD_TXN {0x40} \
   CONFIG.USER_REG_OUTSTANDING_WR_TXN {0x40} \
   CONFIG.USER_REG_PRIORITY {0x0} \
   CONFIG.USER_REG_RD_AXPROT_SEL {0x00} \
   CONFIG.USER_REG_RD_RATE_CREDIT_DROP {0x004} \
   CONFIG.USER_REG_RD_RATE_CREDIT_LIMIT {0x0100} \
   CONFIG.USER_REG_RD_VCA_TOKEN0 {0x33} \
   CONFIG.USER_REG_RPOISON_TO_SLVERR {0x0} \
   CONFIG.USER_REG_RROB_RAM_SETTING {0x012} \
   CONFIG.USER_REG_SMID_SEL {0x00000} \
   CONFIG.USER_REG_SRC {0x140} \
   CONFIG.USER_REG_TBASE_AXI_TIMEOUT {0x1} \
   CONFIG.USER_REG_TBASE_MODE_RLIMIT_RD {0x2} \
   CONFIG.USER_REG_TBASE_MODE_RLIMIT_WR {0x2} \
   CONFIG.USER_REG_TBASE_TRK_TIMEOUT {0x1} \
   CONFIG.USER_REG_VC_MAP {0xFAC} \
   CONFIG.USER_REG_WBUF_LAUNCH_SIZE {0x10} \
   CONFIG.USER_REG_WBUF_RAM_SETTING {0x012} \
   CONFIG.USER_REG_WR_AXPROT_SEL {0x00} \
   CONFIG.USER_REG_WR_RATE_CREDIT_DROP {0x004} \
   CONFIG.USER_REG_WR_RATE_CREDIT_LIMIT {0x0100} \
   CONFIG.USER_REG_WR_VCA_TOKEN0 {0xFF} \
 ] $S03_AXI_nmu
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells S03_AXI_nmu]

  # Create instance: S04_AXI_nmu, and set properties
  set S04_AXI_nmu [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_nmu:1.0 S04_AXI_nmu ]
  set_property -dict [ list \
   CONFIG.ATTR_FILE {nocattrs.dat} \
   CONFIG.USER_NOC_CATEGORY {PS} \
   CONFIG.USER_NOC_DATA512_WIDTH {128} \
   CONFIG.USER_NOC_NMU_WIDTH {128} \
   CONFIG.USER_PHYS_NAME {NOC_NMU128_X0Y5} \
   CONFIG.USER_REG_ADDR_DST0 {0x0000} \
   CONFIG.USER_REG_ADDR_DST1 {0x0000} \
   CONFIG.USER_REG_ADDR_DST2 {0x0000} \
   CONFIG.USER_REG_ADDR_DST3 {0x0000} \
   CONFIG.USER_REG_ADDR_DST4 {0x0000} \
   CONFIG.USER_REG_ADDR_DST5 {0x0000} \
   CONFIG.USER_REG_ADDR_DST6 {0x0000} \
   CONFIG.USER_REG_ADDR_DST7 {0x0000} \
   CONFIG.USER_REG_ADDR_DST8 {0x0000} \
   CONFIG.USER_REG_ADDR_DST9 {0x0000} \
   CONFIG.USER_REG_ADDR_DST10 {0x0000} \
   CONFIG.USER_REG_ADDR_DST11 {0x0000} \
   CONFIG.USER_REG_ADDR_DST12 {0x0000} \
   CONFIG.USER_REG_ADDR_DST13 {0x0000} \
   CONFIG.USER_REG_ADDR_DST14 {0x0000} \
   CONFIG.USER_REG_ADDR_DST15 {0x0000} \
   CONFIG.USER_REG_ADDR_ENABLE {0x0000} \
   CONFIG.USER_REG_ADDR_MADDR0 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR1 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR2 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR3 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR4 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR5 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR6 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR7 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR8 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR9 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR10 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR11 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR12 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR13 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR14 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR15 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK0 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK1 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK2 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK3 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK4 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK5 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK6 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK7 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK8 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK9 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK10 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK11 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK12 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK13 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK14 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK15 {0x00000000} \
   CONFIG.USER_REG_ADDR_REMAP {0x0000} \
   CONFIG.USER_REG_ADDR_RPADDR0 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR1 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR2 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR3 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR4 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR5 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR6 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR7 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR8 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR9 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR10 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR11 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR12 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR13 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR14 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR15 {0x00000000} \
   CONFIG.USER_REG_ADR_MAP_CPM {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_FPD_AFI_0 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_FPD_AFI_1 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_LPD_AFI_FS {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_0 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_1 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_2 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_3 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PCIE {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_0 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_1 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_2 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_3 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_QSPI {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_STM_GIC {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_XPDS {0xFC0} \
   CONFIG.USER_REG_AXI_LOOPBACK {0x00} \
   CONFIG.USER_REG_AXI_NON_MOD_DISABLE {0x0} \
   CONFIG.USER_REG_AXI_PAR_CHK {0x0} \
   CONFIG.USER_REG_CHOPSIZE {0xA} \
   CONFIG.USER_REG_DDR_ADR_MAP0 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP1 {0x1208} \
   CONFIG.USER_REG_DDR_ADR_MAP2 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP3 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP4 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP5 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP6 {0x1FFF} \
   CONFIG.USER_REG_DDR_DST_MAP0 {0x340} \
   CONFIG.USER_REG_DDR_DST_MAP1 {0x240} \
   CONFIG.USER_REG_DDR_DST_MAP2 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP3 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP4 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP5 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP6 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP7 {0xFC0} \
   CONFIG.USER_REG_DWIDTH {0x4} \
   CONFIG.USER_REG_ECC_CHK_EN {0x1} \
   CONFIG.USER_REG_HBM_MAP_T0_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH15 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH15 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH15 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH15 {0xFC0} \
   CONFIG.USER_REG_MODE_SELECT {0x0000} \
   CONFIG.USER_REG_OUTSTANDING_RD_TXN {0x40} \
   CONFIG.USER_REG_OUTSTANDING_WR_TXN {0x40} \
   CONFIG.USER_REG_PRIORITY {0x0} \
   CONFIG.USER_REG_RD_AXPROT_SEL {0x00} \
   CONFIG.USER_REG_RD_RATE_CREDIT_DROP {0x004} \
   CONFIG.USER_REG_RD_RATE_CREDIT_LIMIT {0x0100} \
   CONFIG.USER_REG_RD_VCA_TOKEN0 {0x34} \
   CONFIG.USER_REG_RPOISON_TO_SLVERR {0x0} \
   CONFIG.USER_REG_RROB_RAM_SETTING {0x012} \
   CONFIG.USER_REG_SMID_SEL {0x00000} \
   CONFIG.USER_REG_SRC {0x100} \
   CONFIG.USER_REG_TBASE_AXI_TIMEOUT {0x1} \
   CONFIG.USER_REG_TBASE_MODE_RLIMIT_RD {0x2} \
   CONFIG.USER_REG_TBASE_MODE_RLIMIT_WR {0x2} \
   CONFIG.USER_REG_TBASE_TRK_TIMEOUT {0x1} \
   CONFIG.USER_REG_VC_MAP {0xFAC} \
   CONFIG.USER_REG_WBUF_LAUNCH_SIZE {0x10} \
   CONFIG.USER_REG_WBUF_RAM_SETTING {0x012} \
   CONFIG.USER_REG_WR_AXPROT_SEL {0x00} \
   CONFIG.USER_REG_WR_RATE_CREDIT_DROP {0x004} \
   CONFIG.USER_REG_WR_RATE_CREDIT_LIMIT {0x0100} \
   CONFIG.USER_REG_WR_VCA_TOKEN0 {0xFF} \
 ] $S04_AXI_nmu
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells S04_AXI_nmu]

  # Create instance: S05_AXI_nmu, and set properties
  set S05_AXI_nmu [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_nmu:1.0 S05_AXI_nmu ]
  set_property -dict [ list \
   CONFIG.ATTR_FILE {nocattrs.dat} \
   CONFIG.USER_NOC_CATEGORY {PS} \
   CONFIG.USER_NOC_DATA512_WIDTH {128} \
   CONFIG.USER_NOC_NMU_WIDTH {128} \
   CONFIG.USER_PHYS_NAME {NOC_NMU128_X0Y1} \
   CONFIG.USER_REG_ADDR_DST0 {0x0000} \
   CONFIG.USER_REG_ADDR_DST1 {0x0000} \
   CONFIG.USER_REG_ADDR_DST2 {0x0000} \
   CONFIG.USER_REG_ADDR_DST3 {0x0000} \
   CONFIG.USER_REG_ADDR_DST4 {0x0000} \
   CONFIG.USER_REG_ADDR_DST5 {0x0000} \
   CONFIG.USER_REG_ADDR_DST6 {0x0000} \
   CONFIG.USER_REG_ADDR_DST7 {0x0000} \
   CONFIG.USER_REG_ADDR_DST8 {0x0000} \
   CONFIG.USER_REG_ADDR_DST9 {0x0000} \
   CONFIG.USER_REG_ADDR_DST10 {0x0000} \
   CONFIG.USER_REG_ADDR_DST11 {0x0000} \
   CONFIG.USER_REG_ADDR_DST12 {0x0000} \
   CONFIG.USER_REG_ADDR_DST13 {0x0000} \
   CONFIG.USER_REG_ADDR_DST14 {0x0000} \
   CONFIG.USER_REG_ADDR_DST15 {0x0000} \
   CONFIG.USER_REG_ADDR_ENABLE {0x0000} \
   CONFIG.USER_REG_ADDR_MADDR0 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR1 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR2 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR3 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR4 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR5 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR6 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR7 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR8 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR9 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR10 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR11 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR12 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR13 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR14 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR15 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK0 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK1 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK2 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK3 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK4 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK5 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK6 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK7 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK8 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK9 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK10 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK11 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK12 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK13 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK14 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK15 {0x00000000} \
   CONFIG.USER_REG_ADDR_REMAP {0x0000} \
   CONFIG.USER_REG_ADDR_RPADDR0 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR1 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR2 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR3 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR4 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR5 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR6 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR7 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR8 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR9 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR10 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR11 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR12 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR13 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR14 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR15 {0x00000000} \
   CONFIG.USER_REG_ADR_MAP_CPM {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_FPD_AFI_0 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_FPD_AFI_1 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_LPD_AFI_FS {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_0 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_1 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_2 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_3 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PCIE {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_0 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_1 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_2 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_3 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_QSPI {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_STM_GIC {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_XPDS {0xFC0} \
   CONFIG.USER_REG_AXI_LOOPBACK {0x00} \
   CONFIG.USER_REG_AXI_NON_MOD_DISABLE {0x0} \
   CONFIG.USER_REG_AXI_PAR_CHK {0x0} \
   CONFIG.USER_REG_CHOPSIZE {0xA} \
   CONFIG.USER_REG_DDR_ADR_MAP0 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP1 {0x1208} \
   CONFIG.USER_REG_DDR_ADR_MAP2 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP3 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP4 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP5 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP6 {0x1FFF} \
   CONFIG.USER_REG_DDR_DST_MAP0 {0x340} \
   CONFIG.USER_REG_DDR_DST_MAP1 {0x240} \
   CONFIG.USER_REG_DDR_DST_MAP2 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP3 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP4 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP5 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP6 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP7 {0xFC0} \
   CONFIG.USER_REG_DWIDTH {0x4} \
   CONFIG.USER_REG_ECC_CHK_EN {0x1} \
   CONFIG.USER_REG_HBM_MAP_T0_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH15 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH15 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH15 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH15 {0xFC0} \
   CONFIG.USER_REG_MODE_SELECT {0x0000} \
   CONFIG.USER_REG_OUTSTANDING_RD_TXN {0x40} \
   CONFIG.USER_REG_OUTSTANDING_WR_TXN {0x40} \
   CONFIG.USER_REG_PRIORITY {0x0} \
   CONFIG.USER_REG_RD_AXPROT_SEL {0x00} \
   CONFIG.USER_REG_RD_RATE_CREDIT_DROP {0x004} \
   CONFIG.USER_REG_RD_RATE_CREDIT_LIMIT {0x0100} \
   CONFIG.USER_REG_RD_VCA_TOKEN0 {0x34} \
   CONFIG.USER_REG_RPOISON_TO_SLVERR {0x0} \
   CONFIG.USER_REG_RROB_RAM_SETTING {0x012} \
   CONFIG.USER_REG_SMID_SEL {0x00000} \
   CONFIG.USER_REG_SRC {0x040} \
   CONFIG.USER_REG_TBASE_AXI_TIMEOUT {0x1} \
   CONFIG.USER_REG_TBASE_MODE_RLIMIT_RD {0x2} \
   CONFIG.USER_REG_TBASE_MODE_RLIMIT_WR {0x2} \
   CONFIG.USER_REG_TBASE_TRK_TIMEOUT {0x1} \
   CONFIG.USER_REG_VC_MAP {0xFAC} \
   CONFIG.USER_REG_WBUF_LAUNCH_SIZE {0x10} \
   CONFIG.USER_REG_WBUF_RAM_SETTING {0x012} \
   CONFIG.USER_REG_WR_AXPROT_SEL {0x00} \
   CONFIG.USER_REG_WR_RATE_CREDIT_DROP {0x004} \
   CONFIG.USER_REG_WR_RATE_CREDIT_LIMIT {0x0100} \
   CONFIG.USER_REG_WR_VCA_TOKEN0 {0xFF} \
 ] $S05_AXI_nmu
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells S05_AXI_nmu]

  # Create instance: S06_AXI_nmu, and set properties
  set S06_AXI_nmu [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_nmu:1.0 S06_AXI_nmu ]
  set_property -dict [ list \
   CONFIG.ATTR_FILE {nocattrs.dat} \
   CONFIG.USER_NOC_CATEGORY {PS} \
   CONFIG.USER_NOC_DATA512_WIDTH {128} \
   CONFIG.USER_NOC_NMU_WIDTH {128} \
   CONFIG.USER_PHYS_NAME {NOC_NMU128_X0Y0} \
   CONFIG.USER_REG_ADDR_DST0 {0x0000} \
   CONFIG.USER_REG_ADDR_DST1 {0x0000} \
   CONFIG.USER_REG_ADDR_DST2 {0x0000} \
   CONFIG.USER_REG_ADDR_DST3 {0x0000} \
   CONFIG.USER_REG_ADDR_DST4 {0x0000} \
   CONFIG.USER_REG_ADDR_DST5 {0x0000} \
   CONFIG.USER_REG_ADDR_DST6 {0x0000} \
   CONFIG.USER_REG_ADDR_DST7 {0x0000} \
   CONFIG.USER_REG_ADDR_DST8 {0x0000} \
   CONFIG.USER_REG_ADDR_DST9 {0x0000} \
   CONFIG.USER_REG_ADDR_DST10 {0x0000} \
   CONFIG.USER_REG_ADDR_DST11 {0x0000} \
   CONFIG.USER_REG_ADDR_DST12 {0x0000} \
   CONFIG.USER_REG_ADDR_DST13 {0x0000} \
   CONFIG.USER_REG_ADDR_DST14 {0x0000} \
   CONFIG.USER_REG_ADDR_DST15 {0x0000} \
   CONFIG.USER_REG_ADDR_ENABLE {0x0000} \
   CONFIG.USER_REG_ADDR_MADDR0 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR1 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR2 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR3 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR4 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR5 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR6 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR7 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR8 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR9 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR10 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR11 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR12 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR13 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR14 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR15 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK0 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK1 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK2 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK3 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK4 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK5 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK6 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK7 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK8 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK9 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK10 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK11 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK12 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK13 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK14 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK15 {0x00000000} \
   CONFIG.USER_REG_ADDR_REMAP {0x0000} \
   CONFIG.USER_REG_ADDR_RPADDR0 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR1 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR2 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR3 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR4 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR5 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR6 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR7 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR8 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR9 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR10 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR11 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR12 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR13 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR14 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR15 {0x00000000} \
   CONFIG.USER_REG_ADR_MAP_CPM {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_FPD_AFI_0 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_FPD_AFI_1 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_LPD_AFI_FS {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_0 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_1 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_2 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_3 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PCIE {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_0 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_1 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_2 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_3 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_QSPI {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_STM_GIC {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_XPDS {0xFC0} \
   CONFIG.USER_REG_AXI_LOOPBACK {0x00} \
   CONFIG.USER_REG_AXI_NON_MOD_DISABLE {0x0} \
   CONFIG.USER_REG_AXI_PAR_CHK {0x0} \
   CONFIG.USER_REG_CHOPSIZE {0xA} \
   CONFIG.USER_REG_DDR_ADR_MAP0 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP1 {0x1208} \
   CONFIG.USER_REG_DDR_ADR_MAP2 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP3 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP4 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP5 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP6 {0x1FFF} \
   CONFIG.USER_REG_DDR_DST_MAP0 {0x340} \
   CONFIG.USER_REG_DDR_DST_MAP1 {0x240} \
   CONFIG.USER_REG_DDR_DST_MAP2 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP3 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP4 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP5 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP6 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP7 {0xFC0} \
   CONFIG.USER_REG_DWIDTH {0x4} \
   CONFIG.USER_REG_ECC_CHK_EN {0x1} \
   CONFIG.USER_REG_HBM_MAP_T0_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH15 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH15 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH15 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH15 {0xFC0} \
   CONFIG.USER_REG_MODE_SELECT {0x0000} \
   CONFIG.USER_REG_OUTSTANDING_RD_TXN {0x40} \
   CONFIG.USER_REG_OUTSTANDING_WR_TXN {0x40} \
   CONFIG.USER_REG_PRIORITY {0x0} \
   CONFIG.USER_REG_RD_AXPROT_SEL {0x00} \
   CONFIG.USER_REG_RD_RATE_CREDIT_DROP {0x004} \
   CONFIG.USER_REG_RD_RATE_CREDIT_LIMIT {0x0100} \
   CONFIG.USER_REG_RD_VCA_TOKEN0 {0x34} \
   CONFIG.USER_REG_RPOISON_TO_SLVERR {0x0} \
   CONFIG.USER_REG_RROB_RAM_SETTING {0x012} \
   CONFIG.USER_REG_SMID_SEL {0x00000} \
   CONFIG.USER_REG_SRC {0x000} \
   CONFIG.USER_REG_TBASE_AXI_TIMEOUT {0x1} \
   CONFIG.USER_REG_TBASE_MODE_RLIMIT_RD {0x2} \
   CONFIG.USER_REG_TBASE_MODE_RLIMIT_WR {0x2} \
   CONFIG.USER_REG_TBASE_TRK_TIMEOUT {0x1} \
   CONFIG.USER_REG_VC_MAP {0xFAC} \
   CONFIG.USER_REG_WBUF_LAUNCH_SIZE {0x10} \
   CONFIG.USER_REG_WBUF_RAM_SETTING {0x012} \
   CONFIG.USER_REG_WR_AXPROT_SEL {0x00} \
   CONFIG.USER_REG_WR_RATE_CREDIT_DROP {0x004} \
   CONFIG.USER_REG_WR_RATE_CREDIT_LIMIT {0x0100} \
   CONFIG.USER_REG_WR_VCA_TOKEN0 {0xFF} \
 ] $S06_AXI_nmu
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells S06_AXI_nmu]

  # Create instance: S07_AXI_rpu, and set properties
  set S07_AXI_rpu [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_nmu:1.0 S07_AXI_rpu ]
  set_property -dict [ list \
   CONFIG.ATTR_FILE {nocattrs.dat} \
   CONFIG.USER_NOC_CATEGORY {PS} \
   CONFIG.USER_NOC_DATA512_WIDTH {128} \
   CONFIG.USER_NOC_NMU_WIDTH {128} \
   CONFIG.USER_PHYS_NAME {NOC_NMU128_X0Y3} \
   CONFIG.USER_REG_ADDR_DST0 {0x0000} \
   CONFIG.USER_REG_ADDR_DST1 {0x0000} \
   CONFIG.USER_REG_ADDR_DST2 {0x0000} \
   CONFIG.USER_REG_ADDR_DST3 {0x0000} \
   CONFIG.USER_REG_ADDR_DST4 {0x0000} \
   CONFIG.USER_REG_ADDR_DST5 {0x0000} \
   CONFIG.USER_REG_ADDR_DST6 {0x0000} \
   CONFIG.USER_REG_ADDR_DST7 {0x0000} \
   CONFIG.USER_REG_ADDR_DST8 {0x0000} \
   CONFIG.USER_REG_ADDR_DST9 {0x0000} \
   CONFIG.USER_REG_ADDR_DST10 {0x0000} \
   CONFIG.USER_REG_ADDR_DST11 {0x0000} \
   CONFIG.USER_REG_ADDR_DST12 {0x0000} \
   CONFIG.USER_REG_ADDR_DST13 {0x0000} \
   CONFIG.USER_REG_ADDR_DST14 {0x0000} \
   CONFIG.USER_REG_ADDR_DST15 {0x0000} \
   CONFIG.USER_REG_ADDR_ENABLE {0x0000} \
   CONFIG.USER_REG_ADDR_MADDR0 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR1 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR2 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR3 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR4 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR5 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR6 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR7 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR8 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR9 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR10 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR11 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR12 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR13 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR14 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR15 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK0 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK1 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK2 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK3 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK4 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK5 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK6 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK7 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK8 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK9 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK10 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK11 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK12 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK13 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK14 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK15 {0x00000000} \
   CONFIG.USER_REG_ADDR_REMAP {0x0000} \
   CONFIG.USER_REG_ADDR_RPADDR0 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR1 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR2 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR3 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR4 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR5 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR6 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR7 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR8 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR9 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR10 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR11 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR12 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR13 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR14 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR15 {0x00000000} \
   CONFIG.USER_REG_ADR_MAP_CPM {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_FPD_AFI_0 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_FPD_AFI_1 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_LPD_AFI_FS {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_0 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_1 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_2 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_3 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PCIE {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_0 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_1 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_2 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_3 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_QSPI {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_STM_GIC {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_XPDS {0xFC0} \
   CONFIG.USER_REG_AXI_LOOPBACK {0x00} \
   CONFIG.USER_REG_AXI_NON_MOD_DISABLE {0x0} \
   CONFIG.USER_REG_AXI_PAR_CHK {0x0} \
   CONFIG.USER_REG_CHOPSIZE {0xA} \
   CONFIG.USER_REG_DDR_ADR_MAP0 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP1 {0x1208} \
   CONFIG.USER_REG_DDR_ADR_MAP2 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP3 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP4 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP5 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP6 {0x1FFF} \
   CONFIG.USER_REG_DDR_DST_MAP0 {0x340} \
   CONFIG.USER_REG_DDR_DST_MAP1 {0x240} \
   CONFIG.USER_REG_DDR_DST_MAP2 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP3 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP4 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP5 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP6 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP7 {0xFC0} \
   CONFIG.USER_REG_DWIDTH {0x4} \
   CONFIG.USER_REG_ECC_CHK_EN {0x1} \
   CONFIG.USER_REG_HBM_MAP_T0_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH15 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH15 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH15 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH15 {0xFC0} \
   CONFIG.USER_REG_MODE_SELECT {0x0000} \
   CONFIG.USER_REG_OUTSTANDING_RD_TXN {0x40} \
   CONFIG.USER_REG_OUTSTANDING_WR_TXN {0x40} \
   CONFIG.USER_REG_PRIORITY {0x0} \
   CONFIG.USER_REG_RD_AXPROT_SEL {0x00} \
   CONFIG.USER_REG_RD_RATE_CREDIT_DROP {0x004} \
   CONFIG.USER_REG_RD_RATE_CREDIT_LIMIT {0x0100} \
   CONFIG.USER_REG_RD_VCA_TOKEN0 {0x34} \
   CONFIG.USER_REG_RPOISON_TO_SLVERR {0x0} \
   CONFIG.USER_REG_RROB_RAM_SETTING {0x012} \
   CONFIG.USER_REG_SMID_SEL {0x00000} \
   CONFIG.USER_REG_SRC {0x0C0} \
   CONFIG.USER_REG_TBASE_AXI_TIMEOUT {0x1} \
   CONFIG.USER_REG_TBASE_MODE_RLIMIT_RD {0x2} \
   CONFIG.USER_REG_TBASE_MODE_RLIMIT_WR {0x2} \
   CONFIG.USER_REG_TBASE_TRK_TIMEOUT {0x1} \
   CONFIG.USER_REG_VC_MAP {0xFAC} \
   CONFIG.USER_REG_WBUF_LAUNCH_SIZE {0x10} \
   CONFIG.USER_REG_WBUF_RAM_SETTING {0x012} \
   CONFIG.USER_REG_WR_AXPROT_SEL {0x00} \
   CONFIG.USER_REG_WR_RATE_CREDIT_DROP {0x004} \
   CONFIG.USER_REG_WR_RATE_CREDIT_LIMIT {0x0100} \
   CONFIG.USER_REG_WR_VCA_TOKEN0 {0xFF} \
 ] $S07_AXI_rpu
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells S07_AXI_rpu]

  # Create instance: S08_AXI_nmu, and set properties
  set S08_AXI_nmu [ create_bd_cell -type ip -vlnv xilinx.com:ip:noc_nmu:1.0 S08_AXI_nmu ]
  set_property -dict [ list \
   CONFIG.ATTR_FILE {nocattrs.dat} \
   CONFIG.USER_NOC_CATEGORY {PS} \
   CONFIG.USER_NOC_DATA512_WIDTH {128} \
   CONFIG.USER_NOC_NMU_WIDTH {128} \
   CONFIG.USER_PHYS_NAME {NOC_NMU128_X0Y2} \
   CONFIG.USER_REG_ADDR_DST0 {0x0000} \
   CONFIG.USER_REG_ADDR_DST1 {0x0000} \
   CONFIG.USER_REG_ADDR_DST2 {0x0000} \
   CONFIG.USER_REG_ADDR_DST3 {0x0000} \
   CONFIG.USER_REG_ADDR_DST4 {0x0000} \
   CONFIG.USER_REG_ADDR_DST5 {0x0000} \
   CONFIG.USER_REG_ADDR_DST6 {0x0000} \
   CONFIG.USER_REG_ADDR_DST7 {0x0000} \
   CONFIG.USER_REG_ADDR_DST8 {0x0000} \
   CONFIG.USER_REG_ADDR_DST9 {0x0000} \
   CONFIG.USER_REG_ADDR_DST10 {0x0000} \
   CONFIG.USER_REG_ADDR_DST11 {0x0000} \
   CONFIG.USER_REG_ADDR_DST12 {0x0000} \
   CONFIG.USER_REG_ADDR_DST13 {0x0000} \
   CONFIG.USER_REG_ADDR_DST14 {0x0000} \
   CONFIG.USER_REG_ADDR_DST15 {0x0000} \
   CONFIG.USER_REG_ADDR_ENABLE {0x0000} \
   CONFIG.USER_REG_ADDR_MADDR0 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR1 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR2 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR3 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR4 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR5 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR6 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR7 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR8 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR9 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR10 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR11 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR12 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR13 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR14 {0x00000000} \
   CONFIG.USER_REG_ADDR_MADDR15 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK0 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK1 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK2 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK3 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK4 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK5 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK6 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK7 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK8 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK9 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK10 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK11 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK12 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK13 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK14 {0x00000000} \
   CONFIG.USER_REG_ADDR_MASK15 {0x00000000} \
   CONFIG.USER_REG_ADDR_REMAP {0x0000} \
   CONFIG.USER_REG_ADDR_RPADDR0 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR1 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR2 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR3 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR4 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR5 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR6 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR7 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR8 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR9 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR10 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR11 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR12 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR13 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR14 {0x00000000} \
   CONFIG.USER_REG_ADDR_RPADDR15 {0x00000000} \
   CONFIG.USER_REG_ADR_MAP_CPM {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_FPD_AFI_0 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_FPD_AFI_1 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_LPD_AFI_FS {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_0 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_1 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_2 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_ME_ARRAY_3 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PCIE {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_0 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_1 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_2 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_PMC_ALIAS_3 {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_QSPI {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_STM_GIC {0xFC0} \
   CONFIG.USER_REG_ADR_MAP_XPDS {0xFC0} \
   CONFIG.USER_REG_AXI_LOOPBACK {0x00} \
   CONFIG.USER_REG_AXI_NON_MOD_DISABLE {0x0} \
   CONFIG.USER_REG_AXI_PAR_CHK {0x0} \
   CONFIG.USER_REG_CHOPSIZE {0xA} \
   CONFIG.USER_REG_DDR_ADR_MAP0 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP1 {0x1208} \
   CONFIG.USER_REG_DDR_ADR_MAP2 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP3 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP4 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP5 {0x1FFF} \
   CONFIG.USER_REG_DDR_ADR_MAP6 {0x1FFF} \
   CONFIG.USER_REG_DDR_DST_MAP0 {0x340} \
   CONFIG.USER_REG_DDR_DST_MAP1 {0x240} \
   CONFIG.USER_REG_DDR_DST_MAP2 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP3 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP4 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP5 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP6 {0xFC0} \
   CONFIG.USER_REG_DDR_DST_MAP7 {0xFC0} \
   CONFIG.USER_REG_DWIDTH {0x4} \
   CONFIG.USER_REG_ECC_CHK_EN {0x1} \
   CONFIG.USER_REG_HBM_MAP_T0_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T0_CH15 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T1_CH15 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T2_CH15 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH0 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH1 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH2 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH3 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH4 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH5 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH6 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH7 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH8 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH9 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH10 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH11 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH12 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH13 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH14 {0xFC0} \
   CONFIG.USER_REG_HBM_MAP_T3_CH15 {0xFC0} \
   CONFIG.USER_REG_MODE_SELECT {0x0000} \
   CONFIG.USER_REG_OUTSTANDING_RD_TXN {0x40} \
   CONFIG.USER_REG_OUTSTANDING_WR_TXN {0x40} \
   CONFIG.USER_REG_PRIORITY {0x0} \
   CONFIG.USER_REG_RD_AXPROT_SEL {0x00} \
   CONFIG.USER_REG_RD_RATE_CREDIT_DROP {0x004} \
   CONFIG.USER_REG_RD_RATE_CREDIT_LIMIT {0x0100} \
   CONFIG.USER_REG_RD_VCA_TOKEN0 {0x34} \
   CONFIG.USER_REG_RPOISON_TO_SLVERR {0x0} \
   CONFIG.USER_REG_RROB_RAM_SETTING {0x012} \
   CONFIG.USER_REG_SMID_SEL {0x00000} \
   CONFIG.USER_REG_SRC {0x080} \
   CONFIG.USER_REG_TBASE_AXI_TIMEOUT {0x1} \
   CONFIG.USER_REG_TBASE_MODE_RLIMIT_RD {0x2} \
   CONFIG.USER_REG_TBASE_MODE_RLIMIT_WR {0x2} \
   CONFIG.USER_REG_TBASE_TRK_TIMEOUT {0x1} \
   CONFIG.USER_REG_VC_MAP {0xFAC} \
   CONFIG.USER_REG_WBUF_LAUNCH_SIZE {0x10} \
   CONFIG.USER_REG_WBUF_RAM_SETTING {0x012} \
   CONFIG.USER_REG_WR_AXPROT_SEL {0x00} \
   CONFIG.USER_REG_WR_RATE_CREDIT_DROP {0x004} \
   CONFIG.USER_REG_WR_RATE_CREDIT_LIMIT {0x0100} \
   CONFIG.USER_REG_WR_VCA_TOKEN0 {0xFF} \
 ] $S08_AXI_nmu
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells S08_AXI_nmu]

  # Create instance: const_0, and set properties
  set const_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 const_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {1} \
 ] $const_0
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_cells const_0]

  # Create instance: hier_nsw
  create_hier_cell_hier_nsw [current_bd_instance .] hier_nsw

  # Create interface connections
  connect_bd_intf_net -intf_net M00_INI_nsw_M_INIMM [get_bd_intf_ports M00_INI] [get_bd_intf_pins hier_nsw/M00_INI]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets M00_INI_nsw_M_INIMM]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets M00_INI_nsw_M_INIMM]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets M00_INI_nsw_M_INIMM]
  connect_bd_intf_net -intf_net M01_INI_nsw_M_INIMM [get_bd_intf_ports M01_INI] [get_bd_intf_pins hier_nsw/M01_INI]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets M01_INI_nsw_M_INIMM]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets M01_INI_nsw_M_INIMM]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets M01_INI_nsw_M_INIMM]
  connect_bd_intf_net -intf_net M02_INI_nsw_M_INIMM [get_bd_intf_ports M02_INI] [get_bd_intf_pins hier_nsw/M02_INI]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets M02_INI_nsw_M_INIMM]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets M02_INI_nsw_M_INIMM]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets M02_INI_nsw_M_INIMM]
  connect_bd_intf_net -intf_net M03_INI_nsw_M_INIMM [get_bd_intf_ports M03_INI] [get_bd_intf_pins hier_nsw/M03_INI]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_intf_nets M03_INI_nsw_M_INIMM]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_intf_nets M03_INI_nsw_M_INIMM]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_intf_nets M03_INI_nsw_M_INIMM]
  connect_bd_intf_net -intf_net MC0_ddrc_CH0_DDR4 [get_bd_intf_ports CH0_DDR4_0] [get_bd_intf_pins MC0_ddrc/CH0_DDR4]
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_ports S00_AXI] [get_bd_intf_pins S00_AXI_nmu/SAXI4]
  connect_bd_intf_net -intf_net S01_AXI_1 [get_bd_intf_ports S01_AXI] [get_bd_intf_pins S01_AXI_nmu/SAXI4]
  connect_bd_intf_net -intf_net S02_AXI_1 [get_bd_intf_ports S02_AXI] [get_bd_intf_pins S02_AXI_nmu/SAXI4]
  connect_bd_intf_net -intf_net S03_AXI_1 [get_bd_intf_ports S03_AXI] [get_bd_intf_pins S03_AXI_nmu/SAXI4]
  connect_bd_intf_net -intf_net S04_AXI_1 [get_bd_intf_ports S04_AXI] [get_bd_intf_pins S04_AXI_nmu/SAXI4]
  connect_bd_intf_net -intf_net S05_AXI_1 [get_bd_intf_ports S05_AXI] [get_bd_intf_pins S05_AXI_nmu/SAXI4]
  connect_bd_intf_net -intf_net S06_AXI_1 [get_bd_intf_ports S06_AXI] [get_bd_intf_pins S06_AXI_nmu/SAXI4]
  connect_bd_intf_net -intf_net S07_AXI_1 [get_bd_intf_ports S07_AXI] [get_bd_intf_pins S07_AXI_rpu/SAXI4]
  connect_bd_intf_net -intf_net S08_AXI_1 [get_bd_intf_ports S08_AXI] [get_bd_intf_pins S08_AXI_nmu/SAXI4]
  connect_bd_intf_net -intf_net sys_clk0_1 [get_bd_intf_ports sys_clk0] [get_bd_intf_pins MC0_ddrc/SYS_CLK]

  # Create port connections
  connect_bd_net -net MC0_nsw_NSU [get_bd_pins MC0_ddrc/from_noc_0] [get_bd_pins hier_nsw/NSU]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_nets MC0_nsw_NSU]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_nets MC0_nsw_NSU]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_nets MC0_nsw_NSU]
  connect_bd_net -net MC1_nsw_NSU [get_bd_pins MC0_ddrc/from_noc_1] [get_bd_pins hier_nsw/NSU1]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_nets MC1_nsw_NSU]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_nets MC1_nsw_NSU]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_nets MC1_nsw_NSU]
  connect_bd_net -net MC2_nsw_NSU [get_bd_pins MC0_ddrc/from_noc_2] [get_bd_pins hier_nsw/NSU2]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_nets MC2_nsw_NSU]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_nets MC2_nsw_NSU]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_nets MC2_nsw_NSU]
  connect_bd_net -net MC3_nsw_NSU [get_bd_pins MC0_ddrc/from_noc_3] [get_bd_pins hier_nsw/NSU3]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_nets MC3_nsw_NSU]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_nets MC3_nsw_NSU]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_nets MC3_nsw_NSU]
  connect_bd_net -net S00_AXI_nmu_NMU [get_bd_pins S00_AXI_nmu/NMU] [get_bd_pins hier_nsw/NMU1]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_nets S00_AXI_nmu_NMU]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_nets S00_AXI_nmu_NMU]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_nets S00_AXI_nmu_NMU]
  connect_bd_net -net S01_AXI_nmu_NMU [get_bd_pins S01_AXI_nmu/NMU] [get_bd_pins hier_nsw/NMU3]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_nets S01_AXI_nmu_NMU]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_nets S01_AXI_nmu_NMU]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_nets S01_AXI_nmu_NMU]
  connect_bd_net -net S02_AXI_nmu_NMU [get_bd_pins S02_AXI_nmu/NMU] [get_bd_pins hier_nsw/NMU4]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_nets S02_AXI_nmu_NMU]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_nets S02_AXI_nmu_NMU]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_nets S02_AXI_nmu_NMU]
  connect_bd_net -net S03_AXI_nmu_NMU [get_bd_pins S03_AXI_nmu/NMU] [get_bd_pins hier_nsw/NMU5]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_nets S03_AXI_nmu_NMU]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_nets S03_AXI_nmu_NMU]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_nets S03_AXI_nmu_NMU]
  connect_bd_net -net S04_AXI_nmu_NMU [get_bd_pins S04_AXI_nmu/NMU] [get_bd_pins hier_nsw/NMU6]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_nets S04_AXI_nmu_NMU]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_nets S04_AXI_nmu_NMU]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_nets S04_AXI_nmu_NMU]
  connect_bd_net -net S05_AXI_nmu_NMU [get_bd_pins S05_AXI_nmu/NMU] [get_bd_pins hier_nsw/NMU2]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_nets S05_AXI_nmu_NMU]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_nets S05_AXI_nmu_NMU]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_nets S05_AXI_nmu_NMU]
  connect_bd_net -net S06_AXI_nmu_NMU [get_bd_pins S06_AXI_nmu/NMU] [get_bd_pins hier_nsw/NMU]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_nets S06_AXI_nmu_NMU]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_nets S06_AXI_nmu_NMU]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_nets S06_AXI_nmu_NMU]
  connect_bd_net -net S07_AXI_rpu_NMU [get_bd_pins S07_AXI_rpu/NMU] [get_bd_pins hier_nsw/NMU7]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_nets S07_AXI_rpu_NMU]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_nets S07_AXI_rpu_NMU]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_nets S07_AXI_rpu_NMU]
  connect_bd_net -net S08_AXI_nmu_NMU [get_bd_pins S08_AXI_nmu/NMU] [get_bd_pins hier_nsw/NMU8]
  set_property HDL_ATTRIBUTE.DONT_TOUCH {true} [get_bd_nets S08_AXI_nmu_NMU]
  set_property HDL_ATTRIBUTE.SYNTH_ONLY {true} [get_bd_nets S08_AXI_nmu_NMU]
  set_property HDL_ATTRIBUTE.NOC.IS_NOC_NET {true} [get_bd_nets S08_AXI_nmu_NMU]
  connect_bd_net -net aclk0_1 [get_bd_ports aclk0] [get_bd_pins S00_AXI_nmu/aclk]
  connect_bd_net -net aclk1_1 [get_bd_ports aclk1] [get_bd_pins S01_AXI_nmu/aclk]
  connect_bd_net -net aclk2_1 [get_bd_ports aclk2] [get_bd_pins S02_AXI_nmu/aclk]
  connect_bd_net -net aclk3_1 [get_bd_ports aclk3] [get_bd_pins S03_AXI_nmu/aclk]
  connect_bd_net -net aclk4_1 [get_bd_ports aclk4] [get_bd_pins S04_AXI_nmu/aclk]
  connect_bd_net -net aclk5_1 [get_bd_ports aclk5] [get_bd_pins S05_AXI_nmu/aclk]
  connect_bd_net -net aclk6_1 [get_bd_ports aclk6] [get_bd_pins S06_AXI_nmu/aclk]
  connect_bd_net -net aclk7_1 [get_bd_ports aclk7] [get_bd_pins S07_AXI_rpu/aclk]
  connect_bd_net -net aclk8_1 [get_bd_ports aclk8] [get_bd_pins S08_AXI_nmu/aclk]
  connect_bd_net -net const_0_dout [get_bd_pins S00_AXI_nmu/NMU_RD_DEST_MODE] [get_bd_pins S00_AXI_nmu/NMU_WR_DEST_MODE] [get_bd_pins S01_AXI_nmu/NMU_RD_DEST_MODE] [get_bd_pins S01_AXI_nmu/NMU_WR_DEST_MODE] [get_bd_pins S02_AXI_nmu/NMU_RD_DEST_MODE] [get_bd_pins S02_AXI_nmu/NMU_WR_DEST_MODE] [get_bd_pins S03_AXI_nmu/NMU_RD_DEST_MODE] [get_bd_pins S03_AXI_nmu/NMU_WR_DEST_MODE] [get_bd_pins S04_AXI_nmu/NMU_RD_DEST_MODE] [get_bd_pins S04_AXI_nmu/NMU_WR_DEST_MODE] [get_bd_pins S05_AXI_nmu/NMU_RD_DEST_MODE] [get_bd_pins S05_AXI_nmu/NMU_WR_DEST_MODE] [get_bd_pins S06_AXI_nmu/NMU_RD_DEST_MODE] [get_bd_pins S06_AXI_nmu/NMU_WR_DEST_MODE] [get_bd_pins S07_AXI_rpu/NMU_RD_DEST_MODE] [get_bd_pins S07_AXI_rpu/NMU_WR_DEST_MODE] [get_bd_pins S08_AXI_nmu/NMU_RD_DEST_MODE] [get_bd_pins S08_AXI_nmu/NMU_WR_DEST_MODE] [get_bd_pins const_0/dout]
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
  connect_bd_net -net s00_axi_nmu_if_noc_npp_in_noc_credit_rdy [get_bd_pins S00_AXI_nmu/IF_NOC_NPP_IN_NOC_CREDIT_RDY]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s00_axi_nmu_if_noc_npp_in_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s00_axi_nmu_if_noc_npp_in_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s00_axi_nmu_if_noc_npp_in_noc_credit_rdy]
  connect_bd_net -net s00_axi_nmu_if_noc_npp_in_noc_credit_return [get_bd_pins S00_AXI_nmu/IF_NOC_NPP_IN_NOC_CREDIT_RETURN]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s00_axi_nmu_if_noc_npp_in_noc_credit_return]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s00_axi_nmu_if_noc_npp_in_noc_credit_return]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s00_axi_nmu_if_noc_npp_in_noc_credit_return]
  connect_bd_net -net s00_axi_nmu_if_noc_npp_in_noc_flit [get_bd_pins S00_AXI_nmu/IF_NOC_NPP_IN_NOC_FLIT]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s00_axi_nmu_if_noc_npp_in_noc_flit]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s00_axi_nmu_if_noc_npp_in_noc_flit]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s00_axi_nmu_if_noc_npp_in_noc_flit]
  connect_bd_net -net s00_axi_nmu_if_noc_npp_in_noc_valid [get_bd_pins S00_AXI_nmu/IF_NOC_NPP_IN_NOC_VALID]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s00_axi_nmu_if_noc_npp_in_noc_valid]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s00_axi_nmu_if_noc_npp_in_noc_valid]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s00_axi_nmu_if_noc_npp_in_noc_valid]
  connect_bd_net -net s00_axi_nmu_if_noc_npp_out_noc_credit_rdy [get_bd_pins S00_AXI_nmu/IF_NOC_NPP_OUT_NOC_CREDIT_RDY]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s00_axi_nmu_if_noc_npp_out_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s00_axi_nmu_if_noc_npp_out_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s00_axi_nmu_if_noc_npp_out_noc_credit_rdy]
  connect_bd_net -net s00_axi_nmu_if_noc_npp_out_noc_credit_return [get_bd_pins S00_AXI_nmu/IF_NOC_NPP_OUT_NOC_CREDIT_RETURN]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s00_axi_nmu_if_noc_npp_out_noc_credit_return]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s00_axi_nmu_if_noc_npp_out_noc_credit_return]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s00_axi_nmu_if_noc_npp_out_noc_credit_return]
  connect_bd_net -net s00_axi_nmu_if_noc_npp_out_noc_flit [get_bd_pins S00_AXI_nmu/IF_NOC_NPP_OUT_NOC_FLIT]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s00_axi_nmu_if_noc_npp_out_noc_flit]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s00_axi_nmu_if_noc_npp_out_noc_flit]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s00_axi_nmu_if_noc_npp_out_noc_flit]
  connect_bd_net -net s00_axi_nmu_if_noc_npp_out_noc_valid [get_bd_pins S00_AXI_nmu/IF_NOC_NPP_OUT_NOC_VALID]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s00_axi_nmu_if_noc_npp_out_noc_valid]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s00_axi_nmu_if_noc_npp_out_noc_valid]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s00_axi_nmu_if_noc_npp_out_noc_valid]
  connect_bd_net -net s01_axi_nmu_if_noc_npp_in_noc_credit_rdy [get_bd_pins S01_AXI_nmu/IF_NOC_NPP_IN_NOC_CREDIT_RDY]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s01_axi_nmu_if_noc_npp_in_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s01_axi_nmu_if_noc_npp_in_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s01_axi_nmu_if_noc_npp_in_noc_credit_rdy]
  connect_bd_net -net s01_axi_nmu_if_noc_npp_in_noc_credit_return [get_bd_pins S01_AXI_nmu/IF_NOC_NPP_IN_NOC_CREDIT_RETURN]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s01_axi_nmu_if_noc_npp_in_noc_credit_return]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s01_axi_nmu_if_noc_npp_in_noc_credit_return]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s01_axi_nmu_if_noc_npp_in_noc_credit_return]
  connect_bd_net -net s01_axi_nmu_if_noc_npp_in_noc_flit [get_bd_pins S01_AXI_nmu/IF_NOC_NPP_IN_NOC_FLIT]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s01_axi_nmu_if_noc_npp_in_noc_flit]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s01_axi_nmu_if_noc_npp_in_noc_flit]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s01_axi_nmu_if_noc_npp_in_noc_flit]
  connect_bd_net -net s01_axi_nmu_if_noc_npp_in_noc_valid [get_bd_pins S01_AXI_nmu/IF_NOC_NPP_IN_NOC_VALID]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s01_axi_nmu_if_noc_npp_in_noc_valid]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s01_axi_nmu_if_noc_npp_in_noc_valid]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s01_axi_nmu_if_noc_npp_in_noc_valid]
  connect_bd_net -net s01_axi_nmu_if_noc_npp_out_noc_credit_rdy [get_bd_pins S01_AXI_nmu/IF_NOC_NPP_OUT_NOC_CREDIT_RDY]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s01_axi_nmu_if_noc_npp_out_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s01_axi_nmu_if_noc_npp_out_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s01_axi_nmu_if_noc_npp_out_noc_credit_rdy]
  connect_bd_net -net s01_axi_nmu_if_noc_npp_out_noc_credit_return [get_bd_pins S01_AXI_nmu/IF_NOC_NPP_OUT_NOC_CREDIT_RETURN]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s01_axi_nmu_if_noc_npp_out_noc_credit_return]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s01_axi_nmu_if_noc_npp_out_noc_credit_return]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s01_axi_nmu_if_noc_npp_out_noc_credit_return]
  connect_bd_net -net s01_axi_nmu_if_noc_npp_out_noc_flit [get_bd_pins S01_AXI_nmu/IF_NOC_NPP_OUT_NOC_FLIT]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s01_axi_nmu_if_noc_npp_out_noc_flit]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s01_axi_nmu_if_noc_npp_out_noc_flit]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s01_axi_nmu_if_noc_npp_out_noc_flit]
  connect_bd_net -net s01_axi_nmu_if_noc_npp_out_noc_valid [get_bd_pins S01_AXI_nmu/IF_NOC_NPP_OUT_NOC_VALID]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s01_axi_nmu_if_noc_npp_out_noc_valid]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s01_axi_nmu_if_noc_npp_out_noc_valid]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s01_axi_nmu_if_noc_npp_out_noc_valid]
  connect_bd_net -net s02_axi_nmu_if_noc_npp_in_noc_credit_rdy [get_bd_pins S02_AXI_nmu/IF_NOC_NPP_IN_NOC_CREDIT_RDY]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s02_axi_nmu_if_noc_npp_in_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s02_axi_nmu_if_noc_npp_in_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s02_axi_nmu_if_noc_npp_in_noc_credit_rdy]
  connect_bd_net -net s02_axi_nmu_if_noc_npp_in_noc_credit_return [get_bd_pins S02_AXI_nmu/IF_NOC_NPP_IN_NOC_CREDIT_RETURN]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s02_axi_nmu_if_noc_npp_in_noc_credit_return]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s02_axi_nmu_if_noc_npp_in_noc_credit_return]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s02_axi_nmu_if_noc_npp_in_noc_credit_return]
  connect_bd_net -net s02_axi_nmu_if_noc_npp_in_noc_flit [get_bd_pins S02_AXI_nmu/IF_NOC_NPP_IN_NOC_FLIT]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s02_axi_nmu_if_noc_npp_in_noc_flit]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s02_axi_nmu_if_noc_npp_in_noc_flit]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s02_axi_nmu_if_noc_npp_in_noc_flit]
  connect_bd_net -net s02_axi_nmu_if_noc_npp_in_noc_valid [get_bd_pins S02_AXI_nmu/IF_NOC_NPP_IN_NOC_VALID]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s02_axi_nmu_if_noc_npp_in_noc_valid]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s02_axi_nmu_if_noc_npp_in_noc_valid]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s02_axi_nmu_if_noc_npp_in_noc_valid]
  connect_bd_net -net s02_axi_nmu_if_noc_npp_out_noc_credit_rdy [get_bd_pins S02_AXI_nmu/IF_NOC_NPP_OUT_NOC_CREDIT_RDY]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s02_axi_nmu_if_noc_npp_out_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s02_axi_nmu_if_noc_npp_out_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s02_axi_nmu_if_noc_npp_out_noc_credit_rdy]
  connect_bd_net -net s02_axi_nmu_if_noc_npp_out_noc_credit_return [get_bd_pins S02_AXI_nmu/IF_NOC_NPP_OUT_NOC_CREDIT_RETURN]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s02_axi_nmu_if_noc_npp_out_noc_credit_return]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s02_axi_nmu_if_noc_npp_out_noc_credit_return]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s02_axi_nmu_if_noc_npp_out_noc_credit_return]
  connect_bd_net -net s02_axi_nmu_if_noc_npp_out_noc_flit [get_bd_pins S02_AXI_nmu/IF_NOC_NPP_OUT_NOC_FLIT]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s02_axi_nmu_if_noc_npp_out_noc_flit]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s02_axi_nmu_if_noc_npp_out_noc_flit]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s02_axi_nmu_if_noc_npp_out_noc_flit]
  connect_bd_net -net s02_axi_nmu_if_noc_npp_out_noc_valid [get_bd_pins S02_AXI_nmu/IF_NOC_NPP_OUT_NOC_VALID]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s02_axi_nmu_if_noc_npp_out_noc_valid]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s02_axi_nmu_if_noc_npp_out_noc_valid]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s02_axi_nmu_if_noc_npp_out_noc_valid]
  connect_bd_net -net s03_axi_nmu_if_noc_npp_in_noc_credit_rdy [get_bd_pins S03_AXI_nmu/IF_NOC_NPP_IN_NOC_CREDIT_RDY]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s03_axi_nmu_if_noc_npp_in_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s03_axi_nmu_if_noc_npp_in_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s03_axi_nmu_if_noc_npp_in_noc_credit_rdy]
  connect_bd_net -net s03_axi_nmu_if_noc_npp_in_noc_credit_return [get_bd_pins S03_AXI_nmu/IF_NOC_NPP_IN_NOC_CREDIT_RETURN]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s03_axi_nmu_if_noc_npp_in_noc_credit_return]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s03_axi_nmu_if_noc_npp_in_noc_credit_return]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s03_axi_nmu_if_noc_npp_in_noc_credit_return]
  connect_bd_net -net s03_axi_nmu_if_noc_npp_in_noc_flit [get_bd_pins S03_AXI_nmu/IF_NOC_NPP_IN_NOC_FLIT]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s03_axi_nmu_if_noc_npp_in_noc_flit]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s03_axi_nmu_if_noc_npp_in_noc_flit]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s03_axi_nmu_if_noc_npp_in_noc_flit]
  connect_bd_net -net s03_axi_nmu_if_noc_npp_in_noc_valid [get_bd_pins S03_AXI_nmu/IF_NOC_NPP_IN_NOC_VALID]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s03_axi_nmu_if_noc_npp_in_noc_valid]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s03_axi_nmu_if_noc_npp_in_noc_valid]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s03_axi_nmu_if_noc_npp_in_noc_valid]
  connect_bd_net -net s03_axi_nmu_if_noc_npp_out_noc_credit_rdy [get_bd_pins S03_AXI_nmu/IF_NOC_NPP_OUT_NOC_CREDIT_RDY]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s03_axi_nmu_if_noc_npp_out_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s03_axi_nmu_if_noc_npp_out_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s03_axi_nmu_if_noc_npp_out_noc_credit_rdy]
  connect_bd_net -net s03_axi_nmu_if_noc_npp_out_noc_credit_return [get_bd_pins S03_AXI_nmu/IF_NOC_NPP_OUT_NOC_CREDIT_RETURN]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s03_axi_nmu_if_noc_npp_out_noc_credit_return]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s03_axi_nmu_if_noc_npp_out_noc_credit_return]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s03_axi_nmu_if_noc_npp_out_noc_credit_return]
  connect_bd_net -net s03_axi_nmu_if_noc_npp_out_noc_flit [get_bd_pins S03_AXI_nmu/IF_NOC_NPP_OUT_NOC_FLIT]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s03_axi_nmu_if_noc_npp_out_noc_flit]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s03_axi_nmu_if_noc_npp_out_noc_flit]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s03_axi_nmu_if_noc_npp_out_noc_flit]
  connect_bd_net -net s03_axi_nmu_if_noc_npp_out_noc_valid [get_bd_pins S03_AXI_nmu/IF_NOC_NPP_OUT_NOC_VALID]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s03_axi_nmu_if_noc_npp_out_noc_valid]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s03_axi_nmu_if_noc_npp_out_noc_valid]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s03_axi_nmu_if_noc_npp_out_noc_valid]
  connect_bd_net -net s04_axi_nmu_if_noc_npp_in_noc_credit_rdy [get_bd_pins S04_AXI_nmu/IF_NOC_NPP_IN_NOC_CREDIT_RDY]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s04_axi_nmu_if_noc_npp_in_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s04_axi_nmu_if_noc_npp_in_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s04_axi_nmu_if_noc_npp_in_noc_credit_rdy]
  connect_bd_net -net s04_axi_nmu_if_noc_npp_in_noc_credit_return [get_bd_pins S04_AXI_nmu/IF_NOC_NPP_IN_NOC_CREDIT_RETURN]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s04_axi_nmu_if_noc_npp_in_noc_credit_return]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s04_axi_nmu_if_noc_npp_in_noc_credit_return]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s04_axi_nmu_if_noc_npp_in_noc_credit_return]
  connect_bd_net -net s04_axi_nmu_if_noc_npp_in_noc_flit [get_bd_pins S04_AXI_nmu/IF_NOC_NPP_IN_NOC_FLIT]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s04_axi_nmu_if_noc_npp_in_noc_flit]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s04_axi_nmu_if_noc_npp_in_noc_flit]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s04_axi_nmu_if_noc_npp_in_noc_flit]
  connect_bd_net -net s04_axi_nmu_if_noc_npp_in_noc_valid [get_bd_pins S04_AXI_nmu/IF_NOC_NPP_IN_NOC_VALID]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s04_axi_nmu_if_noc_npp_in_noc_valid]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s04_axi_nmu_if_noc_npp_in_noc_valid]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s04_axi_nmu_if_noc_npp_in_noc_valid]
  connect_bd_net -net s04_axi_nmu_if_noc_npp_out_noc_credit_rdy [get_bd_pins S04_AXI_nmu/IF_NOC_NPP_OUT_NOC_CREDIT_RDY]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s04_axi_nmu_if_noc_npp_out_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s04_axi_nmu_if_noc_npp_out_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s04_axi_nmu_if_noc_npp_out_noc_credit_rdy]
  connect_bd_net -net s04_axi_nmu_if_noc_npp_out_noc_credit_return [get_bd_pins S04_AXI_nmu/IF_NOC_NPP_OUT_NOC_CREDIT_RETURN]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s04_axi_nmu_if_noc_npp_out_noc_credit_return]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s04_axi_nmu_if_noc_npp_out_noc_credit_return]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s04_axi_nmu_if_noc_npp_out_noc_credit_return]
  connect_bd_net -net s04_axi_nmu_if_noc_npp_out_noc_flit [get_bd_pins S04_AXI_nmu/IF_NOC_NPP_OUT_NOC_FLIT]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s04_axi_nmu_if_noc_npp_out_noc_flit]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s04_axi_nmu_if_noc_npp_out_noc_flit]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s04_axi_nmu_if_noc_npp_out_noc_flit]
  connect_bd_net -net s04_axi_nmu_if_noc_npp_out_noc_valid [get_bd_pins S04_AXI_nmu/IF_NOC_NPP_OUT_NOC_VALID]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s04_axi_nmu_if_noc_npp_out_noc_valid]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s04_axi_nmu_if_noc_npp_out_noc_valid]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s04_axi_nmu_if_noc_npp_out_noc_valid]
  connect_bd_net -net s05_axi_nmu_if_noc_npp_in_noc_credit_rdy [get_bd_pins S05_AXI_nmu/IF_NOC_NPP_IN_NOC_CREDIT_RDY]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s05_axi_nmu_if_noc_npp_in_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s05_axi_nmu_if_noc_npp_in_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s05_axi_nmu_if_noc_npp_in_noc_credit_rdy]
  connect_bd_net -net s05_axi_nmu_if_noc_npp_in_noc_credit_return [get_bd_pins S05_AXI_nmu/IF_NOC_NPP_IN_NOC_CREDIT_RETURN]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s05_axi_nmu_if_noc_npp_in_noc_credit_return]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s05_axi_nmu_if_noc_npp_in_noc_credit_return]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s05_axi_nmu_if_noc_npp_in_noc_credit_return]
  connect_bd_net -net s05_axi_nmu_if_noc_npp_in_noc_flit [get_bd_pins S05_AXI_nmu/IF_NOC_NPP_IN_NOC_FLIT]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s05_axi_nmu_if_noc_npp_in_noc_flit]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s05_axi_nmu_if_noc_npp_in_noc_flit]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s05_axi_nmu_if_noc_npp_in_noc_flit]
  connect_bd_net -net s05_axi_nmu_if_noc_npp_in_noc_valid [get_bd_pins S05_AXI_nmu/IF_NOC_NPP_IN_NOC_VALID]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s05_axi_nmu_if_noc_npp_in_noc_valid]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s05_axi_nmu_if_noc_npp_in_noc_valid]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s05_axi_nmu_if_noc_npp_in_noc_valid]
  connect_bd_net -net s05_axi_nmu_if_noc_npp_out_noc_credit_rdy [get_bd_pins S05_AXI_nmu/IF_NOC_NPP_OUT_NOC_CREDIT_RDY]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s05_axi_nmu_if_noc_npp_out_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s05_axi_nmu_if_noc_npp_out_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s05_axi_nmu_if_noc_npp_out_noc_credit_rdy]
  connect_bd_net -net s05_axi_nmu_if_noc_npp_out_noc_credit_return [get_bd_pins S05_AXI_nmu/IF_NOC_NPP_OUT_NOC_CREDIT_RETURN]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s05_axi_nmu_if_noc_npp_out_noc_credit_return]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s05_axi_nmu_if_noc_npp_out_noc_credit_return]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s05_axi_nmu_if_noc_npp_out_noc_credit_return]
  connect_bd_net -net s05_axi_nmu_if_noc_npp_out_noc_flit [get_bd_pins S05_AXI_nmu/IF_NOC_NPP_OUT_NOC_FLIT]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s05_axi_nmu_if_noc_npp_out_noc_flit]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s05_axi_nmu_if_noc_npp_out_noc_flit]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s05_axi_nmu_if_noc_npp_out_noc_flit]
  connect_bd_net -net s05_axi_nmu_if_noc_npp_out_noc_valid [get_bd_pins S05_AXI_nmu/IF_NOC_NPP_OUT_NOC_VALID]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s05_axi_nmu_if_noc_npp_out_noc_valid]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s05_axi_nmu_if_noc_npp_out_noc_valid]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s05_axi_nmu_if_noc_npp_out_noc_valid]
  connect_bd_net -net s06_axi_nmu_if_noc_npp_in_noc_credit_rdy [get_bd_pins S06_AXI_nmu/IF_NOC_NPP_IN_NOC_CREDIT_RDY]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s06_axi_nmu_if_noc_npp_in_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s06_axi_nmu_if_noc_npp_in_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s06_axi_nmu_if_noc_npp_in_noc_credit_rdy]
  connect_bd_net -net s06_axi_nmu_if_noc_npp_in_noc_credit_return [get_bd_pins S06_AXI_nmu/IF_NOC_NPP_IN_NOC_CREDIT_RETURN]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s06_axi_nmu_if_noc_npp_in_noc_credit_return]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s06_axi_nmu_if_noc_npp_in_noc_credit_return]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s06_axi_nmu_if_noc_npp_in_noc_credit_return]
  connect_bd_net -net s06_axi_nmu_if_noc_npp_in_noc_flit [get_bd_pins S06_AXI_nmu/IF_NOC_NPP_IN_NOC_FLIT]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s06_axi_nmu_if_noc_npp_in_noc_flit]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s06_axi_nmu_if_noc_npp_in_noc_flit]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s06_axi_nmu_if_noc_npp_in_noc_flit]
  connect_bd_net -net s06_axi_nmu_if_noc_npp_in_noc_valid [get_bd_pins S06_AXI_nmu/IF_NOC_NPP_IN_NOC_VALID]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s06_axi_nmu_if_noc_npp_in_noc_valid]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s06_axi_nmu_if_noc_npp_in_noc_valid]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s06_axi_nmu_if_noc_npp_in_noc_valid]
  connect_bd_net -net s06_axi_nmu_if_noc_npp_out_noc_credit_rdy [get_bd_pins S06_AXI_nmu/IF_NOC_NPP_OUT_NOC_CREDIT_RDY]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s06_axi_nmu_if_noc_npp_out_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s06_axi_nmu_if_noc_npp_out_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s06_axi_nmu_if_noc_npp_out_noc_credit_rdy]
  connect_bd_net -net s06_axi_nmu_if_noc_npp_out_noc_credit_return [get_bd_pins S06_AXI_nmu/IF_NOC_NPP_OUT_NOC_CREDIT_RETURN]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s06_axi_nmu_if_noc_npp_out_noc_credit_return]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s06_axi_nmu_if_noc_npp_out_noc_credit_return]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s06_axi_nmu_if_noc_npp_out_noc_credit_return]
  connect_bd_net -net s06_axi_nmu_if_noc_npp_out_noc_flit [get_bd_pins S06_AXI_nmu/IF_NOC_NPP_OUT_NOC_FLIT]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s06_axi_nmu_if_noc_npp_out_noc_flit]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s06_axi_nmu_if_noc_npp_out_noc_flit]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s06_axi_nmu_if_noc_npp_out_noc_flit]
  connect_bd_net -net s06_axi_nmu_if_noc_npp_out_noc_valid [get_bd_pins S06_AXI_nmu/IF_NOC_NPP_OUT_NOC_VALID]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s06_axi_nmu_if_noc_npp_out_noc_valid]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s06_axi_nmu_if_noc_npp_out_noc_valid]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s06_axi_nmu_if_noc_npp_out_noc_valid]
  connect_bd_net -net s07_axi_rpu_if_noc_npp_in_noc_credit_rdy [get_bd_pins S07_AXI_rpu/IF_NOC_NPP_IN_NOC_CREDIT_RDY]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s07_axi_rpu_if_noc_npp_in_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s07_axi_rpu_if_noc_npp_in_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s07_axi_rpu_if_noc_npp_in_noc_credit_rdy]
  connect_bd_net -net s07_axi_rpu_if_noc_npp_in_noc_credit_return [get_bd_pins S07_AXI_rpu/IF_NOC_NPP_IN_NOC_CREDIT_RETURN]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s07_axi_rpu_if_noc_npp_in_noc_credit_return]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s07_axi_rpu_if_noc_npp_in_noc_credit_return]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s07_axi_rpu_if_noc_npp_in_noc_credit_return]
  connect_bd_net -net s07_axi_rpu_if_noc_npp_in_noc_flit [get_bd_pins S07_AXI_rpu/IF_NOC_NPP_IN_NOC_FLIT]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s07_axi_rpu_if_noc_npp_in_noc_flit]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s07_axi_rpu_if_noc_npp_in_noc_flit]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s07_axi_rpu_if_noc_npp_in_noc_flit]
  connect_bd_net -net s07_axi_rpu_if_noc_npp_in_noc_valid [get_bd_pins S07_AXI_rpu/IF_NOC_NPP_IN_NOC_VALID]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s07_axi_rpu_if_noc_npp_in_noc_valid]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s07_axi_rpu_if_noc_npp_in_noc_valid]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s07_axi_rpu_if_noc_npp_in_noc_valid]
  connect_bd_net -net s07_axi_rpu_if_noc_npp_out_noc_credit_rdy [get_bd_pins S07_AXI_rpu/IF_NOC_NPP_OUT_NOC_CREDIT_RDY]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s07_axi_rpu_if_noc_npp_out_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s07_axi_rpu_if_noc_npp_out_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s07_axi_rpu_if_noc_npp_out_noc_credit_rdy]
  connect_bd_net -net s07_axi_rpu_if_noc_npp_out_noc_credit_return [get_bd_pins S07_AXI_rpu/IF_NOC_NPP_OUT_NOC_CREDIT_RETURN]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s07_axi_rpu_if_noc_npp_out_noc_credit_return]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s07_axi_rpu_if_noc_npp_out_noc_credit_return]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s07_axi_rpu_if_noc_npp_out_noc_credit_return]
  connect_bd_net -net s07_axi_rpu_if_noc_npp_out_noc_flit [get_bd_pins S07_AXI_rpu/IF_NOC_NPP_OUT_NOC_FLIT]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s07_axi_rpu_if_noc_npp_out_noc_flit]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s07_axi_rpu_if_noc_npp_out_noc_flit]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s07_axi_rpu_if_noc_npp_out_noc_flit]
  connect_bd_net -net s07_axi_rpu_if_noc_npp_out_noc_valid [get_bd_pins S07_AXI_rpu/IF_NOC_NPP_OUT_NOC_VALID]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s07_axi_rpu_if_noc_npp_out_noc_valid]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s07_axi_rpu_if_noc_npp_out_noc_valid]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s07_axi_rpu_if_noc_npp_out_noc_valid]
  connect_bd_net -net s08_axi_nmu_if_noc_npp_in_noc_credit_rdy [get_bd_pins S08_AXI_nmu/IF_NOC_NPP_IN_NOC_CREDIT_RDY]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s08_axi_nmu_if_noc_npp_in_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s08_axi_nmu_if_noc_npp_in_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s08_axi_nmu_if_noc_npp_in_noc_credit_rdy]
  connect_bd_net -net s08_axi_nmu_if_noc_npp_in_noc_credit_return [get_bd_pins S08_AXI_nmu/IF_NOC_NPP_IN_NOC_CREDIT_RETURN]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s08_axi_nmu_if_noc_npp_in_noc_credit_return]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s08_axi_nmu_if_noc_npp_in_noc_credit_return]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s08_axi_nmu_if_noc_npp_in_noc_credit_return]
  connect_bd_net -net s08_axi_nmu_if_noc_npp_in_noc_flit [get_bd_pins S08_AXI_nmu/IF_NOC_NPP_IN_NOC_FLIT]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s08_axi_nmu_if_noc_npp_in_noc_flit]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s08_axi_nmu_if_noc_npp_in_noc_flit]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s08_axi_nmu_if_noc_npp_in_noc_flit]
  connect_bd_net -net s08_axi_nmu_if_noc_npp_in_noc_valid [get_bd_pins S08_AXI_nmu/IF_NOC_NPP_IN_NOC_VALID]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s08_axi_nmu_if_noc_npp_in_noc_valid]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s08_axi_nmu_if_noc_npp_in_noc_valid]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s08_axi_nmu_if_noc_npp_in_noc_valid]
  connect_bd_net -net s08_axi_nmu_if_noc_npp_out_noc_credit_rdy [get_bd_pins S08_AXI_nmu/IF_NOC_NPP_OUT_NOC_CREDIT_RDY]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s08_axi_nmu_if_noc_npp_out_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s08_axi_nmu_if_noc_npp_out_noc_credit_rdy]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s08_axi_nmu_if_noc_npp_out_noc_credit_rdy]
  connect_bd_net -net s08_axi_nmu_if_noc_npp_out_noc_credit_return [get_bd_pins S08_AXI_nmu/IF_NOC_NPP_OUT_NOC_CREDIT_RETURN]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s08_axi_nmu_if_noc_npp_out_noc_credit_return]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s08_axi_nmu_if_noc_npp_out_noc_credit_return]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s08_axi_nmu_if_noc_npp_out_noc_credit_return]
  connect_bd_net -net s08_axi_nmu_if_noc_npp_out_noc_flit [get_bd_pins S08_AXI_nmu/IF_NOC_NPP_OUT_NOC_FLIT]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s08_axi_nmu_if_noc_npp_out_noc_flit]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s08_axi_nmu_if_noc_npp_out_noc_flit]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s08_axi_nmu_if_noc_npp_out_noc_flit]
  connect_bd_net -net s08_axi_nmu_if_noc_npp_out_noc_valid [get_bd_pins S08_AXI_nmu/IF_NOC_NPP_OUT_NOC_VALID]
  set_property HDL_ATTRIBUTE.SIM_ONLY {TRUE} [get_bd_nets s08_axi_nmu_if_noc_npp_out_noc_valid]
  set_property HDL_ATTRIBUTE.EXT_CONN {TRUE} [get_bd_nets s08_axi_nmu_if_noc_npp_out_noc_valid]
  set_property HDL_ATTRIBUTE.HIDDEN {TRUE} [get_bd_nets s08_axi_nmu_if_noc_npp_out_noc_valid]

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


