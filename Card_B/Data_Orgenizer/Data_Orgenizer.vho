-- Copyright (C) 2022  Intel Corporation. All rights reserved.
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
-- VERSION "Version 22.1std.0 Build 915 10/25/2022 SC Lite Edition"

-- DATE "08/01/2024 15:22:56"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Data_Orgenizer IS
    PORT (
	resetn : IN std_logic;
	sysclk : IN std_logic;
	main_clk : IN std_logic;
	nrzl_data : IN std_logic;
	crc8bit_in : IN std_logic;
	correlation : IN std_logic_vector(4 DOWNTO 0);
	load_leds : OUT std_logic;
	green_leds : OUT std_logic_vector(7 DOWNTO 0);
	rgb_leds : OUT std_logic_vector(95 DOWNTO 0)
	);
END Data_Orgenizer;

-- Design Ports Information
-- load_leds	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_leds[0]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_leds[1]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_leds[2]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_leds[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_leds[4]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_leds[5]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_leds[6]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_leds[7]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[2]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[4]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[6]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[7]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[8]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[9]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[10]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[11]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[12]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[13]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[14]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[15]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[16]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[17]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[18]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[19]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[20]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[21]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[22]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[23]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[24]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[25]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[26]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[27]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[28]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[29]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[30]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[31]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[32]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[33]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[34]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[35]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[36]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[37]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[38]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[39]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[40]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[41]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[42]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[43]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[44]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[45]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[46]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[47]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[48]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[49]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[50]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[51]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[52]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[53]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[54]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[55]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[56]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[57]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[58]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[59]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[60]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[61]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[62]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[63]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[64]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[65]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[66]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[67]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[68]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[69]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[70]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[71]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[72]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[73]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[74]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[75]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[76]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[77]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[78]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[79]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[80]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[81]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[82]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[83]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[84]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[85]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[86]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[87]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[88]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[89]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[90]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[91]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[92]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[93]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[94]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[95]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sysclk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc8bit_in	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- main_clk	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nrzl_data	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- correlation[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- correlation[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- correlation[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- correlation[3]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- correlation[4]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Data_Orgenizer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_resetn : std_logic;
SIGNAL ww_sysclk : std_logic;
SIGNAL ww_main_clk : std_logic;
SIGNAL ww_nrzl_data : std_logic;
SIGNAL ww_crc8bit_in : std_logic;
SIGNAL ww_correlation : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_load_leds : std_logic;
SIGNAL ww_green_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rgb_leds : std_logic_vector(95 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \resetn~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sysclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \load_leds~output_o\ : std_logic;
SIGNAL \green_leds[0]~output_o\ : std_logic;
SIGNAL \green_leds[1]~output_o\ : std_logic;
SIGNAL \green_leds[2]~output_o\ : std_logic;
SIGNAL \green_leds[3]~output_o\ : std_logic;
SIGNAL \green_leds[4]~output_o\ : std_logic;
SIGNAL \green_leds[5]~output_o\ : std_logic;
SIGNAL \green_leds[6]~output_o\ : std_logic;
SIGNAL \green_leds[7]~output_o\ : std_logic;
SIGNAL \rgb_leds[0]~output_o\ : std_logic;
SIGNAL \rgb_leds[1]~output_o\ : std_logic;
SIGNAL \rgb_leds[2]~output_o\ : std_logic;
SIGNAL \rgb_leds[3]~output_o\ : std_logic;
SIGNAL \rgb_leds[4]~output_o\ : std_logic;
SIGNAL \rgb_leds[5]~output_o\ : std_logic;
SIGNAL \rgb_leds[6]~output_o\ : std_logic;
SIGNAL \rgb_leds[7]~output_o\ : std_logic;
SIGNAL \rgb_leds[8]~output_o\ : std_logic;
SIGNAL \rgb_leds[9]~output_o\ : std_logic;
SIGNAL \rgb_leds[10]~output_o\ : std_logic;
SIGNAL \rgb_leds[11]~output_o\ : std_logic;
SIGNAL \rgb_leds[12]~output_o\ : std_logic;
SIGNAL \rgb_leds[13]~output_o\ : std_logic;
SIGNAL \rgb_leds[14]~output_o\ : std_logic;
SIGNAL \rgb_leds[15]~output_o\ : std_logic;
SIGNAL \rgb_leds[16]~output_o\ : std_logic;
SIGNAL \rgb_leds[17]~output_o\ : std_logic;
SIGNAL \rgb_leds[18]~output_o\ : std_logic;
SIGNAL \rgb_leds[19]~output_o\ : std_logic;
SIGNAL \rgb_leds[20]~output_o\ : std_logic;
SIGNAL \rgb_leds[21]~output_o\ : std_logic;
SIGNAL \rgb_leds[22]~output_o\ : std_logic;
SIGNAL \rgb_leds[23]~output_o\ : std_logic;
SIGNAL \rgb_leds[24]~output_o\ : std_logic;
SIGNAL \rgb_leds[25]~output_o\ : std_logic;
SIGNAL \rgb_leds[26]~output_o\ : std_logic;
SIGNAL \rgb_leds[27]~output_o\ : std_logic;
SIGNAL \rgb_leds[28]~output_o\ : std_logic;
SIGNAL \rgb_leds[29]~output_o\ : std_logic;
SIGNAL \rgb_leds[30]~output_o\ : std_logic;
SIGNAL \rgb_leds[31]~output_o\ : std_logic;
SIGNAL \rgb_leds[32]~output_o\ : std_logic;
SIGNAL \rgb_leds[33]~output_o\ : std_logic;
SIGNAL \rgb_leds[34]~output_o\ : std_logic;
SIGNAL \rgb_leds[35]~output_o\ : std_logic;
SIGNAL \rgb_leds[36]~output_o\ : std_logic;
SIGNAL \rgb_leds[37]~output_o\ : std_logic;
SIGNAL \rgb_leds[38]~output_o\ : std_logic;
SIGNAL \rgb_leds[39]~output_o\ : std_logic;
SIGNAL \rgb_leds[40]~output_o\ : std_logic;
SIGNAL \rgb_leds[41]~output_o\ : std_logic;
SIGNAL \rgb_leds[42]~output_o\ : std_logic;
SIGNAL \rgb_leds[43]~output_o\ : std_logic;
SIGNAL \rgb_leds[44]~output_o\ : std_logic;
SIGNAL \rgb_leds[45]~output_o\ : std_logic;
SIGNAL \rgb_leds[46]~output_o\ : std_logic;
SIGNAL \rgb_leds[47]~output_o\ : std_logic;
SIGNAL \rgb_leds[48]~output_o\ : std_logic;
SIGNAL \rgb_leds[49]~output_o\ : std_logic;
SIGNAL \rgb_leds[50]~output_o\ : std_logic;
SIGNAL \rgb_leds[51]~output_o\ : std_logic;
SIGNAL \rgb_leds[52]~output_o\ : std_logic;
SIGNAL \rgb_leds[53]~output_o\ : std_logic;
SIGNAL \rgb_leds[54]~output_o\ : std_logic;
SIGNAL \rgb_leds[55]~output_o\ : std_logic;
SIGNAL \rgb_leds[56]~output_o\ : std_logic;
SIGNAL \rgb_leds[57]~output_o\ : std_logic;
SIGNAL \rgb_leds[58]~output_o\ : std_logic;
SIGNAL \rgb_leds[59]~output_o\ : std_logic;
SIGNAL \rgb_leds[60]~output_o\ : std_logic;
SIGNAL \rgb_leds[61]~output_o\ : std_logic;
SIGNAL \rgb_leds[62]~output_o\ : std_logic;
SIGNAL \rgb_leds[63]~output_o\ : std_logic;
SIGNAL \rgb_leds[64]~output_o\ : std_logic;
SIGNAL \rgb_leds[65]~output_o\ : std_logic;
SIGNAL \rgb_leds[66]~output_o\ : std_logic;
SIGNAL \rgb_leds[67]~output_o\ : std_logic;
SIGNAL \rgb_leds[68]~output_o\ : std_logic;
SIGNAL \rgb_leds[69]~output_o\ : std_logic;
SIGNAL \rgb_leds[70]~output_o\ : std_logic;
SIGNAL \rgb_leds[71]~output_o\ : std_logic;
SIGNAL \rgb_leds[72]~output_o\ : std_logic;
SIGNAL \rgb_leds[73]~output_o\ : std_logic;
SIGNAL \rgb_leds[74]~output_o\ : std_logic;
SIGNAL \rgb_leds[75]~output_o\ : std_logic;
SIGNAL \rgb_leds[76]~output_o\ : std_logic;
SIGNAL \rgb_leds[77]~output_o\ : std_logic;
SIGNAL \rgb_leds[78]~output_o\ : std_logic;
SIGNAL \rgb_leds[79]~output_o\ : std_logic;
SIGNAL \rgb_leds[80]~output_o\ : std_logic;
SIGNAL \rgb_leds[81]~output_o\ : std_logic;
SIGNAL \rgb_leds[82]~output_o\ : std_logic;
SIGNAL \rgb_leds[83]~output_o\ : std_logic;
SIGNAL \rgb_leds[84]~output_o\ : std_logic;
SIGNAL \rgb_leds[85]~output_o\ : std_logic;
SIGNAL \rgb_leds[86]~output_o\ : std_logic;
SIGNAL \rgb_leds[87]~output_o\ : std_logic;
SIGNAL \rgb_leds[88]~output_o\ : std_logic;
SIGNAL \rgb_leds[89]~output_o\ : std_logic;
SIGNAL \rgb_leds[90]~output_o\ : std_logic;
SIGNAL \rgb_leds[91]~output_o\ : std_logic;
SIGNAL \rgb_leds[92]~output_o\ : std_logic;
SIGNAL \rgb_leds[93]~output_o\ : std_logic;
SIGNAL \rgb_leds[94]~output_o\ : std_logic;
SIGNAL \rgb_leds[95]~output_o\ : std_logic;
SIGNAL \sysclk~input_o\ : std_logic;
SIGNAL \sysclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \resetn~inputclkctrl_outclk\ : std_logic;
SIGNAL \main_clk~input_o\ : std_logic;
SIGNAL \sig_main_clk_cut~feeder_combout\ : std_logic;
SIGNAL \sig_main_clk_cut~q\ : std_logic;
SIGNAL \sig_main_clk_cut_not~feeder_combout\ : std_logic;
SIGNAL \sig_main_clk_cut_not~q\ : std_logic;
SIGNAL \sig_main_clk_r~combout\ : std_logic;
SIGNAL \state_Do.s7~q\ : std_logic;
SIGNAL \state_Do.s8~feeder_combout\ : std_logic;
SIGNAL \state_Do.s8~q\ : std_logic;
SIGNAL \crc8bit_in~input_o\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \state_Do.s9~q\ : std_logic;
SIGNAL \correlation[4]~input_o\ : std_logic;
SIGNAL \correlation[2]~input_o\ : std_logic;
SIGNAL \correlation[3]~input_o\ : std_logic;
SIGNAL \correlation[0]~input_o\ : std_logic;
SIGNAL \correlation[1]~input_o\ : std_logic;
SIGNAL \state_Do~26_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state_Do.s0~q\ : std_logic;
SIGNAL \state_Do.s1~0_combout\ : std_logic;
SIGNAL \state_Do~27_combout\ : std_logic;
SIGNAL \sig_cnt[0]~101_combout\ : std_logic;
SIGNAL \sig_cnt[0]~feeder_combout\ : std_logic;
SIGNAL \Equal0~32_combout\ : std_logic;
SIGNAL \Equal0~33_combout\ : std_logic;
SIGNAL \sig_cnt[64]~233\ : std_logic;
SIGNAL \sig_cnt[65]~234_combout\ : std_logic;
SIGNAL \sig_cnt[100]~107_combout\ : std_logic;
SIGNAL \sig_cnt[65]~235\ : std_logic;
SIGNAL \sig_cnt[66]~236_combout\ : std_logic;
SIGNAL \sig_cnt[66]~237\ : std_logic;
SIGNAL \sig_cnt[67]~238_combout\ : std_logic;
SIGNAL \sig_cnt[67]~239\ : std_logic;
SIGNAL \sig_cnt[68]~240_combout\ : std_logic;
SIGNAL \sig_cnt[68]~241\ : std_logic;
SIGNAL \sig_cnt[69]~242_combout\ : std_logic;
SIGNAL \sig_cnt[69]~243\ : std_logic;
SIGNAL \sig_cnt[70]~244_combout\ : std_logic;
SIGNAL \sig_cnt[70]~245\ : std_logic;
SIGNAL \sig_cnt[71]~246_combout\ : std_logic;
SIGNAL \sig_cnt[71]~247\ : std_logic;
SIGNAL \sig_cnt[72]~248_combout\ : std_logic;
SIGNAL \sig_cnt[72]~249\ : std_logic;
SIGNAL \sig_cnt[73]~250_combout\ : std_logic;
SIGNAL \sig_cnt[73]~251\ : std_logic;
SIGNAL \sig_cnt[74]~252_combout\ : std_logic;
SIGNAL \sig_cnt[74]~253\ : std_logic;
SIGNAL \sig_cnt[75]~254_combout\ : std_logic;
SIGNAL \sig_cnt[75]~255\ : std_logic;
SIGNAL \sig_cnt[76]~256_combout\ : std_logic;
SIGNAL \sig_cnt[76]~257\ : std_logic;
SIGNAL \sig_cnt[77]~258_combout\ : std_logic;
SIGNAL \sig_cnt[77]~259\ : std_logic;
SIGNAL \sig_cnt[78]~260_combout\ : std_logic;
SIGNAL \sig_cnt[78]~261\ : std_logic;
SIGNAL \sig_cnt[79]~262_combout\ : std_logic;
SIGNAL \sig_cnt[79]~263\ : std_logic;
SIGNAL \sig_cnt[80]~264_combout\ : std_logic;
SIGNAL \sig_cnt[80]~265\ : std_logic;
SIGNAL \sig_cnt[81]~266_combout\ : std_logic;
SIGNAL \sig_cnt[81]~267\ : std_logic;
SIGNAL \sig_cnt[82]~268_combout\ : std_logic;
SIGNAL \sig_cnt[82]~269\ : std_logic;
SIGNAL \sig_cnt[83]~270_combout\ : std_logic;
SIGNAL \sig_cnt[83]~271\ : std_logic;
SIGNAL \sig_cnt[84]~272_combout\ : std_logic;
SIGNAL \Equal0~24_combout\ : std_logic;
SIGNAL \Equal0~21_combout\ : std_logic;
SIGNAL \Equal0~23_combout\ : std_logic;
SIGNAL \Equal0~22_combout\ : std_logic;
SIGNAL \Equal0~25_combout\ : std_logic;
SIGNAL \sig_cnt[84]~273\ : std_logic;
SIGNAL \sig_cnt[85]~274_combout\ : std_logic;
SIGNAL \sig_cnt[85]~275\ : std_logic;
SIGNAL \sig_cnt[86]~276_combout\ : std_logic;
SIGNAL \sig_cnt[86]~277\ : std_logic;
SIGNAL \sig_cnt[87]~278_combout\ : std_logic;
SIGNAL \sig_cnt[87]~279\ : std_logic;
SIGNAL \sig_cnt[88]~280_combout\ : std_logic;
SIGNAL \Equal0~26_combout\ : std_logic;
SIGNAL \sig_cnt[88]~281\ : std_logic;
SIGNAL \sig_cnt[89]~282_combout\ : std_logic;
SIGNAL \sig_cnt[89]~283\ : std_logic;
SIGNAL \sig_cnt[90]~284_combout\ : std_logic;
SIGNAL \sig_cnt[90]~285\ : std_logic;
SIGNAL \sig_cnt[91]~286_combout\ : std_logic;
SIGNAL \sig_cnt[91]~287\ : std_logic;
SIGNAL \sig_cnt[92]~288_combout\ : std_logic;
SIGNAL \Equal0~27_combout\ : std_logic;
SIGNAL \Equal0~28_combout\ : std_logic;
SIGNAL \sig_cnt[92]~289\ : std_logic;
SIGNAL \sig_cnt[93]~290_combout\ : std_logic;
SIGNAL \sig_cnt[93]~291\ : std_logic;
SIGNAL \sig_cnt[94]~292_combout\ : std_logic;
SIGNAL \sig_cnt[94]~293\ : std_logic;
SIGNAL \sig_cnt[95]~294_combout\ : std_logic;
SIGNAL \sig_cnt[95]~295\ : std_logic;
SIGNAL \sig_cnt[96]~296_combout\ : std_logic;
SIGNAL \sig_cnt[96]~297\ : std_logic;
SIGNAL \sig_cnt[97]~298_combout\ : std_logic;
SIGNAL \sig_cnt[97]~299\ : std_logic;
SIGNAL \sig_cnt[98]~300_combout\ : std_logic;
SIGNAL \sig_cnt[98]~301\ : std_logic;
SIGNAL \sig_cnt[99]~302_combout\ : std_logic;
SIGNAL \sig_cnt[99]~303\ : std_logic;
SIGNAL \sig_cnt[100]~304_combout\ : std_logic;
SIGNAL \Equal0~30_combout\ : std_logic;
SIGNAL \Equal0~29_combout\ : std_logic;
SIGNAL \Equal0~31_combout\ : std_logic;
SIGNAL \Equal0~34_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \sig_cnt[97]~105_combout\ : std_logic;
SIGNAL \sig_cnt[97]~106_combout\ : std_logic;
SIGNAL \sig_cnt[0]~102\ : std_logic;
SIGNAL \sig_cnt[1]~103_combout\ : std_logic;
SIGNAL \sig_cnt[1]~104\ : std_logic;
SIGNAL \sig_cnt[2]~108_combout\ : std_logic;
SIGNAL \sig_cnt[2]~109\ : std_logic;
SIGNAL \sig_cnt[3]~110_combout\ : std_logic;
SIGNAL \sig_cnt[3]~111\ : std_logic;
SIGNAL \sig_cnt[4]~112_combout\ : std_logic;
SIGNAL \sig_cnt[4]~113\ : std_logic;
SIGNAL \sig_cnt[5]~114_combout\ : std_logic;
SIGNAL \sig_cnt[5]~115\ : std_logic;
SIGNAL \sig_cnt[6]~116_combout\ : std_logic;
SIGNAL \sig_cnt[6]~117\ : std_logic;
SIGNAL \sig_cnt[7]~118_combout\ : std_logic;
SIGNAL \sig_cnt[7]~119\ : std_logic;
SIGNAL \sig_cnt[8]~120_combout\ : std_logic;
SIGNAL \sig_cnt[8]~121\ : std_logic;
SIGNAL \sig_cnt[9]~122_combout\ : std_logic;
SIGNAL \sig_cnt[9]~123\ : std_logic;
SIGNAL \sig_cnt[10]~124_combout\ : std_logic;
SIGNAL \sig_cnt[10]~125\ : std_logic;
SIGNAL \sig_cnt[11]~126_combout\ : std_logic;
SIGNAL \sig_cnt[11]~127\ : std_logic;
SIGNAL \sig_cnt[12]~128_combout\ : std_logic;
SIGNAL \sig_cnt[12]~129\ : std_logic;
SIGNAL \sig_cnt[13]~130_combout\ : std_logic;
SIGNAL \sig_cnt[13]~131\ : std_logic;
SIGNAL \sig_cnt[14]~132_combout\ : std_logic;
SIGNAL \sig_cnt[14]~133\ : std_logic;
SIGNAL \sig_cnt[15]~134_combout\ : std_logic;
SIGNAL \sig_cnt[15]~135\ : std_logic;
SIGNAL \sig_cnt[16]~136_combout\ : std_logic;
SIGNAL \sig_cnt[16]~137\ : std_logic;
SIGNAL \sig_cnt[17]~138_combout\ : std_logic;
SIGNAL \sig_cnt[17]~139\ : std_logic;
SIGNAL \sig_cnt[18]~140_combout\ : std_logic;
SIGNAL \sig_cnt[18]~141\ : std_logic;
SIGNAL \sig_cnt[19]~142_combout\ : std_logic;
SIGNAL \sig_cnt[19]~143\ : std_logic;
SIGNAL \sig_cnt[20]~144_combout\ : std_logic;
SIGNAL \sig_cnt[20]~145\ : std_logic;
SIGNAL \sig_cnt[21]~146_combout\ : std_logic;
SIGNAL \sig_cnt[21]~147\ : std_logic;
SIGNAL \sig_cnt[22]~148_combout\ : std_logic;
SIGNAL \sig_cnt[22]~149\ : std_logic;
SIGNAL \sig_cnt[23]~150_combout\ : std_logic;
SIGNAL \sig_cnt[23]~151\ : std_logic;
SIGNAL \sig_cnt[24]~152_combout\ : std_logic;
SIGNAL \sig_cnt[24]~153\ : std_logic;
SIGNAL \sig_cnt[25]~154_combout\ : std_logic;
SIGNAL \sig_cnt[25]~155\ : std_logic;
SIGNAL \sig_cnt[26]~156_combout\ : std_logic;
SIGNAL \sig_cnt[26]~157\ : std_logic;
SIGNAL \sig_cnt[27]~158_combout\ : std_logic;
SIGNAL \sig_cnt[27]~159\ : std_logic;
SIGNAL \sig_cnt[28]~160_combout\ : std_logic;
SIGNAL \sig_cnt[28]~161\ : std_logic;
SIGNAL \sig_cnt[29]~162_combout\ : std_logic;
SIGNAL \sig_cnt[29]~163\ : std_logic;
SIGNAL \sig_cnt[30]~164_combout\ : std_logic;
SIGNAL \sig_cnt[30]~165\ : std_logic;
SIGNAL \sig_cnt[31]~166_combout\ : std_logic;
SIGNAL \sig_cnt[31]~167\ : std_logic;
SIGNAL \sig_cnt[32]~168_combout\ : std_logic;
SIGNAL \sig_cnt[32]~169\ : std_logic;
SIGNAL \sig_cnt[33]~170_combout\ : std_logic;
SIGNAL \sig_cnt[33]~171\ : std_logic;
SIGNAL \sig_cnt[34]~172_combout\ : std_logic;
SIGNAL \sig_cnt[34]~173\ : std_logic;
SIGNAL \sig_cnt[35]~174_combout\ : std_logic;
SIGNAL \sig_cnt[35]~175\ : std_logic;
SIGNAL \sig_cnt[36]~176_combout\ : std_logic;
SIGNAL \sig_cnt[36]~177\ : std_logic;
SIGNAL \sig_cnt[37]~178_combout\ : std_logic;
SIGNAL \sig_cnt[37]~179\ : std_logic;
SIGNAL \sig_cnt[38]~180_combout\ : std_logic;
SIGNAL \sig_cnt[38]~181\ : std_logic;
SIGNAL \sig_cnt[39]~182_combout\ : std_logic;
SIGNAL \sig_cnt[39]~183\ : std_logic;
SIGNAL \sig_cnt[40]~184_combout\ : std_logic;
SIGNAL \sig_cnt[40]~185\ : std_logic;
SIGNAL \sig_cnt[41]~186_combout\ : std_logic;
SIGNAL \sig_cnt[41]~187\ : std_logic;
SIGNAL \sig_cnt[42]~188_combout\ : std_logic;
SIGNAL \sig_cnt[42]~189\ : std_logic;
SIGNAL \sig_cnt[43]~190_combout\ : std_logic;
SIGNAL \sig_cnt[43]~191\ : std_logic;
SIGNAL \sig_cnt[44]~192_combout\ : std_logic;
SIGNAL \sig_cnt[44]~193\ : std_logic;
SIGNAL \sig_cnt[45]~194_combout\ : std_logic;
SIGNAL \sig_cnt[45]~195\ : std_logic;
SIGNAL \sig_cnt[46]~196_combout\ : std_logic;
SIGNAL \sig_cnt[46]~197\ : std_logic;
SIGNAL \sig_cnt[47]~198_combout\ : std_logic;
SIGNAL \sig_cnt[47]~199\ : std_logic;
SIGNAL \sig_cnt[48]~200_combout\ : std_logic;
SIGNAL \sig_cnt[48]~201\ : std_logic;
SIGNAL \sig_cnt[49]~202_combout\ : std_logic;
SIGNAL \sig_cnt[49]~203\ : std_logic;
SIGNAL \sig_cnt[50]~204_combout\ : std_logic;
SIGNAL \sig_cnt[50]~205\ : std_logic;
SIGNAL \sig_cnt[51]~206_combout\ : std_logic;
SIGNAL \sig_cnt[51]~207\ : std_logic;
SIGNAL \sig_cnt[52]~208_combout\ : std_logic;
SIGNAL \sig_cnt[52]~209\ : std_logic;
SIGNAL \sig_cnt[53]~210_combout\ : std_logic;
SIGNAL \sig_cnt[53]~211\ : std_logic;
SIGNAL \sig_cnt[54]~212_combout\ : std_logic;
SIGNAL \sig_cnt[54]~213\ : std_logic;
SIGNAL \sig_cnt[55]~214_combout\ : std_logic;
SIGNAL \sig_cnt[55]~215\ : std_logic;
SIGNAL \sig_cnt[56]~216_combout\ : std_logic;
SIGNAL \sig_cnt[56]~217\ : std_logic;
SIGNAL \sig_cnt[57]~218_combout\ : std_logic;
SIGNAL \sig_cnt[57]~219\ : std_logic;
SIGNAL \sig_cnt[58]~220_combout\ : std_logic;
SIGNAL \sig_cnt[58]~221\ : std_logic;
SIGNAL \sig_cnt[59]~222_combout\ : std_logic;
SIGNAL \sig_cnt[59]~223\ : std_logic;
SIGNAL \sig_cnt[60]~224_combout\ : std_logic;
SIGNAL \sig_cnt[60]~225\ : std_logic;
SIGNAL \sig_cnt[61]~226_combout\ : std_logic;
SIGNAL \sig_cnt[61]~227\ : std_logic;
SIGNAL \sig_cnt[62]~228_combout\ : std_logic;
SIGNAL \sig_cnt[62]~229\ : std_logic;
SIGNAL \sig_cnt[63]~230_combout\ : std_logic;
SIGNAL \sig_cnt[63]~231\ : std_logic;
SIGNAL \sig_cnt[64]~232_combout\ : std_logic;
SIGNAL \Equal0~17_combout\ : std_logic;
SIGNAL \Equal0~16_combout\ : std_logic;
SIGNAL \Equal0~18_combout\ : std_logic;
SIGNAL \Equal0~15_combout\ : std_logic;
SIGNAL \Equal0~19_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \Equal0~14_combout\ : std_logic;
SIGNAL \Equal0~20_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \state_Do~28_combout\ : std_logic;
SIGNAL \state_Do~29_combout\ : std_logic;
SIGNAL \state_Do.s1~q\ : std_logic;
SIGNAL \state_Do.s2~q\ : std_logic;
SIGNAL \state_Do.s3~feeder_combout\ : std_logic;
SIGNAL \state_Do.s3~q\ : std_logic;
SIGNAL \state_Do.s4~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \state_Do.s5~q\ : std_logic;
SIGNAL \state_Do.s5a~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \state_Do.s6~q\ : std_logic;
SIGNAL \Selector112~0_combout\ : std_logic;
SIGNAL \load_leds~reg0_q\ : std_logic;
SIGNAL \nrzl_data~input_o\ : std_logic;
SIGNAL \sig_green_leds_reg[0]~feeder_combout\ : std_logic;
SIGNAL \sig_green_leds_reg[0]~0_combout\ : std_logic;
SIGNAL \sig_green_leds_out[0]~feeder_combout\ : std_logic;
SIGNAL \sig_green_leds_out[0]~0_combout\ : std_logic;
SIGNAL \green_leds[0]~reg0feeder_combout\ : std_logic;
SIGNAL \green_leds[0]~0_combout\ : std_logic;
SIGNAL \green_leds[0]~reg0_q\ : std_logic;
SIGNAL \sig_green_leds_reg[1]~feeder_combout\ : std_logic;
SIGNAL \sig_green_leds_out[1]~feeder_combout\ : std_logic;
SIGNAL \green_leds[1]~reg0feeder_combout\ : std_logic;
SIGNAL \green_leds[1]~reg0_q\ : std_logic;
SIGNAL \sig_green_leds_reg[2]~feeder_combout\ : std_logic;
SIGNAL \sig_green_leds_out[2]~feeder_combout\ : std_logic;
SIGNAL \green_leds[2]~reg0feeder_combout\ : std_logic;
SIGNAL \green_leds[2]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[0]~feeder_combout\ : std_logic;
SIGNAL \sig_rgb_leds_out[0]~0_combout\ : std_logic;
SIGNAL \rgb_leds[0]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[0]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[1]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[1]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[1]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[2]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[2]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[2]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[3]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[3]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[3]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[4]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[4]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[4]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[5]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[5]~reg0_q\ : std_logic;
SIGNAL \rgb_leds[6]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[6]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[7]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[7]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[7]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[8]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[8]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[8]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[9]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[9]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[9]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[10]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[10]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[10]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[11]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[11]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[11]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[12]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[12]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[12]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[13]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[13]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[13]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[14]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[14]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[14]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[15]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[15]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[15]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[16]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[16]~reg0_q\ : std_logic;
SIGNAL \rgb_leds[17]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[17]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[18]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[18]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[18]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[19]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[19]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[19]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[20]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[20]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[20]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[21]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[21]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[21]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[22]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[22]~reg0_q\ : std_logic;
SIGNAL \rgb_leds[23]~reg0_q\ : std_logic;
SIGNAL \rgb_leds[24]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[24]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[25]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[25]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[25]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[26]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[26]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[26]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[27]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[27]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[27]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[28]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[28]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[28]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[29]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[29]~reg0_q\ : std_logic;
SIGNAL \rgb_leds[30]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[30]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[31]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[31]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[31]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[32]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[32]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[32]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[33]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[33]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[33]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[34]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[34]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[34]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[35]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[35]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[35]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[36]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[36]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[36]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[37]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[37]~reg0_q\ : std_logic;
SIGNAL \rgb_leds[38]~reg0_q\ : std_logic;
SIGNAL \rgb_leds[39]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[39]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[40]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[40]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[40]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[41]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[41]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[41]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[42]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[42]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[42]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[43]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[43]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[43]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[44]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[44]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[44]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[45]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[45]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[45]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[46]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[46]~reg0_q\ : std_logic;
SIGNAL \rgb_leds[47]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[47]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[48]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[48]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[48]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[49]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[49]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[49]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[50]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[50]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[50]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[51]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[51]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[51]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[52]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[52]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[52]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[53]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[53]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[53]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[54]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[54]~reg0_q\ : std_logic;
SIGNAL \rgb_leds[55]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[55]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[56]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[56]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[56]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[57]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[57]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[57]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[58]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[58]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[58]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[59]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[59]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[59]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[60]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[60]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[60]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[61]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[61]~reg0_q\ : std_logic;
SIGNAL \rgb_leds[62]~reg0_q\ : std_logic;
SIGNAL \rgb_leds[63]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[63]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[64]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[64]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[64]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[65]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[65]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[65]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[66]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[66]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[66]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[67]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[67]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[67]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[68]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[68]~reg0_q\ : std_logic;
SIGNAL \rgb_leds[69]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[69]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[70]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[70]~reg0_q\ : std_logic;
SIGNAL \rgb_leds[71]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[71]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[72]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[72]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[72]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[73]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[73]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[73]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[74]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[74]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[74]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[75]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[75]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[75]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[76]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[76]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[76]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[77]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[77]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[77]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[78]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[78]~reg0_q\ : std_logic;
SIGNAL \rgb_leds[79]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[79]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[80]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[80]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[80]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[81]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[81]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[81]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[82]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[82]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[82]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[83]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[83]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[83]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[84]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[84]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[84]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[85]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[85]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[85]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[86]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[86]~reg0_q\ : std_logic;
SIGNAL \rgb_leds[87]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[87]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[88]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[88]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[88]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[89]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[89]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[89]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[90]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[90]~reg0_q\ : std_logic;
SIGNAL \rgb_leds[91]~reg0_q\ : std_logic;
SIGNAL \rgb_leds[92]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[92]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[93]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[93]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[93]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[94]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[94]~reg0feeder_combout\ : std_logic;
SIGNAL \rgb_leds[94]~reg0_q\ : std_logic;
SIGNAL \sig_rgb_leds_out[95]~feeder_combout\ : std_logic;
SIGNAL \rgb_leds[95]~reg0_q\ : std_logic;
SIGNAL sig_cnt : std_logic_vector(100 DOWNTO 0);
SIGNAL sig_green_leds_out : std_logic_vector(7 DOWNTO 0);
SIGNAL sig_rgb_leds_out : std_logic_vector(95 DOWNTO 0);
SIGNAL sig_green_leds_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_load_leds~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_resetn <= resetn;
ww_sysclk <= sysclk;
ww_main_clk <= main_clk;
ww_nrzl_data <= nrzl_data;
ww_crc8bit_in <= crc8bit_in;
ww_correlation <= correlation;
load_leds <= ww_load_leds;
green_leds <= ww_green_leds;
rgb_leds <= ww_rgb_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\resetn~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \resetn~input_o\);

\sysclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sysclk~input_o\);
\ALT_INV_load_leds~reg0_q\ <= NOT \load_leds~reg0_q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y45_N16
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

-- Location: IOOBUF_X78_Y25_N16
\load_leds~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_load_leds~reg0_q\,
	devoe => ww_devoe,
	o => \load_leds~output_o\);

-- Location: IOOBUF_X78_Y31_N23
\green_leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \green_leds[0]~reg0_q\,
	devoe => ww_devoe,
	o => \green_leds[0]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\green_leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \green_leds[1]~reg0_q\,
	devoe => ww_devoe,
	o => \green_leds[1]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\green_leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \green_leds[2]~reg0_q\,
	devoe => ww_devoe,
	o => \green_leds[2]~output_o\);

-- Location: IOOBUF_X20_Y39_N16
\green_leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \green_leds[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\green_leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \green_leds[4]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\green_leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \green_leds[5]~output_o\);

-- Location: IOOBUF_X78_Y21_N2
\green_leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \green_leds[6]~output_o\);

-- Location: IOOBUF_X22_Y0_N30
\green_leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \green_leds[7]~output_o\);

-- Location: IOOBUF_X31_Y39_N30
\rgb_leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[0]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\rgb_leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[1]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[1]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\rgb_leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[2]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[2]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\rgb_leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[3]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[3]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\rgb_leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[4]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[4]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\rgb_leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[5]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[5]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\rgb_leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[6]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\rgb_leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[7]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[7]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\rgb_leds[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[8]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[8]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\rgb_leds[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[9]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[9]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\rgb_leds[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[10]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[10]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\rgb_leds[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[11]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[11]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\rgb_leds[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[12]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[12]~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\rgb_leds[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[13]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[13]~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\rgb_leds[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[14]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[14]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\rgb_leds[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[15]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[15]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\rgb_leds[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[16]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[16]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\rgb_leds[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[17]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[17]~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\rgb_leds[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[18]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[18]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\rgb_leds[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[19]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[19]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\rgb_leds[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[20]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[20]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\rgb_leds[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[21]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[21]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\rgb_leds[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[22]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[22]~output_o\);

-- Location: IOOBUF_X40_Y0_N2
\rgb_leds[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[23]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[23]~output_o\);

-- Location: IOOBUF_X40_Y0_N9
\rgb_leds[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[24]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[24]~output_o\);

-- Location: IOOBUF_X78_Y23_N9
\rgb_leds[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[25]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[25]~output_o\);

-- Location: IOOBUF_X78_Y20_N2
\rgb_leds[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[26]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[26]~output_o\);

-- Location: IOOBUF_X78_Y20_N16
\rgb_leds[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[27]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[27]~output_o\);

-- Location: IOOBUF_X78_Y20_N9
\rgb_leds[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[28]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[28]~output_o\);

-- Location: IOOBUF_X78_Y21_N16
\rgb_leds[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[29]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[29]~output_o\);

-- Location: IOOBUF_X78_Y21_N23
\rgb_leds[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[30]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[30]~output_o\);

-- Location: IOOBUF_X78_Y20_N24
\rgb_leds[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[31]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[31]~output_o\);

-- Location: IOOBUF_X78_Y21_N9
\rgb_leds[32]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[32]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[32]~output_o\);

-- Location: IOOBUF_X78_Y16_N16
\rgb_leds[33]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[33]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[33]~output_o\);

-- Location: IOOBUF_X78_Y16_N2
\rgb_leds[34]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[34]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[34]~output_o\);

-- Location: IOOBUF_X78_Y16_N9
\rgb_leds[35]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[35]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[35]~output_o\);

-- Location: IOOBUF_X78_Y17_N2
\rgb_leds[36]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[36]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[36]~output_o\);

-- Location: IOOBUF_X78_Y18_N2
\rgb_leds[37]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[37]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[37]~output_o\);

-- Location: IOOBUF_X78_Y17_N16
\rgb_leds[38]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[38]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[38]~output_o\);

-- Location: IOOBUF_X78_Y17_N9
\rgb_leds[39]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[39]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[39]~output_o\);

-- Location: IOOBUF_X78_Y16_N24
\rgb_leds[40]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[40]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[40]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\rgb_leds[41]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[41]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[41]~output_o\);

-- Location: IOOBUF_X51_Y0_N30
\rgb_leds[42]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[42]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[42]~output_o\);

-- Location: IOOBUF_X51_Y0_N2
\rgb_leds[43]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[43]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[43]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\rgb_leds[44]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[44]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[44]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\rgb_leds[45]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[45]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[45]~output_o\);

-- Location: IOOBUF_X51_Y0_N9
\rgb_leds[46]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[46]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[46]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\rgb_leds[47]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[47]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[47]~output_o\);

-- Location: IOOBUF_X49_Y0_N30
\rgb_leds[48]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[48]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[48]~output_o\);

-- Location: IOOBUF_X51_Y0_N16
\rgb_leds[49]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[49]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[49]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\rgb_leds[50]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[50]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[50]~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\rgb_leds[51]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[51]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[51]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\rgb_leds[52]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[52]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[52]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\rgb_leds[53]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[53]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[53]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\rgb_leds[54]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[54]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[54]~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\rgb_leds[55]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[55]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[55]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\rgb_leds[56]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[56]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[56]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\rgb_leds[57]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[57]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[57]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\rgb_leds[58]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[58]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[58]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\rgb_leds[59]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[59]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[59]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\rgb_leds[60]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[60]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[60]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\rgb_leds[61]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[61]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[61]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\rgb_leds[62]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[62]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[62]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\rgb_leds[63]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[63]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[63]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\rgb_leds[64]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[64]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[64]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\rgb_leds[65]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[65]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[65]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\rgb_leds[66]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[66]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[66]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\rgb_leds[67]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[67]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[67]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\rgb_leds[68]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[68]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[68]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\rgb_leds[69]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[69]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[69]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\rgb_leds[70]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[70]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[70]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\rgb_leds[71]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[71]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[71]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\rgb_leds[72]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[72]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[72]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\rgb_leds[73]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[73]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[73]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\rgb_leds[74]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[74]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[74]~output_o\);

-- Location: IOOBUF_X78_Y36_N9
\rgb_leds[75]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[75]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[75]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\rgb_leds[76]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[76]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[76]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\rgb_leds[77]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[77]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[77]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\rgb_leds[78]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[78]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[78]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\rgb_leds[79]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[79]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[79]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\rgb_leds[80]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[80]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[80]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\rgb_leds[81]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[81]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[81]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\rgb_leds[82]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[82]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[82]~output_o\);

-- Location: IOOBUF_X29_Y39_N16
\rgb_leds[83]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[83]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[83]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\rgb_leds[84]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[84]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[84]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\rgb_leds[85]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[85]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[85]~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\rgb_leds[86]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[86]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[86]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\rgb_leds[87]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[87]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[87]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\rgb_leds[88]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[88]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[88]~output_o\);

-- Location: IOOBUF_X26_Y39_N9
\rgb_leds[89]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[89]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[89]~output_o\);

-- Location: IOOBUF_X34_Y0_N30
\rgb_leds[90]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[90]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[90]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\rgb_leds[91]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[91]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[91]~output_o\);

-- Location: IOOBUF_X31_Y39_N2
\rgb_leds[92]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[92]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[92]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\rgb_leds[93]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[93]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[93]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\rgb_leds[94]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[94]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[94]~output_o\);

-- Location: IOOBUF_X26_Y39_N16
\rgb_leds[95]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgb_leds[95]~reg0_q\,
	devoe => ww_devoe,
	o => \rgb_leds[95]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\sysclk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sysclk,
	o => \sysclk~input_o\);

-- Location: CLKCTRL_G3
\sysclk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sysclk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sysclk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y18_N22
\resetn~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetn,
	o => \resetn~input_o\);

-- Location: CLKCTRL_G4
\resetn~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \resetn~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \resetn~inputclkctrl_outclk\);

-- Location: IOIBUF_X34_Y39_N29
\main_clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_main_clk,
	o => \main_clk~input_o\);

-- Location: LCCOMB_X42_Y25_N6
\sig_main_clk_cut~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main_clk_cut~feeder_combout\ = \main_clk~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_clk~input_o\,
	combout => \sig_main_clk_cut~feeder_combout\);

-- Location: FF_X42_Y25_N7
sig_main_clk_cut : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_main_clk_cut~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_main_clk_cut~q\);

-- Location: LCCOMB_X42_Y25_N0
\sig_main_clk_cut_not~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main_clk_cut_not~feeder_combout\ = \sig_main_clk_cut~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sig_main_clk_cut~q\,
	combout => \sig_main_clk_cut_not~feeder_combout\);

-- Location: FF_X42_Y25_N1
sig_main_clk_cut_not : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_main_clk_cut_not~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_main_clk_cut_not~q\);

-- Location: LCCOMB_X42_Y25_N18
sig_main_clk_r : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main_clk_r~combout\ = (!\sig_main_clk_cut_not~q\ & \sig_main_clk_cut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_main_clk_cut_not~q\,
	datad => \sig_main_clk_cut~q\,
	combout => \sig_main_clk_r~combout\);

-- Location: FF_X42_Y25_N21
\state_Do.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_Do.s6~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_Do.s7~q\);

-- Location: LCCOMB_X42_Y25_N12
\state_Do.s8~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_Do.s8~feeder_combout\ = \state_Do.s7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_Do.s7~q\,
	combout => \state_Do.s8~feeder_combout\);

-- Location: FF_X42_Y25_N13
\state_Do.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_Do.s8~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_Do.s8~q\);

-- Location: IOIBUF_X78_Y25_N8
\crc8bit_in~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_crc8bit_in,
	o => \crc8bit_in~input_o\);

-- Location: LCCOMB_X42_Y25_N16
\Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\state_Do.s8~q\) # ((\state_Do.s5a~q\ & \crc8bit_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_Do.s8~q\,
	datab => \state_Do.s5a~q\,
	datad => \crc8bit_in~input_o\,
	combout => \Selector10~0_combout\);

-- Location: FF_X42_Y25_N17
\state_Do.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector10~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_Do.s9~q\);

-- Location: IOIBUF_X78_Y25_N1
\correlation[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_correlation(4),
	o => \correlation[4]~input_o\);

-- Location: IOIBUF_X46_Y54_N8
\correlation[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_correlation(2),
	o => \correlation[2]~input_o\);

-- Location: IOIBUF_X46_Y54_N22
\correlation[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_correlation(3),
	o => \correlation[3]~input_o\);

-- Location: IOIBUF_X46_Y54_N1
\correlation[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_correlation(0),
	o => \correlation[0]~input_o\);

-- Location: IOIBUF_X46_Y54_N29
\correlation[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_correlation(1),
	o => \correlation[1]~input_o\);

-- Location: LCCOMB_X46_Y50_N24
\state_Do~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_Do~26_combout\ = (!\correlation[2]~input_o\ & (!\correlation[3]~input_o\ & ((!\correlation[1]~input_o\) # (!\correlation[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \correlation[2]~input_o\,
	datab => \correlation[3]~input_o\,
	datac => \correlation[0]~input_o\,
	datad => \correlation[1]~input_o\,
	combout => \state_Do~26_combout\);

-- Location: LCCOMB_X43_Y25_N6
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\state_Do.s9~q\ & ((\state_Do.s0~q\) # ((!\correlation[4]~input_o\ & \state_Do~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_Do.s9~q\,
	datab => \correlation[4]~input_o\,
	datac => \state_Do.s0~q\,
	datad => \state_Do~26_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X43_Y25_N7
\state_Do.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_Do.s0~q\);

-- Location: LCCOMB_X43_Y25_N24
\state_Do.s1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_Do.s1~0_combout\ = !\state_Do.s0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_Do.s0~q\,
	combout => \state_Do.s1~0_combout\);

-- Location: LCCOMB_X43_Y25_N16
\state_Do~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_Do~27_combout\ = (\sig_main_clk_r~combout\ & ((\state_Do.s0~q\) # ((!\correlation[4]~input_o\ & \state_Do~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_Do.s0~q\,
	datab => \sig_main_clk_r~combout\,
	datac => \correlation[4]~input_o\,
	datad => \state_Do~26_combout\,
	combout => \state_Do~27_combout\);

-- Location: LCCOMB_X44_Y25_N12
\sig_cnt[0]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[0]~101_combout\ = sig_cnt(0) $ (VCC)
-- \sig_cnt[0]~102\ = CARRY(sig_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(0),
	datad => VCC,
	combout => \sig_cnt[0]~101_combout\,
	cout => \sig_cnt[0]~102\);

-- Location: LCCOMB_X44_Y25_N0
\sig_cnt[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[0]~feeder_combout\ = \sig_cnt[0]~101_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sig_cnt[0]~101_combout\,
	combout => \sig_cnt[0]~feeder_combout\);

-- Location: LCCOMB_X43_Y25_N18
\Equal0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~32_combout\ = (sig_cnt(3) & sig_cnt(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(3),
	datad => sig_cnt(6),
	combout => \Equal0~32_combout\);

-- Location: LCCOMB_X44_Y25_N8
\Equal0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~33_combout\ = (!sig_cnt(5) & (sig_cnt(4) & sig_cnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(5),
	datab => sig_cnt(4),
	datad => sig_cnt(0),
	combout => \Equal0~33_combout\);

-- Location: LCCOMB_X44_Y21_N12
\sig_cnt[64]~232\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[64]~232_combout\ = (sig_cnt(64) & (\sig_cnt[63]~231\ $ (GND))) # (!sig_cnt(64) & (!\sig_cnt[63]~231\ & VCC))
-- \sig_cnt[64]~233\ = CARRY((sig_cnt(64) & !\sig_cnt[63]~231\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(64),
	datad => VCC,
	cin => \sig_cnt[63]~231\,
	combout => \sig_cnt[64]~232_combout\,
	cout => \sig_cnt[64]~233\);

-- Location: LCCOMB_X44_Y21_N14
\sig_cnt[65]~234\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[65]~234_combout\ = (sig_cnt(65) & (!\sig_cnt[64]~233\)) # (!sig_cnt(65) & ((\sig_cnt[64]~233\) # (GND)))
-- \sig_cnt[65]~235\ = CARRY((!\sig_cnt[64]~233\) # (!sig_cnt(65)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(65),
	datad => VCC,
	cin => \sig_cnt[64]~233\,
	combout => \sig_cnt[65]~234_combout\,
	cout => \sig_cnt[65]~235\);

-- Location: LCCOMB_X43_Y25_N8
\sig_cnt[100]~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[100]~107_combout\ = (\sig_main_clk_r~combout\ & ((\state_Do.s5~q\) # ((\state_Do.s1~q\) # (\state_Do.s2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_Do.s5~q\,
	datab => \state_Do.s1~q\,
	datac => \sig_main_clk_r~combout\,
	datad => \state_Do.s2~q\,
	combout => \sig_cnt[100]~107_combout\);

-- Location: FF_X44_Y21_N15
\sig_cnt[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[65]~234_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(65));

-- Location: LCCOMB_X44_Y21_N16
\sig_cnt[66]~236\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[66]~236_combout\ = (sig_cnt(66) & (\sig_cnt[65]~235\ $ (GND))) # (!sig_cnt(66) & (!\sig_cnt[65]~235\ & VCC))
-- \sig_cnt[66]~237\ = CARRY((sig_cnt(66) & !\sig_cnt[65]~235\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(66),
	datad => VCC,
	cin => \sig_cnt[65]~235\,
	combout => \sig_cnt[66]~236_combout\,
	cout => \sig_cnt[66]~237\);

-- Location: FF_X44_Y21_N17
\sig_cnt[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[66]~236_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(66));

-- Location: LCCOMB_X44_Y21_N18
\sig_cnt[67]~238\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[67]~238_combout\ = (sig_cnt(67) & (!\sig_cnt[66]~237\)) # (!sig_cnt(67) & ((\sig_cnt[66]~237\) # (GND)))
-- \sig_cnt[67]~239\ = CARRY((!\sig_cnt[66]~237\) # (!sig_cnt(67)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(67),
	datad => VCC,
	cin => \sig_cnt[66]~237\,
	combout => \sig_cnt[67]~238_combout\,
	cout => \sig_cnt[67]~239\);

-- Location: FF_X44_Y21_N19
\sig_cnt[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[67]~238_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(67));

-- Location: LCCOMB_X44_Y21_N20
\sig_cnt[68]~240\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[68]~240_combout\ = (sig_cnt(68) & (\sig_cnt[67]~239\ $ (GND))) # (!sig_cnt(68) & (!\sig_cnt[67]~239\ & VCC))
-- \sig_cnt[68]~241\ = CARRY((sig_cnt(68) & !\sig_cnt[67]~239\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(68),
	datad => VCC,
	cin => \sig_cnt[67]~239\,
	combout => \sig_cnt[68]~240_combout\,
	cout => \sig_cnt[68]~241\);

-- Location: FF_X44_Y21_N21
\sig_cnt[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[68]~240_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(68));

-- Location: LCCOMB_X44_Y21_N22
\sig_cnt[69]~242\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[69]~242_combout\ = (sig_cnt(69) & (!\sig_cnt[68]~241\)) # (!sig_cnt(69) & ((\sig_cnt[68]~241\) # (GND)))
-- \sig_cnt[69]~243\ = CARRY((!\sig_cnt[68]~241\) # (!sig_cnt(69)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(69),
	datad => VCC,
	cin => \sig_cnt[68]~241\,
	combout => \sig_cnt[69]~242_combout\,
	cout => \sig_cnt[69]~243\);

-- Location: FF_X44_Y21_N23
\sig_cnt[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[69]~242_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(69));

-- Location: LCCOMB_X44_Y21_N24
\sig_cnt[70]~244\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[70]~244_combout\ = (sig_cnt(70) & (\sig_cnt[69]~243\ $ (GND))) # (!sig_cnt(70) & (!\sig_cnt[69]~243\ & VCC))
-- \sig_cnt[70]~245\ = CARRY((sig_cnt(70) & !\sig_cnt[69]~243\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(70),
	datad => VCC,
	cin => \sig_cnt[69]~243\,
	combout => \sig_cnt[70]~244_combout\,
	cout => \sig_cnt[70]~245\);

-- Location: FF_X44_Y21_N25
\sig_cnt[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[70]~244_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(70));

-- Location: LCCOMB_X44_Y21_N26
\sig_cnt[71]~246\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[71]~246_combout\ = (sig_cnt(71) & (!\sig_cnt[70]~245\)) # (!sig_cnt(71) & ((\sig_cnt[70]~245\) # (GND)))
-- \sig_cnt[71]~247\ = CARRY((!\sig_cnt[70]~245\) # (!sig_cnt(71)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(71),
	datad => VCC,
	cin => \sig_cnt[70]~245\,
	combout => \sig_cnt[71]~246_combout\,
	cout => \sig_cnt[71]~247\);

-- Location: FF_X44_Y21_N27
\sig_cnt[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[71]~246_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(71));

-- Location: LCCOMB_X44_Y21_N28
\sig_cnt[72]~248\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[72]~248_combout\ = (sig_cnt(72) & (\sig_cnt[71]~247\ $ (GND))) # (!sig_cnt(72) & (!\sig_cnt[71]~247\ & VCC))
-- \sig_cnt[72]~249\ = CARRY((sig_cnt(72) & !\sig_cnt[71]~247\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(72),
	datad => VCC,
	cin => \sig_cnt[71]~247\,
	combout => \sig_cnt[72]~248_combout\,
	cout => \sig_cnt[72]~249\);

-- Location: FF_X44_Y21_N29
\sig_cnt[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[72]~248_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(72));

-- Location: LCCOMB_X44_Y21_N30
\sig_cnt[73]~250\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[73]~250_combout\ = (sig_cnt(73) & (!\sig_cnt[72]~249\)) # (!sig_cnt(73) & ((\sig_cnt[72]~249\) # (GND)))
-- \sig_cnt[73]~251\ = CARRY((!\sig_cnt[72]~249\) # (!sig_cnt(73)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(73),
	datad => VCC,
	cin => \sig_cnt[72]~249\,
	combout => \sig_cnt[73]~250_combout\,
	cout => \sig_cnt[73]~251\);

-- Location: FF_X44_Y21_N31
\sig_cnt[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[73]~250_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(73));

-- Location: LCCOMB_X44_Y20_N0
\sig_cnt[74]~252\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[74]~252_combout\ = (sig_cnt(74) & (\sig_cnt[73]~251\ $ (GND))) # (!sig_cnt(74) & (!\sig_cnt[73]~251\ & VCC))
-- \sig_cnt[74]~253\ = CARRY((sig_cnt(74) & !\sig_cnt[73]~251\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(74),
	datad => VCC,
	cin => \sig_cnt[73]~251\,
	combout => \sig_cnt[74]~252_combout\,
	cout => \sig_cnt[74]~253\);

-- Location: FF_X44_Y20_N1
\sig_cnt[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[74]~252_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(74));

-- Location: LCCOMB_X44_Y20_N2
\sig_cnt[75]~254\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[75]~254_combout\ = (sig_cnt(75) & (!\sig_cnt[74]~253\)) # (!sig_cnt(75) & ((\sig_cnt[74]~253\) # (GND)))
-- \sig_cnt[75]~255\ = CARRY((!\sig_cnt[74]~253\) # (!sig_cnt(75)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(75),
	datad => VCC,
	cin => \sig_cnt[74]~253\,
	combout => \sig_cnt[75]~254_combout\,
	cout => \sig_cnt[75]~255\);

-- Location: FF_X44_Y20_N3
\sig_cnt[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[75]~254_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(75));

-- Location: LCCOMB_X44_Y20_N4
\sig_cnt[76]~256\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[76]~256_combout\ = (sig_cnt(76) & (\sig_cnt[75]~255\ $ (GND))) # (!sig_cnt(76) & (!\sig_cnt[75]~255\ & VCC))
-- \sig_cnt[76]~257\ = CARRY((sig_cnt(76) & !\sig_cnt[75]~255\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(76),
	datad => VCC,
	cin => \sig_cnt[75]~255\,
	combout => \sig_cnt[76]~256_combout\,
	cout => \sig_cnt[76]~257\);

-- Location: FF_X44_Y20_N5
\sig_cnt[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[76]~256_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(76));

-- Location: LCCOMB_X44_Y20_N6
\sig_cnt[77]~258\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[77]~258_combout\ = (sig_cnt(77) & (!\sig_cnt[76]~257\)) # (!sig_cnt(77) & ((\sig_cnt[76]~257\) # (GND)))
-- \sig_cnt[77]~259\ = CARRY((!\sig_cnt[76]~257\) # (!sig_cnt(77)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(77),
	datad => VCC,
	cin => \sig_cnt[76]~257\,
	combout => \sig_cnt[77]~258_combout\,
	cout => \sig_cnt[77]~259\);

-- Location: FF_X44_Y20_N7
\sig_cnt[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[77]~258_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(77));

-- Location: LCCOMB_X44_Y20_N8
\sig_cnt[78]~260\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[78]~260_combout\ = (sig_cnt(78) & (\sig_cnt[77]~259\ $ (GND))) # (!sig_cnt(78) & (!\sig_cnt[77]~259\ & VCC))
-- \sig_cnt[78]~261\ = CARRY((sig_cnt(78) & !\sig_cnt[77]~259\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(78),
	datad => VCC,
	cin => \sig_cnt[77]~259\,
	combout => \sig_cnt[78]~260_combout\,
	cout => \sig_cnt[78]~261\);

-- Location: FF_X44_Y20_N9
\sig_cnt[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[78]~260_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(78));

-- Location: LCCOMB_X44_Y20_N10
\sig_cnt[79]~262\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[79]~262_combout\ = (sig_cnt(79) & (!\sig_cnt[78]~261\)) # (!sig_cnt(79) & ((\sig_cnt[78]~261\) # (GND)))
-- \sig_cnt[79]~263\ = CARRY((!\sig_cnt[78]~261\) # (!sig_cnt(79)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(79),
	datad => VCC,
	cin => \sig_cnt[78]~261\,
	combout => \sig_cnt[79]~262_combout\,
	cout => \sig_cnt[79]~263\);

-- Location: FF_X44_Y20_N11
\sig_cnt[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[79]~262_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(79));

-- Location: LCCOMB_X44_Y20_N12
\sig_cnt[80]~264\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[80]~264_combout\ = (sig_cnt(80) & (\sig_cnt[79]~263\ $ (GND))) # (!sig_cnt(80) & (!\sig_cnt[79]~263\ & VCC))
-- \sig_cnt[80]~265\ = CARRY((sig_cnt(80) & !\sig_cnt[79]~263\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(80),
	datad => VCC,
	cin => \sig_cnt[79]~263\,
	combout => \sig_cnt[80]~264_combout\,
	cout => \sig_cnt[80]~265\);

-- Location: FF_X44_Y20_N13
\sig_cnt[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[80]~264_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(80));

-- Location: LCCOMB_X44_Y20_N14
\sig_cnt[81]~266\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[81]~266_combout\ = (sig_cnt(81) & (!\sig_cnt[80]~265\)) # (!sig_cnt(81) & ((\sig_cnt[80]~265\) # (GND)))
-- \sig_cnt[81]~267\ = CARRY((!\sig_cnt[80]~265\) # (!sig_cnt(81)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(81),
	datad => VCC,
	cin => \sig_cnt[80]~265\,
	combout => \sig_cnt[81]~266_combout\,
	cout => \sig_cnt[81]~267\);

-- Location: FF_X44_Y20_N15
\sig_cnt[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[81]~266_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(81));

-- Location: LCCOMB_X44_Y20_N16
\sig_cnt[82]~268\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[82]~268_combout\ = (sig_cnt(82) & (\sig_cnt[81]~267\ $ (GND))) # (!sig_cnt(82) & (!\sig_cnt[81]~267\ & VCC))
-- \sig_cnt[82]~269\ = CARRY((sig_cnt(82) & !\sig_cnt[81]~267\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(82),
	datad => VCC,
	cin => \sig_cnt[81]~267\,
	combout => \sig_cnt[82]~268_combout\,
	cout => \sig_cnt[82]~269\);

-- Location: FF_X44_Y20_N17
\sig_cnt[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[82]~268_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(82));

-- Location: LCCOMB_X44_Y20_N18
\sig_cnt[83]~270\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[83]~270_combout\ = (sig_cnt(83) & (!\sig_cnt[82]~269\)) # (!sig_cnt(83) & ((\sig_cnt[82]~269\) # (GND)))
-- \sig_cnt[83]~271\ = CARRY((!\sig_cnt[82]~269\) # (!sig_cnt(83)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(83),
	datad => VCC,
	cin => \sig_cnt[82]~269\,
	combout => \sig_cnt[83]~270_combout\,
	cout => \sig_cnt[83]~271\);

-- Location: FF_X44_Y20_N19
\sig_cnt[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[83]~270_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(83));

-- Location: LCCOMB_X44_Y20_N20
\sig_cnt[84]~272\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[84]~272_combout\ = (sig_cnt(84) & (\sig_cnt[83]~271\ $ (GND))) # (!sig_cnt(84) & (!\sig_cnt[83]~271\ & VCC))
-- \sig_cnt[84]~273\ = CARRY((sig_cnt(84) & !\sig_cnt[83]~271\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(84),
	datad => VCC,
	cin => \sig_cnt[83]~271\,
	combout => \sig_cnt[84]~272_combout\,
	cout => \sig_cnt[84]~273\);

-- Location: FF_X44_Y20_N21
\sig_cnt[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[84]~272_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(84));

-- Location: LCCOMB_X45_Y20_N6
\Equal0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~24_combout\ = (!sig_cnt(81) & (!sig_cnt(84) & (!sig_cnt(82) & !sig_cnt(83))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(81),
	datab => sig_cnt(84),
	datac => sig_cnt(82),
	datad => sig_cnt(83),
	combout => \Equal0~24_combout\);

-- Location: LCCOMB_X45_Y20_N16
\Equal0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~21_combout\ = (!sig_cnt(71) & (!sig_cnt(69) & (!sig_cnt(70) & !sig_cnt(72))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(71),
	datab => sig_cnt(69),
	datac => sig_cnt(70),
	datad => sig_cnt(72),
	combout => \Equal0~21_combout\);

-- Location: LCCOMB_X45_Y20_N4
\Equal0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~23_combout\ = (!sig_cnt(79) & (!sig_cnt(80) & (!sig_cnt(77) & !sig_cnt(78))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(79),
	datab => sig_cnt(80),
	datac => sig_cnt(77),
	datad => sig_cnt(78),
	combout => \Equal0~23_combout\);

-- Location: LCCOMB_X45_Y20_N10
\Equal0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~22_combout\ = (!sig_cnt(74) & (!sig_cnt(76) & (!sig_cnt(73) & !sig_cnt(75))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(74),
	datab => sig_cnt(76),
	datac => sig_cnt(73),
	datad => sig_cnt(75),
	combout => \Equal0~22_combout\);

-- Location: LCCOMB_X45_Y20_N24
\Equal0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~25_combout\ = (\Equal0~24_combout\ & (\Equal0~21_combout\ & (\Equal0~23_combout\ & \Equal0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~24_combout\,
	datab => \Equal0~21_combout\,
	datac => \Equal0~23_combout\,
	datad => \Equal0~22_combout\,
	combout => \Equal0~25_combout\);

-- Location: LCCOMB_X44_Y20_N22
\sig_cnt[85]~274\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[85]~274_combout\ = (sig_cnt(85) & (!\sig_cnt[84]~273\)) # (!sig_cnt(85) & ((\sig_cnt[84]~273\) # (GND)))
-- \sig_cnt[85]~275\ = CARRY((!\sig_cnt[84]~273\) # (!sig_cnt(85)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(85),
	datad => VCC,
	cin => \sig_cnt[84]~273\,
	combout => \sig_cnt[85]~274_combout\,
	cout => \sig_cnt[85]~275\);

-- Location: FF_X44_Y20_N23
\sig_cnt[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[85]~274_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(85));

-- Location: LCCOMB_X44_Y20_N24
\sig_cnt[86]~276\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[86]~276_combout\ = (sig_cnt(86) & (\sig_cnt[85]~275\ $ (GND))) # (!sig_cnt(86) & (!\sig_cnt[85]~275\ & VCC))
-- \sig_cnt[86]~277\ = CARRY((sig_cnt(86) & !\sig_cnt[85]~275\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(86),
	datad => VCC,
	cin => \sig_cnt[85]~275\,
	combout => \sig_cnt[86]~276_combout\,
	cout => \sig_cnt[86]~277\);

-- Location: FF_X44_Y20_N25
\sig_cnt[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[86]~276_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(86));

-- Location: LCCOMB_X44_Y20_N26
\sig_cnt[87]~278\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[87]~278_combout\ = (sig_cnt(87) & (!\sig_cnt[86]~277\)) # (!sig_cnt(87) & ((\sig_cnt[86]~277\) # (GND)))
-- \sig_cnt[87]~279\ = CARRY((!\sig_cnt[86]~277\) # (!sig_cnt(87)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(87),
	datad => VCC,
	cin => \sig_cnt[86]~277\,
	combout => \sig_cnt[87]~278_combout\,
	cout => \sig_cnt[87]~279\);

-- Location: FF_X44_Y20_N27
\sig_cnt[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[87]~278_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(87));

-- Location: LCCOMB_X44_Y20_N28
\sig_cnt[88]~280\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[88]~280_combout\ = (sig_cnt(88) & (\sig_cnt[87]~279\ $ (GND))) # (!sig_cnt(88) & (!\sig_cnt[87]~279\ & VCC))
-- \sig_cnt[88]~281\ = CARRY((sig_cnt(88) & !\sig_cnt[87]~279\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(88),
	datad => VCC,
	cin => \sig_cnt[87]~279\,
	combout => \sig_cnt[88]~280_combout\,
	cout => \sig_cnt[88]~281\);

-- Location: FF_X44_Y20_N29
\sig_cnt[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[88]~280_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(88));

-- Location: LCCOMB_X43_Y20_N24
\Equal0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~26_combout\ = (!sig_cnt(88) & !sig_cnt(87))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(88),
	datac => sig_cnt(87),
	combout => \Equal0~26_combout\);

-- Location: LCCOMB_X44_Y20_N30
\sig_cnt[89]~282\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[89]~282_combout\ = (sig_cnt(89) & (!\sig_cnt[88]~281\)) # (!sig_cnt(89) & ((\sig_cnt[88]~281\) # (GND)))
-- \sig_cnt[89]~283\ = CARRY((!\sig_cnt[88]~281\) # (!sig_cnt(89)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(89),
	datad => VCC,
	cin => \sig_cnt[88]~281\,
	combout => \sig_cnt[89]~282_combout\,
	cout => \sig_cnt[89]~283\);

-- Location: FF_X44_Y20_N31
\sig_cnt[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[89]~282_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(89));

-- Location: LCCOMB_X44_Y19_N0
\sig_cnt[90]~284\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[90]~284_combout\ = (sig_cnt(90) & (\sig_cnt[89]~283\ $ (GND))) # (!sig_cnt(90) & (!\sig_cnt[89]~283\ & VCC))
-- \sig_cnt[90]~285\ = CARRY((sig_cnt(90) & !\sig_cnt[89]~283\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(90),
	datad => VCC,
	cin => \sig_cnt[89]~283\,
	combout => \sig_cnt[90]~284_combout\,
	cout => \sig_cnt[90]~285\);

-- Location: FF_X44_Y19_N1
\sig_cnt[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[90]~284_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(90));

-- Location: LCCOMB_X44_Y19_N2
\sig_cnt[91]~286\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[91]~286_combout\ = (sig_cnt(91) & (!\sig_cnt[90]~285\)) # (!sig_cnt(91) & ((\sig_cnt[90]~285\) # (GND)))
-- \sig_cnt[91]~287\ = CARRY((!\sig_cnt[90]~285\) # (!sig_cnt(91)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(91),
	datad => VCC,
	cin => \sig_cnt[90]~285\,
	combout => \sig_cnt[91]~286_combout\,
	cout => \sig_cnt[91]~287\);

-- Location: FF_X44_Y19_N3
\sig_cnt[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[91]~286_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(91));

-- Location: LCCOMB_X44_Y19_N4
\sig_cnt[92]~288\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[92]~288_combout\ = (sig_cnt(92) & (\sig_cnt[91]~287\ $ (GND))) # (!sig_cnt(92) & (!\sig_cnt[91]~287\ & VCC))
-- \sig_cnt[92]~289\ = CARRY((sig_cnt(92) & !\sig_cnt[91]~287\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(92),
	datad => VCC,
	cin => \sig_cnt[91]~287\,
	combout => \sig_cnt[92]~288_combout\,
	cout => \sig_cnt[92]~289\);

-- Location: FF_X44_Y19_N5
\sig_cnt[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[92]~288_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(92));

-- Location: LCCOMB_X44_Y19_N30
\Equal0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~27_combout\ = (!sig_cnt(89) & (!sig_cnt(90) & (!sig_cnt(92) & !sig_cnt(91))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(89),
	datab => sig_cnt(90),
	datac => sig_cnt(92),
	datad => sig_cnt(91),
	combout => \Equal0~27_combout\);

-- Location: LCCOMB_X43_Y20_N18
\Equal0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~28_combout\ = (!sig_cnt(86) & (\Equal0~26_combout\ & (\Equal0~27_combout\ & !sig_cnt(85))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(86),
	datab => \Equal0~26_combout\,
	datac => \Equal0~27_combout\,
	datad => sig_cnt(85),
	combout => \Equal0~28_combout\);

-- Location: LCCOMB_X44_Y19_N6
\sig_cnt[93]~290\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[93]~290_combout\ = (sig_cnt(93) & (!\sig_cnt[92]~289\)) # (!sig_cnt(93) & ((\sig_cnt[92]~289\) # (GND)))
-- \sig_cnt[93]~291\ = CARRY((!\sig_cnt[92]~289\) # (!sig_cnt(93)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(93),
	datad => VCC,
	cin => \sig_cnt[92]~289\,
	combout => \sig_cnt[93]~290_combout\,
	cout => \sig_cnt[93]~291\);

-- Location: FF_X44_Y19_N7
\sig_cnt[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[93]~290_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(93));

-- Location: LCCOMB_X44_Y19_N8
\sig_cnt[94]~292\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[94]~292_combout\ = (sig_cnt(94) & (\sig_cnt[93]~291\ $ (GND))) # (!sig_cnt(94) & (!\sig_cnt[93]~291\ & VCC))
-- \sig_cnt[94]~293\ = CARRY((sig_cnt(94) & !\sig_cnt[93]~291\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(94),
	datad => VCC,
	cin => \sig_cnt[93]~291\,
	combout => \sig_cnt[94]~292_combout\,
	cout => \sig_cnt[94]~293\);

-- Location: FF_X44_Y19_N9
\sig_cnt[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[94]~292_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(94));

-- Location: LCCOMB_X44_Y19_N10
\sig_cnt[95]~294\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[95]~294_combout\ = (sig_cnt(95) & (!\sig_cnt[94]~293\)) # (!sig_cnt(95) & ((\sig_cnt[94]~293\) # (GND)))
-- \sig_cnt[95]~295\ = CARRY((!\sig_cnt[94]~293\) # (!sig_cnt(95)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(95),
	datad => VCC,
	cin => \sig_cnt[94]~293\,
	combout => \sig_cnt[95]~294_combout\,
	cout => \sig_cnt[95]~295\);

-- Location: FF_X44_Y19_N11
\sig_cnt[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[95]~294_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(95));

-- Location: LCCOMB_X44_Y19_N12
\sig_cnt[96]~296\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[96]~296_combout\ = (sig_cnt(96) & (\sig_cnt[95]~295\ $ (GND))) # (!sig_cnt(96) & (!\sig_cnt[95]~295\ & VCC))
-- \sig_cnt[96]~297\ = CARRY((sig_cnt(96) & !\sig_cnt[95]~295\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(96),
	datad => VCC,
	cin => \sig_cnt[95]~295\,
	combout => \sig_cnt[96]~296_combout\,
	cout => \sig_cnt[96]~297\);

-- Location: FF_X44_Y19_N13
\sig_cnt[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[96]~296_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(96));

-- Location: LCCOMB_X44_Y19_N14
\sig_cnt[97]~298\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[97]~298_combout\ = (sig_cnt(97) & (!\sig_cnt[96]~297\)) # (!sig_cnt(97) & ((\sig_cnt[96]~297\) # (GND)))
-- \sig_cnt[97]~299\ = CARRY((!\sig_cnt[96]~297\) # (!sig_cnt(97)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(97),
	datad => VCC,
	cin => \sig_cnt[96]~297\,
	combout => \sig_cnt[97]~298_combout\,
	cout => \sig_cnt[97]~299\);

-- Location: FF_X44_Y19_N15
\sig_cnt[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[97]~298_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(97));

-- Location: LCCOMB_X44_Y19_N16
\sig_cnt[98]~300\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[98]~300_combout\ = (sig_cnt(98) & (\sig_cnt[97]~299\ $ (GND))) # (!sig_cnt(98) & (!\sig_cnt[97]~299\ & VCC))
-- \sig_cnt[98]~301\ = CARRY((sig_cnt(98) & !\sig_cnt[97]~299\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(98),
	datad => VCC,
	cin => \sig_cnt[97]~299\,
	combout => \sig_cnt[98]~300_combout\,
	cout => \sig_cnt[98]~301\);

-- Location: FF_X44_Y19_N17
\sig_cnt[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[98]~300_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(98));

-- Location: LCCOMB_X44_Y19_N18
\sig_cnt[99]~302\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[99]~302_combout\ = (sig_cnt(99) & (!\sig_cnt[98]~301\)) # (!sig_cnt(99) & ((\sig_cnt[98]~301\) # (GND)))
-- \sig_cnt[99]~303\ = CARRY((!\sig_cnt[98]~301\) # (!sig_cnt(99)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(99),
	datad => VCC,
	cin => \sig_cnt[98]~301\,
	combout => \sig_cnt[99]~302_combout\,
	cout => \sig_cnt[99]~303\);

-- Location: FF_X44_Y19_N19
\sig_cnt[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[99]~302_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(99));

-- Location: LCCOMB_X44_Y19_N20
\sig_cnt[100]~304\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[100]~304_combout\ = \sig_cnt[99]~303\ $ (!sig_cnt(100))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sig_cnt(100),
	cin => \sig_cnt[99]~303\,
	combout => \sig_cnt[100]~304_combout\);

-- Location: FF_X44_Y19_N21
\sig_cnt[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[100]~304_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(100));

-- Location: LCCOMB_X44_Y19_N26
\Equal0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~30_combout\ = (!sig_cnt(100) & (!sig_cnt(99) & (!sig_cnt(97) & !sig_cnt(98))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(100),
	datab => sig_cnt(99),
	datac => sig_cnt(97),
	datad => sig_cnt(98),
	combout => \Equal0~30_combout\);

-- Location: LCCOMB_X44_Y19_N24
\Equal0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~29_combout\ = (!sig_cnt(95) & (!sig_cnt(96) & (!sig_cnt(94) & !sig_cnt(93))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(95),
	datab => sig_cnt(96),
	datac => sig_cnt(94),
	datad => sig_cnt(93),
	combout => \Equal0~29_combout\);

-- Location: LCCOMB_X44_Y19_N28
\Equal0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~31_combout\ = (\Equal0~25_combout\ & (\Equal0~28_combout\ & (\Equal0~30_combout\ & \Equal0~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~25_combout\,
	datab => \Equal0~28_combout\,
	datac => \Equal0~30_combout\,
	datad => \Equal0~29_combout\,
	combout => \Equal0~31_combout\);

-- Location: LCCOMB_X43_Y25_N22
\Equal0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~34_combout\ = (\Equal0~20_combout\ & (\Equal0~32_combout\ & (\Equal0~33_combout\ & \Equal0~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~20_combout\,
	datab => \Equal0~32_combout\,
	datac => \Equal0~33_combout\,
	datad => \Equal0~31_combout\,
	combout => \Equal0~34_combout\);

-- Location: LCCOMB_X44_Y25_N6
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!sig_cnt(5) & (sig_cnt(0) & (!sig_cnt(4) & !sig_cnt(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(5),
	datab => sig_cnt(0),
	datac => sig_cnt(4),
	datad => sig_cnt(3),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X43_Y25_N4
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\Equal1~0_combout\ & (!sig_cnt(6) & (\Equal0~20_combout\ & \Equal0~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => sig_cnt(6),
	datac => \Equal0~20_combout\,
	datad => \Equal0~31_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X43_Y25_N28
\sig_cnt[97]~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[97]~105_combout\ = (!\state_Do.s1~q\ & ((\state_Do.s5~q\ & ((\Equal2~1_combout\))) # (!\state_Do.s5~q\ & (\Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_Do.s5~q\,
	datab => \Equal1~1_combout\,
	datac => \Equal2~1_combout\,
	datad => \state_Do.s1~q\,
	combout => \sig_cnt[97]~105_combout\);

-- Location: LCCOMB_X43_Y25_N20
\sig_cnt[97]~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[97]~106_combout\ = (\sig_cnt[97]~105_combout\) # ((\state_Do.s1~q\ & \Equal0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_Do.s1~q\,
	datac => \Equal0~34_combout\,
	datad => \sig_cnt[97]~105_combout\,
	combout => \sig_cnt[97]~106_combout\);

-- Location: FF_X44_Y25_N1
\sig_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[0]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(0));

-- Location: LCCOMB_X44_Y25_N14
\sig_cnt[1]~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[1]~103_combout\ = (sig_cnt(1) & (!\sig_cnt[0]~102\)) # (!sig_cnt(1) & ((\sig_cnt[0]~102\) # (GND)))
-- \sig_cnt[1]~104\ = CARRY((!\sig_cnt[0]~102\) # (!sig_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(1),
	datad => VCC,
	cin => \sig_cnt[0]~102\,
	combout => \sig_cnt[1]~103_combout\,
	cout => \sig_cnt[1]~104\);

-- Location: FF_X44_Y25_N15
\sig_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[1]~103_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(1));

-- Location: LCCOMB_X44_Y25_N16
\sig_cnt[2]~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[2]~108_combout\ = (sig_cnt(2) & (\sig_cnt[1]~104\ $ (GND))) # (!sig_cnt(2) & (!\sig_cnt[1]~104\ & VCC))
-- \sig_cnt[2]~109\ = CARRY((sig_cnt(2) & !\sig_cnt[1]~104\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(2),
	datad => VCC,
	cin => \sig_cnt[1]~104\,
	combout => \sig_cnt[2]~108_combout\,
	cout => \sig_cnt[2]~109\);

-- Location: FF_X44_Y25_N17
\sig_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[2]~108_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(2));

-- Location: LCCOMB_X44_Y25_N18
\sig_cnt[3]~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[3]~110_combout\ = (sig_cnt(3) & (!\sig_cnt[2]~109\)) # (!sig_cnt(3) & ((\sig_cnt[2]~109\) # (GND)))
-- \sig_cnt[3]~111\ = CARRY((!\sig_cnt[2]~109\) # (!sig_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(3),
	datad => VCC,
	cin => \sig_cnt[2]~109\,
	combout => \sig_cnt[3]~110_combout\,
	cout => \sig_cnt[3]~111\);

-- Location: FF_X44_Y25_N19
\sig_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[3]~110_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(3));

-- Location: LCCOMB_X44_Y25_N20
\sig_cnt[4]~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[4]~112_combout\ = (sig_cnt(4) & (\sig_cnt[3]~111\ $ (GND))) # (!sig_cnt(4) & (!\sig_cnt[3]~111\ & VCC))
-- \sig_cnt[4]~113\ = CARRY((sig_cnt(4) & !\sig_cnt[3]~111\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(4),
	datad => VCC,
	cin => \sig_cnt[3]~111\,
	combout => \sig_cnt[4]~112_combout\,
	cout => \sig_cnt[4]~113\);

-- Location: FF_X44_Y25_N21
\sig_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[4]~112_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(4));

-- Location: LCCOMB_X44_Y25_N22
\sig_cnt[5]~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[5]~114_combout\ = (sig_cnt(5) & (!\sig_cnt[4]~113\)) # (!sig_cnt(5) & ((\sig_cnt[4]~113\) # (GND)))
-- \sig_cnt[5]~115\ = CARRY((!\sig_cnt[4]~113\) # (!sig_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(5),
	datad => VCC,
	cin => \sig_cnt[4]~113\,
	combout => \sig_cnt[5]~114_combout\,
	cout => \sig_cnt[5]~115\);

-- Location: FF_X44_Y25_N23
\sig_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[5]~114_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(5));

-- Location: LCCOMB_X44_Y25_N24
\sig_cnt[6]~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[6]~116_combout\ = (sig_cnt(6) & (\sig_cnt[5]~115\ $ (GND))) # (!sig_cnt(6) & (!\sig_cnt[5]~115\ & VCC))
-- \sig_cnt[6]~117\ = CARRY((sig_cnt(6) & !\sig_cnt[5]~115\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(6),
	datad => VCC,
	cin => \sig_cnt[5]~115\,
	combout => \sig_cnt[6]~116_combout\,
	cout => \sig_cnt[6]~117\);

-- Location: FF_X44_Y25_N25
\sig_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[6]~116_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(6));

-- Location: LCCOMB_X44_Y25_N26
\sig_cnt[7]~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[7]~118_combout\ = (sig_cnt(7) & (!\sig_cnt[6]~117\)) # (!sig_cnt(7) & ((\sig_cnt[6]~117\) # (GND)))
-- \sig_cnt[7]~119\ = CARRY((!\sig_cnt[6]~117\) # (!sig_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(7),
	datad => VCC,
	cin => \sig_cnt[6]~117\,
	combout => \sig_cnt[7]~118_combout\,
	cout => \sig_cnt[7]~119\);

-- Location: FF_X44_Y25_N27
\sig_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[7]~118_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(7));

-- Location: LCCOMB_X44_Y25_N28
\sig_cnt[8]~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[8]~120_combout\ = (sig_cnt(8) & (\sig_cnt[7]~119\ $ (GND))) # (!sig_cnt(8) & (!\sig_cnt[7]~119\ & VCC))
-- \sig_cnt[8]~121\ = CARRY((sig_cnt(8) & !\sig_cnt[7]~119\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(8),
	datad => VCC,
	cin => \sig_cnt[7]~119\,
	combout => \sig_cnt[8]~120_combout\,
	cout => \sig_cnt[8]~121\);

-- Location: FF_X44_Y25_N29
\sig_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[8]~120_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(8));

-- Location: LCCOMB_X44_Y25_N30
\sig_cnt[9]~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[9]~122_combout\ = (sig_cnt(9) & (!\sig_cnt[8]~121\)) # (!sig_cnt(9) & ((\sig_cnt[8]~121\) # (GND)))
-- \sig_cnt[9]~123\ = CARRY((!\sig_cnt[8]~121\) # (!sig_cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(9),
	datad => VCC,
	cin => \sig_cnt[8]~121\,
	combout => \sig_cnt[9]~122_combout\,
	cout => \sig_cnt[9]~123\);

-- Location: FF_X44_Y25_N31
\sig_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[9]~122_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(9));

-- Location: LCCOMB_X44_Y24_N0
\sig_cnt[10]~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[10]~124_combout\ = (sig_cnt(10) & (\sig_cnt[9]~123\ $ (GND))) # (!sig_cnt(10) & (!\sig_cnt[9]~123\ & VCC))
-- \sig_cnt[10]~125\ = CARRY((sig_cnt(10) & !\sig_cnt[9]~123\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(10),
	datad => VCC,
	cin => \sig_cnt[9]~123\,
	combout => \sig_cnt[10]~124_combout\,
	cout => \sig_cnt[10]~125\);

-- Location: FF_X44_Y24_N1
\sig_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[10]~124_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(10));

-- Location: LCCOMB_X44_Y24_N2
\sig_cnt[11]~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[11]~126_combout\ = (sig_cnt(11) & (!\sig_cnt[10]~125\)) # (!sig_cnt(11) & ((\sig_cnt[10]~125\) # (GND)))
-- \sig_cnt[11]~127\ = CARRY((!\sig_cnt[10]~125\) # (!sig_cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(11),
	datad => VCC,
	cin => \sig_cnt[10]~125\,
	combout => \sig_cnt[11]~126_combout\,
	cout => \sig_cnt[11]~127\);

-- Location: FF_X44_Y24_N3
\sig_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[11]~126_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(11));

-- Location: LCCOMB_X44_Y24_N4
\sig_cnt[12]~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[12]~128_combout\ = (sig_cnt(12) & (\sig_cnt[11]~127\ $ (GND))) # (!sig_cnt(12) & (!\sig_cnt[11]~127\ & VCC))
-- \sig_cnt[12]~129\ = CARRY((sig_cnt(12) & !\sig_cnt[11]~127\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(12),
	datad => VCC,
	cin => \sig_cnt[11]~127\,
	combout => \sig_cnt[12]~128_combout\,
	cout => \sig_cnt[12]~129\);

-- Location: FF_X44_Y24_N5
\sig_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[12]~128_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(12));

-- Location: LCCOMB_X44_Y24_N6
\sig_cnt[13]~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[13]~130_combout\ = (sig_cnt(13) & (!\sig_cnt[12]~129\)) # (!sig_cnt(13) & ((\sig_cnt[12]~129\) # (GND)))
-- \sig_cnt[13]~131\ = CARRY((!\sig_cnt[12]~129\) # (!sig_cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(13),
	datad => VCC,
	cin => \sig_cnt[12]~129\,
	combout => \sig_cnt[13]~130_combout\,
	cout => \sig_cnt[13]~131\);

-- Location: FF_X44_Y24_N7
\sig_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[13]~130_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(13));

-- Location: LCCOMB_X44_Y24_N8
\sig_cnt[14]~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[14]~132_combout\ = (sig_cnt(14) & (\sig_cnt[13]~131\ $ (GND))) # (!sig_cnt(14) & (!\sig_cnt[13]~131\ & VCC))
-- \sig_cnt[14]~133\ = CARRY((sig_cnt(14) & !\sig_cnt[13]~131\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(14),
	datad => VCC,
	cin => \sig_cnt[13]~131\,
	combout => \sig_cnt[14]~132_combout\,
	cout => \sig_cnt[14]~133\);

-- Location: FF_X44_Y24_N9
\sig_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[14]~132_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(14));

-- Location: LCCOMB_X44_Y24_N10
\sig_cnt[15]~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[15]~134_combout\ = (sig_cnt(15) & (!\sig_cnt[14]~133\)) # (!sig_cnt(15) & ((\sig_cnt[14]~133\) # (GND)))
-- \sig_cnt[15]~135\ = CARRY((!\sig_cnt[14]~133\) # (!sig_cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(15),
	datad => VCC,
	cin => \sig_cnt[14]~133\,
	combout => \sig_cnt[15]~134_combout\,
	cout => \sig_cnt[15]~135\);

-- Location: FF_X44_Y24_N11
\sig_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[15]~134_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(15));

-- Location: LCCOMB_X44_Y24_N12
\sig_cnt[16]~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[16]~136_combout\ = (sig_cnt(16) & (\sig_cnt[15]~135\ $ (GND))) # (!sig_cnt(16) & (!\sig_cnt[15]~135\ & VCC))
-- \sig_cnt[16]~137\ = CARRY((sig_cnt(16) & !\sig_cnt[15]~135\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(16),
	datad => VCC,
	cin => \sig_cnt[15]~135\,
	combout => \sig_cnt[16]~136_combout\,
	cout => \sig_cnt[16]~137\);

-- Location: FF_X44_Y24_N13
\sig_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[16]~136_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(16));

-- Location: LCCOMB_X44_Y24_N14
\sig_cnt[17]~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[17]~138_combout\ = (sig_cnt(17) & (!\sig_cnt[16]~137\)) # (!sig_cnt(17) & ((\sig_cnt[16]~137\) # (GND)))
-- \sig_cnt[17]~139\ = CARRY((!\sig_cnt[16]~137\) # (!sig_cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(17),
	datad => VCC,
	cin => \sig_cnt[16]~137\,
	combout => \sig_cnt[17]~138_combout\,
	cout => \sig_cnt[17]~139\);

-- Location: FF_X44_Y24_N15
\sig_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[17]~138_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(17));

-- Location: LCCOMB_X44_Y24_N16
\sig_cnt[18]~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[18]~140_combout\ = (sig_cnt(18) & (\sig_cnt[17]~139\ $ (GND))) # (!sig_cnt(18) & (!\sig_cnt[17]~139\ & VCC))
-- \sig_cnt[18]~141\ = CARRY((sig_cnt(18) & !\sig_cnt[17]~139\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(18),
	datad => VCC,
	cin => \sig_cnt[17]~139\,
	combout => \sig_cnt[18]~140_combout\,
	cout => \sig_cnt[18]~141\);

-- Location: FF_X44_Y24_N17
\sig_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[18]~140_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(18));

-- Location: LCCOMB_X44_Y24_N18
\sig_cnt[19]~142\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[19]~142_combout\ = (sig_cnt(19) & (!\sig_cnt[18]~141\)) # (!sig_cnt(19) & ((\sig_cnt[18]~141\) # (GND)))
-- \sig_cnt[19]~143\ = CARRY((!\sig_cnt[18]~141\) # (!sig_cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(19),
	datad => VCC,
	cin => \sig_cnt[18]~141\,
	combout => \sig_cnt[19]~142_combout\,
	cout => \sig_cnt[19]~143\);

-- Location: FF_X44_Y24_N19
\sig_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[19]~142_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(19));

-- Location: LCCOMB_X44_Y24_N20
\sig_cnt[20]~144\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[20]~144_combout\ = (sig_cnt(20) & (\sig_cnt[19]~143\ $ (GND))) # (!sig_cnt(20) & (!\sig_cnt[19]~143\ & VCC))
-- \sig_cnt[20]~145\ = CARRY((sig_cnt(20) & !\sig_cnt[19]~143\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(20),
	datad => VCC,
	cin => \sig_cnt[19]~143\,
	combout => \sig_cnt[20]~144_combout\,
	cout => \sig_cnt[20]~145\);

-- Location: FF_X44_Y24_N21
\sig_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[20]~144_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(20));

-- Location: LCCOMB_X44_Y24_N22
\sig_cnt[21]~146\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[21]~146_combout\ = (sig_cnt(21) & (!\sig_cnt[20]~145\)) # (!sig_cnt(21) & ((\sig_cnt[20]~145\) # (GND)))
-- \sig_cnt[21]~147\ = CARRY((!\sig_cnt[20]~145\) # (!sig_cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(21),
	datad => VCC,
	cin => \sig_cnt[20]~145\,
	combout => \sig_cnt[21]~146_combout\,
	cout => \sig_cnt[21]~147\);

-- Location: FF_X44_Y24_N23
\sig_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[21]~146_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(21));

-- Location: LCCOMB_X44_Y24_N24
\sig_cnt[22]~148\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[22]~148_combout\ = (sig_cnt(22) & (\sig_cnt[21]~147\ $ (GND))) # (!sig_cnt(22) & (!\sig_cnt[21]~147\ & VCC))
-- \sig_cnt[22]~149\ = CARRY((sig_cnt(22) & !\sig_cnt[21]~147\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(22),
	datad => VCC,
	cin => \sig_cnt[21]~147\,
	combout => \sig_cnt[22]~148_combout\,
	cout => \sig_cnt[22]~149\);

-- Location: FF_X44_Y24_N25
\sig_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[22]~148_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(22));

-- Location: LCCOMB_X44_Y24_N26
\sig_cnt[23]~150\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[23]~150_combout\ = (sig_cnt(23) & (!\sig_cnt[22]~149\)) # (!sig_cnt(23) & ((\sig_cnt[22]~149\) # (GND)))
-- \sig_cnt[23]~151\ = CARRY((!\sig_cnt[22]~149\) # (!sig_cnt(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(23),
	datad => VCC,
	cin => \sig_cnt[22]~149\,
	combout => \sig_cnt[23]~150_combout\,
	cout => \sig_cnt[23]~151\);

-- Location: FF_X44_Y24_N27
\sig_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[23]~150_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(23));

-- Location: LCCOMB_X44_Y24_N28
\sig_cnt[24]~152\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[24]~152_combout\ = (sig_cnt(24) & (\sig_cnt[23]~151\ $ (GND))) # (!sig_cnt(24) & (!\sig_cnt[23]~151\ & VCC))
-- \sig_cnt[24]~153\ = CARRY((sig_cnt(24) & !\sig_cnt[23]~151\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(24),
	datad => VCC,
	cin => \sig_cnt[23]~151\,
	combout => \sig_cnt[24]~152_combout\,
	cout => \sig_cnt[24]~153\);

-- Location: FF_X44_Y24_N29
\sig_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[24]~152_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(24));

-- Location: LCCOMB_X44_Y24_N30
\sig_cnt[25]~154\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[25]~154_combout\ = (sig_cnt(25) & (!\sig_cnt[24]~153\)) # (!sig_cnt(25) & ((\sig_cnt[24]~153\) # (GND)))
-- \sig_cnt[25]~155\ = CARRY((!\sig_cnt[24]~153\) # (!sig_cnt(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(25),
	datad => VCC,
	cin => \sig_cnt[24]~153\,
	combout => \sig_cnt[25]~154_combout\,
	cout => \sig_cnt[25]~155\);

-- Location: FF_X44_Y24_N31
\sig_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[25]~154_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(25));

-- Location: LCCOMB_X44_Y23_N0
\sig_cnt[26]~156\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[26]~156_combout\ = (sig_cnt(26) & (\sig_cnt[25]~155\ $ (GND))) # (!sig_cnt(26) & (!\sig_cnt[25]~155\ & VCC))
-- \sig_cnt[26]~157\ = CARRY((sig_cnt(26) & !\sig_cnt[25]~155\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(26),
	datad => VCC,
	cin => \sig_cnt[25]~155\,
	combout => \sig_cnt[26]~156_combout\,
	cout => \sig_cnt[26]~157\);

-- Location: FF_X44_Y23_N1
\sig_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[26]~156_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(26));

-- Location: LCCOMB_X44_Y23_N2
\sig_cnt[27]~158\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[27]~158_combout\ = (sig_cnt(27) & (!\sig_cnt[26]~157\)) # (!sig_cnt(27) & ((\sig_cnt[26]~157\) # (GND)))
-- \sig_cnt[27]~159\ = CARRY((!\sig_cnt[26]~157\) # (!sig_cnt(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(27),
	datad => VCC,
	cin => \sig_cnt[26]~157\,
	combout => \sig_cnt[27]~158_combout\,
	cout => \sig_cnt[27]~159\);

-- Location: FF_X44_Y23_N3
\sig_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[27]~158_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(27));

-- Location: LCCOMB_X44_Y23_N4
\sig_cnt[28]~160\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[28]~160_combout\ = (sig_cnt(28) & (\sig_cnt[27]~159\ $ (GND))) # (!sig_cnt(28) & (!\sig_cnt[27]~159\ & VCC))
-- \sig_cnt[28]~161\ = CARRY((sig_cnt(28) & !\sig_cnt[27]~159\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(28),
	datad => VCC,
	cin => \sig_cnt[27]~159\,
	combout => \sig_cnt[28]~160_combout\,
	cout => \sig_cnt[28]~161\);

-- Location: FF_X44_Y23_N5
\sig_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[28]~160_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(28));

-- Location: LCCOMB_X44_Y23_N6
\sig_cnt[29]~162\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[29]~162_combout\ = (sig_cnt(29) & (!\sig_cnt[28]~161\)) # (!sig_cnt(29) & ((\sig_cnt[28]~161\) # (GND)))
-- \sig_cnt[29]~163\ = CARRY((!\sig_cnt[28]~161\) # (!sig_cnt(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(29),
	datad => VCC,
	cin => \sig_cnt[28]~161\,
	combout => \sig_cnt[29]~162_combout\,
	cout => \sig_cnt[29]~163\);

-- Location: FF_X44_Y23_N7
\sig_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[29]~162_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(29));

-- Location: LCCOMB_X44_Y23_N8
\sig_cnt[30]~164\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[30]~164_combout\ = (sig_cnt(30) & (\sig_cnt[29]~163\ $ (GND))) # (!sig_cnt(30) & (!\sig_cnt[29]~163\ & VCC))
-- \sig_cnt[30]~165\ = CARRY((sig_cnt(30) & !\sig_cnt[29]~163\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(30),
	datad => VCC,
	cin => \sig_cnt[29]~163\,
	combout => \sig_cnt[30]~164_combout\,
	cout => \sig_cnt[30]~165\);

-- Location: FF_X44_Y23_N9
\sig_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[30]~164_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(30));

-- Location: LCCOMB_X44_Y23_N10
\sig_cnt[31]~166\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[31]~166_combout\ = (sig_cnt(31) & (!\sig_cnt[30]~165\)) # (!sig_cnt(31) & ((\sig_cnt[30]~165\) # (GND)))
-- \sig_cnt[31]~167\ = CARRY((!\sig_cnt[30]~165\) # (!sig_cnt(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(31),
	datad => VCC,
	cin => \sig_cnt[30]~165\,
	combout => \sig_cnt[31]~166_combout\,
	cout => \sig_cnt[31]~167\);

-- Location: FF_X44_Y23_N11
\sig_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[31]~166_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(31));

-- Location: LCCOMB_X44_Y23_N12
\sig_cnt[32]~168\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[32]~168_combout\ = (sig_cnt(32) & (\sig_cnt[31]~167\ $ (GND))) # (!sig_cnt(32) & (!\sig_cnt[31]~167\ & VCC))
-- \sig_cnt[32]~169\ = CARRY((sig_cnt(32) & !\sig_cnt[31]~167\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(32),
	datad => VCC,
	cin => \sig_cnt[31]~167\,
	combout => \sig_cnt[32]~168_combout\,
	cout => \sig_cnt[32]~169\);

-- Location: FF_X44_Y23_N13
\sig_cnt[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[32]~168_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(32));

-- Location: LCCOMB_X44_Y23_N14
\sig_cnt[33]~170\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[33]~170_combout\ = (sig_cnt(33) & (!\sig_cnt[32]~169\)) # (!sig_cnt(33) & ((\sig_cnt[32]~169\) # (GND)))
-- \sig_cnt[33]~171\ = CARRY((!\sig_cnt[32]~169\) # (!sig_cnt(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(33),
	datad => VCC,
	cin => \sig_cnt[32]~169\,
	combout => \sig_cnt[33]~170_combout\,
	cout => \sig_cnt[33]~171\);

-- Location: FF_X44_Y23_N15
\sig_cnt[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[33]~170_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(33));

-- Location: LCCOMB_X44_Y23_N16
\sig_cnt[34]~172\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[34]~172_combout\ = (sig_cnt(34) & (\sig_cnt[33]~171\ $ (GND))) # (!sig_cnt(34) & (!\sig_cnt[33]~171\ & VCC))
-- \sig_cnt[34]~173\ = CARRY((sig_cnt(34) & !\sig_cnt[33]~171\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(34),
	datad => VCC,
	cin => \sig_cnt[33]~171\,
	combout => \sig_cnt[34]~172_combout\,
	cout => \sig_cnt[34]~173\);

-- Location: FF_X44_Y23_N17
\sig_cnt[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[34]~172_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(34));

-- Location: LCCOMB_X44_Y23_N18
\sig_cnt[35]~174\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[35]~174_combout\ = (sig_cnt(35) & (!\sig_cnt[34]~173\)) # (!sig_cnt(35) & ((\sig_cnt[34]~173\) # (GND)))
-- \sig_cnt[35]~175\ = CARRY((!\sig_cnt[34]~173\) # (!sig_cnt(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(35),
	datad => VCC,
	cin => \sig_cnt[34]~173\,
	combout => \sig_cnt[35]~174_combout\,
	cout => \sig_cnt[35]~175\);

-- Location: FF_X44_Y23_N19
\sig_cnt[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[35]~174_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(35));

-- Location: LCCOMB_X44_Y23_N20
\sig_cnt[36]~176\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[36]~176_combout\ = (sig_cnt(36) & (\sig_cnt[35]~175\ $ (GND))) # (!sig_cnt(36) & (!\sig_cnt[35]~175\ & VCC))
-- \sig_cnt[36]~177\ = CARRY((sig_cnt(36) & !\sig_cnt[35]~175\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(36),
	datad => VCC,
	cin => \sig_cnt[35]~175\,
	combout => \sig_cnt[36]~176_combout\,
	cout => \sig_cnt[36]~177\);

-- Location: FF_X44_Y23_N21
\sig_cnt[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[36]~176_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(36));

-- Location: LCCOMB_X44_Y23_N22
\sig_cnt[37]~178\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[37]~178_combout\ = (sig_cnt(37) & (!\sig_cnt[36]~177\)) # (!sig_cnt(37) & ((\sig_cnt[36]~177\) # (GND)))
-- \sig_cnt[37]~179\ = CARRY((!\sig_cnt[36]~177\) # (!sig_cnt(37)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(37),
	datad => VCC,
	cin => \sig_cnt[36]~177\,
	combout => \sig_cnt[37]~178_combout\,
	cout => \sig_cnt[37]~179\);

-- Location: FF_X44_Y23_N23
\sig_cnt[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[37]~178_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(37));

-- Location: LCCOMB_X44_Y23_N24
\sig_cnt[38]~180\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[38]~180_combout\ = (sig_cnt(38) & (\sig_cnt[37]~179\ $ (GND))) # (!sig_cnt(38) & (!\sig_cnt[37]~179\ & VCC))
-- \sig_cnt[38]~181\ = CARRY((sig_cnt(38) & !\sig_cnt[37]~179\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(38),
	datad => VCC,
	cin => \sig_cnt[37]~179\,
	combout => \sig_cnt[38]~180_combout\,
	cout => \sig_cnt[38]~181\);

-- Location: FF_X44_Y23_N25
\sig_cnt[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[38]~180_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(38));

-- Location: LCCOMB_X44_Y23_N26
\sig_cnt[39]~182\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[39]~182_combout\ = (sig_cnt(39) & (!\sig_cnt[38]~181\)) # (!sig_cnt(39) & ((\sig_cnt[38]~181\) # (GND)))
-- \sig_cnt[39]~183\ = CARRY((!\sig_cnt[38]~181\) # (!sig_cnt(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(39),
	datad => VCC,
	cin => \sig_cnt[38]~181\,
	combout => \sig_cnt[39]~182_combout\,
	cout => \sig_cnt[39]~183\);

-- Location: FF_X44_Y23_N27
\sig_cnt[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[39]~182_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(39));

-- Location: LCCOMB_X44_Y23_N28
\sig_cnt[40]~184\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[40]~184_combout\ = (sig_cnt(40) & (\sig_cnt[39]~183\ $ (GND))) # (!sig_cnt(40) & (!\sig_cnt[39]~183\ & VCC))
-- \sig_cnt[40]~185\ = CARRY((sig_cnt(40) & !\sig_cnt[39]~183\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(40),
	datad => VCC,
	cin => \sig_cnt[39]~183\,
	combout => \sig_cnt[40]~184_combout\,
	cout => \sig_cnt[40]~185\);

-- Location: FF_X44_Y23_N29
\sig_cnt[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[40]~184_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(40));

-- Location: LCCOMB_X44_Y23_N30
\sig_cnt[41]~186\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[41]~186_combout\ = (sig_cnt(41) & (!\sig_cnt[40]~185\)) # (!sig_cnt(41) & ((\sig_cnt[40]~185\) # (GND)))
-- \sig_cnt[41]~187\ = CARRY((!\sig_cnt[40]~185\) # (!sig_cnt(41)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(41),
	datad => VCC,
	cin => \sig_cnt[40]~185\,
	combout => \sig_cnt[41]~186_combout\,
	cout => \sig_cnt[41]~187\);

-- Location: FF_X44_Y23_N31
\sig_cnt[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[41]~186_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(41));

-- Location: LCCOMB_X44_Y22_N0
\sig_cnt[42]~188\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[42]~188_combout\ = (sig_cnt(42) & (\sig_cnt[41]~187\ $ (GND))) # (!sig_cnt(42) & (!\sig_cnt[41]~187\ & VCC))
-- \sig_cnt[42]~189\ = CARRY((sig_cnt(42) & !\sig_cnt[41]~187\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(42),
	datad => VCC,
	cin => \sig_cnt[41]~187\,
	combout => \sig_cnt[42]~188_combout\,
	cout => \sig_cnt[42]~189\);

-- Location: FF_X44_Y22_N1
\sig_cnt[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[42]~188_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(42));

-- Location: LCCOMB_X44_Y22_N2
\sig_cnt[43]~190\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[43]~190_combout\ = (sig_cnt(43) & (!\sig_cnt[42]~189\)) # (!sig_cnt(43) & ((\sig_cnt[42]~189\) # (GND)))
-- \sig_cnt[43]~191\ = CARRY((!\sig_cnt[42]~189\) # (!sig_cnt(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(43),
	datad => VCC,
	cin => \sig_cnt[42]~189\,
	combout => \sig_cnt[43]~190_combout\,
	cout => \sig_cnt[43]~191\);

-- Location: FF_X44_Y22_N3
\sig_cnt[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[43]~190_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(43));

-- Location: LCCOMB_X44_Y22_N4
\sig_cnt[44]~192\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[44]~192_combout\ = (sig_cnt(44) & (\sig_cnt[43]~191\ $ (GND))) # (!sig_cnt(44) & (!\sig_cnt[43]~191\ & VCC))
-- \sig_cnt[44]~193\ = CARRY((sig_cnt(44) & !\sig_cnt[43]~191\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(44),
	datad => VCC,
	cin => \sig_cnt[43]~191\,
	combout => \sig_cnt[44]~192_combout\,
	cout => \sig_cnt[44]~193\);

-- Location: FF_X44_Y22_N5
\sig_cnt[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[44]~192_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(44));

-- Location: LCCOMB_X44_Y22_N6
\sig_cnt[45]~194\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[45]~194_combout\ = (sig_cnt(45) & (!\sig_cnt[44]~193\)) # (!sig_cnt(45) & ((\sig_cnt[44]~193\) # (GND)))
-- \sig_cnt[45]~195\ = CARRY((!\sig_cnt[44]~193\) # (!sig_cnt(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(45),
	datad => VCC,
	cin => \sig_cnt[44]~193\,
	combout => \sig_cnt[45]~194_combout\,
	cout => \sig_cnt[45]~195\);

-- Location: FF_X44_Y22_N7
\sig_cnt[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[45]~194_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(45));

-- Location: LCCOMB_X44_Y22_N8
\sig_cnt[46]~196\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[46]~196_combout\ = (sig_cnt(46) & (\sig_cnt[45]~195\ $ (GND))) # (!sig_cnt(46) & (!\sig_cnt[45]~195\ & VCC))
-- \sig_cnt[46]~197\ = CARRY((sig_cnt(46) & !\sig_cnt[45]~195\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(46),
	datad => VCC,
	cin => \sig_cnt[45]~195\,
	combout => \sig_cnt[46]~196_combout\,
	cout => \sig_cnt[46]~197\);

-- Location: FF_X44_Y22_N9
\sig_cnt[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[46]~196_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(46));

-- Location: LCCOMB_X44_Y22_N10
\sig_cnt[47]~198\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[47]~198_combout\ = (sig_cnt(47) & (!\sig_cnt[46]~197\)) # (!sig_cnt(47) & ((\sig_cnt[46]~197\) # (GND)))
-- \sig_cnt[47]~199\ = CARRY((!\sig_cnt[46]~197\) # (!sig_cnt(47)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(47),
	datad => VCC,
	cin => \sig_cnt[46]~197\,
	combout => \sig_cnt[47]~198_combout\,
	cout => \sig_cnt[47]~199\);

-- Location: FF_X44_Y22_N11
\sig_cnt[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[47]~198_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(47));

-- Location: LCCOMB_X44_Y22_N12
\sig_cnt[48]~200\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[48]~200_combout\ = (sig_cnt(48) & (\sig_cnt[47]~199\ $ (GND))) # (!sig_cnt(48) & (!\sig_cnt[47]~199\ & VCC))
-- \sig_cnt[48]~201\ = CARRY((sig_cnt(48) & !\sig_cnt[47]~199\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(48),
	datad => VCC,
	cin => \sig_cnt[47]~199\,
	combout => \sig_cnt[48]~200_combout\,
	cout => \sig_cnt[48]~201\);

-- Location: FF_X44_Y22_N13
\sig_cnt[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[48]~200_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(48));

-- Location: LCCOMB_X44_Y22_N14
\sig_cnt[49]~202\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[49]~202_combout\ = (sig_cnt(49) & (!\sig_cnt[48]~201\)) # (!sig_cnt(49) & ((\sig_cnt[48]~201\) # (GND)))
-- \sig_cnt[49]~203\ = CARRY((!\sig_cnt[48]~201\) # (!sig_cnt(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(49),
	datad => VCC,
	cin => \sig_cnt[48]~201\,
	combout => \sig_cnt[49]~202_combout\,
	cout => \sig_cnt[49]~203\);

-- Location: FF_X44_Y22_N15
\sig_cnt[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[49]~202_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(49));

-- Location: LCCOMB_X44_Y22_N16
\sig_cnt[50]~204\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[50]~204_combout\ = (sig_cnt(50) & (\sig_cnt[49]~203\ $ (GND))) # (!sig_cnt(50) & (!\sig_cnt[49]~203\ & VCC))
-- \sig_cnt[50]~205\ = CARRY((sig_cnt(50) & !\sig_cnt[49]~203\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(50),
	datad => VCC,
	cin => \sig_cnt[49]~203\,
	combout => \sig_cnt[50]~204_combout\,
	cout => \sig_cnt[50]~205\);

-- Location: FF_X44_Y22_N17
\sig_cnt[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[50]~204_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(50));

-- Location: LCCOMB_X44_Y22_N18
\sig_cnt[51]~206\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[51]~206_combout\ = (sig_cnt(51) & (!\sig_cnt[50]~205\)) # (!sig_cnt(51) & ((\sig_cnt[50]~205\) # (GND)))
-- \sig_cnt[51]~207\ = CARRY((!\sig_cnt[50]~205\) # (!sig_cnt(51)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(51),
	datad => VCC,
	cin => \sig_cnt[50]~205\,
	combout => \sig_cnt[51]~206_combout\,
	cout => \sig_cnt[51]~207\);

-- Location: FF_X44_Y22_N19
\sig_cnt[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[51]~206_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(51));

-- Location: LCCOMB_X44_Y22_N20
\sig_cnt[52]~208\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[52]~208_combout\ = (sig_cnt(52) & (\sig_cnt[51]~207\ $ (GND))) # (!sig_cnt(52) & (!\sig_cnt[51]~207\ & VCC))
-- \sig_cnt[52]~209\ = CARRY((sig_cnt(52) & !\sig_cnt[51]~207\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(52),
	datad => VCC,
	cin => \sig_cnt[51]~207\,
	combout => \sig_cnt[52]~208_combout\,
	cout => \sig_cnt[52]~209\);

-- Location: FF_X44_Y22_N21
\sig_cnt[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[52]~208_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(52));

-- Location: LCCOMB_X44_Y22_N22
\sig_cnt[53]~210\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[53]~210_combout\ = (sig_cnt(53) & (!\sig_cnt[52]~209\)) # (!sig_cnt(53) & ((\sig_cnt[52]~209\) # (GND)))
-- \sig_cnt[53]~211\ = CARRY((!\sig_cnt[52]~209\) # (!sig_cnt(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(53),
	datad => VCC,
	cin => \sig_cnt[52]~209\,
	combout => \sig_cnt[53]~210_combout\,
	cout => \sig_cnt[53]~211\);

-- Location: FF_X44_Y22_N23
\sig_cnt[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[53]~210_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(53));

-- Location: LCCOMB_X44_Y22_N24
\sig_cnt[54]~212\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[54]~212_combout\ = (sig_cnt(54) & (\sig_cnt[53]~211\ $ (GND))) # (!sig_cnt(54) & (!\sig_cnt[53]~211\ & VCC))
-- \sig_cnt[54]~213\ = CARRY((sig_cnt(54) & !\sig_cnt[53]~211\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(54),
	datad => VCC,
	cin => \sig_cnt[53]~211\,
	combout => \sig_cnt[54]~212_combout\,
	cout => \sig_cnt[54]~213\);

-- Location: FF_X44_Y22_N25
\sig_cnt[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[54]~212_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(54));

-- Location: LCCOMB_X44_Y22_N26
\sig_cnt[55]~214\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[55]~214_combout\ = (sig_cnt(55) & (!\sig_cnt[54]~213\)) # (!sig_cnt(55) & ((\sig_cnt[54]~213\) # (GND)))
-- \sig_cnt[55]~215\ = CARRY((!\sig_cnt[54]~213\) # (!sig_cnt(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(55),
	datad => VCC,
	cin => \sig_cnt[54]~213\,
	combout => \sig_cnt[55]~214_combout\,
	cout => \sig_cnt[55]~215\);

-- Location: FF_X44_Y22_N27
\sig_cnt[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[55]~214_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(55));

-- Location: LCCOMB_X44_Y22_N28
\sig_cnt[56]~216\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[56]~216_combout\ = (sig_cnt(56) & (\sig_cnt[55]~215\ $ (GND))) # (!sig_cnt(56) & (!\sig_cnt[55]~215\ & VCC))
-- \sig_cnt[56]~217\ = CARRY((sig_cnt(56) & !\sig_cnt[55]~215\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(56),
	datad => VCC,
	cin => \sig_cnt[55]~215\,
	combout => \sig_cnt[56]~216_combout\,
	cout => \sig_cnt[56]~217\);

-- Location: FF_X44_Y22_N29
\sig_cnt[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[56]~216_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(56));

-- Location: LCCOMB_X44_Y22_N30
\sig_cnt[57]~218\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[57]~218_combout\ = (sig_cnt(57) & (!\sig_cnt[56]~217\)) # (!sig_cnt(57) & ((\sig_cnt[56]~217\) # (GND)))
-- \sig_cnt[57]~219\ = CARRY((!\sig_cnt[56]~217\) # (!sig_cnt(57)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(57),
	datad => VCC,
	cin => \sig_cnt[56]~217\,
	combout => \sig_cnt[57]~218_combout\,
	cout => \sig_cnt[57]~219\);

-- Location: FF_X44_Y22_N31
\sig_cnt[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[57]~218_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(57));

-- Location: LCCOMB_X44_Y21_N0
\sig_cnt[58]~220\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[58]~220_combout\ = (sig_cnt(58) & (\sig_cnt[57]~219\ $ (GND))) # (!sig_cnt(58) & (!\sig_cnt[57]~219\ & VCC))
-- \sig_cnt[58]~221\ = CARRY((sig_cnt(58) & !\sig_cnt[57]~219\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(58),
	datad => VCC,
	cin => \sig_cnt[57]~219\,
	combout => \sig_cnt[58]~220_combout\,
	cout => \sig_cnt[58]~221\);

-- Location: FF_X44_Y21_N1
\sig_cnt[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[58]~220_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(58));

-- Location: LCCOMB_X44_Y21_N2
\sig_cnt[59]~222\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[59]~222_combout\ = (sig_cnt(59) & (!\sig_cnt[58]~221\)) # (!sig_cnt(59) & ((\sig_cnt[58]~221\) # (GND)))
-- \sig_cnt[59]~223\ = CARRY((!\sig_cnt[58]~221\) # (!sig_cnt(59)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(59),
	datad => VCC,
	cin => \sig_cnt[58]~221\,
	combout => \sig_cnt[59]~222_combout\,
	cout => \sig_cnt[59]~223\);

-- Location: FF_X44_Y21_N3
\sig_cnt[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[59]~222_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(59));

-- Location: LCCOMB_X44_Y21_N4
\sig_cnt[60]~224\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[60]~224_combout\ = (sig_cnt(60) & (\sig_cnt[59]~223\ $ (GND))) # (!sig_cnt(60) & (!\sig_cnt[59]~223\ & VCC))
-- \sig_cnt[60]~225\ = CARRY((sig_cnt(60) & !\sig_cnt[59]~223\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(60),
	datad => VCC,
	cin => \sig_cnt[59]~223\,
	combout => \sig_cnt[60]~224_combout\,
	cout => \sig_cnt[60]~225\);

-- Location: FF_X44_Y21_N5
\sig_cnt[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[60]~224_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(60));

-- Location: LCCOMB_X44_Y21_N6
\sig_cnt[61]~226\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[61]~226_combout\ = (sig_cnt(61) & (!\sig_cnt[60]~225\)) # (!sig_cnt(61) & ((\sig_cnt[60]~225\) # (GND)))
-- \sig_cnt[61]~227\ = CARRY((!\sig_cnt[60]~225\) # (!sig_cnt(61)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(61),
	datad => VCC,
	cin => \sig_cnt[60]~225\,
	combout => \sig_cnt[61]~226_combout\,
	cout => \sig_cnt[61]~227\);

-- Location: FF_X44_Y21_N7
\sig_cnt[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[61]~226_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(61));

-- Location: LCCOMB_X44_Y21_N8
\sig_cnt[62]~228\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[62]~228_combout\ = (sig_cnt(62) & (\sig_cnt[61]~227\ $ (GND))) # (!sig_cnt(62) & (!\sig_cnt[61]~227\ & VCC))
-- \sig_cnt[62]~229\ = CARRY((sig_cnt(62) & !\sig_cnt[61]~227\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(62),
	datad => VCC,
	cin => \sig_cnt[61]~227\,
	combout => \sig_cnt[62]~228_combout\,
	cout => \sig_cnt[62]~229\);

-- Location: FF_X44_Y21_N9
\sig_cnt[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[62]~228_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(62));

-- Location: LCCOMB_X44_Y21_N10
\sig_cnt[63]~230\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt[63]~230_combout\ = (sig_cnt(63) & (!\sig_cnt[62]~229\)) # (!sig_cnt(63) & ((\sig_cnt[62]~229\) # (GND)))
-- \sig_cnt[63]~231\ = CARRY((!\sig_cnt[62]~229\) # (!sig_cnt(63)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(63),
	datad => VCC,
	cin => \sig_cnt[62]~229\,
	combout => \sig_cnt[63]~230_combout\,
	cout => \sig_cnt[63]~231\);

-- Location: FF_X44_Y21_N11
\sig_cnt[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[63]~230_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(63));

-- Location: FF_X44_Y21_N13
\sig_cnt[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt[64]~232_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \sig_cnt[97]~106_combout\,
	ena => \sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(64));

-- Location: LCCOMB_X45_Y22_N26
\Equal0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~17_combout\ = (!sig_cnt(64) & (!sig_cnt(63) & (!sig_cnt(61) & !sig_cnt(62))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(64),
	datab => sig_cnt(63),
	datac => sig_cnt(61),
	datad => sig_cnt(62),
	combout => \Equal0~17_combout\);

-- Location: LCCOMB_X45_Y21_N0
\Equal0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~16_combout\ = (!sig_cnt(59) & (!sig_cnt(60) & (!sig_cnt(58) & !sig_cnt(57))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(59),
	datab => sig_cnt(60),
	datac => sig_cnt(58),
	datad => sig_cnt(57),
	combout => \Equal0~16_combout\);

-- Location: LCCOMB_X45_Y22_N4
\Equal0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~18_combout\ = (!sig_cnt(67) & (!sig_cnt(68) & (!sig_cnt(66) & !sig_cnt(65))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(67),
	datab => sig_cnt(68),
	datac => sig_cnt(66),
	datad => sig_cnt(65),
	combout => \Equal0~18_combout\);

-- Location: LCCOMB_X45_Y22_N24
\Equal0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~15_combout\ = (!sig_cnt(56) & (!sig_cnt(54) & (!sig_cnt(55) & !sig_cnt(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(56),
	datab => sig_cnt(54),
	datac => sig_cnt(55),
	datad => sig_cnt(53),
	combout => \Equal0~15_combout\);

-- Location: LCCOMB_X45_Y22_N22
\Equal0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~19_combout\ = (\Equal0~17_combout\ & (\Equal0~16_combout\ & (\Equal0~18_combout\ & \Equal0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~17_combout\,
	datab => \Equal0~16_combout\,
	datac => \Equal0~18_combout\,
	datad => \Equal0~15_combout\,
	combout => \Equal0~19_combout\);

-- Location: LCCOMB_X45_Y24_N12
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!sig_cnt(17) & (!sig_cnt(20) & (!sig_cnt(18) & !sig_cnt(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(17),
	datab => sig_cnt(20),
	datac => sig_cnt(18),
	datad => sig_cnt(19),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X45_Y24_N24
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!sig_cnt(10) & (!sig_cnt(12) & (!sig_cnt(9) & !sig_cnt(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(10),
	datab => sig_cnt(12),
	datac => sig_cnt(9),
	datad => sig_cnt(11),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X44_Y25_N2
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!sig_cnt(7) & (sig_cnt(2) & (sig_cnt(1) & !sig_cnt(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(7),
	datab => sig_cnt(2),
	datac => sig_cnt(1),
	datad => sig_cnt(8),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X45_Y24_N10
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!sig_cnt(15) & (!sig_cnt(16) & (!sig_cnt(13) & !sig_cnt(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(15),
	datab => sig_cnt(16),
	datac => sig_cnt(13),
	datad => sig_cnt(14),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X45_Y24_N6
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~1_combout\ & (\Equal0~0_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X45_Y23_N12
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!sig_cnt(33) & (!sig_cnt(36) & (!sig_cnt(34) & !sig_cnt(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(33),
	datab => sig_cnt(36),
	datac => sig_cnt(34),
	datad => sig_cnt(35),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X45_Y23_N16
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!sig_cnt(27) & (!sig_cnt(28) & (!sig_cnt(26) & !sig_cnt(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(27),
	datab => sig_cnt(28),
	datac => sig_cnt(26),
	datad => sig_cnt(25),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X45_Y23_N26
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!sig_cnt(31) & (!sig_cnt(32) & (!sig_cnt(29) & !sig_cnt(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(31),
	datab => sig_cnt(32),
	datac => sig_cnt(29),
	datad => sig_cnt(30),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X45_Y24_N8
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!sig_cnt(24) & (!sig_cnt(22) & (!sig_cnt(23) & !sig_cnt(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(24),
	datab => sig_cnt(22),
	datac => sig_cnt(23),
	datad => sig_cnt(21),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X45_Y23_N30
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~8_combout\ & (\Equal0~6_combout\ & (\Equal0~7_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X45_Y22_N10
\Equal0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = (!sig_cnt(47) & (!sig_cnt(46) & (!sig_cnt(45) & !sig_cnt(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(47),
	datab => sig_cnt(46),
	datac => sig_cnt(45),
	datad => sig_cnt(48),
	combout => \Equal0~12_combout\);

-- Location: LCCOMB_X45_Y23_N24
\Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (!sig_cnt(40) & (!sig_cnt(38) & (!sig_cnt(39) & !sig_cnt(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(40),
	datab => sig_cnt(38),
	datac => sig_cnt(39),
	datad => sig_cnt(37),
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X45_Y22_N8
\Equal0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (!sig_cnt(41) & (!sig_cnt(44) & (!sig_cnt(42) & !sig_cnt(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(41),
	datab => sig_cnt(44),
	datac => sig_cnt(42),
	datad => sig_cnt(43),
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X45_Y22_N12
\Equal0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = (!sig_cnt(49) & (!sig_cnt(52) & (!sig_cnt(50) & !sig_cnt(51))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(49),
	datab => sig_cnt(52),
	datac => sig_cnt(50),
	datad => sig_cnt(51),
	combout => \Equal0~13_combout\);

-- Location: LCCOMB_X45_Y22_N6
\Equal0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~14_combout\ = (\Equal0~12_combout\ & (\Equal0~10_combout\ & (\Equal0~11_combout\ & \Equal0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~12_combout\,
	datab => \Equal0~10_combout\,
	datac => \Equal0~11_combout\,
	datad => \Equal0~13_combout\,
	combout => \Equal0~14_combout\);

-- Location: LCCOMB_X45_Y22_N16
\Equal0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~20_combout\ = (\Equal0~19_combout\ & (\Equal0~4_combout\ & (\Equal0~9_combout\ & \Equal0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~19_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~14_combout\,
	combout => \Equal0~20_combout\);

-- Location: LCCOMB_X44_Y25_N4
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (sig_cnt(5) & (!sig_cnt(4) & !sig_cnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(5),
	datab => sig_cnt(4),
	datad => sig_cnt(0),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X43_Y25_N2
\Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\Equal0~20_combout\ & (\Equal0~31_combout\ & (\Equal0~32_combout\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~20_combout\,
	datab => \Equal0~31_combout\,
	datac => \Equal0~32_combout\,
	datad => \Equal2~0_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X43_Y25_N30
\state_Do~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_Do~28_combout\ = (\Equal0~34_combout\ & (!\Equal1~1_combout\ & (\state_Do.s2~q\))) # (!\Equal0~34_combout\ & ((\state_Do.s1~q\) # ((!\Equal1~1_combout\ & \state_Do.s2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~34_combout\,
	datab => \Equal1~1_combout\,
	datac => \state_Do.s2~q\,
	datad => \state_Do.s1~q\,
	combout => \state_Do~28_combout\);

-- Location: LCCOMB_X43_Y25_N26
\state_Do~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_Do~29_combout\ = (\state_Do~27_combout\ & (!\state_Do~28_combout\ & ((\Equal2~1_combout\) # (!\state_Do.s5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_Do~27_combout\,
	datab => \Equal2~1_combout\,
	datac => \state_Do~28_combout\,
	datad => \state_Do.s5~q\,
	combout => \state_Do~29_combout\);

-- Location: FF_X43_Y25_N25
\state_Do.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_Do.s1~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_Do~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_Do.s1~q\);

-- Location: FF_X43_Y25_N31
\state_Do.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_Do.s1~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \state_Do~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_Do.s2~q\);

-- Location: LCCOMB_X43_Y25_N10
\state_Do.s3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_Do.s3~feeder_combout\ = \state_Do.s2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_Do.s2~q\,
	combout => \state_Do.s3~feeder_combout\);

-- Location: FF_X43_Y25_N11
\state_Do.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_Do.s3~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_Do~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_Do.s3~q\);

-- Location: FF_X43_Y25_N15
\state_Do.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_Do.s3~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_Do.s4~q\);

-- Location: LCCOMB_X43_Y25_N12
\Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\state_Do.s4~q\) # ((\state_Do.s5~q\ & !\Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_Do.s4~q\,
	datac => \state_Do.s5~q\,
	datad => \Equal2~1_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X43_Y25_N13
\state_Do.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_Do.s5~q\);

-- Location: FF_X43_Y25_N19
\state_Do.s5a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_Do.s5~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \state_Do~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_Do.s5a~q\);

-- Location: LCCOMB_X42_Y25_N26
\Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\state_Do.s5a~q\ & !\crc8bit_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_Do.s5a~q\,
	datad => \crc8bit_in~input_o\,
	combout => \Selector7~0_combout\);

-- Location: FF_X42_Y25_N27
\state_Do.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_Do.s6~q\);

-- Location: LCCOMB_X42_Y25_N24
\Selector112~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector112~0_combout\ = (!\state_Do.s6~q\ & ((\load_leds~reg0_q\) # (\state_Do.s8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_Do.s6~q\,
	datac => \load_leds~reg0_q\,
	datad => \state_Do.s8~q\,
	combout => \Selector112~0_combout\);

-- Location: FF_X42_Y25_N25
\load_leds~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector112~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_leds~reg0_q\);

-- Location: IOIBUF_X29_Y39_N1
\nrzl_data~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nrzl_data,
	o => \nrzl_data~input_o\);

-- Location: LCCOMB_X37_Y31_N6
\sig_green_leds_reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_green_leds_reg[0]~feeder_combout\ = \nrzl_data~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nrzl_data~input_o\,
	combout => \sig_green_leds_reg[0]~feeder_combout\);

-- Location: LCCOMB_X42_Y25_N22
\sig_green_leds_reg[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_green_leds_reg[0]~0_combout\ = (\sig_main_clk_cut~q\ & (!\sig_main_clk_cut_not~q\ & \state_Do.s2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_main_clk_cut~q\,
	datab => \sig_main_clk_cut_not~q\,
	datac => \state_Do.s2~q\,
	combout => \sig_green_leds_reg[0]~0_combout\);

-- Location: FF_X37_Y31_N7
\sig_green_leds_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_green_leds_reg[0]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_green_leds_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_green_leds_reg(0));

-- Location: LCCOMB_X37_Y31_N24
\sig_green_leds_out[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_green_leds_out[0]~feeder_combout\ = sig_green_leds_reg(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_green_leds_reg(0),
	combout => \sig_green_leds_out[0]~feeder_combout\);

-- Location: LCCOMB_X43_Y25_N14
\sig_green_leds_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_green_leds_out[0]~0_combout\ = (!\sig_main_clk_cut_not~q\ & (\sig_main_clk_cut~q\ & (\state_Do.s4~q\ & \resetn~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_main_clk_cut_not~q\,
	datab => \sig_main_clk_cut~q\,
	datac => \state_Do.s4~q\,
	datad => \resetn~input_o\,
	combout => \sig_green_leds_out[0]~0_combout\);

-- Location: FF_X37_Y31_N25
\sig_green_leds_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_green_leds_out[0]~feeder_combout\,
	ena => \sig_green_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_green_leds_out(0));

-- Location: LCCOMB_X36_Y31_N16
\green_leds[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \green_leds[0]~reg0feeder_combout\ = sig_green_leds_out(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_green_leds_out(0),
	combout => \green_leds[0]~reg0feeder_combout\);

-- Location: LCCOMB_X42_Y25_N20
\green_leds[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \green_leds[0]~0_combout\ = (\resetn~input_o\ & (!\sig_main_clk_cut_not~q\ & (\state_Do.s7~q\ & \sig_main_clk_cut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~input_o\,
	datab => \sig_main_clk_cut_not~q\,
	datac => \state_Do.s7~q\,
	datad => \sig_main_clk_cut~q\,
	combout => \green_leds[0]~0_combout\);

-- Location: FF_X36_Y31_N17
\green_leds[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \green_leds[0]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \green_leds[0]~reg0_q\);

-- Location: LCCOMB_X37_Y31_N16
\sig_green_leds_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_green_leds_reg[1]~feeder_combout\ = sig_green_leds_reg(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_green_leds_reg(0),
	combout => \sig_green_leds_reg[1]~feeder_combout\);

-- Location: FF_X37_Y31_N17
\sig_green_leds_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_green_leds_reg[1]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_green_leds_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_green_leds_reg(1));

-- Location: LCCOMB_X37_Y31_N18
\sig_green_leds_out[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_green_leds_out[1]~feeder_combout\ = sig_green_leds_reg(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_green_leds_reg(1),
	combout => \sig_green_leds_out[1]~feeder_combout\);

-- Location: FF_X37_Y31_N19
\sig_green_leds_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_green_leds_out[1]~feeder_combout\,
	ena => \sig_green_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_green_leds_out(1));

-- Location: LCCOMB_X36_Y31_N2
\green_leds[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \green_leds[1]~reg0feeder_combout\ = sig_green_leds_out(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_green_leds_out(1),
	combout => \green_leds[1]~reg0feeder_combout\);

-- Location: FF_X36_Y31_N3
\green_leds[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \green_leds[1]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \green_leds[1]~reg0_q\);

-- Location: LCCOMB_X37_Y31_N10
\sig_green_leds_reg[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_green_leds_reg[2]~feeder_combout\ = sig_green_leds_reg(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_green_leds_reg(1),
	combout => \sig_green_leds_reg[2]~feeder_combout\);

-- Location: FF_X37_Y31_N11
\sig_green_leds_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_green_leds_reg[2]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_green_leds_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_green_leds_reg(2));

-- Location: LCCOMB_X37_Y31_N4
\sig_green_leds_out[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_green_leds_out[2]~feeder_combout\ = sig_green_leds_reg(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_green_leds_reg(2),
	combout => \sig_green_leds_out[2]~feeder_combout\);

-- Location: FF_X37_Y31_N5
\sig_green_leds_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_green_leds_out[2]~feeder_combout\,
	ena => \sig_green_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_green_leds_out(2));

-- Location: LCCOMB_X36_Y31_N20
\green_leds[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \green_leds[2]~reg0feeder_combout\ = sig_green_leds_out(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_green_leds_out(2),
	combout => \green_leds[2]~reg0feeder_combout\);

-- Location: FF_X36_Y31_N21
\green_leds[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \green_leds[2]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \green_leds[2]~reg0_q\);

-- Location: LCCOMB_X34_Y35_N24
\sig_rgb_leds_out[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[0]~feeder_combout\ = \nrzl_data~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \nrzl_data~input_o\,
	combout => \sig_rgb_leds_out[0]~feeder_combout\);

-- Location: LCCOMB_X43_Y25_N0
\sig_rgb_leds_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[0]~0_combout\ = (\sig_main_clk_cut~q\ & (!\sig_main_clk_cut_not~q\ & \state_Do.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_main_clk_cut~q\,
	datac => \sig_main_clk_cut_not~q\,
	datad => \state_Do.s1~q\,
	combout => \sig_rgb_leds_out[0]~0_combout\);

-- Location: FF_X34_Y35_N25
\sig_rgb_leds_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[0]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(0));

-- Location: LCCOMB_X34_Y35_N8
\rgb_leds[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[0]~reg0feeder_combout\ = sig_rgb_leds_out(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(0),
	combout => \rgb_leds[0]~reg0feeder_combout\);

-- Location: FF_X34_Y35_N9
\rgb_leds[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[0]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[0]~reg0_q\);

-- Location: LCCOMB_X34_Y35_N2
\sig_rgb_leds_out[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[1]~feeder_combout\ = sig_rgb_leds_out(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(0),
	combout => \sig_rgb_leds_out[1]~feeder_combout\);

-- Location: FF_X34_Y35_N3
\sig_rgb_leds_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[1]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(1));

-- Location: LCCOMB_X40_Y35_N8
\rgb_leds[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[1]~reg0feeder_combout\ = sig_rgb_leds_out(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(1),
	combout => \rgb_leds[1]~reg0feeder_combout\);

-- Location: FF_X40_Y35_N9
\rgb_leds[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[1]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[1]~reg0_q\);

-- Location: LCCOMB_X40_Y35_N16
\sig_rgb_leds_out[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[2]~feeder_combout\ = sig_rgb_leds_out(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(1),
	combout => \sig_rgb_leds_out[2]~feeder_combout\);

-- Location: FF_X40_Y35_N17
\sig_rgb_leds_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[2]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(2));

-- Location: LCCOMB_X40_Y35_N2
\rgb_leds[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[2]~reg0feeder_combout\ = sig_rgb_leds_out(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(2),
	combout => \rgb_leds[2]~reg0feeder_combout\);

-- Location: FF_X40_Y35_N3
\rgb_leds[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[2]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[2]~reg0_q\);

-- Location: LCCOMB_X40_Y35_N18
\sig_rgb_leds_out[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[3]~feeder_combout\ = sig_rgb_leds_out(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(2),
	combout => \sig_rgb_leds_out[3]~feeder_combout\);

-- Location: FF_X40_Y35_N19
\sig_rgb_leds_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[3]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(3));

-- Location: LCCOMB_X40_Y35_N20
\rgb_leds[3]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[3]~reg0feeder_combout\ = sig_rgb_leds_out(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(3),
	combout => \rgb_leds[3]~reg0feeder_combout\);

-- Location: FF_X40_Y35_N21
\rgb_leds[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[3]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[3]~reg0_q\);

-- Location: LCCOMB_X40_Y35_N12
\sig_rgb_leds_out[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[4]~feeder_combout\ = sig_rgb_leds_out(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(3),
	combout => \sig_rgb_leds_out[4]~feeder_combout\);

-- Location: FF_X40_Y35_N13
\sig_rgb_leds_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[4]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(4));

-- Location: LCCOMB_X40_Y35_N6
\rgb_leds[4]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[4]~reg0feeder_combout\ = sig_rgb_leds_out(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(4),
	combout => \rgb_leds[4]~reg0feeder_combout\);

-- Location: FF_X40_Y35_N7
\rgb_leds[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[4]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[4]~reg0_q\);

-- Location: LCCOMB_X40_Y35_N14
\sig_rgb_leds_out[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[5]~feeder_combout\ = sig_rgb_leds_out(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(4),
	combout => \sig_rgb_leds_out[5]~feeder_combout\);

-- Location: FF_X40_Y35_N15
\sig_rgb_leds_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[5]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(5));

-- Location: FF_X40_Y35_N25
\rgb_leds[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(5),
	sload => VCC,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[5]~reg0_q\);

-- Location: FF_X40_Y35_N1
\sig_rgb_leds_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(5),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(6));

-- Location: LCCOMB_X40_Y35_N26
\rgb_leds[6]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[6]~reg0feeder_combout\ = sig_rgb_leds_out(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(6),
	combout => \rgb_leds[6]~reg0feeder_combout\);

-- Location: FF_X40_Y35_N27
\rgb_leds[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[6]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[6]~reg0_q\);

-- Location: LCCOMB_X40_Y35_N10
\sig_rgb_leds_out[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[7]~feeder_combout\ = sig_rgb_leds_out(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(6),
	combout => \sig_rgb_leds_out[7]~feeder_combout\);

-- Location: FF_X40_Y35_N11
\sig_rgb_leds_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[7]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(7));

-- Location: LCCOMB_X40_Y35_N4
\rgb_leds[7]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[7]~reg0feeder_combout\ = sig_rgb_leds_out(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(7),
	combout => \rgb_leds[7]~reg0feeder_combout\);

-- Location: FF_X40_Y35_N5
\rgb_leds[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[7]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[7]~reg0_q\);

-- Location: LCCOMB_X40_Y35_N28
\sig_rgb_leds_out[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[8]~feeder_combout\ = sig_rgb_leds_out(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(7),
	combout => \sig_rgb_leds_out[8]~feeder_combout\);

-- Location: FF_X40_Y35_N29
\sig_rgb_leds_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[8]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(8));

-- Location: LCCOMB_X40_Y35_N22
\rgb_leds[8]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[8]~reg0feeder_combout\ = sig_rgb_leds_out(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(8),
	combout => \rgb_leds[8]~reg0feeder_combout\);

-- Location: FF_X40_Y35_N23
\rgb_leds[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[8]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[8]~reg0_q\);

-- Location: LCCOMB_X40_Y35_N30
\sig_rgb_leds_out[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[9]~feeder_combout\ = sig_rgb_leds_out(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(8),
	combout => \sig_rgb_leds_out[9]~feeder_combout\);

-- Location: FF_X40_Y35_N31
\sig_rgb_leds_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[9]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(9));

-- Location: LCCOMB_X39_Y4_N8
\rgb_leds[9]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[9]~reg0feeder_combout\ = sig_rgb_leds_out(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(9),
	combout => \rgb_leds[9]~reg0feeder_combout\);

-- Location: FF_X39_Y4_N9
\rgb_leds[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[9]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[9]~reg0_q\);

-- Location: LCCOMB_X39_Y4_N16
\sig_rgb_leds_out[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[10]~feeder_combout\ = sig_rgb_leds_out(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(9),
	combout => \sig_rgb_leds_out[10]~feeder_combout\);

-- Location: FF_X39_Y4_N17
\sig_rgb_leds_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[10]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(10));

-- Location: LCCOMB_X39_Y4_N10
\rgb_leds[10]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[10]~reg0feeder_combout\ = sig_rgb_leds_out(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(10),
	combout => \rgb_leds[10]~reg0feeder_combout\);

-- Location: FF_X39_Y4_N11
\rgb_leds[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[10]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[10]~reg0_q\);

-- Location: LCCOMB_X39_Y4_N2
\sig_rgb_leds_out[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[11]~feeder_combout\ = sig_rgb_leds_out(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(10),
	combout => \sig_rgb_leds_out[11]~feeder_combout\);

-- Location: FF_X39_Y4_N3
\sig_rgb_leds_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[11]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(11));

-- Location: LCCOMB_X39_Y4_N28
\rgb_leds[11]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[11]~reg0feeder_combout\ = sig_rgb_leds_out(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(11),
	combout => \rgb_leds[11]~reg0feeder_combout\);

-- Location: FF_X39_Y4_N29
\rgb_leds[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[11]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[11]~reg0_q\);

-- Location: LCCOMB_X39_Y4_N20
\sig_rgb_leds_out[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[12]~feeder_combout\ = sig_rgb_leds_out(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(11),
	combout => \sig_rgb_leds_out[12]~feeder_combout\);

-- Location: FF_X39_Y4_N21
\sig_rgb_leds_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[12]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(12));

-- Location: LCCOMB_X39_Y4_N30
\rgb_leds[12]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[12]~reg0feeder_combout\ = sig_rgb_leds_out(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(12),
	combout => \rgb_leds[12]~reg0feeder_combout\);

-- Location: FF_X39_Y4_N31
\rgb_leds[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[12]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[12]~reg0_q\);

-- Location: LCCOMB_X39_Y4_N6
\sig_rgb_leds_out[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[13]~feeder_combout\ = sig_rgb_leds_out(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(12),
	combout => \sig_rgb_leds_out[13]~feeder_combout\);

-- Location: FF_X39_Y4_N7
\sig_rgb_leds_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[13]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(13));

-- Location: LCCOMB_X39_Y4_N24
\rgb_leds[13]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[13]~reg0feeder_combout\ = sig_rgb_leds_out(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(13),
	combout => \rgb_leds[13]~reg0feeder_combout\);

-- Location: FF_X39_Y4_N25
\rgb_leds[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[13]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[13]~reg0_q\);

-- Location: LCCOMB_X39_Y4_N0
\sig_rgb_leds_out[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[14]~feeder_combout\ = sig_rgb_leds_out(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(13),
	combout => \sig_rgb_leds_out[14]~feeder_combout\);

-- Location: FF_X39_Y4_N1
\sig_rgb_leds_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[14]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(14));

-- Location: LCCOMB_X39_Y4_N26
\rgb_leds[14]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[14]~reg0feeder_combout\ = sig_rgb_leds_out(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(14),
	combout => \rgb_leds[14]~reg0feeder_combout\);

-- Location: FF_X39_Y4_N27
\rgb_leds[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[14]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[14]~reg0_q\);

-- Location: LCCOMB_X39_Y4_N18
\sig_rgb_leds_out[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[15]~feeder_combout\ = sig_rgb_leds_out(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(14),
	combout => \sig_rgb_leds_out[15]~feeder_combout\);

-- Location: FF_X39_Y4_N19
\sig_rgb_leds_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[15]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(15));

-- Location: LCCOMB_X39_Y4_N12
\rgb_leds[15]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[15]~reg0feeder_combout\ = sig_rgb_leds_out(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(15),
	combout => \rgb_leds[15]~reg0feeder_combout\);

-- Location: FF_X39_Y4_N13
\rgb_leds[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[15]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[15]~reg0_q\);

-- Location: LCCOMB_X39_Y4_N4
\sig_rgb_leds_out[16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[16]~feeder_combout\ = sig_rgb_leds_out(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(15),
	combout => \sig_rgb_leds_out[16]~feeder_combout\);

-- Location: FF_X39_Y4_N5
\sig_rgb_leds_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[16]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(16));

-- Location: FF_X39_Y4_N23
\rgb_leds[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(16),
	sload => VCC,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[16]~reg0_q\);

-- Location: FF_X39_Y4_N15
\sig_rgb_leds_out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(16),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(17));

-- Location: LCCOMB_X41_Y4_N24
\rgb_leds[17]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[17]~reg0feeder_combout\ = sig_rgb_leds_out(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(17),
	combout => \rgb_leds[17]~reg0feeder_combout\);

-- Location: FF_X41_Y4_N25
\rgb_leds[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[17]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[17]~reg0_q\);

-- Location: LCCOMB_X41_Y4_N0
\sig_rgb_leds_out[18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[18]~feeder_combout\ = sig_rgb_leds_out(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(17),
	combout => \sig_rgb_leds_out[18]~feeder_combout\);

-- Location: FF_X41_Y4_N1
\sig_rgb_leds_out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[18]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(18));

-- Location: LCCOMB_X41_Y4_N18
\rgb_leds[18]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[18]~reg0feeder_combout\ = sig_rgb_leds_out(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(18),
	combout => \rgb_leds[18]~reg0feeder_combout\);

-- Location: FF_X41_Y4_N19
\rgb_leds[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[18]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[18]~reg0_q\);

-- Location: LCCOMB_X41_Y4_N10
\sig_rgb_leds_out[19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[19]~feeder_combout\ = sig_rgb_leds_out(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(18),
	combout => \sig_rgb_leds_out[19]~feeder_combout\);

-- Location: FF_X41_Y4_N11
\sig_rgb_leds_out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[19]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(19));

-- Location: LCCOMB_X41_Y4_N4
\rgb_leds[19]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[19]~reg0feeder_combout\ = sig_rgb_leds_out(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(19),
	combout => \rgb_leds[19]~reg0feeder_combout\);

-- Location: FF_X41_Y4_N5
\rgb_leds[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[19]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[19]~reg0_q\);

-- Location: LCCOMB_X41_Y4_N28
\sig_rgb_leds_out[20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[20]~feeder_combout\ = sig_rgb_leds_out(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(19),
	combout => \sig_rgb_leds_out[20]~feeder_combout\);

-- Location: FF_X41_Y4_N29
\sig_rgb_leds_out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[20]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(20));

-- Location: LCCOMB_X41_Y4_N14
\rgb_leds[20]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[20]~reg0feeder_combout\ = sig_rgb_leds_out(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(20),
	combout => \rgb_leds[20]~reg0feeder_combout\);

-- Location: FF_X41_Y4_N15
\rgb_leds[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[20]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[20]~reg0_q\);

-- Location: LCCOMB_X41_Y4_N6
\sig_rgb_leds_out[21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[21]~feeder_combout\ = sig_rgb_leds_out(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(20),
	combout => \sig_rgb_leds_out[21]~feeder_combout\);

-- Location: FF_X41_Y4_N7
\sig_rgb_leds_out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[21]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(21));

-- Location: LCCOMB_X41_Y4_N16
\rgb_leds[21]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[21]~reg0feeder_combout\ = sig_rgb_leds_out(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(21),
	combout => \rgb_leds[21]~reg0feeder_combout\);

-- Location: FF_X41_Y4_N17
\rgb_leds[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[21]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[21]~reg0_q\);

-- Location: LCCOMB_X41_Y4_N8
\sig_rgb_leds_out[22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[22]~feeder_combout\ = sig_rgb_leds_out(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(21),
	combout => \sig_rgb_leds_out[22]~feeder_combout\);

-- Location: FF_X41_Y4_N9
\sig_rgb_leds_out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[22]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(22));

-- Location: FF_X41_Y4_N3
\rgb_leds[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(22),
	sload => VCC,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[22]~reg0_q\);

-- Location: FF_X41_Y4_N27
\sig_rgb_leds_out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(22),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(23));

-- Location: FF_X41_Y4_N21
\rgb_leds[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(23),
	sload => VCC,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[23]~reg0_q\);

-- Location: FF_X41_Y4_N13
\sig_rgb_leds_out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(23),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(24));

-- Location: LCCOMB_X41_Y4_N30
\rgb_leds[24]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[24]~reg0feeder_combout\ = sig_rgb_leds_out(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(24),
	combout => \rgb_leds[24]~reg0feeder_combout\);

-- Location: FF_X41_Y4_N31
\rgb_leds[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[24]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[24]~reg0_q\);

-- Location: LCCOMB_X41_Y4_N22
\sig_rgb_leds_out[25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[25]~feeder_combout\ = sig_rgb_leds_out(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(24),
	combout => \sig_rgb_leds_out[25]~feeder_combout\);

-- Location: FF_X41_Y4_N23
\sig_rgb_leds_out[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[25]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(25));

-- Location: LCCOMB_X77_Y20_N0
\rgb_leds[25]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[25]~reg0feeder_combout\ = sig_rgb_leds_out(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sig_rgb_leds_out(25),
	combout => \rgb_leds[25]~reg0feeder_combout\);

-- Location: FF_X77_Y20_N1
\rgb_leds[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[25]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[25]~reg0_q\);

-- Location: LCCOMB_X77_Y20_N16
\sig_rgb_leds_out[26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[26]~feeder_combout\ = sig_rgb_leds_out(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sig_rgb_leds_out(25),
	combout => \sig_rgb_leds_out[26]~feeder_combout\);

-- Location: FF_X77_Y20_N17
\sig_rgb_leds_out[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[26]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(26));

-- Location: LCCOMB_X77_Y20_N2
\rgb_leds[26]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[26]~reg0feeder_combout\ = sig_rgb_leds_out(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(26),
	combout => \rgb_leds[26]~reg0feeder_combout\);

-- Location: FF_X77_Y20_N3
\rgb_leds[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[26]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[26]~reg0_q\);

-- Location: LCCOMB_X77_Y20_N10
\sig_rgb_leds_out[27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[27]~feeder_combout\ = sig_rgb_leds_out(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(26),
	combout => \sig_rgb_leds_out[27]~feeder_combout\);

-- Location: FF_X77_Y20_N11
\sig_rgb_leds_out[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[27]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(27));

-- Location: LCCOMB_X77_Y20_N4
\rgb_leds[27]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[27]~reg0feeder_combout\ = sig_rgb_leds_out(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(27),
	combout => \rgb_leds[27]~reg0feeder_combout\);

-- Location: FF_X77_Y20_N5
\rgb_leds[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[27]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[27]~reg0_q\);

-- Location: LCCOMB_X77_Y20_N28
\sig_rgb_leds_out[28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[28]~feeder_combout\ = sig_rgb_leds_out(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(27),
	combout => \sig_rgb_leds_out[28]~feeder_combout\);

-- Location: FF_X77_Y20_N29
\sig_rgb_leds_out[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[28]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(28));

-- Location: LCCOMB_X77_Y20_N14
\rgb_leds[28]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[28]~reg0feeder_combout\ = sig_rgb_leds_out(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(28),
	combout => \rgb_leds[28]~reg0feeder_combout\);

-- Location: FF_X77_Y20_N15
\rgb_leds[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[28]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[28]~reg0_q\);

-- Location: LCCOMB_X77_Y20_N30
\sig_rgb_leds_out[29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[29]~feeder_combout\ = sig_rgb_leds_out(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(28),
	combout => \sig_rgb_leds_out[29]~feeder_combout\);

-- Location: FF_X77_Y20_N31
\sig_rgb_leds_out[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[29]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(29));

-- Location: FF_X77_Y20_N9
\rgb_leds[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(29),
	sload => VCC,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[29]~reg0_q\);

-- Location: FF_X77_Y20_N25
\sig_rgb_leds_out[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(29),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(30));

-- Location: LCCOMB_X77_Y20_N26
\rgb_leds[30]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[30]~reg0feeder_combout\ = sig_rgb_leds_out(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(30),
	combout => \rgb_leds[30]~reg0feeder_combout\);

-- Location: FF_X77_Y20_N27
\rgb_leds[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[30]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[30]~reg0_q\);

-- Location: LCCOMB_X77_Y20_N18
\sig_rgb_leds_out[31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[31]~feeder_combout\ = sig_rgb_leds_out(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(30),
	combout => \sig_rgb_leds_out[31]~feeder_combout\);

-- Location: FF_X77_Y20_N19
\sig_rgb_leds_out[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[31]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(31));

-- Location: LCCOMB_X77_Y20_N12
\rgb_leds[31]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[31]~reg0feeder_combout\ = sig_rgb_leds_out(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(31),
	combout => \rgb_leds[31]~reg0feeder_combout\);

-- Location: FF_X77_Y20_N13
\rgb_leds[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[31]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[31]~reg0_q\);

-- Location: LCCOMB_X77_Y20_N20
\sig_rgb_leds_out[32]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[32]~feeder_combout\ = sig_rgb_leds_out(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(31),
	combout => \sig_rgb_leds_out[32]~feeder_combout\);

-- Location: FF_X77_Y20_N21
\sig_rgb_leds_out[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[32]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(32));

-- Location: LCCOMB_X77_Y20_N6
\rgb_leds[32]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[32]~reg0feeder_combout\ = sig_rgb_leds_out(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(32),
	combout => \rgb_leds[32]~reg0feeder_combout\);

-- Location: FF_X77_Y20_N7
\rgb_leds[32]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[32]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[32]~reg0_q\);

-- Location: LCCOMB_X77_Y20_N22
\sig_rgb_leds_out[33]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[33]~feeder_combout\ = sig_rgb_leds_out(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(32),
	combout => \sig_rgb_leds_out[33]~feeder_combout\);

-- Location: FF_X77_Y20_N23
\sig_rgb_leds_out[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[33]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(33));

-- Location: LCCOMB_X77_Y16_N16
\rgb_leds[33]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[33]~reg0feeder_combout\ = sig_rgb_leds_out(33)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(33),
	combout => \rgb_leds[33]~reg0feeder_combout\);

-- Location: FF_X77_Y16_N17
\rgb_leds[33]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[33]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[33]~reg0_q\);

-- Location: LCCOMB_X77_Y16_N24
\sig_rgb_leds_out[34]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[34]~feeder_combout\ = sig_rgb_leds_out(33)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(33),
	combout => \sig_rgb_leds_out[34]~feeder_combout\);

-- Location: FF_X77_Y16_N25
\sig_rgb_leds_out[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[34]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(34));

-- Location: LCCOMB_X77_Y16_N2
\rgb_leds[34]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[34]~reg0feeder_combout\ = sig_rgb_leds_out(34)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(34),
	combout => \rgb_leds[34]~reg0feeder_combout\);

-- Location: FF_X77_Y16_N3
\rgb_leds[34]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[34]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[34]~reg0_q\);

-- Location: LCCOMB_X77_Y16_N10
\sig_rgb_leds_out[35]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[35]~feeder_combout\ = sig_rgb_leds_out(34)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(34),
	combout => \sig_rgb_leds_out[35]~feeder_combout\);

-- Location: FF_X77_Y16_N11
\sig_rgb_leds_out[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[35]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(35));

-- Location: LCCOMB_X77_Y16_N4
\rgb_leds[35]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[35]~reg0feeder_combout\ = sig_rgb_leds_out(35)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(35),
	combout => \rgb_leds[35]~reg0feeder_combout\);

-- Location: FF_X77_Y16_N5
\rgb_leds[35]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[35]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[35]~reg0_q\);

-- Location: LCCOMB_X77_Y16_N28
\sig_rgb_leds_out[36]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[36]~feeder_combout\ = sig_rgb_leds_out(35)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(35),
	combout => \sig_rgb_leds_out[36]~feeder_combout\);

-- Location: FF_X77_Y16_N29
\sig_rgb_leds_out[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[36]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(36));

-- Location: LCCOMB_X77_Y16_N22
\rgb_leds[36]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[36]~reg0feeder_combout\ = sig_rgb_leds_out(36)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(36),
	combout => \rgb_leds[36]~reg0feeder_combout\);

-- Location: FF_X77_Y16_N23
\rgb_leds[36]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[36]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[36]~reg0_q\);

-- Location: LCCOMB_X77_Y16_N30
\sig_rgb_leds_out[37]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[37]~feeder_combout\ = sig_rgb_leds_out(36)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(36),
	combout => \sig_rgb_leds_out[37]~feeder_combout\);

-- Location: FF_X77_Y16_N31
\sig_rgb_leds_out[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[37]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(37));

-- Location: FF_X77_Y16_N1
\rgb_leds[37]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(37),
	sload => VCC,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[37]~reg0_q\);

-- Location: FF_X77_Y16_N9
\sig_rgb_leds_out[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(37),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(38));

-- Location: FF_X77_Y16_N27
\rgb_leds[38]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(38),
	sload => VCC,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[38]~reg0_q\);

-- Location: FF_X77_Y16_N19
\sig_rgb_leds_out[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(38),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(39));

-- Location: LCCOMB_X77_Y16_N12
\rgb_leds[39]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[39]~reg0feeder_combout\ = sig_rgb_leds_out(39)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(39),
	combout => \rgb_leds[39]~reg0feeder_combout\);

-- Location: FF_X77_Y16_N13
\rgb_leds[39]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[39]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[39]~reg0_q\);

-- Location: LCCOMB_X77_Y16_N20
\sig_rgb_leds_out[40]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[40]~feeder_combout\ = sig_rgb_leds_out(39)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(39),
	combout => \sig_rgb_leds_out[40]~feeder_combout\);

-- Location: FF_X77_Y16_N21
\sig_rgb_leds_out[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[40]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(40));

-- Location: LCCOMB_X77_Y16_N14
\rgb_leds[40]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[40]~reg0feeder_combout\ = sig_rgb_leds_out(40)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(40),
	combout => \rgb_leds[40]~reg0feeder_combout\);

-- Location: FF_X77_Y16_N15
\rgb_leds[40]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[40]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[40]~reg0_q\);

-- Location: LCCOMB_X77_Y16_N6
\sig_rgb_leds_out[41]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[41]~feeder_combout\ = sig_rgb_leds_out(40)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(40),
	combout => \sig_rgb_leds_out[41]~feeder_combout\);

-- Location: FF_X77_Y16_N7
\sig_rgb_leds_out[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[41]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(41));

-- Location: LCCOMB_X34_Y35_N26
\rgb_leds[41]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[41]~reg0feeder_combout\ = sig_rgb_leds_out(41)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sig_rgb_leds_out(41),
	combout => \rgb_leds[41]~reg0feeder_combout\);

-- Location: FF_X34_Y35_N27
\rgb_leds[41]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[41]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[41]~reg0_q\);

-- Location: LCCOMB_X34_Y35_N12
\sig_rgb_leds_out[42]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[42]~feeder_combout\ = sig_rgb_leds_out(41)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sig_rgb_leds_out(41),
	combout => \sig_rgb_leds_out[42]~feeder_combout\);

-- Location: FF_X34_Y35_N13
\sig_rgb_leds_out[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[42]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(42));

-- Location: LCCOMB_X51_Y4_N0
\rgb_leds[42]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[42]~reg0feeder_combout\ = sig_rgb_leds_out(42)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(42),
	combout => \rgb_leds[42]~reg0feeder_combout\);

-- Location: FF_X51_Y4_N1
\rgb_leds[42]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[42]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[42]~reg0_q\);

-- Location: LCCOMB_X51_Y4_N24
\sig_rgb_leds_out[43]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[43]~feeder_combout\ = sig_rgb_leds_out(42)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(42),
	combout => \sig_rgb_leds_out[43]~feeder_combout\);

-- Location: FF_X51_Y4_N25
\sig_rgb_leds_out[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[43]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(43));

-- Location: LCCOMB_X51_Y4_N26
\rgb_leds[43]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[43]~reg0feeder_combout\ = sig_rgb_leds_out(43)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(43),
	combout => \rgb_leds[43]~reg0feeder_combout\);

-- Location: FF_X51_Y4_N27
\rgb_leds[43]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[43]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[43]~reg0_q\);

-- Location: LCCOMB_X51_Y4_N10
\sig_rgb_leds_out[44]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[44]~feeder_combout\ = sig_rgb_leds_out(43)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(43),
	combout => \sig_rgb_leds_out[44]~feeder_combout\);

-- Location: FF_X51_Y4_N11
\sig_rgb_leds_out[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[44]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(44));

-- Location: LCCOMB_X51_Y4_N28
\rgb_leds[44]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[44]~reg0feeder_combout\ = sig_rgb_leds_out(44)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(44),
	combout => \rgb_leds[44]~reg0feeder_combout\);

-- Location: FF_X51_Y4_N29
\rgb_leds[44]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[44]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[44]~reg0_q\);

-- Location: LCCOMB_X51_Y4_N12
\sig_rgb_leds_out[45]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[45]~feeder_combout\ = sig_rgb_leds_out(44)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(44),
	combout => \sig_rgb_leds_out[45]~feeder_combout\);

-- Location: FF_X51_Y4_N13
\sig_rgb_leds_out[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[45]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(45));

-- Location: LCCOMB_X51_Y4_N22
\rgb_leds[45]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[45]~reg0feeder_combout\ = sig_rgb_leds_out(45)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(45),
	combout => \rgb_leds[45]~reg0feeder_combout\);

-- Location: FF_X51_Y4_N23
\rgb_leds[45]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[45]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[45]~reg0_q\);

-- Location: LCCOMB_X51_Y4_N30
\sig_rgb_leds_out[46]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[46]~feeder_combout\ = sig_rgb_leds_out(45)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(45),
	combout => \sig_rgb_leds_out[46]~feeder_combout\);

-- Location: FF_X51_Y4_N31
\sig_rgb_leds_out[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[46]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(46));

-- Location: FF_X51_Y4_N9
\rgb_leds[46]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(46),
	sload => VCC,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[46]~reg0_q\);

-- Location: FF_X51_Y4_N17
\sig_rgb_leds_out[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(46),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(47));

-- Location: LCCOMB_X51_Y4_N18
\rgb_leds[47]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[47]~reg0feeder_combout\ = sig_rgb_leds_out(47)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(47),
	combout => \rgb_leds[47]~reg0feeder_combout\);

-- Location: FF_X51_Y4_N19
\rgb_leds[47]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[47]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[47]~reg0_q\);

-- Location: LCCOMB_X51_Y4_N2
\sig_rgb_leds_out[48]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[48]~feeder_combout\ = sig_rgb_leds_out(47)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(47),
	combout => \sig_rgb_leds_out[48]~feeder_combout\);

-- Location: FF_X51_Y4_N3
\sig_rgb_leds_out[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[48]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(48));

-- Location: LCCOMB_X51_Y4_N4
\rgb_leds[48]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[48]~reg0feeder_combout\ = sig_rgb_leds_out(48)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(48),
	combout => \rgb_leds[48]~reg0feeder_combout\);

-- Location: FF_X51_Y4_N5
\rgb_leds[48]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[48]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[48]~reg0_q\);

-- Location: LCCOMB_X51_Y4_N20
\sig_rgb_leds_out[49]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[49]~feeder_combout\ = sig_rgb_leds_out(48)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(48),
	combout => \sig_rgb_leds_out[49]~feeder_combout\);

-- Location: FF_X51_Y4_N21
\sig_rgb_leds_out[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[49]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(49));

-- Location: LCCOMB_X51_Y4_N6
\rgb_leds[49]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[49]~reg0feeder_combout\ = sig_rgb_leds_out(49)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(49),
	combout => \rgb_leds[49]~reg0feeder_combout\);

-- Location: FF_X51_Y4_N7
\rgb_leds[49]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[49]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[49]~reg0_q\);

-- Location: LCCOMB_X51_Y4_N14
\sig_rgb_leds_out[50]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[50]~feeder_combout\ = sig_rgb_leds_out(49)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(49),
	combout => \sig_rgb_leds_out[50]~feeder_combout\);

-- Location: FF_X51_Y4_N15
\sig_rgb_leds_out[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[50]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(50));

-- Location: LCCOMB_X51_Y50_N0
\rgb_leds[50]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[50]~reg0feeder_combout\ = sig_rgb_leds_out(50)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sig_rgb_leds_out(50),
	combout => \rgb_leds[50]~reg0feeder_combout\);

-- Location: FF_X51_Y50_N1
\rgb_leds[50]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[50]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[50]~reg0_q\);

-- Location: LCCOMB_X51_Y50_N16
\sig_rgb_leds_out[51]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[51]~feeder_combout\ = sig_rgb_leds_out(50)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sig_rgb_leds_out(50),
	combout => \sig_rgb_leds_out[51]~feeder_combout\);

-- Location: FF_X51_Y50_N17
\sig_rgb_leds_out[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[51]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(51));

-- Location: LCCOMB_X51_Y50_N2
\rgb_leds[51]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[51]~reg0feeder_combout\ = sig_rgb_leds_out(51)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(51),
	combout => \rgb_leds[51]~reg0feeder_combout\);

-- Location: FF_X51_Y50_N3
\rgb_leds[51]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[51]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[51]~reg0_q\);

-- Location: LCCOMB_X51_Y50_N10
\sig_rgb_leds_out[52]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[52]~feeder_combout\ = sig_rgb_leds_out(51)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(51),
	combout => \sig_rgb_leds_out[52]~feeder_combout\);

-- Location: FF_X51_Y50_N11
\sig_rgb_leds_out[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[52]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(52));

-- Location: LCCOMB_X51_Y50_N12
\rgb_leds[52]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[52]~reg0feeder_combout\ = sig_rgb_leds_out(52)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(52),
	combout => \rgb_leds[52]~reg0feeder_combout\);

-- Location: FF_X51_Y50_N13
\rgb_leds[52]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[52]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[52]~reg0_q\);

-- Location: LCCOMB_X51_Y50_N20
\sig_rgb_leds_out[53]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[53]~feeder_combout\ = sig_rgb_leds_out(52)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(52),
	combout => \sig_rgb_leds_out[53]~feeder_combout\);

-- Location: FF_X51_Y50_N21
\sig_rgb_leds_out[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[53]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(53));

-- Location: LCCOMB_X51_Y50_N6
\rgb_leds[53]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[53]~reg0feeder_combout\ = sig_rgb_leds_out(53)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(53),
	combout => \rgb_leds[53]~reg0feeder_combout\);

-- Location: FF_X51_Y50_N7
\rgb_leds[53]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[53]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[53]~reg0_q\);

-- Location: LCCOMB_X51_Y50_N30
\sig_rgb_leds_out[54]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[54]~feeder_combout\ = sig_rgb_leds_out(53)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(53),
	combout => \sig_rgb_leds_out[54]~feeder_combout\);

-- Location: FF_X51_Y50_N31
\sig_rgb_leds_out[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[54]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(54));

-- Location: FF_X51_Y50_N9
\rgb_leds[54]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(54),
	sload => VCC,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[54]~reg0_q\);

-- Location: FF_X51_Y50_N25
\sig_rgb_leds_out[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(54),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(55));

-- Location: LCCOMB_X51_Y50_N26
\rgb_leds[55]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[55]~reg0feeder_combout\ = sig_rgb_leds_out(55)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(55),
	combout => \rgb_leds[55]~reg0feeder_combout\);

-- Location: FF_X51_Y50_N27
\rgb_leds[55]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[55]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[55]~reg0_q\);

-- Location: LCCOMB_X51_Y50_N18
\sig_rgb_leds_out[56]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[56]~feeder_combout\ = sig_rgb_leds_out(55)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(55),
	combout => \sig_rgb_leds_out[56]~feeder_combout\);

-- Location: FF_X51_Y50_N19
\sig_rgb_leds_out[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[56]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(56));

-- Location: LCCOMB_X51_Y50_N4
\rgb_leds[56]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[56]~reg0feeder_combout\ = sig_rgb_leds_out(56)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(56),
	combout => \rgb_leds[56]~reg0feeder_combout\);

-- Location: FF_X51_Y50_N5
\rgb_leds[56]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[56]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[56]~reg0_q\);

-- Location: LCCOMB_X51_Y50_N28
\sig_rgb_leds_out[57]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[57]~feeder_combout\ = sig_rgb_leds_out(56)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(56),
	combout => \sig_rgb_leds_out[57]~feeder_combout\);

-- Location: FF_X51_Y50_N29
\sig_rgb_leds_out[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[57]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(57));

-- Location: LCCOMB_X51_Y50_N22
\rgb_leds[57]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[57]~reg0feeder_combout\ = sig_rgb_leds_out(57)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(57),
	combout => \rgb_leds[57]~reg0feeder_combout\);

-- Location: FF_X51_Y50_N23
\rgb_leds[57]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[57]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[57]~reg0_q\);

-- Location: LCCOMB_X51_Y50_N14
\sig_rgb_leds_out[58]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[58]~feeder_combout\ = sig_rgb_leds_out(57)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(57),
	combout => \sig_rgb_leds_out[58]~feeder_combout\);

-- Location: FF_X51_Y50_N15
\sig_rgb_leds_out[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[58]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(58));

-- Location: LCCOMB_X55_Y50_N8
\rgb_leds[58]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[58]~reg0feeder_combout\ = sig_rgb_leds_out(58)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(58),
	combout => \rgb_leds[58]~reg0feeder_combout\);

-- Location: FF_X55_Y50_N9
\rgb_leds[58]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[58]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[58]~reg0_q\);

-- Location: LCCOMB_X55_Y50_N16
\sig_rgb_leds_out[59]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[59]~feeder_combout\ = sig_rgb_leds_out(58)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(58),
	combout => \sig_rgb_leds_out[59]~feeder_combout\);

-- Location: FF_X55_Y50_N17
\sig_rgb_leds_out[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[59]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(59));

-- Location: LCCOMB_X55_Y50_N2
\rgb_leds[59]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[59]~reg0feeder_combout\ = sig_rgb_leds_out(59)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(59),
	combout => \rgb_leds[59]~reg0feeder_combout\);

-- Location: FF_X55_Y50_N3
\rgb_leds[59]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[59]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[59]~reg0_q\);

-- Location: LCCOMB_X55_Y50_N10
\sig_rgb_leds_out[60]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[60]~feeder_combout\ = sig_rgb_leds_out(59)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(59),
	combout => \sig_rgb_leds_out[60]~feeder_combout\);

-- Location: FF_X55_Y50_N11
\sig_rgb_leds_out[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[60]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(60));

-- Location: LCCOMB_X55_Y50_N20
\rgb_leds[60]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[60]~reg0feeder_combout\ = sig_rgb_leds_out(60)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(60),
	combout => \rgb_leds[60]~reg0feeder_combout\);

-- Location: FF_X55_Y50_N21
\rgb_leds[60]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[60]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[60]~reg0_q\);

-- Location: LCCOMB_X55_Y50_N4
\sig_rgb_leds_out[61]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[61]~feeder_combout\ = sig_rgb_leds_out(60)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(60),
	combout => \sig_rgb_leds_out[61]~feeder_combout\);

-- Location: FF_X55_Y50_N5
\sig_rgb_leds_out[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[61]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(61));

-- Location: FF_X55_Y50_N7
\rgb_leds[61]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(61),
	sload => VCC,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[61]~reg0_q\);

-- Location: FF_X55_Y50_N31
\sig_rgb_leds_out[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(61),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(62));

-- Location: FF_X55_Y50_N1
\rgb_leds[62]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(62),
	sload => VCC,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[62]~reg0_q\);

-- Location: FF_X55_Y50_N25
\sig_rgb_leds_out[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(62),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(63));

-- Location: LCCOMB_X55_Y50_N26
\rgb_leds[63]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[63]~reg0feeder_combout\ = sig_rgb_leds_out(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(63),
	combout => \rgb_leds[63]~reg0feeder_combout\);

-- Location: FF_X55_Y50_N27
\rgb_leds[63]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[63]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[63]~reg0_q\);

-- Location: LCCOMB_X55_Y50_N18
\sig_rgb_leds_out[64]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[64]~feeder_combout\ = sig_rgb_leds_out(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(63),
	combout => \sig_rgb_leds_out[64]~feeder_combout\);

-- Location: FF_X55_Y50_N19
\sig_rgb_leds_out[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[64]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(64));

-- Location: LCCOMB_X55_Y50_N12
\rgb_leds[64]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[64]~reg0feeder_combout\ = sig_rgb_leds_out(64)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(64),
	combout => \rgb_leds[64]~reg0feeder_combout\);

-- Location: FF_X55_Y50_N13
\rgb_leds[64]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[64]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[64]~reg0_q\);

-- Location: LCCOMB_X55_Y50_N28
\sig_rgb_leds_out[65]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[65]~feeder_combout\ = sig_rgb_leds_out(64)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(64),
	combout => \sig_rgb_leds_out[65]~feeder_combout\);

-- Location: FF_X55_Y50_N29
\sig_rgb_leds_out[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[65]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(65));

-- Location: LCCOMB_X55_Y50_N14
\rgb_leds[65]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[65]~reg0feeder_combout\ = sig_rgb_leds_out(65)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(65),
	combout => \rgb_leds[65]~reg0feeder_combout\);

-- Location: FF_X55_Y50_N15
\rgb_leds[65]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[65]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[65]~reg0_q\);

-- Location: LCCOMB_X55_Y50_N22
\sig_rgb_leds_out[66]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[66]~feeder_combout\ = sig_rgb_leds_out(65)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(65),
	combout => \sig_rgb_leds_out[66]~feeder_combout\);

-- Location: FF_X55_Y50_N23
\sig_rgb_leds_out[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[66]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(66));

-- Location: LCCOMB_X54_Y50_N8
\rgb_leds[66]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[66]~reg0feeder_combout\ = sig_rgb_leds_out(66)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(66),
	combout => \rgb_leds[66]~reg0feeder_combout\);

-- Location: FF_X54_Y50_N9
\rgb_leds[66]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[66]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[66]~reg0_q\);

-- Location: LCCOMB_X54_Y50_N24
\sig_rgb_leds_out[67]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[67]~feeder_combout\ = sig_rgb_leds_out(66)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(66),
	combout => \sig_rgb_leds_out[67]~feeder_combout\);

-- Location: FF_X54_Y50_N25
\sig_rgb_leds_out[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[67]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(67));

-- Location: LCCOMB_X54_Y50_N10
\rgb_leds[67]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[67]~reg0feeder_combout\ = sig_rgb_leds_out(67)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(67),
	combout => \rgb_leds[67]~reg0feeder_combout\);

-- Location: FF_X54_Y50_N11
\rgb_leds[67]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[67]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[67]~reg0_q\);

-- Location: LCCOMB_X54_Y50_N26
\sig_rgb_leds_out[68]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[68]~feeder_combout\ = sig_rgb_leds_out(67)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(67),
	combout => \sig_rgb_leds_out[68]~feeder_combout\);

-- Location: FF_X54_Y50_N27
\sig_rgb_leds_out[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[68]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(68));

-- Location: FF_X54_Y50_N29
\rgb_leds[68]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(68),
	sload => VCC,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[68]~reg0_q\);

-- Location: FF_X54_Y50_N13
\sig_rgb_leds_out[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(68),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(69));

-- Location: LCCOMB_X54_Y50_N6
\rgb_leds[69]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[69]~reg0feeder_combout\ = sig_rgb_leds_out(69)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(69),
	combout => \rgb_leds[69]~reg0feeder_combout\);

-- Location: FF_X54_Y50_N7
\rgb_leds[69]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[69]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[69]~reg0_q\);

-- Location: LCCOMB_X54_Y50_N30
\sig_rgb_leds_out[70]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[70]~feeder_combout\ = sig_rgb_leds_out(69)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(69),
	combout => \sig_rgb_leds_out[70]~feeder_combout\);

-- Location: FF_X54_Y50_N31
\sig_rgb_leds_out[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[70]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(70));

-- Location: FF_X54_Y50_N1
\rgb_leds[70]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(70),
	sload => VCC,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[70]~reg0_q\);

-- Location: FF_X54_Y50_N17
\sig_rgb_leds_out[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(70),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(71));

-- Location: LCCOMB_X54_Y50_N2
\rgb_leds[71]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[71]~reg0feeder_combout\ = sig_rgb_leds_out(71)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(71),
	combout => \rgb_leds[71]~reg0feeder_combout\);

-- Location: FF_X54_Y50_N3
\rgb_leds[71]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[71]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[71]~reg0_q\);

-- Location: LCCOMB_X54_Y50_N18
\sig_rgb_leds_out[72]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[72]~feeder_combout\ = sig_rgb_leds_out(71)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(71),
	combout => \sig_rgb_leds_out[72]~feeder_combout\);

-- Location: FF_X54_Y50_N19
\sig_rgb_leds_out[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[72]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(72));

-- Location: LCCOMB_X54_Y50_N4
\rgb_leds[72]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[72]~reg0feeder_combout\ = sig_rgb_leds_out(72)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(72),
	combout => \rgb_leds[72]~reg0feeder_combout\);

-- Location: FF_X54_Y50_N5
\rgb_leds[72]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[72]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[72]~reg0_q\);

-- Location: LCCOMB_X54_Y50_N20
\sig_rgb_leds_out[73]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[73]~feeder_combout\ = sig_rgb_leds_out(72)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(72),
	combout => \sig_rgb_leds_out[73]~feeder_combout\);

-- Location: FF_X54_Y50_N21
\sig_rgb_leds_out[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[73]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(73));

-- Location: LCCOMB_X54_Y50_N14
\rgb_leds[73]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[73]~reg0feeder_combout\ = sig_rgb_leds_out(73)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(73),
	combout => \rgb_leds[73]~reg0feeder_combout\);

-- Location: FF_X54_Y50_N15
\rgb_leds[73]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[73]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[73]~reg0_q\);

-- Location: LCCOMB_X54_Y50_N22
\sig_rgb_leds_out[74]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[74]~feeder_combout\ = sig_rgb_leds_out(73)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(73),
	combout => \sig_rgb_leds_out[74]~feeder_combout\);

-- Location: FF_X54_Y50_N23
\sig_rgb_leds_out[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[74]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(74));

-- Location: LCCOMB_X77_Y35_N8
\rgb_leds[74]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[74]~reg0feeder_combout\ = sig_rgb_leds_out(74)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(74),
	combout => \rgb_leds[74]~reg0feeder_combout\);

-- Location: FF_X77_Y35_N9
\rgb_leds[74]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[74]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[74]~reg0_q\);

-- Location: LCCOMB_X77_Y35_N16
\sig_rgb_leds_out[75]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[75]~feeder_combout\ = sig_rgb_leds_out(74)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(74),
	combout => \sig_rgb_leds_out[75]~feeder_combout\);

-- Location: FF_X77_Y35_N17
\sig_rgb_leds_out[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[75]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(75));

-- Location: LCCOMB_X77_Y35_N2
\rgb_leds[75]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[75]~reg0feeder_combout\ = sig_rgb_leds_out(75)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(75),
	combout => \rgb_leds[75]~reg0feeder_combout\);

-- Location: FF_X77_Y35_N3
\rgb_leds[75]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[75]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[75]~reg0_q\);

-- Location: LCCOMB_X77_Y35_N18
\sig_rgb_leds_out[76]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[76]~feeder_combout\ = sig_rgb_leds_out(75)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(75),
	combout => \sig_rgb_leds_out[76]~feeder_combout\);

-- Location: FF_X77_Y35_N19
\sig_rgb_leds_out[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[76]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(76));

-- Location: LCCOMB_X77_Y35_N20
\rgb_leds[76]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[76]~reg0feeder_combout\ = sig_rgb_leds_out(76)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(76),
	combout => \rgb_leds[76]~reg0feeder_combout\);

-- Location: FF_X77_Y35_N21
\rgb_leds[76]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[76]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[76]~reg0_q\);

-- Location: LCCOMB_X77_Y35_N12
\sig_rgb_leds_out[77]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[77]~feeder_combout\ = sig_rgb_leds_out(76)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(76),
	combout => \sig_rgb_leds_out[77]~feeder_combout\);

-- Location: FF_X77_Y35_N13
\sig_rgb_leds_out[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[77]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(77));

-- Location: LCCOMB_X77_Y35_N30
\rgb_leds[77]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[77]~reg0feeder_combout\ = sig_rgb_leds_out(77)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(77),
	combout => \rgb_leds[77]~reg0feeder_combout\);

-- Location: FF_X77_Y35_N31
\rgb_leds[77]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[77]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[77]~reg0_q\);

-- Location: LCCOMB_X77_Y35_N22
\sig_rgb_leds_out[78]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[78]~feeder_combout\ = sig_rgb_leds_out(77)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(77),
	combout => \sig_rgb_leds_out[78]~feeder_combout\);

-- Location: FF_X77_Y35_N23
\sig_rgb_leds_out[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[78]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(78));

-- Location: FF_X77_Y35_N1
\rgb_leds[78]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(78),
	sload => VCC,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[78]~reg0_q\);

-- Location: FF_X77_Y35_N25
\sig_rgb_leds_out[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(78),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(79));

-- Location: LCCOMB_X77_Y35_N26
\rgb_leds[79]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[79]~reg0feeder_combout\ = sig_rgb_leds_out(79)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(79),
	combout => \rgb_leds[79]~reg0feeder_combout\);

-- Location: FF_X77_Y35_N27
\rgb_leds[79]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[79]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[79]~reg0_q\);

-- Location: LCCOMB_X77_Y35_N10
\sig_rgb_leds_out[80]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[80]~feeder_combout\ = sig_rgb_leds_out(79)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(79),
	combout => \sig_rgb_leds_out[80]~feeder_combout\);

-- Location: FF_X77_Y35_N11
\sig_rgb_leds_out[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[80]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(80));

-- Location: LCCOMB_X77_Y35_N4
\rgb_leds[80]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[80]~reg0feeder_combout\ = sig_rgb_leds_out(80)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(80),
	combout => \rgb_leds[80]~reg0feeder_combout\);

-- Location: FF_X77_Y35_N5
\rgb_leds[80]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[80]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[80]~reg0_q\);

-- Location: LCCOMB_X77_Y35_N28
\sig_rgb_leds_out[81]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[81]~feeder_combout\ = sig_rgb_leds_out(80)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(80),
	combout => \sig_rgb_leds_out[81]~feeder_combout\);

-- Location: FF_X77_Y35_N29
\sig_rgb_leds_out[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[81]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(81));

-- Location: LCCOMB_X77_Y35_N14
\rgb_leds[81]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[81]~reg0feeder_combout\ = sig_rgb_leds_out(81)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(81),
	combout => \rgb_leds[81]~reg0feeder_combout\);

-- Location: FF_X77_Y35_N15
\rgb_leds[81]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[81]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[81]~reg0_q\);

-- Location: LCCOMB_X77_Y35_N6
\sig_rgb_leds_out[82]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[82]~feeder_combout\ = sig_rgb_leds_out(81)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(81),
	combout => \sig_rgb_leds_out[82]~feeder_combout\);

-- Location: FF_X77_Y35_N7
\sig_rgb_leds_out[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[82]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(82));

-- Location: LCCOMB_X27_Y35_N8
\rgb_leds[82]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[82]~reg0feeder_combout\ = sig_rgb_leds_out(82)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sig_rgb_leds_out(82),
	combout => \rgb_leds[82]~reg0feeder_combout\);

-- Location: FF_X27_Y35_N9
\rgb_leds[82]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[82]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[82]~reg0_q\);

-- Location: LCCOMB_X27_Y35_N16
\sig_rgb_leds_out[83]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[83]~feeder_combout\ = sig_rgb_leds_out(82)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sig_rgb_leds_out(82),
	combout => \sig_rgb_leds_out[83]~feeder_combout\);

-- Location: FF_X27_Y35_N17
\sig_rgb_leds_out[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[83]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(83));

-- Location: LCCOMB_X27_Y35_N2
\rgb_leds[83]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[83]~reg0feeder_combout\ = sig_rgb_leds_out(83)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(83),
	combout => \rgb_leds[83]~reg0feeder_combout\);

-- Location: FF_X27_Y35_N3
\rgb_leds[83]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[83]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[83]~reg0_q\);

-- Location: LCCOMB_X27_Y35_N10
\sig_rgb_leds_out[84]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[84]~feeder_combout\ = sig_rgb_leds_out(83)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(83),
	combout => \sig_rgb_leds_out[84]~feeder_combout\);

-- Location: FF_X27_Y35_N11
\sig_rgb_leds_out[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[84]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(84));

-- Location: LCCOMB_X27_Y35_N4
\rgb_leds[84]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[84]~reg0feeder_combout\ = sig_rgb_leds_out(84)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(84),
	combout => \rgb_leds[84]~reg0feeder_combout\);

-- Location: FF_X27_Y35_N5
\rgb_leds[84]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[84]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[84]~reg0_q\);

-- Location: LCCOMB_X27_Y35_N28
\sig_rgb_leds_out[85]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[85]~feeder_combout\ = sig_rgb_leds_out(84)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(84),
	combout => \sig_rgb_leds_out[85]~feeder_combout\);

-- Location: FF_X27_Y35_N29
\sig_rgb_leds_out[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[85]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(85));

-- Location: LCCOMB_X27_Y35_N14
\rgb_leds[85]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[85]~reg0feeder_combout\ = sig_rgb_leds_out(85)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(85),
	combout => \rgb_leds[85]~reg0feeder_combout\);

-- Location: FF_X27_Y35_N15
\rgb_leds[85]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[85]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[85]~reg0_q\);

-- Location: LCCOMB_X27_Y35_N30
\sig_rgb_leds_out[86]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[86]~feeder_combout\ = sig_rgb_leds_out(85)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(85),
	combout => \sig_rgb_leds_out[86]~feeder_combout\);

-- Location: FF_X27_Y35_N31
\sig_rgb_leds_out[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[86]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(86));

-- Location: FF_X27_Y35_N1
\rgb_leds[86]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(86),
	sload => VCC,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[86]~reg0_q\);

-- Location: FF_X27_Y35_N25
\sig_rgb_leds_out[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(86),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(87));

-- Location: LCCOMB_X27_Y35_N26
\rgb_leds[87]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[87]~reg0feeder_combout\ = sig_rgb_leds_out(87)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(87),
	combout => \rgb_leds[87]~reg0feeder_combout\);

-- Location: FF_X27_Y35_N27
\rgb_leds[87]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[87]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[87]~reg0_q\);

-- Location: LCCOMB_X27_Y35_N18
\sig_rgb_leds_out[88]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[88]~feeder_combout\ = sig_rgb_leds_out(87)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(87),
	combout => \sig_rgb_leds_out[88]~feeder_combout\);

-- Location: FF_X27_Y35_N19
\sig_rgb_leds_out[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[88]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(88));

-- Location: LCCOMB_X27_Y35_N12
\rgb_leds[88]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[88]~reg0feeder_combout\ = sig_rgb_leds_out(88)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(88),
	combout => \rgb_leds[88]~reg0feeder_combout\);

-- Location: FF_X27_Y35_N13
\rgb_leds[88]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[88]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[88]~reg0_q\);

-- Location: LCCOMB_X27_Y35_N20
\sig_rgb_leds_out[89]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[89]~feeder_combout\ = sig_rgb_leds_out(88)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(88),
	combout => \sig_rgb_leds_out[89]~feeder_combout\);

-- Location: FF_X27_Y35_N21
\sig_rgb_leds_out[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[89]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(89));

-- Location: LCCOMB_X27_Y35_N22
\rgb_leds[89]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[89]~reg0feeder_combout\ = sig_rgb_leds_out(89)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(89),
	combout => \rgb_leds[89]~reg0feeder_combout\);

-- Location: FF_X27_Y35_N23
\rgb_leds[89]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[89]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[89]~reg0_q\);

-- Location: LCCOMB_X27_Y35_N6
\sig_rgb_leds_out[90]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[90]~feeder_combout\ = sig_rgb_leds_out(89)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(89),
	combout => \sig_rgb_leds_out[90]~feeder_combout\);

-- Location: FF_X27_Y35_N7
\sig_rgb_leds_out[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[90]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(90));

-- Location: FF_X34_Y35_N21
\rgb_leds[90]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(90),
	sload => VCC,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[90]~reg0_q\);

-- Location: FF_X34_Y35_N23
\sig_rgb_leds_out[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(90),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(91));

-- Location: FF_X34_Y35_N15
\rgb_leds[91]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(91),
	sload => VCC,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[91]~reg0_q\);

-- Location: FF_X34_Y35_N17
\sig_rgb_leds_out[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(91),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(92));

-- Location: LCCOMB_X34_Y35_N0
\rgb_leds[92]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[92]~reg0feeder_combout\ = sig_rgb_leds_out(92)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(92),
	combout => \rgb_leds[92]~reg0feeder_combout\);

-- Location: FF_X34_Y35_N1
\rgb_leds[92]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[92]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[92]~reg0_q\);

-- Location: LCCOMB_X34_Y35_N18
\sig_rgb_leds_out[93]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[93]~feeder_combout\ = sig_rgb_leds_out(92)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(92),
	combout => \sig_rgb_leds_out[93]~feeder_combout\);

-- Location: FF_X34_Y35_N19
\sig_rgb_leds_out[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[93]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(93));

-- Location: LCCOMB_X34_Y35_N10
\rgb_leds[93]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[93]~reg0feeder_combout\ = sig_rgb_leds_out(93)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(93),
	combout => \rgb_leds[93]~reg0feeder_combout\);

-- Location: FF_X34_Y35_N11
\rgb_leds[93]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[93]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[93]~reg0_q\);

-- Location: LCCOMB_X34_Y35_N28
\sig_rgb_leds_out[94]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[94]~feeder_combout\ = sig_rgb_leds_out(93)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(93),
	combout => \sig_rgb_leds_out[94]~feeder_combout\);

-- Location: FF_X34_Y35_N29
\sig_rgb_leds_out[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[94]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(94));

-- Location: LCCOMB_X34_Y35_N4
\rgb_leds[94]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_leds[94]~reg0feeder_combout\ = sig_rgb_leds_out(94)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(94),
	combout => \rgb_leds[94]~reg0feeder_combout\);

-- Location: FF_X34_Y35_N5
\rgb_leds[94]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rgb_leds[94]~reg0feeder_combout\,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[94]~reg0_q\);

-- Location: LCCOMB_X34_Y35_N30
\sig_rgb_leds_out[95]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rgb_leds_out[95]~feeder_combout\ = sig_rgb_leds_out(94)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rgb_leds_out(94),
	combout => \sig_rgb_leds_out[95]~feeder_combout\);

-- Location: FF_X34_Y35_N31
\sig_rgb_leds_out[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rgb_leds_out[95]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rgb_leds_out(95));

-- Location: FF_X34_Y35_N7
\rgb_leds[95]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rgb_leds_out(95),
	sload => VCC,
	ena => \green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_leds[95]~reg0_q\);

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

ww_load_leds <= \load_leds~output_o\;

ww_green_leds(0) <= \green_leds[0]~output_o\;

ww_green_leds(1) <= \green_leds[1]~output_o\;

ww_green_leds(2) <= \green_leds[2]~output_o\;

ww_green_leds(3) <= \green_leds[3]~output_o\;

ww_green_leds(4) <= \green_leds[4]~output_o\;

ww_green_leds(5) <= \green_leds[5]~output_o\;

ww_green_leds(6) <= \green_leds[6]~output_o\;

ww_green_leds(7) <= \green_leds[7]~output_o\;

ww_rgb_leds(0) <= \rgb_leds[0]~output_o\;

ww_rgb_leds(1) <= \rgb_leds[1]~output_o\;

ww_rgb_leds(2) <= \rgb_leds[2]~output_o\;

ww_rgb_leds(3) <= \rgb_leds[3]~output_o\;

ww_rgb_leds(4) <= \rgb_leds[4]~output_o\;

ww_rgb_leds(5) <= \rgb_leds[5]~output_o\;

ww_rgb_leds(6) <= \rgb_leds[6]~output_o\;

ww_rgb_leds(7) <= \rgb_leds[7]~output_o\;

ww_rgb_leds(8) <= \rgb_leds[8]~output_o\;

ww_rgb_leds(9) <= \rgb_leds[9]~output_o\;

ww_rgb_leds(10) <= \rgb_leds[10]~output_o\;

ww_rgb_leds(11) <= \rgb_leds[11]~output_o\;

ww_rgb_leds(12) <= \rgb_leds[12]~output_o\;

ww_rgb_leds(13) <= \rgb_leds[13]~output_o\;

ww_rgb_leds(14) <= \rgb_leds[14]~output_o\;

ww_rgb_leds(15) <= \rgb_leds[15]~output_o\;

ww_rgb_leds(16) <= \rgb_leds[16]~output_o\;

ww_rgb_leds(17) <= \rgb_leds[17]~output_o\;

ww_rgb_leds(18) <= \rgb_leds[18]~output_o\;

ww_rgb_leds(19) <= \rgb_leds[19]~output_o\;

ww_rgb_leds(20) <= \rgb_leds[20]~output_o\;

ww_rgb_leds(21) <= \rgb_leds[21]~output_o\;

ww_rgb_leds(22) <= \rgb_leds[22]~output_o\;

ww_rgb_leds(23) <= \rgb_leds[23]~output_o\;

ww_rgb_leds(24) <= \rgb_leds[24]~output_o\;

ww_rgb_leds(25) <= \rgb_leds[25]~output_o\;

ww_rgb_leds(26) <= \rgb_leds[26]~output_o\;

ww_rgb_leds(27) <= \rgb_leds[27]~output_o\;

ww_rgb_leds(28) <= \rgb_leds[28]~output_o\;

ww_rgb_leds(29) <= \rgb_leds[29]~output_o\;

ww_rgb_leds(30) <= \rgb_leds[30]~output_o\;

ww_rgb_leds(31) <= \rgb_leds[31]~output_o\;

ww_rgb_leds(32) <= \rgb_leds[32]~output_o\;

ww_rgb_leds(33) <= \rgb_leds[33]~output_o\;

ww_rgb_leds(34) <= \rgb_leds[34]~output_o\;

ww_rgb_leds(35) <= \rgb_leds[35]~output_o\;

ww_rgb_leds(36) <= \rgb_leds[36]~output_o\;

ww_rgb_leds(37) <= \rgb_leds[37]~output_o\;

ww_rgb_leds(38) <= \rgb_leds[38]~output_o\;

ww_rgb_leds(39) <= \rgb_leds[39]~output_o\;

ww_rgb_leds(40) <= \rgb_leds[40]~output_o\;

ww_rgb_leds(41) <= \rgb_leds[41]~output_o\;

ww_rgb_leds(42) <= \rgb_leds[42]~output_o\;

ww_rgb_leds(43) <= \rgb_leds[43]~output_o\;

ww_rgb_leds(44) <= \rgb_leds[44]~output_o\;

ww_rgb_leds(45) <= \rgb_leds[45]~output_o\;

ww_rgb_leds(46) <= \rgb_leds[46]~output_o\;

ww_rgb_leds(47) <= \rgb_leds[47]~output_o\;

ww_rgb_leds(48) <= \rgb_leds[48]~output_o\;

ww_rgb_leds(49) <= \rgb_leds[49]~output_o\;

ww_rgb_leds(50) <= \rgb_leds[50]~output_o\;

ww_rgb_leds(51) <= \rgb_leds[51]~output_o\;

ww_rgb_leds(52) <= \rgb_leds[52]~output_o\;

ww_rgb_leds(53) <= \rgb_leds[53]~output_o\;

ww_rgb_leds(54) <= \rgb_leds[54]~output_o\;

ww_rgb_leds(55) <= \rgb_leds[55]~output_o\;

ww_rgb_leds(56) <= \rgb_leds[56]~output_o\;

ww_rgb_leds(57) <= \rgb_leds[57]~output_o\;

ww_rgb_leds(58) <= \rgb_leds[58]~output_o\;

ww_rgb_leds(59) <= \rgb_leds[59]~output_o\;

ww_rgb_leds(60) <= \rgb_leds[60]~output_o\;

ww_rgb_leds(61) <= \rgb_leds[61]~output_o\;

ww_rgb_leds(62) <= \rgb_leds[62]~output_o\;

ww_rgb_leds(63) <= \rgb_leds[63]~output_o\;

ww_rgb_leds(64) <= \rgb_leds[64]~output_o\;

ww_rgb_leds(65) <= \rgb_leds[65]~output_o\;

ww_rgb_leds(66) <= \rgb_leds[66]~output_o\;

ww_rgb_leds(67) <= \rgb_leds[67]~output_o\;

ww_rgb_leds(68) <= \rgb_leds[68]~output_o\;

ww_rgb_leds(69) <= \rgb_leds[69]~output_o\;

ww_rgb_leds(70) <= \rgb_leds[70]~output_o\;

ww_rgb_leds(71) <= \rgb_leds[71]~output_o\;

ww_rgb_leds(72) <= \rgb_leds[72]~output_o\;

ww_rgb_leds(73) <= \rgb_leds[73]~output_o\;

ww_rgb_leds(74) <= \rgb_leds[74]~output_o\;

ww_rgb_leds(75) <= \rgb_leds[75]~output_o\;

ww_rgb_leds(76) <= \rgb_leds[76]~output_o\;

ww_rgb_leds(77) <= \rgb_leds[77]~output_o\;

ww_rgb_leds(78) <= \rgb_leds[78]~output_o\;

ww_rgb_leds(79) <= \rgb_leds[79]~output_o\;

ww_rgb_leds(80) <= \rgb_leds[80]~output_o\;

ww_rgb_leds(81) <= \rgb_leds[81]~output_o\;

ww_rgb_leds(82) <= \rgb_leds[82]~output_o\;

ww_rgb_leds(83) <= \rgb_leds[83]~output_o\;

ww_rgb_leds(84) <= \rgb_leds[84]~output_o\;

ww_rgb_leds(85) <= \rgb_leds[85]~output_o\;

ww_rgb_leds(86) <= \rgb_leds[86]~output_o\;

ww_rgb_leds(87) <= \rgb_leds[87]~output_o\;

ww_rgb_leds(88) <= \rgb_leds[88]~output_o\;

ww_rgb_leds(89) <= \rgb_leds[89]~output_o\;

ww_rgb_leds(90) <= \rgb_leds[90]~output_o\;

ww_rgb_leds(91) <= \rgb_leds[91]~output_o\;

ww_rgb_leds(92) <= \rgb_leds[92]~output_o\;

ww_rgb_leds(93) <= \rgb_leds[93]~output_o\;

ww_rgb_leds(94) <= \rgb_leds[94]~output_o\;

ww_rgb_leds(95) <= \rgb_leds[95]~output_o\;
END structure;


