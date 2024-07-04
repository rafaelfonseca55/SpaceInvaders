-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "07/01/2024 19:16:58"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SpaceInvaders IS
    PORT (
	altera_reserved_tms : IN std_logic := '0';
	altera_reserved_tck : IN std_logic := '0';
	altera_reserved_tdi : IN std_logic := '0';
	altera_reserved_tdo : OUT std_logic;
	Mclk : IN std_logic;
	reset : IN std_logic;
	ack : IN std_logic;
	Coin : IN std_logic;
	M : IN std_logic;
	Lines : IN std_logic_vector(3 DOWNTO 0);
	Columns : OUT std_logic_vector(2 DOWNTO 0);
	Dval : OUT std_logic;
	LCDDout : OUT std_logic_vector(8 DOWNTO 0);
	e : OUT std_logic;
	accept : OUT std_logic;
	SHEX0 : OUT std_logic_vector(7 DOWNTO 0);
	SHEX1 : OUT std_logic_vector(7 DOWNTO 0);
	SHEX2 : OUT std_logic_vector(7 DOWNTO 0);
	SHEX3 : OUT std_logic_vector(7 DOWNTO 0);
	SHEX4 : OUT std_logic_vector(7 DOWNTO 0);
	SHEX5 : OUT std_logic_vector(7 DOWNTO 0)
	);
END SpaceInvaders;

-- Design Ports Information
-- ack	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Columns[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Columns[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Columns[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dval	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCDDout[0]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCDDout[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCDDout[2]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCDDout[3]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCDDout[4]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCDDout[5]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCDDout[6]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCDDout[7]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCDDout[8]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accept	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX0[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX1[7]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX2[7]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX3[7]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX4[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX4[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX4[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX4[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX4[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX4[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX4[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX4[7]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX5[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX5[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX5[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX5[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX5[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX5[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX5[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SHEX5[7]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Coin	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mclk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lines[2]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lines[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lines[0]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lines[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tms	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tck	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tdi	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tdo	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SpaceInvaders IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_altera_reserved_tms : std_logic;
SIGNAL ww_altera_reserved_tck : std_logic;
SIGNAL ww_altera_reserved_tdi : std_logic;
SIGNAL ww_altera_reserved_tdo : std_logic;
SIGNAL ww_Mclk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_ack : std_logic;
SIGNAL ww_Coin : std_logic;
SIGNAL ww_M : std_logic;
SIGNAL ww_Lines : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Columns : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Dval : std_logic;
SIGNAL ww_LCDDout : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_e : std_logic;
SIGNAL ww_accept : std_logic;
SIGNAL ww_SHEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SHEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SHEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SHEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SHEX4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SHEX5 : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U2|U0|UO|CURRENT_STATE.STATE_1~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|U0|U0|U3|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U3|U0|UO|CURRENT_STATE.STATE_1~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\ : std_logic;
SIGNAL \auto_hub|~GND~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell_combout\ : std_logic;
SIGNAL \ack~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\ : std_logic;
SIGNAL \Mclk~input_o\ : std_logic;
SIGNAL \Mclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~7\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~8_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~9\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~10_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~11\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~12_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~13\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~14_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~15\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~16_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~17\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~18_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~19\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~20_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~21\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~22_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~23\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~24_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~25\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~26_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~27\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~28_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~29\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~30_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~31\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~32_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~33\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~34_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~35\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~36_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~37\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~38_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~39\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~40_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~41\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~42_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~43\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~44_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~45\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~46_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~47\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~48_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~49\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~50_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~51\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~52_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~53\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~54_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~55\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~56_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~57\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~58_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~59\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~60_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~61\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~62_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Equal0~8_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Equal0~5_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Equal0~7_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Equal0~6_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Equal0~9_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~0_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|count~0_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~1\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~2_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|count~1_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~3\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~4_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~5\ : std_logic;
SIGNAL \U0|U0|U0|U3|Add0~6_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Equal0~0_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Equal0~3_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Equal0~2_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Equal0~1_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|Equal0~4_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|tmp~0_combout\ : std_logic;
SIGNAL \U0|U0|U0|U3|tmp~q\ : std_logic;
SIGNAL \U0|U0|U0|U3|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \U0|U0|U0|U2|U3|U1|Q~0_combout\ : std_logic;
SIGNAL \U0|U0|U0|U2|U3|U1|Q~q\ : std_logic;
SIGNAL \Lines[0]~input_o\ : std_logic;
SIGNAL \U0|U0|U0|U2|U3|U2|Q~0_combout\ : std_logic;
SIGNAL \U0|U0|U0|U2|U3|U2|Q~q\ : std_logic;
SIGNAL \Lines[1]~input_o\ : std_logic;
SIGNAL \U0|U0|U0|U1|Y~0_combout\ : std_logic;
SIGNAL \Lines[3]~input_o\ : std_logic;
SIGNAL \Lines[2]~input_o\ : std_logic;
SIGNAL \U0|U0|U0|U1|Y~1_combout\ : std_logic;
SIGNAL \altera_reserved_tms~input_o\ : std_logic;
SIGNAL \altera_reserved_tck~input_o\ : std_logic;
SIGNAL \altera_reserved_tdi~input_o\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[8]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\ : std_logic;
SIGNAL \~QIC_CREATED_GND~I_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\ : std_logic;
SIGNAL \U0|U0|U0|U2|U3|U3|Q~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \U0|U0|U0|U2|U3|U2|Q~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\ : std_logic;
SIGNAL \U0|U0|U0|U2|U3|U1|Q~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\ : std_logic;
SIGNAL \U0|U0|U0|U2|U3|U4|Q~0_combout\ : std_logic;
SIGNAL \U0|U0|U0|U2|U3|U4|Q~1_combout\ : std_logic;
SIGNAL \U0|U0|U0|U2|U3|U4|Q~q\ : std_logic;
SIGNAL \U0|U0|U0|U2|U3|U4|Q~_wirecell_combout\ : std_logic;
SIGNAL \U0|U0|U1|currentState.STATE_2~0_combout\ : std_logic;
SIGNAL \M~input_o\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\ : std_logic;
SIGNAL \Coin~input_o\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~16_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~6\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~8\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~10\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~12\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~16_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~18_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~17_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~19_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\ : std_logic;
SIGNAL \U0|U0|U1|currentState.state_bit_1~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \U0|U0|U1|currentState.state_bit_1~q\ : std_logic;
SIGNAL \U0|U0|U1|currentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \U0|U0|U1|currentState.state_bit_0~q\ : std_logic;
SIGNAL \U0|U0|U0|U2|U3|U3|Q~0_combout\ : std_logic;
SIGNAL \U0|U0|U0|U2|U3|U3|Q~q\ : std_logic;
SIGNAL \U0|U0|U0|U0|O0~0_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|O1~0_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|O2~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\ : std_logic;
SIGNAL \U2|U0|U3|Sc0|Q~feeder_combout\ : std_logic;
SIGNAL \U2|U0|U2|count_value[0]~3_combout\ : std_logic;
SIGNAL \U2|U0|UO|CURRENT_STATE.STATE_1~0_combout\ : std_logic;
SIGNAL \U2|U0|UO|CURRENT_STATE.STATE_1~0clkctrl_outclk\ : std_logic;
SIGNAL \U2|U0|U2|count_value[1]~1_combout\ : std_logic;
SIGNAL \U2|U0|U2|count_value[2]~2_combout\ : std_logic;
SIGNAL \U2|U0|U2|count_value[3]~0_combout\ : std_logic;
SIGNAL \U2|U0|UO|CURRENT_STATE.state_bit_0~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\ : std_logic;
SIGNAL \U2|U0|UO|CURRENT_STATE.state_bit_0~1_combout\ : std_logic;
SIGNAL \U2|U0|UO|CURRENT_STATE.state_bit_0~q\ : std_logic;
SIGNAL \U2|U1|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \U2|U1|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \U2|U1|CurrentState.state_bit_1~0_combout\ : std_logic;
SIGNAL \U2|U1|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \U2|U0|U1|sr~0_combout\ : std_logic;
SIGNAL \U2|U0|U1|sr~q\ : std_logic;
SIGNAL \U2|U0|UO|CURRENT_STATE.state_bit_1~0_combout\ : std_logic;
SIGNAL \U2|U0|UO|CURRENT_STATE.state_bit_1~1_combout\ : std_logic;
SIGNAL \U2|U0|UO|CURRENT_STATE.state_bit_1~2_combout\ : std_logic;
SIGNAL \U2|U0|UO|CURRENT_STATE.state_bit_1~q\ : std_logic;
SIGNAL \U2|U0|UO|CURRENT_STATE.STATE_2~0_combout\ : std_logic;
SIGNAL \U2|U0|U3|Sc0|Q~q\ : std_logic;
SIGNAL \U2|U0|U3|Sc1|Q~feeder_combout\ : std_logic;
SIGNAL \U2|U0|U3|Sc1|Q~q\ : std_logic;
SIGNAL \U2|U0|U3|Sc2|Q~feeder_combout\ : std_logic;
SIGNAL \U2|U0|U3|Sc2|Q~q\ : std_logic;
SIGNAL \U2|U0|U3|Sc3|Q~feeder_combout\ : std_logic;
SIGNAL \U2|U0|U3|Sc3|Q~q\ : std_logic;
SIGNAL \U2|U0|U3|Sc4|Q~feeder_combout\ : std_logic;
SIGNAL \U2|U0|U3|Sc4|Q~q\ : std_logic;
SIGNAL \U2|U0|U3|Sc5|Q~feeder_combout\ : std_logic;
SIGNAL \U2|U0|U3|Sc5|Q~q\ : std_logic;
SIGNAL \U2|U0|U3|Sc6|Q~feeder_combout\ : std_logic;
SIGNAL \U2|U0|U3|Sc6|Q~q\ : std_logic;
SIGNAL \U2|U0|U3|Sc7|Q~feeder_combout\ : std_logic;
SIGNAL \U2|U0|U3|Sc7|Q~q\ : std_logic;
SIGNAL \U2|U0|U3|Sc8|Q~feeder_combout\ : std_logic;
SIGNAL \U2|U0|U3|Sc8|Q~q\ : std_logic;
SIGNAL \U2|U1|CurrentState.STATE_TRAMA_RECEBIDA~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\ : std_logic;
SIGNAL \U3|U0|U1|sr~0_combout\ : std_logic;
SIGNAL \U3|U0|UO|CURRENT_STATE.state_bit_0~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\ : std_logic;
SIGNAL \U3|U0|U2|count_value[0]~3_combout\ : std_logic;
SIGNAL \U3|U0|U2|count_value[1]~2_combout\ : std_logic;
SIGNAL \U3|U0|U2|count_value[2]~1_combout\ : std_logic;
SIGNAL \U3|U0|U2|count_value[3]~0_combout\ : std_logic;
SIGNAL \U3|U0|Pflag_signal~0_combout\ : std_logic;
SIGNAL \U3|U0|UO|CURRENT_STATE.state_bit_0~1_combout\ : std_logic;
SIGNAL \U3|U0|UO|CURRENT_STATE.state_bit_0~q\ : std_logic;
SIGNAL \U3|U0|UO|CURRENT_STATE.STATE_1~0_combout\ : std_logic;
SIGNAL \U3|U0|UO|CURRENT_STATE.STATE_1~0clkctrl_outclk\ : std_logic;
SIGNAL \U3|U0|U1|sr~q\ : std_logic;
SIGNAL \U3|U0|UO|CURRENT_STATE.state_bit_1~0_combout\ : std_logic;
SIGNAL \U3|U0|UO|CURRENT_STATE.state_bit_1~1_combout\ : std_logic;
SIGNAL \U3|U0|UO|CURRENT_STATE.state_bit_1~2_combout\ : std_logic;
SIGNAL \U3|U0|UO|CURRENT_STATE.state_bit_1~3_combout\ : std_logic;
SIGNAL \U3|U0|UO|CURRENT_STATE.state_bit_1~q\ : std_logic;
SIGNAL \U3|U1|CurrentState.state_bit_1~0_combout\ : std_logic;
SIGNAL \U3|U1|CurrentState.state_bit_1~1_combout\ : std_logic;
SIGNAL \U3|U1|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \U3|U1|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \U3|U1|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0_combout\ : std_logic;
SIGNAL \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\ : std_logic;
SIGNAL \U3|U0|U3|Sc0|Q~feeder_combout\ : std_logic;
SIGNAL \U3|U0|UO|CURRENT_STATE.STATE_2~0_combout\ : std_logic;
SIGNAL \U3|U0|U3|Sc0|Q~q\ : std_logic;
SIGNAL \U3|U0|U3|Sc1|Q~feeder_combout\ : std_logic;
SIGNAL \U3|U0|U3|Sc1|Q~q\ : std_logic;
SIGNAL \U3|U0|U3|Sc2|Q~feeder_combout\ : std_logic;
SIGNAL \U3|U0|U3|Sc2|Q~q\ : std_logic;
SIGNAL \U3|U0|U3|Sc3|Q~feeder_combout\ : std_logic;
SIGNAL \U3|U0|U3|Sc3|Q~q\ : std_logic;
SIGNAL \U3|U0|U3|Sc4|Q~q\ : std_logic;
SIGNAL \U3|U0|U3|Sc5|Q~q\ : std_logic;
SIGNAL \U3|U0|U3|Sc6|Q~q\ : std_logic;
SIGNAL \U4|clear_reg|Q~0_combout\ : std_logic;
SIGNAL \U4|clear_reg|Q~1_combout\ : std_logic;
SIGNAL \U4|clear_reg|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:0:in_reg|u0|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:in_reg|u0|Q~q\ : std_logic;
SIGNAL \U4|decoder|dout[6]~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:out_reg|u0|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:0:in_reg|u2|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:in_reg|u2|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:0:out_reg|u2|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:0:in_reg|u3|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:in_reg|u3|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:0:out_reg|u3|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:0:in_reg|u1|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:in_reg|u1|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:0:out_reg|u1|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[3]~6_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[4]~8_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[5]~10_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[6]~12_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:in_reg|u1|Q~0_combout\ : std_logic;
SIGNAL \U4|decoder|dout[1]~1_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:in_reg|u1|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:1:out_reg|u1|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:1:in_reg|u3|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:in_reg|u3|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:1:out_reg|u3|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:1:in_reg|u0|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:in_reg|u0|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:1:out_reg|u0|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:1:in_reg|u2|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:in_reg|u2|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:1:out_reg|u2|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[3]~6_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[4]~8_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[5]~10_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[6]~12_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:in_reg|u3|Q~0_combout\ : std_logic;
SIGNAL \U4|decoder|dout[2]~2_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:in_reg|u3|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:2:out_reg|u3|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:2:in_reg|u1|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:in_reg|u1|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:2:out_reg|u1|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:2:in_reg|u0|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:in_reg|u0|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:2:out_reg|u0|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:2:in_reg|u2|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:in_reg|u2|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:2:out_reg|u2|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[3]~6_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[4]~8_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[5]~10_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[6]~12_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:in_reg|u2|Q~0_combout\ : std_logic;
SIGNAL \U4|decoder|dout[3]~3_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:in_reg|u2|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:3:out_reg|u2|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:3:in_reg|u1|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:in_reg|u1|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:3:out_reg|u1|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:3:in_reg|u0|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:in_reg|u0|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:3:out_reg|u0|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:3:in_reg|u3|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:in_reg|u3|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:3:out_reg|u3|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[3]~6_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[4]~8_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[5]~10_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[6]~12_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:in_reg|u0|Q~0_combout\ : std_logic;
SIGNAL \U4|decoder|dout[4]~4_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:in_reg|u0|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:4:out_reg|u0|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:4:in_reg|u1|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:in_reg|u1|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:4:out_reg|u1|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:4:in_reg|u2|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:in_reg|u2|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:4:out_reg|u2|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:4:in_reg|u3|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:in_reg|u3|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:4:out_reg|u3|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[3]~6_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[4]~8_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[5]~10_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[6]~12_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:in_reg|u2|Q~0_combout\ : std_logic;
SIGNAL \U4|decoder|dout[5]~5_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:in_reg|u2|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:5:out_reg|u2|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:5:in_reg|u1|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:in_reg|u1|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:5:out_reg|u1|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:5:in_reg|u3|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:in_reg|u3|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:5:out_reg|u3|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:5:in_reg|u0|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:in_reg|u0|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:5:out_reg|u0|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[3]~6_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[4]~8_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[5]~10_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[6]~12_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDO\ : std_logic;
SIGNAL \U4|decoder|dout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|U0|U0|U3|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U2|U0|U2|count_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U3|U0|U2|count_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \U3|U0|UO|ALT_INV_CURRENT_STATE.STATE_1~0clkctrl_outclk\ : std_logic;
SIGNAL \U2|U0|UO|ALT_INV_CURRENT_STATE.STATE_1~0clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \U0|U0|U0|U0|ALT_INV_O2~0_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|ALT_INV_O1~0_combout\ : std_logic;

BEGIN

ww_altera_reserved_tms <= altera_reserved_tms;
ww_altera_reserved_tck <= altera_reserved_tck;
ww_altera_reserved_tdi <= altera_reserved_tdi;
altera_reserved_tdo <= ww_altera_reserved_tdo;
ww_Mclk <= Mclk;
ww_reset <= reset;
ww_ack <= ack;
ww_Coin <= Coin;
ww_M <= M;
ww_Lines <= Lines;
Columns <= ww_Columns;
Dval <= ww_Dval;
LCDDout <= ww_LCDDout;
e <= ww_e;
accept <= ww_accept;
SHEX0 <= ww_SHEX0;
SHEX1 <= ww_SHEX1;
SHEX2 <= ww_SHEX2;
SHEX3 <= ww_SHEX3;
SHEX4 <= ww_SHEX4;
SHEX5 <= ww_SHEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\U2|U0|UO|CURRENT_STATE.STATE_1~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U2|U0|UO|CURRENT_STATE.STATE_1~0_combout\);

\U0|U0|U0|U3|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0|U0|U0|U3|tmp~q\);

\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & 
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\);

\U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0_combout\);

\U3|U0|UO|CURRENT_STATE.STATE_1~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U3|U0|UO|CURRENT_STATE.STATE_1~0_combout\);

\altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \altera_internal_jtag~TCKUTAP\);

\Mclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mclk~input_o\);
\ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ <= NOT \altera_internal_jtag~TCKUTAPclkctrl_outclk\;
\U3|U0|UO|ALT_INV_CURRENT_STATE.STATE_1~0clkctrl_outclk\ <= NOT \U3|U0|UO|CURRENT_STATE.STATE_1~0clkctrl_outclk\;
\U2|U0|UO|ALT_INV_CURRENT_STATE.STATE_1~0clkctrl_outclk\ <= NOT \U2|U0|UO|CURRENT_STATE.STATE_1~0clkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\;
\ALT_INV_altera_internal_jtag~TMSUTAP\ <= NOT \altera_internal_jtag~TMSUTAP\;
\U0|U0|U0|U0|ALT_INV_O2~0_combout\ <= NOT \U0|U0|U0|U0|O2~0_combout\;
\U0|U0|U0|U0|ALT_INV_O1~0_combout\ <= NOT \U0|U0|U0|U0|O1~0_combout\;

-- Location: FF_X44_Y37_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3));

-- Location: LCCOMB_X43_Y37_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\);

-- Location: LCCOMB_X43_Y37_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\);

-- Location: LCCOMB_X44_Y37_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\);

-- Location: LCCOMB_X45_Y37_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\);

-- Location: LCCOMB_X44_Y37_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\);

-- Location: LCCOMB_X44_Y49_N8
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: LCCOMB_X44_Y38_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\);

-- Location: LCCOMB_X44_Y38_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\);

-- Location: IOOBUF_X38_Y0_N9
\Columns[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|U0|U0|U0|O0~0_combout\,
	devoe => ww_devoe,
	o => ww_Columns(0));

-- Location: IOOBUF_X38_Y0_N16
\Columns[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|U0|U0|U0|ALT_INV_O1~0_combout\,
	devoe => ww_devoe,
	o => ww_Columns(1));

-- Location: IOOBUF_X34_Y0_N23
\Columns[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|U0|U0|U0|ALT_INV_O2~0_combout\,
	devoe => ww_devoe,
	o => ww_Columns(2));

-- Location: IOOBUF_X49_Y54_N9
\Dval~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Dval);

-- Location: IOOBUF_X24_Y0_N2
\LCDDout[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U0|U3|Sc8|Q~q\,
	devoe => ww_devoe,
	o => ww_LCDDout(0));

-- Location: IOOBUF_X54_Y0_N30
\LCDDout[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U0|U3|Sc7|Q~q\,
	devoe => ww_devoe,
	o => ww_LCDDout(1));

-- Location: IOOBUF_X46_Y0_N2
\LCDDout[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U0|U3|Sc6|Q~q\,
	devoe => ww_devoe,
	o => ww_LCDDout(2));

-- Location: IOOBUF_X40_Y0_N16
\LCDDout[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U0|U3|Sc5|Q~q\,
	devoe => ww_devoe,
	o => ww_LCDDout(3));

-- Location: IOOBUF_X36_Y0_N2
\LCDDout[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U0|U3|Sc4|Q~q\,
	devoe => ww_devoe,
	o => ww_LCDDout(4));

-- Location: IOOBUF_X36_Y0_N9
\LCDDout[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U0|U3|Sc3|Q~q\,
	devoe => ww_devoe,
	o => ww_LCDDout(5));

-- Location: IOOBUF_X34_Y0_N2
\LCDDout[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U0|U3|Sc2|Q~q\,
	devoe => ww_devoe,
	o => ww_LCDDout(6));

-- Location: IOOBUF_X20_Y0_N2
\LCDDout[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U0|U3|Sc1|Q~q\,
	devoe => ww_devoe,
	o => ww_LCDDout(7));

-- Location: IOOBUF_X20_Y0_N9
\LCDDout[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U0|U3|Sc0|Q~q\,
	devoe => ww_devoe,
	o => ww_LCDDout(8));

-- Location: IOOBUF_X14_Y0_N9
\e~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U1|CurrentState.STATE_TRAMA_RECEBIDA~0_combout\,
	devoe => ww_devoe,
	o => ww_e);

-- Location: IOOBUF_X46_Y54_N2
\accept~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\,
	devoe => ww_devoe,
	o => ww_accept);

-- Location: IOOBUF_X58_Y54_N16
\SHEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:0:hex_digit|Ndout[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_SHEX0(0));

-- Location: IOOBUF_X74_Y54_N9
\SHEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:0:hex_digit|Ndout[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_SHEX0(1));

-- Location: IOOBUF_X60_Y54_N2
\SHEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:0:hex_digit|Ndout[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_SHEX0(2));

-- Location: IOOBUF_X62_Y54_N30
\SHEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:0:hex_digit|Ndout[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_SHEX0(3));

-- Location: IOOBUF_X74_Y54_N2
\SHEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:0:hex_digit|Ndout[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_SHEX0(4));

-- Location: IOOBUF_X74_Y54_N16
\SHEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:0:hex_digit|Ndout[5]~11_combout\,
	devoe => ww_devoe,
	o => ww_SHEX0(5));

-- Location: IOOBUF_X74_Y54_N23
\SHEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:0:hex_digit|Ndout[6]~13_combout\,
	devoe => ww_devoe,
	o => ww_SHEX0(6));

-- Location: IOOBUF_X66_Y54_N16
\SHEX0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_SHEX0(7));

-- Location: IOOBUF_X69_Y54_N23
\SHEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:1:hex_digit|Ndout[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_SHEX1(0));

-- Location: IOOBUF_X78_Y49_N9
\SHEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:1:hex_digit|Ndout[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_SHEX1(1));

-- Location: IOOBUF_X78_Y49_N2
\SHEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:1:hex_digit|Ndout[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_SHEX1(2));

-- Location: IOOBUF_X60_Y54_N9
\SHEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:1:hex_digit|Ndout[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_SHEX1(3));

-- Location: IOOBUF_X64_Y54_N2
\SHEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:1:hex_digit|Ndout[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_SHEX1(4));

-- Location: IOOBUF_X66_Y54_N30
\SHEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:1:hex_digit|Ndout[5]~11_combout\,
	devoe => ww_devoe,
	o => ww_SHEX1(5));

-- Location: IOOBUF_X69_Y54_N30
\SHEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:1:hex_digit|Ndout[6]~13_combout\,
	devoe => ww_devoe,
	o => ww_SHEX1(6));

-- Location: IOOBUF_X60_Y54_N16
\SHEX1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_SHEX1(7));

-- Location: IOOBUF_X78_Y44_N9
\SHEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:2:hex_digit|Ndout[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_SHEX2(0));

-- Location: IOOBUF_X66_Y54_N2
\SHEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:2:hex_digit|Ndout[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_SHEX2(1));

-- Location: IOOBUF_X69_Y54_N16
\SHEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:2:hex_digit|Ndout[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_SHEX2(2));

-- Location: IOOBUF_X78_Y44_N2
\SHEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:2:hex_digit|Ndout[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_SHEX2(3));

-- Location: IOOBUF_X78_Y43_N2
\SHEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:2:hex_digit|Ndout[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_SHEX2(4));

-- Location: IOOBUF_X78_Y35_N2
\SHEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:2:hex_digit|Ndout[5]~11_combout\,
	devoe => ww_devoe,
	o => ww_SHEX2(5));

-- Location: IOOBUF_X78_Y43_N9
\SHEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:2:hex_digit|Ndout[6]~13_combout\,
	devoe => ww_devoe,
	o => ww_SHEX2(6));

-- Location: IOOBUF_X66_Y54_N9
\SHEX2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_SHEX2(7));

-- Location: IOOBUF_X78_Y35_N23
\SHEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:3:hex_digit|Ndout[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_SHEX3(0));

-- Location: IOOBUF_X78_Y33_N9
\SHEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:3:hex_digit|Ndout[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_SHEX3(1));

-- Location: IOOBUF_X78_Y33_N2
\SHEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:3:hex_digit|Ndout[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_SHEX3(2));

-- Location: IOOBUF_X69_Y54_N9
\SHEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:3:hex_digit|Ndout[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_SHEX3(3));

-- Location: IOOBUF_X78_Y41_N9
\SHEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:3:hex_digit|Ndout[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_SHEX3(4));

-- Location: IOOBUF_X78_Y41_N2
\SHEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:3:hex_digit|Ndout[5]~11_combout\,
	devoe => ww_devoe,
	o => ww_SHEX3(5));

-- Location: IOOBUF_X78_Y43_N16
\SHEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:3:hex_digit|Ndout[6]~13_combout\,
	devoe => ww_devoe,
	o => ww_SHEX3(6));

-- Location: IOOBUF_X78_Y35_N9
\SHEX3[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_SHEX3(7));

-- Location: IOOBUF_X78_Y40_N16
\SHEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:4:hex_digit|Ndout[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_SHEX4(0));

-- Location: IOOBUF_X78_Y40_N2
\SHEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:4:hex_digit|Ndout[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_SHEX4(1));

-- Location: IOOBUF_X78_Y40_N23
\SHEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:4:hex_digit|Ndout[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_SHEX4(2));

-- Location: IOOBUF_X78_Y42_N16
\SHEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:4:hex_digit|Ndout[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_SHEX4(3));

-- Location: IOOBUF_X78_Y45_N23
\SHEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:4:hex_digit|Ndout[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_SHEX4(4));

-- Location: IOOBUF_X78_Y40_N9
\SHEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:4:hex_digit|Ndout[5]~11_combout\,
	devoe => ww_devoe,
	o => ww_SHEX4(5));

-- Location: IOOBUF_X78_Y35_N16
\SHEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:4:hex_digit|Ndout[6]~13_combout\,
	devoe => ww_devoe,
	o => ww_SHEX4(6));

-- Location: IOOBUF_X78_Y43_N23
\SHEX4[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_SHEX4(7));

-- Location: IOOBUF_X78_Y45_N9
\SHEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:5:hex_digit|Ndout[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_SHEX5(0));

-- Location: IOOBUF_X78_Y42_N2
\SHEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:5:hex_digit|Ndout[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_SHEX5(1));

-- Location: IOOBUF_X78_Y37_N16
\SHEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:5:hex_digit|Ndout[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_SHEX5(2));

-- Location: IOOBUF_X78_Y34_N24
\SHEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:5:hex_digit|Ndout[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_SHEX5(3));

-- Location: IOOBUF_X78_Y34_N9
\SHEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:5:hex_digit|Ndout[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_SHEX5(4));

-- Location: IOOBUF_X78_Y34_N16
\SHEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:5:hex_digit|Ndout[5]~11_combout\,
	devoe => ww_devoe,
	o => ww_SHEX5(5));

-- Location: IOOBUF_X78_Y34_N2
\SHEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|circuit_gen:5:hex_digit|Ndout[6]~13_combout\,
	devoe => ww_devoe,
	o => ww_SHEX5(6));

-- Location: IOOBUF_X78_Y37_N9
\SHEX5[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_SHEX5(7));

-- Location: IOOBUF_X0_Y28_N23
\altera_reserved_tdo~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altera_internal_jtag~TDO\,
	devoe => ww_devoe,
	o => ww_altera_reserved_tdo);

-- Location: IOIBUF_X34_Y0_N29
\Mclk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mclk,
	o => \Mclk~input_o\);

-- Location: CLKCTRL_G19
\Mclk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mclk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mclk~inputclkctrl_outclk\);

-- Location: LCCOMB_X47_Y31_N6
\U0|U0|U0|U3|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Add0~6_combout\ = (\U0|U0|U0|U3|count\(3) & (!\U0|U0|U0|U3|Add0~5\)) # (!\U0|U0|U0|U3|count\(3) & ((\U0|U0|U0|U3|Add0~5\) # (GND)))
-- \U0|U0|U0|U3|Add0~7\ = CARRY((!\U0|U0|U0|U3|Add0~5\) # (!\U0|U0|U0|U3|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U3|count\(3),
	datad => VCC,
	cin => \U0|U0|U0|U3|Add0~5\,
	combout => \U0|U0|U0|U3|Add0~6_combout\,
	cout => \U0|U0|U0|U3|Add0~7\);

-- Location: LCCOMB_X47_Y31_N8
\U0|U0|U0|U3|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Add0~8_combout\ = (\U0|U0|U0|U3|count\(4) & (\U0|U0|U0|U3|Add0~7\ $ (GND))) # (!\U0|U0|U0|U3|count\(4) & (!\U0|U0|U0|U3|Add0~7\ & VCC))
-- \U0|U0|U0|U3|Add0~9\ = CARRY((\U0|U0|U0|U3|count\(4) & !\U0|U0|U0|U3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U3|count\(4),
	datad => VCC,
	cin => \U0|U0|U0|U3|Add0~7\,
	combout => \U0|U0|U0|U3|Add0~8_combout\,
	cout => \U0|U0|U0|U3|Add0~9\);

-- Location: FF_X47_Y31_N9
\U0|U0|U0|U3|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|count\(4));

-- Location: LCCOMB_X47_Y31_N10
\U0|U0|U0|U3|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Add0~10_combout\ = (\U0|U0|U0|U3|count\(5) & (!\U0|U0|U0|U3|Add0~9\)) # (!\U0|U0|U0|U3|count\(5) & ((\U0|U0|U0|U3|Add0~9\) # (GND)))
-- \U0|U0|U0|U3|Add0~11\ = CARRY((!\U0|U0|U0|U3|Add0~9\) # (!\U0|U0|U0|U3|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U3|count\(5),
	datad => VCC,
	cin => \U0|U0|U0|U3|Add0~9\,
	combout => \U0|U0|U0|U3|Add0~10_combout\,
	cout => \U0|U0|U0|U3|Add0~11\);

-- Location: FF_X47_Y31_N11
\U0|U0|U0|U3|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|count\(5));

-- Location: LCCOMB_X47_Y31_N12
\U0|U0|U0|U3|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Add0~12_combout\ = (\U0|U0|U0|U3|count\(6) & (\U0|U0|U0|U3|Add0~11\ $ (GND))) # (!\U0|U0|U0|U3|count\(6) & (!\U0|U0|U0|U3|Add0~11\ & VCC))
-- \U0|U0|U0|U3|Add0~13\ = CARRY((\U0|U0|U0|U3|count\(6) & !\U0|U0|U0|U3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U3|count\(6),
	datad => VCC,
	cin => \U0|U0|U0|U3|Add0~11\,
	combout => \U0|U0|U0|U3|Add0~12_combout\,
	cout => \U0|U0|U0|U3|Add0~13\);

-- Location: FF_X47_Y31_N13
\U0|U0|U0|U3|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|count\(6));

-- Location: LCCOMB_X47_Y31_N14
\U0|U0|U0|U3|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Add0~14_combout\ = (\U0|U0|U0|U3|count\(7) & (!\U0|U0|U0|U3|Add0~13\)) # (!\U0|U0|U0|U3|count\(7) & ((\U0|U0|U0|U3|Add0~13\) # (GND)))
-- \U0|U0|U0|U3|Add0~15\ = CARRY((!\U0|U0|U0|U3|Add0~13\) # (!\U0|U0|U0|U3|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U3|count\(7),
	datad => VCC,
	cin => \U0|U0|U0|U3|Add0~13\,
	combout => \U0|U0|U0|U3|Add0~14_combout\,
	cout => \U0|U0|U0|U3|Add0~15\);

-- Location: FF_X47_Y31_N15
\U0|U0|U0|U3|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|count\(7));

-- Location: LCCOMB_X47_Y31_N16
\U0|U0|U0|U3|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Add0~16_combout\ = (\U0|U0|U0|U3|count\(8) & (\U0|U0|U0|U3|Add0~15\ $ (GND))) # (!\U0|U0|U0|U3|count\(8) & (!\U0|U0|U0|U3|Add0~15\ & VCC))
-- \U0|U0|U0|U3|Add0~17\ = CARRY((\U0|U0|U0|U3|count\(8) & !\U0|U0|U0|U3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U3|count\(8),
	datad => VCC,
	cin => \U0|U0|U0|U3|Add0~15\,
	combout => \U0|U0|U0|U3|Add0~16_combout\,
	cout => \U0|U0|U0|U3|Add0~17\);

-- Location: FF_X47_Y31_N17
\U0|U0|U0|U3|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|count\(8));

-- Location: LCCOMB_X47_Y31_N18
\U0|U0|U0|U3|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Add0~18_combout\ = (\U0|U0|U0|U3|count\(9) & (!\U0|U0|U0|U3|Add0~17\)) # (!\U0|U0|U0|U3|count\(9) & ((\U0|U0|U0|U3|Add0~17\) # (GND)))
-- \U0|U0|U0|U3|Add0~19\ = CARRY((!\U0|U0|U0|U3|Add0~17\) # (!\U0|U0|U0|U3|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U3|count\(9),
	datad => VCC,
	cin => \U0|U0|U0|U3|Add0~17\,
	combout => \U0|U0|U0|U3|Add0~18_combout\,
	cout => \U0|U0|U0|U3|Add0~19\);

-- Location: FF_X47_Y31_N19
\U0|U0|U0|U3|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|count\(9));

-- Location: LCCOMB_X47_Y31_N20
\U0|U0|U0|U3|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Add0~20_combout\ = (\U0|U0|U0|U3|count\(10) & (\U0|U0|U0|U3|Add0~19\ $ (GND))) # (!\U0|U0|U0|U3|count\(10) & (!\U0|U0|U0|U3|Add0~19\ & VCC))
-- \U0|U0|U0|U3|Add0~21\ = CARRY((\U0|U0|U0|U3|count\(10) & !\U0|U0|U0|U3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U3|count\(10),
	datad => VCC,
	cin => \U0|U0|U0|U3|Add0~19\,
	combout => \U0|U0|U0|U3|Add0~20_combout\,
	cout => \U0|U0|U0|U3|Add0~21\);

-- Location: FF_X47_Y31_N21
\U0|U0|U0|U3|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|count\(10));

-- Location: LCCOMB_X47_Y31_N22
\U0|U0|U0|U3|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Add0~22_combout\ = (\U0|U0|U0|U3|count\(11) & (!\U0|U0|U0|U3|Add0~21\)) # (!\U0|U0|U0|U3|count\(11) & ((\U0|U0|U0|U3|Add0~21\) # (GND)))
-- \U0|U0|U0|U3|Add0~23\ = CARRY((!\U0|U0|U0|U3|Add0~21\) # (!\U0|U0|U0|U3|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U3|count\(11),
	datad => VCC,
	cin => \U0|U0|U0|U3|Add0~21\,
	combout => \U0|U0|U0|U3|Add0~22_combout\,
	cout => \U0|U0|U0|U3|Add0~23\);

-- Location: FF_X47_Y31_N23
\U0|U0|U0|U3|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|count\(11));

-- Location: LCCOMB_X47_Y31_N24
\U0|U0|U0|U3|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Add0~24_combout\ = (\U0|U0|U0|U3|count\(12) & (\U0|U0|U0|U3|Add0~23\ $ (GND))) # (!\U0|U0|U0|U3|count\(12) & (!\U0|U0|U0|U3|Add0~23\ & VCC))
-- \U0|U0|U0|U3|Add0~25\ = CARRY((\U0|U0|U0|U3|count\(12) & !\U0|U0|U0|U3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U3|count\(12),
	datad => VCC,
	cin => \U0|U0|U0|U3|Add0~23\,
	combout => \U0|U0|U0|U3|Add0~24_combout\,
	cout => \U0|U0|U0|U3|Add0~25\);

-- Location: FF_X47_Y31_N25
\U0|U0|U0|U3|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|count\(12));

-- Location: LCCOMB_X47_Y31_N26
\U0|U0|U0|U3|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Add0~26_combout\ = (\U0|U0|U0|U3|count\(13) & (!\U0|U0|U0|U3|Add0~25\)) # (!\U0|U0|U0|U3|count\(13) & ((\U0|U0|U0|U3|Add0~25\) # (GND)))
-- \U0|U0|U0|U3|Add0~27\ = CARRY((!\U0|U0|U0|U3|Add0~25\) # (!\U0|U0|U0|U3|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U3|count\(13),
	datad => VCC,
	cin => \U0|U0|U0|U3|Add0~25\,
	combout => \U0|U0|U0|U3|Add0~26_combout\,
	cout => \U0|U0|U0|U3|Add0~27\);

-- Location: FF_X47_Y31_N27
\U0|U0|U0|U3|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|count\(13));

-- Location: LCCOMB_X47_Y31_N28
\U0|U0|U0|U3|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Add0~28_combout\ = (\U0|U0|U0|U3|count\(14) & (\U0|U0|U0|U3|Add0~27\ $ (GND))) # (!\U0|U0|U0|U3|count\(14) & (!\U0|U0|U0|U3|Add0~27\ & VCC))
-- \U0|U0|U0|U3|Add0~29\ = CARRY((\U0|U0|U0|U3|count\(14) & !\U0|U0|U0|U3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U3|count\(14),
	datad => VCC,
	cin => \U0|U0|U0|U3|Add0~27\,
	combout => \U0|U0|U0|U3|Add0~28_combout\,
	cout => \U0|U0|U0|U3|Add0~29\);

-- Location: FF_X47_Y31_N29
\U0|U0|U0|U3|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|count\(14));

-- Location: LCCOMB_X47_Y31_N30
\U0|U0|U0|U3|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Add0~30_combout\ = (\U0|U0|U0|U3|count\(15) & (!\U0|U0|U0|U3|Add0~29\)) # (!\U0|U0|U0|U3|count\(15) & ((\U0|U0|U0|U3|Add0~29\) # (GND)))
-- \U0|U0|U0|U3|Add0~31\ = CARRY((!\U0|U0|U0|U3|Add0~29\) # (!\U0|U0|U0|U3|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U3|count\(15),
	datad => VCC,
	cin => \U0|U0|U0|U3|Add0~29\,
	combout => \U0|U0|U0|U3|Add0~30_combout\,
	cout => \U0|U0|U0|U3|Add0~31\);

-- Location: FF_X47_Y31_N31
\U0|U0|U0|U3|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|count\(15));

-- Location: LCCOMB_X47_Y30_N0
\U0|U0|U0|U3|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Add0~32_combout\ = (\U0|U0|U0|U3|count\(16) & (\U0|U0|U0|U3|Add0~31\ $ (GND))) # (!\U0|U0|U0|U3|count\(16) & (!\U0|U0|U0|U3|Add0~31\ & VCC))
-- \U0|U0|U0|U3|Add0~33\ = CARRY((\U0|U0|U0|U3|count\(16) & !\U0|U0|U0|U3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U3|count\(16),
	datad => VCC,
	cin => \U0|U0|U0|U3|Add0~31\,
	combout => \U0|U0|U0|U3|Add0~32_combout\,
	cout => \U0|U0|U0|U3|Add0~33\);

-- Location: FF_X47_Y30_N1
\U0|U0|U0|U3|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|count\(16));

-- Location: LCCOMB_X47_Y30_N2
\U0|U0|U0|U3|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Add0~34_combout\ = (\U0|U0|U0|U3|count\(17) & (!\U0|U0|U0|U3|Add0~33\)) # (!\U0|U0|U0|U3|count\(17) & ((\U0|U0|U0|U3|Add0~33\) # (GND)))
-- \U0|U0|U0|U3|Add0~35\ = CARRY((!\U0|U0|U0|U3|Add0~33\) # (!\U0|U0|U0|U3|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U3|count\(17),
	datad => VCC,
	cin => \U0|U0|U0|U3|Add0~33\,
	combout => \U0|U0|U0|U3|Add0~34_combout\,
	cout => \U0|U0|U0|U3|Add0~35\);

-- Location: FF_X47_Y30_N3
\U0|U0|U0|U3|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|count\(17));

-- Location: LCCOMB_X47_Y30_N4
\U0|U0|U0|U3|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Add0~36_combout\ = (\U0|U0|U0|U3|count\(18) & (\U0|U0|U0|U3|Add0~35\ $ (GND))) # (!\U0|U0|U0|U3|count\(18) & (!\U0|U0|U0|U3|Add0~35\ & VCC))
-- \U0|U0|U0|U3|Add0~37\ = CARRY((\U0|U0|U0|U3|count\(18) & !\U0|U0|U0|U3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U3|count\(18),
	datad => VCC,
	cin => \U0|U0|U0|U3|Add0~35\,
	combout => \U0|U0|U0|U3|Add0~36_combout\,
	cout => \U0|U0|U0|U3|Add0~37\);

-- Location: FF_X47_Y30_N5
\U0|U0|U0|U3|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|count\(18));

-- Location: LCCOMB_X47_Y30_N6
\U0|U0|U0|U3|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Add0~38_combout\ = (\U0|U0|U0|U3|count\(19) & (!\U0|U0|U0|U3|Add0~37\)) # (!\U0|U0|U0|U3|count\(19) & ((\U0|U0|U0|U3|Add0~37\) # (GND)))
-- \U0|U0|U0|U3|Add0~39\ = CARRY((!\U0|U0|U0|U3|Add0~37\) # (!\U0|U0|U0|U3|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U3|count\(19),
	datad => VCC,
	cin => \U0|U0|U0|U3|Add0~37\,
	combout => \U0|U0|U0|U3|Add0~38_combout\,
	cout => \U0|U0|U0|U3|Add0~39\);

-- Location: FF_X47_Y30_N7
\U0|U0|U0|U3|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|count\(19));

-- Location: LCCOMB_X47_Y30_N8
\U0|U0|U0|U3|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Add0~40_combout\ = (\U0|U0|U0|U3|count\(20) & (\U0|U0|U0|U3|Add0~39\ $ (GND))) # (!\U0|U0|U0|U3|count\(20) & (!\U0|U0|U0|U3|Add0~39\ & VCC))
-- \U0|U0|U0|U3|Add0~41\ = CARRY((\U0|U0|U0|U3|count\(20) & !\U0|U0|U0|U3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U3|count\(20),
	datad => VCC,
	cin => \U0|U0|U0|U3|Add0~39\,
	combout => \U0|U0|U0|U3|Add0~40_combout\,
	cout => \U0|U0|U0|U3|Add0~41\);

-- Location: FF_X47_Y30_N9
\U0|U0|U0|U3|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|count\(20));

-- Location: LCCOMB_X47_Y30_N10
\U0|U0|U0|U3|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Add0~42_combout\ = (\U0|U0|U0|U3|count\(21) & (!\U0|U0|U0|U3|Add0~41\)) # (!\U0|U0|U0|U3|count\(21) & ((\U0|U0|U0|U3|Add0~41\) # (GND)))
-- \U0|U0|U0|U3|Add0~43\ = CARRY((!\U0|U0|U0|U3|Add0~41\) # (!\U0|U0|U0|U3|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U3|count\(21),
	datad => VCC,
	cin => \U0|U0|U0|U3|Add0~41\,
	combout => \U0|U0|U0|U3|Add0~42_combout\,
	cout => \U0|U0|U0|U3|Add0~43\);

-- Location: FF_X47_Y30_N11
\U0|U0|U0|U3|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|count\(21));

-- Location: LCCOMB_X47_Y30_N12
\U0|U0|U0|U3|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Add0~44_combout\ = (\U0|U0|U0|U3|count\(22) & (\U0|U0|U0|U3|Add0~43\ $ (GND))) # (!\U0|U0|U0|U3|count\(22) & (!\U0|U0|U0|U3|Add0~43\ & VCC))
-- \U0|U0|U0|U3|Add0~45\ = CARRY((\U0|U0|U0|U3|count\(22) & !\U0|U0|U0|U3|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U3|count\(22),
	datad => VCC,
	cin => \U0|U0|U0|U3|Add0~43\,
	combout => \U0|U0|U0|U3|Add0~44_combout\,
	cout => \U0|U0|U0|U3|Add0~45\);

-- Location: FF_X47_Y30_N13
\U0|U0|U0|U3|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|count\(22));

-- Location: LCCOMB_X47_Y30_N14
\U0|U0|U0|U3|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Add0~46_combout\ = (\U0|U0|U0|U3|count\(23) & (!\U0|U0|U0|U3|Add0~45\)) # (!\U0|U0|U0|U3|count\(23) & ((\U0|U0|U0|U3|Add0~45\) # (GND)))
-- \U0|U0|U0|U3|Add0~47\ = CARRY((!\U0|U0|U0|U3|Add0~45\) # (!\U0|U0|U0|U3|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U3|count\(23),
	datad => VCC,
	cin => \U0|U0|U0|U3|Add0~45\,
	combout => \U0|U0|U0|U3|Add0~46_combout\,
	cout => \U0|U0|U0|U3|Add0~47\);

-- Location: FF_X47_Y30_N15
\U0|U0|U0|U3|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|count\(23));

-- Location: LCCOMB_X47_Y30_N16
\U0|U0|U0|U3|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Add0~48_combout\ = (\U0|U0|U0|U3|count\(24) & (\U0|U0|U0|U3|Add0~47\ $ (GND))) # (!\U0|U0|U0|U3|count\(24) & (!\U0|U0|U0|U3|Add0~47\ & VCC))
-- \U0|U0|U0|U3|Add0~49\ = CARRY((\U0|U0|U0|U3|count\(24) & !\U0|U0|U0|U3|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U3|count\(24),
	datad => VCC,
	cin => \U0|U0|U0|U3|Add0~47\,
	combout => \U0|U0|U0|U3|Add0~48_combout\,
	cout => \U0|U0|U0|U3|Add0~49\);

-- Location: FF_X47_Y30_N17
\U0|U0|U0|U3|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|count\(24));

-- Location: LCCOMB_X47_Y30_N18
\U0|U0|U0|U3|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Add0~50_combout\ = (\U0|U0|U0|U3|count\(25) & (!\U0|U0|U0|U3|Add0~49\)) # (!\U0|U0|U0|U3|count\(25) & ((\U0|U0|U0|U3|Add0~49\) # (GND)))
-- \U0|U0|U0|U3|Add0~51\ = CARRY((!\U0|U0|U0|U3|Add0~49\) # (!\U0|U0|U0|U3|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U3|count\(25),
	datad => VCC,
	cin => \U0|U0|U0|U3|Add0~49\,
	combout => \U0|U0|U0|U3|Add0~50_combout\,
	cout => \U0|U0|U0|U3|Add0~51\);

-- Location: FF_X47_Y30_N19
\U0|U0|U0|U3|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|count\(25));

-- Location: LCCOMB_X47_Y30_N20
\U0|U0|U0|U3|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Add0~52_combout\ = (\U0|U0|U0|U3|count\(26) & (\U0|U0|U0|U3|Add0~51\ $ (GND))) # (!\U0|U0|U0|U3|count\(26) & (!\U0|U0|U0|U3|Add0~51\ & VCC))
-- \U0|U0|U0|U3|Add0~53\ = CARRY((\U0|U0|U0|U3|count\(26) & !\U0|U0|U0|U3|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U3|count\(26),
	datad => VCC,
	cin => \U0|U0|U0|U3|Add0~51\,
	combout => \U0|U0|U0|U3|Add0~52_combout\,
	cout => \U0|U0|U0|U3|Add0~53\);

-- Location: FF_X47_Y30_N21
\U0|U0|U0|U3|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|count\(26));

-- Location: LCCOMB_X47_Y30_N22
\U0|U0|U0|U3|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Add0~54_combout\ = (\U0|U0|U0|U3|count\(27) & (!\U0|U0|U0|U3|Add0~53\)) # (!\U0|U0|U0|U3|count\(27) & ((\U0|U0|U0|U3|Add0~53\) # (GND)))
-- \U0|U0|U0|U3|Add0~55\ = CARRY((!\U0|U0|U0|U3|Add0~53\) # (!\U0|U0|U0|U3|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U3|count\(27),
	datad => VCC,
	cin => \U0|U0|U0|U3|Add0~53\,
	combout => \U0|U0|U0|U3|Add0~54_combout\,
	cout => \U0|U0|U0|U3|Add0~55\);

-- Location: FF_X47_Y30_N23
\U0|U0|U0|U3|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|count\(27));

-- Location: LCCOMB_X47_Y30_N24
\U0|U0|U0|U3|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Add0~56_combout\ = (\U0|U0|U0|U3|count\(28) & (\U0|U0|U0|U3|Add0~55\ $ (GND))) # (!\U0|U0|U0|U3|count\(28) & (!\U0|U0|U0|U3|Add0~55\ & VCC))
-- \U0|U0|U0|U3|Add0~57\ = CARRY((\U0|U0|U0|U3|count\(28) & !\U0|U0|U0|U3|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U3|count\(28),
	datad => VCC,
	cin => \U0|U0|U0|U3|Add0~55\,
	combout => \U0|U0|U0|U3|Add0~56_combout\,
	cout => \U0|U0|U0|U3|Add0~57\);

-- Location: FF_X47_Y30_N25
\U0|U0|U0|U3|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|count\(28));

-- Location: LCCOMB_X47_Y30_N26
\U0|U0|U0|U3|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Add0~58_combout\ = (\U0|U0|U0|U3|count\(29) & (!\U0|U0|U0|U3|Add0~57\)) # (!\U0|U0|U0|U3|count\(29) & ((\U0|U0|U0|U3|Add0~57\) # (GND)))
-- \U0|U0|U0|U3|Add0~59\ = CARRY((!\U0|U0|U0|U3|Add0~57\) # (!\U0|U0|U0|U3|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U3|count\(29),
	datad => VCC,
	cin => \U0|U0|U0|U3|Add0~57\,
	combout => \U0|U0|U0|U3|Add0~58_combout\,
	cout => \U0|U0|U0|U3|Add0~59\);

-- Location: FF_X47_Y30_N27
\U0|U0|U0|U3|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|count\(29));

-- Location: LCCOMB_X47_Y30_N28
\U0|U0|U0|U3|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Add0~60_combout\ = (\U0|U0|U0|U3|count\(30) & (\U0|U0|U0|U3|Add0~59\ $ (GND))) # (!\U0|U0|U0|U3|count\(30) & (!\U0|U0|U0|U3|Add0~59\ & VCC))
-- \U0|U0|U0|U3|Add0~61\ = CARRY((\U0|U0|U0|U3|count\(30) & !\U0|U0|U0|U3|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U3|count\(30),
	datad => VCC,
	cin => \U0|U0|U0|U3|Add0~59\,
	combout => \U0|U0|U0|U3|Add0~60_combout\,
	cout => \U0|U0|U0|U3|Add0~61\);

-- Location: FF_X47_Y30_N29
\U0|U0|U0|U3|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|count\(30));

-- Location: LCCOMB_X47_Y30_N30
\U0|U0|U0|U3|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Add0~62_combout\ = \U0|U0|U0|U3|count\(31) $ (\U0|U0|U0|U3|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U3|count\(31),
	cin => \U0|U0|U0|U3|Add0~61\,
	combout => \U0|U0|U0|U3|Add0~62_combout\);

-- Location: FF_X47_Y30_N31
\U0|U0|U0|U3|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|count\(31));

-- Location: LCCOMB_X46_Y30_N6
\U0|U0|U0|U3|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Equal0~8_combout\ = (!\U0|U0|U0|U3|count\(28) & (!\U0|U0|U0|U3|count\(30) & (!\U0|U0|U0|U3|count\(31) & !\U0|U0|U0|U3|count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U3|count\(28),
	datab => \U0|U0|U0|U3|count\(30),
	datac => \U0|U0|U0|U3|count\(31),
	datad => \U0|U0|U0|U3|count\(29),
	combout => \U0|U0|U0|U3|Equal0~8_combout\);

-- Location: LCCOMB_X46_Y30_N24
\U0|U0|U0|U3|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Equal0~5_combout\ = (!\U0|U0|U0|U3|count\(17) & (!\U0|U0|U0|U3|count\(19) & (!\U0|U0|U0|U3|count\(16) & !\U0|U0|U0|U3|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U3|count\(17),
	datab => \U0|U0|U0|U3|count\(19),
	datac => \U0|U0|U0|U3|count\(16),
	datad => \U0|U0|U0|U3|count\(18),
	combout => \U0|U0|U0|U3|Equal0~5_combout\);

-- Location: LCCOMB_X46_Y30_N4
\U0|U0|U0|U3|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Equal0~7_combout\ = (!\U0|U0|U0|U3|count\(27) & (!\U0|U0|U0|U3|count\(25) & (!\U0|U0|U0|U3|count\(26) & !\U0|U0|U0|U3|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U3|count\(27),
	datab => \U0|U0|U0|U3|count\(25),
	datac => \U0|U0|U0|U3|count\(26),
	datad => \U0|U0|U0|U3|count\(24),
	combout => \U0|U0|U0|U3|Equal0~7_combout\);

-- Location: LCCOMB_X46_Y30_N10
\U0|U0|U0|U3|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Equal0~6_combout\ = (!\U0|U0|U0|U3|count\(20) & (!\U0|U0|U0|U3|count\(22) & (!\U0|U0|U0|U3|count\(21) & !\U0|U0|U0|U3|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U3|count\(20),
	datab => \U0|U0|U0|U3|count\(22),
	datac => \U0|U0|U0|U3|count\(21),
	datad => \U0|U0|U0|U3|count\(23),
	combout => \U0|U0|U0|U3|Equal0~6_combout\);

-- Location: LCCOMB_X46_Y30_N0
\U0|U0|U0|U3|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Equal0~9_combout\ = (\U0|U0|U0|U3|Equal0~8_combout\ & (\U0|U0|U0|U3|Equal0~5_combout\ & (\U0|U0|U0|U3|Equal0~7_combout\ & \U0|U0|U0|U3|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U3|Equal0~8_combout\,
	datab => \U0|U0|U0|U3|Equal0~5_combout\,
	datac => \U0|U0|U0|U3|Equal0~7_combout\,
	datad => \U0|U0|U0|U3|Equal0~6_combout\,
	combout => \U0|U0|U0|U3|Equal0~9_combout\);

-- Location: LCCOMB_X47_Y31_N0
\U0|U0|U0|U3|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Add0~0_combout\ = \U0|U0|U0|U3|count\(0) $ (GND)
-- \U0|U0|U0|U3|Add0~1\ = CARRY(!\U0|U0|U0|U3|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U3|count\(0),
	datad => VCC,
	combout => \U0|U0|U0|U3|Add0~0_combout\,
	cout => \U0|U0|U0|U3|Add0~1\);

-- Location: LCCOMB_X46_Y31_N26
\U0|U0|U0|U3|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|count~0_combout\ = (!\U0|U0|U0|U3|Add0~0_combout\ & ((!\U0|U0|U0|U3|Equal0~9_combout\) # (!\U0|U0|U0|U3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U3|Equal0~4_combout\,
	datab => \U0|U0|U0|U3|Equal0~9_combout\,
	datac => \U0|U0|U0|U3|Add0~0_combout\,
	combout => \U0|U0|U0|U3|count~0_combout\);

-- Location: FF_X46_Y31_N27
\U0|U0|U0|U3|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|count\(0));

-- Location: LCCOMB_X47_Y31_N2
\U0|U0|U0|U3|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Add0~2_combout\ = (\U0|U0|U0|U3|count\(1) & (!\U0|U0|U0|U3|Add0~1\)) # (!\U0|U0|U0|U3|count\(1) & ((\U0|U0|U0|U3|Add0~1\) # (GND)))
-- \U0|U0|U0|U3|Add0~3\ = CARRY((!\U0|U0|U0|U3|Add0~1\) # (!\U0|U0|U0|U3|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U3|count\(1),
	datad => VCC,
	cin => \U0|U0|U0|U3|Add0~1\,
	combout => \U0|U0|U0|U3|Add0~2_combout\,
	cout => \U0|U0|U0|U3|Add0~3\);

-- Location: LCCOMB_X46_Y31_N12
\U0|U0|U0|U3|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|count~1_combout\ = (\U0|U0|U0|U3|Add0~2_combout\ & ((!\U0|U0|U0|U3|Equal0~4_combout\) # (!\U0|U0|U0|U3|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U3|Equal0~9_combout\,
	datac => \U0|U0|U0|U3|Equal0~4_combout\,
	datad => \U0|U0|U0|U3|Add0~2_combout\,
	combout => \U0|U0|U0|U3|count~1_combout\);

-- Location: FF_X46_Y31_N13
\U0|U0|U0|U3|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|count\(1));

-- Location: LCCOMB_X47_Y31_N4
\U0|U0|U0|U3|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Add0~4_combout\ = (\U0|U0|U0|U3|count\(2) & (\U0|U0|U0|U3|Add0~3\ $ (GND))) # (!\U0|U0|U0|U3|count\(2) & (!\U0|U0|U0|U3|Add0~3\ & VCC))
-- \U0|U0|U0|U3|Add0~5\ = CARRY((\U0|U0|U0|U3|count\(2) & !\U0|U0|U0|U3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U3|count\(2),
	datad => VCC,
	cin => \U0|U0|U0|U3|Add0~3\,
	combout => \U0|U0|U0|U3|Add0~4_combout\,
	cout => \U0|U0|U0|U3|Add0~5\);

-- Location: FF_X47_Y31_N5
\U0|U0|U0|U3|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|count\(2));

-- Location: FF_X47_Y31_N7
\U0|U0|U0|U3|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|count\(3));

-- Location: LCCOMB_X46_Y31_N6
\U0|U0|U0|U3|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Equal0~0_combout\ = (!\U0|U0|U0|U3|count\(3) & (!\U0|U0|U0|U3|count\(1) & (!\U0|U0|U0|U3|count\(0) & !\U0|U0|U0|U3|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U3|count\(3),
	datab => \U0|U0|U0|U3|count\(1),
	datac => \U0|U0|U0|U3|count\(0),
	datad => \U0|U0|U0|U3|count\(2),
	combout => \U0|U0|U0|U3|Equal0~0_combout\);

-- Location: LCCOMB_X46_Y31_N28
\U0|U0|U0|U3|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Equal0~3_combout\ = (!\U0|U0|U0|U3|count\(12) & (!\U0|U0|U0|U3|count\(13) & (!\U0|U0|U0|U3|count\(15) & !\U0|U0|U0|U3|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U3|count\(12),
	datab => \U0|U0|U0|U3|count\(13),
	datac => \U0|U0|U0|U3|count\(15),
	datad => \U0|U0|U0|U3|count\(14),
	combout => \U0|U0|U0|U3|Equal0~3_combout\);

-- Location: LCCOMB_X46_Y31_N10
\U0|U0|U0|U3|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Equal0~2_combout\ = (!\U0|U0|U0|U3|count\(8) & (!\U0|U0|U0|U3|count\(11) & (!\U0|U0|U0|U3|count\(10) & !\U0|U0|U0|U3|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U3|count\(8),
	datab => \U0|U0|U0|U3|count\(11),
	datac => \U0|U0|U0|U3|count\(10),
	datad => \U0|U0|U0|U3|count\(9),
	combout => \U0|U0|U0|U3|Equal0~2_combout\);

-- Location: LCCOMB_X46_Y31_N24
\U0|U0|U0|U3|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Equal0~1_combout\ = (!\U0|U0|U0|U3|count\(5) & (!\U0|U0|U0|U3|count\(6) & (!\U0|U0|U0|U3|count\(4) & !\U0|U0|U0|U3|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U3|count\(5),
	datab => \U0|U0|U0|U3|count\(6),
	datac => \U0|U0|U0|U3|count\(4),
	datad => \U0|U0|U0|U3|count\(7),
	combout => \U0|U0|U0|U3|Equal0~1_combout\);

-- Location: LCCOMB_X46_Y31_N22
\U0|U0|U0|U3|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|Equal0~4_combout\ = (\U0|U0|U0|U3|Equal0~0_combout\ & (\U0|U0|U0|U3|Equal0~3_combout\ & (\U0|U0|U0|U3|Equal0~2_combout\ & \U0|U0|U0|U3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U3|Equal0~0_combout\,
	datab => \U0|U0|U0|U3|Equal0~3_combout\,
	datac => \U0|U0|U0|U3|Equal0~2_combout\,
	datad => \U0|U0|U0|U3|Equal0~1_combout\,
	combout => \U0|U0|U0|U3|Equal0~4_combout\);

-- Location: LCCOMB_X46_Y31_N8
\U0|U0|U0|U3|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U3|tmp~0_combout\ = \U0|U0|U0|U3|tmp~q\ $ (((\U0|U0|U0|U3|Equal0~4_combout\ & \U0|U0|U0|U3|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U3|Equal0~4_combout\,
	datab => \U0|U0|U0|U3|Equal0~9_combout\,
	datac => \U0|U0|U0|U3|tmp~q\,
	combout => \U0|U0|U0|U3|tmp~0_combout\);

-- Location: FF_X46_Y31_N9
\U0|U0|U0|U3|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U3|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U3|tmp~q\);

-- Location: CLKCTRL_G12
\U0|U0|U0|U3|tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0|U0|U0|U3|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|U0|U0|U3|tmp~clkctrl_outclk\);

-- Location: LCCOMB_X42_Y8_N10
\U0|U0|U0|U2|U3|U1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U2|U3|U1|Q~0_combout\ = \U0|U0|U1|currentState.state_bit_0~q\ $ (!\U0|U0|U0|U2|U3|U1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|currentState.state_bit_0~q\,
	datac => \U0|U0|U0|U2|U3|U1|Q~q\,
	combout => \U0|U0|U0|U2|U3|U1|Q~0_combout\);

-- Location: FF_X42_Y8_N11
\U0|U0|U0|U2|U3|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|U0|U3|tmp~clkctrl_outclk\,
	d => \U0|U0|U0|U2|U3|U1|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U2|U3|U1|Q~q\);

-- Location: IOIBUF_X14_Y0_N1
\Lines[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lines(0),
	o => \Lines[0]~input_o\);

-- Location: LCCOMB_X42_Y8_N4
\U0|U0|U0|U2|U3|U2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U2|U3|U2|Q~0_combout\ = \U0|U0|U0|U2|U3|U2|Q~q\ $ (((!\U0|U0|U1|currentState.state_bit_0~q\ & !\U0|U0|U0|U2|U3|U1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|currentState.state_bit_0~q\,
	datac => \U0|U0|U0|U2|U3|U2|Q~q\,
	datad => \U0|U0|U0|U2|U3|U1|Q~q\,
	combout => \U0|U0|U0|U2|U3|U2|Q~0_combout\);

-- Location: FF_X42_Y8_N5
\U0|U0|U0|U2|U3|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|U0|U3|tmp~clkctrl_outclk\,
	d => \U0|U0|U0|U2|U3|U2|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U2|U3|U2|Q~q\);

-- Location: IOIBUF_X51_Y0_N22
\Lines[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lines(1),
	o => \Lines[1]~input_o\);

-- Location: LCCOMB_X42_Y8_N6
\U0|U0|U0|U1|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U1|Y~0_combout\ = (\U0|U0|U0|U2|U3|U1|Q~q\ & (!\Lines[0]~input_o\ & (\U0|U0|U0|U2|U3|U2|Q~q\))) # (!\U0|U0|U0|U2|U3|U1|Q~q\ & (((!\Lines[1]~input_o\) # (!\U0|U0|U0|U2|U3|U2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U2|U3|U1|Q~q\,
	datab => \Lines[0]~input_o\,
	datac => \U0|U0|U0|U2|U3|U2|Q~q\,
	datad => \Lines[1]~input_o\,
	combout => \U0|U0|U0|U1|Y~0_combout\);

-- Location: IOIBUF_X40_Y0_N22
\Lines[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lines(3),
	o => \Lines[3]~input_o\);

-- Location: IOIBUF_X46_Y0_N8
\Lines[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Lines(2),
	o => \Lines[2]~input_o\);

-- Location: LCCOMB_X42_Y8_N16
\U0|U0|U0|U1|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U1|Y~1_combout\ = (\U0|U0|U0|U1|Y~0_combout\ & (((\U0|U0|U0|U2|U3|U2|Q~q\)) # (!\Lines[3]~input_o\))) # (!\U0|U0|U0|U1|Y~0_combout\ & (((!\U0|U0|U0|U2|U3|U2|Q~q\ & !\Lines[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U1|Y~0_combout\,
	datab => \Lines[3]~input_o\,
	datac => \U0|U0|U0|U2|U3|U2|Q~q\,
	datad => \Lines[2]~input_o\,
	combout => \U0|U0|U0|U1|Y~1_combout\);

-- Location: IOIBUF_X0_Y29_N15
\altera_reserved_tms~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tms,
	o => \altera_reserved_tms~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\altera_reserved_tck~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tck,
	o => \altera_reserved_tck~input_o\);

-- Location: IOIBUF_X0_Y28_N15
\altera_reserved_tdi~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tdi,
	o => \altera_reserved_tdi~input_o\);

-- Location: JTAG_X43_Y40_N0
altera_internal_jtag : fiftyfivenm_jtag
PORT MAP (
	tms => \altera_reserved_tms~input_o\,
	tck => \altera_reserved_tck~input_o\,
	tdi => \altera_reserved_tdi~input_o\,
	tdouser => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\,
	tdo => \altera_internal_jtag~TDO\,
	tmsutap => \altera_internal_jtag~TMSUTAP\,
	tckutap => \altera_internal_jtag~TCKUTAP\,
	tdiutap => \altera_internal_jtag~TDIUTAP\);

-- Location: LCCOMB_X44_Y37_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\);

-- Location: FF_X44_Y37_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5));

-- Location: LCCOMB_X44_Y37_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\);

-- Location: FF_X44_Y37_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6));

-- Location: LCCOMB_X44_Y37_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\);

-- Location: FF_X44_Y37_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7));

-- Location: LCCOMB_X44_Y37_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\);

-- Location: LCCOMB_X43_Y37_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[8]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[8]~feeder_combout\);

-- Location: FF_X43_Y37_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8));

-- Location: LCCOMB_X44_Y37_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\);

-- Location: FF_X44_Y37_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9));

-- Location: LCCOMB_X49_Y37_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\);

-- Location: FF_X49_Y37_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0));

-- Location: LCCOMB_X49_Y37_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\);

-- Location: FF_X49_Y37_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1));

-- Location: LCCOMB_X49_Y37_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\);

-- Location: FF_X49_Y37_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2));

-- Location: LCCOMB_X45_Y37_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\);

-- Location: FF_X45_Y37_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0));

-- Location: LCCOMB_X45_Y37_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\);

-- Location: FF_X45_Y37_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10));

-- Location: LCCOMB_X45_Y37_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\);

-- Location: FF_X45_Y37_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11));

-- Location: LCCOMB_X45_Y37_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\);

-- Location: FF_X45_Y37_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12));

-- Location: LCCOMB_X45_Y37_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\);

-- Location: FF_X45_Y37_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13));

-- Location: LCCOMB_X45_Y37_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\);

-- Location: FF_X45_Y37_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14));

-- Location: LCCOMB_X45_Y37_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\);

-- Location: LCCOMB_X45_Y37_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\);

-- Location: FF_X45_Y37_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15));

-- Location: LCCOMB_X44_Y37_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\);

-- Location: FF_X44_Y37_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1));

-- Location: LCCOMB_X44_Y37_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\);

-- Location: FF_X44_Y37_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2));

-- Location: LCCOMB_X44_Y37_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\);

-- Location: FF_X44_Y37_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3));

-- Location: LCCOMB_X44_Y37_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\);

-- Location: FF_X44_Y37_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4));

-- Location: LCCOMB_X43_Y37_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\);

-- Location: LCCOMB_X45_Y38_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\);

-- Location: LCCOMB_X45_Y38_N28
\~QIC_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QIC_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QIC_CREATED_GND~I_combout\);

-- Location: LCCOMB_X46_Y35_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\);

-- Location: FF_X46_Y35_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9));

-- Location: FF_X46_Y35_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8));

-- Location: LCCOMB_X46_Y35_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\);

-- Location: FF_X46_Y35_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7));

-- Location: LCCOMB_X46_Y35_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\);

-- Location: FF_X46_Y35_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6));

-- Location: FF_X46_Y35_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5));

-- Location: LCCOMB_X46_Y35_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\);

-- Location: FF_X46_Y35_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4));

-- Location: LCCOMB_X46_Y35_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\);

-- Location: FF_X46_Y35_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3));

-- Location: LCCOMB_X46_Y35_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\);

-- Location: FF_X46_Y35_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2));

-- Location: LCCOMB_X46_Y35_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\);

-- Location: FF_X46_Y35_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1));

-- Location: LCCOMB_X46_Y35_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\);

-- Location: FF_X46_Y35_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0));

-- Location: LCCOMB_X46_Y35_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\);

-- Location: LCCOMB_X46_Y35_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\);

-- Location: LCCOMB_X45_Y37_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\);

-- Location: FF_X45_Y37_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\);

-- Location: LCCOMB_X43_Y37_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\);

-- Location: LCCOMB_X42_Y8_N12
\U0|U0|U0|U2|U3|U3|Q~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U2|U3|U3|Q~_wirecell_combout\ = !\U0|U0|U0|U2|U3|U3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|U0|U0|U2|U3|U3|Q~q\,
	combout => \U0|U0|U0|U2|U3|U3|Q~_wirecell_combout\);

-- Location: LCCOMB_X44_Y37_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\);

-- Location: LCCOMB_X42_Y8_N2
\U0|U0|U0|U2|U3|U2|Q~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U2|U3|U2|Q~_wirecell_combout\ = !\U0|U0|U0|U2|U3|U2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U0|U0|U2|U3|U2|Q~q\,
	combout => \U0|U0|U0|U2|U3|U2|Q~_wirecell_combout\);

-- Location: LCCOMB_X45_Y38_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U2|U3|U2|Q~_wirecell_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\);

-- Location: LCCOMB_X45_Y38_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\);

-- Location: LCCOMB_X45_Y38_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\);

-- Location: FF_X45_Y38_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1));

-- Location: LCCOMB_X44_Y38_N0
\U0|U0|U0|U2|U3|U1|Q~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U2|U3|U1|Q~_wirecell_combout\ = !\U0|U0|U0|U2|U3|U1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U0|U0|U2|U3|U1|Q~q\,
	combout => \U0|U0|U0|U2|U3|U1|Q~_wirecell_combout\);

-- Location: LCCOMB_X45_Y38_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \U0|U0|U0|U2|U3|U1|Q~_wirecell_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\);

-- Location: FF_X45_Y38_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0));

-- Location: LCCOMB_X44_Y38_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\);

-- Location: LCCOMB_X44_Y38_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\);

-- Location: FF_X44_Y38_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0));

-- Location: LCCOMB_X45_Y38_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\);

-- Location: LCCOMB_X45_Y38_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\);

-- Location: LCCOMB_X42_Y8_N20
\U0|U0|U0|U2|U3|U4|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U2|U3|U4|Q~0_combout\ = (!\U0|U0|U0|U2|U3|U1|Q~q\ & (!\U0|U0|U0|U2|U3|U2|Q~q\ & (!\U0|U0|U1|currentState.state_bit_0~q\ & !\U0|U0|U0|U2|U3|U3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U2|U3|U1|Q~q\,
	datab => \U0|U0|U0|U2|U3|U2|Q~q\,
	datac => \U0|U0|U1|currentState.state_bit_0~q\,
	datad => \U0|U0|U0|U2|U3|U3|Q~q\,
	combout => \U0|U0|U0|U2|U3|U4|Q~0_combout\);

-- Location: LCCOMB_X42_Y8_N18
\U0|U0|U0|U2|U3|U4|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U2|U3|U4|Q~1_combout\ = \U0|U0|U0|U2|U3|U4|Q~q\ $ (\U0|U0|U0|U2|U3|U4|Q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U0|U0|U2|U3|U4|Q~q\,
	datad => \U0|U0|U0|U2|U3|U4|Q~0_combout\,
	combout => \U0|U0|U0|U2|U3|U4|Q~1_combout\);

-- Location: FF_X42_Y8_N19
\U0|U0|U0|U2|U3|U4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|U0|U3|tmp~clkctrl_outclk\,
	d => \U0|U0|U0|U2|U3|U4|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U2|U3|U4|Q~q\);

-- Location: LCCOMB_X42_Y8_N30
\U0|U0|U0|U2|U3|U4|Q~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U2|U3|U4|Q~_wirecell_combout\ = !\U0|U0|U0|U2|U3|U4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|U0|U0|U2|U3|U4|Q~q\,
	combout => \U0|U0|U0|U2|U3|U4|Q~_wirecell_combout\);

-- Location: LCCOMB_X42_Y8_N26
\U0|U0|U1|currentState.STATE_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|currentState.STATE_2~0_combout\ = (!\U0|U0|U1|currentState.state_bit_1~q\ & \U0|U0|U1|currentState.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U1|currentState.state_bit_1~q\,
	datac => \U0|U0|U1|currentState.state_bit_0~q\,
	combout => \U0|U0|U1|currentState.STATE_2~0_combout\);

-- Location: IOIBUF_X51_Y54_N29
\M~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M,
	o => \M~input_o\);

-- Location: LCCOMB_X45_Y38_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\);

-- Location: FF_X45_Y38_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7));

-- Location: IOIBUF_X51_Y54_N22
\Coin~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Coin,
	o => \Coin~input_o\);

-- Location: LCCOMB_X45_Y38_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \Coin~input_o\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\);

-- Location: FF_X45_Y38_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6));

-- Location: LCCOMB_X45_Y38_N0
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X45_Y38_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6),
	datad => \~GND~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\);

-- Location: FF_X45_Y38_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5));

-- Location: LCCOMB_X45_Y38_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|currentState.STATE_2~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\);

-- Location: FF_X45_Y38_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4));

-- Location: LCCOMB_X45_Y38_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \U0|U0|U0|U2|U3|U4|Q~_wirecell_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\);

-- Location: LCCOMB_X44_Y38_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\);

-- Location: FF_X44_Y38_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3));

-- Location: LCCOMB_X45_Y38_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \U0|U0|U0|U2|U3|U3|Q~_wirecell_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\);

-- Location: FF_X45_Y38_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2));

-- Location: LCCOMB_X43_Y37_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\);

-- Location: LCCOMB_X45_Y37_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\);

-- Location: LCCOMB_X44_Y37_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\);

-- Location: FF_X44_Y37_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1));

-- Location: LCCOMB_X43_Y37_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\);

-- Location: FF_X44_Y37_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\);

-- Location: LCCOMB_X44_Y38_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\);

-- Location: FF_X44_Y38_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2));

-- Location: LCCOMB_X44_Y37_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\);

-- Location: FF_X44_Y37_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\);

-- Location: FF_X45_Y38_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\,
	asdata => \~QIC_CREATED_GND~I_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8));

-- Location: LCCOMB_X45_Y36_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => VCC,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~5_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~6\);

-- Location: LCCOMB_X45_Y36_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\);

-- Location: LCCOMB_X45_Y36_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\);

-- Location: LCCOMB_X46_Y37_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\);

-- Location: LCCOMB_X45_Y36_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~15_combout\);

-- Location: LCCOMB_X45_Y37_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\);

-- Location: FF_X45_Y37_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\);

-- Location: LCCOMB_X45_Y36_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~16\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~16_combout\);

-- Location: FF_X45_Y36_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~5_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~15_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0));

-- Location: LCCOMB_X45_Y36_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~6\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~7_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~8\);

-- Location: FF_X45_Y36_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~7_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~15_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1));

-- Location: LCCOMB_X45_Y36_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~8\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~9_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~10\);

-- Location: FF_X45_Y36_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~9_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~15_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2));

-- Location: LCCOMB_X45_Y36_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~10\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~11_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~12\);

-- Location: FF_X45_Y36_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~11_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~15_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3));

-- Location: LCCOMB_X45_Y36_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~12\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~13_combout\);

-- Location: FF_X45_Y36_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~13_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~15_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4));

-- Location: LCCOMB_X44_Y36_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\);

-- Location: LCCOMB_X43_Y37_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\);

-- Location: LCCOMB_X44_Y36_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\);

-- Location: FF_X44_Y36_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3));

-- Location: FF_X44_Y36_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2));

-- Location: LCCOMB_X44_Y36_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\);

-- Location: FF_X44_Y36_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1));

-- Location: LCCOMB_X44_Y36_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\);

-- Location: FF_X44_Y36_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(0));

-- Location: LCCOMB_X44_Y36_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\);

-- Location: FF_X44_Y36_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(0));

-- Location: LCCOMB_X44_Y36_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4_combout\);

-- Location: LCCOMB_X44_Y36_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~5_combout\);

-- Location: LCCOMB_X44_Y36_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\);

-- Location: LCCOMB_X44_Y36_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\);

-- Location: LCCOMB_X44_Y36_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\);

-- Location: LCCOMB_X43_Y36_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~5_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\);

-- Location: LCCOMB_X44_Y36_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\);

-- Location: LCCOMB_X44_Y36_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\);

-- Location: FF_X44_Y36_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(1));

-- Location: LCCOMB_X44_Y36_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\);

-- Location: LCCOMB_X44_Y36_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\);

-- Location: LCCOMB_X43_Y36_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\);

-- Location: LCCOMB_X45_Y36_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\);

-- Location: FF_X44_Y36_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(2));

-- Location: LCCOMB_X44_Y36_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~16\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~16_combout\);

-- Location: LCCOMB_X43_Y36_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~16_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\);

-- Location: FF_X44_Y36_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(3));

-- Location: LCCOMB_X44_Y36_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~18\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~18_combout\);

-- Location: LCCOMB_X45_Y36_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~17\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~17_combout\);

-- Location: LCCOMB_X45_Y36_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~19\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~18_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~17_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~19_combout\);

-- Location: LCCOMB_X43_Y36_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~19_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\);

-- Location: LCCOMB_X43_Y36_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\);

-- Location: LCCOMB_X43_Y36_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\);

-- Location: FF_X43_Y36_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(3));

-- Location: FF_X43_Y36_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(3),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(2));

-- Location: FF_X43_Y36_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(2),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(1));

-- Location: FF_X43_Y36_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(1),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(0));

-- Location: LCCOMB_X46_Y37_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\);

-- Location: FF_X46_Y37_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(3));

-- Location: LCCOMB_X46_Y37_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\);

-- Location: FF_X46_Y37_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(2));

-- Location: LCCOMB_X46_Y37_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\);

-- Location: FF_X46_Y37_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(1));

-- Location: LCCOMB_X46_Y37_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\);

-- Location: FF_X46_Y37_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(0));

-- Location: LCCOMB_X46_Y37_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\);

-- Location: LCCOMB_X47_Y37_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datad => VCC,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\);

-- Location: LCCOMB_X47_Y37_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\);

-- Location: LCCOMB_X47_Y37_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\);

-- Location: LCCOMB_X46_Y37_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\);

-- Location: FF_X47_Y37_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2));

-- Location: LCCOMB_X47_Y37_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\);

-- Location: FF_X47_Y37_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3));

-- Location: LCCOMB_X47_Y37_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\);

-- Location: FF_X47_Y37_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4));

-- Location: LCCOMB_X47_Y37_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\);

-- Location: LCCOMB_X47_Y37_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\);

-- Location: FF_X47_Y37_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0));

-- Location: FF_X47_Y37_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1));

-- Location: LCCOMB_X47_Y37_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\);

-- Location: LCCOMB_X47_Y37_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\);

-- Location: LCCOMB_X47_Y37_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\);

-- Location: LCCOMB_X46_Y37_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\);

-- Location: LCCOMB_X46_Y37_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\);

-- Location: FF_X46_Y37_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3));

-- Location: LCCOMB_X47_Y37_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\);

-- Location: LCCOMB_X47_Y37_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\);

-- Location: LCCOMB_X47_Y37_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\);

-- Location: LCCOMB_X47_Y37_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\);

-- Location: FF_X47_Y37_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2));

-- Location: LCCOMB_X47_Y37_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\);

-- Location: FF_X47_Y37_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1));

-- Location: LCCOMB_X47_Y37_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\);

-- Location: FF_X47_Y37_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0));

-- Location: LCCOMB_X46_Y37_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\);

-- Location: LCCOMB_X44_Y37_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datac => \~GND~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\);

-- Location: LCCOMB_X43_Y37_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\);

-- Location: LCCOMB_X45_Y36_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\);

-- Location: FF_X45_Y36_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\);

-- Location: LCCOMB_X43_Y37_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\);

-- Location: LCCOMB_X43_Y37_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\);

-- Location: LCCOMB_X43_Y37_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\);

-- Location: LCCOMB_X44_Y37_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\);

-- Location: FF_X44_Y37_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\);

-- Location: CLKCTRL_G14
\altera_internal_jtag~TCKUTAPclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\);

-- Location: LCCOMB_X44_Y38_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\);

-- Location: LCCOMB_X44_Y38_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\);

-- Location: FF_X44_Y38_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\);

-- Location: LCCOMB_X42_Y8_N8
\U0|U0|U1|currentState.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|currentState.state_bit_1~0_combout\ = (\U0|U0|U1|currentState.state_bit_0~q\ & 
-- ((\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\) # ((\U0|U0|U0|U1|Y~1_combout\ & 
-- \U0|U0|U1|currentState.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|currentState.state_bit_0~q\,
	datab => \U0|U0|U0|U1|Y~1_combout\,
	datac => \U0|U0|U1|currentState.state_bit_1~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\,
	combout => \U0|U0|U1|currentState.state_bit_1~0_combout\);

-- Location: IOIBUF_X69_Y54_N1
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X42_Y8_N9
\U0|U0|U1|currentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U1|currentState.state_bit_1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U1|currentState.state_bit_1~q\);

-- Location: LCCOMB_X42_Y8_N22
\U0|U0|U1|currentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|currentState.state_bit_0~0_combout\ = (\U0|U0|U0|U1|Y~1_combout\ & (((\U0|U0|U1|currentState.state_bit_0~q\)) # (!\U0|U0|U1|currentState.state_bit_1~q\))) # (!\U0|U0|U0|U1|Y~1_combout\ & (\U0|U0|U1|currentState.state_bit_0~q\ & 
-- ((\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\) # (!\U0|U0|U1|currentState.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U1|Y~1_combout\,
	datab => \U0|U0|U1|currentState.state_bit_1~q\,
	datac => \U0|U0|U1|currentState.state_bit_0~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\,
	combout => \U0|U0|U1|currentState.state_bit_0~0_combout\);

-- Location: FF_X42_Y8_N23
\U0|U0|U1|currentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U1|currentState.state_bit_0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U1|currentState.state_bit_0~q\);

-- Location: LCCOMB_X42_Y8_N0
\U0|U0|U0|U2|U3|U3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U2|U3|U3|Q~0_combout\ = \U0|U0|U0|U2|U3|U3|Q~q\ $ (((!\U0|U0|U1|currentState.state_bit_0~q\ & (!\U0|U0|U0|U2|U3|U2|Q~q\ & !\U0|U0|U0|U2|U3|U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|currentState.state_bit_0~q\,
	datab => \U0|U0|U0|U2|U3|U2|Q~q\,
	datac => \U0|U0|U0|U2|U3|U3|Q~q\,
	datad => \U0|U0|U0|U2|U3|U1|Q~q\,
	combout => \U0|U0|U0|U2|U3|U3|Q~0_combout\);

-- Location: FF_X42_Y8_N1
\U0|U0|U0|U2|U3|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U0|U0|U3|tmp~clkctrl_outclk\,
	d => \U0|U0|U0|U2|U3|U3|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U2|U3|U3|Q~q\);

-- Location: LCCOMB_X42_Y8_N28
\U0|U0|U0|U0|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|O0~0_combout\ = (!\U0|U0|U0|U2|U3|U4|Q~q\) # (!\U0|U0|U0|U2|U3|U3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U2|U3|U3|Q~q\,
	datad => \U0|U0|U0|U2|U3|U4|Q~q\,
	combout => \U0|U0|U0|U0|O0~0_combout\);

-- Location: LCCOMB_X42_Y8_N14
\U0|U0|U0|U0|O1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|O1~0_combout\ = (!\U0|U0|U0|U2|U3|U3|Q~q\ & \U0|U0|U0|U2|U3|U4|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U2|U3|U3|Q~q\,
	datad => \U0|U0|U0|U2|U3|U4|Q~q\,
	combout => \U0|U0|U0|U0|O1~0_combout\);

-- Location: LCCOMB_X42_Y8_N24
\U0|U0|U0|U0|O2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|O2~0_combout\ = (\U0|U0|U0|U2|U3|U3|Q~q\ & !\U0|U0|U0|U2|U3|U4|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U2|U3|U3|Q~q\,
	datad => \U0|U0|U0|U2|U3|U4|Q~q\,
	combout => \U0|U0|U0|U0|O2~0_combout\);

-- Location: LCCOMB_X44_Y41_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\);

-- Location: FF_X44_Y41_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\);

-- Location: CLKCTRL_G10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\);

-- Location: LCCOMB_X44_Y38_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\);

-- Location: FF_X44_Y38_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\);

-- Location: LCCOMB_X41_Y4_N24
\U2|U0|U3|Sc0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|U3|Sc0|Q~feeder_combout\ = \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	combout => \U2|U0|U3|Sc0|Q~feeder_combout\);

-- Location: LCCOMB_X40_Y4_N18
\U2|U0|U2|count_value[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|U2|count_value[0]~3_combout\ = !\U2|U0|U2|count_value\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|U0|U2|count_value\(0),
	combout => \U2|U0|U2|count_value[0]~3_combout\);

-- Location: LCCOMB_X40_Y4_N26
\U2|U0|UO|CURRENT_STATE.STATE_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|UO|CURRENT_STATE.STATE_1~0_combout\ = (!\U2|U0|UO|CURRENT_STATE.state_bit_1~q\ & !\U2|U0|UO|CURRENT_STATE.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|U0|UO|CURRENT_STATE.state_bit_1~q\,
	datac => \U2|U0|UO|CURRENT_STATE.state_bit_0~q\,
	combout => \U2|U0|UO|CURRENT_STATE.STATE_1~0_combout\);

-- Location: CLKCTRL_G17
\U2|U0|UO|CURRENT_STATE.STATE_1~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U2|U0|UO|CURRENT_STATE.STATE_1~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U2|U0|UO|CURRENT_STATE.STATE_1~0clkctrl_outclk\);

-- Location: FF_X40_Y4_N19
\U2|U0|U2|count_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U2|U0|U2|count_value[0]~3_combout\,
	clrn => \U2|U0|UO|ALT_INV_CURRENT_STATE.STATE_1~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|U2|count_value\(0));

-- Location: LCCOMB_X40_Y4_N22
\U2|U0|U2|count_value[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|U2|count_value[1]~1_combout\ = \U2|U0|U2|count_value\(1) $ (\U2|U0|U2|count_value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|U0|U2|count_value\(1),
	datad => \U2|U0|U2|count_value\(0),
	combout => \U2|U0|U2|count_value[1]~1_combout\);

-- Location: FF_X40_Y4_N23
\U2|U0|U2|count_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U2|U0|U2|count_value[1]~1_combout\,
	clrn => \U2|U0|UO|ALT_INV_CURRENT_STATE.STATE_1~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|U2|count_value\(1));

-- Location: LCCOMB_X40_Y4_N8
\U2|U0|U2|count_value[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|U2|count_value[2]~2_combout\ = \U2|U0|U2|count_value\(2) $ (((\U2|U0|U2|count_value\(1) & \U2|U0|U2|count_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U0|U2|count_value\(1),
	datab => \U2|U0|U2|count_value\(0),
	datac => \U2|U0|U2|count_value\(2),
	combout => \U2|U0|U2|count_value[2]~2_combout\);

-- Location: FF_X40_Y4_N9
\U2|U0|U2|count_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U2|U0|U2|count_value[2]~2_combout\,
	clrn => \U2|U0|UO|ALT_INV_CURRENT_STATE.STATE_1~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|U2|count_value\(2));

-- Location: LCCOMB_X40_Y4_N28
\U2|U0|U2|count_value[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|U2|count_value[3]~0_combout\ = \U2|U0|U2|count_value\(3) $ (((\U2|U0|U2|count_value\(1) & (\U2|U0|U2|count_value\(2) & \U2|U0|U2|count_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U0|U2|count_value\(1),
	datab => \U2|U0|U2|count_value\(2),
	datac => \U2|U0|U2|count_value\(3),
	datad => \U2|U0|U2|count_value\(0),
	combout => \U2|U0|U2|count_value[3]~0_combout\);

-- Location: FF_X40_Y4_N29
\U2|U0|U2|count_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U2|U0|U2|count_value[3]~0_combout\,
	clrn => \U2|U0|UO|ALT_INV_CURRENT_STATE.STATE_1~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|U2|count_value\(3));

-- Location: LCCOMB_X40_Y4_N20
\U2|U0|UO|CURRENT_STATE.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|UO|CURRENT_STATE.state_bit_0~0_combout\ = (\U2|U0|U2|count_value\(1) & (!\U2|U0|U2|count_value\(0) & (!\U2|U0|U2|count_value\(2) & \U2|U0|U2|count_value\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U0|U2|count_value\(1),
	datab => \U2|U0|U2|count_value\(0),
	datac => \U2|U0|U2|count_value\(2),
	datad => \U2|U0|U2|count_value\(3),
	combout => \U2|U0|UO|CURRENT_STATE.state_bit_0~0_combout\);

-- Location: LCCOMB_X44_Y38_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder_combout\);

-- Location: FF_X44_Y38_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\);

-- Location: LCCOMB_X40_Y4_N14
\U2|U0|UO|CURRENT_STATE.state_bit_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|UO|CURRENT_STATE.state_bit_0~1_combout\ = (\U2|U0|UO|CURRENT_STATE.state_bit_1~q\ & (!\U2|U0|UO|CURRENT_STATE.state_bit_0~0_combout\ & (\U2|U0|UO|CURRENT_STATE.state_bit_0~q\))) # (!\U2|U0|UO|CURRENT_STATE.state_bit_1~q\ & 
-- (((\U2|U0|UO|CURRENT_STATE.state_bit_0~q\) # (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U0|UO|CURRENT_STATE.state_bit_1~q\,
	datab => \U2|U0|UO|CURRENT_STATE.state_bit_0~0_combout\,
	datac => \U2|U0|UO|CURRENT_STATE.state_bit_0~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	combout => \U2|U0|UO|CURRENT_STATE.state_bit_0~1_combout\);

-- Location: FF_X40_Y4_N15
\U2|U0|UO|CURRENT_STATE.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U2|U0|UO|CURRENT_STATE.state_bit_0~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|UO|CURRENT_STATE.state_bit_0~q\);

-- Location: LCCOMB_X40_Y4_N0
\U2|U1|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U1|CurrentState.state_bit_0~0_combout\ = (\U2|U1|CurrentState.state_bit_1~q\ & (!\U2|U0|UO|CURRENT_STATE.state_bit_0~q\ & (\U2|U1|CurrentState.state_bit_0~q\ & \U2|U0|UO|CURRENT_STATE.state_bit_1~q\))) # (!\U2|U1|CurrentState.state_bit_1~q\ & 
-- ((\U2|U1|CurrentState.state_bit_0~q\) # ((!\U2|U0|UO|CURRENT_STATE.state_bit_0~q\ & \U2|U0|UO|CURRENT_STATE.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|CurrentState.state_bit_1~q\,
	datab => \U2|U0|UO|CURRENT_STATE.state_bit_0~q\,
	datac => \U2|U1|CurrentState.state_bit_0~q\,
	datad => \U2|U0|UO|CURRENT_STATE.state_bit_1~q\,
	combout => \U2|U1|CurrentState.state_bit_0~0_combout\);

-- Location: FF_X40_Y4_N1
\U2|U1|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U2|U1|CurrentState.state_bit_0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U1|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X40_Y4_N10
\U2|U1|CurrentState.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U1|CurrentState.state_bit_1~0_combout\ = (\U2|U1|CurrentState.state_bit_0~q\ & (((!\U2|U0|UO|CURRENT_STATE.state_bit_0~q\ & \U2|U0|UO|CURRENT_STATE.state_bit_1~q\)) # (!\U2|U1|CurrentState.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|CurrentState.state_bit_0~q\,
	datab => \U2|U0|UO|CURRENT_STATE.state_bit_0~q\,
	datac => \U2|U1|CurrentState.state_bit_1~q\,
	datad => \U2|U0|UO|CURRENT_STATE.state_bit_1~q\,
	combout => \U2|U1|CurrentState.state_bit_1~0_combout\);

-- Location: FF_X40_Y4_N11
\U2|U1|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U2|U1|CurrentState.state_bit_1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U1|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X41_Y4_N18
\U2|U0|U1|sr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|U1|sr~0_combout\ = !\U2|U0|U1|sr~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|U0|U1|sr~q\,
	combout => \U2|U0|U1|sr~0_combout\);

-- Location: FF_X41_Y4_N19
\U2|U0|U1|sr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U2|U0|U1|sr~0_combout\,
	clrn => \U2|U0|UO|ALT_INV_CURRENT_STATE.STATE_1~0clkctrl_outclk\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|U1|sr~q\);

-- Location: LCCOMB_X40_Y4_N30
\U2|U0|UO|CURRENT_STATE.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|UO|CURRENT_STATE.state_bit_1~0_combout\ = (\U2|U0|UO|CURRENT_STATE.state_bit_0~q\ & (((!\U2|U0|U1|sr~q\) # (!\U2|U0|UO|CURRENT_STATE.state_bit_0~0_combout\)))) # (!\U2|U0|UO|CURRENT_STATE.state_bit_0~q\ & (!\U2|U1|CurrentState.state_bit_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|CurrentState.state_bit_1~q\,
	datab => \U2|U0|UO|CURRENT_STATE.state_bit_0~0_combout\,
	datac => \U2|U0|UO|CURRENT_STATE.state_bit_0~q\,
	datad => \U2|U0|U1|sr~q\,
	combout => \U2|U0|UO|CURRENT_STATE.state_bit_1~0_combout\);

-- Location: LCCOMB_X40_Y4_N16
\U2|U0|UO|CURRENT_STATE.state_bit_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|UO|CURRENT_STATE.state_bit_1~1_combout\ = (!\U2|U0|U2|count_value\(1) & (\U2|U0|U2|count_value\(0) & (!\U2|U0|U2|count_value\(2) & \U2|U0|U2|count_value\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U0|U2|count_value\(1),
	datab => \U2|U0|U2|count_value\(0),
	datac => \U2|U0|U2|count_value\(2),
	datad => \U2|U0|U2|count_value\(3),
	combout => \U2|U0|UO|CURRENT_STATE.state_bit_1~1_combout\);

-- Location: LCCOMB_X40_Y4_N24
\U2|U0|UO|CURRENT_STATE.state_bit_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|UO|CURRENT_STATE.state_bit_1~2_combout\ = (\U2|U0|UO|CURRENT_STATE.state_bit_1~0_combout\ & ((\U2|U0|UO|CURRENT_STATE.state_bit_1~q\) # ((\U2|U0|UO|CURRENT_STATE.state_bit_0~q\ & \U2|U0|UO|CURRENT_STATE.state_bit_1~1_combout\)))) # 
-- (!\U2|U0|UO|CURRENT_STATE.state_bit_1~0_combout\ & (\U2|U0|UO|CURRENT_STATE.state_bit_0~q\ & ((\U2|U0|UO|CURRENT_STATE.state_bit_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U0|UO|CURRENT_STATE.state_bit_1~0_combout\,
	datab => \U2|U0|UO|CURRENT_STATE.state_bit_0~q\,
	datac => \U2|U0|UO|CURRENT_STATE.state_bit_1~q\,
	datad => \U2|U0|UO|CURRENT_STATE.state_bit_1~1_combout\,
	combout => \U2|U0|UO|CURRENT_STATE.state_bit_1~2_combout\);

-- Location: FF_X40_Y4_N25
\U2|U0|UO|CURRENT_STATE.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U2|U0|UO|CURRENT_STATE.state_bit_1~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|UO|CURRENT_STATE.state_bit_1~q\);

-- Location: LCCOMB_X40_Y4_N2
\U2|U0|UO|CURRENT_STATE.STATE_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|UO|CURRENT_STATE.STATE_2~0_combout\ = (!\U2|U0|UO|CURRENT_STATE.state_bit_1~q\ & \U2|U0|UO|CURRENT_STATE.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|U0|UO|CURRENT_STATE.state_bit_1~q\,
	datac => \U2|U0|UO|CURRENT_STATE.state_bit_0~q\,
	combout => \U2|U0|UO|CURRENT_STATE.STATE_2~0_combout\);

-- Location: FF_X41_Y4_N25
\U2|U0|U3|Sc0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U2|U0|U3|Sc0|Q~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U2|U0|UO|CURRENT_STATE.STATE_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|U3|Sc0|Q~q\);

-- Location: LCCOMB_X41_Y4_N6
\U2|U0|U3|Sc1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|U3|Sc1|Q~feeder_combout\ = \U2|U0|U3|Sc0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|U0|U3|Sc0|Q~q\,
	combout => \U2|U0|U3|Sc1|Q~feeder_combout\);

-- Location: FF_X41_Y4_N7
\U2|U0|U3|Sc1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U2|U0|U3|Sc1|Q~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U2|U0|UO|CURRENT_STATE.STATE_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|U3|Sc1|Q~q\);

-- Location: LCCOMB_X41_Y4_N28
\U2|U0|U3|Sc2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|U3|Sc2|Q~feeder_combout\ = \U2|U0|U3|Sc1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|U0|U3|Sc1|Q~q\,
	combout => \U2|U0|U3|Sc2|Q~feeder_combout\);

-- Location: FF_X41_Y4_N29
\U2|U0|U3|Sc2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U2|U0|U3|Sc2|Q~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U2|U0|UO|CURRENT_STATE.STATE_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|U3|Sc2|Q~q\);

-- Location: LCCOMB_X41_Y4_N26
\U2|U0|U3|Sc3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|U3|Sc3|Q~feeder_combout\ = \U2|U0|U3|Sc2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|U0|U3|Sc2|Q~q\,
	combout => \U2|U0|U3|Sc3|Q~feeder_combout\);

-- Location: FF_X41_Y4_N27
\U2|U0|U3|Sc3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U2|U0|U3|Sc3|Q~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U2|U0|UO|CURRENT_STATE.STATE_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|U3|Sc3|Q~q\);

-- Location: LCCOMB_X41_Y4_N0
\U2|U0|U3|Sc4|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|U3|Sc4|Q~feeder_combout\ = \U2|U0|U3|Sc3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|U0|U3|Sc3|Q~q\,
	combout => \U2|U0|U3|Sc4|Q~feeder_combout\);

-- Location: FF_X41_Y4_N1
\U2|U0|U3|Sc4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U2|U0|U3|Sc4|Q~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U2|U0|UO|CURRENT_STATE.STATE_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|U3|Sc4|Q~q\);

-- Location: LCCOMB_X41_Y4_N14
\U2|U0|U3|Sc5|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|U3|Sc5|Q~feeder_combout\ = \U2|U0|U3|Sc4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|U0|U3|Sc4|Q~q\,
	combout => \U2|U0|U3|Sc5|Q~feeder_combout\);

-- Location: FF_X41_Y4_N15
\U2|U0|U3|Sc5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U2|U0|U3|Sc5|Q~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U2|U0|UO|CURRENT_STATE.STATE_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|U3|Sc5|Q~q\);

-- Location: LCCOMB_X41_Y4_N4
\U2|U0|U3|Sc6|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|U3|Sc6|Q~feeder_combout\ = \U2|U0|U3|Sc5|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|U0|U3|Sc5|Q~q\,
	combout => \U2|U0|U3|Sc6|Q~feeder_combout\);

-- Location: FF_X41_Y4_N5
\U2|U0|U3|Sc6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U2|U0|U3|Sc6|Q~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U2|U0|UO|CURRENT_STATE.STATE_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|U3|Sc6|Q~q\);

-- Location: LCCOMB_X41_Y4_N10
\U2|U0|U3|Sc7|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|U3|Sc7|Q~feeder_combout\ = \U2|U0|U3|Sc6|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|U0|U3|Sc6|Q~q\,
	combout => \U2|U0|U3|Sc7|Q~feeder_combout\);

-- Location: FF_X41_Y4_N11
\U2|U0|U3|Sc7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U2|U0|U3|Sc7|Q~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U2|U0|UO|CURRENT_STATE.STATE_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|U3|Sc7|Q~q\);

-- Location: LCCOMB_X41_Y4_N16
\U2|U0|U3|Sc8|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|U3|Sc8|Q~feeder_combout\ = \U2|U0|U3|Sc7|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|U0|U3|Sc7|Q~q\,
	combout => \U2|U0|U3|Sc8|Q~feeder_combout\);

-- Location: FF_X41_Y4_N17
\U2|U0|U3|Sc8|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U2|U0|U3|Sc8|Q~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U2|U0|UO|CURRENT_STATE.STATE_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|U3|Sc8|Q~q\);

-- Location: LCCOMB_X40_Y4_N12
\U2|U1|CurrentState.STATE_TRAMA_RECEBIDA~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U1|CurrentState.STATE_TRAMA_RECEBIDA~0_combout\ = (!\U2|U1|CurrentState.state_bit_1~q\ & \U2|U1|CurrentState.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|CurrentState.state_bit_1~q\,
	datad => \U2|U1|CurrentState.state_bit_0~q\,
	combout => \U2|U1|CurrentState.STATE_TRAMA_RECEBIDA~0_combout\);

-- Location: LCCOMB_X44_Y38_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\);

-- Location: FF_X44_Y38_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\);

-- Location: LCCOMB_X47_Y44_N8
\U3|U0|U1|sr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|U1|sr~0_combout\ = !\U3|U0|U1|sr~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|U0|U1|sr~q\,
	combout => \U3|U0|U1|sr~0_combout\);

-- Location: LCCOMB_X44_Y47_N6
\U3|U0|UO|CURRENT_STATE.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|UO|CURRENT_STATE.state_bit_0~0_combout\ = (\U3|U0|UO|CURRENT_STATE.state_bit_1~q\ & ((!\U3|U0|UO|CURRENT_STATE.state_bit_0~q\) # 
-- (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\,
	datac => \U3|U0|UO|CURRENT_STATE.state_bit_0~q\,
	datad => \U3|U0|UO|CURRENT_STATE.state_bit_1~q\,
	combout => \U3|U0|UO|CURRENT_STATE.state_bit_0~0_combout\);

-- Location: LCCOMB_X44_Y38_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\);

-- Location: FF_X44_Y38_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\);

-- Location: LCCOMB_X44_Y47_N2
\U3|U0|U2|count_value[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|U2|count_value[0]~3_combout\ = !\U3|U0|U2|count_value\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|U0|U2|count_value\(0),
	combout => \U3|U0|U2|count_value[0]~3_combout\);

-- Location: FF_X44_Y47_N3
\U3|U0|U2|count_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U3|U0|U2|count_value[0]~3_combout\,
	clrn => \U3|U0|UO|ALT_INV_CURRENT_STATE.STATE_1~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U0|U2|count_value\(0));

-- Location: LCCOMB_X44_Y47_N0
\U3|U0|U2|count_value[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|U2|count_value[1]~2_combout\ = \U3|U0|U2|count_value\(1) $ (\U3|U0|U2|count_value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|U0|U2|count_value\(1),
	datad => \U3|U0|U2|count_value\(0),
	combout => \U3|U0|U2|count_value[1]~2_combout\);

-- Location: FF_X44_Y47_N1
\U3|U0|U2|count_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U3|U0|U2|count_value[1]~2_combout\,
	clrn => \U3|U0|UO|ALT_INV_CURRENT_STATE.STATE_1~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U0|U2|count_value\(1));

-- Location: LCCOMB_X44_Y47_N22
\U3|U0|U2|count_value[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|U2|count_value[2]~1_combout\ = \U3|U0|U2|count_value\(2) $ (((\U3|U0|U2|count_value\(1) & \U3|U0|U2|count_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|U0|U2|count_value\(1),
	datac => \U3|U0|U2|count_value\(2),
	datad => \U3|U0|U2|count_value\(0),
	combout => \U3|U0|U2|count_value[2]~1_combout\);

-- Location: FF_X44_Y47_N23
\U3|U0|U2|count_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U3|U0|U2|count_value[2]~1_combout\,
	clrn => \U3|U0|UO|ALT_INV_CURRENT_STATE.STATE_1~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U0|U2|count_value\(2));

-- Location: LCCOMB_X44_Y47_N12
\U3|U0|U2|count_value[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|U2|count_value[3]~0_combout\ = \U3|U0|U2|count_value\(3) $ (((\U3|U0|U2|count_value\(2) & (\U3|U0|U2|count_value\(1) & \U3|U0|U2|count_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U0|U2|count_value\(2),
	datab => \U3|U0|U2|count_value\(1),
	datac => \U3|U0|U2|count_value\(3),
	datad => \U3|U0|U2|count_value\(0),
	combout => \U3|U0|U2|count_value[3]~0_combout\);

-- Location: FF_X44_Y47_N13
\U3|U0|U2|count_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U3|U0|U2|count_value[3]~0_combout\,
	clrn => \U3|U0|UO|ALT_INV_CURRENT_STATE.STATE_1~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U0|U2|count_value\(3));

-- Location: LCCOMB_X44_Y47_N28
\U3|U0|Pflag_signal~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|Pflag_signal~0_combout\ = (\U3|U0|U2|count_value\(3) & (!\U3|U0|U2|count_value\(0) & (!\U3|U0|U2|count_value\(2) & !\U3|U0|U2|count_value\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U0|U2|count_value\(3),
	datab => \U3|U0|U2|count_value\(0),
	datac => \U3|U0|U2|count_value\(2),
	datad => \U3|U0|U2|count_value\(1),
	combout => \U3|U0|Pflag_signal~0_combout\);

-- Location: LCCOMB_X44_Y47_N14
\U3|U0|UO|CURRENT_STATE.state_bit_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|UO|CURRENT_STATE.state_bit_0~1_combout\ = (\U3|U0|UO|CURRENT_STATE.state_bit_0~0_combout\ & (((\U3|U0|UO|CURRENT_STATE.state_bit_0~q\ & !\U3|U0|Pflag_signal~0_combout\)))) # (!\U3|U0|UO|CURRENT_STATE.state_bit_0~0_combout\ & 
-- (((\U3|U0|UO|CURRENT_STATE.state_bit_0~q\)) # (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U0|UO|CURRENT_STATE.state_bit_0~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\,
	datac => \U3|U0|UO|CURRENT_STATE.state_bit_0~q\,
	datad => \U3|U0|Pflag_signal~0_combout\,
	combout => \U3|U0|UO|CURRENT_STATE.state_bit_0~1_combout\);

-- Location: FF_X44_Y47_N15
\U3|U0|UO|CURRENT_STATE.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U3|U0|UO|CURRENT_STATE.state_bit_0~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U0|UO|CURRENT_STATE.state_bit_0~q\);

-- Location: LCCOMB_X44_Y47_N30
\U3|U0|UO|CURRENT_STATE.STATE_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|UO|CURRENT_STATE.STATE_1~0_combout\ = (!\U3|U0|UO|CURRENT_STATE.state_bit_1~q\ & !\U3|U0|UO|CURRENT_STATE.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|U0|UO|CURRENT_STATE.state_bit_1~q\,
	datac => \U3|U0|UO|CURRENT_STATE.state_bit_0~q\,
	combout => \U3|U0|UO|CURRENT_STATE.STATE_1~0_combout\);

-- Location: CLKCTRL_G11
\U3|U0|UO|CURRENT_STATE.STATE_1~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U3|U0|UO|CURRENT_STATE.STATE_1~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U3|U0|UO|CURRENT_STATE.STATE_1~0clkctrl_outclk\);

-- Location: FF_X47_Y44_N9
\U3|U0|U1|sr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U3|U0|U1|sr~0_combout\,
	clrn => \U3|U0|UO|ALT_INV_CURRENT_STATE.STATE_1~0clkctrl_outclk\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U0|U1|sr~q\);

-- Location: LCCOMB_X44_Y47_N24
\U3|U0|UO|CURRENT_STATE.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|UO|CURRENT_STATE.state_bit_1~0_combout\ = (\U3|U0|UO|CURRENT_STATE.state_bit_1~q\ & ((\U3|U0|UO|CURRENT_STATE.state_bit_0~q\) # (!\U3|U1|CurrentState.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|CurrentState.state_bit_1~q\,
	datab => \U3|U0|UO|CURRENT_STATE.state_bit_1~q\,
	datac => \U3|U0|UO|CURRENT_STATE.state_bit_0~q\,
	combout => \U3|U0|UO|CURRENT_STATE.state_bit_1~0_combout\);

-- Location: LCCOMB_X44_Y47_N18
\U3|U0|UO|CURRENT_STATE.state_bit_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|UO|CURRENT_STATE.state_bit_1~1_combout\ = (!\U3|U0|U2|count_value\(3) & (\U3|U0|U2|count_value\(0) & (\U3|U0|U2|count_value\(2) & \U3|U0|U2|count_value\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U0|U2|count_value\(3),
	datab => \U3|U0|U2|count_value\(0),
	datac => \U3|U0|U2|count_value\(2),
	datad => \U3|U0|U2|count_value\(1),
	combout => \U3|U0|UO|CURRENT_STATE.state_bit_1~1_combout\);

-- Location: LCCOMB_X44_Y47_N4
\U3|U0|UO|CURRENT_STATE.state_bit_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|UO|CURRENT_STATE.state_bit_1~2_combout\ = (\U3|U0|UO|CURRENT_STATE.state_bit_0~q\ & ((\U3|U0|UO|CURRENT_STATE.state_bit_1~0_combout\ & (\U3|U0|U1|sr~q\)) # (!\U3|U0|UO|CURRENT_STATE.state_bit_1~0_combout\ & 
-- ((\U3|U0|UO|CURRENT_STATE.state_bit_1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U0|U1|sr~q\,
	datab => \U3|U0|UO|CURRENT_STATE.state_bit_1~0_combout\,
	datac => \U3|U0|UO|CURRENT_STATE.state_bit_0~q\,
	datad => \U3|U0|UO|CURRENT_STATE.state_bit_1~1_combout\,
	combout => \U3|U0|UO|CURRENT_STATE.state_bit_1~2_combout\);

-- Location: LCCOMB_X44_Y47_N16
\U3|U0|UO|CURRENT_STATE.state_bit_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|UO|CURRENT_STATE.state_bit_1~3_combout\ = (\U3|U0|UO|CURRENT_STATE.state_bit_1~2_combout\ & 
-- ((\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\ & 
-- ((\U3|U0|UO|CURRENT_STATE.state_bit_1~0_combout\))) # (!\auto_hub|instrumentatio
-- n_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\ & ((!\U3|U0|UO|CURRENT_STATE.state_bit_1~0_combout\) # 
-- (!\U3|U0|Pflag_signal~0_combout\))))) # (!\U3|U0|UO|CURRENT_STATE.state_bit_1~2_combout\ & (((\U3|U0|UO|CURRENT_STATE.state_bit_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U0|UO|CURRENT_STATE.state_bit_1~2_combout\,
	datab => \U3|U0|Pflag_signal~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\,
	datad => \U3|U0|UO|CURRENT_STATE.state_bit_1~0_combout\,
	combout => \U3|U0|UO|CURRENT_STATE.state_bit_1~3_combout\);

-- Location: FF_X44_Y47_N17
\U3|U0|UO|CURRENT_STATE.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U3|U0|UO|CURRENT_STATE.state_bit_1~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U0|UO|CURRENT_STATE.state_bit_1~q\);

-- Location: LCCOMB_X44_Y47_N26
\U3|U1|CurrentState.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U1|CurrentState.state_bit_1~0_combout\ = (\U3|U1|CurrentState.state_bit_1~q\ & (\U3|U0|UO|CURRENT_STATE.state_bit_1~q\ & !\U3|U0|UO|CURRENT_STATE.state_bit_0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|CurrentState.state_bit_1~q\,
	datab => \U3|U0|UO|CURRENT_STATE.state_bit_1~q\,
	datac => \U3|U0|UO|CURRENT_STATE.state_bit_0~q\,
	combout => \U3|U1|CurrentState.state_bit_1~0_combout\);

-- Location: LCCOMB_X44_Y47_N10
\U3|U1|CurrentState.state_bit_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U1|CurrentState.state_bit_1~1_combout\ = (\U3|U1|CurrentState.state_bit_1~0_combout\ & ((\U3|U1|CurrentState.state_bit_0~q\) # ((!\U3|U1|CurrentState.state_bit_1~q\)))) # (!\U3|U1|CurrentState.state_bit_1~0_combout\ & 
-- (\U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0_combout\ & ((\U3|U1|CurrentState.state_bit_0~q\) # (!\U3|U1|CurrentState.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|CurrentState.state_bit_1~0_combout\,
	datab => \U3|U1|CurrentState.state_bit_0~q\,
	datac => \U3|U1|CurrentState.state_bit_1~q\,
	datad => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0_combout\,
	combout => \U3|U1|CurrentState.state_bit_1~1_combout\);

-- Location: FF_X44_Y47_N11
\U3|U1|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U3|U1|CurrentState.state_bit_1~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U1|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X44_Y47_N8
\U3|U1|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U1|CurrentState.state_bit_0~0_combout\ = (\U3|U1|CurrentState.state_bit_1~q\ & (!\U3|U0|UO|CURRENT_STATE.state_bit_0~q\ & (\U3|U1|CurrentState.state_bit_0~q\ & \U3|U0|UO|CURRENT_STATE.state_bit_1~q\))) # (!\U3|U1|CurrentState.state_bit_1~q\ & 
-- ((\U3|U1|CurrentState.state_bit_0~q\) # ((!\U3|U0|UO|CURRENT_STATE.state_bit_0~q\ & \U3|U0|UO|CURRENT_STATE.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|CurrentState.state_bit_1~q\,
	datab => \U3|U0|UO|CURRENT_STATE.state_bit_0~q\,
	datac => \U3|U1|CurrentState.state_bit_0~q\,
	datad => \U3|U0|UO|CURRENT_STATE.state_bit_1~q\,
	combout => \U3|U1|CurrentState.state_bit_0~0_combout\);

-- Location: FF_X44_Y47_N9
\U3|U1|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U3|U1|CurrentState.state_bit_0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U1|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X44_Y47_N20
\U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0_combout\ = LCELL((\U3|U1|CurrentState.state_bit_0~q\ & !\U3|U1|CurrentState.state_bit_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|U1|CurrentState.state_bit_0~q\,
	datad => \U3|U1|CurrentState.state_bit_1~q\,
	combout => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0_combout\);

-- Location: CLKCTRL_G13
\U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\);

-- Location: LCCOMB_X74_Y44_N18
\U3|U0|U3|Sc0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|U3|Sc0|Q~feeder_combout\ = \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	combout => \U3|U0|U3|Sc0|Q~feeder_combout\);

-- Location: LCCOMB_X44_Y44_N24
\U3|U0|UO|CURRENT_STATE.STATE_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|UO|CURRENT_STATE.STATE_2~0_combout\ = (\U3|U0|UO|CURRENT_STATE.state_bit_0~q\ & !\U3|U0|UO|CURRENT_STATE.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|U0|UO|CURRENT_STATE.state_bit_0~q\,
	datad => \U3|U0|UO|CURRENT_STATE.state_bit_1~q\,
	combout => \U3|U0|UO|CURRENT_STATE.STATE_2~0_combout\);

-- Location: FF_X74_Y44_N19
\U3|U0|U3|Sc0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U3|U0|U3|Sc0|Q~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U3|U0|UO|CURRENT_STATE.STATE_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U0|U3|Sc0|Q~q\);

-- Location: LCCOMB_X74_Y44_N4
\U3|U0|U3|Sc1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|U3|Sc1|Q~feeder_combout\ = \U3|U0|U3|Sc0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc0|Q~q\,
	combout => \U3|U0|U3|Sc1|Q~feeder_combout\);

-- Location: FF_X74_Y44_N5
\U3|U0|U3|Sc1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U3|U0|U3|Sc1|Q~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U3|U0|UO|CURRENT_STATE.STATE_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U0|U3|Sc1|Q~q\);

-- Location: LCCOMB_X74_Y44_N20
\U3|U0|U3|Sc2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|U3|Sc2|Q~feeder_combout\ = \U3|U0|U3|Sc1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc1|Q~q\,
	combout => \U3|U0|U3|Sc2|Q~feeder_combout\);

-- Location: FF_X74_Y44_N21
\U3|U0|U3|Sc2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U3|U0|U3|Sc2|Q~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U3|U0|UO|CURRENT_STATE.STATE_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U0|U3|Sc2|Q~q\);

-- Location: LCCOMB_X74_Y44_N24
\U3|U0|U3|Sc3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|U3|Sc3|Q~feeder_combout\ = \U3|U0|U3|Sc2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc2|Q~q\,
	combout => \U3|U0|U3|Sc3|Q~feeder_combout\);

-- Location: FF_X74_Y44_N25
\U3|U0|U3|Sc3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U3|U0|U3|Sc3|Q~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U3|U0|UO|CURRENT_STATE.STATE_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U0|U3|Sc3|Q~q\);

-- Location: FF_X74_Y44_N9
\U3|U0|U3|Sc4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	asdata => \U3|U0|U3|Sc3|Q~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \U3|U0|UO|CURRENT_STATE.STATE_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U0|U3|Sc4|Q~q\);

-- Location: FF_X74_Y44_N15
\U3|U0|U3|Sc5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	asdata => \U3|U0|U3|Sc4|Q~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \U3|U0|UO|CURRENT_STATE.STATE_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U0|U3|Sc5|Q~q\);

-- Location: FF_X74_Y44_N31
\U3|U0|U3|Sc6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	asdata => \U3|U0|U3|Sc5|Q~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \U3|U0|UO|CURRENT_STATE.STATE_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U0|U3|Sc6|Q~q\);

-- Location: LCCOMB_X74_Y44_N22
\U4|clear_reg|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|clear_reg|Q~0_combout\ = (\U3|U0|U3|Sc5|Q~q\ & (\U3|U0|U3|Sc6|Q~q\ & \U3|U0|U3|Sc4|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|U0|U3|Sc5|Q~q\,
	datac => \U3|U0|U3|Sc6|Q~q\,
	datad => \U3|U0|U3|Sc4|Q~q\,
	combout => \U4|clear_reg|Q~0_combout\);

-- Location: LCCOMB_X74_Y45_N16
\U4|clear_reg|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|clear_reg|Q~1_combout\ = (\U4|clear_reg|Q~0_combout\ & (!\U3|U0|U3|Sc3|Q~q\)) # (!\U4|clear_reg|Q~0_combout\ & ((\U4|clear_reg|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U0|U3|Sc3|Q~q\,
	datab => \U4|clear_reg|Q~0_combout\,
	datac => \U4|clear_reg|Q~q\,
	combout => \U4|clear_reg|Q~1_combout\);

-- Location: FF_X74_Y45_N17
\U4|clear_reg|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	d => \U4|clear_reg|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|clear_reg|Q~q\);

-- Location: LCCOMB_X74_Y47_N8
\U4|circuit_gen:0:in_reg|u0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:in_reg|u0|Q~0_combout\ = !\U3|U0|U3|Sc3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc3|Q~q\,
	combout => \U4|circuit_gen:0:in_reg|u0|Q~0_combout\);

-- Location: LCCOMB_X74_Y44_N6
\U4|decoder|dout[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|decoder|dout\(0) = (!\U3|U0|U3|Sc5|Q~q\ & (!\U3|U0|U3|Sc6|Q~q\ & !\U3|U0|U3|Sc4|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|U0|U3|Sc5|Q~q\,
	datac => \U3|U0|U3|Sc6|Q~q\,
	datad => \U3|U0|U3|Sc4|Q~q\,
	combout => \U4|decoder|dout\(0));

-- Location: FF_X74_Y47_N9
\U4|circuit_gen:0:in_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	d => \U4|circuit_gen:0:in_reg|u0|Q~0_combout\,
	ena => \U4|decoder|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:0:in_reg|u0|Q~q\);

-- Location: LCCOMB_X74_Y44_N26
\U4|decoder|dout[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|decoder|dout[6]~0_combout\ = (\U3|U0|U3|Sc5|Q~q\ & (!\U3|U0|U3|Sc6|Q~q\ & \U3|U0|U3|Sc4|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|U0|U3|Sc5|Q~q\,
	datac => \U3|U0|U3|Sc6|Q~q\,
	datad => \U3|U0|U3|Sc4|Q~q\,
	combout => \U4|decoder|dout[6]~0_combout\);

-- Location: FF_X74_Y47_N13
\U4|circuit_gen:0:out_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:0:in_reg|u0|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:0:out_reg|u0|Q~q\);

-- Location: LCCOMB_X74_Y45_N10
\U4|circuit_gen:0:in_reg|u2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:in_reg|u2|Q~0_combout\ = !\U3|U0|U3|Sc1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|U0|U3|Sc1|Q~q\,
	combout => \U4|circuit_gen:0:in_reg|u2|Q~0_combout\);

-- Location: FF_X74_Y45_N11
\U4|circuit_gen:0:in_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	d => \U4|circuit_gen:0:in_reg|u2|Q~0_combout\,
	ena => \U4|decoder|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:0:in_reg|u2|Q~q\);

-- Location: FF_X74_Y47_N19
\U4|circuit_gen:0:out_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:0:in_reg|u2|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:0:out_reg|u2|Q~q\);

-- Location: LCCOMB_X74_Y47_N4
\U4|circuit_gen:0:in_reg|u3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:in_reg|u3|Q~0_combout\ = !\U3|U0|U3|Sc0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|U0|U3|Sc0|Q~q\,
	combout => \U4|circuit_gen:0:in_reg|u3|Q~0_combout\);

-- Location: FF_X74_Y47_N5
\U4|circuit_gen:0:in_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	d => \U4|circuit_gen:0:in_reg|u3|Q~0_combout\,
	ena => \U4|decoder|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:0:in_reg|u3|Q~q\);

-- Location: FF_X74_Y47_N23
\U4|circuit_gen:0:out_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:0:in_reg|u3|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:0:out_reg|u3|Q~q\);

-- Location: LCCOMB_X74_Y45_N20
\U4|circuit_gen:0:in_reg|u1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:in_reg|u1|Q~0_combout\ = !\U3|U0|U3|Sc2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|U0|U3|Sc2|Q~q\,
	combout => \U4|circuit_gen:0:in_reg|u1|Q~0_combout\);

-- Location: FF_X74_Y45_N21
\U4|circuit_gen:0:in_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	d => \U4|circuit_gen:0:in_reg|u1|Q~0_combout\,
	ena => \U4|decoder|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:0:in_reg|u1|Q~q\);

-- Location: FF_X74_Y47_N27
\U4|circuit_gen:0:out_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:0:in_reg|u1|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:0:out_reg|u1|Q~q\);

-- Location: LCCOMB_X74_Y47_N10
\U4|circuit_gen:0:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[0]~0_combout\ = (\U4|circuit_gen:0:out_reg|u3|Q~q\ & (\U4|circuit_gen:0:out_reg|u1|Q~q\ & (\U4|circuit_gen:0:out_reg|u0|Q~q\ $ (\U4|circuit_gen:0:out_reg|u2|Q~q\)))) # (!\U4|circuit_gen:0:out_reg|u3|Q~q\ & 
-- (((!\U4|circuit_gen:0:out_reg|u2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:0:out_reg|u0|Q~q\,
	datab => \U4|circuit_gen:0:out_reg|u2|Q~q\,
	datac => \U4|circuit_gen:0:out_reg|u3|Q~q\,
	datad => \U4|circuit_gen:0:out_reg|u1|Q~q\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X74_Y47_N2
\U4|circuit_gen:0:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[0]~1_combout\ = (\U4|circuit_gen:0:hex_digit|Ndout[0]~0_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|clear_reg|Q~q\,
	datad => \U4|circuit_gen:0:hex_digit|Ndout[0]~0_combout\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X74_Y47_N28
\U4|circuit_gen:0:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[1]~2_combout\ = (\U4|circuit_gen:0:out_reg|u0|Q~q\ & (!\U4|circuit_gen:0:out_reg|u2|Q~q\ & ((!\U4|circuit_gen:0:out_reg|u1|Q~q\) # (!\U4|circuit_gen:0:out_reg|u3|Q~q\)))) # (!\U4|circuit_gen:0:out_reg|u0|Q~q\ & 
-- ((\U4|circuit_gen:0:out_reg|u1|Q~q\ & (!\U4|circuit_gen:0:out_reg|u2|Q~q\)) # (!\U4|circuit_gen:0:out_reg|u1|Q~q\ & ((!\U4|circuit_gen:0:out_reg|u3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:0:out_reg|u0|Q~q\,
	datab => \U4|circuit_gen:0:out_reg|u2|Q~q\,
	datac => \U4|circuit_gen:0:out_reg|u3|Q~q\,
	datad => \U4|circuit_gen:0:out_reg|u1|Q~q\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X74_Y47_N14
\U4|circuit_gen:0:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[1]~3_combout\ = (\U4|circuit_gen:0:hex_digit|Ndout[1]~2_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|clear_reg|Q~q\,
	datad => \U4|circuit_gen:0:hex_digit|Ndout[1]~2_combout\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X74_Y47_N0
\U4|circuit_gen:0:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[2]~4_combout\ = (\U4|circuit_gen:0:out_reg|u1|Q~q\ & (((\U4|circuit_gen:0:out_reg|u2|Q~q\) # (\U4|circuit_gen:0:out_reg|u3|Q~q\)))) # (!\U4|circuit_gen:0:out_reg|u1|Q~q\ & ((\U4|circuit_gen:0:out_reg|u0|Q~q\ & 
-- (!\U4|circuit_gen:0:out_reg|u2|Q~q\)) # (!\U4|circuit_gen:0:out_reg|u0|Q~q\ & ((\U4|circuit_gen:0:out_reg|u3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:0:out_reg|u0|Q~q\,
	datab => \U4|circuit_gen:0:out_reg|u2|Q~q\,
	datac => \U4|circuit_gen:0:out_reg|u3|Q~q\,
	datad => \U4|circuit_gen:0:out_reg|u1|Q~q\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X74_Y47_N6
\U4|circuit_gen:0:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[2]~5_combout\ = (!\U4|circuit_gen:0:hex_digit|Ndout[2]~4_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|clear_reg|Q~q\,
	datad => \U4|circuit_gen:0:hex_digit|Ndout[2]~4_combout\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X74_Y47_N22
\U4|circuit_gen:0:hex_digit|Ndout[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[3]~6_combout\ = (\U4|circuit_gen:0:out_reg|u2|Q~q\ & ((\U4|circuit_gen:0:out_reg|u1|Q~q\ & (!\U4|circuit_gen:0:out_reg|u0|Q~q\)) # (!\U4|circuit_gen:0:out_reg|u1|Q~q\ & ((!\U4|circuit_gen:0:out_reg|u3|Q~q\))))) # 
-- (!\U4|circuit_gen:0:out_reg|u2|Q~q\ & (\U4|circuit_gen:0:out_reg|u0|Q~q\ $ (((!\U4|circuit_gen:0:out_reg|u1|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:0:out_reg|u0|Q~q\,
	datab => \U4|circuit_gen:0:out_reg|u2|Q~q\,
	datac => \U4|circuit_gen:0:out_reg|u3|Q~q\,
	datad => \U4|circuit_gen:0:out_reg|u1|Q~q\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[3]~6_combout\);

-- Location: LCCOMB_X74_Y47_N16
\U4|circuit_gen:0:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[3]~7_combout\ = (\U4|circuit_gen:0:hex_digit|Ndout[3]~6_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:0:hex_digit|Ndout[3]~6_combout\,
	datac => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X74_Y47_N18
\U4|circuit_gen:0:hex_digit|Ndout[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[4]~8_combout\ = (\U4|circuit_gen:0:out_reg|u1|Q~q\ & ((\U4|circuit_gen:0:out_reg|u2|Q~q\ & ((!\U4|circuit_gen:0:out_reg|u0|Q~q\))) # (!\U4|circuit_gen:0:out_reg|u2|Q~q\ & (\U4|circuit_gen:0:out_reg|u3|Q~q\)))) # 
-- (!\U4|circuit_gen:0:out_reg|u1|Q~q\ & (((!\U4|circuit_gen:0:out_reg|u0|Q~q\)) # (!\U4|circuit_gen:0:out_reg|u3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:0:out_reg|u3|Q~q\,
	datab => \U4|circuit_gen:0:out_reg|u0|Q~q\,
	datac => \U4|circuit_gen:0:out_reg|u2|Q~q\,
	datad => \U4|circuit_gen:0:out_reg|u1|Q~q\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[4]~8_combout\);

-- Location: LCCOMB_X74_Y47_N20
\U4|circuit_gen:0:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[4]~9_combout\ = (\U4|circuit_gen:0:hex_digit|Ndout[4]~8_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:0:hex_digit|Ndout[4]~8_combout\,
	datac => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X74_Y47_N26
\U4|circuit_gen:0:hex_digit|Ndout[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[5]~10_combout\ = (\U4|circuit_gen:0:out_reg|u0|Q~q\ & (!\U4|circuit_gen:0:out_reg|u1|Q~q\ & ((\U4|circuit_gen:0:out_reg|u2|Q~q\) # (!\U4|circuit_gen:0:out_reg|u3|Q~q\)))) # (!\U4|circuit_gen:0:out_reg|u0|Q~q\ & 
-- ((\U4|circuit_gen:0:out_reg|u3|Q~q\ & ((\U4|circuit_gen:0:out_reg|u2|Q~q\) # (!\U4|circuit_gen:0:out_reg|u1|Q~q\))) # (!\U4|circuit_gen:0:out_reg|u3|Q~q\ & (!\U4|circuit_gen:0:out_reg|u2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:0:out_reg|u3|Q~q\,
	datab => \U4|circuit_gen:0:out_reg|u2|Q~q\,
	datac => \U4|circuit_gen:0:out_reg|u1|Q~q\,
	datad => \U4|circuit_gen:0:out_reg|u0|Q~q\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[5]~10_combout\);

-- Location: LCCOMB_X74_Y47_N30
\U4|circuit_gen:0:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[5]~11_combout\ = (\U4|circuit_gen:0:hex_digit|Ndout[5]~10_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|clear_reg|Q~q\,
	datad => \U4|circuit_gen:0:hex_digit|Ndout[5]~10_combout\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X74_Y47_N12
\U4|circuit_gen:0:hex_digit|Ndout[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[6]~12_combout\ = (\U4|circuit_gen:0:out_reg|u2|Q~q\ & (\U4|circuit_gen:0:out_reg|u3|Q~q\ $ (((\U4|circuit_gen:0:out_reg|u1|Q~q\))))) # (!\U4|circuit_gen:0:out_reg|u2|Q~q\ & (\U4|circuit_gen:0:out_reg|u3|Q~q\ & 
-- ((\U4|circuit_gen:0:out_reg|u0|Q~q\) # (\U4|circuit_gen:0:out_reg|u1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:0:out_reg|u3|Q~q\,
	datab => \U4|circuit_gen:0:out_reg|u2|Q~q\,
	datac => \U4|circuit_gen:0:out_reg|u0|Q~q\,
	datad => \U4|circuit_gen:0:out_reg|u1|Q~q\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[6]~12_combout\);

-- Location: LCCOMB_X74_Y47_N24
\U4|circuit_gen:0:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[6]~13_combout\ = (!\U4|circuit_gen:0:hex_digit|Ndout[6]~12_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|clear_reg|Q~q\,
	datad => \U4|circuit_gen:0:hex_digit|Ndout[6]~12_combout\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X74_Y44_N2
\U4|circuit_gen:1:in_reg|u1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:in_reg|u1|Q~0_combout\ = !\U3|U0|U3|Sc2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc2|Q~q\,
	combout => \U4|circuit_gen:1:in_reg|u1|Q~0_combout\);

-- Location: LCCOMB_X74_Y44_N12
\U4|decoder|dout[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|decoder|dout[1]~1_combout\ = (!\U3|U0|U3|Sc5|Q~q\ & (\U3|U0|U3|Sc6|Q~q\ & !\U3|U0|U3|Sc4|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|U0|U3|Sc5|Q~q\,
	datac => \U3|U0|U3|Sc6|Q~q\,
	datad => \U3|U0|U3|Sc4|Q~q\,
	combout => \U4|decoder|dout[1]~1_combout\);

-- Location: FF_X74_Y44_N3
\U4|circuit_gen:1:in_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	d => \U4|circuit_gen:1:in_reg|u1|Q~0_combout\,
	ena => \U4|decoder|dout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:1:in_reg|u1|Q~q\);

-- Location: FF_X71_Y47_N21
\U4|circuit_gen:1:out_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:1:in_reg|u1|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:1:out_reg|u1|Q~q\);

-- Location: LCCOMB_X74_Y44_N16
\U4|circuit_gen:1:in_reg|u3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:in_reg|u3|Q~0_combout\ = !\U3|U0|U3|Sc0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc0|Q~q\,
	combout => \U4|circuit_gen:1:in_reg|u3|Q~0_combout\);

-- Location: FF_X74_Y44_N17
\U4|circuit_gen:1:in_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	d => \U4|circuit_gen:1:in_reg|u3|Q~0_combout\,
	ena => \U4|decoder|dout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:1:in_reg|u3|Q~q\);

-- Location: FF_X71_Y47_N25
\U4|circuit_gen:1:out_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:1:in_reg|u3|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:1:out_reg|u3|Q~q\);

-- Location: LCCOMB_X74_Y46_N0
\U4|circuit_gen:1:in_reg|u0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:in_reg|u0|Q~0_combout\ = !\U3|U0|U3|Sc3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|U0|U3|Sc3|Q~q\,
	combout => \U4|circuit_gen:1:in_reg|u0|Q~0_combout\);

-- Location: FF_X74_Y46_N1
\U4|circuit_gen:1:in_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	d => \U4|circuit_gen:1:in_reg|u0|Q~0_combout\,
	ena => \U4|decoder|dout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:1:in_reg|u0|Q~q\);

-- Location: FF_X71_Y47_N31
\U4|circuit_gen:1:out_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:1:in_reg|u0|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:1:out_reg|u0|Q~q\);

-- Location: LCCOMB_X74_Y44_N10
\U4|circuit_gen:1:in_reg|u2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:in_reg|u2|Q~0_combout\ = !\U3|U0|U3|Sc1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc1|Q~q\,
	combout => \U4|circuit_gen:1:in_reg|u2|Q~0_combout\);

-- Location: FF_X74_Y44_N11
\U4|circuit_gen:1:in_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	d => \U4|circuit_gen:1:in_reg|u2|Q~0_combout\,
	ena => \U4|decoder|dout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:1:in_reg|u2|Q~q\);

-- Location: FF_X71_Y47_N11
\U4|circuit_gen:1:out_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:1:in_reg|u2|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:1:out_reg|u2|Q~q\);

-- Location: LCCOMB_X71_Y47_N0
\U4|circuit_gen:1:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[0]~0_combout\ = (\U4|circuit_gen:1:out_reg|u3|Q~q\ & (\U4|circuit_gen:1:out_reg|u1|Q~q\ & (\U4|circuit_gen:1:out_reg|u0|Q~q\ $ (\U4|circuit_gen:1:out_reg|u2|Q~q\)))) # (!\U4|circuit_gen:1:out_reg|u3|Q~q\ & 
-- (((!\U4|circuit_gen:1:out_reg|u2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:1:out_reg|u1|Q~q\,
	datab => \U4|circuit_gen:1:out_reg|u3|Q~q\,
	datac => \U4|circuit_gen:1:out_reg|u0|Q~q\,
	datad => \U4|circuit_gen:1:out_reg|u2|Q~q\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X71_Y47_N18
\U4|circuit_gen:1:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[0]~1_combout\ = (\U4|circuit_gen:1:hex_digit|Ndout[0]~0_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|circuit_gen:1:hex_digit|Ndout[0]~0_combout\,
	datad => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X71_Y47_N28
\U4|circuit_gen:1:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[1]~2_combout\ = (\U4|circuit_gen:1:out_reg|u1|Q~q\ & (!\U4|circuit_gen:1:out_reg|u2|Q~q\ & ((!\U4|circuit_gen:1:out_reg|u0|Q~q\) # (!\U4|circuit_gen:1:out_reg|u3|Q~q\)))) # (!\U4|circuit_gen:1:out_reg|u1|Q~q\ & 
-- ((\U4|circuit_gen:1:out_reg|u0|Q~q\ & ((!\U4|circuit_gen:1:out_reg|u2|Q~q\))) # (!\U4|circuit_gen:1:out_reg|u0|Q~q\ & (!\U4|circuit_gen:1:out_reg|u3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:1:out_reg|u1|Q~q\,
	datab => \U4|circuit_gen:1:out_reg|u3|Q~q\,
	datac => \U4|circuit_gen:1:out_reg|u0|Q~q\,
	datad => \U4|circuit_gen:1:out_reg|u2|Q~q\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X71_Y47_N22
\U4|circuit_gen:1:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[1]~3_combout\ = (\U4|circuit_gen:1:hex_digit|Ndout[1]~2_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|circuit_gen:1:hex_digit|Ndout[1]~2_combout\,
	datad => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X71_Y47_N8
\U4|circuit_gen:1:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[2]~4_combout\ = (\U4|circuit_gen:1:out_reg|u1|Q~q\ & ((\U4|circuit_gen:1:out_reg|u3|Q~q\) # ((\U4|circuit_gen:1:out_reg|u2|Q~q\)))) # (!\U4|circuit_gen:1:out_reg|u1|Q~q\ & ((\U4|circuit_gen:1:out_reg|u0|Q~q\ & 
-- ((!\U4|circuit_gen:1:out_reg|u2|Q~q\))) # (!\U4|circuit_gen:1:out_reg|u0|Q~q\ & (\U4|circuit_gen:1:out_reg|u3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:1:out_reg|u1|Q~q\,
	datab => \U4|circuit_gen:1:out_reg|u3|Q~q\,
	datac => \U4|circuit_gen:1:out_reg|u0|Q~q\,
	datad => \U4|circuit_gen:1:out_reg|u2|Q~q\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X71_Y47_N2
\U4|circuit_gen:1:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[2]~5_combout\ = (!\U4|clear_reg|Q~q\) # (!\U4|circuit_gen:1:hex_digit|Ndout[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|circuit_gen:1:hex_digit|Ndout[2]~4_combout\,
	datad => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X71_Y47_N24
\U4|circuit_gen:1:hex_digit|Ndout[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[3]~6_combout\ = (\U4|circuit_gen:1:out_reg|u2|Q~q\ & ((\U4|circuit_gen:1:out_reg|u1|Q~q\ & (!\U4|circuit_gen:1:out_reg|u0|Q~q\)) # (!\U4|circuit_gen:1:out_reg|u1|Q~q\ & ((!\U4|circuit_gen:1:out_reg|u3|Q~q\))))) # 
-- (!\U4|circuit_gen:1:out_reg|u2|Q~q\ & (\U4|circuit_gen:1:out_reg|u0|Q~q\ $ (((!\U4|circuit_gen:1:out_reg|u1|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:1:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:1:out_reg|u0|Q~q\,
	datac => \U4|circuit_gen:1:out_reg|u3|Q~q\,
	datad => \U4|circuit_gen:1:out_reg|u1|Q~q\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[3]~6_combout\);

-- Location: LCCOMB_X71_Y47_N12
\U4|circuit_gen:1:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[3]~7_combout\ = (\U4|circuit_gen:1:hex_digit|Ndout[3]~6_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|circuit_gen:1:hex_digit|Ndout[3]~6_combout\,
	datad => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X71_Y47_N10
\U4|circuit_gen:1:hex_digit|Ndout[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[4]~8_combout\ = (\U4|circuit_gen:1:out_reg|u1|Q~q\ & ((\U4|circuit_gen:1:out_reg|u2|Q~q\ & (!\U4|circuit_gen:1:out_reg|u0|Q~q\)) # (!\U4|circuit_gen:1:out_reg|u2|Q~q\ & ((\U4|circuit_gen:1:out_reg|u3|Q~q\))))) # 
-- (!\U4|circuit_gen:1:out_reg|u1|Q~q\ & (((!\U4|circuit_gen:1:out_reg|u3|Q~q\)) # (!\U4|circuit_gen:1:out_reg|u0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:1:out_reg|u0|Q~q\,
	datab => \U4|circuit_gen:1:out_reg|u3|Q~q\,
	datac => \U4|circuit_gen:1:out_reg|u2|Q~q\,
	datad => \U4|circuit_gen:1:out_reg|u1|Q~q\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[4]~8_combout\);

-- Location: LCCOMB_X71_Y47_N14
\U4|circuit_gen:1:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[4]~9_combout\ = (\U4|circuit_gen:1:hex_digit|Ndout[4]~8_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|circuit_gen:1:hex_digit|Ndout[4]~8_combout\,
	datad => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X71_Y47_N20
\U4|circuit_gen:1:hex_digit|Ndout[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[5]~10_combout\ = (\U4|circuit_gen:1:out_reg|u0|Q~q\ & (!\U4|circuit_gen:1:out_reg|u1|Q~q\ & ((\U4|circuit_gen:1:out_reg|u2|Q~q\) # (!\U4|circuit_gen:1:out_reg|u3|Q~q\)))) # (!\U4|circuit_gen:1:out_reg|u0|Q~q\ & 
-- ((\U4|circuit_gen:1:out_reg|u2|Q~q\ & (\U4|circuit_gen:1:out_reg|u3|Q~q\)) # (!\U4|circuit_gen:1:out_reg|u2|Q~q\ & ((!\U4|circuit_gen:1:out_reg|u1|Q~q\) # (!\U4|circuit_gen:1:out_reg|u3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:1:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:1:out_reg|u3|Q~q\,
	datac => \U4|circuit_gen:1:out_reg|u1|Q~q\,
	datad => \U4|circuit_gen:1:out_reg|u0|Q~q\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[5]~10_combout\);

-- Location: LCCOMB_X71_Y47_N16
\U4|circuit_gen:1:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[5]~11_combout\ = (\U4|circuit_gen:1:hex_digit|Ndout[5]~10_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|circuit_gen:1:hex_digit|Ndout[5]~10_combout\,
	datad => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X71_Y47_N30
\U4|circuit_gen:1:hex_digit|Ndout[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[6]~12_combout\ = (\U4|circuit_gen:1:out_reg|u2|Q~q\ & (\U4|circuit_gen:1:out_reg|u3|Q~q\ $ (((\U4|circuit_gen:1:out_reg|u1|Q~q\))))) # (!\U4|circuit_gen:1:out_reg|u2|Q~q\ & (\U4|circuit_gen:1:out_reg|u3|Q~q\ & 
-- ((\U4|circuit_gen:1:out_reg|u0|Q~q\) # (\U4|circuit_gen:1:out_reg|u1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:1:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:1:out_reg|u3|Q~q\,
	datac => \U4|circuit_gen:1:out_reg|u0|Q~q\,
	datad => \U4|circuit_gen:1:out_reg|u1|Q~q\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[6]~12_combout\);

-- Location: LCCOMB_X71_Y47_N26
\U4|circuit_gen:1:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[6]~13_combout\ = (!\U4|clear_reg|Q~q\) # (!\U4|circuit_gen:1:hex_digit|Ndout[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|circuit_gen:1:hex_digit|Ndout[6]~12_combout\,
	datad => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X74_Y43_N22
\U4|circuit_gen:2:in_reg|u3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:in_reg|u3|Q~0_combout\ = !\U3|U0|U3|Sc0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|U0|U3|Sc0|Q~q\,
	combout => \U4|circuit_gen:2:in_reg|u3|Q~0_combout\);

-- Location: LCCOMB_X74_Y44_N28
\U4|decoder|dout[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|decoder|dout[2]~2_combout\ = (\U3|U0|U3|Sc5|Q~q\ & (!\U3|U0|U3|Sc6|Q~q\ & !\U3|U0|U3|Sc4|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|U0|U3|Sc5|Q~q\,
	datac => \U3|U0|U3|Sc6|Q~q\,
	datad => \U3|U0|U3|Sc4|Q~q\,
	combout => \U4|decoder|dout[2]~2_combout\);

-- Location: FF_X74_Y43_N23
\U4|circuit_gen:2:in_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	d => \U4|circuit_gen:2:in_reg|u3|Q~0_combout\,
	ena => \U4|decoder|dout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:2:in_reg|u3|Q~q\);

-- Location: FF_X74_Y43_N13
\U4|circuit_gen:2:out_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:2:in_reg|u3|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:2:out_reg|u3|Q~q\);

-- Location: LCCOMB_X74_Y43_N8
\U4|circuit_gen:2:in_reg|u1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:in_reg|u1|Q~0_combout\ = !\U3|U0|U3|Sc2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc2|Q~q\,
	combout => \U4|circuit_gen:2:in_reg|u1|Q~0_combout\);

-- Location: FF_X74_Y43_N9
\U4|circuit_gen:2:in_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	d => \U4|circuit_gen:2:in_reg|u1|Q~0_combout\,
	ena => \U4|decoder|dout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:2:in_reg|u1|Q~q\);

-- Location: FF_X74_Y43_N19
\U4|circuit_gen:2:out_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:2:in_reg|u1|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:2:out_reg|u1|Q~q\);

-- Location: LCCOMB_X74_Y43_N14
\U4|circuit_gen:2:in_reg|u0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:in_reg|u0|Q~0_combout\ = !\U3|U0|U3|Sc3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc3|Q~q\,
	combout => \U4|circuit_gen:2:in_reg|u0|Q~0_combout\);

-- Location: FF_X74_Y43_N15
\U4|circuit_gen:2:in_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	d => \U4|circuit_gen:2:in_reg|u0|Q~0_combout\,
	ena => \U4|decoder|dout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:2:in_reg|u0|Q~q\);

-- Location: FF_X74_Y43_N3
\U4|circuit_gen:2:out_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:2:in_reg|u0|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:2:out_reg|u0|Q~q\);

-- Location: LCCOMB_X74_Y43_N4
\U4|circuit_gen:2:in_reg|u2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:in_reg|u2|Q~0_combout\ = !\U3|U0|U3|Sc1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc1|Q~q\,
	combout => \U4|circuit_gen:2:in_reg|u2|Q~0_combout\);

-- Location: FF_X74_Y43_N5
\U4|circuit_gen:2:in_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	d => \U4|circuit_gen:2:in_reg|u2|Q~0_combout\,
	ena => \U4|decoder|dout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:2:in_reg|u2|Q~q\);

-- Location: FF_X74_Y43_N31
\U4|circuit_gen:2:out_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:2:in_reg|u2|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:2:out_reg|u2|Q~q\);

-- Location: LCCOMB_X74_Y43_N28
\U4|circuit_gen:2:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[0]~0_combout\ = (\U4|circuit_gen:2:out_reg|u3|Q~q\ & (\U4|circuit_gen:2:out_reg|u1|Q~q\ & (\U4|circuit_gen:2:out_reg|u0|Q~q\ $ (\U4|circuit_gen:2:out_reg|u2|Q~q\)))) # (!\U4|circuit_gen:2:out_reg|u3|Q~q\ & 
-- (((!\U4|circuit_gen:2:out_reg|u2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:2:out_reg|u3|Q~q\,
	datab => \U4|circuit_gen:2:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:2:out_reg|u0|Q~q\,
	datad => \U4|circuit_gen:2:out_reg|u2|Q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X74_Y43_N0
\U4|circuit_gen:2:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[0]~1_combout\ = (\U4|circuit_gen:2:hex_digit|Ndout[0]~0_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|clear_reg|Q~q\,
	datad => \U4|circuit_gen:2:hex_digit|Ndout[0]~0_combout\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X74_Y43_N6
\U4|circuit_gen:2:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[1]~2_combout\ = (\U4|circuit_gen:2:out_reg|u3|Q~q\ & (!\U4|circuit_gen:2:out_reg|u2|Q~q\ & (\U4|circuit_gen:2:out_reg|u1|Q~q\ $ (\U4|circuit_gen:2:out_reg|u0|Q~q\)))) # (!\U4|circuit_gen:2:out_reg|u3|Q~q\ & 
-- (((!\U4|circuit_gen:2:out_reg|u1|Q~q\ & !\U4|circuit_gen:2:out_reg|u0|Q~q\)) # (!\U4|circuit_gen:2:out_reg|u2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:2:out_reg|u3|Q~q\,
	datab => \U4|circuit_gen:2:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:2:out_reg|u0|Q~q\,
	datad => \U4|circuit_gen:2:out_reg|u2|Q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X74_Y43_N26
\U4|circuit_gen:2:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[1]~3_combout\ = (\U4|circuit_gen:2:hex_digit|Ndout[1]~2_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|clear_reg|Q~q\,
	datad => \U4|circuit_gen:2:hex_digit|Ndout[1]~2_combout\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X74_Y43_N10
\U4|circuit_gen:2:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[2]~4_combout\ = (\U4|circuit_gen:2:out_reg|u1|Q~q\ & ((\U4|circuit_gen:2:out_reg|u3|Q~q\) # ((\U4|circuit_gen:2:out_reg|u2|Q~q\)))) # (!\U4|circuit_gen:2:out_reg|u1|Q~q\ & ((\U4|circuit_gen:2:out_reg|u0|Q~q\ & 
-- ((!\U4|circuit_gen:2:out_reg|u2|Q~q\))) # (!\U4|circuit_gen:2:out_reg|u0|Q~q\ & (\U4|circuit_gen:2:out_reg|u3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:2:out_reg|u3|Q~q\,
	datab => \U4|circuit_gen:2:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:2:out_reg|u0|Q~q\,
	datad => \U4|circuit_gen:2:out_reg|u2|Q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X71_Y47_N4
\U4|circuit_gen:2:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[2]~5_combout\ = (!\U4|clear_reg|Q~q\) # (!\U4|circuit_gen:2:hex_digit|Ndout[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:2:hex_digit|Ndout[2]~4_combout\,
	datad => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X74_Y43_N12
\U4|circuit_gen:2:hex_digit|Ndout[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[3]~6_combout\ = (\U4|circuit_gen:2:out_reg|u2|Q~q\ & ((\U4|circuit_gen:2:out_reg|u1|Q~q\ & (!\U4|circuit_gen:2:out_reg|u0|Q~q\)) # (!\U4|circuit_gen:2:out_reg|u1|Q~q\ & ((!\U4|circuit_gen:2:out_reg|u3|Q~q\))))) # 
-- (!\U4|circuit_gen:2:out_reg|u2|Q~q\ & (\U4|circuit_gen:2:out_reg|u0|Q~q\ $ (((!\U4|circuit_gen:2:out_reg|u1|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:2:out_reg|u0|Q~q\,
	datab => \U4|circuit_gen:2:out_reg|u2|Q~q\,
	datac => \U4|circuit_gen:2:out_reg|u3|Q~q\,
	datad => \U4|circuit_gen:2:out_reg|u1|Q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[3]~6_combout\);

-- Location: LCCOMB_X74_Y43_N16
\U4|circuit_gen:2:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[3]~7_combout\ = (\U4|circuit_gen:2:hex_digit|Ndout[3]~6_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|circuit_gen:2:hex_digit|Ndout[3]~6_combout\,
	datac => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X74_Y43_N30
\U4|circuit_gen:2:hex_digit|Ndout[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[4]~8_combout\ = (\U4|circuit_gen:2:out_reg|u1|Q~q\ & ((\U4|circuit_gen:2:out_reg|u2|Q~q\ & ((!\U4|circuit_gen:2:out_reg|u0|Q~q\))) # (!\U4|circuit_gen:2:out_reg|u2|Q~q\ & (\U4|circuit_gen:2:out_reg|u3|Q~q\)))) # 
-- (!\U4|circuit_gen:2:out_reg|u1|Q~q\ & (((!\U4|circuit_gen:2:out_reg|u0|Q~q\)) # (!\U4|circuit_gen:2:out_reg|u3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:2:out_reg|u3|Q~q\,
	datab => \U4|circuit_gen:2:out_reg|u0|Q~q\,
	datac => \U4|circuit_gen:2:out_reg|u2|Q~q\,
	datad => \U4|circuit_gen:2:out_reg|u1|Q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[4]~8_combout\);

-- Location: LCCOMB_X74_Y43_N20
\U4|circuit_gen:2:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[4]~9_combout\ = (\U4|circuit_gen:2:hex_digit|Ndout[4]~8_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:2:hex_digit|Ndout[4]~8_combout\,
	datac => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X74_Y43_N18
\U4|circuit_gen:2:hex_digit|Ndout[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[5]~10_combout\ = (\U4|circuit_gen:2:out_reg|u0|Q~q\ & (!\U4|circuit_gen:2:out_reg|u1|Q~q\ & ((\U4|circuit_gen:2:out_reg|u2|Q~q\) # (!\U4|circuit_gen:2:out_reg|u3|Q~q\)))) # (!\U4|circuit_gen:2:out_reg|u0|Q~q\ & 
-- ((\U4|circuit_gen:2:out_reg|u3|Q~q\ & ((\U4|circuit_gen:2:out_reg|u2|Q~q\) # (!\U4|circuit_gen:2:out_reg|u1|Q~q\))) # (!\U4|circuit_gen:2:out_reg|u3|Q~q\ & (!\U4|circuit_gen:2:out_reg|u2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:2:out_reg|u3|Q~q\,
	datab => \U4|circuit_gen:2:out_reg|u2|Q~q\,
	datac => \U4|circuit_gen:2:out_reg|u1|Q~q\,
	datad => \U4|circuit_gen:2:out_reg|u0|Q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[5]~10_combout\);

-- Location: LCCOMB_X74_Y38_N24
\U4|circuit_gen:2:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[5]~11_combout\ = (\U4|circuit_gen:2:hex_digit|Ndout[5]~10_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|circuit_gen:2:hex_digit|Ndout[5]~10_combout\,
	datad => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X74_Y43_N2
\U4|circuit_gen:2:hex_digit|Ndout[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[6]~12_combout\ = (\U4|circuit_gen:2:out_reg|u2|Q~q\ & (\U4|circuit_gen:2:out_reg|u3|Q~q\ $ (((\U4|circuit_gen:2:out_reg|u1|Q~q\))))) # (!\U4|circuit_gen:2:out_reg|u2|Q~q\ & (\U4|circuit_gen:2:out_reg|u3|Q~q\ & 
-- ((\U4|circuit_gen:2:out_reg|u0|Q~q\) # (\U4|circuit_gen:2:out_reg|u1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:2:out_reg|u3|Q~q\,
	datab => \U4|circuit_gen:2:out_reg|u2|Q~q\,
	datac => \U4|circuit_gen:2:out_reg|u0|Q~q\,
	datad => \U4|circuit_gen:2:out_reg|u1|Q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[6]~12_combout\);

-- Location: LCCOMB_X74_Y43_N24
\U4|circuit_gen:2:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[6]~13_combout\ = (!\U4|circuit_gen:2:hex_digit|Ndout[6]~12_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|clear_reg|Q~q\,
	datad => \U4|circuit_gen:2:hex_digit|Ndout[6]~12_combout\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X74_Y41_N26
\U4|circuit_gen:3:in_reg|u2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:in_reg|u2|Q~0_combout\ = !\U3|U0|U3|Sc1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc1|Q~q\,
	combout => \U4|circuit_gen:3:in_reg|u2|Q~0_combout\);

-- Location: LCCOMB_X74_Y44_N8
\U4|decoder|dout[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|decoder|dout[3]~3_combout\ = (\U3|U0|U3|Sc6|Q~q\ & (\U3|U0|U3|Sc5|Q~q\ & !\U3|U0|U3|Sc4|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U0|U3|Sc6|Q~q\,
	datab => \U3|U0|U3|Sc5|Q~q\,
	datac => \U3|U0|U3|Sc4|Q~q\,
	combout => \U4|decoder|dout[3]~3_combout\);

-- Location: FF_X74_Y41_N27
\U4|circuit_gen:3:in_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	d => \U4|circuit_gen:3:in_reg|u2|Q~0_combout\,
	ena => \U4|decoder|dout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:3:in_reg|u2|Q~q\);

-- Location: FF_X75_Y41_N3
\U4|circuit_gen:3:out_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:3:in_reg|u2|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:3:out_reg|u2|Q~q\);

-- Location: LCCOMB_X74_Y41_N4
\U4|circuit_gen:3:in_reg|u1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:in_reg|u1|Q~0_combout\ = !\U3|U0|U3|Sc2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc2|Q~q\,
	combout => \U4|circuit_gen:3:in_reg|u1|Q~0_combout\);

-- Location: FF_X74_Y41_N5
\U4|circuit_gen:3:in_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	d => \U4|circuit_gen:3:in_reg|u1|Q~0_combout\,
	ena => \U4|decoder|dout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:3:in_reg|u1|Q~q\);

-- Location: FF_X75_Y41_N21
\U4|circuit_gen:3:out_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:3:in_reg|u1|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:3:out_reg|u1|Q~q\);

-- Location: LCCOMB_X74_Y41_N6
\U4|circuit_gen:3:in_reg|u0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:in_reg|u0|Q~0_combout\ = !\U3|U0|U3|Sc3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|U0|U3|Sc3|Q~q\,
	combout => \U4|circuit_gen:3:in_reg|u0|Q~0_combout\);

-- Location: FF_X74_Y41_N7
\U4|circuit_gen:3:in_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	d => \U4|circuit_gen:3:in_reg|u0|Q~0_combout\,
	ena => \U4|decoder|dout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:3:in_reg|u0|Q~q\);

-- Location: FF_X75_Y41_N23
\U4|circuit_gen:3:out_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:3:in_reg|u0|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:3:out_reg|u0|Q~q\);

-- Location: LCCOMB_X74_Y41_N16
\U4|circuit_gen:3:in_reg|u3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:in_reg|u3|Q~0_combout\ = !\U3|U0|U3|Sc0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|U0|U3|Sc0|Q~q\,
	combout => \U4|circuit_gen:3:in_reg|u3|Q~0_combout\);

-- Location: FF_X74_Y41_N17
\U4|circuit_gen:3:in_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	d => \U4|circuit_gen:3:in_reg|u3|Q~0_combout\,
	ena => \U4|decoder|dout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:3:in_reg|u3|Q~q\);

-- Location: FF_X75_Y41_N1
\U4|circuit_gen:3:out_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:3:in_reg|u3|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:3:out_reg|u3|Q~q\);

-- Location: LCCOMB_X75_Y41_N8
\U4|circuit_gen:3:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[0]~0_combout\ = (\U4|circuit_gen:3:out_reg|u3|Q~q\ & (\U4|circuit_gen:3:out_reg|u1|Q~q\ & (\U4|circuit_gen:3:out_reg|u2|Q~q\ $ (\U4|circuit_gen:3:out_reg|u0|Q~q\)))) # (!\U4|circuit_gen:3:out_reg|u3|Q~q\ & 
-- (!\U4|circuit_gen:3:out_reg|u2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:3:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:3:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:3:out_reg|u0|Q~q\,
	datad => \U4|circuit_gen:3:out_reg|u3|Q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X75_Y41_N10
\U4|circuit_gen:3:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[0]~1_combout\ = (\U4|circuit_gen:3:hex_digit|Ndout[0]~0_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|clear_reg|Q~q\,
	datac => \U4|circuit_gen:3:hex_digit|Ndout[0]~0_combout\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X75_Y41_N12
\U4|circuit_gen:3:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[1]~2_combout\ = (\U4|circuit_gen:3:out_reg|u2|Q~q\ & (!\U4|circuit_gen:3:out_reg|u1|Q~q\ & (!\U4|circuit_gen:3:out_reg|u0|Q~q\ & !\U4|circuit_gen:3:out_reg|u3|Q~q\))) # (!\U4|circuit_gen:3:out_reg|u2|Q~q\ & 
-- ((\U4|circuit_gen:3:out_reg|u1|Q~q\ $ (\U4|circuit_gen:3:out_reg|u0|Q~q\)) # (!\U4|circuit_gen:3:out_reg|u3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:3:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:3:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:3:out_reg|u0|Q~q\,
	datad => \U4|circuit_gen:3:out_reg|u3|Q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X75_Y41_N30
\U4|circuit_gen:3:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[1]~3_combout\ = (\U4|circuit_gen:3:hex_digit|Ndout[1]~2_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|clear_reg|Q~q\,
	datad => \U4|circuit_gen:3:hex_digit|Ndout[1]~2_combout\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X75_Y41_N16
\U4|circuit_gen:3:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[2]~4_combout\ = (\U4|circuit_gen:3:out_reg|u1|Q~q\ & ((\U4|circuit_gen:3:out_reg|u2|Q~q\) # ((\U4|circuit_gen:3:out_reg|u3|Q~q\)))) # (!\U4|circuit_gen:3:out_reg|u1|Q~q\ & ((\U4|circuit_gen:3:out_reg|u0|Q~q\ & 
-- (!\U4|circuit_gen:3:out_reg|u2|Q~q\)) # (!\U4|circuit_gen:3:out_reg|u0|Q~q\ & ((\U4|circuit_gen:3:out_reg|u3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:3:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:3:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:3:out_reg|u0|Q~q\,
	datad => \U4|circuit_gen:3:out_reg|u3|Q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X75_Y41_N18
\U4|circuit_gen:3:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[2]~5_combout\ = (!\U4|circuit_gen:3:hex_digit|Ndout[2]~4_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|clear_reg|Q~q\,
	datad => \U4|circuit_gen:3:hex_digit|Ndout[2]~4_combout\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X75_Y41_N0
\U4|circuit_gen:3:hex_digit|Ndout[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[3]~6_combout\ = (\U4|circuit_gen:3:out_reg|u2|Q~q\ & ((\U4|circuit_gen:3:out_reg|u1|Q~q\ & ((!\U4|circuit_gen:3:out_reg|u0|Q~q\))) # (!\U4|circuit_gen:3:out_reg|u1|Q~q\ & (!\U4|circuit_gen:3:out_reg|u3|Q~q\)))) # 
-- (!\U4|circuit_gen:3:out_reg|u2|Q~q\ & (\U4|circuit_gen:3:out_reg|u1|Q~q\ $ (((!\U4|circuit_gen:3:out_reg|u0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:3:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:3:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:3:out_reg|u3|Q~q\,
	datad => \U4|circuit_gen:3:out_reg|u0|Q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[3]~6_combout\);

-- Location: LCCOMB_X75_Y41_N28
\U4|circuit_gen:3:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[3]~7_combout\ = (\U4|circuit_gen:3:hex_digit|Ndout[3]~6_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|clear_reg|Q~q\,
	datad => \U4|circuit_gen:3:hex_digit|Ndout[3]~6_combout\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X75_Y41_N2
\U4|circuit_gen:3:hex_digit|Ndout[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[4]~8_combout\ = (\U4|circuit_gen:3:out_reg|u1|Q~q\ & ((\U4|circuit_gen:3:out_reg|u2|Q~q\ & (!\U4|circuit_gen:3:out_reg|u0|Q~q\)) # (!\U4|circuit_gen:3:out_reg|u2|Q~q\ & ((\U4|circuit_gen:3:out_reg|u3|Q~q\))))) # 
-- (!\U4|circuit_gen:3:out_reg|u1|Q~q\ & (((!\U4|circuit_gen:3:out_reg|u3|Q~q\)) # (!\U4|circuit_gen:3:out_reg|u0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:3:out_reg|u0|Q~q\,
	datab => \U4|circuit_gen:3:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:3:out_reg|u2|Q~q\,
	datad => \U4|circuit_gen:3:out_reg|u3|Q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[4]~8_combout\);

-- Location: LCCOMB_X75_Y41_N14
\U4|circuit_gen:3:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[4]~9_combout\ = (\U4|circuit_gen:3:hex_digit|Ndout[4]~8_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|clear_reg|Q~q\,
	datad => \U4|circuit_gen:3:hex_digit|Ndout[4]~8_combout\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X75_Y41_N20
\U4|circuit_gen:3:hex_digit|Ndout[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[5]~10_combout\ = (\U4|circuit_gen:3:out_reg|u0|Q~q\ & (!\U4|circuit_gen:3:out_reg|u1|Q~q\ & ((\U4|circuit_gen:3:out_reg|u2|Q~q\) # (!\U4|circuit_gen:3:out_reg|u3|Q~q\)))) # (!\U4|circuit_gen:3:out_reg|u0|Q~q\ & 
-- ((\U4|circuit_gen:3:out_reg|u2|Q~q\ & (\U4|circuit_gen:3:out_reg|u3|Q~q\)) # (!\U4|circuit_gen:3:out_reg|u2|Q~q\ & ((!\U4|circuit_gen:3:out_reg|u1|Q~q\) # (!\U4|circuit_gen:3:out_reg|u3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:3:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:3:out_reg|u3|Q~q\,
	datac => \U4|circuit_gen:3:out_reg|u1|Q~q\,
	datad => \U4|circuit_gen:3:out_reg|u0|Q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[5]~10_combout\);

-- Location: LCCOMB_X75_Y41_N24
\U4|circuit_gen:3:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[5]~11_combout\ = (\U4|circuit_gen:3:hex_digit|Ndout[5]~10_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|clear_reg|Q~q\,
	datac => \U4|circuit_gen:3:hex_digit|Ndout[5]~10_combout\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X75_Y41_N22
\U4|circuit_gen:3:hex_digit|Ndout[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[6]~12_combout\ = (\U4|circuit_gen:3:out_reg|u2|Q~q\ & (\U4|circuit_gen:3:out_reg|u1|Q~q\ $ (((\U4|circuit_gen:3:out_reg|u3|Q~q\))))) # (!\U4|circuit_gen:3:out_reg|u2|Q~q\ & (\U4|circuit_gen:3:out_reg|u3|Q~q\ & 
-- ((\U4|circuit_gen:3:out_reg|u1|Q~q\) # (\U4|circuit_gen:3:out_reg|u0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:3:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:3:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:3:out_reg|u0|Q~q\,
	datad => \U4|circuit_gen:3:out_reg|u3|Q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[6]~12_combout\);

-- Location: LCCOMB_X75_Y41_N26
\U4|circuit_gen:3:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[6]~13_combout\ = (!\U4|circuit_gen:3:hex_digit|Ndout[6]~12_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|clear_reg|Q~q\,
	datad => \U4|circuit_gen:3:hex_digit|Ndout[6]~12_combout\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X74_Y40_N10
\U4|circuit_gen:4:in_reg|u0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:in_reg|u0|Q~0_combout\ = !\U3|U0|U3|Sc3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc3|Q~q\,
	combout => \U4|circuit_gen:4:in_reg|u0|Q~0_combout\);

-- Location: LCCOMB_X74_Y44_N14
\U4|decoder|dout[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|decoder|dout[4]~4_combout\ = (!\U3|U0|U3|Sc6|Q~q\ & (\U3|U0|U3|Sc4|Q~q\ & !\U3|U0|U3|Sc5|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U0|U3|Sc6|Q~q\,
	datab => \U3|U0|U3|Sc4|Q~q\,
	datac => \U3|U0|U3|Sc5|Q~q\,
	combout => \U4|decoder|dout[4]~4_combout\);

-- Location: FF_X74_Y40_N11
\U4|circuit_gen:4:in_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	d => \U4|circuit_gen:4:in_reg|u0|Q~0_combout\,
	ena => \U4|decoder|dout[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:4:in_reg|u0|Q~q\);

-- Location: FF_X75_Y40_N29
\U4|circuit_gen:4:out_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:4:in_reg|u0|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:4:out_reg|u0|Q~q\);

-- Location: LCCOMB_X75_Y40_N12
\U4|circuit_gen:4:in_reg|u1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:in_reg|u1|Q~0_combout\ = !\U3|U0|U3|Sc2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|U0|U3|Sc2|Q~q\,
	combout => \U4|circuit_gen:4:in_reg|u1|Q~0_combout\);

-- Location: FF_X75_Y40_N13
\U4|circuit_gen:4:in_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	d => \U4|circuit_gen:4:in_reg|u1|Q~0_combout\,
	ena => \U4|decoder|dout[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:4:in_reg|u1|Q~q\);

-- Location: FF_X75_Y40_N25
\U4|circuit_gen:4:out_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:4:in_reg|u1|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:4:out_reg|u1|Q~q\);

-- Location: LCCOMB_X75_Y40_N14
\U4|circuit_gen:4:in_reg|u2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:in_reg|u2|Q~0_combout\ = !\U3|U0|U3|Sc1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|U0|U3|Sc1|Q~q\,
	combout => \U4|circuit_gen:4:in_reg|u2|Q~0_combout\);

-- Location: FF_X75_Y40_N15
\U4|circuit_gen:4:in_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	d => \U4|circuit_gen:4:in_reg|u2|Q~0_combout\,
	ena => \U4|decoder|dout[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:4:in_reg|u2|Q~q\);

-- Location: FF_X75_Y40_N23
\U4|circuit_gen:4:out_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:4:in_reg|u2|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:4:out_reg|u2|Q~q\);

-- Location: LCCOMB_X74_Y40_N0
\U4|circuit_gen:4:in_reg|u3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:in_reg|u3|Q~0_combout\ = !\U3|U0|U3|Sc0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|U0|U3|Sc0|Q~q\,
	combout => \U4|circuit_gen:4:in_reg|u3|Q~0_combout\);

-- Location: FF_X74_Y40_N1
\U4|circuit_gen:4:in_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	d => \U4|circuit_gen:4:in_reg|u3|Q~0_combout\,
	ena => \U4|decoder|dout[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:4:in_reg|u3|Q~q\);

-- Location: FF_X75_Y40_N19
\U4|circuit_gen:4:out_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:4:in_reg|u3|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:4:out_reg|u3|Q~q\);

-- Location: LCCOMB_X75_Y40_N26
\U4|circuit_gen:4:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[0]~0_combout\ = (\U4|circuit_gen:4:out_reg|u3|Q~q\ & (\U4|circuit_gen:4:out_reg|u1|Q~q\ & (\U4|circuit_gen:4:out_reg|u0|Q~q\ $ (\U4|circuit_gen:4:out_reg|u2|Q~q\)))) # (!\U4|circuit_gen:4:out_reg|u3|Q~q\ & 
-- (((!\U4|circuit_gen:4:out_reg|u2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:4:out_reg|u0|Q~q\,
	datab => \U4|circuit_gen:4:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:4:out_reg|u2|Q~q\,
	datad => \U4|circuit_gen:4:out_reg|u3|Q~q\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X75_Y40_N6
\U4|circuit_gen:4:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[0]~1_combout\ = (\U4|circuit_gen:4:hex_digit|Ndout[0]~0_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:4:hex_digit|Ndout[0]~0_combout\,
	datac => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X75_Y40_N4
\U4|circuit_gen:4:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[1]~2_combout\ = (\U4|circuit_gen:4:out_reg|u0|Q~q\ & (!\U4|circuit_gen:4:out_reg|u2|Q~q\ & ((!\U4|circuit_gen:4:out_reg|u3|Q~q\) # (!\U4|circuit_gen:4:out_reg|u1|Q~q\)))) # (!\U4|circuit_gen:4:out_reg|u0|Q~q\ & 
-- ((\U4|circuit_gen:4:out_reg|u1|Q~q\ & (!\U4|circuit_gen:4:out_reg|u2|Q~q\)) # (!\U4|circuit_gen:4:out_reg|u1|Q~q\ & ((!\U4|circuit_gen:4:out_reg|u3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:4:out_reg|u0|Q~q\,
	datab => \U4|circuit_gen:4:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:4:out_reg|u2|Q~q\,
	datad => \U4|circuit_gen:4:out_reg|u3|Q~q\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X75_Y40_N2
\U4|circuit_gen:4:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[1]~3_combout\ = (\U4|circuit_gen:4:hex_digit|Ndout[1]~2_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|circuit_gen:4:hex_digit|Ndout[1]~2_combout\,
	datac => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X75_Y40_N20
\U4|circuit_gen:4:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[2]~4_combout\ = (\U4|circuit_gen:4:out_reg|u1|Q~q\ & (((\U4|circuit_gen:4:out_reg|u2|Q~q\) # (\U4|circuit_gen:4:out_reg|u3|Q~q\)))) # (!\U4|circuit_gen:4:out_reg|u1|Q~q\ & ((\U4|circuit_gen:4:out_reg|u0|Q~q\ & 
-- (!\U4|circuit_gen:4:out_reg|u2|Q~q\)) # (!\U4|circuit_gen:4:out_reg|u0|Q~q\ & ((\U4|circuit_gen:4:out_reg|u3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:4:out_reg|u0|Q~q\,
	datab => \U4|circuit_gen:4:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:4:out_reg|u2|Q~q\,
	datad => \U4|circuit_gen:4:out_reg|u3|Q~q\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X75_Y40_N10
\U4|circuit_gen:4:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[2]~5_combout\ = (!\U4|circuit_gen:4:hex_digit|Ndout[2]~4_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|clear_reg|Q~q\,
	datad => \U4|circuit_gen:4:hex_digit|Ndout[2]~4_combout\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X75_Y40_N18
\U4|circuit_gen:4:hex_digit|Ndout[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[3]~6_combout\ = (\U4|circuit_gen:4:out_reg|u2|Q~q\ & ((\U4|circuit_gen:4:out_reg|u1|Q~q\ & ((!\U4|circuit_gen:4:out_reg|u0|Q~q\))) # (!\U4|circuit_gen:4:out_reg|u1|Q~q\ & (!\U4|circuit_gen:4:out_reg|u3|Q~q\)))) # 
-- (!\U4|circuit_gen:4:out_reg|u2|Q~q\ & (\U4|circuit_gen:4:out_reg|u1|Q~q\ $ (((!\U4|circuit_gen:4:out_reg|u0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:4:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:4:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:4:out_reg|u3|Q~q\,
	datad => \U4|circuit_gen:4:out_reg|u0|Q~q\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[3]~6_combout\);

-- Location: LCCOMB_X75_Y40_N16
\U4|circuit_gen:4:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[3]~7_combout\ = (\U4|circuit_gen:4:hex_digit|Ndout[3]~6_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|clear_reg|Q~q\,
	datad => \U4|circuit_gen:4:hex_digit|Ndout[3]~6_combout\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X75_Y40_N22
\U4|circuit_gen:4:hex_digit|Ndout[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[4]~8_combout\ = (\U4|circuit_gen:4:out_reg|u1|Q~q\ & ((\U4|circuit_gen:4:out_reg|u2|Q~q\ & (!\U4|circuit_gen:4:out_reg|u0|Q~q\)) # (!\U4|circuit_gen:4:out_reg|u2|Q~q\ & ((\U4|circuit_gen:4:out_reg|u3|Q~q\))))) # 
-- (!\U4|circuit_gen:4:out_reg|u1|Q~q\ & (((!\U4|circuit_gen:4:out_reg|u3|Q~q\)) # (!\U4|circuit_gen:4:out_reg|u0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:4:out_reg|u0|Q~q\,
	datab => \U4|circuit_gen:4:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:4:out_reg|u2|Q~q\,
	datad => \U4|circuit_gen:4:out_reg|u3|Q~q\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[4]~8_combout\);

-- Location: LCCOMB_X75_Y40_N0
\U4|circuit_gen:4:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[4]~9_combout\ = (\U4|circuit_gen:4:hex_digit|Ndout[4]~8_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|clear_reg|Q~q\,
	datad => \U4|circuit_gen:4:hex_digit|Ndout[4]~8_combout\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X75_Y40_N24
\U4|circuit_gen:4:hex_digit|Ndout[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[5]~10_combout\ = (\U4|circuit_gen:4:out_reg|u0|Q~q\ & (!\U4|circuit_gen:4:out_reg|u1|Q~q\ & ((\U4|circuit_gen:4:out_reg|u2|Q~q\) # (!\U4|circuit_gen:4:out_reg|u3|Q~q\)))) # (!\U4|circuit_gen:4:out_reg|u0|Q~q\ & 
-- ((\U4|circuit_gen:4:out_reg|u2|Q~q\ & ((\U4|circuit_gen:4:out_reg|u3|Q~q\))) # (!\U4|circuit_gen:4:out_reg|u2|Q~q\ & ((!\U4|circuit_gen:4:out_reg|u3|Q~q\) # (!\U4|circuit_gen:4:out_reg|u1|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:4:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:4:out_reg|u0|Q~q\,
	datac => \U4|circuit_gen:4:out_reg|u1|Q~q\,
	datad => \U4|circuit_gen:4:out_reg|u3|Q~q\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[5]~10_combout\);

-- Location: LCCOMB_X75_Y40_N30
\U4|circuit_gen:4:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[5]~11_combout\ = (\U4|circuit_gen:4:hex_digit|Ndout[5]~10_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:4:hex_digit|Ndout[5]~10_combout\,
	datac => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X75_Y40_N28
\U4|circuit_gen:4:hex_digit|Ndout[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[6]~12_combout\ = (\U4|circuit_gen:4:out_reg|u2|Q~q\ & (\U4|circuit_gen:4:out_reg|u1|Q~q\ $ (((\U4|circuit_gen:4:out_reg|u3|Q~q\))))) # (!\U4|circuit_gen:4:out_reg|u2|Q~q\ & (\U4|circuit_gen:4:out_reg|u3|Q~q\ & 
-- ((\U4|circuit_gen:4:out_reg|u1|Q~q\) # (\U4|circuit_gen:4:out_reg|u0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:4:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:4:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:4:out_reg|u0|Q~q\,
	datad => \U4|circuit_gen:4:out_reg|u3|Q~q\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[6]~12_combout\);

-- Location: LCCOMB_X75_Y40_N8
\U4|circuit_gen:4:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[6]~13_combout\ = (!\U4|circuit_gen:4:hex_digit|Ndout[6]~12_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|clear_reg|Q~q\,
	datad => \U4|circuit_gen:4:hex_digit|Ndout[6]~12_combout\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X74_Y40_N6
\U4|circuit_gen:5:in_reg|u2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:in_reg|u2|Q~0_combout\ = !\U3|U0|U3|Sc1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc1|Q~q\,
	combout => \U4|circuit_gen:5:in_reg|u2|Q~0_combout\);

-- Location: LCCOMB_X74_Y44_N30
\U4|decoder|dout[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|decoder|dout[5]~5_combout\ = (!\U3|U0|U3|Sc5|Q~q\ & (\U3|U0|U3|Sc6|Q~q\ & \U3|U0|U3|Sc4|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|U0|U3|Sc5|Q~q\,
	datac => \U3|U0|U3|Sc6|Q~q\,
	datad => \U3|U0|U3|Sc4|Q~q\,
	combout => \U4|decoder|dout[5]~5_combout\);

-- Location: FF_X74_Y40_N7
\U4|circuit_gen:5:in_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	d => \U4|circuit_gen:5:in_reg|u2|Q~0_combout\,
	ena => \U4|decoder|dout[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:5:in_reg|u2|Q~q\);

-- Location: FF_X74_Y38_N29
\U4|circuit_gen:5:out_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:5:in_reg|u2|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:5:out_reg|u2|Q~q\);

-- Location: LCCOMB_X74_Y40_N16
\U4|circuit_gen:5:in_reg|u1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:in_reg|u1|Q~0_combout\ = !\U3|U0|U3|Sc2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc2|Q~q\,
	combout => \U4|circuit_gen:5:in_reg|u1|Q~0_combout\);

-- Location: FF_X74_Y40_N17
\U4|circuit_gen:5:in_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	d => \U4|circuit_gen:5:in_reg|u1|Q~0_combout\,
	ena => \U4|decoder|dout[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:5:in_reg|u1|Q~q\);

-- Location: FF_X74_Y38_N31
\U4|circuit_gen:5:out_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:5:in_reg|u1|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:5:out_reg|u1|Q~q\);

-- Location: LCCOMB_X74_Y40_N28
\U4|circuit_gen:5:in_reg|u3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:in_reg|u3|Q~0_combout\ = !\U3|U0|U3|Sc0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|U0|U3|Sc0|Q~q\,
	combout => \U4|circuit_gen:5:in_reg|u3|Q~0_combout\);

-- Location: FF_X74_Y40_N29
\U4|circuit_gen:5:in_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	d => \U4|circuit_gen:5:in_reg|u3|Q~0_combout\,
	ena => \U4|decoder|dout[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:5:in_reg|u3|Q~q\);

-- Location: FF_X74_Y38_N27
\U4|circuit_gen:5:out_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:5:in_reg|u3|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:5:out_reg|u3|Q~q\);

-- Location: LCCOMB_X74_Y40_N26
\U4|circuit_gen:5:in_reg|u0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:in_reg|u0|Q~0_combout\ = !\U3|U0|U3|Sc3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc3|Q~q\,
	combout => \U4|circuit_gen:5:in_reg|u0|Q~0_combout\);

-- Location: FF_X74_Y40_N27
\U4|circuit_gen:5:in_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	d => \U4|circuit_gen:5:in_reg|u0|Q~0_combout\,
	ena => \U4|decoder|dout[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:5:in_reg|u0|Q~q\);

-- Location: FF_X74_Y38_N9
\U4|circuit_gen:5:out_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~0clkctrl_outclk\,
	asdata => \U4|circuit_gen:5:in_reg|u0|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:5:out_reg|u0|Q~q\);

-- Location: LCCOMB_X74_Y38_N10
\U4|circuit_gen:5:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[0]~0_combout\ = (\U4|circuit_gen:5:out_reg|u3|Q~q\ & (\U4|circuit_gen:5:out_reg|u1|Q~q\ & (\U4|circuit_gen:5:out_reg|u2|Q~q\ $ (\U4|circuit_gen:5:out_reg|u0|Q~q\)))) # (!\U4|circuit_gen:5:out_reg|u3|Q~q\ & 
-- (!\U4|circuit_gen:5:out_reg|u2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:5:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:5:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:5:out_reg|u3|Q~q\,
	datad => \U4|circuit_gen:5:out_reg|u0|Q~q\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X74_Y38_N20
\U4|circuit_gen:5:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[0]~1_combout\ = (\U4|circuit_gen:5:hex_digit|Ndout[0]~0_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:5:hex_digit|Ndout[0]~0_combout\,
	datad => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X74_Y38_N22
\U4|circuit_gen:5:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[1]~2_combout\ = (\U4|circuit_gen:5:out_reg|u2|Q~q\ & (!\U4|circuit_gen:5:out_reg|u1|Q~q\ & (!\U4|circuit_gen:5:out_reg|u3|Q~q\ & !\U4|circuit_gen:5:out_reg|u0|Q~q\))) # (!\U4|circuit_gen:5:out_reg|u2|Q~q\ & 
-- ((\U4|circuit_gen:5:out_reg|u1|Q~q\ $ (\U4|circuit_gen:5:out_reg|u0|Q~q\)) # (!\U4|circuit_gen:5:out_reg|u3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:5:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:5:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:5:out_reg|u3|Q~q\,
	datad => \U4|circuit_gen:5:out_reg|u0|Q~q\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X74_Y38_N16
\U4|circuit_gen:5:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[1]~3_combout\ = (\U4|circuit_gen:5:hex_digit|Ndout[1]~2_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|circuit_gen:5:hex_digit|Ndout[1]~2_combout\,
	datad => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X74_Y38_N2
\U4|circuit_gen:5:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[2]~4_combout\ = (\U4|circuit_gen:5:out_reg|u1|Q~q\ & ((\U4|circuit_gen:5:out_reg|u2|Q~q\) # ((\U4|circuit_gen:5:out_reg|u3|Q~q\)))) # (!\U4|circuit_gen:5:out_reg|u1|Q~q\ & ((\U4|circuit_gen:5:out_reg|u0|Q~q\ & 
-- (!\U4|circuit_gen:5:out_reg|u2|Q~q\)) # (!\U4|circuit_gen:5:out_reg|u0|Q~q\ & ((\U4|circuit_gen:5:out_reg|u3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:5:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:5:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:5:out_reg|u3|Q~q\,
	datad => \U4|circuit_gen:5:out_reg|u0|Q~q\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X74_Y38_N12
\U4|circuit_gen:5:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[2]~5_combout\ = (!\U4|clear_reg|Q~q\) # (!\U4|circuit_gen:5:hex_digit|Ndout[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|circuit_gen:5:hex_digit|Ndout[2]~4_combout\,
	datad => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X74_Y38_N26
\U4|circuit_gen:5:hex_digit|Ndout[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[3]~6_combout\ = (\U4|circuit_gen:5:out_reg|u2|Q~q\ & ((\U4|circuit_gen:5:out_reg|u1|Q~q\ & ((!\U4|circuit_gen:5:out_reg|u0|Q~q\))) # (!\U4|circuit_gen:5:out_reg|u1|Q~q\ & (!\U4|circuit_gen:5:out_reg|u3|Q~q\)))) # 
-- (!\U4|circuit_gen:5:out_reg|u2|Q~q\ & (\U4|circuit_gen:5:out_reg|u1|Q~q\ $ (((!\U4|circuit_gen:5:out_reg|u0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:5:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:5:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:5:out_reg|u3|Q~q\,
	datad => \U4|circuit_gen:5:out_reg|u0|Q~q\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[3]~6_combout\);

-- Location: LCCOMB_X74_Y38_N14
\U4|circuit_gen:5:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[3]~7_combout\ = (\U4|circuit_gen:5:hex_digit|Ndout[3]~6_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|circuit_gen:5:hex_digit|Ndout[3]~6_combout\,
	datad => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X74_Y38_N28
\U4|circuit_gen:5:hex_digit|Ndout[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[4]~8_combout\ = (\U4|circuit_gen:5:out_reg|u1|Q~q\ & ((\U4|circuit_gen:5:out_reg|u2|Q~q\ & ((!\U4|circuit_gen:5:out_reg|u0|Q~q\))) # (!\U4|circuit_gen:5:out_reg|u2|Q~q\ & (\U4|circuit_gen:5:out_reg|u3|Q~q\)))) # 
-- (!\U4|circuit_gen:5:out_reg|u1|Q~q\ & (((!\U4|circuit_gen:5:out_reg|u0|Q~q\)) # (!\U4|circuit_gen:5:out_reg|u3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:5:out_reg|u3|Q~q\,
	datab => \U4|circuit_gen:5:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:5:out_reg|u2|Q~q\,
	datad => \U4|circuit_gen:5:out_reg|u0|Q~q\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[4]~8_combout\);

-- Location: LCCOMB_X74_Y38_N0
\U4|circuit_gen:5:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[4]~9_combout\ = (\U4|circuit_gen:5:hex_digit|Ndout[4]~8_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|circuit_gen:5:hex_digit|Ndout[4]~8_combout\,
	datad => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X74_Y38_N30
\U4|circuit_gen:5:hex_digit|Ndout[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[5]~10_combout\ = (\U4|circuit_gen:5:out_reg|u0|Q~q\ & (!\U4|circuit_gen:5:out_reg|u1|Q~q\ & ((\U4|circuit_gen:5:out_reg|u2|Q~q\) # (!\U4|circuit_gen:5:out_reg|u3|Q~q\)))) # (!\U4|circuit_gen:5:out_reg|u0|Q~q\ & 
-- ((\U4|circuit_gen:5:out_reg|u3|Q~q\ & ((\U4|circuit_gen:5:out_reg|u2|Q~q\) # (!\U4|circuit_gen:5:out_reg|u1|Q~q\))) # (!\U4|circuit_gen:5:out_reg|u3|Q~q\ & ((!\U4|circuit_gen:5:out_reg|u2|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:5:out_reg|u3|Q~q\,
	datab => \U4|circuit_gen:5:out_reg|u0|Q~q\,
	datac => \U4|circuit_gen:5:out_reg|u1|Q~q\,
	datad => \U4|circuit_gen:5:out_reg|u2|Q~q\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[5]~10_combout\);

-- Location: LCCOMB_X74_Y38_N18
\U4|circuit_gen:5:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[5]~11_combout\ = (\U4|circuit_gen:5:hex_digit|Ndout[5]~10_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|circuit_gen:5:hex_digit|Ndout[5]~10_combout\,
	datad => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X74_Y38_N8
\U4|circuit_gen:5:hex_digit|Ndout[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[6]~12_combout\ = (\U4|circuit_gen:5:out_reg|u1|Q~q\ & (\U4|circuit_gen:5:out_reg|u3|Q~q\ $ (((\U4|circuit_gen:5:out_reg|u2|Q~q\))))) # (!\U4|circuit_gen:5:out_reg|u1|Q~q\ & (\U4|circuit_gen:5:out_reg|u3|Q~q\ & 
-- ((\U4|circuit_gen:5:out_reg|u0|Q~q\) # (\U4|circuit_gen:5:out_reg|u2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:5:out_reg|u3|Q~q\,
	datab => \U4|circuit_gen:5:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:5:out_reg|u0|Q~q\,
	datad => \U4|circuit_gen:5:out_reg|u2|Q~q\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[6]~12_combout\);

-- Location: LCCOMB_X74_Y38_N4
\U4|circuit_gen:5:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[6]~13_combout\ = (!\U4|clear_reg|Q~q\) # (!\U4|circuit_gen:5:hex_digit|Ndout[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:5:hex_digit|Ndout[6]~12_combout\,
	datad => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[6]~13_combout\);

-- Location: FF_X44_Y38_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\);

-- Location: FF_X44_Y38_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\);

-- Location: LCCOMB_X58_Y46_N0
\auto_hub|~GND\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

-- Location: LCCOMB_X44_Y38_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell_combout\);

-- Location: LCCOMB_X46_Y35_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell_combout\);

-- Location: IOIBUF_X51_Y54_N1
\ack~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ack,
	o => \ack~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);
END structure;


