--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.3 (win64) Build 3173277 Wed Apr  7 05:07:49 MDT 2021
--Date        : Sun Jun 20 17:55:31 2021
--Host        : alexk-laptop running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pls_in_expand is
  port (
    VSL_PULSE_LVDS_IN_P : in STD_LOGIC_VECTOR (63 downto 0 );
    VSL_PULSE_LVDS_IN_N : in STD_LOGIC_VECTOR (63 downto 0 );
	rst  : in STD_LOGIC;
	clk  : in STD_LOGIC;
	clk_div : in STD_LOGIC;
	data_out : in STD_LOGIC_VECTOR (255 downto 0 )
	
  );
end pls_in_expand;

architecture struct of pls_in_expand is


COMPONENT advanced_io_wizard_0
  PORT (
    intf_rdy : OUT STD_LOGIC;
    ctrl_clk : IN STD_LOGIC;
    en_vtc : IN STD_LOGIC;
    fifo_rd_clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    shared_bank0_pll_clkoutphy_in : IN STD_LOGIC;
    shared_bank1_pll_clkoutphy_in : IN STD_LOGIC;
    shared_bank2_pll_clkoutphy_in : IN STD_LOGIC;
    shared_bank0_pll_locked_in : IN STD_LOGIC;
    shared_bank1_pll_locked_in : IN STD_LOGIC;
    shared_bank2_pll_locked_in : IN STD_LOGIC;
    shared_pll_clkoutphyen_out : OUT STD_LOGIC;
    dly_rdy : OUT STD_LOGIC;
    phy_rdy : OUT STD_LOGIC;
    fifo_empty : OUT STD_LOGIC;
    fifo_rd_en : IN STD_LOGIC;
    LVDS_706_p : IN STD_LOGIC_VECTOR(22 DOWNTO 0);
    LVDS_706_n : IN STD_LOGIC_VECTOR(22 DOWNTO 0);
    data_to_fabric_LVDS_706 : OUT STD_LOGIC_VECTOR(91 DOWNTO 0);
    RD_CLK_706 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    data_to_fabric_RD_CLK_706 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    LVDS_707_p : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    LVDS_707_n : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    data_to_fabric_LVDS_707 : OUT STD_LOGIC_VECTOR(71 DOWNTO 0);
    RD_CLK_707 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    data_to_fabric_RD_CLK_707 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    LVDS_708_p : IN STD_LOGIC_VECTOR(22 DOWNTO 0);
    LVDS_708_n : IN STD_LOGIC_VECTOR(22 DOWNTO 0);
    data_to_fabric_LVDS_708 : OUT STD_LOGIC_VECTOR(91 DOWNTO 0);
    RD_CLK_708 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    data_to_fabric_RD_CLK_708 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END COMPONENT;


SIGNAL LVDS_706_p :  STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL LVDS_706_n :  STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL LVDS_707_p :  STD_LOGIC_VECTOR(17 DOWNTO 0);
SIGNAL LVDS_707_n :  STD_LOGIC_VECTOR(17 DOWNTO 0);
SIGNAL LVDS_708_p :  STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL LVDS_708_n :  STD_LOGIC_VECTOR(23 DOWNTO 0);


SIGNAL RD_CLK_706 :  STD_LOGIC_VECTOR(0 DOWNTO 0);
SIGNAL RD_CLK_707 :  STD_LOGIC_VECTOR(0 DOWNTO 0);
SIGNAL RD_CLK_708 :  STD_LOGIC_VECTOR(0 DOWNTO 0);


signal en_vtc : std_logic;
signal fifo_rd_en : std_logic;
signal shared_bank0_pll_locked_in : std_logic;
signal shared_bank1_pll_locked_in : std_logic;
signal shared_bank2_pll_locked_in : std_logic;

begin 

LVDS_706_p <= VSL_PULSE_LVDS_IN_P(22 DOWNTO 0);
LVDS_706_n <= VSL_PULSE_LVDS_IN_N(22 DOWNTO 0);
LVDS_707_p <= VSL_PULSE_LVDS_IN_P(40 DOWNTO 23);
LVDS_707_n <= VSL_PULSE_LVDS_IN_N(40 DOWNTO 23);
LVDS_708_p <= VSL_PULSE_LVDS_IN_P(63 DOWNTO 41);
LVDS_708_n <= VSL_PULSE_LVDS_IN_N(63 DOWNTO 41);

RD_CLK_706(0) <= clk_div; 
RD_CLK_707(0) <= clk_div; 
RD_CLK_708(0) <= clk_div; 

en_vtc <= '0';
fifo_rd_clk <= clk_div;
ctrl_clk <= clk_div; 
fifo_rd_en <= '1';

shared_bank0_pll_locked_in <= '1';
shared_bank1_pll_locked_in <= '1';
shared_bank2_pll_locked_in <= '1';

shared_bank0_pll_clkoutphy_in <= clk_div;
shared_bank1_pll_clkoutphy_in <= clk_div;
shared_bank2_pll_clkoutphy_in <= clk_div;

data_out(91 DOWNTO 0) <= data_to_fabric_LVDS_706;
data_out(163 DOWNTO 92) <= data_to_fabric_LVDS_707;
data_out(255 DOWNTO 164) <= data_to_fabric_LVDS_708;


io_inst : advanced_io_wizard_0
  PORT MAP (
    intf_rdy => OPEN,
    ctrl_clk => ctrl_clk,
    en_vtc => en_vtc,
    fifo_rd_clk => fifo_rd_clk,
    rst => rst,
    shared_bank0_pll_clkoutphy_in => shared_bank0_pll_clkoutphy_in,
    shared_bank1_pll_clkoutphy_in => shared_bank1_pll_clkoutphy_in,
    shared_bank2_pll_clkoutphy_in => shared_bank2_pll_clkoutphy_in,
    shared_bank0_pll_locked_in => shared_bank0_pll_locked_in,
    shared_bank1_pll_locked_in => shared_bank1_pll_locked_in,
    shared_bank2_pll_locked_in => shared_bank2_pll_locked_in,
    shared_pll_clkoutphyen_out => shared_pll_clkoutphyen_out,
    dly_rdy => OPEN,
    phy_rdy => OPEN,
    fifo_empty => OPEN,
    fifo_rd_en => fifo_rd_en,
    LVDS_706_p => LVDS_706_p,
    LVDS_706_n => LVDS_706_n,
    data_to_fabric_LVDS_706 => data_to_fabric_LVDS_706,
    RD_CLK_706 => RD_CLK_706,
    data_to_fabric_RD_CLK_706 => data_to_fabric_RD_CLK_706,
    LVDS_707_p => LVDS_707_p,
    LVDS_707_n => LVDS_707_n,
    data_to_fabric_LVDS_707 => data_to_fabric_LVDS_707,
    RD_CLK_707 => RD_CLK_707,
    data_to_fabric_RD_CLK_707 => data_to_fabric_RD_CLK_707,
    LVDS_708_p => LVDS_708_p,
    LVDS_708_n => LVDS_708_n,
    data_to_fabric_LVDS_708 => data_to_fabric_LVDS_708,
    RD_CLK_708 => RD_CLK_708,
    data_to_fabric_RD_CLK_708 => data_to_fabric_RD_CLK_708
  );






end struct;   