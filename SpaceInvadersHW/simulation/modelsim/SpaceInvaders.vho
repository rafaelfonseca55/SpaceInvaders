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

-- DATE "06/28/2024 18:44:53"

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
	Lines : IN std_logic_vector(3 DOWNTO 0);
	Columns : OUT std_logic_vector(2 DOWNTO 0);
	Dval : OUT std_logic;
	LCDDout : OUT std_logic_vector(8 DOWNTO 0);
	e : OUT std_logic;
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
-- Dval	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- Mclk	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_Lines : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Columns : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Dval : std_logic;
SIGNAL ww_LCDDout : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_e : std_logic;
SIGNAL ww_SHEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SHEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SHEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SHEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SHEX4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SHEX5 : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rtl~11clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|U2|U0|CurrentState.STATE_RECEIVING~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U3|U1|WrD~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~10clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|U0|UO|CURRENT_STATE.STATE_1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~14clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U3|U0|UO|CURRENT_STATE.STATE_1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|U0|counter_rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~9clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~13clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~8clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~12clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~15clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\ : std_logic;
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
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\ : std_logic;
SIGNAL \Mclk~input_o\ : std_logic;
SIGNAL \Mclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \U0|U1|U1|U1|Count[0]~3_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \U0|U1|U0|Selector0~0_combout\ : std_logic;
SIGNAL \U0|U1|U1|U1|Count[0]~4\ : std_logic;
SIGNAL \U0|U1|U1|U1|Count[1]~5_combout\ : std_logic;
SIGNAL \U0|U1|U1|U1|Count[1]~6\ : std_logic;
SIGNAL \U0|U1|U1|U1|Count[2]~7_combout\ : std_logic;
SIGNAL \altera_reserved_tms~input_o\ : std_logic;
SIGNAL \altera_reserved_tck~input_o\ : std_logic;
SIGNAL \altera_reserved_tdi~input_o\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\ : std_logic;
SIGNAL \~QIC_CREATED_GND~I_combout\ : std_logic;
SIGNAL \U0|U2|U0|NextState.STATE_RECEIVING~0_combout\ : std_logic;
SIGNAL \U0|U2|U0|CurrentState.STATE_RECEIVING~q\ : std_logic;
SIGNAL \U0|U2|U0|CurrentState.STATE_RECEIVING~clkctrl_outclk\ : std_logic;
SIGNAL \U0|U1|U1|U3|Add0~0_combout\ : std_logic;
SIGNAL \U0|U1|U1|U3|Add0~1\ : std_logic;
SIGNAL \U0|U1|U1|U3|Add0~2_combout\ : std_logic;
SIGNAL \U0|U1|U1|U3|Add0~3\ : std_logic;
SIGNAL \U0|U1|U1|U3|Add0~4_combout\ : std_logic;
SIGNAL \rtl~10_combout\ : std_logic;
SIGNAL \rtl~10clkctrl_outclk\ : std_logic;
SIGNAL \U0|U1|U2|ram~17_combout\ : std_logic;
SIGNAL \U0|U1|U1|U4|Add0~0_combout\ : std_logic;
SIGNAL \U0|U1|U1|U4|Add0~1\ : std_logic;
SIGNAL \U0|U1|U1|U4|Add0~2_combout\ : std_logic;
SIGNAL \U0|U1|U1|U0|O[1]~1_combout\ : std_logic;
SIGNAL \U0|U1|U1|U0|O[0]~0_combout\ : std_logic;
SIGNAL \rtl~9_combout\ : std_logic;
SIGNAL \rtl~9clkctrl_outclk\ : std_logic;
SIGNAL \U0|U1|U2|ram~25_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~37_combout\ : std_logic;
SIGNAL \rtl~11_combout\ : std_logic;
SIGNAL \rtl~11clkctrl_outclk\ : std_logic;
SIGNAL \U0|U1|U2|ram~29_combout\ : std_logic;
SIGNAL \rtl~8_combout\ : std_logic;
SIGNAL \rtl~8clkctrl_outclk\ : std_logic;
SIGNAL \U0|U1|U2|ram~21_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~38_combout\ : std_logic;
SIGNAL \rtl~15_combout\ : std_logic;
SIGNAL \rtl~15clkctrl_outclk\ : std_logic;
SIGNAL \U0|U1|U2|ram~13_combout\ : std_logic;
SIGNAL \rtl~12_combout\ : std_logic;
SIGNAL \rtl~12clkctrl_outclk\ : std_logic;
SIGNAL \U0|U1|U2|ram~9_combout\ : std_logic;
SIGNAL \rtl~13_combout\ : std_logic;
SIGNAL \rtl~13clkctrl_outclk\ : std_logic;
SIGNAL \U0|U1|U2|ram~5_combout\ : std_logic;
SIGNAL \rtl~14_combout\ : std_logic;
SIGNAL \rtl~14clkctrl_outclk\ : std_logic;
SIGNAL \U0|U1|U2|ram~1_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~39_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~40_combout\ : std_logic;
SIGNAL \U0|U1|U1|U4|Add0~3\ : std_logic;
SIGNAL \U0|U1|U1|U4|Add0~4_combout\ : std_logic;
SIGNAL \U0|U1|U1|U0|O[2]~2_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~41_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~8_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~12_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~0_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~4_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~34_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~35_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~20_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~28_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~24_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~16_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~32_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~33_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~36_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~27_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~19_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~47_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~31_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~23_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~48_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~11_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~3_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~7_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~49_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~15_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~50_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~51_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\ : std_logic;
SIGNAL \U0|U2|U0|Selector1~0_combout\ : std_logic;
SIGNAL \U0|U2|U0|CurrentState.STATE_ACKNOWLEDGED~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\ : std_logic;
SIGNAL \U0|U0|U0|U2|U3|U3|Q~0_combout\ : std_logic;
SIGNAL \U0|U0|U0|U2|U3|U3|Q~q\ : std_logic;
SIGNAL \U0|U1|U2|ram~30_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~22_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~18_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~26_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~42_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~43_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~14_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~6_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~2_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~44_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~10_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~45_combout\ : std_logic;
SIGNAL \U0|U1|U2|ram~46_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~10\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~16_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~12\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~6\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~8\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~16_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~17_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~18_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~19_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\ : std_logic;
SIGNAL \U0|U2|U0|NextState.STATE_END~0_combout\ : std_logic;
SIGNAL \U0|U2|U0|CurrentState.STATE_END~q\ : std_logic;
SIGNAL \U0|U2|U0|Selector0~0_combout\ : std_logic;
SIGNAL \U0|U2|U0|CurrentState.STATE_WAITING~q\ : std_logic;
SIGNAL \U0|U1|U0|GenerateNextState~0_combout\ : std_logic;
SIGNAL \U0|U1|U0|Selector0~1_combout\ : std_logic;
SIGNAL \U0|U1|U0|CurrentState.STATE_WAITING~q\ : std_logic;
SIGNAL \U0|U1|U0|Selector2~0_combout\ : std_logic;
SIGNAL \U0|U1|U0|Selector2~1_combout\ : std_logic;
SIGNAL \U0|U1|U0|CurrentState.STATE_READ_KEY~q\ : std_logic;
SIGNAL \U0|U1|U0|NextState.STATE_INC_GET~0_combout\ : std_logic;
SIGNAL \U0|U1|U0|CurrentState.STATE_INC_GET~q\ : std_logic;
SIGNAL \U0|U1|U1|Ce_X~combout\ : std_logic;
SIGNAL \U0|U1|U0|NextState~0_combout\ : std_logic;
SIGNAL \U0|U1|U0|NextState.STATE_ACTIVATE_PUT~0_combout\ : std_logic;
SIGNAL \U0|U1|U0|CurrentState.STATE_ACTIVATE_PUT~q\ : std_logic;
SIGNAL \U0|U1|U0|CurrentState.STATE_WRITE_KEY~q\ : std_logic;
SIGNAL \U0|U1|U0|CurrentState.STATE_INC_PUT~q\ : std_logic;
SIGNAL \U0|U1|U0|Selector1~0_combout\ : std_logic;
SIGNAL \U0|U1|U0|CurrentState.STATE_END_WRITE~q\ : std_logic;
SIGNAL \Lines[0]~input_o\ : std_logic;
SIGNAL \Lines[1]~input_o\ : std_logic;
SIGNAL \U0|U0|U0|U1|Y~0_combout\ : std_logic;
SIGNAL \Lines[3]~input_o\ : std_logic;
SIGNAL \Lines[2]~input_o\ : std_logic;
SIGNAL \U0|U0|U0|U1|Y~1_combout\ : std_logic;
SIGNAL \U0|U0|U1|Selector1~0_combout\ : std_logic;
SIGNAL \U0|U0|U1|currentState.STATE_2~q\ : std_logic;
SIGNAL \U0|U0|U1|Selector2~0_combout\ : std_logic;
SIGNAL \U0|U0|U1|currentState.STATE_3~q\ : std_logic;
SIGNAL \U0|U0|U1|Selector0~0_combout\ : std_logic;
SIGNAL \U0|U0|U1|currentState.STATE_1~q\ : std_logic;
SIGNAL \U0|U0|U0|U2|U3|U1|Q~0_combout\ : std_logic;
SIGNAL \U0|U0|U0|U2|U3|U1|Q~q\ : std_logic;
SIGNAL \U0|U0|U0|U2|U3|U2|Q~0_combout\ : std_logic;
SIGNAL \U0|U0|U0|U2|U3|U2|Q~q\ : std_logic;
SIGNAL \U0|U0|U0|U2|U3|U4|Q~0_combout\ : std_logic;
SIGNAL \U0|U0|U0|U2|U3|U4|Q~1_combout\ : std_logic;
SIGNAL \U0|U0|U0|U2|U3|U4|Q~q\ : std_logic;
SIGNAL \U0|U0|U0|U0|O0~0_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|O1~0_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|O2~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\ : std_logic;
SIGNAL \U2|U0|U3|Sc0|Q~feeder_combout\ : std_logic;
SIGNAL \U2|U0|UO|Selector0~0_combout\ : std_logic;
SIGNAL \U2|U0|U2|count_value[0]~3_combout\ : std_logic;
SIGNAL \U2|U0|UO|CURRENT_STATE.STATE_1~clkctrl_outclk\ : std_logic;
SIGNAL \U2|U0|U2|count_value[1]~1_combout\ : std_logic;
SIGNAL \U2|U0|U2|count_value[2]~2_combout\ : std_logic;
SIGNAL \U2|U0|U2|count_value[3]~0_combout\ : std_logic;
SIGNAL \U2|U0|Pflag_signal~0_combout\ : std_logic;
SIGNAL \U2|U0|UO|Selector2~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\ : std_logic;
SIGNAL \U2|U0|UO|Selector4~0_combout\ : std_logic;
SIGNAL \U2|U0|UO|CURRENT_STATE.STATE_2~feeder_combout\ : std_logic;
SIGNAL \U2|U0|UO|CURRENT_STATE.STATE_2~q\ : std_logic;
SIGNAL \U2|U0|UO|Selector2~1_combout\ : std_logic;
SIGNAL \U2|U0|UO|CURRENT_STATE.STATE_3~q\ : std_logic;
SIGNAL \U2|U0|U1|sr~0_combout\ : std_logic;
SIGNAL \U2|U0|U1|sr~q\ : std_logic;
SIGNAL \U2|U0|U1|Err~combout\ : std_logic;
SIGNAL \U2|U0|UO|Selector0~1_combout\ : std_logic;
SIGNAL \U2|U0|UO|CURRENT_STATE.STATE_4~q\ : std_logic;
SIGNAL \U2|U1|Selector0~0_combout\ : std_logic;
SIGNAL \U2|U1|CurrentState.STATE_WAITING~q\ : std_logic;
SIGNAL \U2|U1|NextState.STATE_TRAMA_RECEBIDA~0_combout\ : std_logic;
SIGNAL \U2|U1|CurrentState.STATE_TRAMA_RECEBIDA~q\ : std_logic;
SIGNAL \U2|U1|Selector1~0_combout\ : std_logic;
SIGNAL \U2|U1|CurrentState.STATE_DONE~q\ : std_logic;
SIGNAL \U2|U0|UO|Selector6~0_combout\ : std_logic;
SIGNAL \U2|U0|UO|Selector6~1_combout\ : std_logic;
SIGNAL \U2|U0|UO|CURRENT_STATE.STATE_1~q\ : std_logic;
SIGNAL \U2|U0|counter_rst~combout\ : std_logic;
SIGNAL \U2|U0|counter_rst~clkctrl_outclk\ : std_logic;
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
SIGNAL \U3|U0|U2|count_value[0]~3_combout\ : std_logic;
SIGNAL \U3|U0|U1|sr~0_combout\ : std_logic;
SIGNAL \U3|U0|U1|sr~q\ : std_logic;
SIGNAL \U3|U0|U1|Err~combout\ : std_logic;
SIGNAL \U3|U0|U2|count_value[1]~1_combout\ : std_logic;
SIGNAL \U3|U0|U2|count_value[2]~2_combout\ : std_logic;
SIGNAL \U3|U0|U2|count_value[3]~0_combout\ : std_logic;
SIGNAL \U3|U0|Pflag_signal~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\ : std_logic;
SIGNAL \U3|U1|NextState.STATE_TRAMA_RECEBIDA~0_combout\ : std_logic;
SIGNAL \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~q\ : std_logic;
SIGNAL \U3|U1|Selector1~0_combout\ : std_logic;
SIGNAL \U3|U1|CurrentState.STATE_DONE~q\ : std_logic;
SIGNAL \U3|U0|UO|Selector6~0_combout\ : std_logic;
SIGNAL \U3|U0|UO|Selector6~1_combout\ : std_logic;
SIGNAL \U3|U0|UO|CURRENT_STATE.STATE_1~q\ : std_logic;
SIGNAL \U3|U0|UO|CURRENT_STATE.STATE_1~clkctrl_outclk\ : std_logic;
SIGNAL \U3|U0|Pflag_signal~0_combout\ : std_logic;
SIGNAL \U3|U0|UO|Selector4~0_combout\ : std_logic;
SIGNAL \U3|U0|UO|Selector4~1_combout\ : std_logic;
SIGNAL \U3|U0|UO|CURRENT_STATE.STATE_2~feeder_combout\ : std_logic;
SIGNAL \U3|U0|UO|CURRENT_STATE.STATE_2~q\ : std_logic;
SIGNAL \U3|U0|UO|Selector2~0_combout\ : std_logic;
SIGNAL \U3|U0|UO|CURRENT_STATE.STATE_3~q\ : std_logic;
SIGNAL \U3|U0|UO|Selector0~0_combout\ : std_logic;
SIGNAL \U3|U0|UO|Selector0~1_combout\ : std_logic;
SIGNAL \U3|U0|UO|CURRENT_STATE.STATE_4~q\ : std_logic;
SIGNAL \U3|U1|Selector0~0_combout\ : std_logic;
SIGNAL \U3|U1|CurrentState.STATE_WAITING~q\ : std_logic;
SIGNAL \U3|U1|WrD~combout\ : std_logic;
SIGNAL \U3|U1|WrD~clkctrl_outclk\ : std_logic;
SIGNAL \U3|U0|U3|Sc0|Q~q\ : std_logic;
SIGNAL \U3|U0|U3|Sc1|Q~q\ : std_logic;
SIGNAL \U3|U0|U3|Sc2|Q~feeder_combout\ : std_logic;
SIGNAL \U3|U0|U3|Sc2|Q~q\ : std_logic;
SIGNAL \U4|clear_reg|Q~0_combout\ : std_logic;
SIGNAL \U3|U0|U3|Sc3|Q~feeder_combout\ : std_logic;
SIGNAL \U3|U0|U3|Sc3|Q~q\ : std_logic;
SIGNAL \U4|clear_reg|Q~1_combout\ : std_logic;
SIGNAL \U4|clear_reg|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:0:in_reg|u0|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:in_reg|u0|Q~q\ : std_logic;
SIGNAL \U4|decoder|dout[6]~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:out_reg|u0|Q~q\ : std_logic;
SIGNAL \U3|U0|U3|Sc4|Q~feeder_combout\ : std_logic;
SIGNAL \U3|U0|U3|Sc4|Q~q\ : std_logic;
SIGNAL \U3|U0|U3|Sc5|Q~feeder_combout\ : std_logic;
SIGNAL \U3|U0|U3|Sc5|Q~q\ : std_logic;
SIGNAL \U3|U0|U3|Sc6|Q~feeder_combout\ : std_logic;
SIGNAL \U3|U0|U3|Sc6|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:0:in_reg|u3|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:in_reg|u3|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:0:out_reg|u3|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:0:in_reg|u2|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:in_reg|u2|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:0:out_reg|u2|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:0:in_reg|u1|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:in_reg|u1|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:0:out_reg|u1|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[2]~6_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[3]~8_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[4]~10_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[5]~12_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \U4|circuit_gen:0:hex_digit|Ndout[6]~14_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:in_reg|u2|Q~0_combout\ : std_logic;
SIGNAL \U4|decoder|dout[1]~1_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:in_reg|u2|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:1:out_reg|u2|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:1:in_reg|u1|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:in_reg|u1|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:1:out_reg|u1|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:1:in_reg|u3|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:in_reg|u3|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:1:out_reg|u3|Q~feeder_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:out_reg|u3|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:1:in_reg|u0|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:in_reg|u0|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:1:out_reg|u0|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[2]~6_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[3]~8_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[4]~10_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[5]~12_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \U4|circuit_gen:1:hex_digit|Ndout[6]~14_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:in_reg|u2|Q~0_combout\ : std_logic;
SIGNAL \U4|decoder|dout[2]~2_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:in_reg|u2|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:2:out_reg|u2|Q~feeder_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:out_reg|u2|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:2:in_reg|u0|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:in_reg|u0|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:2:out_reg|u0|Q~feeder_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:out_reg|u0|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:2:in_reg|u1|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:in_reg|u1|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:2:out_reg|u1|Q~feeder_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:out_reg|u1|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:2:in_reg|u3|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:in_reg|u3|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:2:out_reg|u3|Q~feeder_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:out_reg|u3|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[2]~6_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[3]~8_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[4]~10_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[5]~12_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \U4|circuit_gen:2:hex_digit|Ndout[6]~14_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:in_reg|u3|Q~0_combout\ : std_logic;
SIGNAL \U4|decoder|dout[3]~3_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:in_reg|u3|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:3:out_reg|u3|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:3:in_reg|u2|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:in_reg|u2|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:3:out_reg|u2|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:3:in_reg|u0|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:in_reg|u0|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:3:out_reg|u0|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:3:in_reg|u1|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:in_reg|u1|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:3:out_reg|u1|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[2]~6_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[3]~8_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[4]~10_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[5]~12_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \U4|circuit_gen:3:hex_digit|Ndout[6]~14_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:in_reg|u0|Q~0_combout\ : std_logic;
SIGNAL \U4|decoder|dout[4]~4_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:in_reg|u0|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:4:out_reg|u0|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:4:in_reg|u2|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:in_reg|u2|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:4:out_reg|u2|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:4:in_reg|u1|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:in_reg|u1|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:4:out_reg|u1|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:4:in_reg|u3|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:in_reg|u3|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:4:out_reg|u3|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[2]~6_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[3]~8_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[4]~10_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[5]~12_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \U4|circuit_gen:4:hex_digit|Ndout[6]~14_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:in_reg|u2|Q~0_combout\ : std_logic;
SIGNAL \U4|decoder|dout[5]~5_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:in_reg|u2|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:5:out_reg|u2|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:5:in_reg|u1|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:in_reg|u1|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:5:out_reg|u1|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:5:in_reg|u0|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:in_reg|u0|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:5:out_reg|u0|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:5:in_reg|u3|Q~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:in_reg|u3|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:5:out_reg|u3|Q~feeder_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:out_reg|u3|Q~q\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[2]~6_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[3]~8_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[4]~10_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[5]~12_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \U4|circuit_gen:5:hex_digit|Ndout[6]~14_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDO\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U0|U1|U1|U1|Count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U3|U0|U2|count_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|U2|U1|D_X\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|U1|U1|U3|Count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U0|U1|U1|U4|Count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U4|decoder|dout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U2|U0|U2|count_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|U0|U0|U0|ALT_INV_O2~0_combout\ : std_logic;
SIGNAL \U0|U0|U0|U0|ALT_INV_O1~0_combout\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\ : std_logic;
SIGNAL \U2|U0|ALT_INV_counter_rst~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_altera_reserved_tms <= altera_reserved_tms;
ww_altera_reserved_tck <= altera_reserved_tck;
ww_altera_reserved_tdi <= altera_reserved_tdi;
altera_reserved_tdo <= ww_altera_reserved_tdo;
ww_Mclk <= Mclk;
ww_reset <= reset;
ww_ack <= ack;
ww_Lines <= Lines;
Columns <= ww_Columns;
Dval <= ww_Dval;
LCDDout <= ww_LCDDout;
e <= ww_e;
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

\rtl~11clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~11_combout\);

\U0|U2|U0|CurrentState.STATE_RECEIVING~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0|U2|U0|CurrentState.STATE_RECEIVING~q\);

\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & 
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\);

\U3|U1|WrD~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U3|U1|WrD~combout\);

\rtl~10clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~10_combout\);

\U2|U0|UO|CURRENT_STATE.STATE_1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U2|U0|UO|CURRENT_STATE.STATE_1~q\);

\rtl~14clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~14_combout\);

\U3|U0|UO|CURRENT_STATE.STATE_1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U3|U0|UO|CURRENT_STATE.STATE_1~q\);

\altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \altera_internal_jtag~TCKUTAP\);

\U2|U0|counter_rst~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U2|U0|counter_rst~combout\);

\rtl~9clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~9_combout\);

\rtl~13clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~13_combout\);

\rtl~8clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~8_combout\);

\rtl~12clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~12_combout\);

\rtl~15clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~15_combout\);

\Mclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mclk~input_o\);
\U0|U0|U0|U0|ALT_INV_O2~0_combout\ <= NOT \U0|U0|U0|U0|O2~0_combout\;
\U0|U0|U0|U0|ALT_INV_O1~0_combout\ <= NOT \U0|U0|U0|U0|O1~0_combout\;
\ALT_INV_altera_internal_jtag~TMSUTAP\ <= NOT \altera_internal_jtag~TMSUTAP\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\;
\U2|U0|ALT_INV_counter_rst~clkctrl_outclk\ <= NOT \U2|U0|counter_rst~clkctrl_outclk\;
\ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ <= NOT \altera_internal_jtag~TCKUTAPclkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: FF_X36_Y38_N1
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

-- Location: LCCOMB_X36_Y38_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\);

-- Location: LCCOMB_X36_Y38_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\);

-- Location: LCCOMB_X36_Y38_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\);

-- Location: LCCOMB_X36_Y38_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\);

-- Location: LCCOMB_X36_Y38_N0
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

-- Location: LCCOMB_X44_Y52_N10
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

-- Location: LCCOMB_X39_Y38_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\);

-- Location: LCCOMB_X39_Y38_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\);

-- Location: LCCOMB_X39_Y38_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\);

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

-- Location: IOOBUF_X46_Y54_N2
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
	i => \U2|U1|CurrentState.STATE_TRAMA_RECEBIDA~q\,
	devoe => ww_devoe,
	o => ww_e);

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
	i => \U4|circuit_gen:0:hex_digit|Ndout[2]~6_combout\,
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
	i => \U4|circuit_gen:0:hex_digit|Ndout[3]~8_combout\,
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
	i => \U4|circuit_gen:0:hex_digit|Ndout[4]~10_combout\,
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
	i => \U4|circuit_gen:0:hex_digit|Ndout[5]~12_combout\,
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
	i => \U4|circuit_gen:0:hex_digit|Ndout[6]~14_combout\,
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
	i => \U4|circuit_gen:1:hex_digit|Ndout[2]~6_combout\,
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
	i => \U4|circuit_gen:1:hex_digit|Ndout[3]~8_combout\,
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
	i => \U4|circuit_gen:1:hex_digit|Ndout[4]~10_combout\,
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
	i => \U4|circuit_gen:1:hex_digit|Ndout[5]~12_combout\,
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
	i => \U4|circuit_gen:1:hex_digit|Ndout[6]~14_combout\,
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
	i => \U4|circuit_gen:2:hex_digit|Ndout[2]~6_combout\,
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
	i => \U4|circuit_gen:2:hex_digit|Ndout[3]~8_combout\,
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
	i => \U4|circuit_gen:2:hex_digit|Ndout[4]~10_combout\,
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
	i => \U4|circuit_gen:2:hex_digit|Ndout[5]~12_combout\,
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
	i => \U4|circuit_gen:2:hex_digit|Ndout[6]~14_combout\,
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
	i => \U4|circuit_gen:3:hex_digit|Ndout[2]~6_combout\,
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
	i => \U4|circuit_gen:3:hex_digit|Ndout[3]~8_combout\,
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
	i => \U4|circuit_gen:3:hex_digit|Ndout[4]~10_combout\,
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
	i => \U4|circuit_gen:3:hex_digit|Ndout[5]~12_combout\,
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
	i => \U4|circuit_gen:3:hex_digit|Ndout[6]~14_combout\,
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
	i => \U4|circuit_gen:4:hex_digit|Ndout[2]~6_combout\,
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
	i => \U4|circuit_gen:4:hex_digit|Ndout[3]~8_combout\,
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
	i => \U4|circuit_gen:4:hex_digit|Ndout[4]~10_combout\,
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
	i => \U4|circuit_gen:4:hex_digit|Ndout[5]~12_combout\,
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
	i => \U4|circuit_gen:4:hex_digit|Ndout[6]~14_combout\,
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
	i => \U4|circuit_gen:5:hex_digit|Ndout[2]~6_combout\,
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
	i => \U4|circuit_gen:5:hex_digit|Ndout[3]~8_combout\,
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
	i => \U4|circuit_gen:5:hex_digit|Ndout[4]~10_combout\,
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
	i => \U4|circuit_gen:5:hex_digit|Ndout[5]~12_combout\,
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
	i => \U4|circuit_gen:5:hex_digit|Ndout[6]~14_combout\,
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

-- Location: IOIBUF_X78_Y29_N22
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

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X43_Y35_N26
\U0|U1|U1|U1|Count[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U1|U1|Count[0]~3_combout\ = \U0|U1|U1|U1|Count\(0) $ (VCC)
-- \U0|U1|U1|U1|Count[0]~4\ = CARRY(\U0|U1|U1|U1|Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U1|U1|Count\(0),
	datad => VCC,
	combout => \U0|U1|U1|U1|Count[0]~3_combout\,
	cout => \U0|U1|U1|U1|Count[0]~4\);

-- Location: IOIBUF_X54_Y54_N29
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

-- Location: LCCOMB_X43_Y35_N8
\U0|U1|U0|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U0|Selector0~0_combout\ = (\U0|U1|U0|CurrentState.STATE_INC_GET~q\) # ((\U0|U1|U0|CurrentState.STATE_END_WRITE~q\ & !\U0|U0|U1|currentState.STATE_2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U0|CurrentState.STATE_END_WRITE~q\,
	datab => \U0|U1|U0|CurrentState.STATE_INC_GET~q\,
	datad => \U0|U0|U1|currentState.STATE_2~q\,
	combout => \U0|U1|U0|Selector0~0_combout\);

-- Location: LCCOMB_X43_Y35_N28
\U0|U1|U1|U1|Count[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U1|U1|Count[1]~5_combout\ = (\U0|U1|U1|U1|Count\(1) & ((\U0|U1|U0|CurrentState.STATE_INC_GET~q\ & (\U0|U1|U1|U1|Count[0]~4\ & VCC)) # (!\U0|U1|U0|CurrentState.STATE_INC_GET~q\ & (!\U0|U1|U1|U1|Count[0]~4\)))) # (!\U0|U1|U1|U1|Count\(1) & 
-- ((\U0|U1|U0|CurrentState.STATE_INC_GET~q\ & (!\U0|U1|U1|U1|Count[0]~4\)) # (!\U0|U1|U0|CurrentState.STATE_INC_GET~q\ & ((\U0|U1|U1|U1|Count[0]~4\) # (GND)))))
-- \U0|U1|U1|U1|Count[1]~6\ = CARRY((\U0|U1|U1|U1|Count\(1) & (!\U0|U1|U0|CurrentState.STATE_INC_GET~q\ & !\U0|U1|U1|U1|Count[0]~4\)) # (!\U0|U1|U1|U1|Count\(1) & ((!\U0|U1|U1|U1|Count[0]~4\) # (!\U0|U1|U0|CurrentState.STATE_INC_GET~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U1|U1|Count\(1),
	datab => \U0|U1|U0|CurrentState.STATE_INC_GET~q\,
	datad => VCC,
	cin => \U0|U1|U1|U1|Count[0]~4\,
	combout => \U0|U1|U1|U1|Count[1]~5_combout\,
	cout => \U0|U1|U1|U1|Count[1]~6\);

-- Location: FF_X43_Y35_N29
\U0|U1|U1|U1|Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U1|U1|U1|Count[1]~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U0|U1|U1|Ce_X~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|U1|U1|Count\(1));

-- Location: LCCOMB_X43_Y35_N30
\U0|U1|U1|U1|Count[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U1|U1|Count[2]~7_combout\ = \U0|U1|U1|U1|Count\(2) $ (\U0|U1|U1|U1|Count[1]~6\ $ (!\U0|U1|U0|CurrentState.STATE_INC_GET~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U1|U1|Count\(2),
	datad => \U0|U1|U0|CurrentState.STATE_INC_GET~q\,
	cin => \U0|U1|U1|U1|Count[1]~6\,
	combout => \U0|U1|U1|U1|Count[2]~7_combout\);

-- Location: FF_X43_Y35_N31
\U0|U1|U1|U1|Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U1|U1|U1|Count[2]~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U0|U1|U1|Ce_X~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|U1|U1|Count\(2));

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

-- Location: LCCOMB_X36_Y37_N20
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

-- Location: LCCOMB_X36_Y37_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\);

-- Location: LCCOMB_X36_Y37_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\);

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

-- Location: LCCOMB_X30_Y38_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\);

-- Location: LCCOMB_X41_Y38_N12
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

-- Location: FF_X41_Y38_N13
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

-- Location: LCCOMB_X41_Y38_N10
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

-- Location: FF_X41_Y38_N11
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

-- Location: LCCOMB_X41_Y38_N8
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

-- Location: FF_X41_Y38_N9
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

-- Location: LCCOMB_X35_Y38_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\);

-- Location: FF_X35_Y38_N29
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

-- Location: LCCOMB_X35_Y38_N26
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

-- Location: FF_X35_Y38_N27
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

-- Location: LCCOMB_X35_Y38_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\);

-- Location: FF_X35_Y38_N23
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

-- Location: LCCOMB_X35_Y38_N20
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

-- Location: FF_X35_Y38_N21
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

-- Location: LCCOMB_X35_Y38_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\);

-- Location: FF_X35_Y38_N17
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

-- Location: LCCOMB_X35_Y38_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\);

-- Location: LCCOMB_X35_Y38_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\);

-- Location: FF_X35_Y38_N11
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

-- Location: LCCOMB_X37_Y38_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\);

-- Location: FF_X37_Y38_N15
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

-- Location: LCCOMB_X37_Y38_N26
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

-- Location: FF_X37_Y38_N27
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

-- Location: LCCOMB_X37_Y38_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\);

-- Location: FF_X37_Y38_N3
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

-- Location: LCCOMB_X37_Y38_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\);

-- Location: FF_X37_Y38_N25
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

-- Location: LCCOMB_X37_Y38_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\);

-- Location: FF_X37_Y38_N17
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

-- Location: LCCOMB_X37_Y38_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\);

-- Location: FF_X38_Y37_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8));

-- Location: LCCOMB_X35_Y38_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\);

-- Location: FF_X35_Y38_N9
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

-- Location: LCCOMB_X35_Y38_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\);

-- Location: FF_X35_Y38_N25
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

-- Location: LCCOMB_X35_Y38_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\);

-- Location: FF_X35_Y38_N19
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

-- Location: LCCOMB_X35_Y38_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\);

-- Location: FF_X35_Y38_N15
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

-- Location: FF_X30_Y38_N21
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

-- Location: FF_X30_Y38_N15
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

-- Location: LCCOMB_X30_Y38_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\);

-- Location: FF_X30_Y38_N25
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

-- Location: LCCOMB_X30_Y38_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\);

-- Location: FF_X30_Y38_N27
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

-- Location: FF_X30_Y38_N23
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

-- Location: LCCOMB_X30_Y38_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\);

-- Location: FF_X30_Y38_N9
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

-- Location: LCCOMB_X30_Y38_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\);

-- Location: FF_X30_Y38_N29
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

-- Location: LCCOMB_X30_Y38_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\);

-- Location: FF_X30_Y38_N11
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

-- Location: LCCOMB_X30_Y38_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\);

-- Location: FF_X30_Y38_N13
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

-- Location: LCCOMB_X30_Y38_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y38_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\);

-- Location: FF_X30_Y38_N31
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

-- Location: LCCOMB_X30_Y38_N14
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

-- Location: LCCOMB_X30_Y38_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\);

-- Location: FF_X30_Y38_N19
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

-- Location: LCCOMB_X30_Y38_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\);

-- Location: FF_X30_Y38_N17
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

-- Location: LCCOMB_X37_Y37_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\);

-- Location: LCCOMB_X37_Y37_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\);

-- Location: FF_X36_Y37_N27
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

-- Location: LCCOMB_X36_Y37_N28
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

-- Location: FF_X36_Y37_N29
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

-- Location: LCCOMB_X36_Y37_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\);

-- Location: LCCOMB_X36_Y37_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\);

-- Location: FF_X36_Y37_N21
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

-- Location: LCCOMB_X36_Y37_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\);

-- Location: FF_X36_Y37_N23
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

-- Location: FF_X36_Y37_N25
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

-- Location: LCCOMB_X36_Y37_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\);

-- Location: LCCOMB_X36_Y37_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\);

-- Location: LCCOMB_X36_Y37_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\);

-- Location: LCCOMB_X36_Y37_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\);

-- Location: LCCOMB_X36_Y37_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\);

-- Location: LCCOMB_X37_Y37_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\);

-- Location: LCCOMB_X37_Y37_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\);

-- Location: FF_X37_Y37_N23
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

-- Location: LCCOMB_X36_Y37_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\);

-- Location: LCCOMB_X36_Y37_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\);

-- Location: FF_X36_Y37_N1
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

-- Location: LCCOMB_X36_Y37_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\);

-- Location: FF_X36_Y37_N11
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

-- Location: LCCOMB_X36_Y37_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\);

-- Location: FF_X36_Y37_N9
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

-- Location: LCCOMB_X37_Y38_N0
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

-- Location: LCCOMB_X38_Y38_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\);

-- Location: LCCOMB_X38_Y38_N4
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

-- Location: LCCOMB_X43_Y35_N2
\U0|U2|U0|NextState.STATE_RECEIVING~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U0|NextState.STATE_RECEIVING~0_combout\ = (\U0|U1|U0|CurrentState.STATE_READ_KEY~q\ & ((\U0|U2|U0|CurrentState.STATE_RECEIVING~q\) # (!\U0|U2|U0|CurrentState.STATE_WAITING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|U0|CurrentState.STATE_READ_KEY~q\,
	datac => \U0|U2|U0|CurrentState.STATE_RECEIVING~q\,
	datad => \U0|U2|U0|CurrentState.STATE_WAITING~q\,
	combout => \U0|U2|U0|NextState.STATE_RECEIVING~0_combout\);

-- Location: FF_X43_Y35_N3
\U0|U2|U0|CurrentState.STATE_RECEIVING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U2|U0|NextState.STATE_RECEIVING~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U0|CurrentState.STATE_RECEIVING~q\);

-- Location: CLKCTRL_G1
\U0|U2|U0|CurrentState.STATE_RECEIVING~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0|U2|U0|CurrentState.STATE_RECEIVING~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|U2|U0|CurrentState.STATE_RECEIVING~clkctrl_outclk\);

-- Location: LCCOMB_X44_Y34_N6
\U0|U1|U1|U3|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U1|U3|Add0~0_combout\ = \U0|U1|U1|U3|Count\(0) $ (VCC)
-- \U0|U1|U1|U3|Add0~1\ = CARRY(\U0|U1|U1|U3|Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U1|U3|Count\(0),
	datad => VCC,
	combout => \U0|U1|U1|U3|Add0~0_combout\,
	cout => \U0|U1|U1|U3|Add0~1\);

-- Location: FF_X44_Y34_N7
\U0|U1|U1|U3|Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U1|U1|U3|Add0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U0|U1|U0|CurrentState.STATE_INC_PUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|U1|U3|Count\(0));

-- Location: LCCOMB_X44_Y34_N8
\U0|U1|U1|U3|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U1|U3|Add0~2_combout\ = (\U0|U1|U1|U3|Count\(1) & (!\U0|U1|U1|U3|Add0~1\)) # (!\U0|U1|U1|U3|Count\(1) & ((\U0|U1|U1|U3|Add0~1\) # (GND)))
-- \U0|U1|U1|U3|Add0~3\ = CARRY((!\U0|U1|U1|U3|Add0~1\) # (!\U0|U1|U1|U3|Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|U1|U3|Count\(1),
	datad => VCC,
	cin => \U0|U1|U1|U3|Add0~1\,
	combout => \U0|U1|U1|U3|Add0~2_combout\,
	cout => \U0|U1|U1|U3|Add0~3\);

-- Location: FF_X44_Y34_N9
\U0|U1|U1|U3|Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U1|U1|U3|Add0~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U0|U1|U0|CurrentState.STATE_INC_PUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|U1|U3|Count\(1));

-- Location: LCCOMB_X44_Y34_N10
\U0|U1|U1|U3|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U1|U3|Add0~4_combout\ = \U0|U1|U1|U3|Add0~3\ $ (!\U0|U1|U1|U3|Count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U0|U1|U1|U3|Count\(2),
	cin => \U0|U1|U1|U3|Add0~3\,
	combout => \U0|U1|U1|U3|Add0~4_combout\);

-- Location: FF_X44_Y34_N11
\U0|U1|U1|U3|Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U1|U1|U3|Add0~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U0|U1|U0|CurrentState.STATE_INC_PUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|U1|U3|Count\(2));

-- Location: LCCOMB_X44_Y35_N20
\rtl~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~10_combout\ = (!\U0|U1|U1|U3|Count\(1) & (!\U0|U1|U1|U3|Count\(0) & (\U0|U1|U1|U3|Count\(2) & \U0|U1|U0|CurrentState.STATE_WRITE_KEY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U1|U3|Count\(1),
	datab => \U0|U1|U1|U3|Count\(0),
	datac => \U0|U1|U1|U3|Count\(2),
	datad => \U0|U1|U0|CurrentState.STATE_WRITE_KEY~q\,
	combout => \rtl~10_combout\);

-- Location: CLKCTRL_G13
\rtl~10clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~10clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~10clkctrl_outclk\);

-- Location: LCCOMB_X43_Y33_N6
\U0|U1|U2|ram~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~17_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & (!\U0|U0|U0|U2|U3|U2|Q~q\)) # (!GLOBAL(\rtl~10clkctrl_outclk\) & ((\U0|U1|U2|ram~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U2|U3|U2|Q~q\,
	datac => \rtl~10clkctrl_outclk\,
	datad => \U0|U1|U2|ram~17_combout\,
	combout => \U0|U1|U2|ram~17_combout\);

-- Location: LCCOMB_X44_Y35_N2
\U0|U1|U1|U4|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U1|U4|Add0~0_combout\ = \U0|U1|U1|U4|Count\(0) $ (VCC)
-- \U0|U1|U1|U4|Add0~1\ = CARRY(\U0|U1|U1|U4|Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|U1|U4|Count\(0),
	datad => VCC,
	combout => \U0|U1|U1|U4|Add0~0_combout\,
	cout => \U0|U1|U1|U4|Add0~1\);

-- Location: FF_X44_Y35_N3
\U0|U1|U1|U4|Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U1|U1|U4|Add0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U0|U1|U0|CurrentState.STATE_INC_GET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|U1|U4|Count\(0));

-- Location: LCCOMB_X44_Y35_N4
\U0|U1|U1|U4|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U1|U4|Add0~2_combout\ = (\U0|U1|U1|U4|Count\(1) & (!\U0|U1|U1|U4|Add0~1\)) # (!\U0|U1|U1|U4|Count\(1) & ((\U0|U1|U1|U4|Add0~1\) # (GND)))
-- \U0|U1|U1|U4|Add0~3\ = CARRY((!\U0|U1|U1|U4|Add0~1\) # (!\U0|U1|U1|U4|Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|U1|U4|Count\(1),
	datad => VCC,
	cin => \U0|U1|U1|U4|Add0~1\,
	combout => \U0|U1|U1|U4|Add0~2_combout\,
	cout => \U0|U1|U1|U4|Add0~3\);

-- Location: FF_X44_Y35_N5
\U0|U1|U1|U4|Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U1|U1|U4|Add0~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U0|U1|U0|CurrentState.STATE_INC_GET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|U1|U4|Count\(1));

-- Location: LCCOMB_X44_Y35_N18
\U0|U1|U1|U0|O[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U1|U0|O[1]~1_combout\ = (\U0|U1|U0|CurrentState.STATE_WRITE_KEY~q\ & (\U0|U1|U1|U3|Count\(1))) # (!\U0|U1|U0|CurrentState.STATE_WRITE_KEY~q\ & ((\U0|U1|U1|U4|Count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U1|U3|Count\(1),
	datac => \U0|U1|U1|U4|Count\(1),
	datad => \U0|U1|U0|CurrentState.STATE_WRITE_KEY~q\,
	combout => \U0|U1|U1|U0|O[1]~1_combout\);

-- Location: LCCOMB_X44_Y35_N16
\U0|U1|U1|U0|O[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U1|U0|O[0]~0_combout\ = (\U0|U1|U0|CurrentState.STATE_WRITE_KEY~q\ & (\U0|U1|U1|U3|Count\(0))) # (!\U0|U1|U0|CurrentState.STATE_WRITE_KEY~q\ & ((\U0|U1|U1|U4|Count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|U1|U3|Count\(0),
	datac => \U0|U1|U0|CurrentState.STATE_WRITE_KEY~q\,
	datad => \U0|U1|U1|U4|Count\(0),
	combout => \U0|U1|U1|U0|O[0]~0_combout\);

-- Location: LCCOMB_X44_Y35_N10
\rtl~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~9_combout\ = (\U0|U1|U1|U3|Count\(1) & (!\U0|U1|U1|U3|Count\(0) & (\U0|U1|U1|U3|Count\(2) & \U0|U1|U0|CurrentState.STATE_WRITE_KEY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U1|U3|Count\(1),
	datab => \U0|U1|U1|U3|Count\(0),
	datac => \U0|U1|U1|U3|Count\(2),
	datad => \U0|U1|U0|CurrentState.STATE_WRITE_KEY~q\,
	combout => \rtl~9_combout\);

-- Location: CLKCTRL_G18
\rtl~9clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~9clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~9clkctrl_outclk\);

-- Location: LCCOMB_X43_Y33_N28
\U0|U1|U2|ram~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~25_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (!\U0|U0|U0|U2|U3|U2|Q~q\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\U0|U1|U2|ram~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~9clkctrl_outclk\,
	datab => \U0|U0|U0|U2|U3|U2|Q~q\,
	datad => \U0|U1|U2|ram~25_combout\,
	combout => \U0|U1|U2|ram~25_combout\);

-- Location: LCCOMB_X43_Y33_N10
\U0|U1|U2|ram~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~37_combout\ = (\U0|U1|U1|U0|O[1]~1_combout\ & (((\U0|U1|U1|U0|O[0]~0_combout\) # (\U0|U1|U2|ram~25_combout\)))) # (!\U0|U1|U1|U0|O[1]~1_combout\ & (\U0|U1|U2|ram~17_combout\ & (!\U0|U1|U1|U0|O[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U2|ram~17_combout\,
	datab => \U0|U1|U1|U0|O[1]~1_combout\,
	datac => \U0|U1|U1|U0|O[0]~0_combout\,
	datad => \U0|U1|U2|ram~25_combout\,
	combout => \U0|U1|U2|ram~37_combout\);

-- Location: LCCOMB_X44_Y35_N30
\rtl~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~11_combout\ = (\U0|U1|U1|U3|Count\(1) & (\U0|U1|U1|U3|Count\(0) & (\U0|U1|U1|U3|Count\(2) & \U0|U1|U0|CurrentState.STATE_WRITE_KEY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U1|U3|Count\(1),
	datab => \U0|U1|U1|U3|Count\(0),
	datac => \U0|U1|U1|U3|Count\(2),
	datad => \U0|U1|U0|CurrentState.STATE_WRITE_KEY~q\,
	combout => \rtl~11_combout\);

-- Location: CLKCTRL_G17
\rtl~11clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~11clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~11clkctrl_outclk\);

-- Location: LCCOMB_X43_Y33_N0
\U0|U1|U2|ram~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~29_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (!\U0|U0|U0|U2|U3|U2|Q~q\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\U0|U1|U2|ram~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U2|U3|U2|Q~q\,
	datac => \rtl~11clkctrl_outclk\,
	datad => \U0|U1|U2|ram~29_combout\,
	combout => \U0|U1|U2|ram~29_combout\);

-- Location: LCCOMB_X44_Y35_N14
\rtl~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~8_combout\ = (!\U0|U1|U1|U3|Count\(1) & (\U0|U1|U1|U3|Count\(0) & (\U0|U1|U1|U3|Count\(2) & \U0|U1|U0|CurrentState.STATE_WRITE_KEY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U1|U3|Count\(1),
	datab => \U0|U1|U1|U3|Count\(0),
	datac => \U0|U1|U1|U3|Count\(2),
	datad => \U0|U1|U0|CurrentState.STATE_WRITE_KEY~q\,
	combout => \rtl~8_combout\);

-- Location: CLKCTRL_G19
\rtl~8clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~8clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~8clkctrl_outclk\);

-- Location: LCCOMB_X42_Y33_N0
\U0|U1|U2|ram~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~21_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (!\U0|U0|U0|U2|U3|U2|Q~q\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\U0|U1|U2|ram~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U2|U3|U2|Q~q\,
	datac => \rtl~8clkctrl_outclk\,
	datad => \U0|U1|U2|ram~21_combout\,
	combout => \U0|U1|U2|ram~21_combout\);

-- Location: LCCOMB_X43_Y33_N20
\U0|U1|U2|ram~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~38_combout\ = (\U0|U1|U2|ram~37_combout\ & ((\U0|U1|U2|ram~29_combout\) # ((!\U0|U1|U1|U0|O[0]~0_combout\)))) # (!\U0|U1|U2|ram~37_combout\ & (((\U0|U1|U2|ram~21_combout\ & \U0|U1|U1|U0|O[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U2|ram~37_combout\,
	datab => \U0|U1|U2|ram~29_combout\,
	datac => \U0|U1|U2|ram~21_combout\,
	datad => \U0|U1|U1|U0|O[0]~0_combout\,
	combout => \U0|U1|U2|ram~38_combout\);

-- Location: LCCOMB_X44_Y35_N24
\rtl~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~15_combout\ = (\U0|U1|U1|U3|Count\(1) & (!\U0|U1|U1|U3|Count\(2) & (\U0|U1|U0|CurrentState.STATE_WRITE_KEY~q\ & \U0|U1|U1|U3|Count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U1|U3|Count\(1),
	datab => \U0|U1|U1|U3|Count\(2),
	datac => \U0|U1|U0|CurrentState.STATE_WRITE_KEY~q\,
	datad => \U0|U1|U1|U3|Count\(0),
	combout => \rtl~15_combout\);

-- Location: CLKCTRL_G15
\rtl~15clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~15clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~15clkctrl_outclk\);

-- Location: LCCOMB_X42_Y34_N14
\U0|U1|U2|ram~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~13_combout\ = (GLOBAL(\rtl~15clkctrl_outclk\) & (!\U0|U0|U0|U2|U3|U2|Q~q\)) # (!GLOBAL(\rtl~15clkctrl_outclk\) & ((\U0|U1|U2|ram~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U2|U3|U2|Q~q\,
	datab => \rtl~15clkctrl_outclk\,
	datac => \U0|U1|U2|ram~13_combout\,
	combout => \U0|U1|U2|ram~13_combout\);

-- Location: LCCOMB_X44_Y35_N0
\rtl~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~12_combout\ = (\U0|U1|U1|U3|Count\(1) & (!\U0|U1|U1|U3|Count\(0) & (!\U0|U1|U1|U3|Count\(2) & \U0|U1|U0|CurrentState.STATE_WRITE_KEY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U1|U3|Count\(1),
	datab => \U0|U1|U1|U3|Count\(0),
	datac => \U0|U1|U1|U3|Count\(2),
	datad => \U0|U1|U0|CurrentState.STATE_WRITE_KEY~q\,
	combout => \rtl~12_combout\);

-- Location: CLKCTRL_G8
\rtl~12clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~12clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~12clkctrl_outclk\);

-- Location: LCCOMB_X44_Y34_N16
\U0|U1|U2|ram~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~9_combout\ = (GLOBAL(\rtl~12clkctrl_outclk\) & (!\U0|U0|U0|U2|U3|U2|Q~q\)) # (!GLOBAL(\rtl~12clkctrl_outclk\) & ((\U0|U1|U2|ram~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U2|U3|U2|Q~q\,
	datac => \rtl~12clkctrl_outclk\,
	datad => \U0|U1|U2|ram~9_combout\,
	combout => \U0|U1|U2|ram~9_combout\);

-- Location: LCCOMB_X44_Y35_N26
\rtl~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~13_combout\ = (!\U0|U1|U1|U3|Count\(1) & (\U0|U1|U1|U3|Count\(0) & (!\U0|U1|U1|U3|Count\(2) & \U0|U1|U0|CurrentState.STATE_WRITE_KEY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U1|U3|Count\(1),
	datab => \U0|U1|U1|U3|Count\(0),
	datac => \U0|U1|U1|U3|Count\(2),
	datad => \U0|U1|U0|CurrentState.STATE_WRITE_KEY~q\,
	combout => \rtl~13_combout\);

-- Location: CLKCTRL_G16
\rtl~13clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~13clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~13clkctrl_outclk\);

-- Location: LCCOMB_X43_Y34_N6
\U0|U1|U2|ram~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~5_combout\ = (GLOBAL(\rtl~13clkctrl_outclk\) & (!\U0|U0|U0|U2|U3|U2|Q~q\)) # (!GLOBAL(\rtl~13clkctrl_outclk\) & ((\U0|U1|U2|ram~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U2|U3|U2|Q~q\,
	datac => \rtl~13clkctrl_outclk\,
	datad => \U0|U1|U2|ram~5_combout\,
	combout => \U0|U1|U2|ram~5_combout\);

-- Location: LCCOMB_X44_Y35_N28
\rtl~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~14_combout\ = (!\U0|U1|U1|U3|Count\(1) & (!\U0|U1|U1|U3|Count\(0) & (!\U0|U1|U1|U3|Count\(2) & \U0|U1|U0|CurrentState.STATE_WRITE_KEY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U1|U3|Count\(1),
	datab => \U0|U1|U1|U3|Count\(0),
	datac => \U0|U1|U1|U3|Count\(2),
	datad => \U0|U1|U0|CurrentState.STATE_WRITE_KEY~q\,
	combout => \rtl~14_combout\);

-- Location: CLKCTRL_G6
\rtl~14clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~14clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~14clkctrl_outclk\);

-- Location: LCCOMB_X43_Y34_N24
\U0|U1|U2|ram~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~1_combout\ = (GLOBAL(\rtl~14clkctrl_outclk\) & (!\U0|U0|U0|U2|U3|U2|Q~q\)) # (!GLOBAL(\rtl~14clkctrl_outclk\) & ((\U0|U1|U2|ram~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U2|U3|U2|Q~q\,
	datac => \rtl~14clkctrl_outclk\,
	datad => \U0|U1|U2|ram~1_combout\,
	combout => \U0|U1|U2|ram~1_combout\);

-- Location: LCCOMB_X43_Y34_N10
\U0|U1|U2|ram~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~39_combout\ = (\U0|U1|U1|U0|O[1]~1_combout\ & (((\U0|U1|U1|U0|O[0]~0_combout\)))) # (!\U0|U1|U1|U0|O[1]~1_combout\ & ((\U0|U1|U1|U0|O[0]~0_combout\ & (\U0|U1|U2|ram~5_combout\)) # (!\U0|U1|U1|U0|O[0]~0_combout\ & 
-- ((\U0|U1|U2|ram~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U2|ram~5_combout\,
	datab => \U0|U1|U2|ram~1_combout\,
	datac => \U0|U1|U1|U0|O[1]~1_combout\,
	datad => \U0|U1|U1|U0|O[0]~0_combout\,
	combout => \U0|U1|U2|ram~39_combout\);

-- Location: LCCOMB_X43_Y34_N20
\U0|U1|U2|ram~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~40_combout\ = (\U0|U1|U1|U0|O[1]~1_combout\ & ((\U0|U1|U2|ram~39_combout\ & (\U0|U1|U2|ram~13_combout\)) # (!\U0|U1|U2|ram~39_combout\ & ((\U0|U1|U2|ram~9_combout\))))) # (!\U0|U1|U1|U0|O[1]~1_combout\ & (((\U0|U1|U2|ram~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U2|ram~13_combout\,
	datab => \U0|U1|U2|ram~9_combout\,
	datac => \U0|U1|U1|U0|O[1]~1_combout\,
	datad => \U0|U1|U2|ram~39_combout\,
	combout => \U0|U1|U2|ram~40_combout\);

-- Location: LCCOMB_X44_Y35_N6
\U0|U1|U1|U4|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U1|U4|Add0~4_combout\ = \U0|U1|U1|U4|Add0~3\ $ (!\U0|U1|U1|U4|Count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U0|U1|U1|U4|Count\(2),
	cin => \U0|U1|U1|U4|Add0~3\,
	combout => \U0|U1|U1|U4|Add0~4_combout\);

-- Location: FF_X44_Y35_N7
\U0|U1|U1|U4|Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U1|U1|U4|Add0~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U0|U1|U0|CurrentState.STATE_INC_GET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|U1|U4|Count\(2));

-- Location: LCCOMB_X44_Y35_N12
\U0|U1|U1|U0|O[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U1|U0|O[2]~2_combout\ = (\U0|U1|U0|CurrentState.STATE_WRITE_KEY~q\ & (\U0|U1|U1|U3|Count\(2))) # (!\U0|U1|U0|CurrentState.STATE_WRITE_KEY~q\ & ((\U0|U1|U1|U4|Count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|U0|CurrentState.STATE_WRITE_KEY~q\,
	datac => \U0|U1|U1|U3|Count\(2),
	datad => \U0|U1|U1|U4|Count\(2),
	combout => \U0|U1|U1|U0|O[2]~2_combout\);

-- Location: LCCOMB_X43_Y33_N18
\U0|U1|U2|ram~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~41_combout\ = (\U0|U1|U1|U0|O[2]~2_combout\ & (\U0|U1|U2|ram~38_combout\)) # (!\U0|U1|U1|U0|O[2]~2_combout\ & ((\U0|U1|U2|ram~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|U2|ram~38_combout\,
	datac => \U0|U1|U2|ram~40_combout\,
	datad => \U0|U1|U1|U0|O[2]~2_combout\,
	combout => \U0|U1|U2|ram~41_combout\);

-- Location: FF_X43_Y33_N19
\U0|U2|U1|D_X[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U2|U0|CurrentState.STATE_RECEIVING~clkctrl_outclk\,
	d => \U0|U1|U2|ram~41_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U1|D_X\(1));

-- Location: LCCOMB_X38_Y38_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \U0|U2|U1|D_X\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\);

-- Location: LCCOMB_X38_Y38_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\);

-- Location: LCCOMB_X38_Y38_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\);

-- Location: FF_X38_Y38_N21
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

-- Location: LCCOMB_X42_Y34_N0
\U0|U1|U2|ram~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~8_combout\ = (GLOBAL(\rtl~12clkctrl_outclk\) & (!\U0|U0|U0|U2|U3|U1|Q~q\)) # (!GLOBAL(\rtl~12clkctrl_outclk\) & ((\U0|U1|U2|ram~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~12clkctrl_outclk\,
	datab => \U0|U0|U0|U2|U3|U1|Q~q\,
	datad => \U0|U1|U2|ram~8_combout\,
	combout => \U0|U1|U2|ram~8_combout\);

-- Location: LCCOMB_X42_Y34_N28
\U0|U1|U2|ram~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~12_combout\ = (GLOBAL(\rtl~15clkctrl_outclk\) & (!\U0|U0|U0|U2|U3|U1|Q~q\)) # (!GLOBAL(\rtl~15clkctrl_outclk\) & ((\U0|U1|U2|ram~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U2|U3|U1|Q~q\,
	datac => \rtl~15clkctrl_outclk\,
	datad => \U0|U1|U2|ram~12_combout\,
	combout => \U0|U1|U2|ram~12_combout\);

-- Location: LCCOMB_X42_Y34_N18
\U0|U1|U2|ram~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~0_combout\ = (GLOBAL(\rtl~14clkctrl_outclk\) & (!\U0|U0|U0|U2|U3|U1|Q~q\)) # (!GLOBAL(\rtl~14clkctrl_outclk\) & ((\U0|U1|U2|ram~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U2|U3|U1|Q~q\,
	datac => \rtl~14clkctrl_outclk\,
	datad => \U0|U1|U2|ram~0_combout\,
	combout => \U0|U1|U2|ram~0_combout\);

-- Location: LCCOMB_X44_Y32_N30
\U0|U1|U2|ram~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~4_combout\ = (GLOBAL(\rtl~13clkctrl_outclk\) & (!\U0|U0|U0|U2|U3|U1|Q~q\)) # (!GLOBAL(\rtl~13clkctrl_outclk\) & ((\U0|U1|U2|ram~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U2|U3|U1|Q~q\,
	datac => \U0|U1|U2|ram~4_combout\,
	datad => \rtl~13clkctrl_outclk\,
	combout => \U0|U1|U2|ram~4_combout\);

-- Location: LCCOMB_X43_Y33_N8
\U0|U1|U2|ram~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~34_combout\ = (\U0|U1|U1|U0|O[1]~1_combout\ & (((\U0|U1|U1|U0|O[0]~0_combout\)))) # (!\U0|U1|U1|U0|O[1]~1_combout\ & ((\U0|U1|U1|U0|O[0]~0_combout\ & ((\U0|U1|U2|ram~4_combout\))) # (!\U0|U1|U1|U0|O[0]~0_combout\ & 
-- (\U0|U1|U2|ram~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U2|ram~0_combout\,
	datab => \U0|U1|U1|U0|O[1]~1_combout\,
	datac => \U0|U1|U2|ram~4_combout\,
	datad => \U0|U1|U1|U0|O[0]~0_combout\,
	combout => \U0|U1|U2|ram~34_combout\);

-- Location: LCCOMB_X43_Y34_N8
\U0|U1|U2|ram~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~35_combout\ = (\U0|U1|U1|U0|O[1]~1_combout\ & ((\U0|U1|U2|ram~34_combout\ & ((\U0|U1|U2|ram~12_combout\))) # (!\U0|U1|U2|ram~34_combout\ & (\U0|U1|U2|ram~8_combout\)))) # (!\U0|U1|U1|U0|O[1]~1_combout\ & (((\U0|U1|U2|ram~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U2|ram~8_combout\,
	datab => \U0|U1|U2|ram~12_combout\,
	datac => \U0|U1|U1|U0|O[1]~1_combout\,
	datad => \U0|U1|U2|ram~34_combout\,
	combout => \U0|U1|U2|ram~35_combout\);

-- Location: LCCOMB_X44_Y32_N28
\U0|U1|U2|ram~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~20_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (!\U0|U0|U0|U2|U3|U1|Q~q\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\U0|U1|U2|ram~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U2|U3|U1|Q~q\,
	datac => \rtl~8clkctrl_outclk\,
	datad => \U0|U1|U2|ram~20_combout\,
	combout => \U0|U1|U2|ram~20_combout\);

-- Location: LCCOMB_X43_Y33_N2
\U0|U1|U2|ram~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~28_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (!\U0|U0|U0|U2|U3|U1|Q~q\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\U0|U1|U2|ram~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U2|U3|U1|Q~q\,
	datac => \rtl~11clkctrl_outclk\,
	datad => \U0|U1|U2|ram~28_combout\,
	combout => \U0|U1|U2|ram~28_combout\);

-- Location: LCCOMB_X43_Y33_N30
\U0|U1|U2|ram~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~24_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (!\U0|U0|U0|U2|U3|U1|Q~q\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\U0|U1|U2|ram~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U2|U3|U1|Q~q\,
	datac => \U0|U1|U2|ram~24_combout\,
	datad => \rtl~9clkctrl_outclk\,
	combout => \U0|U1|U2|ram~24_combout\);

-- Location: LCCOMB_X43_Y33_N16
\U0|U1|U2|ram~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~16_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & (!\U0|U0|U0|U2|U3|U1|Q~q\)) # (!GLOBAL(\rtl~10clkctrl_outclk\) & ((\U0|U1|U2|ram~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U2|U3|U1|Q~q\,
	datac => \rtl~10clkctrl_outclk\,
	datad => \U0|U1|U2|ram~16_combout\,
	combout => \U0|U1|U2|ram~16_combout\);

-- Location: LCCOMB_X43_Y33_N4
\U0|U1|U2|ram~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~32_combout\ = (\U0|U1|U1|U0|O[0]~0_combout\ & (\U0|U1|U1|U0|O[1]~1_combout\)) # (!\U0|U1|U1|U0|O[0]~0_combout\ & ((\U0|U1|U1|U0|O[1]~1_combout\ & (\U0|U1|U2|ram~24_combout\)) # (!\U0|U1|U1|U0|O[1]~1_combout\ & 
-- ((\U0|U1|U2|ram~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U1|U0|O[0]~0_combout\,
	datab => \U0|U1|U1|U0|O[1]~1_combout\,
	datac => \U0|U1|U2|ram~24_combout\,
	datad => \U0|U1|U2|ram~16_combout\,
	combout => \U0|U1|U2|ram~32_combout\);

-- Location: LCCOMB_X43_Y33_N22
\U0|U1|U2|ram~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~33_combout\ = (\U0|U1|U2|ram~32_combout\ & (((\U0|U1|U2|ram~28_combout\) # (!\U0|U1|U1|U0|O[0]~0_combout\)))) # (!\U0|U1|U2|ram~32_combout\ & (\U0|U1|U2|ram~20_combout\ & ((\U0|U1|U1|U0|O[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U2|ram~20_combout\,
	datab => \U0|U1|U2|ram~28_combout\,
	datac => \U0|U1|U2|ram~32_combout\,
	datad => \U0|U1|U1|U0|O[0]~0_combout\,
	combout => \U0|U1|U2|ram~33_combout\);

-- Location: LCCOMB_X43_Y33_N24
\U0|U1|U2|ram~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~36_combout\ = (\U0|U1|U1|U0|O[2]~2_combout\ & ((\U0|U1|U2|ram~33_combout\))) # (!\U0|U1|U1|U0|O[2]~2_combout\ & (\U0|U1|U2|ram~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|U2|ram~35_combout\,
	datac => \U0|U1|U2|ram~33_combout\,
	datad => \U0|U1|U1|U0|O[2]~2_combout\,
	combout => \U0|U1|U2|ram~36_combout\);

-- Location: FF_X43_Y33_N25
\U0|U2|U1|D_X[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U2|U0|CurrentState.STATE_RECEIVING~clkctrl_outclk\,
	d => \U0|U1|U2|ram~36_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U1|D_X\(0));

-- Location: LCCOMB_X38_Y38_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datac => \U0|U2|U1|D_X\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\);

-- Location: FF_X38_Y38_N27
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

-- Location: LCCOMB_X38_Y37_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\);

-- Location: LCCOMB_X38_Y37_N18
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

-- Location: LCCOMB_X38_Y37_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\);

-- Location: LCCOMB_X38_Y37_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\);

-- Location: FF_X38_Y37_N29
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

-- Location: LCCOMB_X36_Y38_N28
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

-- Location: LCCOMB_X37_Y38_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder_combout\);

-- Location: FF_X37_Y38_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\);

-- Location: LCCOMB_X36_Y38_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\);

-- Location: FF_X36_Y38_N3
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

-- Location: LCCOMB_X37_Y38_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\);

-- Location: FF_X37_Y38_N13
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

-- Location: FF_X38_Y38_N17
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

-- Location: LCCOMB_X38_Y38_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\);

-- Location: LCCOMB_X37_Y38_N4
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

-- Location: FF_X37_Y38_N5
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

-- Location: LCCOMB_X38_Y38_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\);

-- Location: LCCOMB_X38_Y38_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\);

-- Location: LCCOMB_X43_Y32_N6
\U0|U1|U2|ram~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~27_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (!\U0|U0|U0|U2|U3|U4|Q~q\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\U0|U1|U2|ram~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U2|U3|U4|Q~q\,
	datac => \rtl~9clkctrl_outclk\,
	datad => \U0|U1|U2|ram~27_combout\,
	combout => \U0|U1|U2|ram~27_combout\);

-- Location: LCCOMB_X43_Y32_N0
\U0|U1|U2|ram~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~19_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & (!\U0|U0|U0|U2|U3|U4|Q~q\)) # (!GLOBAL(\rtl~10clkctrl_outclk\) & ((\U0|U1|U2|ram~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U2|U3|U4|Q~q\,
	datac => \rtl~10clkctrl_outclk\,
	datad => \U0|U1|U2|ram~19_combout\,
	combout => \U0|U1|U2|ram~19_combout\);

-- Location: LCCOMB_X43_Y32_N12
\U0|U1|U2|ram~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~47_combout\ = (\U0|U1|U1|U0|O[1]~1_combout\ & ((\U0|U1|U2|ram~27_combout\) # ((\U0|U1|U1|U0|O[0]~0_combout\)))) # (!\U0|U1|U1|U0|O[1]~1_combout\ & (((\U0|U1|U2|ram~19_combout\ & !\U0|U1|U1|U0|O[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U2|ram~27_combout\,
	datab => \U0|U1|U2|ram~19_combout\,
	datac => \U0|U1|U1|U0|O[1]~1_combout\,
	datad => \U0|U1|U1|U0|O[0]~0_combout\,
	combout => \U0|U1|U2|ram~47_combout\);

-- Location: LCCOMB_X43_Y32_N2
\U0|U1|U2|ram~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~31_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (!\U0|U0|U0|U2|U3|U4|Q~q\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\U0|U1|U2|ram~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~11clkctrl_outclk\,
	datab => \U0|U0|U0|U2|U3|U4|Q~q\,
	datad => \U0|U1|U2|ram~31_combout\,
	combout => \U0|U1|U2|ram~31_combout\);

-- Location: LCCOMB_X44_Y32_N18
\U0|U1|U2|ram~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~23_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (!\U0|U0|U0|U2|U3|U4|Q~q\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\U0|U1|U2|ram~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U2|U3|U4|Q~q\,
	datac => \rtl~8clkctrl_outclk\,
	datad => \U0|U1|U2|ram~23_combout\,
	combout => \U0|U1|U2|ram~23_combout\);

-- Location: LCCOMB_X43_Y32_N30
\U0|U1|U2|ram~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~48_combout\ = (\U0|U1|U2|ram~47_combout\ & ((\U0|U1|U2|ram~31_combout\) # ((!\U0|U1|U1|U0|O[0]~0_combout\)))) # (!\U0|U1|U2|ram~47_combout\ & (((\U0|U1|U2|ram~23_combout\ & \U0|U1|U1|U0|O[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U2|ram~47_combout\,
	datab => \U0|U1|U2|ram~31_combout\,
	datac => \U0|U1|U2|ram~23_combout\,
	datad => \U0|U1|U1|U0|O[0]~0_combout\,
	combout => \U0|U1|U2|ram~48_combout\);

-- Location: LCCOMB_X42_Y34_N6
\U0|U1|U2|ram~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~11_combout\ = (GLOBAL(\rtl~12clkctrl_outclk\) & (!\U0|U0|U0|U2|U3|U4|Q~q\)) # (!GLOBAL(\rtl~12clkctrl_outclk\) & ((\U0|U1|U2|ram~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~12clkctrl_outclk\,
	datac => \U0|U0|U0|U2|U3|U4|Q~q\,
	datad => \U0|U1|U2|ram~11_combout\,
	combout => \U0|U1|U2|ram~11_combout\);

-- Location: LCCOMB_X42_Y34_N16
\U0|U1|U2|ram~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~3_combout\ = (GLOBAL(\rtl~14clkctrl_outclk\) & (!\U0|U0|U0|U2|U3|U4|Q~q\)) # (!GLOBAL(\rtl~14clkctrl_outclk\) & ((\U0|U1|U2|ram~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U2|U3|U4|Q~q\,
	datac => \rtl~14clkctrl_outclk\,
	datad => \U0|U1|U2|ram~3_combout\,
	combout => \U0|U1|U2|ram~3_combout\);

-- Location: LCCOMB_X43_Y34_N2
\U0|U1|U2|ram~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~7_combout\ = (GLOBAL(\rtl~13clkctrl_outclk\) & (!\U0|U0|U0|U2|U3|U4|Q~q\)) # (!GLOBAL(\rtl~13clkctrl_outclk\) & ((\U0|U1|U2|ram~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U2|U3|U4|Q~q\,
	datac => \rtl~13clkctrl_outclk\,
	datad => \U0|U1|U2|ram~7_combout\,
	combout => \U0|U1|U2|ram~7_combout\);

-- Location: LCCOMB_X42_Y34_N4
\U0|U1|U2|ram~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~49_combout\ = (\U0|U1|U1|U0|O[0]~0_combout\ & (((\U0|U1|U1|U0|O[1]~1_combout\) # (\U0|U1|U2|ram~7_combout\)))) # (!\U0|U1|U1|U0|O[0]~0_combout\ & (\U0|U1|U2|ram~3_combout\ & (!\U0|U1|U1|U0|O[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U1|U0|O[0]~0_combout\,
	datab => \U0|U1|U2|ram~3_combout\,
	datac => \U0|U1|U1|U0|O[1]~1_combout\,
	datad => \U0|U1|U2|ram~7_combout\,
	combout => \U0|U1|U2|ram~49_combout\);

-- Location: LCCOMB_X42_Y34_N10
\U0|U1|U2|ram~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~15_combout\ = (GLOBAL(\rtl~15clkctrl_outclk\) & (!\U0|U0|U0|U2|U3|U4|Q~q\)) # (!GLOBAL(\rtl~15clkctrl_outclk\) & ((\U0|U1|U2|ram~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U2|U3|U4|Q~q\,
	datac => \rtl~15clkctrl_outclk\,
	datad => \U0|U1|U2|ram~15_combout\,
	combout => \U0|U1|U2|ram~15_combout\);

-- Location: LCCOMB_X42_Y34_N22
\U0|U1|U2|ram~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~50_combout\ = (\U0|U1|U2|ram~49_combout\ & (((\U0|U1|U2|ram~15_combout\) # (!\U0|U1|U1|U0|O[1]~1_combout\)))) # (!\U0|U1|U2|ram~49_combout\ & (\U0|U1|U2|ram~11_combout\ & (\U0|U1|U1|U0|O[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U2|ram~11_combout\,
	datab => \U0|U1|U2|ram~49_combout\,
	datac => \U0|U1|U1|U0|O[1]~1_combout\,
	datad => \U0|U1|U2|ram~15_combout\,
	combout => \U0|U1|U2|ram~50_combout\);

-- Location: LCCOMB_X43_Y32_N22
\U0|U1|U2|ram~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~51_combout\ = (\U0|U1|U1|U0|O[2]~2_combout\ & (\U0|U1|U2|ram~48_combout\)) # (!\U0|U1|U1|U0|O[2]~2_combout\ & ((\U0|U1|U2|ram~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U2|ram~48_combout\,
	datab => \U0|U1|U1|U0|O[2]~2_combout\,
	datac => \U0|U1|U2|ram~50_combout\,
	combout => \U0|U1|U2|ram~51_combout\);

-- Location: FF_X43_Y32_N23
\U0|U2|U1|D_X[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U2|U0|CurrentState.STATE_RECEIVING~clkctrl_outclk\,
	d => \U0|U1|U2|ram~51_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U1|D_X\(3));

-- Location: LCCOMB_X39_Y37_N0
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

-- Location: LCCOMB_X38_Y38_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \~GND~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\);

-- Location: FF_X38_Y38_N13
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

-- Location: LCCOMB_X38_Y38_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7),
	datac => \~GND~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\);

-- Location: FF_X38_Y38_N3
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

-- Location: LCCOMB_X38_Y38_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6),
	datac => \~GND~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\);

-- Location: FF_X38_Y38_N9
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

-- Location: LCCOMB_X43_Y35_N0
\U0|U2|U0|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U0|Selector1~0_combout\ = (\U0|U2|U0|CurrentState.STATE_RECEIVING~q\ & (((\U0|U2|U0|CurrentState.STATE_ACKNOWLEDGED~q\ & 
-- !\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\)) # (!\U0|U1|U0|CurrentState.STATE_READ_KEY~q\))) # 
-- (!\U0|U2|U0|CurrentState.STATE_RECEIVING~q\ & (((\U0|U2|U0|CurrentState.STATE_ACKNOWLEDGED~q\ & 
-- !\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|U0|CurrentState.STATE_RECEIVING~q\,
	datab => \U0|U1|U0|CurrentState.STATE_READ_KEY~q\,
	datac => \U0|U2|U0|CurrentState.STATE_ACKNOWLEDGED~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\,
	combout => \U0|U2|U0|Selector1~0_combout\);

-- Location: FF_X43_Y35_N1
\U0|U2|U0|CurrentState.STATE_ACKNOWLEDGED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U2|U0|Selector1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U0|CurrentState.STATE_ACKNOWLEDGED~q\);

-- Location: LCCOMB_X38_Y38_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5),
	datad => \U0|U2|U0|CurrentState.STATE_ACKNOWLEDGED~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\);

-- Location: FF_X38_Y38_N23
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

-- Location: LCCOMB_X38_Y38_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\,
	datab => \U0|U2|U1|D_X\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\);

-- Location: LCCOMB_X37_Y38_N10
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

-- Location: FF_X37_Y38_N11
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

-- Location: LCCOMB_X44_Y32_N16
\U0|U0|U0|U2|U3|U3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U2|U3|U3|Q~0_combout\ = \U0|U0|U0|U2|U3|U3|Q~q\ $ (((!\U0|U0|U0|U2|U3|U2|Q~q\ & (!\U0|U0|U0|U2|U3|U1|Q~q\ & !\U0|U0|U1|currentState.STATE_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U2|U3|U2|Q~q\,
	datab => \U0|U0|U0|U2|U3|U1|Q~q\,
	datac => \U0|U0|U0|U2|U3|U3|Q~q\,
	datad => \U0|U0|U1|currentState.STATE_1~q\,
	combout => \U0|U0|U0|U2|U3|U3|Q~0_combout\);

-- Location: FF_X44_Y32_N17
\U0|U0|U0|U2|U3|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U2|U3|U3|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U2|U3|U3|Q~q\);

-- Location: LCCOMB_X43_Y32_N28
\U0|U1|U2|ram~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~30_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (!\U0|U0|U0|U2|U3|U3|Q~q\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\U0|U1|U2|ram~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~11clkctrl_outclk\,
	datab => \U0|U0|U0|U2|U3|U3|Q~q\,
	datad => \U0|U1|U2|ram~30_combout\,
	combout => \U0|U1|U2|ram~30_combout\);

-- Location: LCCOMB_X44_Y32_N0
\U0|U1|U2|ram~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~22_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (!\U0|U0|U0|U2|U3|U3|Q~q\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\U0|U1|U2|ram~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U2|U3|U3|Q~q\,
	datac => \rtl~8clkctrl_outclk\,
	datad => \U0|U1|U2|ram~22_combout\,
	combout => \U0|U1|U2|ram~22_combout\);

-- Location: LCCOMB_X43_Y32_N18
\U0|U1|U2|ram~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~18_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & (!\U0|U0|U0|U2|U3|U3|Q~q\)) # (!GLOBAL(\rtl~10clkctrl_outclk\) & ((\U0|U1|U2|ram~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U2|U3|U3|Q~q\,
	datac => \rtl~10clkctrl_outclk\,
	datad => \U0|U1|U2|ram~18_combout\,
	combout => \U0|U1|U2|ram~18_combout\);

-- Location: LCCOMB_X43_Y32_N16
\U0|U1|U2|ram~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~26_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (!\U0|U0|U0|U2|U3|U3|Q~q\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\U0|U1|U2|ram~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U2|U3|U3|Q~q\,
	datac => \rtl~9clkctrl_outclk\,
	datad => \U0|U1|U2|ram~26_combout\,
	combout => \U0|U1|U2|ram~26_combout\);

-- Location: LCCOMB_X43_Y32_N8
\U0|U1|U2|ram~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~42_combout\ = (\U0|U1|U1|U0|O[0]~0_combout\ & (((\U0|U1|U1|U0|O[1]~1_combout\)))) # (!\U0|U1|U1|U0|O[0]~0_combout\ & ((\U0|U1|U1|U0|O[1]~1_combout\ & ((\U0|U1|U2|ram~26_combout\))) # (!\U0|U1|U1|U0|O[1]~1_combout\ & 
-- (\U0|U1|U2|ram~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U1|U0|O[0]~0_combout\,
	datab => \U0|U1|U2|ram~18_combout\,
	datac => \U0|U1|U1|U0|O[1]~1_combout\,
	datad => \U0|U1|U2|ram~26_combout\,
	combout => \U0|U1|U2|ram~42_combout\);

-- Location: LCCOMB_X43_Y32_N26
\U0|U1|U2|ram~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~43_combout\ = (\U0|U1|U2|ram~42_combout\ & ((\U0|U1|U2|ram~30_combout\) # ((!\U0|U1|U1|U0|O[0]~0_combout\)))) # (!\U0|U1|U2|ram~42_combout\ & (((\U0|U1|U2|ram~22_combout\ & \U0|U1|U1|U0|O[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U2|ram~30_combout\,
	datab => \U0|U1|U2|ram~22_combout\,
	datac => \U0|U1|U2|ram~42_combout\,
	datad => \U0|U1|U1|U0|O[0]~0_combout\,
	combout => \U0|U1|U2|ram~43_combout\);

-- Location: LCCOMB_X42_Y34_N20
\U0|U1|U2|ram~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~14_combout\ = (GLOBAL(\rtl~15clkctrl_outclk\) & (!\U0|U0|U0|U2|U3|U3|Q~q\)) # (!GLOBAL(\rtl~15clkctrl_outclk\) & ((\U0|U1|U2|ram~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U2|U3|U3|Q~q\,
	datac => \rtl~15clkctrl_outclk\,
	datad => \U0|U1|U2|ram~14_combout\,
	combout => \U0|U1|U2|ram~14_combout\);

-- Location: LCCOMB_X42_Y33_N10
\U0|U1|U2|ram~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~6_combout\ = (GLOBAL(\rtl~13clkctrl_outclk\) & (!\U0|U0|U0|U2|U3|U3|Q~q\)) # (!GLOBAL(\rtl~13clkctrl_outclk\) & ((\U0|U1|U2|ram~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U2|U3|U3|Q~q\,
	datac => \rtl~13clkctrl_outclk\,
	datad => \U0|U1|U2|ram~6_combout\,
	combout => \U0|U1|U2|ram~6_combout\);

-- Location: LCCOMB_X42_Y34_N2
\U0|U1|U2|ram~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~2_combout\ = (GLOBAL(\rtl~14clkctrl_outclk\) & (!\U0|U0|U0|U2|U3|U3|Q~q\)) # (!GLOBAL(\rtl~14clkctrl_outclk\) & ((\U0|U1|U2|ram~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U2|U3|U3|Q~q\,
	datac => \rtl~14clkctrl_outclk\,
	datad => \U0|U1|U2|ram~2_combout\,
	combout => \U0|U1|U2|ram~2_combout\);

-- Location: LCCOMB_X42_Y34_N8
\U0|U1|U2|ram~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~44_combout\ = (\U0|U1|U1|U0|O[0]~0_combout\ & ((\U0|U1|U2|ram~6_combout\) # ((\U0|U1|U1|U0|O[1]~1_combout\)))) # (!\U0|U1|U1|U0|O[0]~0_combout\ & (((!\U0|U1|U1|U0|O[1]~1_combout\ & \U0|U1|U2|ram~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U1|U0|O[0]~0_combout\,
	datab => \U0|U1|U2|ram~6_combout\,
	datac => \U0|U1|U1|U0|O[1]~1_combout\,
	datad => \U0|U1|U2|ram~2_combout\,
	combout => \U0|U1|U2|ram~44_combout\);

-- Location: LCCOMB_X42_Y34_N24
\U0|U1|U2|ram~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~10_combout\ = (GLOBAL(\rtl~12clkctrl_outclk\) & (!\U0|U0|U0|U2|U3|U3|Q~q\)) # (!GLOBAL(\rtl~12clkctrl_outclk\) & ((\U0|U1|U2|ram~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~12clkctrl_outclk\,
	datac => \U0|U0|U0|U2|U3|U3|Q~q\,
	datad => \U0|U1|U2|ram~10_combout\,
	combout => \U0|U1|U2|ram~10_combout\);

-- Location: LCCOMB_X42_Y34_N26
\U0|U1|U2|ram~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~45_combout\ = (\U0|U1|U2|ram~44_combout\ & ((\U0|U1|U2|ram~14_combout\) # ((!\U0|U1|U1|U0|O[1]~1_combout\)))) # (!\U0|U1|U2|ram~44_combout\ & (((\U0|U1|U1|U0|O[1]~1_combout\ & \U0|U1|U2|ram~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U2|ram~14_combout\,
	datab => \U0|U1|U2|ram~44_combout\,
	datac => \U0|U1|U1|U0|O[1]~1_combout\,
	datad => \U0|U1|U2|ram~10_combout\,
	combout => \U0|U1|U2|ram~45_combout\);

-- Location: LCCOMB_X43_Y32_N4
\U0|U1|U2|ram~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U2|ram~46_combout\ = (\U0|U1|U1|U0|O[2]~2_combout\ & (\U0|U1|U2|ram~43_combout\)) # (!\U0|U1|U1|U0|O[2]~2_combout\ & ((\U0|U1|U2|ram~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|U1|U0|O[2]~2_combout\,
	datac => \U0|U1|U2|ram~43_combout\,
	datad => \U0|U1|U2|ram~45_combout\,
	combout => \U0|U1|U2|ram~46_combout\);

-- Location: FF_X43_Y32_N5
\U0|U2|U1|D_X[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|U2|U0|CurrentState.STATE_RECEIVING~clkctrl_outclk\,
	d => \U0|U1|U2|ram~46_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U1|D_X\(2));

-- Location: LCCOMB_X37_Y38_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \U0|U2|U1|D_X\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\);

-- Location: FF_X37_Y38_N21
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

-- Location: LCCOMB_X40_Y37_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => VCC,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~5_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~6\);

-- Location: LCCOMB_X40_Y37_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~8\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~9_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~10\);

-- Location: LCCOMB_X40_Y37_N28
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

-- Location: LCCOMB_X37_Y37_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~16\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~16_combout\);

-- Location: FF_X40_Y37_N29
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

-- Location: LCCOMB_X40_Y37_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\);

-- Location: LCCOMB_X40_Y37_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~12\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~13_combout\);

-- Location: FF_X40_Y37_N31
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

-- Location: LCCOMB_X41_Y37_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\);

-- Location: LCCOMB_X40_Y37_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~15_combout\);

-- Location: FF_X40_Y37_N23
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

-- Location: LCCOMB_X40_Y37_N24
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

-- Location: FF_X40_Y37_N25
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

-- Location: FF_X40_Y37_N27
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

-- Location: LCCOMB_X40_Y37_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\);

-- Location: LCCOMB_X39_Y37_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\);

-- Location: LCCOMB_X38_Y37_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\);

-- Location: LCCOMB_X38_Y37_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\);

-- Location: FF_X39_Y37_N25
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

-- Location: LCCOMB_X39_Y37_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\);

-- Location: FF_X39_Y37_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2));

-- Location: LCCOMB_X39_Y37_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\);

-- Location: FF_X39_Y37_N9
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

-- Location: LCCOMB_X39_Y37_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\);

-- Location: FF_X39_Y37_N5
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

-- Location: LCCOMB_X38_Y37_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\);

-- Location: FF_X39_Y37_N27
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

-- Location: LCCOMB_X40_Y37_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4_combout\);

-- Location: LCCOMB_X39_Y37_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~5_combout\);

-- Location: LCCOMB_X40_Y37_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\);

-- Location: LCCOMB_X40_Y37_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\);

-- Location: LCCOMB_X41_Y37_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~5_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\);

-- Location: LCCOMB_X40_Y37_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\);

-- Location: FF_X39_Y37_N15
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

-- Location: LCCOMB_X40_Y37_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\);

-- Location: LCCOMB_X39_Y37_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\);

-- Location: LCCOMB_X40_Y37_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\);

-- Location: LCCOMB_X41_Y37_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\);

-- Location: FF_X39_Y37_N19
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

-- Location: LCCOMB_X40_Y37_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\);

-- Location: LCCOMB_X39_Y37_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~16\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~16_combout\);

-- Location: LCCOMB_X41_Y37_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~16_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\);

-- Location: LCCOMB_X40_Y37_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~17\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~17_combout\);

-- Location: FF_X39_Y37_N23
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

-- Location: LCCOMB_X39_Y37_N22
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

-- Location: LCCOMB_X41_Y37_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~19\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~17_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~18_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~19_combout\);

-- Location: LCCOMB_X41_Y37_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~19_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\);

-- Location: LCCOMB_X41_Y37_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\);

-- Location: LCCOMB_X37_Y37_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\);

-- Location: FF_X41_Y37_N31
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

-- Location: FF_X41_Y37_N5
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

-- Location: FF_X41_Y37_N27
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

-- Location: FF_X41_Y37_N25
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

-- Location: LCCOMB_X37_Y37_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\);

-- Location: LCCOMB_X38_Y37_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\);

-- Location: FF_X37_Y37_N25
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

-- Location: LCCOMB_X37_Y37_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\);

-- Location: FF_X37_Y37_N13
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

-- Location: LCCOMB_X37_Y37_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\);

-- Location: FF_X37_Y37_N17
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

-- Location: LCCOMB_X37_Y37_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\);

-- Location: FF_X37_Y37_N9
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

-- Location: LCCOMB_X38_Y37_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\);

-- Location: LCCOMB_X37_Y37_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\);

-- Location: LCCOMB_X38_Y37_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \~GND~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\);

-- Location: LCCOMB_X38_Y37_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\);

-- Location: FF_X38_Y37_N23
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

-- Location: LCCOMB_X38_Y37_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\);

-- Location: LCCOMB_X38_Y37_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\);

-- Location: LCCOMB_X38_Y37_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\);

-- Location: LCCOMB_X38_Y37_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\);

-- Location: LCCOMB_X38_Y37_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\);

-- Location: FF_X38_Y37_N25
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

-- Location: CLKCTRL_G10
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

-- Location: LCCOMB_X39_Y38_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\);

-- Location: LCCOMB_X39_Y38_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\);

-- Location: FF_X39_Y38_N29
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

-- Location: LCCOMB_X43_Y35_N22
\U0|U2|U0|NextState.STATE_END~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U0|NextState.STATE_END~0_combout\ = (\U0|U2|U0|CurrentState.STATE_WAITING~q\ & 
-- (\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\ & !\U0|U2|U0|CurrentState.STATE_RECEIVING~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|U0|CurrentState.STATE_WAITING~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\,
	datad => \U0|U2|U0|CurrentState.STATE_RECEIVING~q\,
	combout => \U0|U2|U0|NextState.STATE_END~0_combout\);

-- Location: FF_X43_Y35_N23
\U0|U2|U0|CurrentState.STATE_END\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U2|U0|NextState.STATE_END~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U0|CurrentState.STATE_END~q\);

-- Location: LCCOMB_X43_Y35_N12
\U0|U2|U0|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U2|U0|Selector0~0_combout\ = (\U0|U2|U0|CurrentState.STATE_END~q\ & (\auto_h
-- ub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\ & ((\U0|U1|U0|CurrentState.STATE_READ_KEY~q\) # 
-- (\U0|U2|U0|CurrentState.STATE_WAITING~q\)))) # (!\U0|U2|U0|CurrentState.STATE_END~q\ & ((\U0|U1|U0|CurrentState.STATE_READ_KEY~q\) # ((\U0|U2|U0|CurrentState.STATE_WAITING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U2|U0|CurrentState.STATE_END~q\,
	datab => \U0|U1|U0|CurrentState.STATE_READ_KEY~q\,
	datac => \U0|U2|U0|CurrentState.STATE_WAITING~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\,
	combout => \U0|U2|U0|Selector0~0_combout\);

-- Location: FF_X43_Y35_N13
\U0|U2|U0|CurrentState.STATE_WAITING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U2|U0|Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U2|U0|CurrentState.STATE_WAITING~q\);

-- Location: LCCOMB_X43_Y35_N24
\U0|U1|U0|GenerateNextState~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U0|GenerateNextState~0_combout\ = (!\U0|U2|U0|CurrentState.STATE_WAITING~q\ & ((\U0|U1|U1|U1|Count\(0)) # ((\U0|U1|U1|U1|Count\(1)) # (\U0|U1|U1|U1|Count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U1|U1|Count\(0),
	datab => \U0|U1|U1|U1|Count\(1),
	datac => \U0|U1|U1|U1|Count\(2),
	datad => \U0|U2|U0|CurrentState.STATE_WAITING~q\,
	combout => \U0|U1|U0|GenerateNextState~0_combout\);

-- Location: LCCOMB_X43_Y35_N10
\U0|U1|U0|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U0|Selector0~1_combout\ = (!\U0|U1|U0|Selector0~0_combout\ & ((\U0|U1|U0|NextState~0_combout\) # ((\U0|U1|U0|CurrentState.STATE_WAITING~q\) # (\U0|U1|U0|GenerateNextState~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U0|Selector0~0_combout\,
	datab => \U0|U1|U0|NextState~0_combout\,
	datac => \U0|U1|U0|CurrentState.STATE_WAITING~q\,
	datad => \U0|U1|U0|GenerateNextState~0_combout\,
	combout => \U0|U1|U0|Selector0~1_combout\);

-- Location: FF_X43_Y35_N11
\U0|U1|U0|CurrentState.STATE_WAITING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U1|U0|Selector0~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|U0|CurrentState.STATE_WAITING~q\);

-- Location: LCCOMB_X43_Y35_N14
\U0|U1|U0|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U0|Selector2~0_combout\ = (\U0|U1|U0|CurrentState.STATE_READ_KEY~q\ & !\U0|U2|U0|CurrentState.STATE_WAITING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U1|U0|CurrentState.STATE_READ_KEY~q\,
	datad => \U0|U2|U0|CurrentState.STATE_WAITING~q\,
	combout => \U0|U1|U0|Selector2~0_combout\);

-- Location: LCCOMB_X43_Y35_N4
\U0|U1|U0|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U0|Selector2~1_combout\ = (\U0|U1|U0|Selector2~0_combout\) # ((!\U0|U1|U0|CurrentState.STATE_WAITING~q\ & (!\U0|U1|U0|NextState~0_combout\ & \U0|U1|U0|GenerateNextState~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U0|CurrentState.STATE_WAITING~q\,
	datab => \U0|U1|U0|NextState~0_combout\,
	datac => \U0|U1|U0|Selector2~0_combout\,
	datad => \U0|U1|U0|GenerateNextState~0_combout\,
	combout => \U0|U1|U0|Selector2~1_combout\);

-- Location: FF_X43_Y35_N5
\U0|U1|U0|CurrentState.STATE_READ_KEY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U1|U0|Selector2~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|U0|CurrentState.STATE_READ_KEY~q\);

-- Location: LCCOMB_X43_Y35_N16
\U0|U1|U0|NextState.STATE_INC_GET~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U0|NextState.STATE_INC_GET~0_combout\ = (\U0|U1|U0|CurrentState.STATE_READ_KEY~q\ & \U0|U2|U0|CurrentState.STATE_WAITING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U1|U0|CurrentState.STATE_READ_KEY~q\,
	datad => \U0|U2|U0|CurrentState.STATE_WAITING~q\,
	combout => \U0|U1|U0|NextState.STATE_INC_GET~0_combout\);

-- Location: FF_X43_Y35_N17
\U0|U1|U0|CurrentState.STATE_INC_GET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U1|U0|NextState.STATE_INC_GET~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|U0|CurrentState.STATE_INC_GET~q\);

-- Location: LCCOMB_X44_Y35_N8
\U0|U1|U1|Ce_X\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U1|Ce_X~combout\ = (\U0|U1|U0|CurrentState.STATE_INC_GET~q\) # (\U0|U1|U0|CurrentState.STATE_INC_PUT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U0|CurrentState.STATE_INC_GET~q\,
	datac => \U0|U1|U0|CurrentState.STATE_INC_PUT~q\,
	combout => \U0|U1|U1|Ce_X~combout\);

-- Location: FF_X43_Y35_N27
\U0|U1|U1|U1|Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U1|U1|U1|Count[0]~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U0|U1|U1|Ce_X~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|U1|U1|Count\(0));

-- Location: LCCOMB_X43_Y35_N20
\U0|U1|U0|NextState~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U0|NextState~0_combout\ = (\U0|U0|U1|currentState.STATE_2~q\ & (((!\U0|U1|U1|U1|Count\(2)) # (!\U0|U1|U1|U1|Count\(1))) # (!\U0|U1|U1|U1|Count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U1|U1|U1|Count\(0),
	datab => \U0|U1|U1|U1|Count\(1),
	datac => \U0|U1|U1|U1|Count\(2),
	datad => \U0|U0|U1|currentState.STATE_2~q\,
	combout => \U0|U1|U0|NextState~0_combout\);

-- Location: LCCOMB_X43_Y35_N18
\U0|U1|U0|NextState.STATE_ACTIVATE_PUT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U0|NextState.STATE_ACTIVATE_PUT~0_combout\ = (\U0|U1|U0|NextState~0_combout\ & !\U0|U1|U0|CurrentState.STATE_WAITING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U1|U0|NextState~0_combout\,
	datad => \U0|U1|U0|CurrentState.STATE_WAITING~q\,
	combout => \U0|U1|U0|NextState.STATE_ACTIVATE_PUT~0_combout\);

-- Location: FF_X43_Y35_N19
\U0|U1|U0|CurrentState.STATE_ACTIVATE_PUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U1|U0|NextState.STATE_ACTIVATE_PUT~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|U0|CurrentState.STATE_ACTIVATE_PUT~q\);

-- Location: FF_X44_Y35_N25
\U0|U1|U0|CurrentState.STATE_WRITE_KEY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	asdata => \U0|U1|U0|CurrentState.STATE_ACTIVATE_PUT~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|U0|CurrentState.STATE_WRITE_KEY~q\);

-- Location: FF_X44_Y35_N9
\U0|U1|U0|CurrentState.STATE_INC_PUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	asdata => \U0|U1|U0|CurrentState.STATE_WRITE_KEY~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|U0|CurrentState.STATE_INC_PUT~q\);

-- Location: LCCOMB_X43_Y35_N6
\U0|U1|U0|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U1|U0|Selector1~0_combout\ = (\U0|U1|U0|CurrentState.STATE_INC_PUT~q\) # ((\U0|U0|U1|currentState.STATE_2~q\ & \U0|U1|U0|CurrentState.STATE_END_WRITE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|currentState.STATE_2~q\,
	datab => \U0|U1|U0|CurrentState.STATE_INC_PUT~q\,
	datac => \U0|U1|U0|CurrentState.STATE_END_WRITE~q\,
	combout => \U0|U1|U0|Selector1~0_combout\);

-- Location: FF_X43_Y35_N7
\U0|U1|U0|CurrentState.STATE_END_WRITE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U1|U0|Selector1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U1|U0|CurrentState.STATE_END_WRITE~q\);

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

-- Location: LCCOMB_X44_Y32_N22
\U0|U0|U0|U1|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U1|Y~0_combout\ = (\U0|U0|U0|U2|U3|U2|Q~q\ & ((\U0|U0|U0|U2|U3|U1|Q~q\ & (!\Lines[0]~input_o\)) # (!\U0|U0|U0|U2|U3|U1|Q~q\ & ((!\Lines[1]~input_o\))))) # (!\U0|U0|U0|U2|U3|U2|Q~q\ & (((!\U0|U0|U0|U2|U3|U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U2|U3|U2|Q~q\,
	datab => \Lines[0]~input_o\,
	datac => \U0|U0|U0|U2|U3|U1|Q~q\,
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

-- Location: LCCOMB_X44_Y32_N24
\U0|U0|U0|U1|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U1|Y~1_combout\ = (\U0|U0|U0|U1|Y~0_combout\ & (((\U0|U0|U0|U2|U3|U2|Q~q\)) # (!\Lines[3]~input_o\))) # (!\U0|U0|U0|U1|Y~0_combout\ & (((!\Lines[2]~input_o\ & !\U0|U0|U0|U2|U3|U2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U1|Y~0_combout\,
	datab => \Lines[3]~input_o\,
	datac => \Lines[2]~input_o\,
	datad => \U0|U0|U0|U2|U3|U2|Q~q\,
	combout => \U0|U0|U0|U1|Y~1_combout\);

-- Location: LCCOMB_X44_Y32_N2
\U0|U0|U1|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|Selector1~0_combout\ = (\U0|U0|U1|currentState.STATE_1~q\ & (!\U0|U1|U0|CurrentState.STATE_END_WRITE~q\ & (\U0|U0|U1|currentState.STATE_2~q\))) # (!\U0|U0|U1|currentState.STATE_1~q\ & ((\U0|U0|U0|U1|Y~1_combout\) # 
-- ((!\U0|U1|U0|CurrentState.STATE_END_WRITE~q\ & \U0|U0|U1|currentState.STATE_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|currentState.STATE_1~q\,
	datab => \U0|U1|U0|CurrentState.STATE_END_WRITE~q\,
	datac => \U0|U0|U1|currentState.STATE_2~q\,
	datad => \U0|U0|U0|U1|Y~1_combout\,
	combout => \U0|U0|U1|Selector1~0_combout\);

-- Location: FF_X44_Y32_N3
\U0|U0|U1|currentState.STATE_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U1|Selector1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U1|currentState.STATE_2~q\);

-- Location: LCCOMB_X44_Y32_N12
\U0|U0|U1|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|Selector2~0_combout\ = (\U0|U1|U0|CurrentState.STATE_END_WRITE~q\ & ((\U0|U0|U1|currentState.STATE_2~q\) # ((\U0|U0|U1|currentState.STATE_3~q\)))) # (!\U0|U1|U0|CurrentState.STATE_END_WRITE~q\ & (((\U0|U0|U1|currentState.STATE_3~q\ & 
-- \U0|U0|U0|U1|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|currentState.STATE_2~q\,
	datab => \U0|U1|U0|CurrentState.STATE_END_WRITE~q\,
	datac => \U0|U0|U1|currentState.STATE_3~q\,
	datad => \U0|U0|U0|U1|Y~1_combout\,
	combout => \U0|U0|U1|Selector2~0_combout\);

-- Location: FF_X44_Y32_N13
\U0|U0|U1|currentState.STATE_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U1|Selector2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U1|currentState.STATE_3~q\);

-- Location: LCCOMB_X44_Y32_N8
\U0|U0|U1|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U1|Selector0~0_combout\ = (\U0|U0|U0|U1|Y~1_combout\) # ((\U0|U0|U1|currentState.STATE_1~q\ & ((\U0|U1|U0|CurrentState.STATE_END_WRITE~q\) # (!\U0|U0|U1|currentState.STATE_3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U1|currentState.STATE_3~q\,
	datab => \U0|U1|U0|CurrentState.STATE_END_WRITE~q\,
	datac => \U0|U0|U1|currentState.STATE_1~q\,
	datad => \U0|U0|U0|U1|Y~1_combout\,
	combout => \U0|U0|U1|Selector0~0_combout\);

-- Location: FF_X44_Y32_N9
\U0|U0|U1|currentState.STATE_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U1|Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U1|currentState.STATE_1~q\);

-- Location: LCCOMB_X44_Y32_N14
\U0|U0|U0|U2|U3|U1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U2|U3|U1|Q~0_combout\ = \U0|U0|U1|currentState.STATE_1~q\ $ (!\U0|U0|U0|U2|U3|U1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U1|currentState.STATE_1~q\,
	datac => \U0|U0|U0|U2|U3|U1|Q~q\,
	combout => \U0|U0|U0|U2|U3|U1|Q~0_combout\);

-- Location: FF_X44_Y32_N15
\U0|U0|U0|U2|U3|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U2|U3|U1|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U2|U3|U1|Q~q\);

-- Location: LCCOMB_X44_Y32_N4
\U0|U0|U0|U2|U3|U2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U2|U3|U2|Q~0_combout\ = \U0|U0|U0|U2|U3|U2|Q~q\ $ (((!\U0|U0|U0|U2|U3|U1|Q~q\ & !\U0|U0|U1|currentState.STATE_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|U0|U0|U2|U3|U1|Q~q\,
	datac => \U0|U0|U0|U2|U3|U2|Q~q\,
	datad => \U0|U0|U1|currentState.STATE_1~q\,
	combout => \U0|U0|U0|U2|U3|U2|Q~0_combout\);

-- Location: FF_X44_Y32_N5
\U0|U0|U0|U2|U3|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U2|U3|U2|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U2|U3|U2|Q~q\);

-- Location: LCCOMB_X44_Y32_N26
\U0|U0|U0|U2|U3|U4|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U2|U3|U4|Q~0_combout\ = (!\U0|U0|U0|U2|U3|U2|Q~q\ & (!\U0|U0|U0|U2|U3|U1|Q~q\ & (!\U0|U0|U1|currentState.STATE_1~q\ & !\U0|U0|U0|U2|U3|U3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U2|U3|U2|Q~q\,
	datab => \U0|U0|U0|U2|U3|U1|Q~q\,
	datac => \U0|U0|U1|currentState.STATE_1~q\,
	datad => \U0|U0|U0|U2|U3|U3|Q~q\,
	combout => \U0|U0|U0|U2|U3|U4|Q~0_combout\);

-- Location: LCCOMB_X44_Y32_N10
\U0|U0|U0|U2|U3|U4|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U2|U3|U4|Q~1_combout\ = \U0|U0|U0|U2|U3|U4|Q~0_combout\ $ (\U0|U0|U0|U2|U3|U4|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|U0|U0|U2|U3|U4|Q~0_combout\,
	datac => \U0|U0|U0|U2|U3|U4|Q~q\,
	combout => \U0|U0|U0|U2|U3|U4|Q~1_combout\);

-- Location: FF_X44_Y32_N11
\U0|U0|U0|U2|U3|U4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U0|U0|U0|U2|U3|U4|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|U0|U0|U2|U3|U4|Q~q\);

-- Location: LCCOMB_X43_Y32_N24
\U0|U0|U0|U0|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|O0~0_combout\ = (!\U0|U0|U0|U2|U3|U3|Q~q\) # (!\U0|U0|U0|U2|U3|U4|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U0|U0|U2|U3|U4|Q~q\,
	datad => \U0|U0|U0|U2|U3|U3|Q~q\,
	combout => \U0|U0|U0|U0|O0~0_combout\);

-- Location: LCCOMB_X43_Y32_N10
\U0|U0|U0|U0|O1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|U0|U0|U0|O1~0_combout\ = (\U0|U0|U0|U2|U3|U4|Q~q\ & !\U0|U0|U0|U2|U3|U3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|U0|U0|U2|U3|U4|Q~q\,
	datad => \U0|U0|U0|U2|U3|U3|Q~q\,
	combout => \U0|U0|U0|U0|O1~0_combout\);

-- Location: LCCOMB_X42_Y32_N24
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

-- Location: CLKCTRL_G11
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

-- Location: LCCOMB_X39_Y38_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\);

-- Location: FF_X39_Y38_N23
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

-- Location: LCCOMB_X36_Y4_N16
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

-- Location: LCCOMB_X44_Y39_N22
\U2|U0|UO|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|UO|Selector0~0_combout\ = (!\U2|U1|CurrentState.STATE_DONE~q\ & \U2|U0|UO|CURRENT_STATE.STATE_4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|CurrentState.STATE_DONE~q\,
	datac => \U2|U0|UO|CURRENT_STATE.STATE_4~q\,
	combout => \U2|U0|UO|Selector0~0_combout\);

-- Location: LCCOMB_X44_Y39_N6
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

-- Location: CLKCTRL_G12
\U2|U0|UO|CURRENT_STATE.STATE_1~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U2|U0|UO|CURRENT_STATE.STATE_1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U2|U0|UO|CURRENT_STATE.STATE_1~clkctrl_outclk\);

-- Location: FF_X44_Y39_N7
\U2|U0|U2|count_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U2|U0|U2|count_value[0]~3_combout\,
	clrn => \U2|U0|UO|CURRENT_STATE.STATE_1~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|U2|count_value\(0));

-- Location: LCCOMB_X44_Y39_N18
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

-- Location: FF_X44_Y39_N19
\U2|U0|U2|count_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U2|U0|U2|count_value[1]~1_combout\,
	clrn => \U2|U0|UO|CURRENT_STATE.STATE_1~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|U2|count_value\(1));

-- Location: LCCOMB_X44_Y39_N28
\U2|U0|U2|count_value[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|U2|count_value[2]~2_combout\ = \U2|U0|U2|count_value\(2) $ (((\U2|U0|U2|count_value\(1) & \U2|U0|U2|count_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|U0|U2|count_value\(1),
	datac => \U2|U0|U2|count_value\(2),
	datad => \U2|U0|U2|count_value\(0),
	combout => \U2|U0|U2|count_value[2]~2_combout\);

-- Location: FF_X44_Y39_N29
\U2|U0|U2|count_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U2|U0|U2|count_value[2]~2_combout\,
	clrn => \U2|U0|UO|CURRENT_STATE.STATE_1~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|U2|count_value\(2));

-- Location: LCCOMB_X44_Y39_N8
\U2|U0|U2|count_value[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|U2|count_value[3]~0_combout\ = \U2|U0|U2|count_value\(3) $ (((\U2|U0|U2|count_value\(0) & (\U2|U0|U2|count_value\(1) & \U2|U0|U2|count_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U0|U2|count_value\(0),
	datab => \U2|U0|U2|count_value\(1),
	datac => \U2|U0|U2|count_value\(3),
	datad => \U2|U0|U2|count_value\(2),
	combout => \U2|U0|U2|count_value[3]~0_combout\);

-- Location: FF_X44_Y39_N9
\U2|U0|U2|count_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U2|U0|U2|count_value[3]~0_combout\,
	clrn => \U2|U0|UO|CURRENT_STATE.STATE_1~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|U2|count_value\(3));

-- Location: LCCOMB_X44_Y39_N0
\U2|U0|Pflag_signal~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|Pflag_signal~0_combout\ = (!\U2|U0|U2|count_value\(0) & (!\U2|U0|U2|count_value\(2) & (\U2|U0|U2|count_value\(3) & \U2|U0|U2|count_value\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U0|U2|count_value\(0),
	datab => \U2|U0|U2|count_value\(2),
	datac => \U2|U0|U2|count_value\(3),
	datad => \U2|U0|U2|count_value\(1),
	combout => \U2|U0|Pflag_signal~0_combout\);

-- Location: LCCOMB_X44_Y39_N26
\U2|U0|UO|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|UO|Selector2~0_combout\ = (\U2|U0|U2|count_value\(0) & (!\U2|U0|U2|count_value\(2) & (\U2|U0|U2|count_value\(3) & !\U2|U0|U2|count_value\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U0|U2|count_value\(0),
	datab => \U2|U0|U2|count_value\(2),
	datac => \U2|U0|U2|count_value\(3),
	datad => \U2|U0|U2|count_value\(1),
	combout => \U2|U0|UO|Selector2~0_combout\);

-- Location: LCCOMB_X39_Y38_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder_combout\);

-- Location: FF_X39_Y38_N9
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

-- Location: LCCOMB_X44_Y39_N12
\U2|U0|UO|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|UO|Selector4~0_combout\ = (\U2|U0|UO|Selector2~0_combout\ & (((!\auto_hub
-- |instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\ & !\U2|U0|UO|CURRENT_STATE.STATE_1~q\)))) # 
-- (!\U2|U0|UO|Selector2~0_combout\ & ((\U2|U0|UO|CURRENT_STATE.STATE_2~q\) # ((!\a
-- uto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\ & !\U2|U0|UO|CURRENT_STATE.STATE_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U0|UO|Selector2~0_combout\,
	datab => \U2|U0|UO|CURRENT_STATE.STATE_2~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	datad => \U2|U0|UO|CURRENT_STATE.STATE_1~q\,
	combout => \U2|U0|UO|Selector4~0_combout\);

-- Location: LCCOMB_X44_Y39_N20
\U2|U0|UO|CURRENT_STATE.STATE_2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|UO|CURRENT_STATE.STATE_2~feeder_combout\ = \U2|U0|UO|Selector4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|U0|UO|Selector4~0_combout\,
	combout => \U2|U0|UO|CURRENT_STATE.STATE_2~feeder_combout\);

-- Location: FF_X44_Y39_N21
\U2|U0|UO|CURRENT_STATE.STATE_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U2|U0|UO|CURRENT_STATE.STATE_2~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|UO|CURRENT_STATE.STATE_2~q\);

-- Location: LCCOMB_X44_Y39_N30
\U2|U0|UO|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|UO|Selector2~1_combout\ = (\U2|U0|UO|Selector2~0_combout\ & ((\U2|U0|UO|CURRENT_STATE.STATE_2~q\) # ((!\U2|U0|Pflag_signal~0_combout\ & \U2|U0|UO|CURRENT_STATE.STATE_3~q\)))) # (!\U2|U0|UO|Selector2~0_combout\ & (!\U2|U0|Pflag_signal~0_combout\ & 
-- (\U2|U0|UO|CURRENT_STATE.STATE_3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U0|UO|Selector2~0_combout\,
	datab => \U2|U0|Pflag_signal~0_combout\,
	datac => \U2|U0|UO|CURRENT_STATE.STATE_3~q\,
	datad => \U2|U0|UO|CURRENT_STATE.STATE_2~q\,
	combout => \U2|U0|UO|Selector2~1_combout\);

-- Location: FF_X44_Y39_N31
\U2|U0|UO|CURRENT_STATE.STATE_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U2|U0|UO|Selector2~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|UO|CURRENT_STATE.STATE_3~q\);

-- Location: LCCOMB_X44_Y42_N24
\U2|U0|U1|sr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|U1|sr~0_combout\ = (\U2|U0|UO|CURRENT_STATE.STATE_1~q\ & (\U2|U0|U1|sr~q\ $ 
-- (\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|U0|UO|CURRENT_STATE.STATE_1~q\,
	datac => \U2|U0|U1|sr~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	combout => \U2|U0|U1|sr~0_combout\);

-- Location: FF_X44_Y42_N25
\U2|U0|U1|sr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U2|U0|U1|sr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|U1|sr~q\);

-- Location: LCCOMB_X44_Y42_N26
\U2|U0|U1|Err\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|U1|Err~combout\ = \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\ $ (\U2|U0|U1|sr~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	datad => \U2|U0|U1|sr~q\,
	combout => \U2|U0|U1|Err~combout\);

-- Location: LCCOMB_X44_Y39_N14
\U2|U0|UO|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|UO|Selector0~1_combout\ = (\U2|U0|UO|Selector0~0_combout\) # ((\U2|U0|Pflag_signal~0_combout\ & (\U2|U0|UO|CURRENT_STATE.STATE_3~q\ & !\U2|U0|U1|Err~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U0|UO|Selector0~0_combout\,
	datab => \U2|U0|Pflag_signal~0_combout\,
	datac => \U2|U0|UO|CURRENT_STATE.STATE_3~q\,
	datad => \U2|U0|U1|Err~combout\,
	combout => \U2|U0|UO|Selector0~1_combout\);

-- Location: FF_X44_Y39_N15
\U2|U0|UO|CURRENT_STATE.STATE_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U2|U0|UO|Selector0~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|UO|CURRENT_STATE.STATE_4~q\);

-- Location: LCCOMB_X44_Y39_N16
\U2|U1|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U1|Selector0~0_combout\ = (\U2|U0|UO|CURRENT_STATE.STATE_4~q\) # (\U2|U1|CurrentState.STATE_TRAMA_RECEBIDA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|U0|UO|CURRENT_STATE.STATE_4~q\,
	datad => \U2|U1|CurrentState.STATE_TRAMA_RECEBIDA~q\,
	combout => \U2|U1|Selector0~0_combout\);

-- Location: FF_X44_Y39_N17
\U2|U1|CurrentState.STATE_WAITING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U2|U1|Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U1|CurrentState.STATE_WAITING~q\);

-- Location: LCCOMB_X44_Y39_N24
\U2|U1|NextState.STATE_TRAMA_RECEBIDA~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U1|NextState.STATE_TRAMA_RECEBIDA~0_combout\ = (\U2|U0|UO|CURRENT_STATE.STATE_4~q\ & !\U2|U1|CurrentState.STATE_WAITING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|U0|UO|CURRENT_STATE.STATE_4~q\,
	datad => \U2|U1|CurrentState.STATE_WAITING~q\,
	combout => \U2|U1|NextState.STATE_TRAMA_RECEBIDA~0_combout\);

-- Location: FF_X44_Y39_N25
\U2|U1|CurrentState.STATE_TRAMA_RECEBIDA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U2|U1|NextState.STATE_TRAMA_RECEBIDA~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U1|CurrentState.STATE_TRAMA_RECEBIDA~q\);

-- Location: LCCOMB_X44_Y39_N10
\U2|U1|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U1|Selector1~0_combout\ = (\U2|U1|CurrentState.STATE_TRAMA_RECEBIDA~q\) # ((\U2|U0|UO|CURRENT_STATE.STATE_4~q\ & \U2|U1|CurrentState.STATE_DONE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|U0|UO|CURRENT_STATE.STATE_4~q\,
	datac => \U2|U1|CurrentState.STATE_DONE~q\,
	datad => \U2|U1|CurrentState.STATE_TRAMA_RECEBIDA~q\,
	combout => \U2|U1|Selector1~0_combout\);

-- Location: FF_X44_Y39_N11
\U2|U1|CurrentState.STATE_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U2|U1|Selector1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U1|CurrentState.STATE_DONE~q\);

-- Location: LCCOMB_X44_Y39_N4
\U2|U0|UO|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|UO|Selector6~0_combout\ = (\U2|U1|CurrentState.STATE_DONE~q\ & ((\U2|U0|UO|CURRENT_STATE.STATE_4~q\) # 
-- ((\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\ & !\U2|U0|UO|CURRENT_STATE.STATE_1~q\)))) # 
-- (!\U2|U1|CurrentState.STATE_DONE~q\ & (((\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\ & 
-- !\U2|U0|UO|CURRENT_STATE.STATE_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|CurrentState.STATE_DONE~q\,
	datab => \U2|U0|UO|CURRENT_STATE.STATE_4~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	datad => \U2|U0|UO|CURRENT_STATE.STATE_1~q\,
	combout => \U2|U0|UO|Selector6~0_combout\);

-- Location: LCCOMB_X44_Y39_N2
\U2|U0|UO|Selector6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|UO|Selector6~1_combout\ = (!\U2|U0|UO|Selector6~0_combout\ & (((!\U2|U0|U1|Err~combout\) # (!\U2|U0|UO|CURRENT_STATE.STATE_3~q\)) # (!\U2|U0|Pflag_signal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U0|UO|Selector6~0_combout\,
	datab => \U2|U0|Pflag_signal~0_combout\,
	datac => \U2|U0|UO|CURRENT_STATE.STATE_3~q\,
	datad => \U2|U0|U1|Err~combout\,
	combout => \U2|U0|UO|Selector6~1_combout\);

-- Location: FF_X44_Y39_N3
\U2|U0|UO|CURRENT_STATE.STATE_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U2|U0|UO|Selector6~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|UO|CURRENT_STATE.STATE_1~q\);

-- Location: LCCOMB_X44_Y52_N8
\U2|U0|counter_rst\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|counter_rst~combout\ = (\reset~input_o\) # (!\U2|U0|UO|CURRENT_STATE.STATE_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \U2|U0|UO|CURRENT_STATE.STATE_1~q\,
	combout => \U2|U0|counter_rst~combout\);

-- Location: CLKCTRL_G14
\U2|U0|counter_rst~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U2|U0|counter_rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U2|U0|counter_rst~clkctrl_outclk\);

-- Location: FF_X36_Y4_N17
\U2|U0|U3|Sc0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U2|U0|U3|Sc0|Q~feeder_combout\,
	clrn => \U2|U0|ALT_INV_counter_rst~clkctrl_outclk\,
	ena => \U2|U0|UO|CURRENT_STATE.STATE_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|U3|Sc0|Q~q\);

-- Location: LCCOMB_X36_Y4_N22
\U2|U0|U3|Sc1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|U3|Sc1|Q~feeder_combout\ = \U2|U0|U3|Sc0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|U0|U3|Sc0|Q~q\,
	combout => \U2|U0|U3|Sc1|Q~feeder_combout\);

-- Location: FF_X36_Y4_N23
\U2|U0|U3|Sc1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U2|U0|U3|Sc1|Q~feeder_combout\,
	clrn => \U2|U0|ALT_INV_counter_rst~clkctrl_outclk\,
	ena => \U2|U0|UO|CURRENT_STATE.STATE_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|U3|Sc1|Q~q\);

-- Location: LCCOMB_X36_Y4_N20
\U2|U0|U3|Sc2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|U3|Sc2|Q~feeder_combout\ = \U2|U0|U3|Sc1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|U0|U3|Sc1|Q~q\,
	combout => \U2|U0|U3|Sc2|Q~feeder_combout\);

-- Location: FF_X36_Y4_N21
\U2|U0|U3|Sc2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U2|U0|U3|Sc2|Q~feeder_combout\,
	clrn => \U2|U0|ALT_INV_counter_rst~clkctrl_outclk\,
	ena => \U2|U0|UO|CURRENT_STATE.STATE_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|U3|Sc2|Q~q\);

-- Location: LCCOMB_X36_Y4_N10
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

-- Location: FF_X36_Y4_N11
\U2|U0|U3|Sc3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U2|U0|U3|Sc3|Q~feeder_combout\,
	clrn => \U2|U0|ALT_INV_counter_rst~clkctrl_outclk\,
	ena => \U2|U0|UO|CURRENT_STATE.STATE_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|U3|Sc3|Q~q\);

-- Location: LCCOMB_X36_Y4_N8
\U2|U0|U3|Sc4|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|U3|Sc4|Q~feeder_combout\ = \U2|U0|U3|Sc3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|U0|U3|Sc3|Q~q\,
	combout => \U2|U0|U3|Sc4|Q~feeder_combout\);

-- Location: FF_X36_Y4_N9
\U2|U0|U3|Sc4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U2|U0|U3|Sc4|Q~feeder_combout\,
	clrn => \U2|U0|ALT_INV_counter_rst~clkctrl_outclk\,
	ena => \U2|U0|UO|CURRENT_STATE.STATE_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|U3|Sc4|Q~q\);

-- Location: LCCOMB_X36_Y4_N6
\U2|U0|U3|Sc5|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|U3|Sc5|Q~feeder_combout\ = \U2|U0|U3|Sc4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|U0|U3|Sc4|Q~q\,
	combout => \U2|U0|U3|Sc5|Q~feeder_combout\);

-- Location: FF_X36_Y4_N7
\U2|U0|U3|Sc5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U2|U0|U3|Sc5|Q~feeder_combout\,
	clrn => \U2|U0|ALT_INV_counter_rst~clkctrl_outclk\,
	ena => \U2|U0|UO|CURRENT_STATE.STATE_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|U3|Sc5|Q~q\);

-- Location: LCCOMB_X36_Y4_N28
\U2|U0|U3|Sc6|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|U3|Sc6|Q~feeder_combout\ = \U2|U0|U3|Sc5|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|U0|U3|Sc5|Q~q\,
	combout => \U2|U0|U3|Sc6|Q~feeder_combout\);

-- Location: FF_X36_Y4_N29
\U2|U0|U3|Sc6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U2|U0|U3|Sc6|Q~feeder_combout\,
	clrn => \U2|U0|ALT_INV_counter_rst~clkctrl_outclk\,
	ena => \U2|U0|UO|CURRENT_STATE.STATE_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|U3|Sc6|Q~q\);

-- Location: LCCOMB_X36_Y4_N18
\U2|U0|U3|Sc7|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|U0|U3|Sc7|Q~feeder_combout\ = \U2|U0|U3|Sc6|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|U0|U3|Sc6|Q~q\,
	combout => \U2|U0|U3|Sc7|Q~feeder_combout\);

-- Location: FF_X36_Y4_N19
\U2|U0|U3|Sc7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U2|U0|U3|Sc7|Q~feeder_combout\,
	clrn => \U2|U0|ALT_INV_counter_rst~clkctrl_outclk\,
	ena => \U2|U0|UO|CURRENT_STATE.STATE_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|U3|Sc7|Q~q\);

-- Location: LCCOMB_X36_Y4_N0
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

-- Location: FF_X36_Y4_N1
\U2|U0|U3|Sc8|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U2|U0|U3|Sc8|Q~feeder_combout\,
	clrn => \U2|U0|ALT_INV_counter_rst~clkctrl_outclk\,
	ena => \U2|U0|UO|CURRENT_STATE.STATE_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U0|U3|Sc8|Q~q\);

-- Location: LCCOMB_X74_Y42_N8
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

-- Location: LCCOMB_X71_Y42_N22
\U3|U0|U1|sr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|U1|sr~0_combout\ = (\U3|U0|UO|CURRENT_STATE.STATE_1~q\ & (\auto_hub|instr
-- umentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\ $ (\U3|U0|U1|sr~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	datac => \U3|U0|U1|sr~q\,
	datad => \U3|U0|UO|CURRENT_STATE.STATE_1~q\,
	combout => \U3|U0|U1|sr~0_combout\);

-- Location: FF_X71_Y42_N23
\U3|U0|U1|sr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U3|U0|U1|sr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U0|U1|sr~q\);

-- Location: LCCOMB_X71_Y42_N24
\U3|U0|U1|Err\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|U1|Err~combout\ = \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\ $ (\U3|U0|U1|sr~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	datac => \U3|U0|U1|sr~q\,
	combout => \U3|U0|U1|Err~combout\);

-- Location: LCCOMB_X74_Y42_N12
\U3|U0|U2|count_value[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|U2|count_value[1]~1_combout\ = \U3|U0|U2|count_value\(0) $ (\U3|U0|U2|count_value\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|U0|U2|count_value\(0),
	datac => \U3|U0|U2|count_value\(1),
	combout => \U3|U0|U2|count_value[1]~1_combout\);

-- Location: FF_X74_Y42_N13
\U3|U0|U2|count_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U3|U0|U2|count_value[1]~1_combout\,
	clrn => \U3|U0|UO|CURRENT_STATE.STATE_1~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U0|U2|count_value\(1));

-- Location: LCCOMB_X74_Y42_N6
\U3|U0|U2|count_value[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|U2|count_value[2]~2_combout\ = \U3|U0|U2|count_value\(2) $ (((\U3|U0|U2|count_value\(1) & \U3|U0|U2|count_value\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U0|U2|count_value\(1),
	datab => \U3|U0|U2|count_value\(0),
	datac => \U3|U0|U2|count_value\(2),
	combout => \U3|U0|U2|count_value[2]~2_combout\);

-- Location: FF_X74_Y42_N7
\U3|U0|U2|count_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U3|U0|U2|count_value[2]~2_combout\,
	clrn => \U3|U0|UO|CURRENT_STATE.STATE_1~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U0|U2|count_value\(2));

-- Location: LCCOMB_X74_Y42_N10
\U3|U0|U2|count_value[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|U2|count_value[3]~0_combout\ = \U3|U0|U2|count_value\(3) $ (((\U3|U0|U2|count_value\(2) & (\U3|U0|U2|count_value\(0) & \U3|U0|U2|count_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U0|U2|count_value\(2),
	datab => \U3|U0|U2|count_value\(0),
	datac => \U3|U0|U2|count_value\(3),
	datad => \U3|U0|U2|count_value\(1),
	combout => \U3|U0|U2|count_value[3]~0_combout\);

-- Location: FF_X74_Y42_N11
\U3|U0|U2|count_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U3|U0|U2|count_value[3]~0_combout\,
	clrn => \U3|U0|UO|CURRENT_STATE.STATE_1~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U0|U2|count_value\(3));

-- Location: LCCOMB_X74_Y42_N26
\U3|U0|Pflag_signal\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|Pflag_signal~combout\ = (\U3|U0|U2|count_value\(1) & (!\U3|U0|U2|count_value\(2) & (\U3|U0|U2|count_value\(0) & \U3|U0|U2|count_value\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U0|U2|count_value\(1),
	datab => \U3|U0|U2|count_value\(2),
	datac => \U3|U0|U2|count_value\(0),
	datad => \U3|U0|U2|count_value\(3),
	combout => \U3|U0|Pflag_signal~combout\);

-- Location: LCCOMB_X39_Y38_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\);

-- Location: FF_X39_Y38_N11
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

-- Location: LCCOMB_X71_Y42_N10
\U3|U1|NextState.STATE_TRAMA_RECEBIDA~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U1|NextState.STATE_TRAMA_RECEBIDA~0_combout\ = (\U3|U0|UO|CURRENT_STATE.STATE_4~q\ & !\U3|U1|CurrentState.STATE_WAITING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|U0|UO|CURRENT_STATE.STATE_4~q\,
	datad => \U3|U1|CurrentState.STATE_WAITING~q\,
	combout => \U3|U1|NextState.STATE_TRAMA_RECEBIDA~0_combout\);

-- Location: FF_X71_Y42_N11
\U3|U1|CurrentState.STATE_TRAMA_RECEBIDA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U3|U1|NextState.STATE_TRAMA_RECEBIDA~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~q\);

-- Location: LCCOMB_X71_Y42_N26
\U3|U1|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U1|Selector1~0_combout\ = (\U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~q\) # ((\U3|U0|UO|CURRENT_STATE.STATE_4~q\ & \U3|U1|CurrentState.STATE_DONE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|U0|UO|CURRENT_STATE.STATE_4~q\,
	datac => \U3|U1|CurrentState.STATE_DONE~q\,
	datad => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~q\,
	combout => \U3|U1|Selector1~0_combout\);

-- Location: FF_X71_Y42_N27
\U3|U1|CurrentState.STATE_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U3|U1|Selector1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U1|CurrentState.STATE_DONE~q\);

-- Location: LCCOMB_X71_Y42_N2
\U3|U0|UO|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|UO|Selector6~0_combout\ = (\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\ & 
-- (((\U3|U0|UO|CURRENT_STATE.STATE_4~q\ & \U3|U1|CurrentState.STATE_DONE~q\)) # (!\U3|U0|UO|CURRENT_STATE.STATE_1~q\))) # 
-- (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\ & (\U3|U0|UO|CURRENT_STATE.STATE_4~q\ & 
-- (\U3|U1|CurrentState.STATE_DONE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\,
	datab => \U3|U0|UO|CURRENT_STATE.STATE_4~q\,
	datac => \U3|U1|CurrentState.STATE_DONE~q\,
	datad => \U3|U0|UO|CURRENT_STATE.STATE_1~q\,
	combout => \U3|U0|UO|Selector6~0_combout\);

-- Location: LCCOMB_X71_Y42_N6
\U3|U0|UO|Selector6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|UO|Selector6~1_combout\ = (!\U3|U0|UO|Selector6~0_combout\ & (((!\U3|U0|Pflag_signal~combout\) # (!\U3|U0|U1|Err~combout\)) # (!\U3|U0|UO|CURRENT_STATE.STATE_3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U0|UO|CURRENT_STATE.STATE_3~q\,
	datab => \U3|U0|U1|Err~combout\,
	datac => \U3|U0|Pflag_signal~combout\,
	datad => \U3|U0|UO|Selector6~0_combout\,
	combout => \U3|U0|UO|Selector6~1_combout\);

-- Location: FF_X71_Y42_N7
\U3|U0|UO|CURRENT_STATE.STATE_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U3|U0|UO|Selector6~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U0|UO|CURRENT_STATE.STATE_1~q\);

-- Location: CLKCTRL_G7
\U3|U0|UO|CURRENT_STATE.STATE_1~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U3|U0|UO|CURRENT_STATE.STATE_1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U3|U0|UO|CURRENT_STATE.STATE_1~clkctrl_outclk\);

-- Location: FF_X74_Y42_N9
\U3|U0|U2|count_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U3|U0|U2|count_value[0]~3_combout\,
	clrn => \U3|U0|UO|CURRENT_STATE.STATE_1~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U0|U2|count_value\(0));

-- Location: LCCOMB_X74_Y42_N24
\U3|U0|Pflag_signal~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|Pflag_signal~0_combout\ = (\U3|U0|U2|count_value\(1) & (!\U3|U0|U2|count_value\(2) & \U3|U0|U2|count_value\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U0|U2|count_value\(1),
	datac => \U3|U0|U2|count_value\(2),
	datad => \U3|U0|U2|count_value\(3),
	combout => \U3|U0|Pflag_signal~0_combout\);

-- Location: LCCOMB_X71_Y42_N8
\U3|U0|UO|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|UO|Selector4~0_combout\ = (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\ & 
-- !\U3|U0|UO|CURRENT_STATE.STATE_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\,
	datad => \U3|U0|UO|CURRENT_STATE.STATE_1~q\,
	combout => \U3|U0|UO|Selector4~0_combout\);

-- Location: LCCOMB_X75_Y42_N30
\U3|U0|UO|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|UO|Selector4~1_combout\ = (\U3|U0|UO|Selector4~0_combout\) # ((\U3|U0|UO|CURRENT_STATE.STATE_2~q\ & ((\U3|U0|U2|count_value\(0)) # (!\U3|U0|Pflag_signal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U0|U2|count_value\(0),
	datab => \U3|U0|Pflag_signal~0_combout\,
	datac => \U3|U0|UO|Selector4~0_combout\,
	datad => \U3|U0|UO|CURRENT_STATE.STATE_2~q\,
	combout => \U3|U0|UO|Selector4~1_combout\);

-- Location: LCCOMB_X75_Y42_N0
\U3|U0|UO|CURRENT_STATE.STATE_2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|UO|CURRENT_STATE.STATE_2~feeder_combout\ = \U3|U0|UO|Selector4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|U0|UO|Selector4~1_combout\,
	combout => \U3|U0|UO|CURRENT_STATE.STATE_2~feeder_combout\);

-- Location: FF_X75_Y42_N1
\U3|U0|UO|CURRENT_STATE.STATE_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U3|U0|UO|CURRENT_STATE.STATE_2~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U0|UO|CURRENT_STATE.STATE_2~q\);

-- Location: LCCOMB_X75_Y42_N28
\U3|U0|UO|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|UO|Selector2~0_combout\ = (\U3|U0|Pflag_signal~0_combout\ & (!\U3|U0|U2|count_value\(0) & ((\U3|U0|UO|CURRENT_STATE.STATE_3~q\) # (\U3|U0|UO|CURRENT_STATE.STATE_2~q\)))) # (!\U3|U0|Pflag_signal~0_combout\ & (((\U3|U0|UO|CURRENT_STATE.STATE_3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U0|U2|count_value\(0),
	datab => \U3|U0|Pflag_signal~0_combout\,
	datac => \U3|U0|UO|CURRENT_STATE.STATE_3~q\,
	datad => \U3|U0|UO|CURRENT_STATE.STATE_2~q\,
	combout => \U3|U0|UO|Selector2~0_combout\);

-- Location: FF_X75_Y42_N29
\U3|U0|UO|CURRENT_STATE.STATE_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U3|U0|UO|Selector2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U0|UO|CURRENT_STATE.STATE_3~q\);

-- Location: LCCOMB_X71_Y42_N20
\U3|U0|UO|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|UO|Selector0~0_combout\ = (\U3|U0|UO|CURRENT_STATE.STATE_4~q\ & !\U3|U1|CurrentState.STATE_DONE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|U0|UO|CURRENT_STATE.STATE_4~q\,
	datac => \U3|U1|CurrentState.STATE_DONE~q\,
	combout => \U3|U0|UO|Selector0~0_combout\);

-- Location: LCCOMB_X71_Y42_N4
\U3|U0|UO|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|UO|Selector0~1_combout\ = (\U3|U0|UO|Selector0~0_combout\) # ((\U3|U0|UO|CURRENT_STATE.STATE_3~q\ & (!\U3|U0|U1|Err~combout\ & \U3|U0|Pflag_signal~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U0|UO|CURRENT_STATE.STATE_3~q\,
	datab => \U3|U0|U1|Err~combout\,
	datac => \U3|U0|Pflag_signal~combout\,
	datad => \U3|U0|UO|Selector0~0_combout\,
	combout => \U3|U0|UO|Selector0~1_combout\);

-- Location: FF_X71_Y42_N5
\U3|U0|UO|CURRENT_STATE.STATE_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U3|U0|UO|Selector0~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U0|UO|CURRENT_STATE.STATE_4~q\);

-- Location: LCCOMB_X71_Y42_N0
\U3|U1|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U1|Selector0~0_combout\ = (\U3|U0|UO|CURRENT_STATE.STATE_4~q\) # (\U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|U0|UO|CURRENT_STATE.STATE_4~q\,
	datad => \U3|U1|CurrentState.STATE_TRAMA_RECEBIDA~q\,
	combout => \U3|U1|Selector0~0_combout\);

-- Location: FF_X71_Y42_N1
\U3|U1|CurrentState.STATE_WAITING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mclk~inputclkctrl_outclk\,
	d => \U3|U1|Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U1|CurrentState.STATE_WAITING~q\);

-- Location: LCCOMB_X74_Y39_N24
\U3|U1|WrD\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U1|WrD~combout\ = LCELL(\U3|U1|CurrentState.STATE_WAITING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U1|CurrentState.STATE_WAITING~q\,
	combout => \U3|U1|WrD~combout\);

-- Location: CLKCTRL_G5
\U3|U1|WrD~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U3|U1|WrD~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U3|U1|WrD~clkctrl_outclk\);

-- Location: FF_X75_Y42_N7
\U3|U0|U3|Sc0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \U3|U0|UO|CURRENT_STATE.STATE_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U0|U3|Sc0|Q~q\);

-- Location: FF_X75_Y42_N3
\U3|U0|U3|Sc1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	asdata => \U3|U0|U3|Sc0|Q~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \U3|U0|UO|CURRENT_STATE.STATE_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U0|U3|Sc1|Q~q\);

-- Location: LCCOMB_X75_Y42_N20
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

-- Location: FF_X75_Y42_N21
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
	ena => \U3|U0|UO|CURRENT_STATE.STATE_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U0|U3|Sc2|Q~q\);

-- Location: LCCOMB_X75_Y42_N26
\U4|clear_reg|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|clear_reg|Q~0_combout\ = (\U3|U0|U3|Sc0|Q~q\ & (\U3|U0|U3|Sc1|Q~q\ & \U3|U0|U3|Sc2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U0|U3|Sc0|Q~q\,
	datab => \U3|U0|U3|Sc1|Q~q\,
	datad => \U3|U0|U3|Sc2|Q~q\,
	combout => \U4|clear_reg|Q~0_combout\);

-- Location: LCCOMB_X75_Y42_N14
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

-- Location: FF_X75_Y42_N15
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
	ena => \U3|U0|UO|CURRENT_STATE.STATE_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U0|U3|Sc3|Q~q\);

-- Location: LCCOMB_X75_Y44_N16
\U4|clear_reg|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|clear_reg|Q~1_combout\ = (\U4|clear_reg|Q~0_combout\ & ((!\U3|U0|U3|Sc3|Q~q\))) # (!\U4|clear_reg|Q~0_combout\ & (\U4|clear_reg|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|clear_reg|Q~0_combout\,
	datac => \U4|clear_reg|Q~q\,
	datad => \U3|U0|U3|Sc3|Q~q\,
	combout => \U4|clear_reg|Q~1_combout\);

-- Location: FF_X75_Y44_N17
\U4|clear_reg|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	d => \U4|clear_reg|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|clear_reg|Q~q\);

-- Location: LCCOMB_X75_Y44_N8
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

-- Location: LCCOMB_X75_Y42_N4
\U4|decoder|dout[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|decoder|dout\(0) = (!\U3|U0|U3|Sc0|Q~q\ & (!\U3|U0|U3|Sc1|Q~q\ & !\U3|U0|U3|Sc2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U0|U3|Sc0|Q~q\,
	datab => \U3|U0|U3|Sc1|Q~q\,
	datad => \U3|U0|U3|Sc2|Q~q\,
	combout => \U4|decoder|dout\(0));

-- Location: FF_X75_Y44_N9
\U4|circuit_gen:0:in_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	d => \U4|circuit_gen:0:in_reg|u0|Q~0_combout\,
	ena => \U4|decoder|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:0:in_reg|u0|Q~q\);

-- Location: LCCOMB_X75_Y42_N10
\U4|decoder|dout[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|decoder|dout[6]~0_combout\ = (!\U3|U0|U3|Sc0|Q~q\ & (\U3|U0|U3|Sc1|Q~q\ & \U3|U0|U3|Sc2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U0|U3|Sc0|Q~q\,
	datab => \U3|U0|U3|Sc1|Q~q\,
	datad => \U3|U0|U3|Sc2|Q~q\,
	combout => \U4|decoder|dout[6]~0_combout\);

-- Location: FF_X75_Y49_N31
\U4|circuit_gen:0:out_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	asdata => \U4|circuit_gen:0:in_reg|u0|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:0:out_reg|u0|Q~q\);

-- Location: LCCOMB_X75_Y42_N24
\U3|U0|U3|Sc4|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|U3|Sc4|Q~feeder_combout\ = \U3|U0|U3|Sc3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|U0|U3|Sc3|Q~q\,
	combout => \U3|U0|U3|Sc4|Q~feeder_combout\);

-- Location: FF_X75_Y42_N25
\U3|U0|U3|Sc4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U3|U0|U3|Sc4|Q~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U3|U0|UO|CURRENT_STATE.STATE_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U0|U3|Sc4|Q~q\);

-- Location: LCCOMB_X75_Y42_N12
\U3|U0|U3|Sc5|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|U3|Sc5|Q~feeder_combout\ = \U3|U0|U3|Sc4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc4|Q~q\,
	combout => \U3|U0|U3|Sc5|Q~feeder_combout\);

-- Location: FF_X75_Y42_N13
\U3|U0|U3|Sc5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U3|U0|U3|Sc5|Q~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U3|U0|UO|CURRENT_STATE.STATE_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U0|U3|Sc5|Q~q\);

-- Location: LCCOMB_X75_Y42_N18
\U3|U0|U3|Sc6|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|U0|U3|Sc6|Q~feeder_combout\ = \U3|U0|U3|Sc5|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc5|Q~q\,
	combout => \U3|U0|U3|Sc6|Q~feeder_combout\);

-- Location: FF_X75_Y42_N19
\U3|U0|U3|Sc6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U3|U0|U3|Sc6|Q~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U3|U0|UO|CURRENT_STATE.STATE_2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U0|U3|Sc6|Q~q\);

-- Location: LCCOMB_X75_Y44_N4
\U4|circuit_gen:0:in_reg|u3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:in_reg|u3|Q~0_combout\ = !\U3|U0|U3|Sc6|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|U0|U3|Sc6|Q~q\,
	combout => \U4|circuit_gen:0:in_reg|u3|Q~0_combout\);

-- Location: FF_X75_Y44_N5
\U4|circuit_gen:0:in_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	d => \U4|circuit_gen:0:in_reg|u3|Q~0_combout\,
	ena => \U4|decoder|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:0:in_reg|u3|Q~q\);

-- Location: FF_X75_Y49_N25
\U4|circuit_gen:0:out_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	asdata => \U4|circuit_gen:0:in_reg|u3|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:0:out_reg|u3|Q~q\);

-- Location: LCCOMB_X76_Y43_N24
\U4|circuit_gen:0:in_reg|u2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:in_reg|u2|Q~0_combout\ = !\U3|U0|U3|Sc5|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc5|Q~q\,
	combout => \U4|circuit_gen:0:in_reg|u2|Q~0_combout\);

-- Location: FF_X76_Y43_N25
\U4|circuit_gen:0:in_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	d => \U4|circuit_gen:0:in_reg|u2|Q~0_combout\,
	ena => \U4|decoder|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:0:in_reg|u2|Q~q\);

-- Location: FF_X75_Y49_N11
\U4|circuit_gen:0:out_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	asdata => \U4|circuit_gen:0:in_reg|u2|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:0:out_reg|u2|Q~q\);

-- Location: LCCOMB_X75_Y44_N14
\U4|circuit_gen:0:in_reg|u1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:in_reg|u1|Q~0_combout\ = !\U3|U0|U3|Sc4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|U0|U3|Sc4|Q~q\,
	combout => \U4|circuit_gen:0:in_reg|u1|Q~0_combout\);

-- Location: FF_X75_Y44_N15
\U4|circuit_gen:0:in_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	d => \U4|circuit_gen:0:in_reg|u1|Q~0_combout\,
	ena => \U4|decoder|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:0:in_reg|u1|Q~q\);

-- Location: FF_X75_Y49_N21
\U4|circuit_gen:0:out_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	asdata => \U4|circuit_gen:0:in_reg|u1|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:0:out_reg|u1|Q~q\);

-- Location: LCCOMB_X75_Y49_N0
\U4|circuit_gen:0:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[0]~0_combout\ = (\U4|circuit_gen:0:out_reg|u3|Q~q\ & (\U4|circuit_gen:0:out_reg|u1|Q~q\ & (\U4|circuit_gen:0:out_reg|u0|Q~q\ $ (\U4|circuit_gen:0:out_reg|u2|Q~q\)))) # (!\U4|circuit_gen:0:out_reg|u3|Q~q\ & 
-- (((!\U4|circuit_gen:0:out_reg|u2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:0:out_reg|u0|Q~q\,
	datab => \U4|circuit_gen:0:out_reg|u3|Q~q\,
	datac => \U4|circuit_gen:0:out_reg|u2|Q~q\,
	datad => \U4|circuit_gen:0:out_reg|u1|Q~q\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X75_Y49_N18
\U4|circuit_gen:0:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[0]~1_combout\ = (\U4|circuit_gen:0:hex_digit|Ndout[0]~0_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|clear_reg|Q~q\,
	datad => \U4|circuit_gen:0:hex_digit|Ndout[0]~0_combout\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X75_Y49_N28
\U4|circuit_gen:0:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[1]~2_combout\ = (\U4|circuit_gen:0:out_reg|u0|Q~q\ & (!\U4|circuit_gen:0:out_reg|u2|Q~q\ & ((!\U4|circuit_gen:0:out_reg|u1|Q~q\) # (!\U4|circuit_gen:0:out_reg|u3|Q~q\)))) # (!\U4|circuit_gen:0:out_reg|u0|Q~q\ & 
-- ((\U4|circuit_gen:0:out_reg|u1|Q~q\ & ((!\U4|circuit_gen:0:out_reg|u2|Q~q\))) # (!\U4|circuit_gen:0:out_reg|u1|Q~q\ & (!\U4|circuit_gen:0:out_reg|u3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:0:out_reg|u0|Q~q\,
	datab => \U4|circuit_gen:0:out_reg|u3|Q~q\,
	datac => \U4|circuit_gen:0:out_reg|u2|Q~q\,
	datad => \U4|circuit_gen:0:out_reg|u1|Q~q\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X75_Y49_N14
\U4|circuit_gen:0:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[1]~3_combout\ = (\U4|circuit_gen:0:hex_digit|Ndout[1]~2_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|clear_reg|Q~q\,
	datac => \U4|circuit_gen:0:hex_digit|Ndout[1]~2_combout\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X75_Y49_N26
\U4|circuit_gen:0:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[2]~5_combout\ = (\U4|circuit_gen:0:out_reg|u3|Q~q\ & (\U4|circuit_gen:0:out_reg|u0|Q~q\ & (\U4|circuit_gen:0:out_reg|u2|Q~q\ & !\U4|circuit_gen:0:out_reg|u1|Q~q\))) # (!\U4|circuit_gen:0:out_reg|u3|Q~q\ & 
-- (((!\U4|circuit_gen:0:out_reg|u2|Q~q\ & \U4|circuit_gen:0:out_reg|u1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:0:out_reg|u0|Q~q\,
	datab => \U4|circuit_gen:0:out_reg|u3|Q~q\,
	datac => \U4|circuit_gen:0:out_reg|u2|Q~q\,
	datad => \U4|circuit_gen:0:out_reg|u1|Q~q\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X75_Y49_N16
\U4|circuit_gen:0:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[2]~4_combout\ = (!\U4|circuit_gen:0:out_reg|u3|Q~q\ & (!\U4|circuit_gen:0:out_reg|u1|Q~q\ & ((\U4|circuit_gen:0:out_reg|u2|Q~q\) # (!\U4|circuit_gen:0:out_reg|u0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:0:out_reg|u0|Q~q\,
	datab => \U4|circuit_gen:0:out_reg|u3|Q~q\,
	datac => \U4|circuit_gen:0:out_reg|u2|Q~q\,
	datad => \U4|circuit_gen:0:out_reg|u1|Q~q\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X75_Y49_N4
\U4|circuit_gen:0:hex_digit|Ndout[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[2]~6_combout\ = ((\U4|circuit_gen:0:hex_digit|Ndout[2]~5_combout\) # (\U4|circuit_gen:0:hex_digit|Ndout[2]~4_combout\)) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|clear_reg|Q~q\,
	datac => \U4|circuit_gen:0:hex_digit|Ndout[2]~5_combout\,
	datad => \U4|circuit_gen:0:hex_digit|Ndout[2]~4_combout\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[2]~6_combout\);

-- Location: LCCOMB_X75_Y49_N24
\U4|circuit_gen:0:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[3]~7_combout\ = (\U4|circuit_gen:0:out_reg|u1|Q~q\ & (\U4|circuit_gen:0:out_reg|u0|Q~q\ $ ((\U4|circuit_gen:0:out_reg|u2|Q~q\)))) # (!\U4|circuit_gen:0:out_reg|u1|Q~q\ & (!\U4|circuit_gen:0:out_reg|u0|Q~q\ & 
-- (!\U4|circuit_gen:0:out_reg|u2|Q~q\ & \U4|circuit_gen:0:out_reg|u3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:0:out_reg|u0|Q~q\,
	datab => \U4|circuit_gen:0:out_reg|u2|Q~q\,
	datac => \U4|circuit_gen:0:out_reg|u3|Q~q\,
	datad => \U4|circuit_gen:0:out_reg|u1|Q~q\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X75_Y49_N22
\U4|circuit_gen:0:hex_digit|Ndout[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[3]~8_combout\ = ((\U4|circuit_gen:0:hex_digit|Ndout[3]~7_combout\) # (\U4|circuit_gen:0:hex_digit|Ndout[2]~4_combout\)) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|clear_reg|Q~q\,
	datac => \U4|circuit_gen:0:hex_digit|Ndout[3]~7_combout\,
	datad => \U4|circuit_gen:0:hex_digit|Ndout[2]~4_combout\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[3]~8_combout\);

-- Location: LCCOMB_X75_Y49_N10
\U4|circuit_gen:0:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[4]~9_combout\ = (\U4|circuit_gen:0:out_reg|u1|Q~q\ & ((\U4|circuit_gen:0:out_reg|u2|Q~q\ & (!\U4|circuit_gen:0:out_reg|u0|Q~q\)) # (!\U4|circuit_gen:0:out_reg|u2|Q~q\ & ((\U4|circuit_gen:0:out_reg|u3|Q~q\))))) # 
-- (!\U4|circuit_gen:0:out_reg|u1|Q~q\ & (((!\U4|circuit_gen:0:out_reg|u3|Q~q\)) # (!\U4|circuit_gen:0:out_reg|u0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:0:out_reg|u0|Q~q\,
	datab => \U4|circuit_gen:0:out_reg|u3|Q~q\,
	datac => \U4|circuit_gen:0:out_reg|u2|Q~q\,
	datad => \U4|circuit_gen:0:out_reg|u1|Q~q\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X75_Y49_N8
\U4|circuit_gen:0:hex_digit|Ndout[4]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[4]~10_combout\ = (\U4|circuit_gen:0:hex_digit|Ndout[4]~9_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|clear_reg|Q~q\,
	datad => \U4|circuit_gen:0:hex_digit|Ndout[4]~9_combout\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[4]~10_combout\);

-- Location: LCCOMB_X75_Y49_N20
\U4|circuit_gen:0:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[5]~11_combout\ = (\U4|circuit_gen:0:out_reg|u0|Q~q\ & (!\U4|circuit_gen:0:out_reg|u1|Q~q\ & ((\U4|circuit_gen:0:out_reg|u2|Q~q\) # (!\U4|circuit_gen:0:out_reg|u3|Q~q\)))) # (!\U4|circuit_gen:0:out_reg|u0|Q~q\ & 
-- ((\U4|circuit_gen:0:out_reg|u2|Q~q\ & ((\U4|circuit_gen:0:out_reg|u3|Q~q\))) # (!\U4|circuit_gen:0:out_reg|u2|Q~q\ & ((!\U4|circuit_gen:0:out_reg|u3|Q~q\) # (!\U4|circuit_gen:0:out_reg|u1|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:0:out_reg|u0|Q~q\,
	datab => \U4|circuit_gen:0:out_reg|u2|Q~q\,
	datac => \U4|circuit_gen:0:out_reg|u1|Q~q\,
	datad => \U4|circuit_gen:0:out_reg|u3|Q~q\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X75_Y49_N2
\U4|circuit_gen:0:hex_digit|Ndout[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[5]~12_combout\ = (\U4|circuit_gen:0:hex_digit|Ndout[5]~11_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|clear_reg|Q~q\,
	datac => \U4|circuit_gen:0:hex_digit|Ndout[5]~11_combout\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[5]~12_combout\);

-- Location: LCCOMB_X75_Y49_N30
\U4|circuit_gen:0:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[6]~13_combout\ = (\U4|circuit_gen:0:out_reg|u2|Q~q\ & (\U4|circuit_gen:0:out_reg|u3|Q~q\ $ (((\U4|circuit_gen:0:out_reg|u1|Q~q\))))) # (!\U4|circuit_gen:0:out_reg|u2|Q~q\ & (\U4|circuit_gen:0:out_reg|u3|Q~q\ & 
-- ((\U4|circuit_gen:0:out_reg|u0|Q~q\) # (\U4|circuit_gen:0:out_reg|u1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:0:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:0:out_reg|u3|Q~q\,
	datac => \U4|circuit_gen:0:out_reg|u0|Q~q\,
	datad => \U4|circuit_gen:0:out_reg|u1|Q~q\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X75_Y49_N12
\U4|circuit_gen:0:hex_digit|Ndout[6]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:0:hex_digit|Ndout[6]~14_combout\ = (!\U4|circuit_gen:0:hex_digit|Ndout[6]~13_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|clear_reg|Q~q\,
	datad => \U4|circuit_gen:0:hex_digit|Ndout[6]~13_combout\,
	combout => \U4|circuit_gen:0:hex_digit|Ndout[6]~14_combout\);

-- Location: LCCOMB_X76_Y42_N10
\U4|circuit_gen:1:in_reg|u2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:in_reg|u2|Q~0_combout\ = !\U3|U0|U3|Sc5|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc5|Q~q\,
	combout => \U4|circuit_gen:1:in_reg|u2|Q~0_combout\);

-- Location: LCCOMB_X75_Y42_N16
\U4|decoder|dout[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|decoder|dout[1]~1_combout\ = (\U3|U0|U3|Sc0|Q~q\ & (!\U3|U0|U3|Sc1|Q~q\ & !\U3|U0|U3|Sc2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U0|U3|Sc0|Q~q\,
	datab => \U3|U0|U3|Sc1|Q~q\,
	datad => \U3|U0|U3|Sc2|Q~q\,
	combout => \U4|decoder|dout[1]~1_combout\);

-- Location: FF_X76_Y42_N11
\U4|circuit_gen:1:in_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	d => \U4|circuit_gen:1:in_reg|u2|Q~0_combout\,
	ena => \U4|decoder|dout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:1:in_reg|u2|Q~q\);

-- Location: FF_X75_Y46_N3
\U4|circuit_gen:1:out_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	asdata => \U4|circuit_gen:1:in_reg|u2|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:1:out_reg|u2|Q~q\);

-- Location: LCCOMB_X76_Y42_N20
\U4|circuit_gen:1:in_reg|u1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:in_reg|u1|Q~0_combout\ = !\U3|U0|U3|Sc4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc4|Q~q\,
	combout => \U4|circuit_gen:1:in_reg|u1|Q~0_combout\);

-- Location: FF_X76_Y42_N21
\U4|circuit_gen:1:in_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	d => \U4|circuit_gen:1:in_reg|u1|Q~0_combout\,
	ena => \U4|decoder|dout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:1:in_reg|u1|Q~q\);

-- Location: FF_X75_Y46_N21
\U4|circuit_gen:1:out_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	asdata => \U4|circuit_gen:1:in_reg|u1|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:1:out_reg|u1|Q~q\);

-- Location: LCCOMB_X76_Y42_N16
\U4|circuit_gen:1:in_reg|u3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:in_reg|u3|Q~0_combout\ = !\U3|U0|U3|Sc6|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc6|Q~q\,
	combout => \U4|circuit_gen:1:in_reg|u3|Q~0_combout\);

-- Location: FF_X76_Y42_N17
\U4|circuit_gen:1:in_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	d => \U4|circuit_gen:1:in_reg|u3|Q~0_combout\,
	ena => \U4|decoder|dout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:1:in_reg|u3|Q~q\);

-- Location: LCCOMB_X75_Y46_N8
\U4|circuit_gen:1:out_reg|u3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:out_reg|u3|Q~feeder_combout\ = \U4|circuit_gen:1:in_reg|u3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|circuit_gen:1:in_reg|u3|Q~q\,
	combout => \U4|circuit_gen:1:out_reg|u3|Q~feeder_combout\);

-- Location: FF_X75_Y46_N9
\U4|circuit_gen:1:out_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	d => \U4|circuit_gen:1:out_reg|u3|Q~feeder_combout\,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:1:out_reg|u3|Q~q\);

-- Location: LCCOMB_X76_Y42_N14
\U4|circuit_gen:1:in_reg|u0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:in_reg|u0|Q~0_combout\ = !\U3|U0|U3|Sc3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc3|Q~q\,
	combout => \U4|circuit_gen:1:in_reg|u0|Q~0_combout\);

-- Location: FF_X76_Y42_N15
\U4|circuit_gen:1:in_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	d => \U4|circuit_gen:1:in_reg|u0|Q~0_combout\,
	ena => \U4|decoder|dout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:1:in_reg|u0|Q~q\);

-- Location: FF_X75_Y46_N31
\U4|circuit_gen:1:out_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	asdata => \U4|circuit_gen:1:in_reg|u0|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:1:out_reg|u0|Q~q\);

-- Location: LCCOMB_X75_Y46_N0
\U4|circuit_gen:1:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[0]~0_combout\ = (\U4|circuit_gen:1:out_reg|u3|Q~q\ & (\U4|circuit_gen:1:out_reg|u1|Q~q\ & (\U4|circuit_gen:1:out_reg|u2|Q~q\ $ (\U4|circuit_gen:1:out_reg|u0|Q~q\)))) # (!\U4|circuit_gen:1:out_reg|u3|Q~q\ & 
-- (!\U4|circuit_gen:1:out_reg|u2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:1:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:1:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:1:out_reg|u3|Q~q\,
	datad => \U4|circuit_gen:1:out_reg|u0|Q~q\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X75_Y46_N10
\U4|circuit_gen:1:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[0]~1_combout\ = (\U4|circuit_gen:1:hex_digit|Ndout[0]~0_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|clear_reg|Q~q\,
	datad => \U4|circuit_gen:1:hex_digit|Ndout[0]~0_combout\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X75_Y46_N12
\U4|circuit_gen:1:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[1]~2_combout\ = (\U4|circuit_gen:1:out_reg|u2|Q~q\ & (!\U4|circuit_gen:1:out_reg|u1|Q~q\ & (!\U4|circuit_gen:1:out_reg|u3|Q~q\ & !\U4|circuit_gen:1:out_reg|u0|Q~q\))) # (!\U4|circuit_gen:1:out_reg|u2|Q~q\ & 
-- ((\U4|circuit_gen:1:out_reg|u1|Q~q\ $ (\U4|circuit_gen:1:out_reg|u0|Q~q\)) # (!\U4|circuit_gen:1:out_reg|u3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:1:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:1:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:1:out_reg|u3|Q~q\,
	datad => \U4|circuit_gen:1:out_reg|u0|Q~q\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X75_Y46_N22
\U4|circuit_gen:1:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[1]~3_combout\ = (\U4|circuit_gen:1:hex_digit|Ndout[1]~2_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|clear_reg|Q~q\,
	datad => \U4|circuit_gen:1:hex_digit|Ndout[1]~2_combout\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X75_Y46_N26
\U4|circuit_gen:1:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[2]~5_combout\ = (\U4|circuit_gen:1:out_reg|u2|Q~q\ & (!\U4|circuit_gen:1:out_reg|u1|Q~q\ & (\U4|circuit_gen:1:out_reg|u3|Q~q\ & \U4|circuit_gen:1:out_reg|u0|Q~q\))) # (!\U4|circuit_gen:1:out_reg|u2|Q~q\ & 
-- (\U4|circuit_gen:1:out_reg|u1|Q~q\ & (!\U4|circuit_gen:1:out_reg|u3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:1:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:1:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:1:out_reg|u3|Q~q\,
	datad => \U4|circuit_gen:1:out_reg|u0|Q~q\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X75_Y46_N16
\U4|circuit_gen:1:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[2]~4_combout\ = (!\U4|circuit_gen:1:out_reg|u1|Q~q\ & (!\U4|circuit_gen:1:out_reg|u3|Q~q\ & ((\U4|circuit_gen:1:out_reg|u2|Q~q\) # (!\U4|circuit_gen:1:out_reg|u0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:1:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:1:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:1:out_reg|u3|Q~q\,
	datad => \U4|circuit_gen:1:out_reg|u0|Q~q\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X75_Y46_N4
\U4|circuit_gen:1:hex_digit|Ndout[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[2]~6_combout\ = (\U4|circuit_gen:1:hex_digit|Ndout[2]~5_combout\) # ((\U4|circuit_gen:1:hex_digit|Ndout[2]~4_combout\) # (!\U4|clear_reg|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|circuit_gen:1:hex_digit|Ndout[2]~5_combout\,
	datac => \U4|clear_reg|Q~q\,
	datad => \U4|circuit_gen:1:hex_digit|Ndout[2]~4_combout\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[2]~6_combout\);

-- Location: LCCOMB_X75_Y46_N14
\U4|circuit_gen:1:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[3]~7_combout\ = (\U4|circuit_gen:1:out_reg|u1|Q~q\ & (\U4|circuit_gen:1:out_reg|u2|Q~q\ $ (((\U4|circuit_gen:1:out_reg|u0|Q~q\))))) # (!\U4|circuit_gen:1:out_reg|u1|Q~q\ & (!\U4|circuit_gen:1:out_reg|u2|Q~q\ & 
-- (\U4|circuit_gen:1:out_reg|u3|Q~q\ & !\U4|circuit_gen:1:out_reg|u0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:1:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:1:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:1:out_reg|u3|Q~q\,
	datad => \U4|circuit_gen:1:out_reg|u0|Q~q\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X75_Y46_N24
\U4|circuit_gen:1:hex_digit|Ndout[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[3]~8_combout\ = (\U4|circuit_gen:1:hex_digit|Ndout[3]~7_combout\) # ((\U4|circuit_gen:1:hex_digit|Ndout[2]~4_combout\) # (!\U4|clear_reg|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|circuit_gen:1:hex_digit|Ndout[3]~7_combout\,
	datac => \U4|clear_reg|Q~q\,
	datad => \U4|circuit_gen:1:hex_digit|Ndout[2]~4_combout\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[3]~8_combout\);

-- Location: LCCOMB_X75_Y46_N2
\U4|circuit_gen:1:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[4]~9_combout\ = (\U4|circuit_gen:1:out_reg|u1|Q~q\ & ((\U4|circuit_gen:1:out_reg|u2|Q~q\ & (!\U4|circuit_gen:1:out_reg|u0|Q~q\)) # (!\U4|circuit_gen:1:out_reg|u2|Q~q\ & ((\U4|circuit_gen:1:out_reg|u3|Q~q\))))) # 
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
	combout => \U4|circuit_gen:1:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X75_Y46_N18
\U4|circuit_gen:1:hex_digit|Ndout[4]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[4]~10_combout\ = (\U4|circuit_gen:1:hex_digit|Ndout[4]~9_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|clear_reg|Q~q\,
	datad => \U4|circuit_gen:1:hex_digit|Ndout[4]~9_combout\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[4]~10_combout\);

-- Location: LCCOMB_X75_Y46_N20
\U4|circuit_gen:1:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[5]~11_combout\ = (\U4|circuit_gen:1:out_reg|u0|Q~q\ & (!\U4|circuit_gen:1:out_reg|u1|Q~q\ & ((\U4|circuit_gen:1:out_reg|u2|Q~q\) # (!\U4|circuit_gen:1:out_reg|u3|Q~q\)))) # (!\U4|circuit_gen:1:out_reg|u0|Q~q\ & 
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
	combout => \U4|circuit_gen:1:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X75_Y46_N28
\U4|circuit_gen:1:hex_digit|Ndout[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[5]~12_combout\ = (\U4|circuit_gen:1:hex_digit|Ndout[5]~11_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:1:hex_digit|Ndout[5]~11_combout\,
	datac => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[5]~12_combout\);

-- Location: LCCOMB_X75_Y46_N30
\U4|circuit_gen:1:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[6]~13_combout\ = (\U4|circuit_gen:1:out_reg|u2|Q~q\ & (\U4|circuit_gen:1:out_reg|u3|Q~q\ $ (((\U4|circuit_gen:1:out_reg|u1|Q~q\))))) # (!\U4|circuit_gen:1:out_reg|u2|Q~q\ & (\U4|circuit_gen:1:out_reg|u3|Q~q\ & 
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
	combout => \U4|circuit_gen:1:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X75_Y46_N6
\U4|circuit_gen:1:hex_digit|Ndout[6]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:1:hex_digit|Ndout[6]~14_combout\ = (!\U4|clear_reg|Q~q\) # (!\U4|circuit_gen:1:hex_digit|Ndout[6]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:1:hex_digit|Ndout[6]~13_combout\,
	datac => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:1:hex_digit|Ndout[6]~14_combout\);

-- Location: LCCOMB_X75_Y43_N30
\U4|circuit_gen:2:in_reg|u2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:in_reg|u2|Q~0_combout\ = !\U3|U0|U3|Sc5|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc5|Q~q\,
	combout => \U4|circuit_gen:2:in_reg|u2|Q~0_combout\);

-- Location: LCCOMB_X75_Y42_N22
\U4|decoder|dout[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|decoder|dout[2]~2_combout\ = (!\U3|U0|U3|Sc0|Q~q\ & (\U3|U0|U3|Sc1|Q~q\ & !\U3|U0|U3|Sc2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U0|U3|Sc0|Q~q\,
	datab => \U3|U0|U3|Sc1|Q~q\,
	datad => \U3|U0|U3|Sc2|Q~q\,
	combout => \U4|decoder|dout[2]~2_combout\);

-- Location: FF_X75_Y43_N31
\U4|circuit_gen:2:in_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	d => \U4|circuit_gen:2:in_reg|u2|Q~0_combout\,
	ena => \U4|decoder|dout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:2:in_reg|u2|Q~q\);

-- Location: LCCOMB_X75_Y43_N10
\U4|circuit_gen:2:out_reg|u2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:out_reg|u2|Q~feeder_combout\ = \U4|circuit_gen:2:in_reg|u2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|circuit_gen:2:in_reg|u2|Q~q\,
	combout => \U4|circuit_gen:2:out_reg|u2|Q~feeder_combout\);

-- Location: FF_X75_Y43_N11
\U4|circuit_gen:2:out_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	d => \U4|circuit_gen:2:out_reg|u2|Q~feeder_combout\,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:2:out_reg|u2|Q~q\);

-- Location: LCCOMB_X75_Y43_N18
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

-- Location: FF_X75_Y43_N19
\U4|circuit_gen:2:in_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	d => \U4|circuit_gen:2:in_reg|u0|Q~0_combout\,
	ena => \U4|decoder|dout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:2:in_reg|u0|Q~q\);

-- Location: LCCOMB_X75_Y43_N6
\U4|circuit_gen:2:out_reg|u0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:out_reg|u0|Q~feeder_combout\ = \U4|circuit_gen:2:in_reg|u0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|circuit_gen:2:in_reg|u0|Q~q\,
	combout => \U4|circuit_gen:2:out_reg|u0|Q~feeder_combout\);

-- Location: FF_X75_Y43_N7
\U4|circuit_gen:2:out_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	d => \U4|circuit_gen:2:out_reg|u0|Q~feeder_combout\,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:2:out_reg|u0|Q~q\);

-- Location: LCCOMB_X75_Y43_N16
\U4|circuit_gen:2:in_reg|u1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:in_reg|u1|Q~0_combout\ = !\U3|U0|U3|Sc4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|U0|U3|Sc4|Q~q\,
	combout => \U4|circuit_gen:2:in_reg|u1|Q~0_combout\);

-- Location: FF_X75_Y43_N17
\U4|circuit_gen:2:in_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	d => \U4|circuit_gen:2:in_reg|u1|Q~0_combout\,
	ena => \U4|decoder|dout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:2:in_reg|u1|Q~q\);

-- Location: LCCOMB_X75_Y43_N12
\U4|circuit_gen:2:out_reg|u1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:out_reg|u1|Q~feeder_combout\ = \U4|circuit_gen:2:in_reg|u1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|circuit_gen:2:in_reg|u1|Q~q\,
	combout => \U4|circuit_gen:2:out_reg|u1|Q~feeder_combout\);

-- Location: FF_X75_Y43_N13
\U4|circuit_gen:2:out_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	d => \U4|circuit_gen:2:out_reg|u1|Q~feeder_combout\,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:2:out_reg|u1|Q~q\);

-- Location: LCCOMB_X75_Y43_N28
\U4|circuit_gen:2:in_reg|u3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:in_reg|u3|Q~0_combout\ = !\U3|U0|U3|Sc6|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc6|Q~q\,
	combout => \U4|circuit_gen:2:in_reg|u3|Q~0_combout\);

-- Location: FF_X75_Y43_N29
\U4|circuit_gen:2:in_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	d => \U4|circuit_gen:2:in_reg|u3|Q~0_combout\,
	ena => \U4|decoder|dout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:2:in_reg|u3|Q~q\);

-- Location: LCCOMB_X75_Y43_N0
\U4|circuit_gen:2:out_reg|u3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:out_reg|u3|Q~feeder_combout\ = \U4|circuit_gen:2:in_reg|u3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|circuit_gen:2:in_reg|u3|Q~q\,
	combout => \U4|circuit_gen:2:out_reg|u3|Q~feeder_combout\);

-- Location: FF_X75_Y43_N1
\U4|circuit_gen:2:out_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	d => \U4|circuit_gen:2:out_reg|u3|Q~feeder_combout\,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:2:out_reg|u3|Q~q\);

-- Location: LCCOMB_X75_Y44_N18
\U4|circuit_gen:2:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[0]~0_combout\ = (\U4|circuit_gen:2:out_reg|u3|Q~q\ & (\U4|circuit_gen:2:out_reg|u1|Q~q\ & (\U4|circuit_gen:2:out_reg|u2|Q~q\ $ (\U4|circuit_gen:2:out_reg|u0|Q~q\)))) # (!\U4|circuit_gen:2:out_reg|u3|Q~q\ & 
-- (!\U4|circuit_gen:2:out_reg|u2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:2:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:2:out_reg|u0|Q~q\,
	datac => \U4|circuit_gen:2:out_reg|u1|Q~q\,
	datad => \U4|circuit_gen:2:out_reg|u3|Q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X75_Y44_N20
\U4|circuit_gen:2:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[0]~1_combout\ = (\U4|circuit_gen:2:hex_digit|Ndout[0]~0_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|circuit_gen:2:hex_digit|Ndout[0]~0_combout\,
	datad => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X75_Y44_N22
\U4|circuit_gen:2:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[1]~2_combout\ = (\U4|circuit_gen:2:out_reg|u2|Q~q\ & (!\U4|circuit_gen:2:out_reg|u0|Q~q\ & (!\U4|circuit_gen:2:out_reg|u1|Q~q\ & !\U4|circuit_gen:2:out_reg|u3|Q~q\))) # (!\U4|circuit_gen:2:out_reg|u2|Q~q\ & 
-- ((\U4|circuit_gen:2:out_reg|u0|Q~q\ $ (\U4|circuit_gen:2:out_reg|u1|Q~q\)) # (!\U4|circuit_gen:2:out_reg|u3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:2:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:2:out_reg|u0|Q~q\,
	datac => \U4|circuit_gen:2:out_reg|u1|Q~q\,
	datad => \U4|circuit_gen:2:out_reg|u3|Q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X75_Y44_N24
\U4|circuit_gen:2:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[1]~3_combout\ = (\U4|circuit_gen:2:hex_digit|Ndout[1]~2_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|circuit_gen:2:hex_digit|Ndout[1]~2_combout\,
	datad => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X75_Y44_N28
\U4|circuit_gen:2:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[2]~5_combout\ = (\U4|circuit_gen:2:out_reg|u2|Q~q\ & (\U4|circuit_gen:2:out_reg|u0|Q~q\ & (!\U4|circuit_gen:2:out_reg|u1|Q~q\ & \U4|circuit_gen:2:out_reg|u3|Q~q\))) # (!\U4|circuit_gen:2:out_reg|u2|Q~q\ & 
-- (((\U4|circuit_gen:2:out_reg|u1|Q~q\ & !\U4|circuit_gen:2:out_reg|u3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:2:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:2:out_reg|u0|Q~q\,
	datac => \U4|circuit_gen:2:out_reg|u1|Q~q\,
	datad => \U4|circuit_gen:2:out_reg|u3|Q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X75_Y44_N26
\U4|circuit_gen:2:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[2]~4_combout\ = (!\U4|circuit_gen:2:out_reg|u1|Q~q\ & (!\U4|circuit_gen:2:out_reg|u3|Q~q\ & ((\U4|circuit_gen:2:out_reg|u2|Q~q\) # (!\U4|circuit_gen:2:out_reg|u0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:2:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:2:out_reg|u0|Q~q\,
	datac => \U4|circuit_gen:2:out_reg|u1|Q~q\,
	datad => \U4|circuit_gen:2:out_reg|u3|Q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X75_Y44_N6
\U4|circuit_gen:2:hex_digit|Ndout[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[2]~6_combout\ = (\U4|circuit_gen:2:hex_digit|Ndout[2]~5_combout\) # ((\U4|circuit_gen:2:hex_digit|Ndout[2]~4_combout\) # (!\U4|clear_reg|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|circuit_gen:2:hex_digit|Ndout[2]~5_combout\,
	datac => \U4|circuit_gen:2:hex_digit|Ndout[2]~4_combout\,
	datad => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[2]~6_combout\);

-- Location: LCCOMB_X75_Y44_N0
\U4|circuit_gen:2:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[3]~7_combout\ = (\U4|circuit_gen:2:out_reg|u1|Q~q\ & (\U4|circuit_gen:2:out_reg|u2|Q~q\ $ ((\U4|circuit_gen:2:out_reg|u0|Q~q\)))) # (!\U4|circuit_gen:2:out_reg|u1|Q~q\ & (!\U4|circuit_gen:2:out_reg|u2|Q~q\ & 
-- (!\U4|circuit_gen:2:out_reg|u0|Q~q\ & \U4|circuit_gen:2:out_reg|u3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:2:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:2:out_reg|u0|Q~q\,
	datac => \U4|circuit_gen:2:out_reg|u1|Q~q\,
	datad => \U4|circuit_gen:2:out_reg|u3|Q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X75_Y44_N10
\U4|circuit_gen:2:hex_digit|Ndout[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[3]~8_combout\ = (\U4|circuit_gen:2:hex_digit|Ndout[3]~7_combout\) # ((\U4|circuit_gen:2:hex_digit|Ndout[2]~4_combout\) # (!\U4|clear_reg|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|circuit_gen:2:hex_digit|Ndout[3]~7_combout\,
	datac => \U4|circuit_gen:2:hex_digit|Ndout[2]~4_combout\,
	datad => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[3]~8_combout\);

-- Location: LCCOMB_X75_Y43_N24
\U4|circuit_gen:2:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[4]~9_combout\ = (\U4|circuit_gen:2:out_reg|u1|Q~q\ & ((\U4|circuit_gen:2:out_reg|u2|Q~q\ & ((!\U4|circuit_gen:2:out_reg|u0|Q~q\))) # (!\U4|circuit_gen:2:out_reg|u2|Q~q\ & (\U4|circuit_gen:2:out_reg|u3|Q~q\)))) # 
-- (!\U4|circuit_gen:2:out_reg|u1|Q~q\ & (((!\U4|circuit_gen:2:out_reg|u0|Q~q\)) # (!\U4|circuit_gen:2:out_reg|u3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111110011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:2:out_reg|u1|Q~q\,
	datab => \U4|circuit_gen:2:out_reg|u3|Q~q\,
	datac => \U4|circuit_gen:2:out_reg|u0|Q~q\,
	datad => \U4|circuit_gen:2:out_reg|u2|Q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X75_Y43_N2
\U4|circuit_gen:2:hex_digit|Ndout[4]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[4]~10_combout\ = (\U4|circuit_gen:2:hex_digit|Ndout[4]~9_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|circuit_gen:2:hex_digit|Ndout[4]~9_combout\,
	datac => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[4]~10_combout\);

-- Location: LCCOMB_X75_Y43_N20
\U4|circuit_gen:2:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[5]~11_combout\ = (\U4|circuit_gen:2:out_reg|u0|Q~q\ & (!\U4|circuit_gen:2:out_reg|u1|Q~q\ & ((\U4|circuit_gen:2:out_reg|u2|Q~q\) # (!\U4|circuit_gen:2:out_reg|u3|Q~q\)))) # (!\U4|circuit_gen:2:out_reg|u0|Q~q\ & 
-- ((\U4|circuit_gen:2:out_reg|u3|Q~q\ & ((\U4|circuit_gen:2:out_reg|u2|Q~q\) # (!\U4|circuit_gen:2:out_reg|u1|Q~q\))) # (!\U4|circuit_gen:2:out_reg|u3|Q~q\ & ((!\U4|circuit_gen:2:out_reg|u2|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:2:out_reg|u1|Q~q\,
	datab => \U4|circuit_gen:2:out_reg|u3|Q~q\,
	datac => \U4|circuit_gen:2:out_reg|u0|Q~q\,
	datad => \U4|circuit_gen:2:out_reg|u2|Q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X75_Y43_N22
\U4|circuit_gen:2:hex_digit|Ndout[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[5]~12_combout\ = (\U4|circuit_gen:2:hex_digit|Ndout[5]~11_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|circuit_gen:2:hex_digit|Ndout[5]~11_combout\,
	datac => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[5]~12_combout\);

-- Location: LCCOMB_X75_Y43_N8
\U4|circuit_gen:2:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[6]~13_combout\ = (\U4|circuit_gen:2:out_reg|u1|Q~q\ & (\U4|circuit_gen:2:out_reg|u3|Q~q\ $ (((\U4|circuit_gen:2:out_reg|u2|Q~q\))))) # (!\U4|circuit_gen:2:out_reg|u1|Q~q\ & (\U4|circuit_gen:2:out_reg|u3|Q~q\ & 
-- ((\U4|circuit_gen:2:out_reg|u0|Q~q\) # (\U4|circuit_gen:2:out_reg|u2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:2:out_reg|u1|Q~q\,
	datab => \U4|circuit_gen:2:out_reg|u3|Q~q\,
	datac => \U4|circuit_gen:2:out_reg|u0|Q~q\,
	datad => \U4|circuit_gen:2:out_reg|u2|Q~q\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X75_Y43_N26
\U4|circuit_gen:2:hex_digit|Ndout[6]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:2:hex_digit|Ndout[6]~14_combout\ = (!\U4|circuit_gen:2:hex_digit|Ndout[6]~13_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|clear_reg|Q~q\,
	datac => \U4|circuit_gen:2:hex_digit|Ndout[6]~13_combout\,
	combout => \U4|circuit_gen:2:hex_digit|Ndout[6]~14_combout\);

-- Location: LCCOMB_X76_Y41_N0
\U4|circuit_gen:3:in_reg|u3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:in_reg|u3|Q~0_combout\ = !\U3|U0|U3|Sc6|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc6|Q~q\,
	combout => \U4|circuit_gen:3:in_reg|u3|Q~0_combout\);

-- Location: LCCOMB_X75_Y42_N8
\U4|decoder|dout[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|decoder|dout[3]~3_combout\ = (\U3|U0|U3|Sc0|Q~q\ & (\U3|U0|U3|Sc1|Q~q\ & !\U3|U0|U3|Sc2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U0|U3|Sc0|Q~q\,
	datab => \U3|U0|U3|Sc1|Q~q\,
	datad => \U3|U0|U3|Sc2|Q~q\,
	combout => \U4|decoder|dout[3]~3_combout\);

-- Location: FF_X76_Y41_N1
\U4|circuit_gen:3:in_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	d => \U4|circuit_gen:3:in_reg|u3|Q~0_combout\,
	ena => \U4|decoder|dout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:3:in_reg|u3|Q~q\);

-- Location: FF_X75_Y41_N7
\U4|circuit_gen:3:out_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	asdata => \U4|circuit_gen:3:in_reg|u3|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:3:out_reg|u3|Q~q\);

-- Location: LCCOMB_X75_Y41_N26
\U4|circuit_gen:3:in_reg|u2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:in_reg|u2|Q~0_combout\ = !\U3|U0|U3|Sc5|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc5|Q~q\,
	combout => \U4|circuit_gen:3:in_reg|u2|Q~0_combout\);

-- Location: FF_X75_Y41_N27
\U4|circuit_gen:3:in_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	d => \U4|circuit_gen:3:in_reg|u2|Q~0_combout\,
	ena => \U4|decoder|dout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:3:in_reg|u2|Q~q\);

-- Location: FF_X75_Y41_N31
\U4|circuit_gen:3:out_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	asdata => \U4|circuit_gen:3:in_reg|u2|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:3:out_reg|u2|Q~q\);

-- Location: LCCOMB_X76_Y41_N20
\U4|circuit_gen:3:in_reg|u0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:in_reg|u0|Q~0_combout\ = !\U3|U0|U3|Sc3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc3|Q~q\,
	combout => \U4|circuit_gen:3:in_reg|u0|Q~0_combout\);

-- Location: FF_X76_Y41_N21
\U4|circuit_gen:3:in_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	d => \U4|circuit_gen:3:in_reg|u0|Q~0_combout\,
	ena => \U4|decoder|dout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:3:in_reg|u0|Q~q\);

-- Location: FF_X75_Y41_N11
\U4|circuit_gen:3:out_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	asdata => \U4|circuit_gen:3:in_reg|u0|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:3:out_reg|u0|Q~q\);

-- Location: LCCOMB_X76_Y41_N10
\U4|circuit_gen:3:in_reg|u1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:in_reg|u1|Q~0_combout\ = !\U3|U0|U3|Sc4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|U0|U3|Sc4|Q~q\,
	combout => \U4|circuit_gen:3:in_reg|u1|Q~0_combout\);

-- Location: FF_X76_Y41_N11
\U4|circuit_gen:3:in_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	d => \U4|circuit_gen:3:in_reg|u1|Q~0_combout\,
	ena => \U4|decoder|dout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:3:in_reg|u1|Q~q\);

-- Location: FF_X75_Y41_N3
\U4|circuit_gen:3:out_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	asdata => \U4|circuit_gen:3:in_reg|u1|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:3:out_reg|u1|Q~q\);

-- Location: LCCOMB_X75_Y41_N20
\U4|circuit_gen:3:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[0]~0_combout\ = (\U4|circuit_gen:3:out_reg|u3|Q~q\ & (\U4|circuit_gen:3:out_reg|u1|Q~q\ & (\U4|circuit_gen:3:out_reg|u2|Q~q\ $ (\U4|circuit_gen:3:out_reg|u0|Q~q\)))) # (!\U4|circuit_gen:3:out_reg|u3|Q~q\ & 
-- (!\U4|circuit_gen:3:out_reg|u2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:3:out_reg|u3|Q~q\,
	datab => \U4|circuit_gen:3:out_reg|u2|Q~q\,
	datac => \U4|circuit_gen:3:out_reg|u0|Q~q\,
	datad => \U4|circuit_gen:3:out_reg|u1|Q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X75_Y41_N8
\U4|circuit_gen:3:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[0]~1_combout\ = (\U4|circuit_gen:3:hex_digit|Ndout[0]~0_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|circuit_gen:3:hex_digit|Ndout[0]~0_combout\,
	datad => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X75_Y41_N4
\U4|circuit_gen:3:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[1]~2_combout\ = (\U4|circuit_gen:3:out_reg|u3|Q~q\ & (!\U4|circuit_gen:3:out_reg|u2|Q~q\ & (\U4|circuit_gen:3:out_reg|u0|Q~q\ $ (\U4|circuit_gen:3:out_reg|u1|Q~q\)))) # (!\U4|circuit_gen:3:out_reg|u3|Q~q\ & 
-- (((!\U4|circuit_gen:3:out_reg|u0|Q~q\ & !\U4|circuit_gen:3:out_reg|u1|Q~q\)) # (!\U4|circuit_gen:3:out_reg|u2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:3:out_reg|u3|Q~q\,
	datab => \U4|circuit_gen:3:out_reg|u2|Q~q\,
	datac => \U4|circuit_gen:3:out_reg|u0|Q~q\,
	datad => \U4|circuit_gen:3:out_reg|u1|Q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X75_Y41_N28
\U4|circuit_gen:3:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[1]~3_combout\ = (\U4|circuit_gen:3:hex_digit|Ndout[1]~2_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:3:hex_digit|Ndout[1]~2_combout\,
	datad => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X75_Y41_N12
\U4|circuit_gen:3:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[2]~5_combout\ = (\U4|circuit_gen:3:out_reg|u3|Q~q\ & (\U4|circuit_gen:3:out_reg|u2|Q~q\ & (\U4|circuit_gen:3:out_reg|u0|Q~q\ & !\U4|circuit_gen:3:out_reg|u1|Q~q\))) # (!\U4|circuit_gen:3:out_reg|u3|Q~q\ & 
-- (!\U4|circuit_gen:3:out_reg|u2|Q~q\ & ((\U4|circuit_gen:3:out_reg|u1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:3:out_reg|u3|Q~q\,
	datab => \U4|circuit_gen:3:out_reg|u2|Q~q\,
	datac => \U4|circuit_gen:3:out_reg|u0|Q~q\,
	datad => \U4|circuit_gen:3:out_reg|u1|Q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X75_Y41_N24
\U4|circuit_gen:3:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[2]~4_combout\ = (!\U4|circuit_gen:3:out_reg|u3|Q~q\ & (!\U4|circuit_gen:3:out_reg|u1|Q~q\ & ((\U4|circuit_gen:3:out_reg|u2|Q~q\) # (!\U4|circuit_gen:3:out_reg|u0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:3:out_reg|u3|Q~q\,
	datab => \U4|circuit_gen:3:out_reg|u2|Q~q\,
	datac => \U4|circuit_gen:3:out_reg|u0|Q~q\,
	datad => \U4|circuit_gen:3:out_reg|u1|Q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X75_Y41_N16
\U4|circuit_gen:3:hex_digit|Ndout[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[2]~6_combout\ = (\U4|circuit_gen:3:hex_digit|Ndout[2]~5_combout\) # ((\U4|circuit_gen:3:hex_digit|Ndout[2]~4_combout\) # (!\U4|clear_reg|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:3:hex_digit|Ndout[2]~5_combout\,
	datab => \U4|circuit_gen:3:hex_digit|Ndout[2]~4_combout\,
	datad => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[2]~6_combout\);

-- Location: LCCOMB_X75_Y41_N6
\U4|circuit_gen:3:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[3]~7_combout\ = (\U4|circuit_gen:3:out_reg|u1|Q~q\ & (\U4|circuit_gen:3:out_reg|u0|Q~q\ $ ((\U4|circuit_gen:3:out_reg|u2|Q~q\)))) # (!\U4|circuit_gen:3:out_reg|u1|Q~q\ & (!\U4|circuit_gen:3:out_reg|u0|Q~q\ & 
-- (!\U4|circuit_gen:3:out_reg|u2|Q~q\ & \U4|circuit_gen:3:out_reg|u3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:3:out_reg|u0|Q~q\,
	datab => \U4|circuit_gen:3:out_reg|u2|Q~q\,
	datac => \U4|circuit_gen:3:out_reg|u3|Q~q\,
	datad => \U4|circuit_gen:3:out_reg|u1|Q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X75_Y41_N0
\U4|circuit_gen:3:hex_digit|Ndout[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[3]~8_combout\ = (\U4|circuit_gen:3:hex_digit|Ndout[3]~7_combout\) # ((\U4|circuit_gen:3:hex_digit|Ndout[2]~4_combout\) # (!\U4|clear_reg|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:3:hex_digit|Ndout[3]~7_combout\,
	datab => \U4|circuit_gen:3:hex_digit|Ndout[2]~4_combout\,
	datad => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[3]~8_combout\);

-- Location: LCCOMB_X75_Y41_N30
\U4|circuit_gen:3:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[4]~9_combout\ = (\U4|circuit_gen:3:out_reg|u1|Q~q\ & ((\U4|circuit_gen:3:out_reg|u2|Q~q\ & (!\U4|circuit_gen:3:out_reg|u0|Q~q\)) # (!\U4|circuit_gen:3:out_reg|u2|Q~q\ & ((\U4|circuit_gen:3:out_reg|u3|Q~q\))))) # 
-- (!\U4|circuit_gen:3:out_reg|u1|Q~q\ & (((!\U4|circuit_gen:3:out_reg|u3|Q~q\)) # (!\U4|circuit_gen:3:out_reg|u0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:3:out_reg|u0|Q~q\,
	datab => \U4|circuit_gen:3:out_reg|u3|Q~q\,
	datac => \U4|circuit_gen:3:out_reg|u2|Q~q\,
	datad => \U4|circuit_gen:3:out_reg|u1|Q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X75_Y41_N22
\U4|circuit_gen:3:hex_digit|Ndout[4]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[4]~10_combout\ = (\U4|circuit_gen:3:hex_digit|Ndout[4]~9_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|circuit_gen:3:hex_digit|Ndout[4]~9_combout\,
	datad => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[4]~10_combout\);

-- Location: LCCOMB_X75_Y41_N2
\U4|circuit_gen:3:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[5]~11_combout\ = (\U4|circuit_gen:3:out_reg|u0|Q~q\ & (!\U4|circuit_gen:3:out_reg|u1|Q~q\ & ((\U4|circuit_gen:3:out_reg|u2|Q~q\) # (!\U4|circuit_gen:3:out_reg|u3|Q~q\)))) # (!\U4|circuit_gen:3:out_reg|u0|Q~q\ & 
-- ((\U4|circuit_gen:3:out_reg|u3|Q~q\ & ((\U4|circuit_gen:3:out_reg|u2|Q~q\) # (!\U4|circuit_gen:3:out_reg|u1|Q~q\))) # (!\U4|circuit_gen:3:out_reg|u3|Q~q\ & ((!\U4|circuit_gen:3:out_reg|u2|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:3:out_reg|u0|Q~q\,
	datab => \U4|circuit_gen:3:out_reg|u3|Q~q\,
	datac => \U4|circuit_gen:3:out_reg|u1|Q~q\,
	datad => \U4|circuit_gen:3:out_reg|u2|Q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X75_Y41_N14
\U4|circuit_gen:3:hex_digit|Ndout[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[5]~12_combout\ = (\U4|circuit_gen:3:hex_digit|Ndout[5]~11_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|circuit_gen:3:hex_digit|Ndout[5]~11_combout\,
	datad => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[5]~12_combout\);

-- Location: LCCOMB_X75_Y41_N10
\U4|circuit_gen:3:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[6]~13_combout\ = (\U4|circuit_gen:3:out_reg|u2|Q~q\ & (\U4|circuit_gen:3:out_reg|u3|Q~q\ $ (((\U4|circuit_gen:3:out_reg|u1|Q~q\))))) # (!\U4|circuit_gen:3:out_reg|u2|Q~q\ & (\U4|circuit_gen:3:out_reg|u3|Q~q\ & 
-- ((\U4|circuit_gen:3:out_reg|u0|Q~q\) # (\U4|circuit_gen:3:out_reg|u1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:3:out_reg|u3|Q~q\,
	datab => \U4|circuit_gen:3:out_reg|u2|Q~q\,
	datac => \U4|circuit_gen:3:out_reg|u0|Q~q\,
	datad => \U4|circuit_gen:3:out_reg|u1|Q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X75_Y41_N18
\U4|circuit_gen:3:hex_digit|Ndout[6]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:3:hex_digit|Ndout[6]~14_combout\ = (!\U4|clear_reg|Q~q\) # (!\U4|circuit_gen:3:hex_digit|Ndout[6]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|circuit_gen:3:hex_digit|Ndout[6]~13_combout\,
	datad => \U4|clear_reg|Q~q\,
	combout => \U4|circuit_gen:3:hex_digit|Ndout[6]~14_combout\);

-- Location: LCCOMB_X76_Y41_N4
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

-- Location: LCCOMB_X75_Y42_N2
\U4|decoder|dout[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|decoder|dout[4]~4_combout\ = (!\U3|U0|U3|Sc0|Q~q\ & (!\U3|U0|U3|Sc1|Q~q\ & \U3|U0|U3|Sc2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U0|U3|Sc0|Q~q\,
	datac => \U3|U0|U3|Sc1|Q~q\,
	datad => \U3|U0|U3|Sc2|Q~q\,
	combout => \U4|decoder|dout[4]~4_combout\);

-- Location: FF_X76_Y41_N5
\U4|circuit_gen:4:in_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	d => \U4|circuit_gen:4:in_reg|u0|Q~0_combout\,
	ena => \U4|decoder|dout[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:4:in_reg|u0|Q~q\);

-- Location: FF_X77_Y41_N15
\U4|circuit_gen:4:out_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	asdata => \U4|circuit_gen:4:in_reg|u0|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:4:out_reg|u0|Q~q\);

-- Location: LCCOMB_X76_Y41_N16
\U4|circuit_gen:4:in_reg|u2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:in_reg|u2|Q~0_combout\ = !\U3|U0|U3|Sc5|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc5|Q~q\,
	combout => \U4|circuit_gen:4:in_reg|u2|Q~0_combout\);

-- Location: FF_X76_Y41_N17
\U4|circuit_gen:4:in_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	d => \U4|circuit_gen:4:in_reg|u2|Q~0_combout\,
	ena => \U4|decoder|dout[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:4:in_reg|u2|Q~q\);

-- Location: FF_X77_Y41_N3
\U4|circuit_gen:4:out_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	asdata => \U4|circuit_gen:4:in_reg|u2|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:4:out_reg|u2|Q~q\);

-- Location: LCCOMB_X76_Y41_N26
\U4|circuit_gen:4:in_reg|u1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:in_reg|u1|Q~0_combout\ = !\U3|U0|U3|Sc4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|U0|U3|Sc4|Q~q\,
	combout => \U4|circuit_gen:4:in_reg|u1|Q~0_combout\);

-- Location: FF_X76_Y41_N27
\U4|circuit_gen:4:in_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	d => \U4|circuit_gen:4:in_reg|u1|Q~0_combout\,
	ena => \U4|decoder|dout[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:4:in_reg|u1|Q~q\);

-- Location: FF_X77_Y41_N29
\U4|circuit_gen:4:out_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	asdata => \U4|circuit_gen:4:in_reg|u1|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:4:out_reg|u1|Q~q\);

-- Location: LCCOMB_X76_Y41_N6
\U4|circuit_gen:4:in_reg|u3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:in_reg|u3|Q~0_combout\ = !\U3|U0|U3|Sc6|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc6|Q~q\,
	combout => \U4|circuit_gen:4:in_reg|u3|Q~0_combout\);

-- Location: FF_X76_Y41_N7
\U4|circuit_gen:4:in_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	d => \U4|circuit_gen:4:in_reg|u3|Q~0_combout\,
	ena => \U4|decoder|dout[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:4:in_reg|u3|Q~q\);

-- Location: FF_X77_Y41_N25
\U4|circuit_gen:4:out_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	asdata => \U4|circuit_gen:4:in_reg|u3|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:4:out_reg|u3|Q~q\);

-- Location: LCCOMB_X77_Y41_N0
\U4|circuit_gen:4:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[0]~0_combout\ = (\U4|circuit_gen:4:out_reg|u3|Q~q\ & (\U4|circuit_gen:4:out_reg|u1|Q~q\ & (\U4|circuit_gen:4:out_reg|u0|Q~q\ $ (\U4|circuit_gen:4:out_reg|u2|Q~q\)))) # (!\U4|circuit_gen:4:out_reg|u3|Q~q\ & 
-- (((!\U4|circuit_gen:4:out_reg|u2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:4:out_reg|u0|Q~q\,
	datab => \U4|circuit_gen:4:out_reg|u2|Q~q\,
	datac => \U4|circuit_gen:4:out_reg|u1|Q~q\,
	datad => \U4|circuit_gen:4:out_reg|u3|Q~q\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X77_Y41_N26
\U4|circuit_gen:4:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[0]~1_combout\ = (\U4|circuit_gen:4:hex_digit|Ndout[0]~0_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|clear_reg|Q~q\,
	datad => \U4|circuit_gen:4:hex_digit|Ndout[0]~0_combout\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X77_Y41_N12
\U4|circuit_gen:4:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[1]~2_combout\ = (\U4|circuit_gen:4:out_reg|u0|Q~q\ & (!\U4|circuit_gen:4:out_reg|u2|Q~q\ & ((!\U4|circuit_gen:4:out_reg|u3|Q~q\) # (!\U4|circuit_gen:4:out_reg|u1|Q~q\)))) # (!\U4|circuit_gen:4:out_reg|u0|Q~q\ & 
-- ((\U4|circuit_gen:4:out_reg|u1|Q~q\ & (!\U4|circuit_gen:4:out_reg|u2|Q~q\)) # (!\U4|circuit_gen:4:out_reg|u1|Q~q\ & ((!\U4|circuit_gen:4:out_reg|u3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:4:out_reg|u0|Q~q\,
	datab => \U4|circuit_gen:4:out_reg|u2|Q~q\,
	datac => \U4|circuit_gen:4:out_reg|u1|Q~q\,
	datad => \U4|circuit_gen:4:out_reg|u3|Q~q\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X77_Y41_N30
\U4|circuit_gen:4:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[1]~3_combout\ = (\U4|circuit_gen:4:hex_digit|Ndout[1]~2_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|clear_reg|Q~q\,
	datad => \U4|circuit_gen:4:hex_digit|Ndout[1]~2_combout\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X77_Y41_N10
\U4|circuit_gen:4:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[2]~5_combout\ = (\U4|circuit_gen:4:out_reg|u2|Q~q\ & (\U4|circuit_gen:4:out_reg|u0|Q~q\ & (!\U4|circuit_gen:4:out_reg|u1|Q~q\ & \U4|circuit_gen:4:out_reg|u3|Q~q\))) # (!\U4|circuit_gen:4:out_reg|u2|Q~q\ & 
-- (((\U4|circuit_gen:4:out_reg|u1|Q~q\ & !\U4|circuit_gen:4:out_reg|u3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:4:out_reg|u0|Q~q\,
	datab => \U4|circuit_gen:4:out_reg|u2|Q~q\,
	datac => \U4|circuit_gen:4:out_reg|u1|Q~q\,
	datad => \U4|circuit_gen:4:out_reg|u3|Q~q\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X77_Y41_N16
\U4|circuit_gen:4:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[2]~4_combout\ = (!\U4|circuit_gen:4:out_reg|u1|Q~q\ & (!\U4|circuit_gen:4:out_reg|u3|Q~q\ & ((\U4|circuit_gen:4:out_reg|u2|Q~q\) # (!\U4|circuit_gen:4:out_reg|u0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:4:out_reg|u0|Q~q\,
	datab => \U4|circuit_gen:4:out_reg|u2|Q~q\,
	datac => \U4|circuit_gen:4:out_reg|u1|Q~q\,
	datad => \U4|circuit_gen:4:out_reg|u3|Q~q\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X77_Y41_N4
\U4|circuit_gen:4:hex_digit|Ndout[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[2]~6_combout\ = ((\U4|circuit_gen:4:hex_digit|Ndout[2]~5_combout\) # (\U4|circuit_gen:4:hex_digit|Ndout[2]~4_combout\)) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|clear_reg|Q~q\,
	datac => \U4|circuit_gen:4:hex_digit|Ndout[2]~5_combout\,
	datad => \U4|circuit_gen:4:hex_digit|Ndout[2]~4_combout\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[2]~6_combout\);

-- Location: LCCOMB_X77_Y41_N24
\U4|circuit_gen:4:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[3]~7_combout\ = (\U4|circuit_gen:4:out_reg|u1|Q~q\ & (\U4|circuit_gen:4:out_reg|u0|Q~q\ $ (((\U4|circuit_gen:4:out_reg|u2|Q~q\))))) # (!\U4|circuit_gen:4:out_reg|u1|Q~q\ & (!\U4|circuit_gen:4:out_reg|u0|Q~q\ & 
-- (\U4|circuit_gen:4:out_reg|u3|Q~q\ & !\U4|circuit_gen:4:out_reg|u2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:4:out_reg|u0|Q~q\,
	datab => \U4|circuit_gen:4:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:4:out_reg|u3|Q~q\,
	datad => \U4|circuit_gen:4:out_reg|u2|Q~q\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X77_Y41_N22
\U4|circuit_gen:4:hex_digit|Ndout[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[3]~8_combout\ = ((\U4|circuit_gen:4:hex_digit|Ndout[3]~7_combout\) # (\U4|circuit_gen:4:hex_digit|Ndout[2]~4_combout\)) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|clear_reg|Q~q\,
	datac => \U4|circuit_gen:4:hex_digit|Ndout[3]~7_combout\,
	datad => \U4|circuit_gen:4:hex_digit|Ndout[2]~4_combout\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[3]~8_combout\);

-- Location: LCCOMB_X77_Y41_N2
\U4|circuit_gen:4:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[4]~9_combout\ = (\U4|circuit_gen:4:out_reg|u1|Q~q\ & ((\U4|circuit_gen:4:out_reg|u2|Q~q\ & (!\U4|circuit_gen:4:out_reg|u0|Q~q\)) # (!\U4|circuit_gen:4:out_reg|u2|Q~q\ & ((\U4|circuit_gen:4:out_reg|u3|Q~q\))))) # 
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
	combout => \U4|circuit_gen:4:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X77_Y41_N8
\U4|circuit_gen:4:hex_digit|Ndout[4]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[4]~10_combout\ = (\U4|circuit_gen:4:hex_digit|Ndout[4]~9_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|clear_reg|Q~q\,
	datac => \U4|circuit_gen:4:hex_digit|Ndout[4]~9_combout\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[4]~10_combout\);

-- Location: LCCOMB_X77_Y41_N28
\U4|circuit_gen:4:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[5]~11_combout\ = (\U4|circuit_gen:4:out_reg|u0|Q~q\ & (!\U4|circuit_gen:4:out_reg|u1|Q~q\ & ((\U4|circuit_gen:4:out_reg|u2|Q~q\) # (!\U4|circuit_gen:4:out_reg|u3|Q~q\)))) # (!\U4|circuit_gen:4:out_reg|u0|Q~q\ & 
-- ((\U4|circuit_gen:4:out_reg|u2|Q~q\ & ((\U4|circuit_gen:4:out_reg|u3|Q~q\))) # (!\U4|circuit_gen:4:out_reg|u2|Q~q\ & ((!\U4|circuit_gen:4:out_reg|u3|Q~q\) # (!\U4|circuit_gen:4:out_reg|u1|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:4:out_reg|u0|Q~q\,
	datab => \U4|circuit_gen:4:out_reg|u2|Q~q\,
	datac => \U4|circuit_gen:4:out_reg|u1|Q~q\,
	datad => \U4|circuit_gen:4:out_reg|u3|Q~q\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X77_Y41_N18
\U4|circuit_gen:4:hex_digit|Ndout[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[5]~12_combout\ = (\U4|circuit_gen:4:hex_digit|Ndout[5]~11_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|clear_reg|Q~q\,
	datad => \U4|circuit_gen:4:hex_digit|Ndout[5]~11_combout\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[5]~12_combout\);

-- Location: LCCOMB_X77_Y41_N14
\U4|circuit_gen:4:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[6]~13_combout\ = (\U4|circuit_gen:4:out_reg|u1|Q~q\ & (\U4|circuit_gen:4:out_reg|u2|Q~q\ $ (((\U4|circuit_gen:4:out_reg|u3|Q~q\))))) # (!\U4|circuit_gen:4:out_reg|u1|Q~q\ & (\U4|circuit_gen:4:out_reg|u3|Q~q\ & 
-- ((\U4|circuit_gen:4:out_reg|u2|Q~q\) # (\U4|circuit_gen:4:out_reg|u0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:4:out_reg|u1|Q~q\,
	datab => \U4|circuit_gen:4:out_reg|u2|Q~q\,
	datac => \U4|circuit_gen:4:out_reg|u0|Q~q\,
	datad => \U4|circuit_gen:4:out_reg|u3|Q~q\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X77_Y41_N20
\U4|circuit_gen:4:hex_digit|Ndout[6]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:4:hex_digit|Ndout[6]~14_combout\ = (!\U4|circuit_gen:4:hex_digit|Ndout[6]~13_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|clear_reg|Q~q\,
	datac => \U4|circuit_gen:4:hex_digit|Ndout[6]~13_combout\,
	combout => \U4|circuit_gen:4:hex_digit|Ndout[6]~14_combout\);

-- Location: LCCOMB_X76_Y42_N18
\U4|circuit_gen:5:in_reg|u2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:in_reg|u2|Q~0_combout\ = !\U3|U0|U3|Sc5|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc5|Q~q\,
	combout => \U4|circuit_gen:5:in_reg|u2|Q~0_combout\);

-- Location: LCCOMB_X75_Y42_N6
\U4|decoder|dout[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|decoder|dout[5]~5_combout\ = (!\U3|U0|U3|Sc1|Q~q\ & (\U3|U0|U3|Sc0|Q~q\ & \U3|U0|U3|Sc2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|U0|U3|Sc1|Q~q\,
	datac => \U3|U0|U3|Sc0|Q~q\,
	datad => \U3|U0|U3|Sc2|Q~q\,
	combout => \U4|decoder|dout[5]~5_combout\);

-- Location: FF_X76_Y42_N19
\U4|circuit_gen:5:in_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	d => \U4|circuit_gen:5:in_reg|u2|Q~0_combout\,
	ena => \U4|decoder|dout[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:5:in_reg|u2|Q~q\);

-- Location: FF_X77_Y38_N11
\U4|circuit_gen:5:out_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	asdata => \U4|circuit_gen:5:in_reg|u2|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:5:out_reg|u2|Q~q\);

-- Location: LCCOMB_X76_Y42_N12
\U4|circuit_gen:5:in_reg|u1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:in_reg|u1|Q~0_combout\ = !\U3|U0|U3|Sc4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc4|Q~q\,
	combout => \U4|circuit_gen:5:in_reg|u1|Q~0_combout\);

-- Location: FF_X76_Y42_N13
\U4|circuit_gen:5:in_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	d => \U4|circuit_gen:5:in_reg|u1|Q~0_combout\,
	ena => \U4|decoder|dout[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:5:in_reg|u1|Q~q\);

-- Location: FF_X77_Y38_N21
\U4|circuit_gen:5:out_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	asdata => \U4|circuit_gen:5:in_reg|u1|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:5:out_reg|u1|Q~q\);

-- Location: LCCOMB_X76_Y42_N6
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

-- Location: FF_X76_Y42_N7
\U4|circuit_gen:5:in_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	d => \U4|circuit_gen:5:in_reg|u0|Q~0_combout\,
	ena => \U4|decoder|dout[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:5:in_reg|u0|Q~q\);

-- Location: FF_X77_Y38_N7
\U4|circuit_gen:5:out_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	asdata => \U4|circuit_gen:5:in_reg|u0|Q~q\,
	sload => VCC,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:5:out_reg|u0|Q~q\);

-- Location: LCCOMB_X76_Y42_N8
\U4|circuit_gen:5:in_reg|u3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:in_reg|u3|Q~0_combout\ = !\U3|U0|U3|Sc6|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|U0|U3|Sc6|Q~q\,
	combout => \U4|circuit_gen:5:in_reg|u3|Q~0_combout\);

-- Location: FF_X76_Y42_N9
\U4|circuit_gen:5:in_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	d => \U4|circuit_gen:5:in_reg|u3|Q~0_combout\,
	ena => \U4|decoder|dout[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:5:in_reg|u3|Q~q\);

-- Location: LCCOMB_X77_Y38_N24
\U4|circuit_gen:5:out_reg|u3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:out_reg|u3|Q~feeder_combout\ = \U4|circuit_gen:5:in_reg|u3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|circuit_gen:5:in_reg|u3|Q~q\,
	combout => \U4|circuit_gen:5:out_reg|u3|Q~feeder_combout\);

-- Location: FF_X77_Y38_N25
\U4|circuit_gen:5:out_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U3|U1|WrD~clkctrl_outclk\,
	d => \U4|circuit_gen:5:out_reg|u3|Q~feeder_combout\,
	ena => \U4|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|circuit_gen:5:out_reg|u3|Q~q\);

-- Location: LCCOMB_X77_Y38_N0
\U4|circuit_gen:5:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[0]~0_combout\ = (\U4|circuit_gen:5:out_reg|u3|Q~q\ & (\U4|circuit_gen:5:out_reg|u1|Q~q\ & (\U4|circuit_gen:5:out_reg|u2|Q~q\ $ (\U4|circuit_gen:5:out_reg|u0|Q~q\)))) # (!\U4|circuit_gen:5:out_reg|u3|Q~q\ & 
-- (!\U4|circuit_gen:5:out_reg|u2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:5:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:5:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:5:out_reg|u0|Q~q\,
	datad => \U4|circuit_gen:5:out_reg|u3|Q~q\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X77_Y38_N2
\U4|circuit_gen:5:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[0]~1_combout\ = (\U4|circuit_gen:5:hex_digit|Ndout[0]~0_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|clear_reg|Q~q\,
	datad => \U4|circuit_gen:5:hex_digit|Ndout[0]~0_combout\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X77_Y38_N28
\U4|circuit_gen:5:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[1]~2_combout\ = (\U4|circuit_gen:5:out_reg|u2|Q~q\ & (!\U4|circuit_gen:5:out_reg|u1|Q~q\ & (!\U4|circuit_gen:5:out_reg|u0|Q~q\ & !\U4|circuit_gen:5:out_reg|u3|Q~q\))) # (!\U4|circuit_gen:5:out_reg|u2|Q~q\ & 
-- ((\U4|circuit_gen:5:out_reg|u1|Q~q\ $ (\U4|circuit_gen:5:out_reg|u0|Q~q\)) # (!\U4|circuit_gen:5:out_reg|u3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:5:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:5:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:5:out_reg|u0|Q~q\,
	datad => \U4|circuit_gen:5:out_reg|u3|Q~q\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X77_Y38_N22
\U4|circuit_gen:5:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[1]~3_combout\ = (\U4|circuit_gen:5:hex_digit|Ndout[1]~2_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|clear_reg|Q~q\,
	datac => \U4|circuit_gen:5:hex_digit|Ndout[1]~2_combout\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X77_Y38_N26
\U4|circuit_gen:5:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[2]~5_combout\ = (\U4|circuit_gen:5:out_reg|u2|Q~q\ & (!\U4|circuit_gen:5:out_reg|u1|Q~q\ & (\U4|circuit_gen:5:out_reg|u0|Q~q\ & \U4|circuit_gen:5:out_reg|u3|Q~q\))) # (!\U4|circuit_gen:5:out_reg|u2|Q~q\ & 
-- (\U4|circuit_gen:5:out_reg|u1|Q~q\ & ((!\U4|circuit_gen:5:out_reg|u3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:5:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:5:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:5:out_reg|u0|Q~q\,
	datad => \U4|circuit_gen:5:out_reg|u3|Q~q\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X77_Y38_N16
\U4|circuit_gen:5:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[2]~4_combout\ = (!\U4|circuit_gen:5:out_reg|u1|Q~q\ & (!\U4|circuit_gen:5:out_reg|u3|Q~q\ & ((\U4|circuit_gen:5:out_reg|u2|Q~q\) # (!\U4|circuit_gen:5:out_reg|u0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:5:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:5:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:5:out_reg|u0|Q~q\,
	datad => \U4|circuit_gen:5:out_reg|u3|Q~q\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X77_Y38_N4
\U4|circuit_gen:5:hex_digit|Ndout[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[2]~6_combout\ = ((\U4|circuit_gen:5:hex_digit|Ndout[2]~5_combout\) # (\U4|circuit_gen:5:hex_digit|Ndout[2]~4_combout\)) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|clear_reg|Q~q\,
	datac => \U4|circuit_gen:5:hex_digit|Ndout[2]~5_combout\,
	datad => \U4|circuit_gen:5:hex_digit|Ndout[2]~4_combout\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[2]~6_combout\);

-- Location: LCCOMB_X77_Y38_N14
\U4|circuit_gen:5:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[3]~7_combout\ = (\U4|circuit_gen:5:out_reg|u1|Q~q\ & (\U4|circuit_gen:5:out_reg|u2|Q~q\ $ ((\U4|circuit_gen:5:out_reg|u0|Q~q\)))) # (!\U4|circuit_gen:5:out_reg|u1|Q~q\ & (!\U4|circuit_gen:5:out_reg|u2|Q~q\ & 
-- (!\U4|circuit_gen:5:out_reg|u0|Q~q\ & \U4|circuit_gen:5:out_reg|u3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:5:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:5:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:5:out_reg|u0|Q~q\,
	datad => \U4|circuit_gen:5:out_reg|u3|Q~q\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X77_Y38_N8
\U4|circuit_gen:5:hex_digit|Ndout[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[3]~8_combout\ = ((\U4|circuit_gen:5:hex_digit|Ndout[3]~7_combout\) # (\U4|circuit_gen:5:hex_digit|Ndout[2]~4_combout\)) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|clear_reg|Q~q\,
	datac => \U4|circuit_gen:5:hex_digit|Ndout[3]~7_combout\,
	datad => \U4|circuit_gen:5:hex_digit|Ndout[2]~4_combout\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[3]~8_combout\);

-- Location: LCCOMB_X77_Y38_N10
\U4|circuit_gen:5:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[4]~9_combout\ = (\U4|circuit_gen:5:out_reg|u1|Q~q\ & ((\U4|circuit_gen:5:out_reg|u2|Q~q\ & (!\U4|circuit_gen:5:out_reg|u0|Q~q\)) # (!\U4|circuit_gen:5:out_reg|u2|Q~q\ & ((\U4|circuit_gen:5:out_reg|u3|Q~q\))))) # 
-- (!\U4|circuit_gen:5:out_reg|u1|Q~q\ & (((!\U4|circuit_gen:5:out_reg|u3|Q~q\)) # (!\U4|circuit_gen:5:out_reg|u0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:5:out_reg|u0|Q~q\,
	datab => \U4|circuit_gen:5:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:5:out_reg|u2|Q~q\,
	datad => \U4|circuit_gen:5:out_reg|u3|Q~q\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X77_Y38_N18
\U4|circuit_gen:5:hex_digit|Ndout[4]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[4]~10_combout\ = (\U4|circuit_gen:5:hex_digit|Ndout[4]~9_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|clear_reg|Q~q\,
	datac => \U4|circuit_gen:5:hex_digit|Ndout[4]~9_combout\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[4]~10_combout\);

-- Location: LCCOMB_X77_Y38_N20
\U4|circuit_gen:5:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[5]~11_combout\ = (\U4|circuit_gen:5:out_reg|u0|Q~q\ & (!\U4|circuit_gen:5:out_reg|u1|Q~q\ & ((\U4|circuit_gen:5:out_reg|u2|Q~q\) # (!\U4|circuit_gen:5:out_reg|u3|Q~q\)))) # (!\U4|circuit_gen:5:out_reg|u0|Q~q\ & 
-- ((\U4|circuit_gen:5:out_reg|u3|Q~q\ & ((\U4|circuit_gen:5:out_reg|u2|Q~q\) # (!\U4|circuit_gen:5:out_reg|u1|Q~q\))) # (!\U4|circuit_gen:5:out_reg|u3|Q~q\ & ((!\U4|circuit_gen:5:out_reg|u2|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:5:out_reg|u0|Q~q\,
	datab => \U4|circuit_gen:5:out_reg|u3|Q~q\,
	datac => \U4|circuit_gen:5:out_reg|u1|Q~q\,
	datad => \U4|circuit_gen:5:out_reg|u2|Q~q\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X77_Y38_N12
\U4|circuit_gen:5:hex_digit|Ndout[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[5]~12_combout\ = (\U4|circuit_gen:5:hex_digit|Ndout[5]~11_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|clear_reg|Q~q\,
	datac => \U4|circuit_gen:5:hex_digit|Ndout[5]~11_combout\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[5]~12_combout\);

-- Location: LCCOMB_X77_Y38_N6
\U4|circuit_gen:5:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[6]~13_combout\ = (\U4|circuit_gen:5:out_reg|u2|Q~q\ & (\U4|circuit_gen:5:out_reg|u1|Q~q\ $ (((\U4|circuit_gen:5:out_reg|u3|Q~q\))))) # (!\U4|circuit_gen:5:out_reg|u2|Q~q\ & (\U4|circuit_gen:5:out_reg|u3|Q~q\ & 
-- ((\U4|circuit_gen:5:out_reg|u1|Q~q\) # (\U4|circuit_gen:5:out_reg|u0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|circuit_gen:5:out_reg|u2|Q~q\,
	datab => \U4|circuit_gen:5:out_reg|u1|Q~q\,
	datac => \U4|circuit_gen:5:out_reg|u0|Q~q\,
	datad => \U4|circuit_gen:5:out_reg|u3|Q~q\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X77_Y38_N30
\U4|circuit_gen:5:hex_digit|Ndout[6]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|circuit_gen:5:hex_digit|Ndout[6]~14_combout\ = (!\U4|circuit_gen:5:hex_digit|Ndout[6]~13_combout\) # (!\U4|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|clear_reg|Q~q\,
	datac => \U4|circuit_gen:5:hex_digit|Ndout[6]~13_combout\,
	combout => \U4|circuit_gen:5:hex_digit|Ndout[6]~14_combout\);

-- Location: FF_X39_Y38_N1
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

-- Location: FF_X39_Y38_N3
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

-- Location: FF_X39_Y38_N5
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

-- Location: LCCOMB_X51_Y4_N0
\auto_hub|~GND\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

-- Location: LCCOMB_X38_Y38_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell_combout\);

-- Location: LCCOMB_X30_Y38_N0
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


