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

-- DATE "07/10/2024 11:38:45"

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

ENTITY 	Test_CRC_DO IS
    PORT (
	resetn : IN std_logic;
	sysclk : IN std_logic;
	nrzl_data : BUFFER std_logic;
	crc_reg8bit_out : BUFFER std_logic_vector(7 DOWNTO 0);
	load_leds : BUFFER std_logic;
	green_leds : BUFFER std_logic_vector(7 DOWNTO 0);
	rgb_leds : BUFFER std_logic_vector(95 DOWNTO 0);
	main_clk : BUFFER std_logic;
	crc8bit_out : BUFFER std_logic;
	correlation : BUFFER std_logic_vector(4 DOWNTO 0)
	);
END Test_CRC_DO;

-- Design Ports Information
-- nrzl_data	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc_reg8bit_out[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc_reg8bit_out[1]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc_reg8bit_out[2]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc_reg8bit_out[3]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc_reg8bit_out[4]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc_reg8bit_out[5]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc_reg8bit_out[6]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc_reg8bit_out[7]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_leds	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_leds[0]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_leds[1]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_leds[2]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_leds[3]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_leds[4]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_leds[5]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_leds[6]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_leds[7]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[0]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[1]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[3]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[4]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[5]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[6]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[7]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[8]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[9]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[10]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[11]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[12]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[13]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[14]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[15]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[16]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[17]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[18]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[19]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[20]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[21]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[22]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[23]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[24]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[25]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[26]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[27]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[28]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[29]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[30]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[31]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[32]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[33]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[34]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[35]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[36]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[37]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[38]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[39]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[40]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[41]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[42]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[43]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[44]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[45]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[46]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[47]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[48]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[49]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[50]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[51]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[52]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[53]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[54]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[55]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[56]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[57]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[58]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[59]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[60]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[61]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[62]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[63]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[64]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[65]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[66]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[67]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[68]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[69]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[70]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[71]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[72]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[73]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[74]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[75]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[76]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[77]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[78]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[79]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[80]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[81]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[82]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[83]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[84]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[85]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[86]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[87]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[88]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[89]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[90]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[91]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[92]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[93]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[94]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[95]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- main_clk	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc8bit_out	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- correlation[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- correlation[1]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- correlation[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- correlation[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- correlation[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sysclk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Test_CRC_DO IS
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
SIGNAL ww_nrzl_data : std_logic;
SIGNAL ww_crc_reg8bit_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_load_leds : std_logic;
SIGNAL ww_green_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rgb_leds : std_logic_vector(95 DOWNTO 0);
SIGNAL ww_main_clk : std_logic;
SIGNAL ww_crc8bit_out : std_logic;
SIGNAL ww_correlation : std_logic_vector(4 DOWNTO 0);
SIGNAL \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \resetn~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sysclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \nrzl_data~output_o\ : std_logic;
SIGNAL \crc_reg8bit_out[0]~output_o\ : std_logic;
SIGNAL \crc_reg8bit_out[1]~output_o\ : std_logic;
SIGNAL \crc_reg8bit_out[2]~output_o\ : std_logic;
SIGNAL \crc_reg8bit_out[3]~output_o\ : std_logic;
SIGNAL \crc_reg8bit_out[4]~output_o\ : std_logic;
SIGNAL \crc_reg8bit_out[5]~output_o\ : std_logic;
SIGNAL \crc_reg8bit_out[6]~output_o\ : std_logic;
SIGNAL \crc_reg8bit_out[7]~output_o\ : std_logic;
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
SIGNAL \main_clk~output_o\ : std_logic;
SIGNAL \crc8bit_out~output_o\ : std_logic;
SIGNAL \correlation[0]~output_o\ : std_logic;
SIGNAL \correlation[1]~output_o\ : std_logic;
SIGNAL \correlation[2]~output_o\ : std_logic;
SIGNAL \correlation[3]~output_o\ : std_logic;
SIGNAL \correlation[4]~output_o\ : std_logic;
SIGNAL \sysclk~input_o\ : std_logic;
SIGNAL \sysclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \state_t.s0a~feeder_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \resetn~inputclkctrl_outclk\ : std_logic;
SIGNAL \sig_main[0]~18_combout\ : std_logic;
SIGNAL \sig_main[1]~6_combout\ : std_logic;
SIGNAL \sig_main[1]~7\ : std_logic;
SIGNAL \sig_main[2]~8_combout\ : std_logic;
SIGNAL \sig_main[2]~9\ : std_logic;
SIGNAL \sig_main[3]~10_combout\ : std_logic;
SIGNAL \sig_main[3]~11\ : std_logic;
SIGNAL \sig_main[4]~12_combout\ : std_logic;
SIGNAL \sig_main[4]~13\ : std_logic;
SIGNAL \sig_main[5]~14_combout\ : std_logic;
SIGNAL \sig_main[5]~15\ : std_logic;
SIGNAL \sig_main[6]~16_combout\ : std_logic;
SIGNAL \sig_cut~q\ : std_logic;
SIGNAL \sig_cut_not~q\ : std_logic;
SIGNAL \sig_main_rising_edge~combout\ : std_logic;
SIGNAL \state_t.s0a~q\ : std_logic;
SIGNAL \sig_rom_sf~11_combout\ : std_logic;
SIGNAL \state_t.s0~q\ : std_logic;
SIGNAL \state_t.s1~q\ : std_logic;
SIGNAL \state_t.s2~feeder_combout\ : std_logic;
SIGNAL \state_t.s2~q\ : std_logic;
SIGNAL \state_t.s3~feeder_combout\ : std_logic;
SIGNAL \state_t.s3~q\ : std_logic;
SIGNAL \state_t.s4~q\ : std_logic;
SIGNAL \state_t.s5~feeder_combout\ : std_logic;
SIGNAL \state_t.s5~q\ : std_logic;
SIGNAL \state_t.s6~q\ : std_logic;
SIGNAL \state_t.s7~q\ : std_logic;
SIGNAL \sig_address[0]~5_combout\ : std_logic;
SIGNAL \sig_address[1]~6_combout\ : std_logic;
SIGNAL \sig_address[0]~8_combout\ : std_logic;
SIGNAL \sig_address[1]~7\ : std_logic;
SIGNAL \sig_address[2]~9_combout\ : std_logic;
SIGNAL \sig_address[2]~10\ : std_logic;
SIGNAL \sig_address[3]~11_combout\ : std_logic;
SIGNAL \sig_address[3]~12\ : std_logic;
SIGNAL \sig_address[4]~13_combout\ : std_logic;
SIGNAL \sig_rom_sf~10_combout\ : std_logic;
SIGNAL \sig_rom_sf[7]~3_combout\ : std_logic;
SIGNAL \sig_rom_sf~9_combout\ : std_logic;
SIGNAL \sig_rom_sf~8_combout\ : std_logic;
SIGNAL \sig_rom_sf~7_combout\ : std_logic;
SIGNAL \sig_rom_sf~6_combout\ : std_logic;
SIGNAL \sig_rom_sf~5_combout\ : std_logic;
SIGNAL \sig_rom_sf~4_combout\ : std_logic;
SIGNAL \sig_rom_sf~2_combout\ : std_logic;
SIGNAL \crc|crc8bit_operation:cnt[5]~q\ : std_logic;
SIGNAL \crc|Add1~0_combout\ : std_logic;
SIGNAL \crc|crc8bit_operation:cnt[0]~q\ : std_logic;
SIGNAL \crc|Add1~1\ : std_logic;
SIGNAL \crc|Add1~3\ : std_logic;
SIGNAL \crc|Add1~4_combout\ : std_logic;
SIGNAL \crc|crc8bit_operation:cnt[2]~q\ : std_logic;
SIGNAL \crc|Add1~5\ : std_logic;
SIGNAL \crc|Add1~6_combout\ : std_logic;
SIGNAL \crc|cnt~0_combout\ : std_logic;
SIGNAL \crc|crc8bit_operation:cnt[3]~q\ : std_logic;
SIGNAL \crc|Add1~7\ : std_logic;
SIGNAL \crc|Add1~8_combout\ : std_logic;
SIGNAL \crc|cnt~1_combout\ : std_logic;
SIGNAL \crc|crc8bit_operation:cnt[4]~q\ : std_logic;
SIGNAL \crc|Add1~9\ : std_logic;
SIGNAL \crc|Add1~10_combout\ : std_logic;
SIGNAL \crc|cnt~2_combout\ : std_logic;
SIGNAL \crc|crc8bit_operation:cnt[6]~q\ : std_logic;
SIGNAL \crc|Add1~11\ : std_logic;
SIGNAL \crc|Add1~12_combout\ : std_logic;
SIGNAL \crc|cnt~3_combout\ : std_logic;
SIGNAL \crc|crc8bit_operation:cnt[7]~q\ : std_logic;
SIGNAL \crc|Add1~13\ : std_logic;
SIGNAL \crc|Add1~14_combout\ : std_logic;
SIGNAL \crc|Equal0~1_combout\ : std_logic;
SIGNAL \crc|sig_correlation[0]~5_combout\ : std_logic;
SIGNAL \crc|flag~0_combout\ : std_logic;
SIGNAL \crc|flag~q\ : std_logic;
SIGNAL \crc|state_xor~70_combout\ : std_logic;
SIGNAL \crc|state_xor.s1~q\ : std_logic;
SIGNAL \crc|state_xor.s2~q\ : std_logic;
SIGNAL \crc|state_xor.s3~feeder_combout\ : std_logic;
SIGNAL \crc|state_xor.s3~q\ : std_logic;
SIGNAL \crc|state_xor.s4~feeder_combout\ : std_logic;
SIGNAL \crc|state_xor.s4~q\ : std_logic;
SIGNAL \crc|state_xor.s5~q\ : std_logic;
SIGNAL \crc|state_xor.s6~q\ : std_logic;
SIGNAL \crc|state_xor.s7~feeder_combout\ : std_logic;
SIGNAL \crc|state_xor.s7~q\ : std_logic;
SIGNAL \crc|state_xor.s8~feeder_combout\ : std_logic;
SIGNAL \crc|state_xor.s8~q\ : std_logic;
SIGNAL \crc|state_xor.s9~feeder_combout\ : std_logic;
SIGNAL \crc|state_xor.s9~q\ : std_logic;
SIGNAL \crc|state_xor.s10~feeder_combout\ : std_logic;
SIGNAL \crc|state_xor.s10~q\ : std_logic;
SIGNAL \crc|state_xor.s11~feeder_combout\ : std_logic;
SIGNAL \crc|state_xor.s11~q\ : std_logic;
SIGNAL \crc|state_xor.s12~q\ : std_logic;
SIGNAL \crc|state_xor.s13~feeder_combout\ : std_logic;
SIGNAL \crc|state_xor.s13~q\ : std_logic;
SIGNAL \crc|state_xor.s14~q\ : std_logic;
SIGNAL \crc|state_xor.s15~q\ : std_logic;
SIGNAL \crc|state_xor.s16~feeder_combout\ : std_logic;
SIGNAL \crc|state_xor.s16~q\ : std_logic;
SIGNAL \crc|state_xor.s17~q\ : std_logic;
SIGNAL \crc|state_xor.s18~q\ : std_logic;
SIGNAL \crc|state_xor.s19~q\ : std_logic;
SIGNAL \crc|state_xor.s20~q\ : std_logic;
SIGNAL \crc|state_xor.s21~feeder_combout\ : std_logic;
SIGNAL \crc|state_xor.s21~q\ : std_logic;
SIGNAL \crc|state_xor.s22~q\ : std_logic;
SIGNAL \crc|state_xor.s23~q\ : std_logic;
SIGNAL \crc|state_xor.s24~q\ : std_logic;
SIGNAL \crc|state_xor.s25~q\ : std_logic;
SIGNAL \crc|state_xor.s26~q\ : std_logic;
SIGNAL \crc|state_xor.s27~q\ : std_logic;
SIGNAL \crc|state_xor.s28~q\ : std_logic;
SIGNAL \crc|state_xor.s29~q\ : std_logic;
SIGNAL \crc|state_xor.s30~q\ : std_logic;
SIGNAL \crc|state_xor.s31~feeder_combout\ : std_logic;
SIGNAL \crc|state_xor.s31~q\ : std_logic;
SIGNAL \crc|state_xor.s32~feeder_combout\ : std_logic;
SIGNAL \crc|state_xor.s32~q\ : std_logic;
SIGNAL \crc|Selector0~0_combout\ : std_logic;
SIGNAL \crc|state_xor.s0~q\ : std_logic;
SIGNAL \crc|sig_main_clk_f~0_combout\ : std_logic;
SIGNAL \crc|sig_sf_reg[1]~feeder_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~45_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~7_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~43_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~13_combout\ : std_logic;
SIGNAL \crc|sig_sf_reg[8]~feeder_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~10_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~11_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~12_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~32_combout\ : std_logic;
SIGNAL \crc|sig_sf_reg[15]~feeder_combout\ : std_logic;
SIGNAL \crc|sig_sf_reg[18]~feeder_combout\ : std_logic;
SIGNAL \crc|sig_sf_reg[21]~feeder_combout\ : std_logic;
SIGNAL \crc|sig_sf_reg[22]~feeder_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~33_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~24_combout\ : std_logic;
SIGNAL \crc|sig_sf_reg[24]~feeder_combout\ : std_logic;
SIGNAL \crc|sig_sf_reg[27]~feeder_combout\ : std_logic;
SIGNAL \crc|sig_sf_reg[29]~feeder_combout\ : std_logic;
SIGNAL \crc|sig_sf_reg[30]~feeder_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~28_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~27_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~29_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~26_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~30_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~25_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~31_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~34_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~18_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~17_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~19_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~20_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~21_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~22_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~23_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~15_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~16_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~35_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~37_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~38_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~36_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~14_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~39_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~40_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~41_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~42_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~8_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~9_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~44_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~46_combout\ : std_logic;
SIGNAL \crc|sig_correlation[3]~47_combout\ : std_logic;
SIGNAL \crc|sig_correlation[0]~6\ : std_logic;
SIGNAL \crc|sig_correlation[1]~48_combout\ : std_logic;
SIGNAL \crc|sig_correlation[1]~49\ : std_logic;
SIGNAL \crc|sig_correlation[2]~50_combout\ : std_logic;
SIGNAL \crc|sig_correlation[2]~51\ : std_logic;
SIGNAL \crc|sig_correlation[3]~52_combout\ : std_logic;
SIGNAL \og|LessThan0~0_combout\ : std_logic;
SIGNAL \crc|state_crc.s4~feeder_combout\ : std_logic;
SIGNAL \crc|state_crc.s4~q\ : std_logic;
SIGNAL \crc|sig_correlation[3]~53\ : std_logic;
SIGNAL \crc|sig_correlation[4]~54_combout\ : std_logic;
SIGNAL \crc|Selector37~0_combout\ : std_logic;
SIGNAL \crc|state_crc.s0~q\ : std_logic;
SIGNAL \crc|Selector38~0_combout\ : std_logic;
SIGNAL \crc|Selector38~1_combout\ : std_logic;
SIGNAL \crc|state_crc.s1~q\ : std_logic;
SIGNAL \crc|crc8bit_operation:cnt[7]~0_combout\ : std_logic;
SIGNAL \crc|crc8bit_operation:cnt[1]~q\ : std_logic;
SIGNAL \crc|Add1~2_combout\ : std_logic;
SIGNAL \crc|Equal0~0_combout\ : std_logic;
SIGNAL \crc|Selector39~0_combout\ : std_logic;
SIGNAL \crc|state_crc.s2~q\ : std_logic;
SIGNAL \crc|state_crc.s3~feeder_combout\ : std_logic;
SIGNAL \crc|state_crc.s3~q\ : std_logic;
SIGNAL \crc|Selector48~0_combout\ : std_logic;
SIGNAL \crc|Selector48~1_combout\ : std_logic;
SIGNAL \crc|Selector47~0_combout\ : std_logic;
SIGNAL \crc|Selector47~1_combout\ : std_logic;
SIGNAL \crc|Selector46~0_combout\ : std_logic;
SIGNAL \crc|Selector45~0_combout\ : std_logic;
SIGNAL \crc|Selector44~0_combout\ : std_logic;
SIGNAL \crc|Selector43~0_combout\ : std_logic;
SIGNAL \crc|Selector42~0_combout\ : std_logic;
SIGNAL \crc|Selector49~0_combout\ : std_logic;
SIGNAL \crc|Selector49~1_combout\ : std_logic;
SIGNAL \crc|Equal1~0_combout\ : std_logic;
SIGNAL \crc|Equal1~1_combout\ : std_logic;
SIGNAL \crc|crc8bit_out~0_combout\ : std_logic;
SIGNAL \crc|crc8bit_out~1_combout\ : std_logic;
SIGNAL \crc|crc8bit_out~q\ : std_logic;
SIGNAL \og|state_Do.s7~q\ : std_logic;
SIGNAL \og|state_Do.s8~feeder_combout\ : std_logic;
SIGNAL \og|state_Do.s8~q\ : std_logic;
SIGNAL \og|Selector10~0_combout\ : std_logic;
SIGNAL \og|state_Do.s9~q\ : std_logic;
SIGNAL \og|Selector0~0_combout\ : std_logic;
SIGNAL \og|state_Do.s0~q\ : std_logic;
SIGNAL \og|state_Do.s1~0_combout\ : std_logic;
SIGNAL \og|sig_cnt[0]~101_combout\ : std_logic;
SIGNAL \og|sig_cnt[0]~102\ : std_logic;
SIGNAL \og|sig_cnt[1]~103_combout\ : std_logic;
SIGNAL \og|sig_cnt[100]~107_combout\ : std_logic;
SIGNAL \og|sig_cnt[1]~104\ : std_logic;
SIGNAL \og|sig_cnt[2]~108_combout\ : std_logic;
SIGNAL \og|sig_cnt[2]~109\ : std_logic;
SIGNAL \og|sig_cnt[3]~110_combout\ : std_logic;
SIGNAL \og|sig_cnt[3]~111\ : std_logic;
SIGNAL \og|sig_cnt[4]~112_combout\ : std_logic;
SIGNAL \og|sig_cnt[4]~113\ : std_logic;
SIGNAL \og|sig_cnt[5]~114_combout\ : std_logic;
SIGNAL \og|sig_cnt[5]~115\ : std_logic;
SIGNAL \og|sig_cnt[6]~116_combout\ : std_logic;
SIGNAL \og|sig_cnt[6]~117\ : std_logic;
SIGNAL \og|sig_cnt[7]~118_combout\ : std_logic;
SIGNAL \og|sig_cnt[7]~119\ : std_logic;
SIGNAL \og|sig_cnt[8]~120_combout\ : std_logic;
SIGNAL \og|sig_cnt[8]~121\ : std_logic;
SIGNAL \og|sig_cnt[9]~122_combout\ : std_logic;
SIGNAL \og|sig_cnt[9]~123\ : std_logic;
SIGNAL \og|sig_cnt[10]~124_combout\ : std_logic;
SIGNAL \og|sig_cnt[10]~125\ : std_logic;
SIGNAL \og|sig_cnt[11]~126_combout\ : std_logic;
SIGNAL \og|sig_cnt[11]~127\ : std_logic;
SIGNAL \og|sig_cnt[12]~128_combout\ : std_logic;
SIGNAL \og|sig_cnt[12]~129\ : std_logic;
SIGNAL \og|sig_cnt[13]~130_combout\ : std_logic;
SIGNAL \og|sig_cnt[13]~131\ : std_logic;
SIGNAL \og|sig_cnt[14]~132_combout\ : std_logic;
SIGNAL \og|sig_cnt[14]~133\ : std_logic;
SIGNAL \og|sig_cnt[15]~134_combout\ : std_logic;
SIGNAL \og|sig_cnt[15]~135\ : std_logic;
SIGNAL \og|sig_cnt[16]~136_combout\ : std_logic;
SIGNAL \og|sig_cnt[16]~137\ : std_logic;
SIGNAL \og|sig_cnt[17]~138_combout\ : std_logic;
SIGNAL \og|sig_cnt[17]~139\ : std_logic;
SIGNAL \og|sig_cnt[18]~140_combout\ : std_logic;
SIGNAL \og|sig_cnt[18]~141\ : std_logic;
SIGNAL \og|sig_cnt[19]~142_combout\ : std_logic;
SIGNAL \og|sig_cnt[19]~143\ : std_logic;
SIGNAL \og|sig_cnt[20]~144_combout\ : std_logic;
SIGNAL \og|sig_cnt[20]~145\ : std_logic;
SIGNAL \og|sig_cnt[21]~146_combout\ : std_logic;
SIGNAL \og|sig_cnt[21]~147\ : std_logic;
SIGNAL \og|sig_cnt[22]~148_combout\ : std_logic;
SIGNAL \og|sig_cnt[22]~149\ : std_logic;
SIGNAL \og|sig_cnt[23]~150_combout\ : std_logic;
SIGNAL \og|sig_cnt[23]~151\ : std_logic;
SIGNAL \og|sig_cnt[24]~152_combout\ : std_logic;
SIGNAL \og|sig_cnt[24]~153\ : std_logic;
SIGNAL \og|sig_cnt[25]~154_combout\ : std_logic;
SIGNAL \og|sig_cnt[25]~155\ : std_logic;
SIGNAL \og|sig_cnt[26]~156_combout\ : std_logic;
SIGNAL \og|sig_cnt[26]~157\ : std_logic;
SIGNAL \og|sig_cnt[27]~158_combout\ : std_logic;
SIGNAL \og|sig_cnt[27]~159\ : std_logic;
SIGNAL \og|sig_cnt[28]~160_combout\ : std_logic;
SIGNAL \og|sig_cnt[28]~161\ : std_logic;
SIGNAL \og|sig_cnt[29]~162_combout\ : std_logic;
SIGNAL \og|sig_cnt[29]~163\ : std_logic;
SIGNAL \og|sig_cnt[30]~164_combout\ : std_logic;
SIGNAL \og|sig_cnt[30]~165\ : std_logic;
SIGNAL \og|sig_cnt[31]~166_combout\ : std_logic;
SIGNAL \og|sig_cnt[31]~167\ : std_logic;
SIGNAL \og|sig_cnt[32]~168_combout\ : std_logic;
SIGNAL \og|sig_cnt[32]~169\ : std_logic;
SIGNAL \og|sig_cnt[33]~170_combout\ : std_logic;
SIGNAL \og|sig_cnt[33]~171\ : std_logic;
SIGNAL \og|sig_cnt[34]~172_combout\ : std_logic;
SIGNAL \og|sig_cnt[34]~173\ : std_logic;
SIGNAL \og|sig_cnt[35]~174_combout\ : std_logic;
SIGNAL \og|sig_cnt[35]~175\ : std_logic;
SIGNAL \og|sig_cnt[36]~176_combout\ : std_logic;
SIGNAL \og|sig_cnt[36]~177\ : std_logic;
SIGNAL \og|sig_cnt[37]~178_combout\ : std_logic;
SIGNAL \og|sig_cnt[37]~179\ : std_logic;
SIGNAL \og|sig_cnt[38]~180_combout\ : std_logic;
SIGNAL \og|sig_cnt[38]~181\ : std_logic;
SIGNAL \og|sig_cnt[39]~182_combout\ : std_logic;
SIGNAL \og|sig_cnt[39]~183\ : std_logic;
SIGNAL \og|sig_cnt[40]~184_combout\ : std_logic;
SIGNAL \og|sig_cnt[40]~185\ : std_logic;
SIGNAL \og|sig_cnt[41]~186_combout\ : std_logic;
SIGNAL \og|sig_cnt[41]~187\ : std_logic;
SIGNAL \og|sig_cnt[42]~188_combout\ : std_logic;
SIGNAL \og|sig_cnt[42]~189\ : std_logic;
SIGNAL \og|sig_cnt[43]~190_combout\ : std_logic;
SIGNAL \og|sig_cnt[43]~191\ : std_logic;
SIGNAL \og|sig_cnt[44]~192_combout\ : std_logic;
SIGNAL \og|sig_cnt[44]~193\ : std_logic;
SIGNAL \og|sig_cnt[45]~194_combout\ : std_logic;
SIGNAL \og|sig_cnt[45]~195\ : std_logic;
SIGNAL \og|sig_cnt[46]~196_combout\ : std_logic;
SIGNAL \og|sig_cnt[46]~197\ : std_logic;
SIGNAL \og|sig_cnt[47]~198_combout\ : std_logic;
SIGNAL \og|sig_cnt[47]~199\ : std_logic;
SIGNAL \og|sig_cnt[48]~200_combout\ : std_logic;
SIGNAL \og|sig_cnt[48]~201\ : std_logic;
SIGNAL \og|sig_cnt[49]~202_combout\ : std_logic;
SIGNAL \og|sig_cnt[49]~203\ : std_logic;
SIGNAL \og|sig_cnt[50]~204_combout\ : std_logic;
SIGNAL \og|sig_cnt[50]~205\ : std_logic;
SIGNAL \og|sig_cnt[51]~206_combout\ : std_logic;
SIGNAL \og|sig_cnt[51]~207\ : std_logic;
SIGNAL \og|sig_cnt[52]~208_combout\ : std_logic;
SIGNAL \og|sig_cnt[52]~209\ : std_logic;
SIGNAL \og|sig_cnt[53]~210_combout\ : std_logic;
SIGNAL \og|sig_cnt[53]~211\ : std_logic;
SIGNAL \og|sig_cnt[54]~212_combout\ : std_logic;
SIGNAL \og|sig_cnt[54]~213\ : std_logic;
SIGNAL \og|sig_cnt[55]~214_combout\ : std_logic;
SIGNAL \og|sig_cnt[55]~215\ : std_logic;
SIGNAL \og|sig_cnt[56]~216_combout\ : std_logic;
SIGNAL \og|sig_cnt[56]~217\ : std_logic;
SIGNAL \og|sig_cnt[57]~218_combout\ : std_logic;
SIGNAL \og|sig_cnt[57]~219\ : std_logic;
SIGNAL \og|sig_cnt[58]~220_combout\ : std_logic;
SIGNAL \og|sig_cnt[58]~221\ : std_logic;
SIGNAL \og|sig_cnt[59]~222_combout\ : std_logic;
SIGNAL \og|sig_cnt[59]~223\ : std_logic;
SIGNAL \og|sig_cnt[60]~224_combout\ : std_logic;
SIGNAL \og|sig_cnt[60]~225\ : std_logic;
SIGNAL \og|sig_cnt[61]~226_combout\ : std_logic;
SIGNAL \og|sig_cnt[61]~227\ : std_logic;
SIGNAL \og|sig_cnt[62]~228_combout\ : std_logic;
SIGNAL \og|sig_cnt[62]~229\ : std_logic;
SIGNAL \og|sig_cnt[63]~230_combout\ : std_logic;
SIGNAL \og|sig_cnt[63]~231\ : std_logic;
SIGNAL \og|sig_cnt[64]~232_combout\ : std_logic;
SIGNAL \og|sig_cnt[64]~233\ : std_logic;
SIGNAL \og|sig_cnt[65]~234_combout\ : std_logic;
SIGNAL \og|sig_cnt[65]~235\ : std_logic;
SIGNAL \og|sig_cnt[66]~236_combout\ : std_logic;
SIGNAL \og|sig_cnt[66]~237\ : std_logic;
SIGNAL \og|sig_cnt[67]~238_combout\ : std_logic;
SIGNAL \og|sig_cnt[67]~239\ : std_logic;
SIGNAL \og|sig_cnt[68]~240_combout\ : std_logic;
SIGNAL \og|sig_cnt[68]~241\ : std_logic;
SIGNAL \og|sig_cnt[69]~242_combout\ : std_logic;
SIGNAL \og|sig_cnt[69]~243\ : std_logic;
SIGNAL \og|sig_cnt[70]~244_combout\ : std_logic;
SIGNAL \og|sig_cnt[70]~245\ : std_logic;
SIGNAL \og|sig_cnt[71]~246_combout\ : std_logic;
SIGNAL \og|sig_cnt[71]~247\ : std_logic;
SIGNAL \og|sig_cnt[72]~248_combout\ : std_logic;
SIGNAL \og|sig_cnt[72]~249\ : std_logic;
SIGNAL \og|sig_cnt[73]~250_combout\ : std_logic;
SIGNAL \og|sig_cnt[73]~251\ : std_logic;
SIGNAL \og|sig_cnt[74]~252_combout\ : std_logic;
SIGNAL \og|sig_cnt[74]~253\ : std_logic;
SIGNAL \og|sig_cnt[75]~254_combout\ : std_logic;
SIGNAL \og|sig_cnt[75]~255\ : std_logic;
SIGNAL \og|sig_cnt[76]~256_combout\ : std_logic;
SIGNAL \og|sig_cnt[76]~257\ : std_logic;
SIGNAL \og|sig_cnt[77]~258_combout\ : std_logic;
SIGNAL \og|sig_cnt[77]~259\ : std_logic;
SIGNAL \og|sig_cnt[78]~260_combout\ : std_logic;
SIGNAL \og|sig_cnt[78]~261\ : std_logic;
SIGNAL \og|sig_cnt[79]~262_combout\ : std_logic;
SIGNAL \og|sig_cnt[79]~263\ : std_logic;
SIGNAL \og|sig_cnt[80]~264_combout\ : std_logic;
SIGNAL \og|sig_cnt[80]~265\ : std_logic;
SIGNAL \og|sig_cnt[81]~266_combout\ : std_logic;
SIGNAL \og|sig_cnt[81]~267\ : std_logic;
SIGNAL \og|sig_cnt[82]~268_combout\ : std_logic;
SIGNAL \og|sig_cnt[82]~269\ : std_logic;
SIGNAL \og|sig_cnt[83]~270_combout\ : std_logic;
SIGNAL \og|sig_cnt[83]~271\ : std_logic;
SIGNAL \og|sig_cnt[84]~272_combout\ : std_logic;
SIGNAL \og|sig_cnt[84]~273\ : std_logic;
SIGNAL \og|sig_cnt[85]~274_combout\ : std_logic;
SIGNAL \og|sig_cnt[85]~275\ : std_logic;
SIGNAL \og|sig_cnt[86]~276_combout\ : std_logic;
SIGNAL \og|sig_cnt[86]~277\ : std_logic;
SIGNAL \og|sig_cnt[87]~278_combout\ : std_logic;
SIGNAL \og|sig_cnt[87]~279\ : std_logic;
SIGNAL \og|sig_cnt[88]~280_combout\ : std_logic;
SIGNAL \og|Equal0~26_combout\ : std_logic;
SIGNAL \og|sig_cnt[88]~281\ : std_logic;
SIGNAL \og|sig_cnt[89]~282_combout\ : std_logic;
SIGNAL \og|sig_cnt[89]~283\ : std_logic;
SIGNAL \og|sig_cnt[90]~284_combout\ : std_logic;
SIGNAL \og|sig_cnt[90]~285\ : std_logic;
SIGNAL \og|sig_cnt[91]~286_combout\ : std_logic;
SIGNAL \og|sig_cnt[91]~287\ : std_logic;
SIGNAL \og|sig_cnt[92]~288_combout\ : std_logic;
SIGNAL \og|sig_cnt[92]~289\ : std_logic;
SIGNAL \og|sig_cnt[93]~290_combout\ : std_logic;
SIGNAL \og|sig_cnt[93]~291\ : std_logic;
SIGNAL \og|sig_cnt[94]~292_combout\ : std_logic;
SIGNAL \og|sig_cnt[94]~293\ : std_logic;
SIGNAL \og|sig_cnt[95]~294_combout\ : std_logic;
SIGNAL \og|sig_cnt[95]~295\ : std_logic;
SIGNAL \og|sig_cnt[96]~296_combout\ : std_logic;
SIGNAL \og|sig_cnt[96]~297\ : std_logic;
SIGNAL \og|sig_cnt[97]~298_combout\ : std_logic;
SIGNAL \og|sig_cnt[97]~299\ : std_logic;
SIGNAL \og|sig_cnt[98]~300_combout\ : std_logic;
SIGNAL \og|sig_cnt[98]~301\ : std_logic;
SIGNAL \og|sig_cnt[99]~302_combout\ : std_logic;
SIGNAL \og|sig_cnt[99]~303\ : std_logic;
SIGNAL \og|sig_cnt[100]~304_combout\ : std_logic;
SIGNAL \og|Equal0~29_combout\ : std_logic;
SIGNAL \og|Equal0~28_combout\ : std_logic;
SIGNAL \og|Equal0~27_combout\ : std_logic;
SIGNAL \og|Equal0~30_combout\ : std_logic;
SIGNAL \og|Equal0~23_combout\ : std_logic;
SIGNAL \og|Equal0~21_combout\ : std_logic;
SIGNAL \og|Equal0~24_combout\ : std_logic;
SIGNAL \og|Equal0~22_combout\ : std_logic;
SIGNAL \og|Equal0~25_combout\ : std_logic;
SIGNAL \og|Equal0~0_combout\ : std_logic;
SIGNAL \og|Equal0~1_combout\ : std_logic;
SIGNAL \og|Equal0~3_combout\ : std_logic;
SIGNAL \og|Equal0~2_combout\ : std_logic;
SIGNAL \og|Equal0~4_combout\ : std_logic;
SIGNAL \og|Equal0~13_combout\ : std_logic;
SIGNAL \og|Equal0~12_combout\ : std_logic;
SIGNAL \og|Equal0~11_combout\ : std_logic;
SIGNAL \og|Equal0~10_combout\ : std_logic;
SIGNAL \og|Equal0~14_combout\ : std_logic;
SIGNAL \og|Equal0~15_combout\ : std_logic;
SIGNAL \og|Equal0~16_combout\ : std_logic;
SIGNAL \og|Equal0~18_combout\ : std_logic;
SIGNAL \og|Equal0~17_combout\ : std_logic;
SIGNAL \og|Equal0~19_combout\ : std_logic;
SIGNAL \og|Equal0~7_combout\ : std_logic;
SIGNAL \og|Equal0~5_combout\ : std_logic;
SIGNAL \og|Equal0~6_combout\ : std_logic;
SIGNAL \og|Equal0~8_combout\ : std_logic;
SIGNAL \og|Equal0~9_combout\ : std_logic;
SIGNAL \og|Equal0~20_combout\ : std_logic;
SIGNAL \og|Equal0~31_combout\ : std_logic;
SIGNAL \og|Equal1~0_combout\ : std_logic;
SIGNAL \og|Equal1~1_combout\ : std_logic;
SIGNAL \og|sig_cnt[50]~105_combout\ : std_logic;
SIGNAL \og|Equal0~32_combout\ : std_logic;
SIGNAL \og|Equal0~33_combout\ : std_logic;
SIGNAL \og|sig_cnt[50]~106_combout\ : std_logic;
SIGNAL \og|Equal2~0_combout\ : std_logic;
SIGNAL \og|state_Do~27_combout\ : std_logic;
SIGNAL \og|state_Do~26_combout\ : std_logic;
SIGNAL \og|state_Do~28_combout\ : std_logic;
SIGNAL \og|state_Do.s1~q\ : std_logic;
SIGNAL \og|state_Do.s2~q\ : std_logic;
SIGNAL \og|state_Do.s3~q\ : std_logic;
SIGNAL \og|state_Do.s4~q\ : std_logic;
SIGNAL \og|Selector5~0_combout\ : std_logic;
SIGNAL \og|state_Do.s5~q\ : std_logic;
SIGNAL \og|state_Do.s5a~q\ : std_logic;
SIGNAL \og|Selector7~0_combout\ : std_logic;
SIGNAL \og|state_Do.s6~q\ : std_logic;
SIGNAL \og|Selector112~0_combout\ : std_logic;
SIGNAL \og|load_leds~q\ : std_logic;
SIGNAL \og|sig_green_leds_reg[0]~feeder_combout\ : std_logic;
SIGNAL \og|sig_green_leds_reg[7]~0_combout\ : std_logic;
SIGNAL \og|sig_green_leds_reg[2]~feeder_combout\ : std_logic;
SIGNAL \og|sig_green_leds_reg[3]~feeder_combout\ : std_logic;
SIGNAL \og|sig_green_leds_reg[4]~feeder_combout\ : std_logic;
SIGNAL \og|sig_green_leds_reg[5]~feeder_combout\ : std_logic;
SIGNAL \og|sig_green_leds_reg[6]~feeder_combout\ : std_logic;
SIGNAL \og|sig_green_leds_reg[7]~feeder_combout\ : std_logic;
SIGNAL \og|sig_green_leds_out[0]~feeder_combout\ : std_logic;
SIGNAL \og|sig_green_leds_out[0]~0_combout\ : std_logic;
SIGNAL \og|green_leds[0]~feeder_combout\ : std_logic;
SIGNAL \og|green_leds[0]~0_combout\ : std_logic;
SIGNAL \og|sig_green_leds_out[1]~feeder_combout\ : std_logic;
SIGNAL \og|green_leds[1]~feeder_combout\ : std_logic;
SIGNAL \og|sig_green_leds_out[2]~feeder_combout\ : std_logic;
SIGNAL \og|green_leds[2]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[0]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[0]~0_combout\ : std_logic;
SIGNAL \og|rgb_leds[0]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[1]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[1]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[2]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[2]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[3]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[4]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[5]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[6]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[7]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[7]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[9]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[10]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[10]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[11]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[11]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[12]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[13]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[14]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[14]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[15]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[15]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[16]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[16]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[17]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[17]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[18]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[18]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[19]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[19]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[20]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[21]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[22]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[22]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[23]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[23]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[24]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[25]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[26]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[26]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[27]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[27]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[28]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[28]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[29]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[30]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[31]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[31]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[32]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[34]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[34]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[35]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[35]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[36]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[36]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[37]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[37]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[38]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[38]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[39]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[41]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[41]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[42]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[42]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[43]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[43]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[44]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[45]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[46]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[46]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[47]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[47]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[48]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[49]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[49]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[50]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[50]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[51]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[51]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[52]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[53]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[54]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[54]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[55]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[55]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[56]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[57]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[58]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[59]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[60]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[60]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[61]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[62]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[63]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[64]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[65]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[65]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[66]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[66]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[67]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[67]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[68]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[68]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[69]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[69]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[70]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[70]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[71]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[72]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[73]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[73]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[74]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[74]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[75]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[75]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[76]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[76]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[77]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[77]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[78]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[78]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[79]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[81]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[82]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[83]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[84]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[84]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[85]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[85]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[86]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[87]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[88]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[88]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[89]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[90]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[91]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[92]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[93]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[93]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[94]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[94]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[95]~feeder_combout\ : std_logic;
SIGNAL sig_main : std_logic_vector(13 DOWNTO 0);
SIGNAL \og|green_leds\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \crc|sig_correlation\ : std_logic_vector(4 DOWNTO 0);
SIGNAL sig_address : std_logic_vector(4 DOWNTO 0);
SIGNAL \og|sig_cnt\ : std_logic_vector(100 DOWNTO 0);
SIGNAL \MEMORY|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL sig_rom_sf : std_logic_vector(7 DOWNTO 0);
SIGNAL \crc|crc_reg8bit\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \og|rgb_leds\ : std_logic_vector(95 DOWNTO 0);
SIGNAL \og|sig_green_leds_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \og|sig_rgb_leds_out\ : std_logic_vector(95 DOWNTO 0);
SIGNAL \crc|sig_sf_reg\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \og|sig_green_leds_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \crc|ALT_INV_crc8bit_out~q\ : std_logic;
SIGNAL \og|ALT_INV_load_leds~q\ : std_logic;
SIGNAL \crc|ALT_INV_sig_correlation\ : std_logic_vector(4 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_resetn <= resetn;
ww_sysclk <= sysclk;
nrzl_data <= ww_nrzl_data;
crc_reg8bit_out <= ww_crc_reg8bit_out;
load_leds <= ww_load_leds;
green_leds <= ww_green_leds;
rgb_leds <= ww_rgb_leds;
main_clk <= ww_main_clk;
crc8bit_out <= ww_crc8bit_out;
correlation <= ww_correlation;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (sig_address(4) & sig_address(3) & sig_address(2) & sig_address(1) & sig_address(0));

\MEMORY|altsyncram_component|auto_generated|q_a\(0) <= \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\MEMORY|altsyncram_component|auto_generated|q_a\(1) <= \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\MEMORY|altsyncram_component|auto_generated|q_a\(2) <= \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\MEMORY|altsyncram_component|auto_generated|q_a\(3) <= \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\MEMORY|altsyncram_component|auto_generated|q_a\(4) <= \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\MEMORY|altsyncram_component|auto_generated|q_a\(5) <= \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\MEMORY|altsyncram_component|auto_generated|q_a\(6) <= \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\MEMORY|altsyncram_component|auto_generated|q_a\(7) <= \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\resetn~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \resetn~input_o\);

\sysclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sysclk~input_o\);
\crc|ALT_INV_crc8bit_out~q\ <= NOT \crc|crc8bit_out~q\;
\og|ALT_INV_load_leds~q\ <= NOT \og|load_leds~q\;
\crc|ALT_INV_sig_correlation\(4) <= NOT \crc|sig_correlation\(4);
\crc|ALT_INV_sig_correlation\(3) <= NOT \crc|sig_correlation\(3);
\crc|ALT_INV_sig_correlation\(2) <= NOT \crc|sig_correlation\(2);
\crc|ALT_INV_sig_correlation\(1) <= NOT \crc|sig_correlation\(1);
\crc|ALT_INV_sig_correlation\(0) <= NOT \crc|sig_correlation\(0);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y47_N24
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

-- Location: IOOBUF_X78_Y31_N23
\nrzl_data~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_rom_sf(7),
	devoe => ww_devoe,
	o => \nrzl_data~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\crc_reg8bit_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc|crc_reg8bit\(0),
	devoe => ww_devoe,
	o => \crc_reg8bit_out[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\crc_reg8bit_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc|crc_reg8bit\(1),
	devoe => ww_devoe,
	o => \crc_reg8bit_out[1]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\crc_reg8bit_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc|crc_reg8bit\(2),
	devoe => ww_devoe,
	o => \crc_reg8bit_out[2]~output_o\);

-- Location: IOOBUF_X31_Y39_N2
\crc_reg8bit_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc|crc_reg8bit\(3),
	devoe => ww_devoe,
	o => \crc_reg8bit_out[3]~output_o\);

-- Location: IOOBUF_X78_Y31_N9
\crc_reg8bit_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc|crc_reg8bit\(4),
	devoe => ww_devoe,
	o => \crc_reg8bit_out[4]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\crc_reg8bit_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc|crc_reg8bit\(5),
	devoe => ww_devoe,
	o => \crc_reg8bit_out[5]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\crc_reg8bit_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc|crc_reg8bit\(6),
	devoe => ww_devoe,
	o => \crc_reg8bit_out[6]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\crc_reg8bit_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc|crc_reg8bit\(7),
	devoe => ww_devoe,
	o => \crc_reg8bit_out[7]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\load_leds~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|ALT_INV_load_leds~q\,
	devoe => ww_devoe,
	o => \load_leds~output_o\);

-- Location: IOOBUF_X78_Y33_N23
\green_leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|green_leds\(0),
	devoe => ww_devoe,
	o => \green_leds[0]~output_o\);

-- Location: IOOBUF_X78_Y30_N2
\green_leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|green_leds\(1),
	devoe => ww_devoe,
	o => \green_leds[1]~output_o\);

-- Location: IOOBUF_X78_Y29_N2
\green_leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|green_leds\(2),
	devoe => ww_devoe,
	o => \green_leds[2]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
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

-- Location: IOOBUF_X78_Y21_N23
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

-- Location: IOOBUF_X78_Y3_N2
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

-- Location: IOOBUF_X0_Y26_N23
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

-- Location: IOOBUF_X24_Y0_N23
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

-- Location: IOOBUF_X78_Y23_N23
\rgb_leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(0),
	devoe => ww_devoe,
	o => \rgb_leds[0]~output_o\);

-- Location: IOOBUF_X78_Y24_N24
\rgb_leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(1),
	devoe => ww_devoe,
	o => \rgb_leds[1]~output_o\);

-- Location: IOOBUF_X78_Y25_N23
\rgb_leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(2),
	devoe => ww_devoe,
	o => \rgb_leds[2]~output_o\);

-- Location: IOOBUF_X78_Y23_N9
\rgb_leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(3),
	devoe => ww_devoe,
	o => \rgb_leds[3]~output_o\);

-- Location: IOOBUF_X78_Y24_N16
\rgb_leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(4),
	devoe => ww_devoe,
	o => \rgb_leds[4]~output_o\);

-- Location: IOOBUF_X78_Y21_N2
\rgb_leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(5),
	devoe => ww_devoe,
	o => \rgb_leds[5]~output_o\);

-- Location: IOOBUF_X78_Y24_N2
\rgb_leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(6),
	devoe => ww_devoe,
	o => \rgb_leds[6]~output_o\);

-- Location: IOOBUF_X78_Y24_N9
\rgb_leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(7),
	devoe => ww_devoe,
	o => \rgb_leds[7]~output_o\);

-- Location: IOOBUF_X78_Y30_N9
\rgb_leds[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(8),
	devoe => ww_devoe,
	o => \rgb_leds[8]~output_o\);

-- Location: IOOBUF_X78_Y31_N2
\rgb_leds[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(9),
	devoe => ww_devoe,
	o => \rgb_leds[9]~output_o\);

-- Location: IOOBUF_X78_Y30_N23
\rgb_leds[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(10),
	devoe => ww_devoe,
	o => \rgb_leds[10]~output_o\);

-- Location: IOOBUF_X78_Y29_N23
\rgb_leds[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(11),
	devoe => ww_devoe,
	o => \rgb_leds[11]~output_o\);

-- Location: IOOBUF_X78_Y29_N9
\rgb_leds[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(12),
	devoe => ww_devoe,
	o => \rgb_leds[12]~output_o\);

-- Location: IOOBUF_X78_Y25_N16
\rgb_leds[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(13),
	devoe => ww_devoe,
	o => \rgb_leds[13]~output_o\);

-- Location: IOOBUF_X78_Y30_N16
\rgb_leds[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(14),
	devoe => ww_devoe,
	o => \rgb_leds[14]~output_o\);

-- Location: IOOBUF_X78_Y29_N16
\rgb_leds[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(15),
	devoe => ww_devoe,
	o => \rgb_leds[15]~output_o\);

-- Location: IOOBUF_X78_Y33_N16
\rgb_leds[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(16),
	devoe => ww_devoe,
	o => \rgb_leds[16]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\rgb_leds[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(17),
	devoe => ww_devoe,
	o => \rgb_leds[17]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\rgb_leds[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(18),
	devoe => ww_devoe,
	o => \rgb_leds[18]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\rgb_leds[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(19),
	devoe => ww_devoe,
	o => \rgb_leds[19]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\rgb_leds[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(20),
	devoe => ww_devoe,
	o => \rgb_leds[20]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\rgb_leds[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(21),
	devoe => ww_devoe,
	o => \rgb_leds[21]~output_o\);

-- Location: IOOBUF_X29_Y39_N2
\rgb_leds[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(22),
	devoe => ww_devoe,
	o => \rgb_leds[22]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\rgb_leds[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(23),
	devoe => ww_devoe,
	o => \rgb_leds[23]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\rgb_leds[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(24),
	devoe => ww_devoe,
	o => \rgb_leds[24]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\rgb_leds[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(25),
	devoe => ww_devoe,
	o => \rgb_leds[25]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\rgb_leds[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(26),
	devoe => ww_devoe,
	o => \rgb_leds[26]~output_o\);

-- Location: IOOBUF_X26_Y39_N16
\rgb_leds[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(27),
	devoe => ww_devoe,
	o => \rgb_leds[27]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\rgb_leds[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(28),
	devoe => ww_devoe,
	o => \rgb_leds[28]~output_o\);

-- Location: IOOBUF_X29_Y39_N16
\rgb_leds[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(29),
	devoe => ww_devoe,
	o => \rgb_leds[29]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\rgb_leds[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(30),
	devoe => ww_devoe,
	o => \rgb_leds[30]~output_o\);

-- Location: IOOBUF_X26_Y39_N9
\rgb_leds[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(31),
	devoe => ww_devoe,
	o => \rgb_leds[31]~output_o\);

-- Location: IOOBUF_X22_Y39_N23
\rgb_leds[32]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(32),
	devoe => ww_devoe,
	o => \rgb_leds[32]~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\rgb_leds[33]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(33),
	devoe => ww_devoe,
	o => \rgb_leds[33]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\rgb_leds[34]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(34),
	devoe => ww_devoe,
	o => \rgb_leds[34]~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\rgb_leds[35]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(35),
	devoe => ww_devoe,
	o => \rgb_leds[35]~output_o\);

-- Location: IOOBUF_X40_Y0_N9
\rgb_leds[36]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(36),
	devoe => ww_devoe,
	o => \rgb_leds[36]~output_o\);

-- Location: IOOBUF_X78_Y15_N9
\rgb_leds[37]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(37),
	devoe => ww_devoe,
	o => \rgb_leds[37]~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\rgb_leds[38]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(38),
	devoe => ww_devoe,
	o => \rgb_leds[38]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\rgb_leds[39]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(39),
	devoe => ww_devoe,
	o => \rgb_leds[39]~output_o\);

-- Location: IOOBUF_X31_Y0_N30
\rgb_leds[40]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(40),
	devoe => ww_devoe,
	o => \rgb_leds[40]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\rgb_leds[41]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(41),
	devoe => ww_devoe,
	o => \rgb_leds[41]~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\rgb_leds[42]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(42),
	devoe => ww_devoe,
	o => \rgb_leds[42]~output_o\);

-- Location: IOOBUF_X34_Y0_N30
\rgb_leds[43]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(43),
	devoe => ww_devoe,
	o => \rgb_leds[43]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\rgb_leds[44]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(44),
	devoe => ww_devoe,
	o => \rgb_leds[44]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\rgb_leds[45]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(45),
	devoe => ww_devoe,
	o => \rgb_leds[45]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\rgb_leds[46]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(46),
	devoe => ww_devoe,
	o => \rgb_leds[46]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\rgb_leds[47]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(47),
	devoe => ww_devoe,
	o => \rgb_leds[47]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\rgb_leds[48]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(48),
	devoe => ww_devoe,
	o => \rgb_leds[48]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\rgb_leds[49]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(49),
	devoe => ww_devoe,
	o => \rgb_leds[49]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\rgb_leds[50]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(50),
	devoe => ww_devoe,
	o => \rgb_leds[50]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\rgb_leds[51]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(51),
	devoe => ww_devoe,
	o => \rgb_leds[51]~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\rgb_leds[52]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(52),
	devoe => ww_devoe,
	o => \rgb_leds[52]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\rgb_leds[53]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(53),
	devoe => ww_devoe,
	o => \rgb_leds[53]~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\rgb_leds[54]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(54),
	devoe => ww_devoe,
	o => \rgb_leds[54]~output_o\);

-- Location: IOOBUF_X40_Y0_N2
\rgb_leds[55]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(55),
	devoe => ww_devoe,
	o => \rgb_leds[55]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\rgb_leds[56]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(56),
	devoe => ww_devoe,
	o => \rgb_leds[56]~output_o\);

-- Location: IOOBUF_X51_Y0_N16
\rgb_leds[57]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(57),
	devoe => ww_devoe,
	o => \rgb_leds[57]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\rgb_leds[58]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(58),
	devoe => ww_devoe,
	o => \rgb_leds[58]~output_o\);

-- Location: IOOBUF_X56_Y0_N30
\rgb_leds[59]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(59),
	devoe => ww_devoe,
	o => \rgb_leds[59]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\rgb_leds[60]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(60),
	devoe => ww_devoe,
	o => \rgb_leds[60]~output_o\);

-- Location: IOOBUF_X49_Y0_N30
\rgb_leds[61]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(61),
	devoe => ww_devoe,
	o => \rgb_leds[61]~output_o\);

-- Location: IOOBUF_X58_Y0_N30
\rgb_leds[62]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(62),
	devoe => ww_devoe,
	o => \rgb_leds[62]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\rgb_leds[63]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(63),
	devoe => ww_devoe,
	o => \rgb_leds[63]~output_o\);

-- Location: IOOBUF_X62_Y0_N30
\rgb_leds[64]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(64),
	devoe => ww_devoe,
	o => \rgb_leds[64]~output_o\);

-- Location: IOOBUF_X58_Y0_N23
\rgb_leds[65]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(65),
	devoe => ww_devoe,
	o => \rgb_leds[65]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\rgb_leds[66]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(66),
	devoe => ww_devoe,
	o => \rgb_leds[66]~output_o\);

-- Location: IOOBUF_X78_Y15_N23
\rgb_leds[67]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(67),
	devoe => ww_devoe,
	o => \rgb_leds[67]~output_o\);

-- Location: IOOBUF_X78_Y17_N23
\rgb_leds[68]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(68),
	devoe => ww_devoe,
	o => \rgb_leds[68]~output_o\);

-- Location: IOOBUF_X78_Y17_N16
\rgb_leds[69]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(69),
	devoe => ww_devoe,
	o => \rgb_leds[69]~output_o\);

-- Location: IOOBUF_X78_Y17_N9
\rgb_leds[70]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(70),
	devoe => ww_devoe,
	o => \rgb_leds[70]~output_o\);

-- Location: IOOBUF_X78_Y16_N16
\rgb_leds[71]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(71),
	devoe => ww_devoe,
	o => \rgb_leds[71]~output_o\);

-- Location: IOOBUF_X78_Y16_N9
\rgb_leds[72]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(72),
	devoe => ww_devoe,
	o => \rgb_leds[72]~output_o\);

-- Location: IOOBUF_X78_Y16_N2
\rgb_leds[73]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(73),
	devoe => ww_devoe,
	o => \rgb_leds[73]~output_o\);

-- Location: IOOBUF_X78_Y16_N24
\rgb_leds[74]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(74),
	devoe => ww_devoe,
	o => \rgb_leds[74]~output_o\);

-- Location: IOOBUF_X62_Y0_N9
\rgb_leds[75]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(75),
	devoe => ww_devoe,
	o => \rgb_leds[75]~output_o\);

-- Location: IOOBUF_X60_Y0_N30
\rgb_leds[76]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(76),
	devoe => ww_devoe,
	o => \rgb_leds[76]~output_o\);

-- Location: IOOBUF_X51_Y0_N9
\rgb_leds[77]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(77),
	devoe => ww_devoe,
	o => \rgb_leds[77]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\rgb_leds[78]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(78),
	devoe => ww_devoe,
	o => \rgb_leds[78]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\rgb_leds[79]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(79),
	devoe => ww_devoe,
	o => \rgb_leds[79]~output_o\);

-- Location: IOOBUF_X58_Y0_N9
\rgb_leds[80]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(80),
	devoe => ww_devoe,
	o => \rgb_leds[80]~output_o\);

-- Location: IOOBUF_X58_Y0_N16
\rgb_leds[81]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(81),
	devoe => ww_devoe,
	o => \rgb_leds[81]~output_o\);

-- Location: IOOBUF_X54_Y0_N30
\rgb_leds[82]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(82),
	devoe => ww_devoe,
	o => \rgb_leds[82]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\rgb_leds[83]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(83),
	devoe => ww_devoe,
	o => \rgb_leds[83]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\rgb_leds[84]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(84),
	devoe => ww_devoe,
	o => \rgb_leds[84]~output_o\);

-- Location: IOOBUF_X58_Y0_N2
\rgb_leds[85]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(85),
	devoe => ww_devoe,
	o => \rgb_leds[85]~output_o\);

-- Location: IOOBUF_X51_Y0_N23
\rgb_leds[86]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(86),
	devoe => ww_devoe,
	o => \rgb_leds[86]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\rgb_leds[87]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(87),
	devoe => ww_devoe,
	o => \rgb_leds[87]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\rgb_leds[88]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(88),
	devoe => ww_devoe,
	o => \rgb_leds[88]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\rgb_leds[89]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(89),
	devoe => ww_devoe,
	o => \rgb_leds[89]~output_o\);

-- Location: IOOBUF_X51_Y0_N2
\rgb_leds[90]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(90),
	devoe => ww_devoe,
	o => \rgb_leds[90]~output_o\);

-- Location: IOOBUF_X29_Y0_N30
\rgb_leds[91]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(91),
	devoe => ww_devoe,
	o => \rgb_leds[91]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\rgb_leds[92]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(92),
	devoe => ww_devoe,
	o => \rgb_leds[92]~output_o\);

-- Location: IOOBUF_X51_Y0_N30
\rgb_leds[93]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(93),
	devoe => ww_devoe,
	o => \rgb_leds[93]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\rgb_leds[94]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(94),
	devoe => ww_devoe,
	o => \rgb_leds[94]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\rgb_leds[95]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \og|rgb_leds\(95),
	devoe => ww_devoe,
	o => \rgb_leds[95]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\main_clk~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_main(6),
	devoe => ww_devoe,
	o => \main_clk~output_o\);

-- Location: IOOBUF_X78_Y23_N16
\crc8bit_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc|ALT_INV_crc8bit_out~q\,
	devoe => ww_devoe,
	o => \crc8bit_out~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\correlation[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc|ALT_INV_sig_correlation\(0),
	devoe => ww_devoe,
	o => \correlation[0]~output_o\);

-- Location: IOOBUF_X78_Y25_N2
\correlation[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc|ALT_INV_sig_correlation\(1),
	devoe => ww_devoe,
	o => \correlation[1]~output_o\);

-- Location: IOOBUF_X31_Y39_N30
\correlation[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc|ALT_INV_sig_correlation\(2),
	devoe => ww_devoe,
	o => \correlation[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\correlation[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc|ALT_INV_sig_correlation\(3),
	devoe => ww_devoe,
	o => \correlation[3]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\correlation[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \crc|ALT_INV_sig_correlation\(4),
	devoe => ww_devoe,
	o => \correlation[4]~output_o\);

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

-- Location: LCCOMB_X52_Y26_N28
\state_t.s0a~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_t.s0a~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \state_t.s0a~feeder_combout\);

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

-- Location: LCCOMB_X55_Y23_N28
\sig_main[0]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main[0]~18_combout\ = !sig_main(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sig_main(0),
	combout => \sig_main[0]~18_combout\);

-- Location: FF_X55_Y23_N29
\sig_main[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_main[0]~18_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_main(0));

-- Location: LCCOMB_X55_Y23_N10
\sig_main[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main[1]~6_combout\ = (sig_main(1) & (sig_main(0) $ (VCC))) # (!sig_main(1) & (sig_main(0) & VCC))
-- \sig_main[1]~7\ = CARRY((sig_main(1) & sig_main(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_main(1),
	datab => sig_main(0),
	datad => VCC,
	combout => \sig_main[1]~6_combout\,
	cout => \sig_main[1]~7\);

-- Location: FF_X55_Y23_N11
\sig_main[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_main[1]~6_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_main(1));

-- Location: LCCOMB_X55_Y23_N12
\sig_main[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main[2]~8_combout\ = (sig_main(2) & (!\sig_main[1]~7\)) # (!sig_main(2) & ((\sig_main[1]~7\) # (GND)))
-- \sig_main[2]~9\ = CARRY((!\sig_main[1]~7\) # (!sig_main(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_main(2),
	datad => VCC,
	cin => \sig_main[1]~7\,
	combout => \sig_main[2]~8_combout\,
	cout => \sig_main[2]~9\);

-- Location: FF_X55_Y23_N13
\sig_main[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_main[2]~8_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_main(2));

-- Location: LCCOMB_X55_Y23_N14
\sig_main[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main[3]~10_combout\ = (sig_main(3) & (\sig_main[2]~9\ $ (GND))) # (!sig_main(3) & (!\sig_main[2]~9\ & VCC))
-- \sig_main[3]~11\ = CARRY((sig_main(3) & !\sig_main[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_main(3),
	datad => VCC,
	cin => \sig_main[2]~9\,
	combout => \sig_main[3]~10_combout\,
	cout => \sig_main[3]~11\);

-- Location: FF_X55_Y23_N15
\sig_main[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_main[3]~10_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_main(3));

-- Location: LCCOMB_X55_Y23_N16
\sig_main[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main[4]~12_combout\ = (sig_main(4) & (!\sig_main[3]~11\)) # (!sig_main(4) & ((\sig_main[3]~11\) # (GND)))
-- \sig_main[4]~13\ = CARRY((!\sig_main[3]~11\) # (!sig_main(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_main(4),
	datad => VCC,
	cin => \sig_main[3]~11\,
	combout => \sig_main[4]~12_combout\,
	cout => \sig_main[4]~13\);

-- Location: FF_X55_Y23_N17
\sig_main[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_main[4]~12_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_main(4));

-- Location: LCCOMB_X55_Y23_N18
\sig_main[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main[5]~14_combout\ = (sig_main(5) & (\sig_main[4]~13\ $ (GND))) # (!sig_main(5) & (!\sig_main[4]~13\ & VCC))
-- \sig_main[5]~15\ = CARRY((sig_main(5) & !\sig_main[4]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_main(5),
	datad => VCC,
	cin => \sig_main[4]~13\,
	combout => \sig_main[5]~14_combout\,
	cout => \sig_main[5]~15\);

-- Location: FF_X55_Y23_N19
\sig_main[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_main[5]~14_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_main(5));

-- Location: LCCOMB_X55_Y23_N20
\sig_main[6]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main[6]~16_combout\ = \sig_main[5]~15\ $ (sig_main(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sig_main(6),
	cin => \sig_main[5]~15\,
	combout => \sig_main[6]~16_combout\);

-- Location: FF_X55_Y23_N21
\sig_main[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_main[6]~16_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_main(6));

-- Location: FF_X55_Y23_N1
sig_cut : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_main(6),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_cut~q\);

-- Location: FF_X55_Y23_N31
sig_cut_not : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \sig_cut~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_cut_not~q\);

-- Location: LCCOMB_X55_Y23_N30
sig_main_rising_edge : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main_rising_edge~combout\ = (!\sig_cut_not~q\ & \sig_cut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig_cut_not~q\,
	datad => \sig_cut~q\,
	combout => \sig_main_rising_edge~combout\);

-- Location: FF_X52_Y26_N29
\state_t.s0a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_t.s0a~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_t.s0a~q\);

-- Location: LCCOMB_X52_Y26_N0
\sig_rom_sf~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rom_sf~11_combout\ = (\state_t.s7~q\) # (!\state_t.s0a~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_t.s0a~q\,
	datad => \state_t.s7~q\,
	combout => \sig_rom_sf~11_combout\);

-- Location: FF_X52_Y26_N1
\state_t.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rom_sf~11_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_t.s0~q\);

-- Location: FF_X55_Y23_N27
\state_t.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_t.s0~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_t.s1~q\);

-- Location: LCCOMB_X55_Y23_N24
\state_t.s2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_t.s2~feeder_combout\ = \state_t.s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_t.s1~q\,
	combout => \state_t.s2~feeder_combout\);

-- Location: FF_X55_Y23_N25
\state_t.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_t.s2~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_t.s2~q\);

-- Location: LCCOMB_X55_Y23_N4
\state_t.s3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_t.s3~feeder_combout\ = \state_t.s2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_t.s2~q\,
	combout => \state_t.s3~feeder_combout\);

-- Location: FF_X55_Y23_N5
\state_t.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_t.s3~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_t.s3~q\);

-- Location: FF_X55_Y23_N9
\state_t.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_t.s3~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_t.s4~q\);

-- Location: LCCOMB_X55_Y23_N2
\state_t.s5~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_t.s5~feeder_combout\ = \state_t.s4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_t.s4~q\,
	combout => \state_t.s5~feeder_combout\);

-- Location: FF_X55_Y23_N3
\state_t.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_t.s5~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_t.s5~q\);

-- Location: FF_X55_Y23_N23
\state_t.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_t.s5~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_t.s6~q\);

-- Location: FF_X52_Y26_N7
\state_t.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_t.s6~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_t.s7~q\);

-- Location: LCCOMB_X55_Y23_N6
\sig_address[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_address[0]~5_combout\ = sig_address(0) $ (((!\sig_cut_not~q\ & (\sig_cut~q\ & \state_t.s6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_cut_not~q\,
	datab => \sig_cut~q\,
	datac => sig_address(0),
	datad => \state_t.s6~q\,
	combout => \sig_address[0]~5_combout\);

-- Location: FF_X55_Y23_N7
\sig_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_address[0]~5_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_address(0));

-- Location: LCCOMB_X51_Y26_N6
\sig_address[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_address[1]~6_combout\ = (sig_address(1) & (sig_address(0) $ (VCC))) # (!sig_address(1) & (sig_address(0) & VCC))
-- \sig_address[1]~7\ = CARRY((sig_address(1) & sig_address(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_address(1),
	datab => sig_address(0),
	datad => VCC,
	combout => \sig_address[1]~6_combout\,
	cout => \sig_address[1]~7\);

-- Location: LCCOMB_X55_Y23_N22
\sig_address[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_address[0]~8_combout\ = (!\sig_cut_not~q\ & (\sig_cut~q\ & \state_t.s6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_cut_not~q\,
	datab => \sig_cut~q\,
	datac => \state_t.s6~q\,
	combout => \sig_address[0]~8_combout\);

-- Location: FF_X51_Y26_N7
\sig_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_address[1]~6_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_address[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_address(1));

-- Location: LCCOMB_X51_Y26_N8
\sig_address[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_address[2]~9_combout\ = (sig_address(2) & (!\sig_address[1]~7\)) # (!sig_address(2) & ((\sig_address[1]~7\) # (GND)))
-- \sig_address[2]~10\ = CARRY((!\sig_address[1]~7\) # (!sig_address(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_address(2),
	datad => VCC,
	cin => \sig_address[1]~7\,
	combout => \sig_address[2]~9_combout\,
	cout => \sig_address[2]~10\);

-- Location: FF_X51_Y26_N9
\sig_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_address[2]~9_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_address[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_address(2));

-- Location: LCCOMB_X51_Y26_N10
\sig_address[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_address[3]~11_combout\ = (sig_address(3) & (\sig_address[2]~10\ $ (GND))) # (!sig_address(3) & (!\sig_address[2]~10\ & VCC))
-- \sig_address[3]~12\ = CARRY((sig_address(3) & !\sig_address[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_address(3),
	datad => VCC,
	cin => \sig_address[2]~10\,
	combout => \sig_address[3]~11_combout\,
	cout => \sig_address[3]~12\);

-- Location: FF_X51_Y26_N11
\sig_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_address[3]~11_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_address[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_address(3));

-- Location: LCCOMB_X51_Y26_N12
\sig_address[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_address[4]~13_combout\ = \sig_address[3]~12\ $ (sig_address(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sig_address(4),
	cin => \sig_address[3]~12\,
	combout => \sig_address[4]~13_combout\);

-- Location: FF_X51_Y26_N13
\sig_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_address[4]~13_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_address[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_address(4));

-- Location: M9K_X53_Y26_N0
\MEMORY|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0018400BA002E400B8002DC00B6002D400B4002CC00B2002C400B0002BC00AE002B400AC002AC00AA0000000110000000000004400000000000110000000AB003F800CA003040001",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ROM_CRC.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM_CRC:MEMORY|altsyncram:altsyncram_component|altsyncram_jiq3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 5,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sysclk~inputclkctrl_outclk\,
	portaaddr => \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y26_N22
\sig_rom_sf~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rom_sf~10_combout\ = (\MEMORY|altsyncram_component|auto_generated|q_a\(0) & ((\state_t.s7~q\) # (!\state_t.s0a~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_t.s7~q\,
	datab => \state_t.s0a~q\,
	datad => \MEMORY|altsyncram_component|auto_generated|q_a\(0),
	combout => \sig_rom_sf~10_combout\);

-- Location: LCCOMB_X52_Y26_N16
\sig_rom_sf[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rom_sf[7]~3_combout\ = (\resetn~input_o\ & (\sig_cut~q\ & !\sig_cut_not~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~input_o\,
	datac => \sig_cut~q\,
	datad => \sig_cut_not~q\,
	combout => \sig_rom_sf[7]~3_combout\);

-- Location: FF_X52_Y26_N23
\sig_rom_sf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rom_sf~10_combout\,
	ena => \sig_rom_sf[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rom_sf(0));

-- Location: LCCOMB_X52_Y26_N20
\sig_rom_sf~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rom_sf~9_combout\ = (\state_t.s7~q\ & (((\MEMORY|altsyncram_component|auto_generated|q_a\(1))))) # (!\state_t.s7~q\ & ((\state_t.s0a~q\ & (sig_rom_sf(0))) # (!\state_t.s0a~q\ & ((\MEMORY|altsyncram_component|auto_generated|q_a\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_t.s7~q\,
	datab => \state_t.s0a~q\,
	datac => sig_rom_sf(0),
	datad => \MEMORY|altsyncram_component|auto_generated|q_a\(1),
	combout => \sig_rom_sf~9_combout\);

-- Location: FF_X52_Y26_N21
\sig_rom_sf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rom_sf~9_combout\,
	ena => \sig_rom_sf[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rom_sf(1));

-- Location: LCCOMB_X52_Y26_N10
\sig_rom_sf~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rom_sf~8_combout\ = (\state_t.s7~q\ & (((\MEMORY|altsyncram_component|auto_generated|q_a\(2))))) # (!\state_t.s7~q\ & ((\state_t.s0a~q\ & ((sig_rom_sf(1)))) # (!\state_t.s0a~q\ & (\MEMORY|altsyncram_component|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_t.s7~q\,
	datab => \state_t.s0a~q\,
	datac => \MEMORY|altsyncram_component|auto_generated|q_a\(2),
	datad => sig_rom_sf(1),
	combout => \sig_rom_sf~8_combout\);

-- Location: FF_X52_Y26_N11
\sig_rom_sf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rom_sf~8_combout\,
	ena => \sig_rom_sf[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rom_sf(2));

-- Location: LCCOMB_X52_Y26_N8
\sig_rom_sf~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rom_sf~7_combout\ = (\state_t.s0a~q\ & ((\state_t.s7~q\ & ((\MEMORY|altsyncram_component|auto_generated|q_a\(3)))) # (!\state_t.s7~q\ & (sig_rom_sf(2))))) # (!\state_t.s0a~q\ & (((\MEMORY|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_rom_sf(2),
	datab => \state_t.s0a~q\,
	datac => \state_t.s7~q\,
	datad => \MEMORY|altsyncram_component|auto_generated|q_a\(3),
	combout => \sig_rom_sf~7_combout\);

-- Location: FF_X52_Y26_N9
\sig_rom_sf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rom_sf~7_combout\,
	ena => \sig_rom_sf[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rom_sf(3));

-- Location: LCCOMB_X52_Y26_N4
\sig_rom_sf~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rom_sf~6_combout\ = (\state_t.s7~q\ & (((\MEMORY|altsyncram_component|auto_generated|q_a\(4))))) # (!\state_t.s7~q\ & ((\state_t.s0a~q\ & (sig_rom_sf(3))) # (!\state_t.s0a~q\ & ((\MEMORY|altsyncram_component|auto_generated|q_a\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_t.s7~q\,
	datab => \state_t.s0a~q\,
	datac => sig_rom_sf(3),
	datad => \MEMORY|altsyncram_component|auto_generated|q_a\(4),
	combout => \sig_rom_sf~6_combout\);

-- Location: FF_X52_Y26_N5
\sig_rom_sf[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rom_sf~6_combout\,
	ena => \sig_rom_sf[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rom_sf(4));

-- Location: LCCOMB_X52_Y26_N26
\sig_rom_sf~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rom_sf~5_combout\ = (\state_t.s7~q\ & (((\MEMORY|altsyncram_component|auto_generated|q_a\(5))))) # (!\state_t.s7~q\ & ((\state_t.s0a~q\ & (sig_rom_sf(4))) # (!\state_t.s0a~q\ & ((\MEMORY|altsyncram_component|auto_generated|q_a\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_t.s7~q\,
	datab => \state_t.s0a~q\,
	datac => sig_rom_sf(4),
	datad => \MEMORY|altsyncram_component|auto_generated|q_a\(5),
	combout => \sig_rom_sf~5_combout\);

-- Location: FF_X52_Y26_N27
\sig_rom_sf[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rom_sf~5_combout\,
	ena => \sig_rom_sf[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rom_sf(5));

-- Location: LCCOMB_X52_Y26_N2
\sig_rom_sf~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rom_sf~4_combout\ = (\state_t.s0a~q\ & ((\state_t.s7~q\ & ((\MEMORY|altsyncram_component|auto_generated|q_a\(6)))) # (!\state_t.s7~q\ & (sig_rom_sf(5))))) # (!\state_t.s0a~q\ & (((\MEMORY|altsyncram_component|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_rom_sf(5),
	datab => \state_t.s0a~q\,
	datac => \MEMORY|altsyncram_component|auto_generated|q_a\(6),
	datad => \state_t.s7~q\,
	combout => \sig_rom_sf~4_combout\);

-- Location: FF_X52_Y26_N3
\sig_rom_sf[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rom_sf~4_combout\,
	ena => \sig_rom_sf[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rom_sf(6));

-- Location: LCCOMB_X52_Y26_N24
\sig_rom_sf~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rom_sf~2_combout\ = (\state_t.s7~q\ & (((\MEMORY|altsyncram_component|auto_generated|q_a\(7))))) # (!\state_t.s7~q\ & ((\state_t.s0a~q\ & ((sig_rom_sf(6)))) # (!\state_t.s0a~q\ & (\MEMORY|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_t.s7~q\,
	datab => \state_t.s0a~q\,
	datac => \MEMORY|altsyncram_component|auto_generated|q_a\(7),
	datad => sig_rom_sf(6),
	combout => \sig_rom_sf~2_combout\);

-- Location: FF_X52_Y26_N25
\sig_rom_sf[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_rom_sf~2_combout\,
	ena => \sig_rom_sf[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_rom_sf(7));

-- Location: FF_X50_Y27_N19
\crc|crc8bit_operation:cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|Add1~10_combout\,
	ena => \crc|crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|crc8bit_operation:cnt[5]~q\);

-- Location: LCCOMB_X50_Y27_N8
\crc|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Add1~0_combout\ = \crc|crc8bit_operation:cnt[0]~q\ $ (VCC)
-- \crc|Add1~1\ = CARRY(\crc|crc8bit_operation:cnt[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|crc8bit_operation:cnt[0]~q\,
	datad => VCC,
	combout => \crc|Add1~0_combout\,
	cout => \crc|Add1~1\);

-- Location: FF_X50_Y27_N9
\crc|crc8bit_operation:cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|Add1~0_combout\,
	ena => \crc|crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|crc8bit_operation:cnt[0]~q\);

-- Location: LCCOMB_X50_Y27_N10
\crc|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Add1~2_combout\ = (\crc|crc8bit_operation:cnt[1]~q\ & (!\crc|Add1~1\)) # (!\crc|crc8bit_operation:cnt[1]~q\ & ((\crc|Add1~1\) # (GND)))
-- \crc|Add1~3\ = CARRY((!\crc|Add1~1\) # (!\crc|crc8bit_operation:cnt[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \crc|crc8bit_operation:cnt[1]~q\,
	datad => VCC,
	cin => \crc|Add1~1\,
	combout => \crc|Add1~2_combout\,
	cout => \crc|Add1~3\);

-- Location: LCCOMB_X50_Y27_N12
\crc|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Add1~4_combout\ = (\crc|crc8bit_operation:cnt[2]~q\ & (\crc|Add1~3\ $ (GND))) # (!\crc|crc8bit_operation:cnt[2]~q\ & (!\crc|Add1~3\ & VCC))
-- \crc|Add1~5\ = CARRY((\crc|crc8bit_operation:cnt[2]~q\ & !\crc|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \crc|crc8bit_operation:cnt[2]~q\,
	datad => VCC,
	cin => \crc|Add1~3\,
	combout => \crc|Add1~4_combout\,
	cout => \crc|Add1~5\);

-- Location: FF_X50_Y27_N13
\crc|crc8bit_operation:cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|Add1~4_combout\,
	ena => \crc|crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|crc8bit_operation:cnt[2]~q\);

-- Location: LCCOMB_X50_Y27_N14
\crc|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Add1~6_combout\ = (\crc|crc8bit_operation:cnt[3]~q\ & (!\crc|Add1~5\)) # (!\crc|crc8bit_operation:cnt[3]~q\ & ((\crc|Add1~5\) # (GND)))
-- \crc|Add1~7\ = CARRY((!\crc|Add1~5\) # (!\crc|crc8bit_operation:cnt[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \crc|crc8bit_operation:cnt[3]~q\,
	datad => VCC,
	cin => \crc|Add1~5\,
	combout => \crc|Add1~6_combout\,
	cout => \crc|Add1~7\);

-- Location: LCCOMB_X50_Y27_N28
\crc|cnt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|cnt~0_combout\ = (\crc|Add1~6_combout\ & ((!\crc|Equal0~0_combout\) # (!\crc|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|Equal0~1_combout\,
	datac => \crc|Add1~6_combout\,
	datad => \crc|Equal0~0_combout\,
	combout => \crc|cnt~0_combout\);

-- Location: FF_X50_Y27_N29
\crc|crc8bit_operation:cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|cnt~0_combout\,
	ena => \crc|crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|crc8bit_operation:cnt[3]~q\);

-- Location: LCCOMB_X50_Y27_N16
\crc|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Add1~8_combout\ = (\crc|crc8bit_operation:cnt[4]~q\ & (\crc|Add1~7\ $ (GND))) # (!\crc|crc8bit_operation:cnt[4]~q\ & (!\crc|Add1~7\ & VCC))
-- \crc|Add1~9\ = CARRY((\crc|crc8bit_operation:cnt[4]~q\ & !\crc|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \crc|crc8bit_operation:cnt[4]~q\,
	datad => VCC,
	cin => \crc|Add1~7\,
	combout => \crc|Add1~8_combout\,
	cout => \crc|Add1~9\);

-- Location: LCCOMB_X50_Y27_N24
\crc|cnt~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|cnt~1_combout\ = (\crc|Add1~8_combout\ & ((!\crc|Equal0~1_combout\) # (!\crc|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|Equal0~0_combout\,
	datac => \crc|Equal0~1_combout\,
	datad => \crc|Add1~8_combout\,
	combout => \crc|cnt~1_combout\);

-- Location: FF_X50_Y27_N25
\crc|crc8bit_operation:cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|cnt~1_combout\,
	ena => \crc|crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|crc8bit_operation:cnt[4]~q\);

-- Location: LCCOMB_X50_Y27_N18
\crc|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Add1~10_combout\ = (\crc|crc8bit_operation:cnt[5]~q\ & (!\crc|Add1~9\)) # (!\crc|crc8bit_operation:cnt[5]~q\ & ((\crc|Add1~9\) # (GND)))
-- \crc|Add1~11\ = CARRY((!\crc|Add1~9\) # (!\crc|crc8bit_operation:cnt[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \crc|crc8bit_operation:cnt[5]~q\,
	datad => VCC,
	cin => \crc|Add1~9\,
	combout => \crc|Add1~10_combout\,
	cout => \crc|Add1~11\);

-- Location: LCCOMB_X50_Y27_N2
\crc|cnt~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|cnt~2_combout\ = (\crc|Add1~12_combout\ & ((!\crc|Equal0~1_combout\) # (!\crc|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|Equal0~0_combout\,
	datac => \crc|Equal0~1_combout\,
	datad => \crc|Add1~12_combout\,
	combout => \crc|cnt~2_combout\);

-- Location: FF_X50_Y27_N3
\crc|crc8bit_operation:cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|cnt~2_combout\,
	ena => \crc|crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|crc8bit_operation:cnt[6]~q\);

-- Location: LCCOMB_X50_Y27_N20
\crc|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Add1~12_combout\ = (\crc|crc8bit_operation:cnt[6]~q\ & (\crc|Add1~11\ $ (GND))) # (!\crc|crc8bit_operation:cnt[6]~q\ & (!\crc|Add1~11\ & VCC))
-- \crc|Add1~13\ = CARRY((\crc|crc8bit_operation:cnt[6]~q\ & !\crc|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \crc|crc8bit_operation:cnt[6]~q\,
	datad => VCC,
	cin => \crc|Add1~11\,
	combout => \crc|Add1~12_combout\,
	cout => \crc|Add1~13\);

-- Location: LCCOMB_X50_Y27_N4
\crc|cnt~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|cnt~3_combout\ = (\crc|Add1~14_combout\ & ((!\crc|Equal0~0_combout\) # (!\crc|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|Equal0~1_combout\,
	datac => \crc|Add1~14_combout\,
	datad => \crc|Equal0~0_combout\,
	combout => \crc|cnt~3_combout\);

-- Location: FF_X50_Y27_N5
\crc|crc8bit_operation:cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|cnt~3_combout\,
	ena => \crc|crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|crc8bit_operation:cnt[7]~q\);

-- Location: LCCOMB_X50_Y27_N22
\crc|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Add1~14_combout\ = \crc|crc8bit_operation:cnt[7]~q\ $ (\crc|Add1~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \crc|crc8bit_operation:cnt[7]~q\,
	cin => \crc|Add1~13\,
	combout => \crc|Add1~14_combout\);

-- Location: LCCOMB_X50_Y27_N30
\crc|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Equal0~1_combout\ = (!\crc|Add1~10_combout\ & (\crc|Add1~12_combout\ & (\crc|Add1~14_combout\ & \crc|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|Add1~10_combout\,
	datab => \crc|Add1~12_combout\,
	datac => \crc|Add1~14_combout\,
	datad => \crc|Add1~8_combout\,
	combout => \crc|Equal0~1_combout\);

-- Location: LCCOMB_X54_Y27_N0
\crc|sig_correlation[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[0]~5_combout\ = !\crc|sig_correlation\(0)
-- \crc|sig_correlation[0]~6\ = CARRY(!\crc|sig_correlation\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \crc|sig_correlation\(0),
	combout => \crc|sig_correlation[0]~5_combout\,
	cout => \crc|sig_correlation[0]~6\);

-- Location: LCCOMB_X54_Y27_N18
\crc|flag~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|flag~0_combout\ = (!\crc|state_xor.s32~q\ & ((\crc|flag~q\) # ((!\sig_cut~q\ & \sig_cut_not~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|state_xor.s32~q\,
	datab => \sig_cut~q\,
	datac => \crc|flag~q\,
	datad => \sig_cut_not~q\,
	combout => \crc|flag~0_combout\);

-- Location: FF_X54_Y27_N19
\crc|flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|flag~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|flag~q\);

-- Location: LCCOMB_X54_Y27_N24
\crc|state_xor~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|state_xor~70_combout\ = (!\crc|state_xor.s0~q\ & \crc|flag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|state_xor.s0~q\,
	datad => \crc|flag~q\,
	combout => \crc|state_xor~70_combout\);

-- Location: FF_X54_Y27_N25
\crc|state_xor.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|state_xor~70_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s1~q\);

-- Location: FF_X58_Y25_N17
\crc|state_xor.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|state_xor.s1~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s2~q\);

-- Location: LCCOMB_X58_Y25_N12
\crc|state_xor.s3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|state_xor.s3~feeder_combout\ = \crc|state_xor.s2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc|state_xor.s2~q\,
	combout => \crc|state_xor.s3~feeder_combout\);

-- Location: FF_X58_Y25_N13
\crc|state_xor.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|state_xor.s3~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s3~q\);

-- Location: LCCOMB_X58_Y25_N26
\crc|state_xor.s4~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|state_xor.s4~feeder_combout\ = \crc|state_xor.s3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc|state_xor.s3~q\,
	combout => \crc|state_xor.s4~feeder_combout\);

-- Location: FF_X58_Y25_N27
\crc|state_xor.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|state_xor.s4~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s4~q\);

-- Location: FF_X58_Y25_N31
\crc|state_xor.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|state_xor.s4~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s5~q\);

-- Location: FF_X58_Y23_N25
\crc|state_xor.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|state_xor.s5~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s6~q\);

-- Location: LCCOMB_X58_Y23_N14
\crc|state_xor.s7~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|state_xor.s7~feeder_combout\ = \crc|state_xor.s6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc|state_xor.s6~q\,
	combout => \crc|state_xor.s7~feeder_combout\);

-- Location: FF_X58_Y23_N15
\crc|state_xor.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|state_xor.s7~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s7~q\);

-- Location: LCCOMB_X58_Y23_N16
\crc|state_xor.s8~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|state_xor.s8~feeder_combout\ = \crc|state_xor.s7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc|state_xor.s7~q\,
	combout => \crc|state_xor.s8~feeder_combout\);

-- Location: FF_X58_Y23_N17
\crc|state_xor.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|state_xor.s8~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s8~q\);

-- Location: LCCOMB_X58_Y23_N6
\crc|state_xor.s9~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|state_xor.s9~feeder_combout\ = \crc|state_xor.s8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc|state_xor.s8~q\,
	combout => \crc|state_xor.s9~feeder_combout\);

-- Location: FF_X58_Y23_N7
\crc|state_xor.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|state_xor.s9~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s9~q\);

-- Location: LCCOMB_X58_Y23_N28
\crc|state_xor.s10~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|state_xor.s10~feeder_combout\ = \crc|state_xor.s9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc|state_xor.s9~q\,
	combout => \crc|state_xor.s10~feeder_combout\);

-- Location: FF_X58_Y23_N29
\crc|state_xor.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|state_xor.s10~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s10~q\);

-- Location: LCCOMB_X58_Y23_N18
\crc|state_xor.s11~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|state_xor.s11~feeder_combout\ = \crc|state_xor.s10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc|state_xor.s10~q\,
	combout => \crc|state_xor.s11~feeder_combout\);

-- Location: FF_X58_Y23_N19
\crc|state_xor.s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|state_xor.s11~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s11~q\);

-- Location: FF_X58_Y23_N23
\crc|state_xor.s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|state_xor.s11~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s12~q\);

-- Location: LCCOMB_X58_Y23_N30
\crc|state_xor.s13~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|state_xor.s13~feeder_combout\ = \crc|state_xor.s12~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc|state_xor.s12~q\,
	combout => \crc|state_xor.s13~feeder_combout\);

-- Location: FF_X58_Y23_N31
\crc|state_xor.s13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|state_xor.s13~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s13~q\);

-- Location: FF_X57_Y23_N15
\crc|state_xor.s14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|state_xor.s13~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s14~q\);

-- Location: FF_X57_Y23_N25
\crc|state_xor.s15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|state_xor.s14~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s15~q\);

-- Location: LCCOMB_X57_Y23_N8
\crc|state_xor.s16~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|state_xor.s16~feeder_combout\ = \crc|state_xor.s15~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc|state_xor.s15~q\,
	combout => \crc|state_xor.s16~feeder_combout\);

-- Location: FF_X57_Y23_N9
\crc|state_xor.s16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|state_xor.s16~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s16~q\);

-- Location: FF_X57_Y23_N21
\crc|state_xor.s17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|state_xor.s16~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s17~q\);

-- Location: FF_X57_Y23_N29
\crc|state_xor.s18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|state_xor.s17~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s18~q\);

-- Location: FF_X57_Y23_N27
\crc|state_xor.s19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|state_xor.s18~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s19~q\);

-- Location: FF_X57_Y24_N13
\crc|state_xor.s20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|state_xor.s19~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s20~q\);

-- Location: LCCOMB_X57_Y24_N8
\crc|state_xor.s21~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|state_xor.s21~feeder_combout\ = \crc|state_xor.s20~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc|state_xor.s20~q\,
	combout => \crc|state_xor.s21~feeder_combout\);

-- Location: FF_X57_Y24_N9
\crc|state_xor.s21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|state_xor.s21~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s21~q\);

-- Location: FF_X57_Y24_N31
\crc|state_xor.s22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|state_xor.s21~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s22~q\);

-- Location: FF_X57_Y24_N21
\crc|state_xor.s23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|state_xor.s22~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s23~q\);

-- Location: FF_X57_Y24_N19
\crc|state_xor.s24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|state_xor.s23~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s24~q\);

-- Location: FF_X60_Y23_N19
\crc|state_xor.s25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|state_xor.s24~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s25~q\);

-- Location: FF_X60_Y23_N15
\crc|state_xor.s26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|state_xor.s25~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s26~q\);

-- Location: FF_X60_Y23_N5
\crc|state_xor.s27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|state_xor.s26~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s27~q\);

-- Location: FF_X60_Y23_N29
\crc|state_xor.s28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|state_xor.s27~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s28~q\);

-- Location: FF_X60_Y23_N7
\crc|state_xor.s29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|state_xor.s28~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s29~q\);

-- Location: FF_X60_Y23_N21
\crc|state_xor.s30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|state_xor.s29~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s30~q\);

-- Location: LCCOMB_X60_Y23_N16
\crc|state_xor.s31~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|state_xor.s31~feeder_combout\ = \crc|state_xor.s30~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc|state_xor.s30~q\,
	combout => \crc|state_xor.s31~feeder_combout\);

-- Location: FF_X60_Y23_N17
\crc|state_xor.s31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|state_xor.s31~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s31~q\);

-- Location: LCCOMB_X60_Y23_N24
\crc|state_xor.s32~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|state_xor.s32~feeder_combout\ = \crc|state_xor.s31~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc|state_xor.s31~q\,
	combout => \crc|state_xor.s32~feeder_combout\);

-- Location: FF_X60_Y23_N25
\crc|state_xor.s32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|state_xor.s32~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s32~q\);

-- Location: LCCOMB_X54_Y27_N30
\crc|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Selector0~0_combout\ = (!\crc|state_xor.s32~q\ & ((\crc|state_xor.s0~q\) # (\crc|flag~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|state_xor.s32~q\,
	datac => \crc|state_xor.s0~q\,
	datad => \crc|flag~q\,
	combout => \crc|Selector0~0_combout\);

-- Location: FF_X54_Y27_N31
\crc|state_xor.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|Selector0~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_xor.s0~q\);

-- Location: LCCOMB_X55_Y23_N0
\crc|sig_main_clk_f~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_main_clk_f~0_combout\ = (\sig_cut_not~q\ & !\sig_cut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_cut_not~q\,
	datac => \sig_cut~q\,
	combout => \crc|sig_main_clk_f~0_combout\);

-- Location: FF_X58_Y25_N29
\crc|sig_sf_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_rom_sf(7),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(0));

-- Location: LCCOMB_X58_Y25_N10
\crc|sig_sf_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_sf_reg[1]~feeder_combout\ = \crc|sig_sf_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc|sig_sf_reg\(0),
	combout => \crc|sig_sf_reg[1]~feeder_combout\);

-- Location: FF_X58_Y25_N11
\crc|sig_sf_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|sig_sf_reg[1]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(1));

-- Location: LCCOMB_X58_Y25_N28
\crc|sig_correlation[3]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~45_combout\ = (\crc|state_xor.s1~q\ & (((!\crc|sig_sf_reg\(0))))) # (!\crc|state_xor.s1~q\ & (\crc|state_xor.s2~q\ & ((!\crc|sig_sf_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|state_xor.s1~q\,
	datab => \crc|state_xor.s2~q\,
	datac => \crc|sig_sf_reg\(0),
	datad => \crc|sig_sf_reg\(1),
	combout => \crc|sig_correlation[3]~45_combout\);

-- Location: LCCOMB_X58_Y25_N18
\crc|sig_correlation[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~7_combout\ = (!\crc|state_xor.s1~q\ & !\crc|state_xor.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|state_xor.s1~q\,
	datad => \crc|state_xor.s2~q\,
	combout => \crc|sig_correlation[3]~7_combout\);

-- Location: LCCOMB_X58_Y25_N20
\crc|sig_correlation[3]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~43_combout\ = (!\crc|state_xor.s3~q\ & (!\crc|state_xor.s5~q\ & !\crc|state_xor.s4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|state_xor.s3~q\,
	datab => \crc|state_xor.s5~q\,
	datad => \crc|state_xor.s4~q\,
	combout => \crc|sig_correlation[3]~43_combout\);

-- Location: LCCOMB_X58_Y23_N24
\crc|sig_correlation[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~13_combout\ = (!\crc|state_xor.s9~q\ & (!\crc|state_xor.s8~q\ & (!\crc|state_xor.s6~q\ & !\crc|state_xor.s7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|state_xor.s9~q\,
	datab => \crc|state_xor.s8~q\,
	datac => \crc|state_xor.s6~q\,
	datad => \crc|state_xor.s7~q\,
	combout => \crc|sig_correlation[3]~13_combout\);

-- Location: FF_X58_Y25_N19
\crc|sig_sf_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|sig_sf_reg\(1),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(2));

-- Location: FF_X58_Y25_N21
\crc|sig_sf_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|sig_sf_reg\(2),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(3));

-- Location: FF_X58_Y25_N25
\crc|sig_sf_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|sig_sf_reg\(3),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(4));

-- Location: FF_X58_Y23_N21
\crc|sig_sf_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|sig_sf_reg\(4),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(5));

-- Location: FF_X58_Y23_N13
\crc|sig_sf_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|sig_sf_reg\(5),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(6));

-- Location: FF_X58_Y23_N11
\crc|sig_sf_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|sig_sf_reg\(6),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(7));

-- Location: LCCOMB_X58_Y23_N4
\crc|sig_sf_reg[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_sf_reg[8]~feeder_combout\ = \crc|sig_sf_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc|sig_sf_reg\(7),
	combout => \crc|sig_sf_reg[8]~feeder_combout\);

-- Location: FF_X58_Y23_N5
\crc|sig_sf_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|sig_sf_reg[8]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(8));

-- Location: LCCOMB_X58_Y23_N10
\crc|sig_correlation[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~10_combout\ = (\crc|state_xor.s8~q\ & (((!\crc|sig_sf_reg\(7))))) # (!\crc|state_xor.s8~q\ & (\crc|sig_sf_reg\(8) & ((\crc|state_xor.s9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|sig_sf_reg\(8),
	datab => \crc|state_xor.s8~q\,
	datac => \crc|sig_sf_reg\(7),
	datad => \crc|state_xor.s9~q\,
	combout => \crc|sig_correlation[3]~10_combout\);

-- Location: LCCOMB_X58_Y23_N12
\crc|sig_correlation[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~11_combout\ = (\crc|state_xor.s7~q\ & ((\crc|sig_sf_reg\(6)))) # (!\crc|state_xor.s7~q\ & (\crc|sig_correlation[3]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|state_xor.s7~q\,
	datab => \crc|sig_correlation[3]~10_combout\,
	datac => \crc|sig_sf_reg\(6),
	combout => \crc|sig_correlation[3]~11_combout\);

-- Location: LCCOMB_X58_Y23_N20
\crc|sig_correlation[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~12_combout\ = (\crc|state_xor.s6~q\ & ((!\crc|sig_sf_reg\(5)))) # (!\crc|state_xor.s6~q\ & (\crc|sig_correlation[3]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \crc|sig_correlation[3]~11_combout\,
	datac => \crc|sig_sf_reg\(5),
	datad => \crc|state_xor.s6~q\,
	combout => \crc|sig_correlation[3]~12_combout\);

-- Location: LCCOMB_X57_Y24_N14
\crc|sig_correlation[3]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~32_combout\ = (!\crc|state_xor.s23~q\ & (!\crc|state_xor.s21~q\ & (!\crc|state_xor.s22~q\ & !\crc|state_xor.s20~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|state_xor.s23~q\,
	datab => \crc|state_xor.s21~q\,
	datac => \crc|state_xor.s22~q\,
	datad => \crc|state_xor.s20~q\,
	combout => \crc|sig_correlation[3]~32_combout\);

-- Location: FF_X58_Y23_N3
\crc|sig_sf_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|sig_sf_reg\(8),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(9));

-- Location: FF_X58_Y23_N1
\crc|sig_sf_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|sig_sf_reg\(9),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(10));

-- Location: FF_X58_Y23_N27
\crc|sig_sf_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|sig_sf_reg\(10),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(11));

-- Location: FF_X57_Y23_N31
\crc|sig_sf_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|sig_sf_reg\(11),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(12));

-- Location: FF_X57_Y23_N3
\crc|sig_sf_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|sig_sf_reg\(12),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(13));

-- Location: FF_X57_Y23_N7
\crc|sig_sf_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|sig_sf_reg\(13),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(14));

-- Location: LCCOMB_X57_Y23_N10
\crc|sig_sf_reg[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_sf_reg[15]~feeder_combout\ = \crc|sig_sf_reg\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc|sig_sf_reg\(14),
	combout => \crc|sig_sf_reg[15]~feeder_combout\);

-- Location: FF_X57_Y23_N11
\crc|sig_sf_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|sig_sf_reg[15]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(15));

-- Location: FF_X57_Y23_N19
\crc|sig_sf_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|sig_sf_reg\(15),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(16));

-- Location: FF_X57_Y23_N13
\crc|sig_sf_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|sig_sf_reg\(16),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(17));

-- Location: LCCOMB_X57_Y23_N0
\crc|sig_sf_reg[18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_sf_reg[18]~feeder_combout\ = \crc|sig_sf_reg\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc|sig_sf_reg\(17),
	combout => \crc|sig_sf_reg[18]~feeder_combout\);

-- Location: FF_X57_Y23_N1
\crc|sig_sf_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|sig_sf_reg[18]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(18));

-- Location: FF_X57_Y24_N23
\crc|sig_sf_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|sig_sf_reg\(18),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(19));

-- Location: FF_X57_Y24_N11
\crc|sig_sf_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|sig_sf_reg\(19),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(20));

-- Location: LCCOMB_X57_Y24_N16
\crc|sig_sf_reg[21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_sf_reg[21]~feeder_combout\ = \crc|sig_sf_reg\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc|sig_sf_reg\(20),
	combout => \crc|sig_sf_reg[21]~feeder_combout\);

-- Location: FF_X57_Y24_N17
\crc|sig_sf_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|sig_sf_reg[21]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(21));

-- Location: LCCOMB_X57_Y24_N26
\crc|sig_sf_reg[22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_sf_reg[22]~feeder_combout\ = \crc|sig_sf_reg\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc|sig_sf_reg\(21),
	combout => \crc|sig_sf_reg[22]~feeder_combout\);

-- Location: FF_X57_Y24_N27
\crc|sig_sf_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|sig_sf_reg[22]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(22));

-- Location: FF_X57_Y24_N25
\crc|sig_sf_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|sig_sf_reg\(22),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(23));

-- Location: LCCOMB_X57_Y24_N24
\crc|sig_correlation[3]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~33_combout\ = (\crc|sig_correlation[3]~32_combout\ & ((!\crc|state_xor.s24~q\) # (!\crc|sig_sf_reg\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|sig_correlation[3]~32_combout\,
	datac => \crc|sig_sf_reg\(23),
	datad => \crc|state_xor.s24~q\,
	combout => \crc|sig_correlation[3]~33_combout\);

-- Location: LCCOMB_X57_Y23_N26
\crc|sig_correlation[3]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~24_combout\ = (!\crc|state_xor.s17~q\ & (!\crc|state_xor.s18~q\ & (\crc|state_xor.s19~q\ & \crc|sig_sf_reg\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|state_xor.s17~q\,
	datab => \crc|state_xor.s18~q\,
	datac => \crc|state_xor.s19~q\,
	datad => \crc|sig_sf_reg\(18),
	combout => \crc|sig_correlation[3]~24_combout\);

-- Location: LCCOMB_X57_Y24_N28
\crc|sig_sf_reg[24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_sf_reg[24]~feeder_combout\ = \crc|sig_sf_reg\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc|sig_sf_reg\(23),
	combout => \crc|sig_sf_reg[24]~feeder_combout\);

-- Location: FF_X57_Y24_N29
\crc|sig_sf_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|sig_sf_reg[24]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(24));

-- Location: FF_X60_Y23_N27
\crc|sig_sf_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|sig_sf_reg\(24),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(25));

-- Location: FF_X60_Y23_N1
\crc|sig_sf_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|sig_sf_reg\(25),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(26));

-- Location: LCCOMB_X60_Y23_N30
\crc|sig_sf_reg[27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_sf_reg[27]~feeder_combout\ = \crc|sig_sf_reg\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc|sig_sf_reg\(26),
	combout => \crc|sig_sf_reg[27]~feeder_combout\);

-- Location: FF_X60_Y23_N31
\crc|sig_sf_reg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|sig_sf_reg[27]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(27));

-- Location: FF_X60_Y23_N3
\crc|sig_sf_reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|sig_sf_reg\(27),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(28));

-- Location: LCCOMB_X60_Y23_N12
\crc|sig_sf_reg[29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_sf_reg[29]~feeder_combout\ = \crc|sig_sf_reg\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc|sig_sf_reg\(28),
	combout => \crc|sig_sf_reg[29]~feeder_combout\);

-- Location: FF_X60_Y23_N13
\crc|sig_sf_reg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|sig_sf_reg[29]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(29));

-- Location: LCCOMB_X60_Y23_N10
\crc|sig_sf_reg[30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_sf_reg[30]~feeder_combout\ = \crc|sig_sf_reg\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc|sig_sf_reg\(29),
	combout => \crc|sig_sf_reg[30]~feeder_combout\);

-- Location: FF_X60_Y23_N11
\crc|sig_sf_reg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|sig_sf_reg[30]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(30));

-- Location: FF_X60_Y23_N9
\crc|sig_sf_reg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|sig_sf_reg\(30),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(31));

-- Location: LCCOMB_X60_Y23_N8
\crc|sig_correlation[3]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~28_combout\ = (!\crc|state_xor.s30~q\ & ((\crc|state_xor.s32~q\ & ((!\crc|sig_sf_reg\(31)))) # (!\crc|state_xor.s32~q\ & (!\crc|sig_sf_reg\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|sig_sf_reg\(30),
	datab => \crc|state_xor.s30~q\,
	datac => \crc|sig_sf_reg\(31),
	datad => \crc|state_xor.s32~q\,
	combout => \crc|sig_correlation[3]~28_combout\);

-- Location: LCCOMB_X60_Y23_N26
\crc|sig_correlation[3]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~27_combout\ = (\crc|sig_sf_reg\(29) & \crc|state_xor.s30~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|sig_sf_reg\(29),
	datad => \crc|state_xor.s30~q\,
	combout => \crc|sig_correlation[3]~27_combout\);

-- Location: LCCOMB_X60_Y23_N6
\crc|sig_correlation[3]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~29_combout\ = (\crc|state_xor.s29~q\ & (((\crc|sig_sf_reg\(28))))) # (!\crc|state_xor.s29~q\ & ((\crc|sig_correlation[3]~28_combout\) # ((\crc|sig_correlation[3]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|sig_correlation[3]~28_combout\,
	datab => \crc|sig_sf_reg\(28),
	datac => \crc|state_xor.s29~q\,
	datad => \crc|sig_correlation[3]~27_combout\,
	combout => \crc|sig_correlation[3]~29_combout\);

-- Location: LCCOMB_X60_Y23_N4
\crc|sig_correlation[3]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~26_combout\ = (\crc|state_xor.s27~q\ & (((\crc|sig_sf_reg\(26))))) # (!\crc|state_xor.s27~q\ & (\crc|sig_sf_reg\(27) & ((\crc|state_xor.s28~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|sig_sf_reg\(27),
	datab => \crc|sig_sf_reg\(26),
	datac => \crc|state_xor.s27~q\,
	datad => \crc|state_xor.s28~q\,
	combout => \crc|sig_correlation[3]~26_combout\);

-- Location: LCCOMB_X60_Y23_N22
\crc|sig_correlation[3]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~30_combout\ = (\crc|sig_correlation[3]~26_combout\) # ((\crc|sig_correlation[3]~29_combout\ & (!\crc|state_xor.s28~q\ & !\crc|state_xor.s27~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|sig_correlation[3]~29_combout\,
	datab => \crc|state_xor.s28~q\,
	datac => \crc|state_xor.s27~q\,
	datad => \crc|sig_correlation[3]~26_combout\,
	combout => \crc|sig_correlation[3]~30_combout\);

-- Location: LCCOMB_X60_Y23_N18
\crc|sig_correlation[3]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~25_combout\ = (\crc|state_xor.s25~q\ & (((\crc|sig_sf_reg\(24))))) # (!\crc|state_xor.s25~q\ & (\crc|sig_sf_reg\(25) & (\crc|state_xor.s26~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|sig_sf_reg\(25),
	datab => \crc|state_xor.s26~q\,
	datac => \crc|state_xor.s25~q\,
	datad => \crc|sig_sf_reg\(24),
	combout => \crc|sig_correlation[3]~25_combout\);

-- Location: LCCOMB_X60_Y23_N14
\crc|sig_correlation[3]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~31_combout\ = (\crc|sig_correlation[3]~25_combout\) # ((\crc|sig_correlation[3]~30_combout\ & (!\crc|state_xor.s25~q\ & !\crc|state_xor.s26~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|sig_correlation[3]~30_combout\,
	datab => \crc|state_xor.s25~q\,
	datac => \crc|state_xor.s26~q\,
	datad => \crc|sig_correlation[3]~25_combout\,
	combout => \crc|sig_correlation[3]~31_combout\);

-- Location: LCCOMB_X57_Y23_N4
\crc|sig_correlation[3]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~34_combout\ = (\crc|sig_correlation[3]~24_combout\) # ((\crc|sig_correlation[3]~33_combout\ & \crc|sig_correlation[3]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \crc|sig_correlation[3]~33_combout\,
	datac => \crc|sig_correlation[3]~24_combout\,
	datad => \crc|sig_correlation[3]~31_combout\,
	combout => \crc|sig_correlation[3]~34_combout\);

-- Location: LCCOMB_X57_Y23_N14
\crc|sig_correlation[3]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~18_combout\ = (\crc|state_xor.s13~q\) # ((\crc|state_xor.s16~q\) # ((\crc|state_xor.s14~q\) # (\crc|state_xor.s15~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|state_xor.s13~q\,
	datab => \crc|state_xor.s16~q\,
	datac => \crc|state_xor.s14~q\,
	datad => \crc|state_xor.s15~q\,
	combout => \crc|sig_correlation[3]~18_combout\);

-- Location: LCCOMB_X57_Y23_N12
\crc|sig_correlation[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~17_combout\ = (\crc|state_xor.s18~q\ & (((\crc|sig_sf_reg\(17))))) # (!\crc|state_xor.s18~q\ & (\crc|state_xor.s19~q\ & ((!\crc|sig_sf_reg\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|state_xor.s19~q\,
	datab => \crc|state_xor.s18~q\,
	datac => \crc|sig_sf_reg\(17),
	datad => \crc|sig_sf_reg\(18),
	combout => \crc|sig_correlation[3]~17_combout\);

-- Location: LCCOMB_X57_Y23_N20
\crc|sig_correlation[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~19_combout\ = (!\crc|sig_correlation[3]~18_combout\ & ((\crc|state_xor.s17~q\ & (\crc|sig_sf_reg\(16))) # (!\crc|state_xor.s17~q\ & ((!\crc|sig_correlation[3]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|sig_correlation[3]~18_combout\,
	datab => \crc|sig_sf_reg\(16),
	datac => \crc|state_xor.s17~q\,
	datad => \crc|sig_correlation[3]~17_combout\,
	combout => \crc|sig_correlation[3]~19_combout\);

-- Location: LCCOMB_X57_Y23_N28
\crc|sig_correlation[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~20_combout\ = (\crc|state_xor.s17~q\ & (\crc|sig_sf_reg\(16))) # (!\crc|state_xor.s17~q\ & (((\crc|state_xor.s18~q\ & !\crc|sig_sf_reg\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|state_xor.s17~q\,
	datab => \crc|sig_sf_reg\(16),
	datac => \crc|state_xor.s18~q\,
	datad => \crc|sig_sf_reg\(17),
	combout => \crc|sig_correlation[3]~20_combout\);

-- Location: LCCOMB_X57_Y24_N18
\crc|sig_correlation[3]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~21_combout\ = (!\crc|state_xor.s22~q\ & (\crc|state_xor.s24~q\ & !\crc|state_xor.s21~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|state_xor.s22~q\,
	datac => \crc|state_xor.s24~q\,
	datad => \crc|state_xor.s21~q\,
	combout => \crc|sig_correlation[3]~21_combout\);

-- Location: LCCOMB_X57_Y24_N20
\crc|sig_correlation[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~22_combout\ = (\crc|sig_correlation[3]~21_combout\ & (!\crc|state_xor.s23~q\ & !\crc|sig_sf_reg\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \crc|sig_correlation[3]~21_combout\,
	datac => \crc|state_xor.s23~q\,
	datad => \crc|sig_sf_reg\(23),
	combout => \crc|sig_correlation[3]~22_combout\);

-- Location: LCCOMB_X57_Y24_N22
\crc|sig_correlation[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~23_combout\ = (\crc|sig_correlation[3]~20_combout\) # ((\crc|state_xor.s20~q\ & (!\crc|sig_sf_reg\(19))) # (!\crc|state_xor.s20~q\ & ((\crc|sig_correlation[3]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|state_xor.s20~q\,
	datab => \crc|sig_correlation[3]~20_combout\,
	datac => \crc|sig_sf_reg\(19),
	datad => \crc|sig_correlation[3]~22_combout\,
	combout => \crc|sig_correlation[3]~23_combout\);

-- Location: LCCOMB_X57_Y24_N30
\crc|sig_correlation[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~15_combout\ = (\crc|state_xor.s22~q\ & (((\crc|sig_sf_reg\(21))))) # (!\crc|state_xor.s22~q\ & (!\crc|sig_sf_reg\(22) & (\crc|state_xor.s23~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|sig_sf_reg\(22),
	datab => \crc|state_xor.s23~q\,
	datac => \crc|state_xor.s22~q\,
	datad => \crc|sig_sf_reg\(21),
	combout => \crc|sig_correlation[3]~15_combout\);

-- Location: LCCOMB_X57_Y24_N12
\crc|sig_correlation[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~16_combout\ = (!\crc|state_xor.s20~q\ & ((\crc|state_xor.s21~q\ & ((\crc|sig_sf_reg\(20)))) # (!\crc|state_xor.s21~q\ & (\crc|sig_correlation[3]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|sig_correlation[3]~15_combout\,
	datab => \crc|state_xor.s21~q\,
	datac => \crc|state_xor.s20~q\,
	datad => \crc|sig_sf_reg\(20),
	combout => \crc|sig_correlation[3]~16_combout\);

-- Location: LCCOMB_X57_Y23_N22
\crc|sig_correlation[3]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~35_combout\ = (\crc|sig_correlation[3]~19_combout\ & ((\crc|sig_correlation[3]~34_combout\) # ((\crc|sig_correlation[3]~23_combout\) # (\crc|sig_correlation[3]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|sig_correlation[3]~34_combout\,
	datab => \crc|sig_correlation[3]~19_combout\,
	datac => \crc|sig_correlation[3]~23_combout\,
	datad => \crc|sig_correlation[3]~16_combout\,
	combout => \crc|sig_correlation[3]~35_combout\);

-- Location: LCCOMB_X57_Y23_N18
\crc|sig_correlation[3]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~37_combout\ = (\crc|state_xor.s15~q\ & (!\crc|sig_sf_reg\(14))) # (!\crc|state_xor.s15~q\ & (((\crc|state_xor.s16~q\ & !\crc|sig_sf_reg\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|sig_sf_reg\(14),
	datab => \crc|state_xor.s16~q\,
	datac => \crc|sig_sf_reg\(15),
	datad => \crc|state_xor.s15~q\,
	combout => \crc|sig_correlation[3]~37_combout\);

-- Location: LCCOMB_X57_Y23_N2
\crc|sig_correlation[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~38_combout\ = (!\crc|state_xor.s13~q\ & ((\crc|state_xor.s14~q\ & (!\crc|sig_sf_reg\(13))) # (!\crc|state_xor.s14~q\ & ((\crc|sig_correlation[3]~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|state_xor.s13~q\,
	datab => \crc|state_xor.s14~q\,
	datac => \crc|sig_sf_reg\(13),
	datad => \crc|sig_correlation[3]~37_combout\,
	combout => \crc|sig_correlation[3]~38_combout\);

-- Location: LCCOMB_X57_Y23_N30
\crc|sig_correlation[3]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~36_combout\ = (\crc|state_xor.s13~q\ & !\crc|sig_sf_reg\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|state_xor.s13~q\,
	datac => \crc|sig_sf_reg\(12),
	combout => \crc|sig_correlation[3]~36_combout\);

-- Location: LCCOMB_X58_Y23_N22
\crc|sig_correlation[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~14_combout\ = (!\crc|state_xor.s11~q\ & (!\crc|state_xor.s12~q\ & !\crc|state_xor.s10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|state_xor.s11~q\,
	datac => \crc|state_xor.s12~q\,
	datad => \crc|state_xor.s10~q\,
	combout => \crc|sig_correlation[3]~14_combout\);

-- Location: LCCOMB_X57_Y23_N16
\crc|sig_correlation[3]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~39_combout\ = (\crc|sig_correlation[3]~14_combout\ & ((\crc|sig_correlation[3]~35_combout\) # ((\crc|sig_correlation[3]~38_combout\) # (\crc|sig_correlation[3]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|sig_correlation[3]~35_combout\,
	datab => \crc|sig_correlation[3]~38_combout\,
	datac => \crc|sig_correlation[3]~36_combout\,
	datad => \crc|sig_correlation[3]~14_combout\,
	combout => \crc|sig_correlation[3]~39_combout\);

-- Location: LCCOMB_X58_Y23_N0
\crc|sig_correlation[3]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~40_combout\ = (\crc|state_xor.s11~q\ & (((!\crc|sig_sf_reg\(10))))) # (!\crc|state_xor.s11~q\ & (!\crc|sig_sf_reg\(11) & (\crc|state_xor.s12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|sig_sf_reg\(11),
	datab => \crc|state_xor.s12~q\,
	datac => \crc|sig_sf_reg\(10),
	datad => \crc|state_xor.s11~q\,
	combout => \crc|sig_correlation[3]~40_combout\);

-- Location: LCCOMB_X58_Y23_N2
\crc|sig_correlation[3]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~41_combout\ = (\crc|state_xor.s10~q\ & (!\crc|sig_sf_reg\(9))) # (!\crc|state_xor.s10~q\ & ((\crc|sig_correlation[3]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \crc|state_xor.s10~q\,
	datac => \crc|sig_sf_reg\(9),
	datad => \crc|sig_correlation[3]~40_combout\,
	combout => \crc|sig_correlation[3]~41_combout\);

-- Location: LCCOMB_X58_Y23_N8
\crc|sig_correlation[3]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~42_combout\ = (\crc|sig_correlation[3]~12_combout\) # ((\crc|sig_correlation[3]~13_combout\ & ((\crc|sig_correlation[3]~39_combout\) # (\crc|sig_correlation[3]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|sig_correlation[3]~13_combout\,
	datab => \crc|sig_correlation[3]~12_combout\,
	datac => \crc|sig_correlation[3]~39_combout\,
	datad => \crc|sig_correlation[3]~41_combout\,
	combout => \crc|sig_correlation[3]~42_combout\);

-- Location: LCCOMB_X58_Y25_N22
\crc|sig_correlation[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~8_combout\ = (\crc|state_xor.s4~q\ & (((!\crc|sig_sf_reg\(3))))) # (!\crc|state_xor.s4~q\ & (\crc|state_xor.s5~q\ & ((\crc|sig_sf_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|state_xor.s5~q\,
	datab => \crc|sig_sf_reg\(3),
	datac => \crc|state_xor.s4~q\,
	datad => \crc|sig_sf_reg\(4),
	combout => \crc|sig_correlation[3]~8_combout\);

-- Location: LCCOMB_X58_Y25_N24
\crc|sig_correlation[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~9_combout\ = (\crc|state_xor.s3~q\ & ((\crc|sig_sf_reg\(2)))) # (!\crc|state_xor.s3~q\ & (\crc|sig_correlation[3]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|sig_correlation[3]~8_combout\,
	datab => \crc|sig_sf_reg\(2),
	datad => \crc|state_xor.s3~q\,
	combout => \crc|sig_correlation[3]~9_combout\);

-- Location: LCCOMB_X58_Y25_N8
\crc|sig_correlation[3]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~44_combout\ = (\crc|sig_correlation[3]~7_combout\ & ((\crc|sig_correlation[3]~9_combout\) # ((\crc|sig_correlation[3]~43_combout\ & \crc|sig_correlation[3]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|sig_correlation[3]~7_combout\,
	datab => \crc|sig_correlation[3]~43_combout\,
	datac => \crc|sig_correlation[3]~42_combout\,
	datad => \crc|sig_correlation[3]~9_combout\,
	combout => \crc|sig_correlation[3]~44_combout\);

-- Location: LCCOMB_X54_Y27_N10
\crc|sig_correlation[3]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~46_combout\ = ((!\crc|sig_correlation[3]~45_combout\ & !\crc|sig_correlation[3]~44_combout\)) # (!\crc|state_xor.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|state_xor.s0~q\,
	datab => \crc|sig_correlation[3]~45_combout\,
	datac => \crc|sig_correlation[3]~44_combout\,
	combout => \crc|sig_correlation[3]~46_combout\);

-- Location: LCCOMB_X54_Y27_N28
\crc|sig_correlation[3]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~47_combout\ = (\crc|sig_main_clk_f~0_combout\) # ((\crc|state_xor.s0~q\ & ((\crc|sig_correlation[3]~45_combout\) # (\crc|sig_correlation[3]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|state_xor.s0~q\,
	datab => \crc|sig_correlation[3]~45_combout\,
	datac => \crc|sig_correlation[3]~44_combout\,
	datad => \crc|sig_main_clk_f~0_combout\,
	combout => \crc|sig_correlation[3]~47_combout\);

-- Location: FF_X54_Y27_N1
\crc|sig_correlation[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|sig_correlation[0]~5_combout\,
	asdata => VCC,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => \crc|sig_correlation[3]~46_combout\,
	ena => \crc|sig_correlation[3]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_correlation\(0));

-- Location: LCCOMB_X54_Y27_N2
\crc|sig_correlation[1]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[1]~48_combout\ = (\crc|sig_correlation\(1) & ((GND) # (!\crc|sig_correlation[0]~6\))) # (!\crc|sig_correlation\(1) & (\crc|sig_correlation[0]~6\ $ (GND)))
-- \crc|sig_correlation[1]~49\ = CARRY((\crc|sig_correlation\(1)) # (!\crc|sig_correlation[0]~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \crc|sig_correlation\(1),
	datad => VCC,
	cin => \crc|sig_correlation[0]~6\,
	combout => \crc|sig_correlation[1]~48_combout\,
	cout => \crc|sig_correlation[1]~49\);

-- Location: FF_X54_Y27_N3
\crc|sig_correlation[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|sig_correlation[1]~48_combout\,
	asdata => VCC,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => \crc|sig_correlation[3]~46_combout\,
	ena => \crc|sig_correlation[3]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_correlation\(1));

-- Location: LCCOMB_X54_Y27_N4
\crc|sig_correlation[2]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[2]~50_combout\ = (\crc|sig_correlation\(2) & (\crc|sig_correlation[1]~49\ & VCC)) # (!\crc|sig_correlation\(2) & (!\crc|sig_correlation[1]~49\))
-- \crc|sig_correlation[2]~51\ = CARRY((!\crc|sig_correlation\(2) & !\crc|sig_correlation[1]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \crc|sig_correlation\(2),
	datad => VCC,
	cin => \crc|sig_correlation[1]~49\,
	combout => \crc|sig_correlation[2]~50_combout\,
	cout => \crc|sig_correlation[2]~51\);

-- Location: FF_X54_Y27_N5
\crc|sig_correlation[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|sig_correlation[2]~50_combout\,
	asdata => VCC,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => \crc|sig_correlation[3]~46_combout\,
	ena => \crc|sig_correlation[3]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_correlation\(2));

-- Location: LCCOMB_X54_Y27_N6
\crc|sig_correlation[3]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[3]~52_combout\ = (\crc|sig_correlation\(3) & ((GND) # (!\crc|sig_correlation[2]~51\))) # (!\crc|sig_correlation\(3) & (\crc|sig_correlation[2]~51\ $ (GND)))
-- \crc|sig_correlation[3]~53\ = CARRY((\crc|sig_correlation\(3)) # (!\crc|sig_correlation[2]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \crc|sig_correlation\(3),
	datad => VCC,
	cin => \crc|sig_correlation[2]~51\,
	combout => \crc|sig_correlation[3]~52_combout\,
	cout => \crc|sig_correlation[3]~53\);

-- Location: FF_X54_Y27_N7
\crc|sig_correlation[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|sig_correlation[3]~52_combout\,
	asdata => VCC,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => \crc|sig_correlation[3]~46_combout\,
	ena => \crc|sig_correlation[3]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_correlation\(3));

-- Location: LCCOMB_X54_Y27_N22
\og|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|LessThan0~0_combout\ = (\crc|sig_correlation\(3) & (\crc|sig_correlation\(2) & ((\crc|sig_correlation\(0)) # (\crc|sig_correlation\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|sig_correlation\(3),
	datab => \crc|sig_correlation\(0),
	datac => \crc|sig_correlation\(2),
	datad => \crc|sig_correlation\(1),
	combout => \og|LessThan0~0_combout\);

-- Location: LCCOMB_X49_Y27_N14
\crc|state_crc.s4~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|state_crc.s4~feeder_combout\ = \crc|state_crc.s3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc|state_crc.s3~q\,
	combout => \crc|state_crc.s4~feeder_combout\);

-- Location: FF_X49_Y27_N15
\crc|state_crc.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|state_crc.s4~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_crc.s4~q\);

-- Location: LCCOMB_X54_Y27_N8
\crc|sig_correlation[4]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_correlation[4]~54_combout\ = \crc|sig_correlation\(4) $ (!\crc|sig_correlation[3]~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \crc|sig_correlation\(4),
	cin => \crc|sig_correlation[3]~53\,
	combout => \crc|sig_correlation[4]~54_combout\);

-- Location: FF_X54_Y27_N9
\crc|sig_correlation[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|sig_correlation[4]~54_combout\,
	asdata => VCC,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => \crc|sig_correlation[3]~46_combout\,
	ena => \crc|sig_correlation[3]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_correlation\(4));

-- Location: LCCOMB_X49_Y27_N20
\crc|Selector37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Selector37~0_combout\ = (!\crc|state_crc.s4~q\ & ((\crc|state_crc.s0~q\) # ((\og|LessThan0~0_combout\ & \crc|sig_correlation\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|LessThan0~0_combout\,
	datab => \crc|state_crc.s4~q\,
	datac => \crc|state_crc.s0~q\,
	datad => \crc|sig_correlation\(4),
	combout => \crc|Selector37~0_combout\);

-- Location: FF_X49_Y27_N21
\crc|state_crc.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|Selector37~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_crc.s0~q\);

-- Location: LCCOMB_X54_Y27_N16
\crc|Selector38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Selector38~0_combout\ = (\og|LessThan0~0_combout\ & (!\crc|state_crc.s0~q\ & \crc|sig_correlation\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|LessThan0~0_combout\,
	datab => \crc|state_crc.s0~q\,
	datac => \crc|sig_correlation\(4),
	combout => \crc|Selector38~0_combout\);

-- Location: LCCOMB_X50_Y27_N0
\crc|Selector38~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Selector38~1_combout\ = (\crc|Selector38~0_combout\) # ((\crc|state_crc.s1~q\ & ((!\crc|Equal0~0_combout\) # (!\crc|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|Equal0~1_combout\,
	datab => \crc|Selector38~0_combout\,
	datac => \crc|state_crc.s1~q\,
	datad => \crc|Equal0~0_combout\,
	combout => \crc|Selector38~1_combout\);

-- Location: FF_X50_Y27_N1
\crc|state_crc.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|Selector38~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_crc.s1~q\);

-- Location: LCCOMB_X52_Y26_N14
\crc|crc8bit_operation:cnt[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|crc8bit_operation:cnt[7]~0_combout\ = (\resetn~input_o\ & (\crc|state_crc.s1~q\ & (\sig_cut~q\ & !\sig_cut_not~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~input_o\,
	datab => \crc|state_crc.s1~q\,
	datac => \sig_cut~q\,
	datad => \sig_cut_not~q\,
	combout => \crc|crc8bit_operation:cnt[7]~0_combout\);

-- Location: FF_X50_Y27_N11
\crc|crc8bit_operation:cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|Add1~2_combout\,
	ena => \crc|crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|crc8bit_operation:cnt[1]~q\);

-- Location: LCCOMB_X50_Y27_N6
\crc|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Equal0~0_combout\ = (!\crc|Add1~2_combout\ & (\crc|Add1~6_combout\ & (!\crc|Add1~0_combout\ & !\crc|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|Add1~2_combout\,
	datab => \crc|Add1~6_combout\,
	datac => \crc|Add1~0_combout\,
	datad => \crc|Add1~4_combout\,
	combout => \crc|Equal0~0_combout\);

-- Location: LCCOMB_X50_Y27_N26
\crc|Selector39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Selector39~0_combout\ = (\crc|Equal0~0_combout\ & (\crc|Equal0~1_combout\ & \crc|state_crc.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|Equal0~0_combout\,
	datac => \crc|Equal0~1_combout\,
	datad => \crc|state_crc.s1~q\,
	combout => \crc|Selector39~0_combout\);

-- Location: FF_X50_Y27_N27
\crc|state_crc.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|Selector39~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_crc.s2~q\);

-- Location: LCCOMB_X49_Y27_N10
\crc|state_crc.s3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|state_crc.s3~feeder_combout\ = \crc|state_crc.s2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc|state_crc.s2~q\,
	combout => \crc|state_crc.s3~feeder_combout\);

-- Location: FF_X49_Y27_N11
\crc|state_crc.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|state_crc.s3~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_crc.s3~q\);

-- Location: LCCOMB_X49_Y27_N28
\crc|Selector48~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Selector48~0_combout\ = (\crc|state_crc.s1~q\ & (\crc|crc_reg8bit\(7) $ (\crc|crc_reg8bit\(0) $ (sig_rom_sf(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|crc_reg8bit\(7),
	datab => \crc|crc_reg8bit\(0),
	datac => \crc|state_crc.s1~q\,
	datad => sig_rom_sf(7),
	combout => \crc|Selector48~0_combout\);

-- Location: LCCOMB_X49_Y27_N2
\crc|Selector48~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Selector48~1_combout\ = (\crc|Selector48~0_combout\) # ((!\crc|state_crc.s3~q\ & (!\crc|state_crc.s1~q\ & \crc|crc_reg8bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|state_crc.s3~q\,
	datab => \crc|state_crc.s1~q\,
	datac => \crc|crc_reg8bit\(1),
	datad => \crc|Selector48~0_combout\,
	combout => \crc|Selector48~1_combout\);

-- Location: FF_X49_Y27_N3
\crc|crc_reg8bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|Selector48~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|crc_reg8bit\(1));

-- Location: LCCOMB_X49_Y27_N30
\crc|Selector47~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Selector47~0_combout\ = (\crc|state_crc.s1~q\ & (\crc|crc_reg8bit\(7) $ (\crc|crc_reg8bit\(1) $ (sig_rom_sf(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|crc_reg8bit\(7),
	datab => \crc|crc_reg8bit\(1),
	datac => \crc|state_crc.s1~q\,
	datad => sig_rom_sf(7),
	combout => \crc|Selector47~0_combout\);

-- Location: LCCOMB_X49_Y27_N4
\crc|Selector47~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Selector47~1_combout\ = (\crc|Selector47~0_combout\) # ((!\crc|state_crc.s1~q\ & (\crc|crc_reg8bit\(2) & !\crc|state_crc.s3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|Selector47~0_combout\,
	datab => \crc|state_crc.s1~q\,
	datac => \crc|crc_reg8bit\(2),
	datad => \crc|state_crc.s3~q\,
	combout => \crc|Selector47~1_combout\);

-- Location: FF_X49_Y27_N5
\crc|crc_reg8bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|Selector47~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|crc_reg8bit\(2));

-- Location: LCCOMB_X49_Y27_N6
\crc|Selector46~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Selector46~0_combout\ = (\crc|state_crc.s1~q\ & (\crc|crc_reg8bit\(2))) # (!\crc|state_crc.s1~q\ & (((\crc|crc_reg8bit\(3) & !\crc|state_crc.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|crc_reg8bit\(2),
	datab => \crc|state_crc.s1~q\,
	datac => \crc|crc_reg8bit\(3),
	datad => \crc|state_crc.s3~q\,
	combout => \crc|Selector46~0_combout\);

-- Location: FF_X49_Y27_N7
\crc|crc_reg8bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|Selector46~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|crc_reg8bit\(3));

-- Location: LCCOMB_X49_Y27_N16
\crc|Selector45~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Selector45~0_combout\ = (\crc|state_crc.s1~q\ & (\crc|crc_reg8bit\(3))) # (!\crc|state_crc.s1~q\ & (((\crc|crc_reg8bit\(4) & !\crc|state_crc.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|crc_reg8bit\(3),
	datab => \crc|state_crc.s1~q\,
	datac => \crc|crc_reg8bit\(4),
	datad => \crc|state_crc.s3~q\,
	combout => \crc|Selector45~0_combout\);

-- Location: FF_X49_Y27_N17
\crc|crc_reg8bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|Selector45~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|crc_reg8bit\(4));

-- Location: LCCOMB_X49_Y27_N18
\crc|Selector44~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Selector44~0_combout\ = (\crc|state_crc.s1~q\ & (\crc|crc_reg8bit\(4))) # (!\crc|state_crc.s1~q\ & (((\crc|crc_reg8bit\(5) & !\crc|state_crc.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|crc_reg8bit\(4),
	datab => \crc|state_crc.s1~q\,
	datac => \crc|crc_reg8bit\(5),
	datad => \crc|state_crc.s3~q\,
	combout => \crc|Selector44~0_combout\);

-- Location: FF_X49_Y27_N19
\crc|crc_reg8bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|Selector44~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|crc_reg8bit\(5));

-- Location: LCCOMB_X49_Y27_N12
\crc|Selector43~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Selector43~0_combout\ = (\crc|state_crc.s1~q\ & (\crc|crc_reg8bit\(5))) # (!\crc|state_crc.s1~q\ & (((\crc|crc_reg8bit\(6) & !\crc|state_crc.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|crc_reg8bit\(5),
	datab => \crc|state_crc.s1~q\,
	datac => \crc|crc_reg8bit\(6),
	datad => \crc|state_crc.s3~q\,
	combout => \crc|Selector43~0_combout\);

-- Location: FF_X49_Y27_N13
\crc|crc_reg8bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|Selector43~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|crc_reg8bit\(6));

-- Location: LCCOMB_X49_Y27_N22
\crc|Selector42~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Selector42~0_combout\ = (\crc|state_crc.s1~q\ & (\crc|crc_reg8bit\(6))) # (!\crc|state_crc.s1~q\ & (((\crc|crc_reg8bit\(7) & !\crc|state_crc.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|crc_reg8bit\(6),
	datab => \crc|state_crc.s1~q\,
	datac => \crc|crc_reg8bit\(7),
	datad => \crc|state_crc.s3~q\,
	combout => \crc|Selector42~0_combout\);

-- Location: FF_X49_Y27_N23
\crc|crc_reg8bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|Selector42~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|crc_reg8bit\(7));

-- Location: LCCOMB_X49_Y27_N0
\crc|Selector49~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Selector49~0_combout\ = (\crc|state_crc.s1~q\ & (\crc|crc_reg8bit\(7) $ (sig_rom_sf(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|crc_reg8bit\(7),
	datab => \crc|state_crc.s1~q\,
	datad => sig_rom_sf(7),
	combout => \crc|Selector49~0_combout\);

-- Location: LCCOMB_X49_Y27_N8
\crc|Selector49~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Selector49~1_combout\ = (\crc|Selector49~0_combout\) # ((!\crc|state_crc.s3~q\ & (!\crc|state_crc.s1~q\ & \crc|crc_reg8bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|state_crc.s3~q\,
	datab => \crc|state_crc.s1~q\,
	datac => \crc|crc_reg8bit\(0),
	datad => \crc|Selector49~0_combout\,
	combout => \crc|Selector49~1_combout\);

-- Location: FF_X49_Y27_N9
\crc|crc_reg8bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|Selector49~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|crc_reg8bit\(0));

-- Location: LCCOMB_X49_Y27_N24
\crc|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Equal1~0_combout\ = (!\crc|crc_reg8bit\(5) & (!\crc|crc_reg8bit\(4) & (!\crc|crc_reg8bit\(7) & !\crc|crc_reg8bit\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|crc_reg8bit\(5),
	datab => \crc|crc_reg8bit\(4),
	datac => \crc|crc_reg8bit\(7),
	datad => \crc|crc_reg8bit\(6),
	combout => \crc|Equal1~0_combout\);

-- Location: LCCOMB_X49_Y27_N26
\crc|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Equal1~1_combout\ = (!\crc|crc_reg8bit\(3) & (!\crc|crc_reg8bit\(1) & (!\crc|crc_reg8bit\(0) & !\crc|crc_reg8bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|crc_reg8bit\(3),
	datab => \crc|crc_reg8bit\(1),
	datac => \crc|crc_reg8bit\(0),
	datad => \crc|crc_reg8bit\(2),
	combout => \crc|Equal1~1_combout\);

-- Location: LCCOMB_X54_Y27_N20
\crc|crc8bit_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|crc8bit_out~0_combout\ = (\sig_cut~q\ & (\crc|state_crc.s2~q\ & !\sig_cut_not~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_cut~q\,
	datac => \crc|state_crc.s2~q\,
	datad => \sig_cut_not~q\,
	combout => \crc|crc8bit_out~0_combout\);

-- Location: LCCOMB_X54_Y27_N26
\crc|crc8bit_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|crc8bit_out~1_combout\ = (\crc|crc8bit_out~0_combout\ & (\crc|Equal1~0_combout\ & (\crc|Equal1~1_combout\))) # (!\crc|crc8bit_out~0_combout\ & (((\crc|crc8bit_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|Equal1~0_combout\,
	datab => \crc|Equal1~1_combout\,
	datac => \crc|crc8bit_out~q\,
	datad => \crc|crc8bit_out~0_combout\,
	combout => \crc|crc8bit_out~1_combout\);

-- Location: FF_X54_Y27_N27
\crc|crc8bit_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|crc8bit_out~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|crc8bit_out~q\);

-- Location: FF_X61_Y22_N21
\og|state_Do.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|state_Do.s6~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|state_Do.s7~q\);

-- Location: LCCOMB_X61_Y22_N18
\og|state_Do.s8~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|state_Do.s8~feeder_combout\ = \og|state_Do.s7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|state_Do.s7~q\,
	combout => \og|state_Do.s8~feeder_combout\);

-- Location: FF_X61_Y22_N19
\og|state_Do.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|state_Do.s8~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|state_Do.s8~q\);

-- Location: LCCOMB_X62_Y21_N10
\og|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Selector10~0_combout\ = (\og|state_Do.s8~q\) # ((!\crc|crc8bit_out~q\ & \og|state_Do.s5a~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|state_Do.s8~q\,
	datac => \crc|crc8bit_out~q\,
	datad => \og|state_Do.s5a~q\,
	combout => \og|Selector10~0_combout\);

-- Location: FF_X62_Y21_N11
\og|state_Do.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|Selector10~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|state_Do.s9~q\);

-- Location: LCCOMB_X62_Y21_N24
\og|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Selector0~0_combout\ = (!\og|state_Do.s9~q\ & ((\og|state_Do.s0~q\) # ((\crc|sig_correlation\(4) & \og|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|sig_correlation\(4),
	datab => \og|LessThan0~0_combout\,
	datac => \og|state_Do.s0~q\,
	datad => \og|state_Do.s9~q\,
	combout => \og|Selector0~0_combout\);

-- Location: FF_X62_Y21_N25
\og|state_Do.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|Selector0~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|state_Do.s0~q\);

-- Location: LCCOMB_X62_Y21_N22
\og|state_Do.s1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|state_Do.s1~0_combout\ = !\og|state_Do.s0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|state_Do.s0~q\,
	combout => \og|state_Do.s1~0_combout\);

-- Location: LCCOMB_X61_Y21_N12
\og|sig_cnt[0]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[0]~101_combout\ = \og|sig_cnt\(0) $ (VCC)
-- \og|sig_cnt[0]~102\ = CARRY(\og|sig_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(0),
	datad => VCC,
	combout => \og|sig_cnt[0]~101_combout\,
	cout => \og|sig_cnt[0]~102\);

-- Location: LCCOMB_X61_Y21_N14
\og|sig_cnt[1]~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[1]~103_combout\ = (\og|sig_cnt\(1) & (!\og|sig_cnt[0]~102\)) # (!\og|sig_cnt\(1) & ((\og|sig_cnt[0]~102\) # (GND)))
-- \og|sig_cnt[1]~104\ = CARRY((!\og|sig_cnt[0]~102\) # (!\og|sig_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(1),
	datad => VCC,
	cin => \og|sig_cnt[0]~102\,
	combout => \og|sig_cnt[1]~103_combout\,
	cout => \og|sig_cnt[1]~104\);

-- Location: LCCOMB_X62_Y21_N20
\og|sig_cnt[100]~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[100]~107_combout\ = (\sig_main_rising_edge~combout\ & ((\og|state_Do.s1~q\) # ((\og|state_Do.s5~q\) # (\og|state_Do.s2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|state_Do.s1~q\,
	datab => \og|state_Do.s5~q\,
	datac => \og|state_Do.s2~q\,
	datad => \sig_main_rising_edge~combout\,
	combout => \og|sig_cnt[100]~107_combout\);

-- Location: FF_X61_Y21_N15
\og|sig_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[1]~103_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(1));

-- Location: LCCOMB_X61_Y21_N16
\og|sig_cnt[2]~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[2]~108_combout\ = (\og|sig_cnt\(2) & (\og|sig_cnt[1]~104\ $ (GND))) # (!\og|sig_cnt\(2) & (!\og|sig_cnt[1]~104\ & VCC))
-- \og|sig_cnt[2]~109\ = CARRY((\og|sig_cnt\(2) & !\og|sig_cnt[1]~104\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(2),
	datad => VCC,
	cin => \og|sig_cnt[1]~104\,
	combout => \og|sig_cnt[2]~108_combout\,
	cout => \og|sig_cnt[2]~109\);

-- Location: FF_X61_Y21_N17
\og|sig_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[2]~108_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(2));

-- Location: LCCOMB_X61_Y21_N18
\og|sig_cnt[3]~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[3]~110_combout\ = (\og|sig_cnt\(3) & (!\og|sig_cnt[2]~109\)) # (!\og|sig_cnt\(3) & ((\og|sig_cnt[2]~109\) # (GND)))
-- \og|sig_cnt[3]~111\ = CARRY((!\og|sig_cnt[2]~109\) # (!\og|sig_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(3),
	datad => VCC,
	cin => \og|sig_cnt[2]~109\,
	combout => \og|sig_cnt[3]~110_combout\,
	cout => \og|sig_cnt[3]~111\);

-- Location: FF_X61_Y21_N19
\og|sig_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[3]~110_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(3));

-- Location: LCCOMB_X61_Y21_N20
\og|sig_cnt[4]~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[4]~112_combout\ = (\og|sig_cnt\(4) & (\og|sig_cnt[3]~111\ $ (GND))) # (!\og|sig_cnt\(4) & (!\og|sig_cnt[3]~111\ & VCC))
-- \og|sig_cnt[4]~113\ = CARRY((\og|sig_cnt\(4) & !\og|sig_cnt[3]~111\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(4),
	datad => VCC,
	cin => \og|sig_cnt[3]~111\,
	combout => \og|sig_cnt[4]~112_combout\,
	cout => \og|sig_cnt[4]~113\);

-- Location: FF_X61_Y21_N21
\og|sig_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[4]~112_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(4));

-- Location: LCCOMB_X61_Y21_N22
\og|sig_cnt[5]~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[5]~114_combout\ = (\og|sig_cnt\(5) & (!\og|sig_cnt[4]~113\)) # (!\og|sig_cnt\(5) & ((\og|sig_cnt[4]~113\) # (GND)))
-- \og|sig_cnt[5]~115\ = CARRY((!\og|sig_cnt[4]~113\) # (!\og|sig_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(5),
	datad => VCC,
	cin => \og|sig_cnt[4]~113\,
	combout => \og|sig_cnt[5]~114_combout\,
	cout => \og|sig_cnt[5]~115\);

-- Location: FF_X61_Y21_N23
\og|sig_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[5]~114_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(5));

-- Location: LCCOMB_X61_Y21_N24
\og|sig_cnt[6]~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[6]~116_combout\ = (\og|sig_cnt\(6) & (\og|sig_cnt[5]~115\ $ (GND))) # (!\og|sig_cnt\(6) & (!\og|sig_cnt[5]~115\ & VCC))
-- \og|sig_cnt[6]~117\ = CARRY((\og|sig_cnt\(6) & !\og|sig_cnt[5]~115\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(6),
	datad => VCC,
	cin => \og|sig_cnt[5]~115\,
	combout => \og|sig_cnt[6]~116_combout\,
	cout => \og|sig_cnt[6]~117\);

-- Location: FF_X61_Y21_N25
\og|sig_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[6]~116_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(6));

-- Location: LCCOMB_X61_Y21_N26
\og|sig_cnt[7]~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[7]~118_combout\ = (\og|sig_cnt\(7) & (!\og|sig_cnt[6]~117\)) # (!\og|sig_cnt\(7) & ((\og|sig_cnt[6]~117\) # (GND)))
-- \og|sig_cnt[7]~119\ = CARRY((!\og|sig_cnt[6]~117\) # (!\og|sig_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(7),
	datad => VCC,
	cin => \og|sig_cnt[6]~117\,
	combout => \og|sig_cnt[7]~118_combout\,
	cout => \og|sig_cnt[7]~119\);

-- Location: FF_X61_Y21_N27
\og|sig_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[7]~118_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(7));

-- Location: LCCOMB_X61_Y21_N28
\og|sig_cnt[8]~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[8]~120_combout\ = (\og|sig_cnt\(8) & (\og|sig_cnt[7]~119\ $ (GND))) # (!\og|sig_cnt\(8) & (!\og|sig_cnt[7]~119\ & VCC))
-- \og|sig_cnt[8]~121\ = CARRY((\og|sig_cnt\(8) & !\og|sig_cnt[7]~119\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(8),
	datad => VCC,
	cin => \og|sig_cnt[7]~119\,
	combout => \og|sig_cnt[8]~120_combout\,
	cout => \og|sig_cnt[8]~121\);

-- Location: FF_X61_Y21_N29
\og|sig_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[8]~120_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(8));

-- Location: LCCOMB_X61_Y21_N30
\og|sig_cnt[9]~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[9]~122_combout\ = (\og|sig_cnt\(9) & (!\og|sig_cnt[8]~121\)) # (!\og|sig_cnt\(9) & ((\og|sig_cnt[8]~121\) # (GND)))
-- \og|sig_cnt[9]~123\ = CARRY((!\og|sig_cnt[8]~121\) # (!\og|sig_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(9),
	datad => VCC,
	cin => \og|sig_cnt[8]~121\,
	combout => \og|sig_cnt[9]~122_combout\,
	cout => \og|sig_cnt[9]~123\);

-- Location: FF_X61_Y21_N31
\og|sig_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[9]~122_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(9));

-- Location: LCCOMB_X61_Y20_N0
\og|sig_cnt[10]~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[10]~124_combout\ = (\og|sig_cnt\(10) & (\og|sig_cnt[9]~123\ $ (GND))) # (!\og|sig_cnt\(10) & (!\og|sig_cnt[9]~123\ & VCC))
-- \og|sig_cnt[10]~125\ = CARRY((\og|sig_cnt\(10) & !\og|sig_cnt[9]~123\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(10),
	datad => VCC,
	cin => \og|sig_cnt[9]~123\,
	combout => \og|sig_cnt[10]~124_combout\,
	cout => \og|sig_cnt[10]~125\);

-- Location: FF_X61_Y20_N1
\og|sig_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[10]~124_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(10));

-- Location: LCCOMB_X61_Y20_N2
\og|sig_cnt[11]~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[11]~126_combout\ = (\og|sig_cnt\(11) & (!\og|sig_cnt[10]~125\)) # (!\og|sig_cnt\(11) & ((\og|sig_cnt[10]~125\) # (GND)))
-- \og|sig_cnt[11]~127\ = CARRY((!\og|sig_cnt[10]~125\) # (!\og|sig_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(11),
	datad => VCC,
	cin => \og|sig_cnt[10]~125\,
	combout => \og|sig_cnt[11]~126_combout\,
	cout => \og|sig_cnt[11]~127\);

-- Location: FF_X61_Y20_N3
\og|sig_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[11]~126_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(11));

-- Location: LCCOMB_X61_Y20_N4
\og|sig_cnt[12]~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[12]~128_combout\ = (\og|sig_cnt\(12) & (\og|sig_cnt[11]~127\ $ (GND))) # (!\og|sig_cnt\(12) & (!\og|sig_cnt[11]~127\ & VCC))
-- \og|sig_cnt[12]~129\ = CARRY((\og|sig_cnt\(12) & !\og|sig_cnt[11]~127\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(12),
	datad => VCC,
	cin => \og|sig_cnt[11]~127\,
	combout => \og|sig_cnt[12]~128_combout\,
	cout => \og|sig_cnt[12]~129\);

-- Location: FF_X61_Y20_N5
\og|sig_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[12]~128_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(12));

-- Location: LCCOMB_X61_Y20_N6
\og|sig_cnt[13]~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[13]~130_combout\ = (\og|sig_cnt\(13) & (!\og|sig_cnt[12]~129\)) # (!\og|sig_cnt\(13) & ((\og|sig_cnt[12]~129\) # (GND)))
-- \og|sig_cnt[13]~131\ = CARRY((!\og|sig_cnt[12]~129\) # (!\og|sig_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(13),
	datad => VCC,
	cin => \og|sig_cnt[12]~129\,
	combout => \og|sig_cnt[13]~130_combout\,
	cout => \og|sig_cnt[13]~131\);

-- Location: FF_X61_Y20_N7
\og|sig_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[13]~130_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(13));

-- Location: LCCOMB_X61_Y20_N8
\og|sig_cnt[14]~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[14]~132_combout\ = (\og|sig_cnt\(14) & (\og|sig_cnt[13]~131\ $ (GND))) # (!\og|sig_cnt\(14) & (!\og|sig_cnt[13]~131\ & VCC))
-- \og|sig_cnt[14]~133\ = CARRY((\og|sig_cnt\(14) & !\og|sig_cnt[13]~131\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(14),
	datad => VCC,
	cin => \og|sig_cnt[13]~131\,
	combout => \og|sig_cnt[14]~132_combout\,
	cout => \og|sig_cnt[14]~133\);

-- Location: FF_X61_Y20_N9
\og|sig_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[14]~132_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(14));

-- Location: LCCOMB_X61_Y20_N10
\og|sig_cnt[15]~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[15]~134_combout\ = (\og|sig_cnt\(15) & (!\og|sig_cnt[14]~133\)) # (!\og|sig_cnt\(15) & ((\og|sig_cnt[14]~133\) # (GND)))
-- \og|sig_cnt[15]~135\ = CARRY((!\og|sig_cnt[14]~133\) # (!\og|sig_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(15),
	datad => VCC,
	cin => \og|sig_cnt[14]~133\,
	combout => \og|sig_cnt[15]~134_combout\,
	cout => \og|sig_cnt[15]~135\);

-- Location: FF_X61_Y20_N11
\og|sig_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[15]~134_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(15));

-- Location: LCCOMB_X61_Y20_N12
\og|sig_cnt[16]~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[16]~136_combout\ = (\og|sig_cnt\(16) & (\og|sig_cnt[15]~135\ $ (GND))) # (!\og|sig_cnt\(16) & (!\og|sig_cnt[15]~135\ & VCC))
-- \og|sig_cnt[16]~137\ = CARRY((\og|sig_cnt\(16) & !\og|sig_cnt[15]~135\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(16),
	datad => VCC,
	cin => \og|sig_cnt[15]~135\,
	combout => \og|sig_cnt[16]~136_combout\,
	cout => \og|sig_cnt[16]~137\);

-- Location: FF_X61_Y20_N13
\og|sig_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[16]~136_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(16));

-- Location: LCCOMB_X61_Y20_N14
\og|sig_cnt[17]~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[17]~138_combout\ = (\og|sig_cnt\(17) & (!\og|sig_cnt[16]~137\)) # (!\og|sig_cnt\(17) & ((\og|sig_cnt[16]~137\) # (GND)))
-- \og|sig_cnt[17]~139\ = CARRY((!\og|sig_cnt[16]~137\) # (!\og|sig_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(17),
	datad => VCC,
	cin => \og|sig_cnt[16]~137\,
	combout => \og|sig_cnt[17]~138_combout\,
	cout => \og|sig_cnt[17]~139\);

-- Location: FF_X61_Y20_N15
\og|sig_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[17]~138_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(17));

-- Location: LCCOMB_X61_Y20_N16
\og|sig_cnt[18]~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[18]~140_combout\ = (\og|sig_cnt\(18) & (\og|sig_cnt[17]~139\ $ (GND))) # (!\og|sig_cnt\(18) & (!\og|sig_cnt[17]~139\ & VCC))
-- \og|sig_cnt[18]~141\ = CARRY((\og|sig_cnt\(18) & !\og|sig_cnt[17]~139\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(18),
	datad => VCC,
	cin => \og|sig_cnt[17]~139\,
	combout => \og|sig_cnt[18]~140_combout\,
	cout => \og|sig_cnt[18]~141\);

-- Location: FF_X61_Y20_N17
\og|sig_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[18]~140_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(18));

-- Location: LCCOMB_X61_Y20_N18
\og|sig_cnt[19]~142\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[19]~142_combout\ = (\og|sig_cnt\(19) & (!\og|sig_cnt[18]~141\)) # (!\og|sig_cnt\(19) & ((\og|sig_cnt[18]~141\) # (GND)))
-- \og|sig_cnt[19]~143\ = CARRY((!\og|sig_cnt[18]~141\) # (!\og|sig_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(19),
	datad => VCC,
	cin => \og|sig_cnt[18]~141\,
	combout => \og|sig_cnt[19]~142_combout\,
	cout => \og|sig_cnt[19]~143\);

-- Location: FF_X61_Y20_N19
\og|sig_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[19]~142_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(19));

-- Location: LCCOMB_X61_Y20_N20
\og|sig_cnt[20]~144\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[20]~144_combout\ = (\og|sig_cnt\(20) & (\og|sig_cnt[19]~143\ $ (GND))) # (!\og|sig_cnt\(20) & (!\og|sig_cnt[19]~143\ & VCC))
-- \og|sig_cnt[20]~145\ = CARRY((\og|sig_cnt\(20) & !\og|sig_cnt[19]~143\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(20),
	datad => VCC,
	cin => \og|sig_cnt[19]~143\,
	combout => \og|sig_cnt[20]~144_combout\,
	cout => \og|sig_cnt[20]~145\);

-- Location: FF_X61_Y20_N21
\og|sig_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[20]~144_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(20));

-- Location: LCCOMB_X61_Y20_N22
\og|sig_cnt[21]~146\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[21]~146_combout\ = (\og|sig_cnt\(21) & (!\og|sig_cnt[20]~145\)) # (!\og|sig_cnt\(21) & ((\og|sig_cnt[20]~145\) # (GND)))
-- \og|sig_cnt[21]~147\ = CARRY((!\og|sig_cnt[20]~145\) # (!\og|sig_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(21),
	datad => VCC,
	cin => \og|sig_cnt[20]~145\,
	combout => \og|sig_cnt[21]~146_combout\,
	cout => \og|sig_cnt[21]~147\);

-- Location: FF_X61_Y20_N23
\og|sig_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[21]~146_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(21));

-- Location: LCCOMB_X61_Y20_N24
\og|sig_cnt[22]~148\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[22]~148_combout\ = (\og|sig_cnt\(22) & (\og|sig_cnt[21]~147\ $ (GND))) # (!\og|sig_cnt\(22) & (!\og|sig_cnt[21]~147\ & VCC))
-- \og|sig_cnt[22]~149\ = CARRY((\og|sig_cnt\(22) & !\og|sig_cnt[21]~147\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(22),
	datad => VCC,
	cin => \og|sig_cnt[21]~147\,
	combout => \og|sig_cnt[22]~148_combout\,
	cout => \og|sig_cnt[22]~149\);

-- Location: FF_X61_Y20_N25
\og|sig_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[22]~148_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(22));

-- Location: LCCOMB_X61_Y20_N26
\og|sig_cnt[23]~150\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[23]~150_combout\ = (\og|sig_cnt\(23) & (!\og|sig_cnt[22]~149\)) # (!\og|sig_cnt\(23) & ((\og|sig_cnt[22]~149\) # (GND)))
-- \og|sig_cnt[23]~151\ = CARRY((!\og|sig_cnt[22]~149\) # (!\og|sig_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(23),
	datad => VCC,
	cin => \og|sig_cnt[22]~149\,
	combout => \og|sig_cnt[23]~150_combout\,
	cout => \og|sig_cnt[23]~151\);

-- Location: FF_X61_Y20_N27
\og|sig_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[23]~150_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(23));

-- Location: LCCOMB_X61_Y20_N28
\og|sig_cnt[24]~152\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[24]~152_combout\ = (\og|sig_cnt\(24) & (\og|sig_cnt[23]~151\ $ (GND))) # (!\og|sig_cnt\(24) & (!\og|sig_cnt[23]~151\ & VCC))
-- \og|sig_cnt[24]~153\ = CARRY((\og|sig_cnt\(24) & !\og|sig_cnt[23]~151\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(24),
	datad => VCC,
	cin => \og|sig_cnt[23]~151\,
	combout => \og|sig_cnt[24]~152_combout\,
	cout => \og|sig_cnt[24]~153\);

-- Location: FF_X61_Y20_N29
\og|sig_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[24]~152_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(24));

-- Location: LCCOMB_X61_Y20_N30
\og|sig_cnt[25]~154\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[25]~154_combout\ = (\og|sig_cnt\(25) & (!\og|sig_cnt[24]~153\)) # (!\og|sig_cnt\(25) & ((\og|sig_cnt[24]~153\) # (GND)))
-- \og|sig_cnt[25]~155\ = CARRY((!\og|sig_cnt[24]~153\) # (!\og|sig_cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(25),
	datad => VCC,
	cin => \og|sig_cnt[24]~153\,
	combout => \og|sig_cnt[25]~154_combout\,
	cout => \og|sig_cnt[25]~155\);

-- Location: FF_X61_Y20_N31
\og|sig_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[25]~154_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(25));

-- Location: LCCOMB_X61_Y19_N0
\og|sig_cnt[26]~156\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[26]~156_combout\ = (\og|sig_cnt\(26) & (\og|sig_cnt[25]~155\ $ (GND))) # (!\og|sig_cnt\(26) & (!\og|sig_cnt[25]~155\ & VCC))
-- \og|sig_cnt[26]~157\ = CARRY((\og|sig_cnt\(26) & !\og|sig_cnt[25]~155\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(26),
	datad => VCC,
	cin => \og|sig_cnt[25]~155\,
	combout => \og|sig_cnt[26]~156_combout\,
	cout => \og|sig_cnt[26]~157\);

-- Location: FF_X61_Y19_N1
\og|sig_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[26]~156_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(26));

-- Location: LCCOMB_X61_Y19_N2
\og|sig_cnt[27]~158\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[27]~158_combout\ = (\og|sig_cnt\(27) & (!\og|sig_cnt[26]~157\)) # (!\og|sig_cnt\(27) & ((\og|sig_cnt[26]~157\) # (GND)))
-- \og|sig_cnt[27]~159\ = CARRY((!\og|sig_cnt[26]~157\) # (!\og|sig_cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(27),
	datad => VCC,
	cin => \og|sig_cnt[26]~157\,
	combout => \og|sig_cnt[27]~158_combout\,
	cout => \og|sig_cnt[27]~159\);

-- Location: FF_X61_Y19_N3
\og|sig_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[27]~158_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(27));

-- Location: LCCOMB_X61_Y19_N4
\og|sig_cnt[28]~160\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[28]~160_combout\ = (\og|sig_cnt\(28) & (\og|sig_cnt[27]~159\ $ (GND))) # (!\og|sig_cnt\(28) & (!\og|sig_cnt[27]~159\ & VCC))
-- \og|sig_cnt[28]~161\ = CARRY((\og|sig_cnt\(28) & !\og|sig_cnt[27]~159\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(28),
	datad => VCC,
	cin => \og|sig_cnt[27]~159\,
	combout => \og|sig_cnt[28]~160_combout\,
	cout => \og|sig_cnt[28]~161\);

-- Location: FF_X61_Y19_N5
\og|sig_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[28]~160_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(28));

-- Location: LCCOMB_X61_Y19_N6
\og|sig_cnt[29]~162\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[29]~162_combout\ = (\og|sig_cnt\(29) & (!\og|sig_cnt[28]~161\)) # (!\og|sig_cnt\(29) & ((\og|sig_cnt[28]~161\) # (GND)))
-- \og|sig_cnt[29]~163\ = CARRY((!\og|sig_cnt[28]~161\) # (!\og|sig_cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(29),
	datad => VCC,
	cin => \og|sig_cnt[28]~161\,
	combout => \og|sig_cnt[29]~162_combout\,
	cout => \og|sig_cnt[29]~163\);

-- Location: FF_X61_Y19_N7
\og|sig_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[29]~162_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(29));

-- Location: LCCOMB_X61_Y19_N8
\og|sig_cnt[30]~164\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[30]~164_combout\ = (\og|sig_cnt\(30) & (\og|sig_cnt[29]~163\ $ (GND))) # (!\og|sig_cnt\(30) & (!\og|sig_cnt[29]~163\ & VCC))
-- \og|sig_cnt[30]~165\ = CARRY((\og|sig_cnt\(30) & !\og|sig_cnt[29]~163\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(30),
	datad => VCC,
	cin => \og|sig_cnt[29]~163\,
	combout => \og|sig_cnt[30]~164_combout\,
	cout => \og|sig_cnt[30]~165\);

-- Location: FF_X61_Y19_N9
\og|sig_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[30]~164_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(30));

-- Location: LCCOMB_X61_Y19_N10
\og|sig_cnt[31]~166\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[31]~166_combout\ = (\og|sig_cnt\(31) & (!\og|sig_cnt[30]~165\)) # (!\og|sig_cnt\(31) & ((\og|sig_cnt[30]~165\) # (GND)))
-- \og|sig_cnt[31]~167\ = CARRY((!\og|sig_cnt[30]~165\) # (!\og|sig_cnt\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(31),
	datad => VCC,
	cin => \og|sig_cnt[30]~165\,
	combout => \og|sig_cnt[31]~166_combout\,
	cout => \og|sig_cnt[31]~167\);

-- Location: FF_X61_Y19_N11
\og|sig_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[31]~166_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(31));

-- Location: LCCOMB_X61_Y19_N12
\og|sig_cnt[32]~168\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[32]~168_combout\ = (\og|sig_cnt\(32) & (\og|sig_cnt[31]~167\ $ (GND))) # (!\og|sig_cnt\(32) & (!\og|sig_cnt[31]~167\ & VCC))
-- \og|sig_cnt[32]~169\ = CARRY((\og|sig_cnt\(32) & !\og|sig_cnt[31]~167\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(32),
	datad => VCC,
	cin => \og|sig_cnt[31]~167\,
	combout => \og|sig_cnt[32]~168_combout\,
	cout => \og|sig_cnt[32]~169\);

-- Location: FF_X61_Y19_N13
\og|sig_cnt[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[32]~168_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(32));

-- Location: LCCOMB_X61_Y19_N14
\og|sig_cnt[33]~170\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[33]~170_combout\ = (\og|sig_cnt\(33) & (!\og|sig_cnt[32]~169\)) # (!\og|sig_cnt\(33) & ((\og|sig_cnt[32]~169\) # (GND)))
-- \og|sig_cnt[33]~171\ = CARRY((!\og|sig_cnt[32]~169\) # (!\og|sig_cnt\(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(33),
	datad => VCC,
	cin => \og|sig_cnt[32]~169\,
	combout => \og|sig_cnt[33]~170_combout\,
	cout => \og|sig_cnt[33]~171\);

-- Location: FF_X61_Y19_N15
\og|sig_cnt[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[33]~170_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(33));

-- Location: LCCOMB_X61_Y19_N16
\og|sig_cnt[34]~172\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[34]~172_combout\ = (\og|sig_cnt\(34) & (\og|sig_cnt[33]~171\ $ (GND))) # (!\og|sig_cnt\(34) & (!\og|sig_cnt[33]~171\ & VCC))
-- \og|sig_cnt[34]~173\ = CARRY((\og|sig_cnt\(34) & !\og|sig_cnt[33]~171\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(34),
	datad => VCC,
	cin => \og|sig_cnt[33]~171\,
	combout => \og|sig_cnt[34]~172_combout\,
	cout => \og|sig_cnt[34]~173\);

-- Location: FF_X61_Y19_N17
\og|sig_cnt[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[34]~172_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(34));

-- Location: LCCOMB_X61_Y19_N18
\og|sig_cnt[35]~174\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[35]~174_combout\ = (\og|sig_cnt\(35) & (!\og|sig_cnt[34]~173\)) # (!\og|sig_cnt\(35) & ((\og|sig_cnt[34]~173\) # (GND)))
-- \og|sig_cnt[35]~175\ = CARRY((!\og|sig_cnt[34]~173\) # (!\og|sig_cnt\(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(35),
	datad => VCC,
	cin => \og|sig_cnt[34]~173\,
	combout => \og|sig_cnt[35]~174_combout\,
	cout => \og|sig_cnt[35]~175\);

-- Location: FF_X61_Y19_N19
\og|sig_cnt[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[35]~174_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(35));

-- Location: LCCOMB_X61_Y19_N20
\og|sig_cnt[36]~176\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[36]~176_combout\ = (\og|sig_cnt\(36) & (\og|sig_cnt[35]~175\ $ (GND))) # (!\og|sig_cnt\(36) & (!\og|sig_cnt[35]~175\ & VCC))
-- \og|sig_cnt[36]~177\ = CARRY((\og|sig_cnt\(36) & !\og|sig_cnt[35]~175\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(36),
	datad => VCC,
	cin => \og|sig_cnt[35]~175\,
	combout => \og|sig_cnt[36]~176_combout\,
	cout => \og|sig_cnt[36]~177\);

-- Location: FF_X61_Y19_N21
\og|sig_cnt[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[36]~176_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(36));

-- Location: LCCOMB_X61_Y19_N22
\og|sig_cnt[37]~178\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[37]~178_combout\ = (\og|sig_cnt\(37) & (!\og|sig_cnt[36]~177\)) # (!\og|sig_cnt\(37) & ((\og|sig_cnt[36]~177\) # (GND)))
-- \og|sig_cnt[37]~179\ = CARRY((!\og|sig_cnt[36]~177\) # (!\og|sig_cnt\(37)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(37),
	datad => VCC,
	cin => \og|sig_cnt[36]~177\,
	combout => \og|sig_cnt[37]~178_combout\,
	cout => \og|sig_cnt[37]~179\);

-- Location: FF_X61_Y19_N23
\og|sig_cnt[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[37]~178_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(37));

-- Location: LCCOMB_X61_Y19_N24
\og|sig_cnt[38]~180\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[38]~180_combout\ = (\og|sig_cnt\(38) & (\og|sig_cnt[37]~179\ $ (GND))) # (!\og|sig_cnt\(38) & (!\og|sig_cnt[37]~179\ & VCC))
-- \og|sig_cnt[38]~181\ = CARRY((\og|sig_cnt\(38) & !\og|sig_cnt[37]~179\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(38),
	datad => VCC,
	cin => \og|sig_cnt[37]~179\,
	combout => \og|sig_cnt[38]~180_combout\,
	cout => \og|sig_cnt[38]~181\);

-- Location: FF_X61_Y19_N25
\og|sig_cnt[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[38]~180_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(38));

-- Location: LCCOMB_X61_Y19_N26
\og|sig_cnt[39]~182\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[39]~182_combout\ = (\og|sig_cnt\(39) & (!\og|sig_cnt[38]~181\)) # (!\og|sig_cnt\(39) & ((\og|sig_cnt[38]~181\) # (GND)))
-- \og|sig_cnt[39]~183\ = CARRY((!\og|sig_cnt[38]~181\) # (!\og|sig_cnt\(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(39),
	datad => VCC,
	cin => \og|sig_cnt[38]~181\,
	combout => \og|sig_cnt[39]~182_combout\,
	cout => \og|sig_cnt[39]~183\);

-- Location: FF_X61_Y19_N27
\og|sig_cnt[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[39]~182_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(39));

-- Location: LCCOMB_X61_Y19_N28
\og|sig_cnt[40]~184\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[40]~184_combout\ = (\og|sig_cnt\(40) & (\og|sig_cnt[39]~183\ $ (GND))) # (!\og|sig_cnt\(40) & (!\og|sig_cnt[39]~183\ & VCC))
-- \og|sig_cnt[40]~185\ = CARRY((\og|sig_cnt\(40) & !\og|sig_cnt[39]~183\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(40),
	datad => VCC,
	cin => \og|sig_cnt[39]~183\,
	combout => \og|sig_cnt[40]~184_combout\,
	cout => \og|sig_cnt[40]~185\);

-- Location: FF_X61_Y19_N29
\og|sig_cnt[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[40]~184_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(40));

-- Location: LCCOMB_X61_Y19_N30
\og|sig_cnt[41]~186\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[41]~186_combout\ = (\og|sig_cnt\(41) & (!\og|sig_cnt[40]~185\)) # (!\og|sig_cnt\(41) & ((\og|sig_cnt[40]~185\) # (GND)))
-- \og|sig_cnt[41]~187\ = CARRY((!\og|sig_cnt[40]~185\) # (!\og|sig_cnt\(41)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(41),
	datad => VCC,
	cin => \og|sig_cnt[40]~185\,
	combout => \og|sig_cnt[41]~186_combout\,
	cout => \og|sig_cnt[41]~187\);

-- Location: FF_X61_Y19_N31
\og|sig_cnt[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[41]~186_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(41));

-- Location: LCCOMB_X61_Y18_N0
\og|sig_cnt[42]~188\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[42]~188_combout\ = (\og|sig_cnt\(42) & (\og|sig_cnt[41]~187\ $ (GND))) # (!\og|sig_cnt\(42) & (!\og|sig_cnt[41]~187\ & VCC))
-- \og|sig_cnt[42]~189\ = CARRY((\og|sig_cnt\(42) & !\og|sig_cnt[41]~187\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(42),
	datad => VCC,
	cin => \og|sig_cnt[41]~187\,
	combout => \og|sig_cnt[42]~188_combout\,
	cout => \og|sig_cnt[42]~189\);

-- Location: FF_X61_Y18_N1
\og|sig_cnt[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[42]~188_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(42));

-- Location: LCCOMB_X61_Y18_N2
\og|sig_cnt[43]~190\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[43]~190_combout\ = (\og|sig_cnt\(43) & (!\og|sig_cnt[42]~189\)) # (!\og|sig_cnt\(43) & ((\og|sig_cnt[42]~189\) # (GND)))
-- \og|sig_cnt[43]~191\ = CARRY((!\og|sig_cnt[42]~189\) # (!\og|sig_cnt\(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(43),
	datad => VCC,
	cin => \og|sig_cnt[42]~189\,
	combout => \og|sig_cnt[43]~190_combout\,
	cout => \og|sig_cnt[43]~191\);

-- Location: FF_X61_Y18_N3
\og|sig_cnt[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[43]~190_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(43));

-- Location: LCCOMB_X61_Y18_N4
\og|sig_cnt[44]~192\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[44]~192_combout\ = (\og|sig_cnt\(44) & (\og|sig_cnt[43]~191\ $ (GND))) # (!\og|sig_cnt\(44) & (!\og|sig_cnt[43]~191\ & VCC))
-- \og|sig_cnt[44]~193\ = CARRY((\og|sig_cnt\(44) & !\og|sig_cnt[43]~191\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(44),
	datad => VCC,
	cin => \og|sig_cnt[43]~191\,
	combout => \og|sig_cnt[44]~192_combout\,
	cout => \og|sig_cnt[44]~193\);

-- Location: FF_X61_Y18_N5
\og|sig_cnt[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[44]~192_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(44));

-- Location: LCCOMB_X61_Y18_N6
\og|sig_cnt[45]~194\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[45]~194_combout\ = (\og|sig_cnt\(45) & (!\og|sig_cnt[44]~193\)) # (!\og|sig_cnt\(45) & ((\og|sig_cnt[44]~193\) # (GND)))
-- \og|sig_cnt[45]~195\ = CARRY((!\og|sig_cnt[44]~193\) # (!\og|sig_cnt\(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(45),
	datad => VCC,
	cin => \og|sig_cnt[44]~193\,
	combout => \og|sig_cnt[45]~194_combout\,
	cout => \og|sig_cnt[45]~195\);

-- Location: FF_X61_Y18_N7
\og|sig_cnt[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[45]~194_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(45));

-- Location: LCCOMB_X61_Y18_N8
\og|sig_cnt[46]~196\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[46]~196_combout\ = (\og|sig_cnt\(46) & (\og|sig_cnt[45]~195\ $ (GND))) # (!\og|sig_cnt\(46) & (!\og|sig_cnt[45]~195\ & VCC))
-- \og|sig_cnt[46]~197\ = CARRY((\og|sig_cnt\(46) & !\og|sig_cnt[45]~195\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(46),
	datad => VCC,
	cin => \og|sig_cnt[45]~195\,
	combout => \og|sig_cnt[46]~196_combout\,
	cout => \og|sig_cnt[46]~197\);

-- Location: FF_X61_Y18_N9
\og|sig_cnt[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[46]~196_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(46));

-- Location: LCCOMB_X61_Y18_N10
\og|sig_cnt[47]~198\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[47]~198_combout\ = (\og|sig_cnt\(47) & (!\og|sig_cnt[46]~197\)) # (!\og|sig_cnt\(47) & ((\og|sig_cnt[46]~197\) # (GND)))
-- \og|sig_cnt[47]~199\ = CARRY((!\og|sig_cnt[46]~197\) # (!\og|sig_cnt\(47)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(47),
	datad => VCC,
	cin => \og|sig_cnt[46]~197\,
	combout => \og|sig_cnt[47]~198_combout\,
	cout => \og|sig_cnt[47]~199\);

-- Location: FF_X61_Y18_N11
\og|sig_cnt[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[47]~198_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(47));

-- Location: LCCOMB_X61_Y18_N12
\og|sig_cnt[48]~200\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[48]~200_combout\ = (\og|sig_cnt\(48) & (\og|sig_cnt[47]~199\ $ (GND))) # (!\og|sig_cnt\(48) & (!\og|sig_cnt[47]~199\ & VCC))
-- \og|sig_cnt[48]~201\ = CARRY((\og|sig_cnt\(48) & !\og|sig_cnt[47]~199\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(48),
	datad => VCC,
	cin => \og|sig_cnt[47]~199\,
	combout => \og|sig_cnt[48]~200_combout\,
	cout => \og|sig_cnt[48]~201\);

-- Location: FF_X61_Y18_N13
\og|sig_cnt[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[48]~200_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(48));

-- Location: LCCOMB_X61_Y18_N14
\og|sig_cnt[49]~202\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[49]~202_combout\ = (\og|sig_cnt\(49) & (!\og|sig_cnt[48]~201\)) # (!\og|sig_cnt\(49) & ((\og|sig_cnt[48]~201\) # (GND)))
-- \og|sig_cnt[49]~203\ = CARRY((!\og|sig_cnt[48]~201\) # (!\og|sig_cnt\(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(49),
	datad => VCC,
	cin => \og|sig_cnt[48]~201\,
	combout => \og|sig_cnt[49]~202_combout\,
	cout => \og|sig_cnt[49]~203\);

-- Location: FF_X61_Y18_N15
\og|sig_cnt[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[49]~202_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(49));

-- Location: LCCOMB_X61_Y18_N16
\og|sig_cnt[50]~204\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[50]~204_combout\ = (\og|sig_cnt\(50) & (\og|sig_cnt[49]~203\ $ (GND))) # (!\og|sig_cnt\(50) & (!\og|sig_cnt[49]~203\ & VCC))
-- \og|sig_cnt[50]~205\ = CARRY((\og|sig_cnt\(50) & !\og|sig_cnt[49]~203\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(50),
	datad => VCC,
	cin => \og|sig_cnt[49]~203\,
	combout => \og|sig_cnt[50]~204_combout\,
	cout => \og|sig_cnt[50]~205\);

-- Location: FF_X61_Y18_N17
\og|sig_cnt[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[50]~204_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(50));

-- Location: LCCOMB_X61_Y18_N18
\og|sig_cnt[51]~206\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[51]~206_combout\ = (\og|sig_cnt\(51) & (!\og|sig_cnt[50]~205\)) # (!\og|sig_cnt\(51) & ((\og|sig_cnt[50]~205\) # (GND)))
-- \og|sig_cnt[51]~207\ = CARRY((!\og|sig_cnt[50]~205\) # (!\og|sig_cnt\(51)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(51),
	datad => VCC,
	cin => \og|sig_cnt[50]~205\,
	combout => \og|sig_cnt[51]~206_combout\,
	cout => \og|sig_cnt[51]~207\);

-- Location: FF_X61_Y18_N19
\og|sig_cnt[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[51]~206_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(51));

-- Location: LCCOMB_X61_Y18_N20
\og|sig_cnt[52]~208\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[52]~208_combout\ = (\og|sig_cnt\(52) & (\og|sig_cnt[51]~207\ $ (GND))) # (!\og|sig_cnt\(52) & (!\og|sig_cnt[51]~207\ & VCC))
-- \og|sig_cnt[52]~209\ = CARRY((\og|sig_cnt\(52) & !\og|sig_cnt[51]~207\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(52),
	datad => VCC,
	cin => \og|sig_cnt[51]~207\,
	combout => \og|sig_cnt[52]~208_combout\,
	cout => \og|sig_cnt[52]~209\);

-- Location: FF_X61_Y18_N21
\og|sig_cnt[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[52]~208_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(52));

-- Location: LCCOMB_X61_Y18_N22
\og|sig_cnt[53]~210\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[53]~210_combout\ = (\og|sig_cnt\(53) & (!\og|sig_cnt[52]~209\)) # (!\og|sig_cnt\(53) & ((\og|sig_cnt[52]~209\) # (GND)))
-- \og|sig_cnt[53]~211\ = CARRY((!\og|sig_cnt[52]~209\) # (!\og|sig_cnt\(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(53),
	datad => VCC,
	cin => \og|sig_cnt[52]~209\,
	combout => \og|sig_cnt[53]~210_combout\,
	cout => \og|sig_cnt[53]~211\);

-- Location: FF_X61_Y18_N23
\og|sig_cnt[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[53]~210_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(53));

-- Location: LCCOMB_X61_Y18_N24
\og|sig_cnt[54]~212\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[54]~212_combout\ = (\og|sig_cnt\(54) & (\og|sig_cnt[53]~211\ $ (GND))) # (!\og|sig_cnt\(54) & (!\og|sig_cnt[53]~211\ & VCC))
-- \og|sig_cnt[54]~213\ = CARRY((\og|sig_cnt\(54) & !\og|sig_cnt[53]~211\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(54),
	datad => VCC,
	cin => \og|sig_cnt[53]~211\,
	combout => \og|sig_cnt[54]~212_combout\,
	cout => \og|sig_cnt[54]~213\);

-- Location: FF_X61_Y18_N25
\og|sig_cnt[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[54]~212_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(54));

-- Location: LCCOMB_X61_Y18_N26
\og|sig_cnt[55]~214\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[55]~214_combout\ = (\og|sig_cnt\(55) & (!\og|sig_cnt[54]~213\)) # (!\og|sig_cnt\(55) & ((\og|sig_cnt[54]~213\) # (GND)))
-- \og|sig_cnt[55]~215\ = CARRY((!\og|sig_cnt[54]~213\) # (!\og|sig_cnt\(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(55),
	datad => VCC,
	cin => \og|sig_cnt[54]~213\,
	combout => \og|sig_cnt[55]~214_combout\,
	cout => \og|sig_cnt[55]~215\);

-- Location: FF_X61_Y18_N27
\og|sig_cnt[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[55]~214_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(55));

-- Location: LCCOMB_X61_Y18_N28
\og|sig_cnt[56]~216\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[56]~216_combout\ = (\og|sig_cnt\(56) & (\og|sig_cnt[55]~215\ $ (GND))) # (!\og|sig_cnt\(56) & (!\og|sig_cnt[55]~215\ & VCC))
-- \og|sig_cnt[56]~217\ = CARRY((\og|sig_cnt\(56) & !\og|sig_cnt[55]~215\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(56),
	datad => VCC,
	cin => \og|sig_cnt[55]~215\,
	combout => \og|sig_cnt[56]~216_combout\,
	cout => \og|sig_cnt[56]~217\);

-- Location: FF_X61_Y18_N29
\og|sig_cnt[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[56]~216_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(56));

-- Location: LCCOMB_X61_Y18_N30
\og|sig_cnt[57]~218\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[57]~218_combout\ = (\og|sig_cnt\(57) & (!\og|sig_cnt[56]~217\)) # (!\og|sig_cnt\(57) & ((\og|sig_cnt[56]~217\) # (GND)))
-- \og|sig_cnt[57]~219\ = CARRY((!\og|sig_cnt[56]~217\) # (!\og|sig_cnt\(57)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(57),
	datad => VCC,
	cin => \og|sig_cnt[56]~217\,
	combout => \og|sig_cnt[57]~218_combout\,
	cout => \og|sig_cnt[57]~219\);

-- Location: FF_X61_Y18_N31
\og|sig_cnt[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[57]~218_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(57));

-- Location: LCCOMB_X61_Y17_N0
\og|sig_cnt[58]~220\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[58]~220_combout\ = (\og|sig_cnt\(58) & (\og|sig_cnt[57]~219\ $ (GND))) # (!\og|sig_cnt\(58) & (!\og|sig_cnt[57]~219\ & VCC))
-- \og|sig_cnt[58]~221\ = CARRY((\og|sig_cnt\(58) & !\og|sig_cnt[57]~219\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(58),
	datad => VCC,
	cin => \og|sig_cnt[57]~219\,
	combout => \og|sig_cnt[58]~220_combout\,
	cout => \og|sig_cnt[58]~221\);

-- Location: FF_X61_Y17_N1
\og|sig_cnt[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[58]~220_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(58));

-- Location: LCCOMB_X61_Y17_N2
\og|sig_cnt[59]~222\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[59]~222_combout\ = (\og|sig_cnt\(59) & (!\og|sig_cnt[58]~221\)) # (!\og|sig_cnt\(59) & ((\og|sig_cnt[58]~221\) # (GND)))
-- \og|sig_cnt[59]~223\ = CARRY((!\og|sig_cnt[58]~221\) # (!\og|sig_cnt\(59)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(59),
	datad => VCC,
	cin => \og|sig_cnt[58]~221\,
	combout => \og|sig_cnt[59]~222_combout\,
	cout => \og|sig_cnt[59]~223\);

-- Location: FF_X61_Y17_N3
\og|sig_cnt[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[59]~222_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(59));

-- Location: LCCOMB_X61_Y17_N4
\og|sig_cnt[60]~224\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[60]~224_combout\ = (\og|sig_cnt\(60) & (\og|sig_cnt[59]~223\ $ (GND))) # (!\og|sig_cnt\(60) & (!\og|sig_cnt[59]~223\ & VCC))
-- \og|sig_cnt[60]~225\ = CARRY((\og|sig_cnt\(60) & !\og|sig_cnt[59]~223\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(60),
	datad => VCC,
	cin => \og|sig_cnt[59]~223\,
	combout => \og|sig_cnt[60]~224_combout\,
	cout => \og|sig_cnt[60]~225\);

-- Location: FF_X61_Y17_N5
\og|sig_cnt[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[60]~224_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(60));

-- Location: LCCOMB_X61_Y17_N6
\og|sig_cnt[61]~226\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[61]~226_combout\ = (\og|sig_cnt\(61) & (!\og|sig_cnt[60]~225\)) # (!\og|sig_cnt\(61) & ((\og|sig_cnt[60]~225\) # (GND)))
-- \og|sig_cnt[61]~227\ = CARRY((!\og|sig_cnt[60]~225\) # (!\og|sig_cnt\(61)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(61),
	datad => VCC,
	cin => \og|sig_cnt[60]~225\,
	combout => \og|sig_cnt[61]~226_combout\,
	cout => \og|sig_cnt[61]~227\);

-- Location: FF_X61_Y17_N7
\og|sig_cnt[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[61]~226_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(61));

-- Location: LCCOMB_X61_Y17_N8
\og|sig_cnt[62]~228\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[62]~228_combout\ = (\og|sig_cnt\(62) & (\og|sig_cnt[61]~227\ $ (GND))) # (!\og|sig_cnt\(62) & (!\og|sig_cnt[61]~227\ & VCC))
-- \og|sig_cnt[62]~229\ = CARRY((\og|sig_cnt\(62) & !\og|sig_cnt[61]~227\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(62),
	datad => VCC,
	cin => \og|sig_cnt[61]~227\,
	combout => \og|sig_cnt[62]~228_combout\,
	cout => \og|sig_cnt[62]~229\);

-- Location: FF_X61_Y17_N9
\og|sig_cnt[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[62]~228_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(62));

-- Location: LCCOMB_X61_Y17_N10
\og|sig_cnt[63]~230\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[63]~230_combout\ = (\og|sig_cnt\(63) & (!\og|sig_cnt[62]~229\)) # (!\og|sig_cnt\(63) & ((\og|sig_cnt[62]~229\) # (GND)))
-- \og|sig_cnt[63]~231\ = CARRY((!\og|sig_cnt[62]~229\) # (!\og|sig_cnt\(63)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(63),
	datad => VCC,
	cin => \og|sig_cnt[62]~229\,
	combout => \og|sig_cnt[63]~230_combout\,
	cout => \og|sig_cnt[63]~231\);

-- Location: FF_X61_Y17_N11
\og|sig_cnt[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[63]~230_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(63));

-- Location: LCCOMB_X61_Y17_N12
\og|sig_cnt[64]~232\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[64]~232_combout\ = (\og|sig_cnt\(64) & (\og|sig_cnt[63]~231\ $ (GND))) # (!\og|sig_cnt\(64) & (!\og|sig_cnt[63]~231\ & VCC))
-- \og|sig_cnt[64]~233\ = CARRY((\og|sig_cnt\(64) & !\og|sig_cnt[63]~231\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(64),
	datad => VCC,
	cin => \og|sig_cnt[63]~231\,
	combout => \og|sig_cnt[64]~232_combout\,
	cout => \og|sig_cnt[64]~233\);

-- Location: FF_X61_Y17_N13
\og|sig_cnt[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[64]~232_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(64));

-- Location: LCCOMB_X61_Y17_N14
\og|sig_cnt[65]~234\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[65]~234_combout\ = (\og|sig_cnt\(65) & (!\og|sig_cnt[64]~233\)) # (!\og|sig_cnt\(65) & ((\og|sig_cnt[64]~233\) # (GND)))
-- \og|sig_cnt[65]~235\ = CARRY((!\og|sig_cnt[64]~233\) # (!\og|sig_cnt\(65)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(65),
	datad => VCC,
	cin => \og|sig_cnt[64]~233\,
	combout => \og|sig_cnt[65]~234_combout\,
	cout => \og|sig_cnt[65]~235\);

-- Location: FF_X61_Y17_N15
\og|sig_cnt[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[65]~234_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(65));

-- Location: LCCOMB_X61_Y17_N16
\og|sig_cnt[66]~236\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[66]~236_combout\ = (\og|sig_cnt\(66) & (\og|sig_cnt[65]~235\ $ (GND))) # (!\og|sig_cnt\(66) & (!\og|sig_cnt[65]~235\ & VCC))
-- \og|sig_cnt[66]~237\ = CARRY((\og|sig_cnt\(66) & !\og|sig_cnt[65]~235\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(66),
	datad => VCC,
	cin => \og|sig_cnt[65]~235\,
	combout => \og|sig_cnt[66]~236_combout\,
	cout => \og|sig_cnt[66]~237\);

-- Location: FF_X61_Y17_N17
\og|sig_cnt[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[66]~236_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(66));

-- Location: LCCOMB_X61_Y17_N18
\og|sig_cnt[67]~238\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[67]~238_combout\ = (\og|sig_cnt\(67) & (!\og|sig_cnt[66]~237\)) # (!\og|sig_cnt\(67) & ((\og|sig_cnt[66]~237\) # (GND)))
-- \og|sig_cnt[67]~239\ = CARRY((!\og|sig_cnt[66]~237\) # (!\og|sig_cnt\(67)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(67),
	datad => VCC,
	cin => \og|sig_cnt[66]~237\,
	combout => \og|sig_cnt[67]~238_combout\,
	cout => \og|sig_cnt[67]~239\);

-- Location: FF_X61_Y17_N19
\og|sig_cnt[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[67]~238_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(67));

-- Location: LCCOMB_X61_Y17_N20
\og|sig_cnt[68]~240\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[68]~240_combout\ = (\og|sig_cnt\(68) & (\og|sig_cnt[67]~239\ $ (GND))) # (!\og|sig_cnt\(68) & (!\og|sig_cnt[67]~239\ & VCC))
-- \og|sig_cnt[68]~241\ = CARRY((\og|sig_cnt\(68) & !\og|sig_cnt[67]~239\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(68),
	datad => VCC,
	cin => \og|sig_cnt[67]~239\,
	combout => \og|sig_cnt[68]~240_combout\,
	cout => \og|sig_cnt[68]~241\);

-- Location: FF_X61_Y17_N21
\og|sig_cnt[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[68]~240_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(68));

-- Location: LCCOMB_X61_Y17_N22
\og|sig_cnt[69]~242\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[69]~242_combout\ = (\og|sig_cnt\(69) & (!\og|sig_cnt[68]~241\)) # (!\og|sig_cnt\(69) & ((\og|sig_cnt[68]~241\) # (GND)))
-- \og|sig_cnt[69]~243\ = CARRY((!\og|sig_cnt[68]~241\) # (!\og|sig_cnt\(69)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(69),
	datad => VCC,
	cin => \og|sig_cnt[68]~241\,
	combout => \og|sig_cnt[69]~242_combout\,
	cout => \og|sig_cnt[69]~243\);

-- Location: FF_X61_Y17_N23
\og|sig_cnt[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[69]~242_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(69));

-- Location: LCCOMB_X61_Y17_N24
\og|sig_cnt[70]~244\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[70]~244_combout\ = (\og|sig_cnt\(70) & (\og|sig_cnt[69]~243\ $ (GND))) # (!\og|sig_cnt\(70) & (!\og|sig_cnt[69]~243\ & VCC))
-- \og|sig_cnt[70]~245\ = CARRY((\og|sig_cnt\(70) & !\og|sig_cnt[69]~243\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(70),
	datad => VCC,
	cin => \og|sig_cnt[69]~243\,
	combout => \og|sig_cnt[70]~244_combout\,
	cout => \og|sig_cnt[70]~245\);

-- Location: FF_X61_Y17_N25
\og|sig_cnt[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[70]~244_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(70));

-- Location: LCCOMB_X61_Y17_N26
\og|sig_cnt[71]~246\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[71]~246_combout\ = (\og|sig_cnt\(71) & (!\og|sig_cnt[70]~245\)) # (!\og|sig_cnt\(71) & ((\og|sig_cnt[70]~245\) # (GND)))
-- \og|sig_cnt[71]~247\ = CARRY((!\og|sig_cnt[70]~245\) # (!\og|sig_cnt\(71)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(71),
	datad => VCC,
	cin => \og|sig_cnt[70]~245\,
	combout => \og|sig_cnt[71]~246_combout\,
	cout => \og|sig_cnt[71]~247\);

-- Location: FF_X61_Y17_N27
\og|sig_cnt[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[71]~246_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(71));

-- Location: LCCOMB_X61_Y17_N28
\og|sig_cnt[72]~248\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[72]~248_combout\ = (\og|sig_cnt\(72) & (\og|sig_cnt[71]~247\ $ (GND))) # (!\og|sig_cnt\(72) & (!\og|sig_cnt[71]~247\ & VCC))
-- \og|sig_cnt[72]~249\ = CARRY((\og|sig_cnt\(72) & !\og|sig_cnt[71]~247\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(72),
	datad => VCC,
	cin => \og|sig_cnt[71]~247\,
	combout => \og|sig_cnt[72]~248_combout\,
	cout => \og|sig_cnt[72]~249\);

-- Location: FF_X61_Y17_N29
\og|sig_cnt[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[72]~248_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(72));

-- Location: LCCOMB_X61_Y17_N30
\og|sig_cnt[73]~250\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[73]~250_combout\ = (\og|sig_cnt\(73) & (!\og|sig_cnt[72]~249\)) # (!\og|sig_cnt\(73) & ((\og|sig_cnt[72]~249\) # (GND)))
-- \og|sig_cnt[73]~251\ = CARRY((!\og|sig_cnt[72]~249\) # (!\og|sig_cnt\(73)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(73),
	datad => VCC,
	cin => \og|sig_cnt[72]~249\,
	combout => \og|sig_cnt[73]~250_combout\,
	cout => \og|sig_cnt[73]~251\);

-- Location: FF_X61_Y17_N31
\og|sig_cnt[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[73]~250_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(73));

-- Location: LCCOMB_X61_Y16_N0
\og|sig_cnt[74]~252\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[74]~252_combout\ = (\og|sig_cnt\(74) & (\og|sig_cnt[73]~251\ $ (GND))) # (!\og|sig_cnt\(74) & (!\og|sig_cnt[73]~251\ & VCC))
-- \og|sig_cnt[74]~253\ = CARRY((\og|sig_cnt\(74) & !\og|sig_cnt[73]~251\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(74),
	datad => VCC,
	cin => \og|sig_cnt[73]~251\,
	combout => \og|sig_cnt[74]~252_combout\,
	cout => \og|sig_cnt[74]~253\);

-- Location: FF_X61_Y16_N1
\og|sig_cnt[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[74]~252_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(74));

-- Location: LCCOMB_X61_Y16_N2
\og|sig_cnt[75]~254\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[75]~254_combout\ = (\og|sig_cnt\(75) & (!\og|sig_cnt[74]~253\)) # (!\og|sig_cnt\(75) & ((\og|sig_cnt[74]~253\) # (GND)))
-- \og|sig_cnt[75]~255\ = CARRY((!\og|sig_cnt[74]~253\) # (!\og|sig_cnt\(75)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(75),
	datad => VCC,
	cin => \og|sig_cnt[74]~253\,
	combout => \og|sig_cnt[75]~254_combout\,
	cout => \og|sig_cnt[75]~255\);

-- Location: FF_X61_Y16_N3
\og|sig_cnt[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[75]~254_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(75));

-- Location: LCCOMB_X61_Y16_N4
\og|sig_cnt[76]~256\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[76]~256_combout\ = (\og|sig_cnt\(76) & (\og|sig_cnt[75]~255\ $ (GND))) # (!\og|sig_cnt\(76) & (!\og|sig_cnt[75]~255\ & VCC))
-- \og|sig_cnt[76]~257\ = CARRY((\og|sig_cnt\(76) & !\og|sig_cnt[75]~255\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(76),
	datad => VCC,
	cin => \og|sig_cnt[75]~255\,
	combout => \og|sig_cnt[76]~256_combout\,
	cout => \og|sig_cnt[76]~257\);

-- Location: FF_X61_Y16_N5
\og|sig_cnt[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[76]~256_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(76));

-- Location: LCCOMB_X61_Y16_N6
\og|sig_cnt[77]~258\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[77]~258_combout\ = (\og|sig_cnt\(77) & (!\og|sig_cnt[76]~257\)) # (!\og|sig_cnt\(77) & ((\og|sig_cnt[76]~257\) # (GND)))
-- \og|sig_cnt[77]~259\ = CARRY((!\og|sig_cnt[76]~257\) # (!\og|sig_cnt\(77)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(77),
	datad => VCC,
	cin => \og|sig_cnt[76]~257\,
	combout => \og|sig_cnt[77]~258_combout\,
	cout => \og|sig_cnt[77]~259\);

-- Location: FF_X61_Y16_N7
\og|sig_cnt[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[77]~258_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(77));

-- Location: LCCOMB_X61_Y16_N8
\og|sig_cnt[78]~260\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[78]~260_combout\ = (\og|sig_cnt\(78) & (\og|sig_cnt[77]~259\ $ (GND))) # (!\og|sig_cnt\(78) & (!\og|sig_cnt[77]~259\ & VCC))
-- \og|sig_cnt[78]~261\ = CARRY((\og|sig_cnt\(78) & !\og|sig_cnt[77]~259\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(78),
	datad => VCC,
	cin => \og|sig_cnt[77]~259\,
	combout => \og|sig_cnt[78]~260_combout\,
	cout => \og|sig_cnt[78]~261\);

-- Location: FF_X61_Y16_N9
\og|sig_cnt[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[78]~260_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(78));

-- Location: LCCOMB_X61_Y16_N10
\og|sig_cnt[79]~262\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[79]~262_combout\ = (\og|sig_cnt\(79) & (!\og|sig_cnt[78]~261\)) # (!\og|sig_cnt\(79) & ((\og|sig_cnt[78]~261\) # (GND)))
-- \og|sig_cnt[79]~263\ = CARRY((!\og|sig_cnt[78]~261\) # (!\og|sig_cnt\(79)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(79),
	datad => VCC,
	cin => \og|sig_cnt[78]~261\,
	combout => \og|sig_cnt[79]~262_combout\,
	cout => \og|sig_cnt[79]~263\);

-- Location: FF_X61_Y16_N11
\og|sig_cnt[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[79]~262_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(79));

-- Location: LCCOMB_X61_Y16_N12
\og|sig_cnt[80]~264\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[80]~264_combout\ = (\og|sig_cnt\(80) & (\og|sig_cnt[79]~263\ $ (GND))) # (!\og|sig_cnt\(80) & (!\og|sig_cnt[79]~263\ & VCC))
-- \og|sig_cnt[80]~265\ = CARRY((\og|sig_cnt\(80) & !\og|sig_cnt[79]~263\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(80),
	datad => VCC,
	cin => \og|sig_cnt[79]~263\,
	combout => \og|sig_cnt[80]~264_combout\,
	cout => \og|sig_cnt[80]~265\);

-- Location: FF_X61_Y16_N13
\og|sig_cnt[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[80]~264_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(80));

-- Location: LCCOMB_X61_Y16_N14
\og|sig_cnt[81]~266\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[81]~266_combout\ = (\og|sig_cnt\(81) & (!\og|sig_cnt[80]~265\)) # (!\og|sig_cnt\(81) & ((\og|sig_cnt[80]~265\) # (GND)))
-- \og|sig_cnt[81]~267\ = CARRY((!\og|sig_cnt[80]~265\) # (!\og|sig_cnt\(81)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(81),
	datad => VCC,
	cin => \og|sig_cnt[80]~265\,
	combout => \og|sig_cnt[81]~266_combout\,
	cout => \og|sig_cnt[81]~267\);

-- Location: FF_X61_Y16_N15
\og|sig_cnt[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[81]~266_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(81));

-- Location: LCCOMB_X61_Y16_N16
\og|sig_cnt[82]~268\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[82]~268_combout\ = (\og|sig_cnt\(82) & (\og|sig_cnt[81]~267\ $ (GND))) # (!\og|sig_cnt\(82) & (!\og|sig_cnt[81]~267\ & VCC))
-- \og|sig_cnt[82]~269\ = CARRY((\og|sig_cnt\(82) & !\og|sig_cnt[81]~267\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(82),
	datad => VCC,
	cin => \og|sig_cnt[81]~267\,
	combout => \og|sig_cnt[82]~268_combout\,
	cout => \og|sig_cnt[82]~269\);

-- Location: FF_X61_Y16_N17
\og|sig_cnt[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[82]~268_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(82));

-- Location: LCCOMB_X61_Y16_N18
\og|sig_cnt[83]~270\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[83]~270_combout\ = (\og|sig_cnt\(83) & (!\og|sig_cnt[82]~269\)) # (!\og|sig_cnt\(83) & ((\og|sig_cnt[82]~269\) # (GND)))
-- \og|sig_cnt[83]~271\ = CARRY((!\og|sig_cnt[82]~269\) # (!\og|sig_cnt\(83)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(83),
	datad => VCC,
	cin => \og|sig_cnt[82]~269\,
	combout => \og|sig_cnt[83]~270_combout\,
	cout => \og|sig_cnt[83]~271\);

-- Location: FF_X61_Y16_N19
\og|sig_cnt[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[83]~270_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(83));

-- Location: LCCOMB_X61_Y16_N20
\og|sig_cnt[84]~272\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[84]~272_combout\ = (\og|sig_cnt\(84) & (\og|sig_cnt[83]~271\ $ (GND))) # (!\og|sig_cnt\(84) & (!\og|sig_cnt[83]~271\ & VCC))
-- \og|sig_cnt[84]~273\ = CARRY((\og|sig_cnt\(84) & !\og|sig_cnt[83]~271\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(84),
	datad => VCC,
	cin => \og|sig_cnt[83]~271\,
	combout => \og|sig_cnt[84]~272_combout\,
	cout => \og|sig_cnt[84]~273\);

-- Location: FF_X61_Y16_N21
\og|sig_cnt[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[84]~272_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(84));

-- Location: LCCOMB_X61_Y16_N22
\og|sig_cnt[85]~274\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[85]~274_combout\ = (\og|sig_cnt\(85) & (!\og|sig_cnt[84]~273\)) # (!\og|sig_cnt\(85) & ((\og|sig_cnt[84]~273\) # (GND)))
-- \og|sig_cnt[85]~275\ = CARRY((!\og|sig_cnt[84]~273\) # (!\og|sig_cnt\(85)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(85),
	datad => VCC,
	cin => \og|sig_cnt[84]~273\,
	combout => \og|sig_cnt[85]~274_combout\,
	cout => \og|sig_cnt[85]~275\);

-- Location: FF_X61_Y16_N23
\og|sig_cnt[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[85]~274_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(85));

-- Location: LCCOMB_X61_Y16_N24
\og|sig_cnt[86]~276\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[86]~276_combout\ = (\og|sig_cnt\(86) & (\og|sig_cnt[85]~275\ $ (GND))) # (!\og|sig_cnt\(86) & (!\og|sig_cnt[85]~275\ & VCC))
-- \og|sig_cnt[86]~277\ = CARRY((\og|sig_cnt\(86) & !\og|sig_cnt[85]~275\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(86),
	datad => VCC,
	cin => \og|sig_cnt[85]~275\,
	combout => \og|sig_cnt[86]~276_combout\,
	cout => \og|sig_cnt[86]~277\);

-- Location: FF_X61_Y16_N25
\og|sig_cnt[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[86]~276_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(86));

-- Location: LCCOMB_X61_Y16_N26
\og|sig_cnt[87]~278\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[87]~278_combout\ = (\og|sig_cnt\(87) & (!\og|sig_cnt[86]~277\)) # (!\og|sig_cnt\(87) & ((\og|sig_cnt[86]~277\) # (GND)))
-- \og|sig_cnt[87]~279\ = CARRY((!\og|sig_cnt[86]~277\) # (!\og|sig_cnt\(87)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(87),
	datad => VCC,
	cin => \og|sig_cnt[86]~277\,
	combout => \og|sig_cnt[87]~278_combout\,
	cout => \og|sig_cnt[87]~279\);

-- Location: FF_X61_Y16_N27
\og|sig_cnt[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[87]~278_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(87));

-- Location: LCCOMB_X61_Y16_N28
\og|sig_cnt[88]~280\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[88]~280_combout\ = (\og|sig_cnt\(88) & (\og|sig_cnt[87]~279\ $ (GND))) # (!\og|sig_cnt\(88) & (!\og|sig_cnt[87]~279\ & VCC))
-- \og|sig_cnt[88]~281\ = CARRY((\og|sig_cnt\(88) & !\og|sig_cnt[87]~279\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(88),
	datad => VCC,
	cin => \og|sig_cnt[87]~279\,
	combout => \og|sig_cnt[88]~280_combout\,
	cout => \og|sig_cnt[88]~281\);

-- Location: FF_X61_Y16_N29
\og|sig_cnt[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[88]~280_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(88));

-- Location: LCCOMB_X61_Y15_N30
\og|Equal0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~26_combout\ = (!\og|sig_cnt\(86) & (!\og|sig_cnt\(87) & (!\og|sig_cnt\(88) & !\og|sig_cnt\(85))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(86),
	datab => \og|sig_cnt\(87),
	datac => \og|sig_cnt\(88),
	datad => \og|sig_cnt\(85),
	combout => \og|Equal0~26_combout\);

-- Location: LCCOMB_X61_Y16_N30
\og|sig_cnt[89]~282\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[89]~282_combout\ = (\og|sig_cnt\(89) & (!\og|sig_cnt[88]~281\)) # (!\og|sig_cnt\(89) & ((\og|sig_cnt[88]~281\) # (GND)))
-- \og|sig_cnt[89]~283\ = CARRY((!\og|sig_cnt[88]~281\) # (!\og|sig_cnt\(89)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(89),
	datad => VCC,
	cin => \og|sig_cnt[88]~281\,
	combout => \og|sig_cnt[89]~282_combout\,
	cout => \og|sig_cnt[89]~283\);

-- Location: FF_X61_Y16_N31
\og|sig_cnt[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[89]~282_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(89));

-- Location: LCCOMB_X61_Y15_N0
\og|sig_cnt[90]~284\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[90]~284_combout\ = (\og|sig_cnt\(90) & (\og|sig_cnt[89]~283\ $ (GND))) # (!\og|sig_cnt\(90) & (!\og|sig_cnt[89]~283\ & VCC))
-- \og|sig_cnt[90]~285\ = CARRY((\og|sig_cnt\(90) & !\og|sig_cnt[89]~283\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(90),
	datad => VCC,
	cin => \og|sig_cnt[89]~283\,
	combout => \og|sig_cnt[90]~284_combout\,
	cout => \og|sig_cnt[90]~285\);

-- Location: FF_X61_Y15_N1
\og|sig_cnt[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[90]~284_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(90));

-- Location: LCCOMB_X61_Y15_N2
\og|sig_cnt[91]~286\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[91]~286_combout\ = (\og|sig_cnt\(91) & (!\og|sig_cnt[90]~285\)) # (!\og|sig_cnt\(91) & ((\og|sig_cnt[90]~285\) # (GND)))
-- \og|sig_cnt[91]~287\ = CARRY((!\og|sig_cnt[90]~285\) # (!\og|sig_cnt\(91)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(91),
	datad => VCC,
	cin => \og|sig_cnt[90]~285\,
	combout => \og|sig_cnt[91]~286_combout\,
	cout => \og|sig_cnt[91]~287\);

-- Location: FF_X61_Y15_N3
\og|sig_cnt[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[91]~286_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(91));

-- Location: LCCOMB_X61_Y15_N4
\og|sig_cnt[92]~288\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[92]~288_combout\ = (\og|sig_cnt\(92) & (\og|sig_cnt[91]~287\ $ (GND))) # (!\og|sig_cnt\(92) & (!\og|sig_cnt[91]~287\ & VCC))
-- \og|sig_cnt[92]~289\ = CARRY((\og|sig_cnt\(92) & !\og|sig_cnt[91]~287\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(92),
	datad => VCC,
	cin => \og|sig_cnt[91]~287\,
	combout => \og|sig_cnt[92]~288_combout\,
	cout => \og|sig_cnt[92]~289\);

-- Location: FF_X61_Y15_N5
\og|sig_cnt[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[92]~288_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(92));

-- Location: LCCOMB_X61_Y15_N6
\og|sig_cnt[93]~290\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[93]~290_combout\ = (\og|sig_cnt\(93) & (!\og|sig_cnt[92]~289\)) # (!\og|sig_cnt\(93) & ((\og|sig_cnt[92]~289\) # (GND)))
-- \og|sig_cnt[93]~291\ = CARRY((!\og|sig_cnt[92]~289\) # (!\og|sig_cnt\(93)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(93),
	datad => VCC,
	cin => \og|sig_cnt[92]~289\,
	combout => \og|sig_cnt[93]~290_combout\,
	cout => \og|sig_cnt[93]~291\);

-- Location: FF_X61_Y15_N7
\og|sig_cnt[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[93]~290_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(93));

-- Location: LCCOMB_X61_Y15_N8
\og|sig_cnt[94]~292\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[94]~292_combout\ = (\og|sig_cnt\(94) & (\og|sig_cnt[93]~291\ $ (GND))) # (!\og|sig_cnt\(94) & (!\og|sig_cnt[93]~291\ & VCC))
-- \og|sig_cnt[94]~293\ = CARRY((\og|sig_cnt\(94) & !\og|sig_cnt[93]~291\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(94),
	datad => VCC,
	cin => \og|sig_cnt[93]~291\,
	combout => \og|sig_cnt[94]~292_combout\,
	cout => \og|sig_cnt[94]~293\);

-- Location: FF_X61_Y15_N9
\og|sig_cnt[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[94]~292_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(94));

-- Location: LCCOMB_X61_Y15_N10
\og|sig_cnt[95]~294\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[95]~294_combout\ = (\og|sig_cnt\(95) & (!\og|sig_cnt[94]~293\)) # (!\og|sig_cnt\(95) & ((\og|sig_cnt[94]~293\) # (GND)))
-- \og|sig_cnt[95]~295\ = CARRY((!\og|sig_cnt[94]~293\) # (!\og|sig_cnt\(95)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(95),
	datad => VCC,
	cin => \og|sig_cnt[94]~293\,
	combout => \og|sig_cnt[95]~294_combout\,
	cout => \og|sig_cnt[95]~295\);

-- Location: FF_X61_Y15_N11
\og|sig_cnt[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[95]~294_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(95));

-- Location: LCCOMB_X61_Y15_N12
\og|sig_cnt[96]~296\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[96]~296_combout\ = (\og|sig_cnt\(96) & (\og|sig_cnt[95]~295\ $ (GND))) # (!\og|sig_cnt\(96) & (!\og|sig_cnt[95]~295\ & VCC))
-- \og|sig_cnt[96]~297\ = CARRY((\og|sig_cnt\(96) & !\og|sig_cnt[95]~295\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(96),
	datad => VCC,
	cin => \og|sig_cnt[95]~295\,
	combout => \og|sig_cnt[96]~296_combout\,
	cout => \og|sig_cnt[96]~297\);

-- Location: FF_X61_Y15_N13
\og|sig_cnt[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[96]~296_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(96));

-- Location: LCCOMB_X61_Y15_N14
\og|sig_cnt[97]~298\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[97]~298_combout\ = (\og|sig_cnt\(97) & (!\og|sig_cnt[96]~297\)) # (!\og|sig_cnt\(97) & ((\og|sig_cnt[96]~297\) # (GND)))
-- \og|sig_cnt[97]~299\ = CARRY((!\og|sig_cnt[96]~297\) # (!\og|sig_cnt\(97)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(97),
	datad => VCC,
	cin => \og|sig_cnt[96]~297\,
	combout => \og|sig_cnt[97]~298_combout\,
	cout => \og|sig_cnt[97]~299\);

-- Location: FF_X61_Y15_N15
\og|sig_cnt[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[97]~298_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(97));

-- Location: LCCOMB_X61_Y15_N16
\og|sig_cnt[98]~300\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[98]~300_combout\ = (\og|sig_cnt\(98) & (\og|sig_cnt[97]~299\ $ (GND))) # (!\og|sig_cnt\(98) & (!\og|sig_cnt[97]~299\ & VCC))
-- \og|sig_cnt[98]~301\ = CARRY((\og|sig_cnt\(98) & !\og|sig_cnt[97]~299\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(98),
	datad => VCC,
	cin => \og|sig_cnt[97]~299\,
	combout => \og|sig_cnt[98]~300_combout\,
	cout => \og|sig_cnt[98]~301\);

-- Location: FF_X61_Y15_N17
\og|sig_cnt[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[98]~300_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(98));

-- Location: LCCOMB_X61_Y15_N18
\og|sig_cnt[99]~302\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[99]~302_combout\ = (\og|sig_cnt\(99) & (!\og|sig_cnt[98]~301\)) # (!\og|sig_cnt\(99) & ((\og|sig_cnt[98]~301\) # (GND)))
-- \og|sig_cnt[99]~303\ = CARRY((!\og|sig_cnt[98]~301\) # (!\og|sig_cnt\(99)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(99),
	datad => VCC,
	cin => \og|sig_cnt[98]~301\,
	combout => \og|sig_cnt[99]~302_combout\,
	cout => \og|sig_cnt[99]~303\);

-- Location: FF_X61_Y15_N19
\og|sig_cnt[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[99]~302_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(99));

-- Location: LCCOMB_X61_Y15_N20
\og|sig_cnt[100]~304\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[100]~304_combout\ = \og|sig_cnt[99]~303\ $ (!\og|sig_cnt\(100))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_cnt\(100),
	cin => \og|sig_cnt[99]~303\,
	combout => \og|sig_cnt[100]~304_combout\);

-- Location: FF_X61_Y15_N21
\og|sig_cnt[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[100]~304_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(100));

-- Location: LCCOMB_X61_Y15_N28
\og|Equal0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~29_combout\ = (!\og|sig_cnt\(100) & (!\og|sig_cnt\(99) & (!\og|sig_cnt\(97) & !\og|sig_cnt\(98))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(100),
	datab => \og|sig_cnt\(99),
	datac => \og|sig_cnt\(97),
	datad => \og|sig_cnt\(98),
	combout => \og|Equal0~29_combout\);

-- Location: LCCOMB_X61_Y15_N26
\og|Equal0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~28_combout\ = (!\og|sig_cnt\(96) & (!\og|sig_cnt\(95) & (!\og|sig_cnt\(94) & !\og|sig_cnt\(93))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(96),
	datab => \og|sig_cnt\(95),
	datac => \og|sig_cnt\(94),
	datad => \og|sig_cnt\(93),
	combout => \og|Equal0~28_combout\);

-- Location: LCCOMB_X61_Y15_N24
\og|Equal0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~27_combout\ = (!\og|sig_cnt\(89) & (!\og|sig_cnt\(91) & (!\og|sig_cnt\(92) & !\og|sig_cnt\(90))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(89),
	datab => \og|sig_cnt\(91),
	datac => \og|sig_cnt\(92),
	datad => \og|sig_cnt\(90),
	combout => \og|Equal0~27_combout\);

-- Location: LCCOMB_X61_Y15_N22
\og|Equal0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~30_combout\ = (\og|Equal0~26_combout\ & (\og|Equal0~29_combout\ & (\og|Equal0~28_combout\ & \og|Equal0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|Equal0~26_combout\,
	datab => \og|Equal0~29_combout\,
	datac => \og|Equal0~28_combout\,
	datad => \og|Equal0~27_combout\,
	combout => \og|Equal0~30_combout\);

-- Location: LCCOMB_X60_Y19_N12
\og|Equal0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~23_combout\ = (!\og|sig_cnt\(80) & (!\og|sig_cnt\(79) & (!\og|sig_cnt\(78) & !\og|sig_cnt\(77))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(80),
	datab => \og|sig_cnt\(79),
	datac => \og|sig_cnt\(78),
	datad => \og|sig_cnt\(77),
	combout => \og|Equal0~23_combout\);

-- Location: LCCOMB_X60_Y19_N24
\og|Equal0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~21_combout\ = (!\og|sig_cnt\(71) & (!\og|sig_cnt\(70) & (!\og|sig_cnt\(69) & !\og|sig_cnt\(72))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(71),
	datab => \og|sig_cnt\(70),
	datac => \og|sig_cnt\(69),
	datad => \og|sig_cnt\(72),
	combout => \og|Equal0~21_combout\);

-- Location: LCCOMB_X60_Y19_N14
\og|Equal0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~24_combout\ = (!\og|sig_cnt\(84) & (!\og|sig_cnt\(83) & (!\og|sig_cnt\(81) & !\og|sig_cnt\(82))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(84),
	datab => \og|sig_cnt\(83),
	datac => \og|sig_cnt\(81),
	datad => \og|sig_cnt\(82),
	combout => \og|Equal0~24_combout\);

-- Location: LCCOMB_X60_Y19_N10
\og|Equal0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~22_combout\ = (!\og|sig_cnt\(75) & (!\og|sig_cnt\(74) & (!\og|sig_cnt\(76) & !\og|sig_cnt\(73))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(75),
	datab => \og|sig_cnt\(74),
	datac => \og|sig_cnt\(76),
	datad => \og|sig_cnt\(73),
	combout => \og|Equal0~22_combout\);

-- Location: LCCOMB_X60_Y19_N8
\og|Equal0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~25_combout\ = (\og|Equal0~23_combout\ & (\og|Equal0~21_combout\ & (\og|Equal0~24_combout\ & \og|Equal0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|Equal0~23_combout\,
	datab => \og|Equal0~21_combout\,
	datac => \og|Equal0~24_combout\,
	datad => \og|Equal0~22_combout\,
	combout => \og|Equal0~25_combout\);

-- Location: LCCOMB_X61_Y21_N8
\og|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~0_combout\ = (!\og|sig_cnt\(7) & (!\og|sig_cnt\(8) & (\og|sig_cnt\(1) & \og|sig_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(7),
	datab => \og|sig_cnt\(8),
	datac => \og|sig_cnt\(1),
	datad => \og|sig_cnt\(2),
	combout => \og|Equal0~0_combout\);

-- Location: LCCOMB_X62_Y18_N24
\og|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~1_combout\ = (!\og|sig_cnt\(11) & (!\og|sig_cnt\(12) & (!\og|sig_cnt\(10) & !\og|sig_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(11),
	datab => \og|sig_cnt\(12),
	datac => \og|sig_cnt\(10),
	datad => \og|sig_cnt\(9),
	combout => \og|Equal0~1_combout\);

-- Location: LCCOMB_X62_Y18_N26
\og|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~3_combout\ = (!\og|sig_cnt\(17) & (!\og|sig_cnt\(18) & (!\og|sig_cnt\(20) & !\og|sig_cnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(17),
	datab => \og|sig_cnt\(18),
	datac => \og|sig_cnt\(20),
	datad => \og|sig_cnt\(19),
	combout => \og|Equal0~3_combout\);

-- Location: LCCOMB_X62_Y20_N8
\og|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~2_combout\ = (!\og|sig_cnt\(15) & (!\og|sig_cnt\(16) & (!\og|sig_cnt\(13) & !\og|sig_cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(15),
	datab => \og|sig_cnt\(16),
	datac => \og|sig_cnt\(13),
	datad => \og|sig_cnt\(14),
	combout => \og|Equal0~2_combout\);

-- Location: LCCOMB_X62_Y18_N12
\og|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~4_combout\ = (\og|Equal0~0_combout\ & (\og|Equal0~1_combout\ & (\og|Equal0~3_combout\ & \og|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|Equal0~0_combout\,
	datab => \og|Equal0~1_combout\,
	datac => \og|Equal0~3_combout\,
	datad => \og|Equal0~2_combout\,
	combout => \og|Equal0~4_combout\);

-- Location: LCCOMB_X62_Y18_N10
\og|Equal0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~13_combout\ = (!\og|sig_cnt\(49) & (!\og|sig_cnt\(52) & (!\og|sig_cnt\(50) & !\og|sig_cnt\(51))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(49),
	datab => \og|sig_cnt\(52),
	datac => \og|sig_cnt\(50),
	datad => \og|sig_cnt\(51),
	combout => \og|Equal0~13_combout\);

-- Location: LCCOMB_X62_Y18_N16
\og|Equal0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~12_combout\ = (!\og|sig_cnt\(48) & (!\og|sig_cnt\(46) & (!\og|sig_cnt\(45) & !\og|sig_cnt\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(48),
	datab => \og|sig_cnt\(46),
	datac => \og|sig_cnt\(45),
	datad => \og|sig_cnt\(47),
	combout => \og|Equal0~12_combout\);

-- Location: LCCOMB_X62_Y18_N14
\og|Equal0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~11_combout\ = (!\og|sig_cnt\(43) & (!\og|sig_cnt\(44) & (!\og|sig_cnt\(42) & !\og|sig_cnt\(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(43),
	datab => \og|sig_cnt\(44),
	datac => \og|sig_cnt\(42),
	datad => \og|sig_cnt\(41),
	combout => \og|Equal0~11_combout\);

-- Location: LCCOMB_X62_Y19_N10
\og|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~10_combout\ = (!\og|sig_cnt\(38) & (!\og|sig_cnt\(40) & (!\og|sig_cnt\(39) & !\og|sig_cnt\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(38),
	datab => \og|sig_cnt\(40),
	datac => \og|sig_cnt\(39),
	datad => \og|sig_cnt\(37),
	combout => \og|Equal0~10_combout\);

-- Location: LCCOMB_X62_Y18_N28
\og|Equal0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~14_combout\ = (\og|Equal0~13_combout\ & (\og|Equal0~12_combout\ & (\og|Equal0~11_combout\ & \og|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|Equal0~13_combout\,
	datab => \og|Equal0~12_combout\,
	datac => \og|Equal0~11_combout\,
	datad => \og|Equal0~10_combout\,
	combout => \og|Equal0~14_combout\);

-- Location: LCCOMB_X60_Y18_N0
\og|Equal0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~15_combout\ = (!\og|sig_cnt\(54) & (!\og|sig_cnt\(53) & (!\og|sig_cnt\(55) & !\og|sig_cnt\(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(54),
	datab => \og|sig_cnt\(53),
	datac => \og|sig_cnt\(55),
	datad => \og|sig_cnt\(56),
	combout => \og|Equal0~15_combout\);

-- Location: LCCOMB_X62_Y17_N0
\og|Equal0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~16_combout\ = (!\og|sig_cnt\(59) & (!\og|sig_cnt\(60) & (!\og|sig_cnt\(58) & !\og|sig_cnt\(57))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(59),
	datab => \og|sig_cnt\(60),
	datac => \og|sig_cnt\(58),
	datad => \og|sig_cnt\(57),
	combout => \og|Equal0~16_combout\);

-- Location: LCCOMB_X62_Y18_N22
\og|Equal0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~18_combout\ = (!\og|sig_cnt\(68) & (!\og|sig_cnt\(67) & (!\og|sig_cnt\(65) & !\og|sig_cnt\(66))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(68),
	datab => \og|sig_cnt\(67),
	datac => \og|sig_cnt\(65),
	datad => \og|sig_cnt\(66),
	combout => \og|Equal0~18_combout\);

-- Location: LCCOMB_X62_Y17_N18
\og|Equal0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~17_combout\ = (!\og|sig_cnt\(63) & (!\og|sig_cnt\(64) & (!\og|sig_cnt\(61) & !\og|sig_cnt\(62))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(63),
	datab => \og|sig_cnt\(64),
	datac => \og|sig_cnt\(61),
	datad => \og|sig_cnt\(62),
	combout => \og|Equal0~17_combout\);

-- Location: LCCOMB_X62_Y18_N8
\og|Equal0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~19_combout\ = (\og|Equal0~15_combout\ & (\og|Equal0~16_combout\ & (\og|Equal0~18_combout\ & \og|Equal0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|Equal0~15_combout\,
	datab => \og|Equal0~16_combout\,
	datac => \og|Equal0~18_combout\,
	datad => \og|Equal0~17_combout\,
	combout => \og|Equal0~19_combout\);

-- Location: LCCOMB_X62_Y19_N12
\og|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~7_combout\ = (!\og|sig_cnt\(31) & (!\og|sig_cnt\(32) & (!\og|sig_cnt\(29) & !\og|sig_cnt\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(31),
	datab => \og|sig_cnt\(32),
	datac => \og|sig_cnt\(29),
	datad => \og|sig_cnt\(30),
	combout => \og|Equal0~7_combout\);

-- Location: LCCOMB_X62_Y19_N0
\og|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~5_combout\ = (!\og|sig_cnt\(22) & (!\og|sig_cnt\(24) & (!\og|sig_cnt\(23) & !\og|sig_cnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(22),
	datab => \og|sig_cnt\(24),
	datac => \og|sig_cnt\(23),
	datad => \og|sig_cnt\(21),
	combout => \og|Equal0~5_combout\);

-- Location: LCCOMB_X62_Y19_N26
\og|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~6_combout\ = (!\og|sig_cnt\(27) & (!\og|sig_cnt\(28) & (!\og|sig_cnt\(26) & !\og|sig_cnt\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(27),
	datab => \og|sig_cnt\(28),
	datac => \og|sig_cnt\(26),
	datad => \og|sig_cnt\(25),
	combout => \og|Equal0~6_combout\);

-- Location: LCCOMB_X62_Y19_N6
\og|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~8_combout\ = (!\og|sig_cnt\(35) & (!\og|sig_cnt\(36) & (!\og|sig_cnt\(34) & !\og|sig_cnt\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(35),
	datab => \og|sig_cnt\(36),
	datac => \og|sig_cnt\(34),
	datad => \og|sig_cnt\(33),
	combout => \og|Equal0~8_combout\);

-- Location: LCCOMB_X62_Y19_N24
\og|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~9_combout\ = (\og|Equal0~7_combout\ & (\og|Equal0~5_combout\ & (\og|Equal0~6_combout\ & \og|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|Equal0~7_combout\,
	datab => \og|Equal0~5_combout\,
	datac => \og|Equal0~6_combout\,
	datad => \og|Equal0~8_combout\,
	combout => \og|Equal0~9_combout\);

-- Location: LCCOMB_X62_Y18_N18
\og|Equal0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~20_combout\ = (\og|Equal0~4_combout\ & (\og|Equal0~14_combout\ & (\og|Equal0~19_combout\ & \og|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|Equal0~4_combout\,
	datab => \og|Equal0~14_combout\,
	datac => \og|Equal0~19_combout\,
	datad => \og|Equal0~9_combout\,
	combout => \og|Equal0~20_combout\);

-- Location: LCCOMB_X60_Y18_N2
\og|Equal0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~31_combout\ = (\og|Equal0~30_combout\ & (\og|Equal0~25_combout\ & \og|Equal0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \og|Equal0~30_combout\,
	datac => \og|Equal0~25_combout\,
	datad => \og|Equal0~20_combout\,
	combout => \og|Equal0~31_combout\);

-- Location: LCCOMB_X61_Y21_N0
\og|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~0_combout\ = (\og|sig_cnt\(0) & (!\og|sig_cnt\(4) & (!\og|sig_cnt\(5) & !\og|sig_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(0),
	datab => \og|sig_cnt\(4),
	datac => \og|sig_cnt\(5),
	datad => \og|sig_cnt\(3),
	combout => \og|Equal1~0_combout\);

-- Location: LCCOMB_X61_Y21_N2
\og|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~1_combout\ = (!\og|sig_cnt\(6) & (\og|Equal0~31_combout\ & \og|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(6),
	datac => \og|Equal0~31_combout\,
	datad => \og|Equal1~0_combout\,
	combout => \og|Equal1~1_combout\);

-- Location: LCCOMB_X62_Y21_N8
\og|sig_cnt[50]~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[50]~105_combout\ = (!\og|state_Do.s1~q\ & ((\og|state_Do.s5~q\ & (\og|Equal2~0_combout\)) # (!\og|state_Do.s5~q\ & ((\og|Equal1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|state_Do.s5~q\,
	datab => \og|Equal2~0_combout\,
	datac => \og|state_Do.s1~q\,
	datad => \og|Equal1~1_combout\,
	combout => \og|sig_cnt[50]~105_combout\);

-- Location: LCCOMB_X61_Y21_N10
\og|Equal0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~32_combout\ = (\og|sig_cnt\(6) & (\og|Equal0~31_combout\ & \og|sig_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(6),
	datac => \og|Equal0~31_combout\,
	datad => \og|sig_cnt\(3),
	combout => \og|Equal0~32_combout\);

-- Location: LCCOMB_X61_Y21_N4
\og|Equal0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~33_combout\ = (\og|sig_cnt\(0) & (\og|sig_cnt\(4) & (!\og|sig_cnt\(5) & \og|Equal0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(0),
	datab => \og|sig_cnt\(4),
	datac => \og|sig_cnt\(5),
	datad => \og|Equal0~32_combout\,
	combout => \og|Equal0~33_combout\);

-- Location: LCCOMB_X62_Y21_N12
\og|sig_cnt[50]~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[50]~106_combout\ = (\og|sig_cnt[50]~105_combout\) # ((\og|state_Do.s1~q\ & \og|Equal0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|state_Do.s1~q\,
	datab => \og|sig_cnt[50]~105_combout\,
	datac => \og|Equal0~33_combout\,
	combout => \og|sig_cnt[50]~106_combout\);

-- Location: FF_X61_Y21_N13
\og|sig_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[0]~101_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[50]~106_combout\,
	ena => \og|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(0));

-- Location: LCCOMB_X61_Y21_N6
\og|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal2~0_combout\ = (!\og|sig_cnt\(0) & (!\og|sig_cnt\(4) & (\og|sig_cnt\(5) & \og|Equal0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(0),
	datab => \og|sig_cnt\(4),
	datac => \og|sig_cnt\(5),
	datad => \og|Equal0~32_combout\,
	combout => \og|Equal2~0_combout\);

-- Location: LCCOMB_X62_Y21_N6
\og|state_Do~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|state_Do~27_combout\ = (\og|state_Do.s5~q\ & (((\og|state_Do.s2~q\ & !\og|Equal1~1_combout\)) # (!\og|Equal2~0_combout\))) # (!\og|state_Do.s5~q\ & (((\og|state_Do.s2~q\ & !\og|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|state_Do.s5~q\,
	datab => \og|Equal2~0_combout\,
	datac => \og|state_Do.s2~q\,
	datad => \og|Equal1~1_combout\,
	combout => \og|state_Do~27_combout\);

-- Location: LCCOMB_X62_Y21_N4
\og|state_Do~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|state_Do~26_combout\ = (\sig_main_rising_edge~combout\ & ((\og|state_Do.s0~q\) # ((\crc|sig_correlation\(4) & \og|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|sig_correlation\(4),
	datab => \sig_main_rising_edge~combout\,
	datac => \og|LessThan0~0_combout\,
	datad => \og|state_Do.s0~q\,
	combout => \og|state_Do~26_combout\);

-- Location: LCCOMB_X62_Y21_N16
\og|state_Do~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|state_Do~28_combout\ = (!\og|state_Do~27_combout\ & (\og|state_Do~26_combout\ & ((\og|Equal0~33_combout\) # (!\og|state_Do.s1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|state_Do~27_combout\,
	datab => \og|Equal0~33_combout\,
	datac => \og|state_Do.s1~q\,
	datad => \og|state_Do~26_combout\,
	combout => \og|state_Do~28_combout\);

-- Location: FF_X62_Y21_N23
\og|state_Do.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|state_Do.s1~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|state_Do~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|state_Do.s1~q\);

-- Location: FF_X62_Y21_N7
\og|state_Do.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|state_Do.s1~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|state_Do~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|state_Do.s2~q\);

-- Location: FF_X62_Y21_N3
\og|state_Do.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|state_Do.s2~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|state_Do~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|state_Do.s3~q\);

-- Location: FF_X62_Y21_N27
\og|state_Do.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|state_Do.s3~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|state_Do.s4~q\);

-- Location: LCCOMB_X62_Y21_N30
\og|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Selector5~0_combout\ = (\og|state_Do.s4~q\) # ((!\og|Equal2~0_combout\ & \og|state_Do.s5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|state_Do.s4~q\,
	datab => \og|Equal2~0_combout\,
	datac => \og|state_Do.s5~q\,
	combout => \og|Selector5~0_combout\);

-- Location: FF_X62_Y21_N31
\og|state_Do.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|Selector5~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|state_Do.s5~q\);

-- Location: FF_X62_Y21_N29
\og|state_Do.s5a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|state_Do.s5~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|state_Do~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|state_Do.s5a~q\);

-- Location: LCCOMB_X62_Y21_N0
\og|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Selector7~0_combout\ = (\crc|crc8bit_out~q\ & \og|state_Do.s5a~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \crc|crc8bit_out~q\,
	datad => \og|state_Do.s5a~q\,
	combout => \og|Selector7~0_combout\);

-- Location: FF_X62_Y21_N1
\og|state_Do.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|Selector7~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|state_Do.s6~q\);

-- Location: LCCOMB_X61_Y22_N8
\og|Selector112~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Selector112~0_combout\ = (!\og|state_Do.s6~q\ & ((\og|load_leds~q\) # (\og|state_Do.s8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \og|state_Do.s6~q\,
	datac => \og|load_leds~q\,
	datad => \og|state_Do.s8~q\,
	combout => \og|Selector112~0_combout\);

-- Location: FF_X61_Y22_N9
\og|load_leds\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|Selector112~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|load_leds~q\);

-- Location: LCCOMB_X71_Y28_N22
\og|sig_green_leds_reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_green_leds_reg[0]~feeder_combout\ = sig_rom_sf(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rom_sf(7),
	combout => \og|sig_green_leds_reg[0]~feeder_combout\);

-- Location: LCCOMB_X62_Y21_N14
\og|sig_green_leds_reg[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_green_leds_reg[7]~0_combout\ = (\og|state_Do.s2~q\ & (!\sig_cut_not~q\ & \sig_cut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|state_Do.s2~q\,
	datab => \sig_cut_not~q\,
	datac => \sig_cut~q\,
	combout => \og|sig_green_leds_reg[7]~0_combout\);

-- Location: FF_X71_Y28_N23
\og|sig_green_leds_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_green_leds_reg[0]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_green_leds_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_green_leds_reg\(0));

-- Location: FF_X71_Y28_N29
\og|sig_green_leds_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_green_leds_reg\(0),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_green_leds_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_green_leds_reg\(1));

-- Location: LCCOMB_X71_Y28_N10
\og|sig_green_leds_reg[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_green_leds_reg[2]~feeder_combout\ = \og|sig_green_leds_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_green_leds_reg\(1),
	combout => \og|sig_green_leds_reg[2]~feeder_combout\);

-- Location: FF_X71_Y28_N11
\og|sig_green_leds_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_green_leds_reg[2]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_green_leds_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_green_leds_reg\(2));

-- Location: LCCOMB_X71_Y28_N24
\og|sig_green_leds_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_green_leds_reg[3]~feeder_combout\ = \og|sig_green_leds_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_green_leds_reg\(2),
	combout => \og|sig_green_leds_reg[3]~feeder_combout\);

-- Location: FF_X71_Y28_N25
\og|sig_green_leds_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_green_leds_reg[3]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_green_leds_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_green_leds_reg\(3));

-- Location: LCCOMB_X71_Y28_N6
\og|sig_green_leds_reg[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_green_leds_reg[4]~feeder_combout\ = \og|sig_green_leds_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_green_leds_reg\(3),
	combout => \og|sig_green_leds_reg[4]~feeder_combout\);

-- Location: FF_X71_Y28_N7
\og|sig_green_leds_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_green_leds_reg[4]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_green_leds_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_green_leds_reg\(4));

-- Location: LCCOMB_X71_Y28_N12
\og|sig_green_leds_reg[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_green_leds_reg[5]~feeder_combout\ = \og|sig_green_leds_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_green_leds_reg\(4),
	combout => \og|sig_green_leds_reg[5]~feeder_combout\);

-- Location: FF_X71_Y28_N13
\og|sig_green_leds_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_green_leds_reg[5]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_green_leds_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_green_leds_reg\(5));

-- Location: LCCOMB_X71_Y28_N2
\og|sig_green_leds_reg[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_green_leds_reg[6]~feeder_combout\ = \og|sig_green_leds_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_green_leds_reg\(5),
	combout => \og|sig_green_leds_reg[6]~feeder_combout\);

-- Location: FF_X71_Y28_N3
\og|sig_green_leds_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_green_leds_reg[6]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_green_leds_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_green_leds_reg\(6));

-- Location: LCCOMB_X71_Y28_N8
\og|sig_green_leds_reg[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_green_leds_reg[7]~feeder_combout\ = \og|sig_green_leds_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_green_leds_reg\(6),
	combout => \og|sig_green_leds_reg[7]~feeder_combout\);

-- Location: FF_X71_Y28_N9
\og|sig_green_leds_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_green_leds_reg[7]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_green_leds_reg[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_green_leds_reg\(7));

-- Location: LCCOMB_X72_Y28_N10
\og|sig_green_leds_out[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_green_leds_out[0]~feeder_combout\ = \og|sig_green_leds_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_green_leds_reg\(7),
	combout => \og|sig_green_leds_out[0]~feeder_combout\);

-- Location: LCCOMB_X62_Y21_N26
\og|sig_green_leds_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_green_leds_out[0]~0_combout\ = (\sig_cut~q\ & (!\sig_cut_not~q\ & (\og|state_Do.s4~q\ & \resetn~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_cut~q\,
	datab => \sig_cut_not~q\,
	datac => \og|state_Do.s4~q\,
	datad => \resetn~input_o\,
	combout => \og|sig_green_leds_out[0]~0_combout\);

-- Location: FF_X72_Y28_N11
\og|sig_green_leds_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_green_leds_out[0]~feeder_combout\,
	ena => \og|sig_green_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_green_leds_out\(0));

-- Location: LCCOMB_X72_Y28_N0
\og|green_leds[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|green_leds[0]~feeder_combout\ = \og|sig_green_leds_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_green_leds_out\(0),
	combout => \og|green_leds[0]~feeder_combout\);

-- Location: LCCOMB_X61_Y22_N20
\og|green_leds[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|green_leds[0]~0_combout\ = (\sig_cut~q\ & (\resetn~input_o\ & (\og|state_Do.s7~q\ & !\sig_cut_not~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_cut~q\,
	datab => \resetn~input_o\,
	datac => \og|state_Do.s7~q\,
	datad => \sig_cut_not~q\,
	combout => \og|green_leds[0]~0_combout\);

-- Location: FF_X72_Y28_N1
\og|green_leds[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|green_leds[0]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|green_leds\(0));

-- Location: LCCOMB_X72_Y28_N12
\og|sig_green_leds_out[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_green_leds_out[1]~feeder_combout\ = \og|sig_green_leds_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_green_leds_reg\(6),
	combout => \og|sig_green_leds_out[1]~feeder_combout\);

-- Location: FF_X72_Y28_N13
\og|sig_green_leds_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_green_leds_out[1]~feeder_combout\,
	ena => \og|sig_green_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_green_leds_out\(1));

-- Location: LCCOMB_X72_Y28_N18
\og|green_leds[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|green_leds[1]~feeder_combout\ = \og|sig_green_leds_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_green_leds_out\(1),
	combout => \og|green_leds[1]~feeder_combout\);

-- Location: FF_X72_Y28_N19
\og|green_leds[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|green_leds[1]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|green_leds\(1));

-- Location: LCCOMB_X72_Y28_N6
\og|sig_green_leds_out[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_green_leds_out[2]~feeder_combout\ = \og|sig_green_leds_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_green_leds_reg\(5),
	combout => \og|sig_green_leds_out[2]~feeder_combout\);

-- Location: FF_X72_Y28_N7
\og|sig_green_leds_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_green_leds_out[2]~feeder_combout\,
	ena => \og|sig_green_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_green_leds_out\(2));

-- Location: LCCOMB_X72_Y28_N20
\og|green_leds[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|green_leds[2]~feeder_combout\ = \og|sig_green_leds_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_green_leds_out\(2),
	combout => \og|green_leds[2]~feeder_combout\);

-- Location: FF_X72_Y28_N21
\og|green_leds[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|green_leds[2]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|green_leds\(2));

-- Location: LCCOMB_X77_Y24_N0
\og|sig_rgb_leds_out[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[0]~feeder_combout\ = sig_rom_sf(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_rom_sf(7),
	combout => \og|sig_rgb_leds_out[0]~feeder_combout\);

-- Location: LCCOMB_X62_Y21_N18
\og|sig_rgb_leds_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[0]~0_combout\ = (\sig_cut~q\ & (!\sig_cut_not~q\ & \og|state_Do.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_cut~q\,
	datab => \sig_cut_not~q\,
	datac => \og|state_Do.s1~q\,
	combout => \og|sig_rgb_leds_out[0]~0_combout\);

-- Location: FF_X77_Y24_N1
\og|sig_rgb_leds_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[0]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(0));

-- Location: LCCOMB_X77_Y24_N8
\og|rgb_leds[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[0]~feeder_combout\ = \og|sig_rgb_leds_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(0),
	combout => \og|rgb_leds[0]~feeder_combout\);

-- Location: FF_X77_Y24_N9
\og|rgb_leds[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[0]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(0));

-- Location: LCCOMB_X77_Y24_N10
\og|sig_rgb_leds_out[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[1]~feeder_combout\ = \og|sig_rgb_leds_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(0),
	combout => \og|sig_rgb_leds_out[1]~feeder_combout\);

-- Location: FF_X77_Y24_N11
\og|sig_rgb_leds_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[1]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(1));

-- Location: LCCOMB_X77_Y24_N2
\og|rgb_leds[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[1]~feeder_combout\ = \og|sig_rgb_leds_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(1),
	combout => \og|rgb_leds[1]~feeder_combout\);

-- Location: FF_X77_Y24_N3
\og|rgb_leds[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[1]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(1));

-- Location: LCCOMB_X77_Y24_N20
\og|sig_rgb_leds_out[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[2]~feeder_combout\ = \og|sig_rgb_leds_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(1),
	combout => \og|sig_rgb_leds_out[2]~feeder_combout\);

-- Location: FF_X77_Y24_N21
\og|sig_rgb_leds_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[2]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(2));

-- Location: LCCOMB_X77_Y24_N12
\og|rgb_leds[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[2]~feeder_combout\ = \og|sig_rgb_leds_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(2),
	combout => \og|rgb_leds[2]~feeder_combout\);

-- Location: FF_X77_Y24_N13
\og|rgb_leds[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[2]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(2));

-- Location: LCCOMB_X77_Y24_N22
\og|sig_rgb_leds_out[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[3]~feeder_combout\ = \og|sig_rgb_leds_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(2),
	combout => \og|sig_rgb_leds_out[3]~feeder_combout\);

-- Location: FF_X77_Y24_N23
\og|sig_rgb_leds_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[3]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(3));

-- Location: FF_X77_Y24_N31
\og|rgb_leds[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(3),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(3));

-- Location: FF_X77_Y24_N25
\og|sig_rgb_leds_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(3),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(4));

-- Location: LCCOMB_X77_Y24_N16
\og|rgb_leds[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[4]~feeder_combout\ = \og|sig_rgb_leds_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(4),
	combout => \og|rgb_leds[4]~feeder_combout\);

-- Location: FF_X77_Y24_N17
\og|rgb_leds[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[4]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(4));

-- Location: LCCOMB_X77_Y24_N26
\og|sig_rgb_leds_out[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[5]~feeder_combout\ = \og|sig_rgb_leds_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(4),
	combout => \og|sig_rgb_leds_out[5]~feeder_combout\);

-- Location: FF_X77_Y24_N27
\og|sig_rgb_leds_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[5]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(5));

-- Location: FF_X77_Y24_N19
\og|rgb_leds[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(5),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(5));

-- Location: FF_X77_Y24_N29
\og|sig_rgb_leds_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(5),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(6));

-- Location: LCCOMB_X77_Y24_N4
\og|rgb_leds[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[6]~feeder_combout\ = \og|sig_rgb_leds_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(6),
	combout => \og|rgb_leds[6]~feeder_combout\);

-- Location: FF_X77_Y24_N5
\og|rgb_leds[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[6]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(6));

-- Location: LCCOMB_X77_Y24_N6
\og|sig_rgb_leds_out[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[7]~feeder_combout\ = \og|sig_rgb_leds_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(6),
	combout => \og|sig_rgb_leds_out[7]~feeder_combout\);

-- Location: FF_X77_Y24_N7
\og|sig_rgb_leds_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[7]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(7));

-- Location: LCCOMB_X77_Y24_N14
\og|rgb_leds[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[7]~feeder_combout\ = \og|sig_rgb_leds_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(7),
	combout => \og|rgb_leds[7]~feeder_combout\);

-- Location: FF_X77_Y24_N15
\og|rgb_leds[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[7]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(7));

-- Location: FF_X77_Y29_N31
\og|sig_rgb_leds_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(7),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(8));

-- Location: FF_X72_Y28_N23
\og|rgb_leds[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(8),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(8));

-- Location: FF_X77_Y29_N17
\og|sig_rgb_leds_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(8),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(9));

-- Location: LCCOMB_X72_Y28_N16
\og|rgb_leds[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[9]~feeder_combout\ = \og|sig_rgb_leds_out\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(9),
	combout => \og|rgb_leds[9]~feeder_combout\);

-- Location: FF_X72_Y28_N17
\og|rgb_leds[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[9]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(9));

-- Location: LCCOMB_X77_Y29_N18
\og|sig_rgb_leds_out[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[10]~feeder_combout\ = \og|sig_rgb_leds_out\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(9),
	combout => \og|sig_rgb_leds_out[10]~feeder_combout\);

-- Location: FF_X77_Y29_N19
\og|sig_rgb_leds_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[10]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(10));

-- Location: LCCOMB_X77_Y29_N0
\og|rgb_leds[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[10]~feeder_combout\ = \og|sig_rgb_leds_out\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(10),
	combout => \og|rgb_leds[10]~feeder_combout\);

-- Location: FF_X77_Y29_N1
\og|rgb_leds[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[10]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(10));

-- Location: LCCOMB_X77_Y29_N20
\og|sig_rgb_leds_out[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[11]~feeder_combout\ = \og|sig_rgb_leds_out\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(10),
	combout => \og|sig_rgb_leds_out[11]~feeder_combout\);

-- Location: FF_X77_Y29_N21
\og|sig_rgb_leds_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[11]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(11));

-- Location: LCCOMB_X77_Y29_N2
\og|rgb_leds[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[11]~feeder_combout\ = \og|sig_rgb_leds_out\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(11),
	combout => \og|rgb_leds[11]~feeder_combout\);

-- Location: FF_X77_Y29_N3
\og|rgb_leds[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[11]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(11));

-- Location: LCCOMB_X77_Y29_N22
\og|sig_rgb_leds_out[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[12]~feeder_combout\ = \og|sig_rgb_leds_out\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(11),
	combout => \og|sig_rgb_leds_out[12]~feeder_combout\);

-- Location: FF_X77_Y29_N23
\og|sig_rgb_leds_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[12]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(12));

-- Location: FF_X77_Y29_N5
\og|rgb_leds[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(12),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(12));

-- Location: FF_X77_Y29_N25
\og|sig_rgb_leds_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(12),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(13));

-- Location: LCCOMB_X77_Y29_N14
\og|rgb_leds[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[13]~feeder_combout\ = \og|sig_rgb_leds_out\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(13),
	combout => \og|rgb_leds[13]~feeder_combout\);

-- Location: FF_X77_Y29_N15
\og|rgb_leds[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[13]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(13));

-- Location: LCCOMB_X77_Y29_N10
\og|sig_rgb_leds_out[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[14]~feeder_combout\ = \og|sig_rgb_leds_out\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(13),
	combout => \og|sig_rgb_leds_out[14]~feeder_combout\);

-- Location: FF_X77_Y29_N11
\og|sig_rgb_leds_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[14]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(14));

-- Location: LCCOMB_X77_Y29_N8
\og|rgb_leds[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[14]~feeder_combout\ = \og|sig_rgb_leds_out\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(14),
	combout => \og|rgb_leds[14]~feeder_combout\);

-- Location: FF_X77_Y29_N9
\og|rgb_leds[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[14]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(14));

-- Location: LCCOMB_X77_Y29_N28
\og|sig_rgb_leds_out[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[15]~feeder_combout\ = \og|sig_rgb_leds_out\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(14),
	combout => \og|sig_rgb_leds_out[15]~feeder_combout\);

-- Location: FF_X77_Y29_N29
\og|sig_rgb_leds_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[15]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(15));

-- Location: LCCOMB_X77_Y29_N26
\og|rgb_leds[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[15]~feeder_combout\ = \og|sig_rgb_leds_out\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(15),
	combout => \og|rgb_leds[15]~feeder_combout\);

-- Location: FF_X77_Y29_N27
\og|rgb_leds[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[15]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(15));

-- Location: LCCOMB_X77_Y29_N6
\og|sig_rgb_leds_out[16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[16]~feeder_combout\ = \og|sig_rgb_leds_out\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(15),
	combout => \og|sig_rgb_leds_out[16]~feeder_combout\);

-- Location: FF_X77_Y29_N7
\og|sig_rgb_leds_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[16]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(16));

-- Location: LCCOMB_X77_Y29_N12
\og|rgb_leds[16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[16]~feeder_combout\ = \og|sig_rgb_leds_out\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(16),
	combout => \og|rgb_leds[16]~feeder_combout\);

-- Location: FF_X77_Y29_N13
\og|rgb_leds[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[16]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(16));

-- Location: LCCOMB_X41_Y36_N16
\og|sig_rgb_leds_out[17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[17]~feeder_combout\ = \og|sig_rgb_leds_out\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(16),
	combout => \og|sig_rgb_leds_out[17]~feeder_combout\);

-- Location: FF_X41_Y36_N17
\og|sig_rgb_leds_out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[17]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(17));

-- Location: LCCOMB_X41_Y36_N8
\og|rgb_leds[17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[17]~feeder_combout\ = \og|sig_rgb_leds_out\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(17),
	combout => \og|rgb_leds[17]~feeder_combout\);

-- Location: FF_X41_Y36_N9
\og|rgb_leds[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[17]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(17));

-- Location: LCCOMB_X41_Y36_N10
\og|sig_rgb_leds_out[18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[18]~feeder_combout\ = \og|sig_rgb_leds_out\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(17),
	combout => \og|sig_rgb_leds_out[18]~feeder_combout\);

-- Location: FF_X41_Y36_N11
\og|sig_rgb_leds_out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[18]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(18));

-- Location: LCCOMB_X41_Y36_N26
\og|rgb_leds[18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[18]~feeder_combout\ = \og|sig_rgb_leds_out\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(18),
	combout => \og|rgb_leds[18]~feeder_combout\);

-- Location: FF_X41_Y36_N27
\og|rgb_leds[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[18]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(18));

-- Location: LCCOMB_X41_Y36_N12
\og|sig_rgb_leds_out[19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[19]~feeder_combout\ = \og|sig_rgb_leds_out\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(18),
	combout => \og|sig_rgb_leds_out[19]~feeder_combout\);

-- Location: FF_X41_Y36_N13
\og|sig_rgb_leds_out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[19]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(19));

-- Location: LCCOMB_X41_Y36_N28
\og|rgb_leds[19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[19]~feeder_combout\ = \og|sig_rgb_leds_out\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(19),
	combout => \og|rgb_leds[19]~feeder_combout\);

-- Location: FF_X41_Y36_N29
\og|rgb_leds[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[19]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(19));

-- Location: LCCOMB_X41_Y36_N14
\og|sig_rgb_leds_out[20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[20]~feeder_combout\ = \og|sig_rgb_leds_out\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(19),
	combout => \og|sig_rgb_leds_out[20]~feeder_combout\);

-- Location: FF_X41_Y36_N15
\og|sig_rgb_leds_out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[20]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(20));

-- Location: FF_X41_Y36_N7
\og|rgb_leds[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(20),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(20));

-- Location: FF_X41_Y36_N1
\og|sig_rgb_leds_out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(20),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(21));

-- Location: LCCOMB_X41_Y36_N24
\og|rgb_leds[21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[21]~feeder_combout\ = \og|sig_rgb_leds_out\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(21),
	combout => \og|rgb_leds[21]~feeder_combout\);

-- Location: FF_X41_Y36_N25
\og|rgb_leds[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[21]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(21));

-- Location: LCCOMB_X41_Y36_N18
\og|sig_rgb_leds_out[22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[22]~feeder_combout\ = \og|sig_rgb_leds_out\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(21),
	combout => \og|sig_rgb_leds_out[22]~feeder_combout\);

-- Location: FF_X41_Y36_N19
\og|sig_rgb_leds_out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[22]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(22));

-- Location: LCCOMB_X41_Y36_N2
\og|rgb_leds[22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[22]~feeder_combout\ = \og|sig_rgb_leds_out\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(22),
	combout => \og|rgb_leds[22]~feeder_combout\);

-- Location: FF_X41_Y36_N3
\og|rgb_leds[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[22]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(22));

-- Location: LCCOMB_X41_Y36_N20
\og|sig_rgb_leds_out[23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[23]~feeder_combout\ = \og|sig_rgb_leds_out\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(22),
	combout => \og|sig_rgb_leds_out[23]~feeder_combout\);

-- Location: FF_X41_Y36_N21
\og|sig_rgb_leds_out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[23]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(23));

-- Location: LCCOMB_X41_Y36_N4
\og|rgb_leds[23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[23]~feeder_combout\ = \og|sig_rgb_leds_out\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(23),
	combout => \og|rgb_leds[23]~feeder_combout\);

-- Location: FF_X41_Y36_N5
\og|rgb_leds[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[23]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(23));

-- Location: LCCOMB_X41_Y36_N30
\og|sig_rgb_leds_out[24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[24]~feeder_combout\ = \og|sig_rgb_leds_out\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(23),
	combout => \og|sig_rgb_leds_out[24]~feeder_combout\);

-- Location: FF_X41_Y36_N31
\og|sig_rgb_leds_out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[24]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(24));

-- Location: FF_X41_Y36_N23
\og|rgb_leds[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(24),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(24));

-- Location: LCCOMB_X39_Y3_N8
\og|sig_rgb_leds_out[25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[25]~feeder_combout\ = \og|sig_rgb_leds_out\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(24),
	combout => \og|sig_rgb_leds_out[25]~feeder_combout\);

-- Location: FF_X39_Y3_N9
\og|sig_rgb_leds_out[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[25]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(25));

-- Location: FF_X39_Y3_N1
\og|rgb_leds[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(25),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(25));

-- Location: LCCOMB_X30_Y36_N16
\og|sig_rgb_leds_out[26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[26]~feeder_combout\ = \og|sig_rgb_leds_out\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \og|sig_rgb_leds_out\(25),
	combout => \og|sig_rgb_leds_out[26]~feeder_combout\);

-- Location: FF_X30_Y36_N17
\og|sig_rgb_leds_out[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[26]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(26));

-- Location: LCCOMB_X30_Y36_N0
\og|rgb_leds[26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[26]~feeder_combout\ = \og|sig_rgb_leds_out\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(26),
	combout => \og|rgb_leds[26]~feeder_combout\);

-- Location: FF_X30_Y36_N1
\og|rgb_leds[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[26]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(26));

-- Location: LCCOMB_X30_Y36_N10
\og|sig_rgb_leds_out[27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[27]~feeder_combout\ = \og|sig_rgb_leds_out\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(26),
	combout => \og|sig_rgb_leds_out[27]~feeder_combout\);

-- Location: FF_X30_Y36_N11
\og|sig_rgb_leds_out[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[27]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(27));

-- Location: LCCOMB_X30_Y36_N26
\og|rgb_leds[27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[27]~feeder_combout\ = \og|sig_rgb_leds_out\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(27),
	combout => \og|rgb_leds[27]~feeder_combout\);

-- Location: FF_X30_Y36_N27
\og|rgb_leds[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[27]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(27));

-- Location: LCCOMB_X30_Y36_N12
\og|sig_rgb_leds_out[28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[28]~feeder_combout\ = \og|sig_rgb_leds_out\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(27),
	combout => \og|sig_rgb_leds_out[28]~feeder_combout\);

-- Location: FF_X30_Y36_N13
\og|sig_rgb_leds_out[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[28]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(28));

-- Location: LCCOMB_X30_Y36_N20
\og|rgb_leds[28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[28]~feeder_combout\ = \og|sig_rgb_leds_out\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(28),
	combout => \og|rgb_leds[28]~feeder_combout\);

-- Location: FF_X30_Y36_N21
\og|rgb_leds[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[28]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(28));

-- Location: LCCOMB_X30_Y36_N30
\og|sig_rgb_leds_out[29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[29]~feeder_combout\ = \og|sig_rgb_leds_out\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(28),
	combout => \og|sig_rgb_leds_out[29]~feeder_combout\);

-- Location: FF_X30_Y36_N31
\og|sig_rgb_leds_out[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[29]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(29));

-- Location: FF_X30_Y36_N15
\og|rgb_leds[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(29),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(29));

-- Location: FF_X30_Y36_N25
\og|sig_rgb_leds_out[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(29),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(30));

-- Location: LCCOMB_X30_Y36_N8
\og|rgb_leds[30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[30]~feeder_combout\ = \og|sig_rgb_leds_out\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(30),
	combout => \og|rgb_leds[30]~feeder_combout\);

-- Location: FF_X30_Y36_N9
\og|rgb_leds[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[30]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(30));

-- Location: LCCOMB_X30_Y36_N18
\og|sig_rgb_leds_out[31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[31]~feeder_combout\ = \og|sig_rgb_leds_out\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(30),
	combout => \og|sig_rgb_leds_out[31]~feeder_combout\);

-- Location: FF_X30_Y36_N19
\og|sig_rgb_leds_out[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[31]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(31));

-- Location: LCCOMB_X30_Y36_N2
\og|rgb_leds[31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[31]~feeder_combout\ = \og|sig_rgb_leds_out\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(31),
	combout => \og|rgb_leds[31]~feeder_combout\);

-- Location: FF_X30_Y36_N3
\og|rgb_leds[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[31]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(31));

-- Location: LCCOMB_X30_Y36_N4
\og|sig_rgb_leds_out[32]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[32]~feeder_combout\ = \og|sig_rgb_leds_out\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(31),
	combout => \og|sig_rgb_leds_out[32]~feeder_combout\);

-- Location: FF_X30_Y36_N5
\og|sig_rgb_leds_out[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[32]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(32));

-- Location: FF_X30_Y36_N29
\og|rgb_leds[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(32),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(32));

-- Location: FF_X30_Y36_N23
\og|sig_rgb_leds_out[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(32),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(33));

-- Location: FF_X30_Y36_N7
\og|rgb_leds[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(33),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(33));

-- Location: LCCOMB_X39_Y3_N2
\og|sig_rgb_leds_out[34]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[34]~feeder_combout\ = \og|sig_rgb_leds_out\(33)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(33),
	combout => \og|sig_rgb_leds_out[34]~feeder_combout\);

-- Location: FF_X39_Y3_N3
\og|sig_rgb_leds_out[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[34]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(34));

-- Location: LCCOMB_X39_Y3_N26
\og|rgb_leds[34]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[34]~feeder_combout\ = \og|sig_rgb_leds_out\(34)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(34),
	combout => \og|rgb_leds[34]~feeder_combout\);

-- Location: FF_X39_Y3_N27
\og|rgb_leds[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[34]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(34));

-- Location: LCCOMB_X39_Y3_N28
\og|sig_rgb_leds_out[35]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[35]~feeder_combout\ = \og|sig_rgb_leds_out\(34)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(34),
	combout => \og|sig_rgb_leds_out[35]~feeder_combout\);

-- Location: FF_X39_Y3_N29
\og|sig_rgb_leds_out[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[35]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(35));

-- Location: LCCOMB_X39_Y3_N20
\og|rgb_leds[35]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[35]~feeder_combout\ = \og|sig_rgb_leds_out\(35)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(35),
	combout => \og|rgb_leds[35]~feeder_combout\);

-- Location: FF_X39_Y3_N21
\og|rgb_leds[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[35]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(35));

-- Location: LCCOMB_X39_Y3_N6
\og|sig_rgb_leds_out[36]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[36]~feeder_combout\ = \og|sig_rgb_leds_out\(35)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(35),
	combout => \og|sig_rgb_leds_out[36]~feeder_combout\);

-- Location: FF_X39_Y3_N7
\og|sig_rgb_leds_out[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[36]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(36));

-- Location: LCCOMB_X39_Y3_N14
\og|rgb_leds[36]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[36]~feeder_combout\ = \og|sig_rgb_leds_out\(36)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(36),
	combout => \og|rgb_leds[36]~feeder_combout\);

-- Location: FF_X39_Y3_N15
\og|rgb_leds[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[36]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(36));

-- Location: LCCOMB_X39_Y3_N16
\og|sig_rgb_leds_out[37]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[37]~feeder_combout\ = \og|sig_rgb_leds_out\(36)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(36),
	combout => \og|sig_rgb_leds_out[37]~feeder_combout\);

-- Location: FF_X39_Y3_N17
\og|sig_rgb_leds_out[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[37]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(37));

-- Location: LCCOMB_X39_Y3_N24
\og|rgb_leds[37]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[37]~feeder_combout\ = \og|sig_rgb_leds_out\(37)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(37),
	combout => \og|rgb_leds[37]~feeder_combout\);

-- Location: FF_X39_Y3_N25
\og|rgb_leds[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[37]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(37));

-- Location: LCCOMB_X39_Y3_N10
\og|sig_rgb_leds_out[38]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[38]~feeder_combout\ = \og|sig_rgb_leds_out\(37)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(37),
	combout => \og|sig_rgb_leds_out[38]~feeder_combout\);

-- Location: FF_X39_Y3_N11
\og|sig_rgb_leds_out[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[38]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(38));

-- Location: LCCOMB_X39_Y3_N18
\og|rgb_leds[38]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[38]~feeder_combout\ = \og|sig_rgb_leds_out\(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(38),
	combout => \og|rgb_leds[38]~feeder_combout\);

-- Location: FF_X39_Y3_N19
\og|rgb_leds[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[38]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(38));

-- Location: LCCOMB_X39_Y3_N4
\og|sig_rgb_leds_out[39]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[39]~feeder_combout\ = \og|sig_rgb_leds_out\(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(38),
	combout => \og|sig_rgb_leds_out[39]~feeder_combout\);

-- Location: FF_X39_Y3_N5
\og|sig_rgb_leds_out[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[39]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(39));

-- Location: FF_X39_Y3_N13
\og|rgb_leds[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(39),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(39));

-- Location: FF_X39_Y3_N31
\og|sig_rgb_leds_out[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(39),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(40));

-- Location: FF_X39_Y3_N23
\og|rgb_leds[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(40),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(40));

-- Location: LCCOMB_X37_Y2_N24
\og|sig_rgb_leds_out[41]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[41]~feeder_combout\ = \og|sig_rgb_leds_out\(40)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(40),
	combout => \og|sig_rgb_leds_out[41]~feeder_combout\);

-- Location: FF_X37_Y2_N25
\og|sig_rgb_leds_out[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[41]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(41));

-- Location: LCCOMB_X37_Y2_N8
\og|rgb_leds[41]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[41]~feeder_combout\ = \og|sig_rgb_leds_out\(41)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(41),
	combout => \og|rgb_leds[41]~feeder_combout\);

-- Location: FF_X37_Y2_N9
\og|rgb_leds[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[41]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(41));

-- Location: LCCOMB_X37_Y2_N18
\og|sig_rgb_leds_out[42]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[42]~feeder_combout\ = \og|sig_rgb_leds_out\(41)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(41),
	combout => \og|sig_rgb_leds_out[42]~feeder_combout\);

-- Location: FF_X37_Y2_N19
\og|sig_rgb_leds_out[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[42]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(42));

-- Location: LCCOMB_X37_Y2_N2
\og|rgb_leds[42]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[42]~feeder_combout\ = \og|sig_rgb_leds_out\(42)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(42),
	combout => \og|rgb_leds[42]~feeder_combout\);

-- Location: FF_X37_Y2_N3
\og|rgb_leds[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[42]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(42));

-- Location: LCCOMB_X37_Y2_N20
\og|sig_rgb_leds_out[43]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[43]~feeder_combout\ = \og|sig_rgb_leds_out\(42)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(42),
	combout => \og|sig_rgb_leds_out[43]~feeder_combout\);

-- Location: FF_X37_Y2_N21
\og|sig_rgb_leds_out[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[43]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(43));

-- Location: LCCOMB_X37_Y2_N4
\og|rgb_leds[43]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[43]~feeder_combout\ = \og|sig_rgb_leds_out\(43)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(43),
	combout => \og|rgb_leds[43]~feeder_combout\);

-- Location: FF_X37_Y2_N5
\og|rgb_leds[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[43]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(43));

-- Location: LCCOMB_X37_Y2_N22
\og|sig_rgb_leds_out[44]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[44]~feeder_combout\ = \og|sig_rgb_leds_out\(43)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(43),
	combout => \og|sig_rgb_leds_out[44]~feeder_combout\);

-- Location: FF_X37_Y2_N23
\og|sig_rgb_leds_out[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[44]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(44));

-- Location: FF_X37_Y2_N15
\og|rgb_leds[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(44),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(44));

-- Location: FF_X37_Y2_N17
\og|sig_rgb_leds_out[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(44),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(45));

-- Location: LCCOMB_X37_Y2_N0
\og|rgb_leds[45]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[45]~feeder_combout\ = \og|sig_rgb_leds_out\(45)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(45),
	combout => \og|rgb_leds[45]~feeder_combout\);

-- Location: FF_X37_Y2_N1
\og|rgb_leds[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[45]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(45));

-- Location: LCCOMB_X37_Y2_N10
\og|sig_rgb_leds_out[46]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[46]~feeder_combout\ = \og|sig_rgb_leds_out\(45)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(45),
	combout => \og|sig_rgb_leds_out[46]~feeder_combout\);

-- Location: FF_X37_Y2_N11
\og|sig_rgb_leds_out[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[46]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(46));

-- Location: LCCOMB_X37_Y2_N26
\og|rgb_leds[46]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[46]~feeder_combout\ = \og|sig_rgb_leds_out\(46)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(46),
	combout => \og|rgb_leds[46]~feeder_combout\);

-- Location: FF_X37_Y2_N27
\og|rgb_leds[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[46]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(46));

-- Location: LCCOMB_X37_Y2_N28
\og|sig_rgb_leds_out[47]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[47]~feeder_combout\ = \og|sig_rgb_leds_out\(46)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(46),
	combout => \og|sig_rgb_leds_out[47]~feeder_combout\);

-- Location: FF_X37_Y2_N29
\og|sig_rgb_leds_out[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[47]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(47));

-- Location: LCCOMB_X37_Y2_N12
\og|rgb_leds[47]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[47]~feeder_combout\ = \og|sig_rgb_leds_out\(47)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(47),
	combout => \og|rgb_leds[47]~feeder_combout\);

-- Location: FF_X37_Y2_N13
\og|rgb_leds[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[47]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(47));

-- Location: LCCOMB_X37_Y2_N30
\og|sig_rgb_leds_out[48]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[48]~feeder_combout\ = \og|sig_rgb_leds_out\(47)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(47),
	combout => \og|sig_rgb_leds_out[48]~feeder_combout\);

-- Location: FF_X37_Y2_N31
\og|sig_rgb_leds_out[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[48]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(48));

-- Location: FF_X37_Y2_N7
\og|rgb_leds[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(48),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(48));

-- Location: LCCOMB_X40_Y1_N16
\og|sig_rgb_leds_out[49]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[49]~feeder_combout\ = \og|sig_rgb_leds_out\(48)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(48),
	combout => \og|sig_rgb_leds_out[49]~feeder_combout\);

-- Location: FF_X40_Y1_N17
\og|sig_rgb_leds_out[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[49]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(49));

-- Location: LCCOMB_X40_Y1_N8
\og|rgb_leds[49]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[49]~feeder_combout\ = \og|sig_rgb_leds_out\(49)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(49),
	combout => \og|rgb_leds[49]~feeder_combout\);

-- Location: FF_X40_Y1_N9
\og|rgb_leds[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[49]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(49));

-- Location: LCCOMB_X40_Y1_N10
\og|sig_rgb_leds_out[50]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[50]~feeder_combout\ = \og|sig_rgb_leds_out\(49)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(49),
	combout => \og|sig_rgb_leds_out[50]~feeder_combout\);

-- Location: FF_X40_Y1_N11
\og|sig_rgb_leds_out[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[50]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(50));

-- Location: LCCOMB_X40_Y1_N26
\og|rgb_leds[50]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[50]~feeder_combout\ = \og|sig_rgb_leds_out\(50)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(50),
	combout => \og|rgb_leds[50]~feeder_combout\);

-- Location: FF_X40_Y1_N27
\og|rgb_leds[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[50]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(50));

-- Location: LCCOMB_X40_Y1_N20
\og|sig_rgb_leds_out[51]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[51]~feeder_combout\ = \og|sig_rgb_leds_out\(50)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(50),
	combout => \og|sig_rgb_leds_out[51]~feeder_combout\);

-- Location: FF_X40_Y1_N21
\og|sig_rgb_leds_out[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[51]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(51));

-- Location: LCCOMB_X40_Y1_N12
\og|rgb_leds[51]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[51]~feeder_combout\ = \og|sig_rgb_leds_out\(51)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(51),
	combout => \og|rgb_leds[51]~feeder_combout\);

-- Location: FF_X40_Y1_N13
\og|rgb_leds[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[51]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(51));

-- Location: LCCOMB_X40_Y1_N30
\og|sig_rgb_leds_out[52]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[52]~feeder_combout\ = \og|sig_rgb_leds_out\(51)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(51),
	combout => \og|sig_rgb_leds_out[52]~feeder_combout\);

-- Location: FF_X40_Y1_N31
\og|sig_rgb_leds_out[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[52]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(52));

-- Location: FF_X40_Y1_N15
\og|rgb_leds[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(52),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(52));

-- Location: FF_X40_Y1_N1
\og|sig_rgb_leds_out[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(52),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(53));

-- Location: LCCOMB_X40_Y1_N24
\og|rgb_leds[53]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[53]~feeder_combout\ = \og|sig_rgb_leds_out\(53)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(53),
	combout => \og|rgb_leds[53]~feeder_combout\);

-- Location: FF_X40_Y1_N25
\og|rgb_leds[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[53]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(53));

-- Location: LCCOMB_X40_Y1_N2
\og|sig_rgb_leds_out[54]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[54]~feeder_combout\ = \og|sig_rgb_leds_out\(53)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(53),
	combout => \og|sig_rgb_leds_out[54]~feeder_combout\);

-- Location: FF_X40_Y1_N3
\og|sig_rgb_leds_out[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[54]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(54));

-- Location: LCCOMB_X40_Y1_N18
\og|rgb_leds[54]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[54]~feeder_combout\ = \og|sig_rgb_leds_out\(54)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(54),
	combout => \og|rgb_leds[54]~feeder_combout\);

-- Location: FF_X40_Y1_N19
\og|rgb_leds[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[54]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(54));

-- Location: LCCOMB_X40_Y1_N28
\og|sig_rgb_leds_out[55]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[55]~feeder_combout\ = \og|sig_rgb_leds_out\(54)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(54),
	combout => \og|sig_rgb_leds_out[55]~feeder_combout\);

-- Location: FF_X40_Y1_N29
\og|sig_rgb_leds_out[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[55]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(55));

-- Location: LCCOMB_X40_Y1_N4
\og|rgb_leds[55]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[55]~feeder_combout\ = \og|sig_rgb_leds_out\(55)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(55),
	combout => \og|rgb_leds[55]~feeder_combout\);

-- Location: FF_X40_Y1_N5
\og|rgb_leds[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[55]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(55));

-- Location: LCCOMB_X40_Y1_N22
\og|sig_rgb_leds_out[56]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[56]~feeder_combout\ = \og|sig_rgb_leds_out\(55)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(55),
	combout => \og|sig_rgb_leds_out[56]~feeder_combout\);

-- Location: FF_X40_Y1_N23
\og|sig_rgb_leds_out[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[56]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(56));

-- Location: FF_X40_Y1_N7
\og|rgb_leds[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(56),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(56));

-- Location: FF_X51_Y1_N17
\og|sig_rgb_leds_out[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(56),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(57));

-- Location: LCCOMB_X51_Y1_N0
\og|rgb_leds[57]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[57]~feeder_combout\ = \og|sig_rgb_leds_out\(57)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(57),
	combout => \og|rgb_leds[57]~feeder_combout\);

-- Location: FF_X51_Y1_N1
\og|rgb_leds[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[57]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(57));

-- Location: LCCOMB_X51_Y1_N26
\og|sig_rgb_leds_out[58]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[58]~feeder_combout\ = \og|sig_rgb_leds_out\(57)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(57),
	combout => \og|sig_rgb_leds_out[58]~feeder_combout\);

-- Location: FF_X51_Y1_N27
\og|sig_rgb_leds_out[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[58]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(58));

-- Location: FF_X51_Y1_N19
\og|rgb_leds[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(58),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(58));

-- Location: FF_X51_Y1_N29
\og|sig_rgb_leds_out[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(58),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(59));

-- Location: LCCOMB_X57_Y1_N8
\og|rgb_leds[59]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[59]~feeder_combout\ = \og|sig_rgb_leds_out\(59)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(59),
	combout => \og|rgb_leds[59]~feeder_combout\);

-- Location: FF_X57_Y1_N9
\og|rgb_leds[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[59]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(59));

-- Location: LCCOMB_X57_Y1_N16
\og|sig_rgb_leds_out[60]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[60]~feeder_combout\ = \og|sig_rgb_leds_out\(59)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(59),
	combout => \og|sig_rgb_leds_out[60]~feeder_combout\);

-- Location: FF_X57_Y1_N17
\og|sig_rgb_leds_out[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[60]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(60));

-- Location: LCCOMB_X57_Y1_N2
\og|rgb_leds[60]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[60]~feeder_combout\ = \og|sig_rgb_leds_out\(60)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(60),
	combout => \og|rgb_leds[60]~feeder_combout\);

-- Location: FF_X57_Y1_N3
\og|rgb_leds[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[60]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(60));

-- Location: LCCOMB_X57_Y1_N26
\og|sig_rgb_leds_out[61]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[61]~feeder_combout\ = \og|sig_rgb_leds_out\(60)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(60),
	combout => \og|sig_rgb_leds_out[61]~feeder_combout\);

-- Location: FF_X57_Y1_N27
\og|sig_rgb_leds_out[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[61]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(61));

-- Location: FF_X57_Y1_N5
\og|rgb_leds[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(61),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(61));

-- Location: FF_X57_Y1_N29
\og|sig_rgb_leds_out[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(61),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(62));

-- Location: LCCOMB_X57_Y1_N6
\og|rgb_leds[62]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[62]~feeder_combout\ = \og|sig_rgb_leds_out\(62)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(62),
	combout => \og|rgb_leds[62]~feeder_combout\);

-- Location: FF_X57_Y1_N7
\og|rgb_leds[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[62]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(62));

-- Location: LCCOMB_X57_Y1_N22
\og|sig_rgb_leds_out[63]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[63]~feeder_combout\ = \og|sig_rgb_leds_out\(62)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(62),
	combout => \og|sig_rgb_leds_out[63]~feeder_combout\);

-- Location: FF_X57_Y1_N23
\og|sig_rgb_leds_out[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[63]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(63));

-- Location: FF_X57_Y1_N1
\og|rgb_leds[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(63),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(63));

-- Location: FF_X57_Y1_N25
\og|sig_rgb_leds_out[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(63),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(64));

-- Location: LCCOMB_X57_Y1_N10
\og|rgb_leds[64]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[64]~feeder_combout\ = \og|sig_rgb_leds_out\(64)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(64),
	combout => \og|rgb_leds[64]~feeder_combout\);

-- Location: FF_X57_Y1_N11
\og|rgb_leds[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[64]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(64));

-- Location: LCCOMB_X57_Y1_N18
\og|sig_rgb_leds_out[65]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[65]~feeder_combout\ = \og|sig_rgb_leds_out\(64)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(64),
	combout => \og|sig_rgb_leds_out[65]~feeder_combout\);

-- Location: FF_X57_Y1_N19
\og|sig_rgb_leds_out[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[65]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(65));

-- Location: LCCOMB_X57_Y1_N12
\og|rgb_leds[65]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[65]~feeder_combout\ = \og|sig_rgb_leds_out\(65)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(65),
	combout => \og|rgb_leds[65]~feeder_combout\);

-- Location: FF_X57_Y1_N13
\og|rgb_leds[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[65]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(65));

-- Location: LCCOMB_X57_Y1_N20
\og|sig_rgb_leds_out[66]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[66]~feeder_combout\ = \og|sig_rgb_leds_out\(65)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(65),
	combout => \og|sig_rgb_leds_out[66]~feeder_combout\);

-- Location: FF_X57_Y1_N21
\og|sig_rgb_leds_out[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[66]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(66));

-- Location: LCCOMB_X57_Y1_N14
\og|rgb_leds[66]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[66]~feeder_combout\ = \og|sig_rgb_leds_out\(66)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(66),
	combout => \og|rgb_leds[66]~feeder_combout\);

-- Location: FF_X57_Y1_N15
\og|rgb_leds[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[66]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(66));

-- Location: LCCOMB_X57_Y1_N30
\og|sig_rgb_leds_out[67]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[67]~feeder_combout\ = \og|sig_rgb_leds_out\(66)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(66),
	combout => \og|sig_rgb_leds_out[67]~feeder_combout\);

-- Location: FF_X57_Y1_N31
\og|sig_rgb_leds_out[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[67]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(67));

-- Location: LCCOMB_X75_Y16_N8
\og|rgb_leds[67]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[67]~feeder_combout\ = \og|sig_rgb_leds_out\(67)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \og|sig_rgb_leds_out\(67),
	combout => \og|rgb_leds[67]~feeder_combout\);

-- Location: FF_X75_Y16_N9
\og|rgb_leds[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[67]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(67));

-- Location: LCCOMB_X75_Y16_N16
\og|sig_rgb_leds_out[68]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[68]~feeder_combout\ = \og|sig_rgb_leds_out\(67)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \og|sig_rgb_leds_out\(67),
	combout => \og|sig_rgb_leds_out[68]~feeder_combout\);

-- Location: FF_X75_Y16_N17
\og|sig_rgb_leds_out[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[68]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(68));

-- Location: LCCOMB_X75_Y16_N10
\og|rgb_leds[68]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[68]~feeder_combout\ = \og|sig_rgb_leds_out\(68)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(68),
	combout => \og|rgb_leds[68]~feeder_combout\);

-- Location: FF_X75_Y16_N11
\og|rgb_leds[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[68]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(68));

-- Location: LCCOMB_X75_Y16_N18
\og|sig_rgb_leds_out[69]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[69]~feeder_combout\ = \og|sig_rgb_leds_out\(68)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(68),
	combout => \og|sig_rgb_leds_out[69]~feeder_combout\);

-- Location: FF_X75_Y16_N19
\og|sig_rgb_leds_out[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[69]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(69));

-- Location: LCCOMB_X75_Y16_N4
\og|rgb_leds[69]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[69]~feeder_combout\ = \og|sig_rgb_leds_out\(69)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(69),
	combout => \og|rgb_leds[69]~feeder_combout\);

-- Location: FF_X75_Y16_N5
\og|rgb_leds[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[69]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(69));

-- Location: LCCOMB_X75_Y16_N20
\og|sig_rgb_leds_out[70]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[70]~feeder_combout\ = \og|sig_rgb_leds_out\(69)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(69),
	combout => \og|sig_rgb_leds_out[70]~feeder_combout\);

-- Location: FF_X75_Y16_N21
\og|sig_rgb_leds_out[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[70]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(70));

-- Location: LCCOMB_X75_Y16_N6
\og|rgb_leds[70]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[70]~feeder_combout\ = \og|sig_rgb_leds_out\(70)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(70),
	combout => \og|rgb_leds[70]~feeder_combout\);

-- Location: FF_X75_Y16_N7
\og|rgb_leds[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[70]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(70));

-- Location: LCCOMB_X75_Y16_N30
\og|sig_rgb_leds_out[71]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[71]~feeder_combout\ = \og|sig_rgb_leds_out\(70)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(70),
	combout => \og|sig_rgb_leds_out[71]~feeder_combout\);

-- Location: FF_X75_Y16_N31
\og|sig_rgb_leds_out[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[71]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(71));

-- Location: FF_X75_Y16_N1
\og|rgb_leds[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(71),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(71));

-- Location: FF_X75_Y16_N25
\og|sig_rgb_leds_out[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(71),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(72));

-- Location: LCCOMB_X75_Y16_N26
\og|rgb_leds[72]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[72]~feeder_combout\ = \og|sig_rgb_leds_out\(72)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(72),
	combout => \og|rgb_leds[72]~feeder_combout\);

-- Location: FF_X75_Y16_N27
\og|rgb_leds[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[72]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(72));

-- Location: LCCOMB_X75_Y16_N2
\og|sig_rgb_leds_out[73]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[73]~feeder_combout\ = \og|sig_rgb_leds_out\(72)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(72),
	combout => \og|sig_rgb_leds_out[73]~feeder_combout\);

-- Location: FF_X75_Y16_N3
\og|sig_rgb_leds_out[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[73]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(73));

-- Location: LCCOMB_X75_Y16_N12
\og|rgb_leds[73]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[73]~feeder_combout\ = \og|sig_rgb_leds_out\(73)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(73),
	combout => \og|rgb_leds[73]~feeder_combout\);

-- Location: FF_X75_Y16_N13
\og|rgb_leds[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[73]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(73));

-- Location: LCCOMB_X75_Y16_N28
\og|sig_rgb_leds_out[74]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[74]~feeder_combout\ = \og|sig_rgb_leds_out\(73)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(73),
	combout => \og|sig_rgb_leds_out[74]~feeder_combout\);

-- Location: FF_X75_Y16_N29
\og|sig_rgb_leds_out[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[74]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(74));

-- Location: LCCOMB_X75_Y16_N14
\og|rgb_leds[74]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[74]~feeder_combout\ = \og|sig_rgb_leds_out\(74)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(74),
	combout => \og|rgb_leds[74]~feeder_combout\);

-- Location: FF_X75_Y16_N15
\og|rgb_leds[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[74]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(74));

-- Location: LCCOMB_X75_Y16_N22
\og|sig_rgb_leds_out[75]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[75]~feeder_combout\ = \og|sig_rgb_leds_out\(74)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(74),
	combout => \og|sig_rgb_leds_out[75]~feeder_combout\);

-- Location: FF_X75_Y16_N23
\og|sig_rgb_leds_out[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[75]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(75));

-- Location: LCCOMB_X56_Y1_N0
\og|rgb_leds[75]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[75]~feeder_combout\ = \og|sig_rgb_leds_out\(75)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \og|sig_rgb_leds_out\(75),
	combout => \og|rgb_leds[75]~feeder_combout\);

-- Location: FF_X56_Y1_N1
\og|rgb_leds[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[75]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(75));

-- Location: LCCOMB_X56_Y1_N16
\og|sig_rgb_leds_out[76]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[76]~feeder_combout\ = \og|sig_rgb_leds_out\(75)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \og|sig_rgb_leds_out\(75),
	combout => \og|sig_rgb_leds_out[76]~feeder_combout\);

-- Location: FF_X56_Y1_N17
\og|sig_rgb_leds_out[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[76]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(76));

-- Location: LCCOMB_X56_Y1_N10
\og|rgb_leds[76]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[76]~feeder_combout\ = \og|sig_rgb_leds_out\(76)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(76),
	combout => \og|rgb_leds[76]~feeder_combout\);

-- Location: FF_X56_Y1_N11
\og|rgb_leds[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[76]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(76));

-- Location: LCCOMB_X56_Y1_N2
\og|sig_rgb_leds_out[77]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[77]~feeder_combout\ = \og|sig_rgb_leds_out\(76)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(76),
	combout => \og|sig_rgb_leds_out[77]~feeder_combout\);

-- Location: FF_X56_Y1_N3
\og|sig_rgb_leds_out[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[77]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(77));

-- Location: LCCOMB_X56_Y1_N4
\og|rgb_leds[77]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[77]~feeder_combout\ = \og|sig_rgb_leds_out\(77)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(77),
	combout => \og|rgb_leds[77]~feeder_combout\);

-- Location: FF_X56_Y1_N5
\og|rgb_leds[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[77]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(77));

-- Location: LCCOMB_X56_Y1_N28
\og|sig_rgb_leds_out[78]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[78]~feeder_combout\ = \og|sig_rgb_leds_out\(77)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(77),
	combout => \og|sig_rgb_leds_out[78]~feeder_combout\);

-- Location: FF_X56_Y1_N29
\og|sig_rgb_leds_out[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[78]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(78));

-- Location: LCCOMB_X56_Y1_N14
\og|rgb_leds[78]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[78]~feeder_combout\ = \og|sig_rgb_leds_out\(78)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(78),
	combout => \og|rgb_leds[78]~feeder_combout\);

-- Location: FF_X56_Y1_N15
\og|rgb_leds[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[78]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(78));

-- Location: LCCOMB_X56_Y1_N30
\og|sig_rgb_leds_out[79]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[79]~feeder_combout\ = \og|sig_rgb_leds_out\(78)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(78),
	combout => \og|sig_rgb_leds_out[79]~feeder_combout\);

-- Location: FF_X56_Y1_N31
\og|sig_rgb_leds_out[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[79]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(79));

-- Location: FF_X56_Y1_N25
\og|rgb_leds[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(79),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(79));

-- Location: FF_X56_Y1_N9
\og|sig_rgb_leds_out[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(79),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(80));

-- Location: FF_X56_Y1_N27
\og|rgb_leds[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(80),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(80));

-- Location: FF_X56_Y1_N19
\og|sig_rgb_leds_out[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(80),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(81));

-- Location: LCCOMB_X56_Y1_N20
\og|rgb_leds[81]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[81]~feeder_combout\ = \og|sig_rgb_leds_out\(81)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(81),
	combout => \og|rgb_leds[81]~feeder_combout\);

-- Location: FF_X56_Y1_N21
\og|rgb_leds[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[81]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(81));

-- Location: LCCOMB_X55_Y1_N30
\og|sig_rgb_leds_out[82]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[82]~feeder_combout\ = \og|sig_rgb_leds_out\(81)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(81),
	combout => \og|sig_rgb_leds_out[82]~feeder_combout\);

-- Location: FF_X55_Y1_N31
\og|sig_rgb_leds_out[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[82]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(82));

-- Location: FF_X55_Y1_N17
\og|rgb_leds[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(82),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(82));

-- Location: FF_X55_Y1_N25
\og|sig_rgb_leds_out[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(82),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(83));

-- Location: LCCOMB_X55_Y1_N26
\og|rgb_leds[83]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[83]~feeder_combout\ = \og|sig_rgb_leds_out\(83)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(83),
	combout => \og|rgb_leds[83]~feeder_combout\);

-- Location: FF_X55_Y1_N27
\og|rgb_leds[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[83]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(83));

-- Location: LCCOMB_X55_Y1_N10
\og|sig_rgb_leds_out[84]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[84]~feeder_combout\ = \og|sig_rgb_leds_out\(83)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(83),
	combout => \og|sig_rgb_leds_out[84]~feeder_combout\);

-- Location: FF_X55_Y1_N11
\og|sig_rgb_leds_out[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[84]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(84));

-- Location: LCCOMB_X55_Y1_N20
\og|rgb_leds[84]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[84]~feeder_combout\ = \og|sig_rgb_leds_out\(84)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(84),
	combout => \og|rgb_leds[84]~feeder_combout\);

-- Location: FF_X55_Y1_N21
\og|rgb_leds[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[84]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(84));

-- Location: LCCOMB_X55_Y1_N28
\og|sig_rgb_leds_out[85]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[85]~feeder_combout\ = \og|sig_rgb_leds_out\(84)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(84),
	combout => \og|sig_rgb_leds_out[85]~feeder_combout\);

-- Location: FF_X55_Y1_N29
\og|sig_rgb_leds_out[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[85]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(85));

-- Location: LCCOMB_X55_Y1_N14
\og|rgb_leds[85]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[85]~feeder_combout\ = \og|sig_rgb_leds_out\(85)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(85),
	combout => \og|rgb_leds[85]~feeder_combout\);

-- Location: FF_X55_Y1_N15
\og|rgb_leds[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[85]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(85));

-- Location: LCCOMB_X55_Y1_N22
\og|sig_rgb_leds_out[86]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[86]~feeder_combout\ = \og|sig_rgb_leds_out\(85)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(85),
	combout => \og|sig_rgb_leds_out[86]~feeder_combout\);

-- Location: FF_X55_Y1_N23
\og|sig_rgb_leds_out[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[86]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(86));

-- Location: FF_X55_Y1_N9
\og|rgb_leds[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(86),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(86));

-- Location: FF_X55_Y1_N1
\og|sig_rgb_leds_out[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(86),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(87));

-- Location: LCCOMB_X56_Y1_N6
\og|rgb_leds[87]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[87]~feeder_combout\ = \og|sig_rgb_leds_out\(87)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(87),
	combout => \og|rgb_leds[87]~feeder_combout\);

-- Location: FF_X56_Y1_N7
\og|rgb_leds[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[87]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(87));

-- Location: LCCOMB_X55_Y1_N18
\og|sig_rgb_leds_out[88]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[88]~feeder_combout\ = \og|sig_rgb_leds_out\(87)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(87),
	combout => \og|sig_rgb_leds_out[88]~feeder_combout\);

-- Location: FF_X55_Y1_N19
\og|sig_rgb_leds_out[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[88]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(88));

-- Location: LCCOMB_X55_Y1_N2
\og|rgb_leds[88]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[88]~feeder_combout\ = \og|sig_rgb_leds_out\(88)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(88),
	combout => \og|rgb_leds[88]~feeder_combout\);

-- Location: FF_X55_Y1_N3
\og|rgb_leds[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[88]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(88));

-- Location: LCCOMB_X55_Y1_N4
\og|sig_rgb_leds_out[89]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[89]~feeder_combout\ = \og|sig_rgb_leds_out\(88)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(88),
	combout => \og|sig_rgb_leds_out[89]~feeder_combout\);

-- Location: FF_X55_Y1_N5
\og|sig_rgb_leds_out[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[89]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(89));

-- Location: FF_X55_Y1_N13
\og|rgb_leds[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(89),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(89));

-- Location: FF_X55_Y1_N7
\og|sig_rgb_leds_out[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(89),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(90));

-- Location: LCCOMB_X51_Y1_N12
\og|rgb_leds[90]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[90]~feeder_combout\ = \og|sig_rgb_leds_out\(90)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(90),
	combout => \og|rgb_leds[90]~feeder_combout\);

-- Location: FF_X51_Y1_N13
\og|rgb_leds[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[90]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(90));

-- Location: LCCOMB_X51_Y1_N30
\og|sig_rgb_leds_out[91]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[91]~feeder_combout\ = \og|sig_rgb_leds_out\(90)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(90),
	combout => \og|sig_rgb_leds_out[91]~feeder_combout\);

-- Location: FF_X51_Y1_N31
\og|sig_rgb_leds_out[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[91]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(91));

-- Location: FF_X51_Y1_N7
\og|rgb_leds[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(91),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(91));

-- Location: FF_X51_Y1_N25
\og|sig_rgb_leds_out[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(91),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(92));

-- Location: LCCOMB_X51_Y1_N8
\og|rgb_leds[92]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[92]~feeder_combout\ = \og|sig_rgb_leds_out\(92)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(92),
	combout => \og|rgb_leds[92]~feeder_combout\);

-- Location: FF_X51_Y1_N9
\og|rgb_leds[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[92]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(92));

-- Location: LCCOMB_X51_Y1_N10
\og|sig_rgb_leds_out[93]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[93]~feeder_combout\ = \og|sig_rgb_leds_out\(92)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(92),
	combout => \og|sig_rgb_leds_out[93]~feeder_combout\);

-- Location: FF_X51_Y1_N11
\og|sig_rgb_leds_out[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[93]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(93));

-- Location: LCCOMB_X51_Y1_N2
\og|rgb_leds[93]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[93]~feeder_combout\ = \og|sig_rgb_leds_out\(93)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(93),
	combout => \og|rgb_leds[93]~feeder_combout\);

-- Location: FF_X51_Y1_N3
\og|rgb_leds[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[93]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(93));

-- Location: LCCOMB_X51_Y1_N20
\og|sig_rgb_leds_out[94]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[94]~feeder_combout\ = \og|sig_rgb_leds_out\(93)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(93),
	combout => \og|sig_rgb_leds_out[94]~feeder_combout\);

-- Location: FF_X51_Y1_N21
\og|sig_rgb_leds_out[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[94]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(94));

-- Location: LCCOMB_X51_Y1_N4
\og|rgb_leds[94]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[94]~feeder_combout\ = \og|sig_rgb_leds_out\(94)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(94),
	combout => \og|rgb_leds[94]~feeder_combout\);

-- Location: FF_X51_Y1_N5
\og|rgb_leds[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[94]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(94));

-- Location: LCCOMB_X51_Y1_N22
\og|sig_rgb_leds_out[95]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[95]~feeder_combout\ = \og|sig_rgb_leds_out\(94)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(94),
	combout => \og|sig_rgb_leds_out[95]~feeder_combout\);

-- Location: FF_X51_Y1_N23
\og|sig_rgb_leds_out[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[95]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(95));

-- Location: FF_X51_Y1_N15
\og|rgb_leds[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(95),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(95));

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

ww_nrzl_data <= \nrzl_data~output_o\;

ww_crc_reg8bit_out(0) <= \crc_reg8bit_out[0]~output_o\;

ww_crc_reg8bit_out(1) <= \crc_reg8bit_out[1]~output_o\;

ww_crc_reg8bit_out(2) <= \crc_reg8bit_out[2]~output_o\;

ww_crc_reg8bit_out(3) <= \crc_reg8bit_out[3]~output_o\;

ww_crc_reg8bit_out(4) <= \crc_reg8bit_out[4]~output_o\;

ww_crc_reg8bit_out(5) <= \crc_reg8bit_out[5]~output_o\;

ww_crc_reg8bit_out(6) <= \crc_reg8bit_out[6]~output_o\;

ww_crc_reg8bit_out(7) <= \crc_reg8bit_out[7]~output_o\;

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

ww_main_clk <= \main_clk~output_o\;

ww_crc8bit_out <= \crc8bit_out~output_o\;

ww_correlation(0) <= \correlation[0]~output_o\;

ww_correlation(1) <= \correlation[1]~output_o\;

ww_correlation(2) <= \correlation[2]~output_o\;

ww_correlation(3) <= \correlation[3]~output_o\;

ww_correlation(4) <= \correlation[4]~output_o\;
END structure;


