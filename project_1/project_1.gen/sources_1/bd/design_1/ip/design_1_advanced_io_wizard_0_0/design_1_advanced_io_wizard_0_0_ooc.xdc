

#############################################################
# Clock Period Constraints                                 
#############################################################
create_clock -period 3.334 [get_ports  ctrl_clk]
create_clock -period 4.000 [get_ports  fifo_rd_clk]
create_clock -period 4.000 [get_ports  XPLL_IN_p]

