#############################################################
# Clock Period Constraints                                 
#############################################################
#
#set_disable_timing -from CLK_FROM_OTHER_XPHY -to CLK_TO_UPPER -objects [get_cells -hierarchical -filter { PRIMITIVE_TYPE == I/O.PHY.XPHY }] 

#BLI constraint
set_property BLI TRUE [get_cells -hierarchical data_to_fabric_*_reg*[*]]

#set_property BLI TRUE [get_cells -hierarchical fifo_rd_en_int_bli_*]
#set_false_path -from [get_cells -hier -filter BLI==TRUE] -to [get_cells -hier -filter REF_NAME==XPHY]
#set_false_path -from [get_cells -hier -filter REF_NAME==XPHY] -to [get_cells -hier -filter BLI==TRUE]
set_property DONT_TOUCH true [get_cells -hierarchical design_1_advanced_io_wizard_0_0_phy_i]


#set_param place.forceBliDrivingClkFbDeskewInXpll 1
