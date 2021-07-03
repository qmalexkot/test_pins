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
entity sys_clk_module is
  port (
	CNC_VSL_ALIGN_N  : in STD_LOGIC;
	CNC_VSL_ALIGN_P  : in STD_LOGIC;
	LMK_VSL_250M_CLK_IN_N  : in STD_LOGIC;
	LMK_VSL_250M_CLK_IN_P : in STD_LOGIC;
	LMK_VSL_500M_CLK_IN_N : in STD_LOGIC;
	LMK_VSL_500M_CLK_IN_P  : in STD_LOGIC;
	LMK_VSL_RFU_CLK_IN_N  : in STD_LOGIC;
	LMK_VSL_RFU_CLK_IN_P : in STD_LOGIC;
	clk_500m	: out STD_LOGIC;
	clk_500m_vec	: out STD_LOGIC_VECTOR(0 DOWNTO 0);
	clk_250m	: out STD_LOGIC;
	clk_250m_direct 	: out STD_LOGIC
  );
end sys_clk_module;

architecture struct of sys_clk_module is
signal bufds_out : std_logic;
signal IBUFDISABLE : std_logic; -- 1-bit input: Buffer disable input, high=disable
signal OSC : STD_LOGIC_VECTOR(3 DOWNTO 0);                 -- 4-bit input: Offset cancellation value
signal OSC_EN : STD_LOGIC_VECTOR(1 DOWNTO 0); 
signal CE  : std_logic; 
signal CLR : std_logic;
signal clk_500m_int : std_logic;
signal bufds250m_out : std_logic;
begin

CE  <= '1';
CLR <= '0';
clk_500m_vec(0) <= clk_500m_int;
clk_500m <= clk_500m_int;




BUFGCE_DIV_250M_inst : BUFGCE_DIV
   generic map (
      BUFGCE_DIVIDE => 2,     -- 1-8
      -- Programmable Inversion Attributes: Specifies built-in programmable inversion on specific pins
      IS_CE_INVERTED => '0',  -- Optional inversion for CE
      IS_CLR_INVERTED => '0', -- Optional inversion for CLR
      IS_I_INVERTED => '0'    -- Optional inversion for I
   )
   port map (
      O => clk_250m,     -- 1-bit output: Buffer
      CE => CE,   -- 1-bit input: Buffer enable
      CLR => CLR, -- 1-bit input: Asynchronous clear
      I => bufds_out      -- 1-bit input: Buffer
   );
   
   
BUFG_FABRIC_500M_inst : BUFG_FABRIC
   port map (
      O => clk_500m_int, -- 1-bit output: Buffer
      I => bufds_out  -- 1-bit input: Buffer
   );

BUFG_FABRIC_250M_direct_inst : BUFG_FABRIC
   port map (
      O => clk_250m_direct, -- 1-bit output: Buffer
      I => bufds250m_out  -- 1-bit input: Buffer
   );





OSC <= "0000";
OSC_EN <= "00";
IBUFDISABLE <= '0';

IBUFDSE3_inst : IBUFDSE3
   generic map (
      SIM_DEVICE => "VERSAL_AI_CORE", -- Set the device version for simulation functionality (VERSAL_AI_CORE,
                                      -- VERSAL_AI_CORE_ES1)
      SIM_INPUT_BUFFER_OFFSET => 0,   -- Offset value for simulation (-50-50)
      USE_IBUFDISABLE => "FALSE"      -- Enable/Disable the IBUFDISABLE pin (FALSE, TRUE)
   )
   port map (
      O => bufds_out,                     -- 1-bit output: Buffer output
      I => LMK_VSL_500M_CLK_IN_P,                     -- 1-bit input: Diff_p buffer input (connect directly to top-level port)
      IB => LMK_VSL_500M_CLK_IN_N,                   -- 1-bit input: Diff_n buffer input (connect directly to top-level port)
      IBUFDISABLE => IBUFDISABLE, -- 1-bit input: Buffer disable input, high=disable
      OSC => OSC,                 -- 4-bit input: Offset cancellation value
      OSC_EN => OSC_EN            -- 2-bit input: Offset cancellation enable
   );


IBUFDSE3_250M_inst : IBUFDSE3
   generic map (
      SIM_DEVICE => "VERSAL_AI_CORE", -- Set the device version for simulation functionality (VERSAL_AI_CORE,
                                      -- VERSAL_AI_CORE_ES1)
      SIM_INPUT_BUFFER_OFFSET => 0,   -- Offset value for simulation (-50-50)
      USE_IBUFDISABLE => "FALSE"      -- Enable/Disable the IBUFDISABLE pin (FALSE, TRUE)
   )
   port map (
      O => bufds250m_out,                     -- 1-bit output: Buffer output
      I => LMK_VSL_250M_CLK_IN_P,                     -- 1-bit input: Diff_p buffer input (connect directly to top-level port)
      IB => LMK_VSL_250M_CLK_IN_N,                   -- 1-bit input: Diff_n buffer input (connect directly to top-level port)
      IBUFDISABLE => IBUFDISABLE, -- 1-bit input: Buffer disable input, high=disable
      OSC => OSC,                 -- 4-bit input: Offset cancellation value
      OSC_EN => OSC_EN            -- 2-bit input: Offset cancellation enable
   );




end   struct;