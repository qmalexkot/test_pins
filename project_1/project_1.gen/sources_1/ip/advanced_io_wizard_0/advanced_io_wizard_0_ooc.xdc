

#############################################################
# Clock Period Constraints                                 
#############################################################
create_clock -period 3.334 [get_ports  ctrl_clk]
create_clock -period 4.000 [get_ports  fifo_rd_clk]
create_clock -name shared_bank0_pll_clkoutphy_in -period 1.000 [get_ports  shared_bank0_pll_clkoutphy_in]
create_clock -name shared_bank1_pll_clkoutphy_in -period 1.000 [get_ports  shared_bank1_pll_clkoutphy_in]
set_clock_groups -async -group [get_clocks {shared_bank0_pll_clkoutphy_in shared_bank1_pll_clkoutphy_in}]
create_clock -name shared_bank2_pll_clkoutphy_in -period 1.000 [get_ports  shared_bank2_pll_clkoutphy_in]
set_clock_groups -async -group [get_clocks {shared_bank0_pll_clkoutphy_in shared_bank1_pll_clkoutphy_in shared_bank2_pll_clkoutphy_in}]
#set_false_path -through [get_pins -of [get_cells -hier -filter name=~*inst/my_ip_phy_i/inst/reset_phy_sm_inst/I_PHY_RDY_ALL/sync_flop_1_reg[0]] -filter {REF_PIN_NAME == C}] -to [get_pins -of [get_cells -hier -filter name=~*inst/my_ip_phy_i/inst/BANK_WRAPPER_INST*/NIBBLE[0].UNISIM.I_XPHY] -filter {REF_PIN_NAME == PHY_RDEN[0]}]

