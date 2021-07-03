# GT Reference clock 0
create_clock -period 10.0 -name GT_REFCLK0 [get_pins -filter {REF_PIN_NAME == I} -of [get_cells IBUFDS_GTE5_PCIeA0_inst]]

# GT XPIPE clock 0
create_clock -period 4.0 -name XPIPE_GT_OUTCLK_0 [get_pins -filter {REF_PIN_NAME == IFCPMXPIPELINK0XPIPEGTOUTCLK} -of [get_cells CPM_INST]]
create_clock -period 4.0 -name XPIPE_GT_PIPECLK_0 [get_pins -filter {REF_PIN_NAME == IFCPMXPIPELINK0XPIPEGTPIPECLK} -of [get_cells CPM_INST]]

# DPLL0 Clock
create_clock -period 3.2 -name dpll0_clkout1 [get_pins -filter {REF_PIN_NAME == CLKOUT1} -of [get_cells DPLL_PCIE0_inst]]

#Set asynchronous group
set_clock_groups -name gt_clk_grp0 -asynchronous -group [get_clocks GT_REFCLK0] -group [get_clocks XPIPE_GT_PIPECLK_0]
set_clock_groups -name dpll0_clk_grp -asynchronous -group [get_clocks dpll0_clkout1] -group [get_clocks dpll0_drp_dclk]

# PCIe 0 DPLL Location
set_property LOC DPLL_X1Y4 [get_cells DPLL_PCIE0_inst]
# DPLL0 Timing constraints
set_property PERF_MODE FULL [get_cells DPLL_PCIE0_inst]
set_property DESKEW_DELAY 12 [get_cells DPLL_PCIE0_inst]
set_property DESKEW_DELAY_EN TRUE [get_cells DPLL_PCIE0_inst]
set_property DESKEW_DELAY_PATH TRUE [get_cells DPLL_PCIE0_inst]
set_property GCLK_DESKEW Off [get_nets -of [get_pins bufg_pcie_0/O]]
set_property USER_CLOCK_ROOT X1Y2 [get_nets -of [get_pins bufg_pcie_0/O]]

# GT Reference clock 1
create_clock -period 10.0 -name GT_REFCLK1 [get_pins -filter {REF_PIN_NAME == I} -of [get_cells IBUFDS_GTE5_PCIeA1_inst]]

# DPLL1 Clock
create_clock -period 3.2 -name dpll1_clkout1 [get_pins -filter {REF_PIN_NAME == CLKOUT1} -of [get_cells DPLL_PCIE1_inst]]

# GT XPIPE clock 1
create_clock -period 4.0 -name XPIPE_GT_OUTCLK_1 [get_pins -filter {REF_PIN_NAME == IFCPMXPIPELINK1XPIPEGTOUTCLK} -of [get_cells CPM_INST]]
create_clock -period 4.0 -name XPIPE_GT_PIPECLK_1 [get_pins -filter {REF_PIN_NAME == IFCPMXPIPELINK1XPIPEGTPIPECLK} -of [get_cells CPM_INST]]

#Set asynchronous group
set_clock_groups -name gt_clk_grp1 -asynchronous -group [get_clocks GT_REFCLK1] -group [get_clocks XPIPE_GT_PIPECLK_1]
set_clock_groups -name dpll1_clk_grp -asynchronous -group [get_clocks dpll1_clkout1] -group [get_clocks dpll1_drp_dclk]

# PCIe 1 DPLL Location
set_property LOC DPLL_X1Y5 [get_cells DPLL_PCIE1_inst]
# DPLL1 Timing constraints
set_property PERF_MODE FULL [get_cells DPLL_PCIE1_inst]
set_property DESKEW_DELAY 12 [get_cells DPLL_PCIE1_inst]
set_property DESKEW_DELAY_EN TRUE [get_cells DPLL_PCIE1_inst]
set_property DESKEW_DELAY_PATH TRUE [get_cells DPLL_PCIE1_inst]
set_property GCLK_DESKEW Off [get_nets -of [get_pins bufg_pcie_1/O]]
#set_property USER_CLOCK_ROOT X1Y2 [get_nets -of [get_pins bufg_pcie_1/O]]

# PCIE 0 GT Locations
set_property LOC GTY_QUAD_X0Y3 [get_cells gt_quad_inst0/inst/quad_inst]
set_property LOC GTY_QUAD_X0Y4 [get_cells gt_quad_inst1/inst/quad_inst]

# GT Reference clock 0 Location
set_property LOC GTY_REFCLK_X0Y6 [get_cells IBUFDS_GTE5_PCIeA0_inst]

# PCIE 1 GT Locations
set_property LOC GTY_QUAD_X0Y5 [get_cells gt_quad_inst2/inst/quad_inst]
set_property LOC GTY_QUAD_X0Y6 [get_cells gt_quad_inst3/inst/quad_inst]

# GT Reference clock 1 Location
set_property LOC GTY_REFCLK_X0Y10 [get_cells IBUFDS_GTE5_PCIeA1_inst]
