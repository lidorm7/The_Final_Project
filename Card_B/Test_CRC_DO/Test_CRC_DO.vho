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

-- DATE "08/14/2023 12:56:45"

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
	crc8bit_out : BUFFER std_logic
	);
END Test_CRC_DO;

-- Design Ports Information
-- nrzl_data	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc_reg8bit_out[0]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc_reg8bit_out[1]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc_reg8bit_out[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc_reg8bit_out[3]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc_reg8bit_out[4]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc_reg8bit_out[5]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc_reg8bit_out[6]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc_reg8bit_out[7]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_leds	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_leds[0]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_leds[1]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_leds[2]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_leds[3]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_leds[4]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_leds[5]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_leds[6]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_leds[7]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[0]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[1]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[2]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[3]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[6]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[7]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[8]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[9]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[10]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[11]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[12]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[13]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[14]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[15]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[16]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[17]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[18]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[19]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[20]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[21]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[22]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[23]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[24]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[25]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[26]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[27]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[28]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[29]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[30]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[31]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[32]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[33]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[34]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[35]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[36]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[37]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[38]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[39]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[40]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[41]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[42]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[43]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[44]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[45]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[46]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[47]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[48]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[49]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[50]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[51]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[52]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[53]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[54]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[55]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[56]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[57]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[58]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[59]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[60]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[61]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[62]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[63]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[64]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[65]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[66]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[67]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[68]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[69]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[70]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[71]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[72]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[73]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[74]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[75]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[76]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[77]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[78]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[79]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[80]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[81]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[82]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[83]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[84]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[85]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[86]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[87]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[88]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[89]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[90]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[91]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[92]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[93]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[94]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[95]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- main_clk	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crc8bit_out	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \sig_cut~feeder_combout\ : std_logic;
SIGNAL \sig_cut~q\ : std_logic;
SIGNAL \sig_cut_not~q\ : std_logic;
SIGNAL \sig_main_rising_edge~combout\ : std_logic;
SIGNAL \state_t.s0a~q\ : std_logic;
SIGNAL \sig_rom_sf~11_combout\ : std_logic;
SIGNAL \state_t.s0~q\ : std_logic;
SIGNAL \state_t.s1~q\ : std_logic;
SIGNAL \state_t.s2~q\ : std_logic;
SIGNAL \state_t.s3~feeder_combout\ : std_logic;
SIGNAL \state_t.s3~q\ : std_logic;
SIGNAL \state_t.s4~feeder_combout\ : std_logic;
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
SIGNAL \crc|crc_reg8bit~2_combout\ : std_logic;
SIGNAL \crc|crc8bit_operation:cnt[7]~0_combout\ : std_logic;
SIGNAL \crc|crc8bit_operation:cnt[2]~q\ : std_logic;
SIGNAL \crc|Add0~0_combout\ : std_logic;
SIGNAL \crc|crc8bit_operation:cnt[0]~q\ : std_logic;
SIGNAL \crc|Add0~1\ : std_logic;
SIGNAL \crc|Add0~2_combout\ : std_logic;
SIGNAL \crc|crc8bit_operation:cnt[1]~q\ : std_logic;
SIGNAL \crc|Add0~3\ : std_logic;
SIGNAL \crc|Add0~4_combout\ : std_logic;
SIGNAL \crc|cnt~2_combout\ : std_logic;
SIGNAL \crc|crc8bit_operation:cnt[3]~q\ : std_logic;
SIGNAL \crc|Add0~5\ : std_logic;
SIGNAL \crc|Add0~6_combout\ : std_logic;
SIGNAL \crc|Equal1~0_combout\ : std_logic;
SIGNAL \crc|cnt~1_combout\ : std_logic;
SIGNAL \crc|crc8bit_operation:cnt[4]~q\ : std_logic;
SIGNAL \crc|Add0~7\ : std_logic;
SIGNAL \crc|Add0~8_combout\ : std_logic;
SIGNAL \crc|cnt~3_combout\ : std_logic;
SIGNAL \crc|crc8bit_operation:cnt[7]~q\ : std_logic;
SIGNAL \crc|Add0~9\ : std_logic;
SIGNAL \crc|Add0~10_combout\ : std_logic;
SIGNAL \crc|crc8bit_operation:cnt[5]~q\ : std_logic;
SIGNAL \crc|Add0~11\ : std_logic;
SIGNAL \crc|Add0~12_combout\ : std_logic;
SIGNAL \crc|cnt~0_combout\ : std_logic;
SIGNAL \crc|crc8bit_operation:cnt[6]~q\ : std_logic;
SIGNAL \crc|Add0~13\ : std_logic;
SIGNAL \crc|Add0~14_combout\ : std_logic;
SIGNAL \crc|Equal1~1_combout\ : std_logic;
SIGNAL \crc|Selector2~0_combout\ : std_logic;
SIGNAL \crc|state_crc.s2~q\ : std_logic;
SIGNAL \crc|state_crc.s3~q\ : std_logic;
SIGNAL \crc|state_crc.s4~feeder_combout\ : std_logic;
SIGNAL \crc|state_crc.s4~q\ : std_logic;
SIGNAL \crc|sig_main_clk_f~0_combout\ : std_logic;
SIGNAL \crc|sig_sf_reg[1]~feeder_combout\ : std_logic;
SIGNAL \crc|sig_sf_reg[2]~feeder_combout\ : std_logic;
SIGNAL \crc|sig_sf_reg[5]~feeder_combout\ : std_logic;
SIGNAL \crc|sig_sf_reg[7]~feeder_combout\ : std_logic;
SIGNAL \crc|sig_sf_reg[8]~feeder_combout\ : std_logic;
SIGNAL \crc|sig_sf_reg[15]~feeder_combout\ : std_logic;
SIGNAL \crc|sig_sf_reg[18]~feeder_combout\ : std_logic;
SIGNAL \crc|sig_sf_reg[19]~feeder_combout\ : std_logic;
SIGNAL \og|Equal0~4_combout\ : std_logic;
SIGNAL \crc|sig_sf_reg[22]~feeder_combout\ : std_logic;
SIGNAL \og|Equal0~3_combout\ : std_logic;
SIGNAL \crc|sig_sf_reg[24]~feeder_combout\ : std_logic;
SIGNAL \crc|sig_sf_reg[25]~feeder_combout\ : std_logic;
SIGNAL \crc|sig_sf_reg[27]~feeder_combout\ : std_logic;
SIGNAL \og|Equal0~1_combout\ : std_logic;
SIGNAL \crc|sig_sf_reg[28]~feeder_combout\ : std_logic;
SIGNAL \crc|sig_sf_reg[29]~feeder_combout\ : std_logic;
SIGNAL \crc|sig_sf_reg[30]~feeder_combout\ : std_logic;
SIGNAL \og|Equal0~0_combout\ : std_logic;
SIGNAL \og|Equal0~2_combout\ : std_logic;
SIGNAL \og|Equal0~7_combout\ : std_logic;
SIGNAL \og|Equal0~6_combout\ : std_logic;
SIGNAL \og|Equal0~8_combout\ : std_logic;
SIGNAL \og|Equal0~5_combout\ : std_logic;
SIGNAL \og|Equal0~9_combout\ : std_logic;
SIGNAL \og|Equal0~10_combout\ : std_logic;
SIGNAL \crc|Selector0~0_combout\ : std_logic;
SIGNAL \crc|state_crc.s0~q\ : std_logic;
SIGNAL \crc|Selector1~0_combout\ : std_logic;
SIGNAL \crc|Selector1~1_combout\ : std_logic;
SIGNAL \crc|Selector1~2_combout\ : std_logic;
SIGNAL \crc|state_crc.s1~q\ : std_logic;
SIGNAL \crc|crc_reg8bit[0]~1_combout\ : std_logic;
SIGNAL \crc|crc_reg8bit~3_combout\ : std_logic;
SIGNAL \crc|crc_reg8bit[4]~feeder_combout\ : std_logic;
SIGNAL \crc|crc_reg8bit[7]~feeder_combout\ : std_logic;
SIGNAL \crc|crc_reg8bit~0_combout\ : std_logic;
SIGNAL \og|sig_cnt[0]~101_combout\ : std_logic;
SIGNAL \og|sig_cnt[5]~116\ : std_logic;
SIGNAL \og|sig_cnt[6]~117_combout\ : std_logic;
SIGNAL \og|state_Do.s2~feeder_combout\ : std_logic;
SIGNAL \og|sig_cnt[6]~118\ : std_logic;
SIGNAL \og|sig_cnt[7]~119_combout\ : std_logic;
SIGNAL \og|sig_cnt[7]~120\ : std_logic;
SIGNAL \og|sig_cnt[8]~121_combout\ : std_logic;
SIGNAL \og|sig_cnt[8]~122\ : std_logic;
SIGNAL \og|sig_cnt[9]~123_combout\ : std_logic;
SIGNAL \og|sig_cnt[9]~124\ : std_logic;
SIGNAL \og|sig_cnt[10]~125_combout\ : std_logic;
SIGNAL \og|sig_cnt[10]~126\ : std_logic;
SIGNAL \og|sig_cnt[11]~127_combout\ : std_logic;
SIGNAL \og|sig_cnt[11]~128\ : std_logic;
SIGNAL \og|sig_cnt[12]~129_combout\ : std_logic;
SIGNAL \og|sig_cnt[12]~130\ : std_logic;
SIGNAL \og|sig_cnt[13]~131_combout\ : std_logic;
SIGNAL \og|sig_cnt[13]~132\ : std_logic;
SIGNAL \og|sig_cnt[14]~133_combout\ : std_logic;
SIGNAL \og|sig_cnt[14]~134\ : std_logic;
SIGNAL \og|sig_cnt[15]~135_combout\ : std_logic;
SIGNAL \og|sig_cnt[15]~136\ : std_logic;
SIGNAL \og|sig_cnt[16]~137_combout\ : std_logic;
SIGNAL \og|sig_cnt[16]~138\ : std_logic;
SIGNAL \og|sig_cnt[17]~139_combout\ : std_logic;
SIGNAL \og|sig_cnt[17]~140\ : std_logic;
SIGNAL \og|sig_cnt[18]~141_combout\ : std_logic;
SIGNAL \og|sig_cnt[18]~142\ : std_logic;
SIGNAL \og|sig_cnt[19]~143_combout\ : std_logic;
SIGNAL \og|sig_cnt[19]~144\ : std_logic;
SIGNAL \og|sig_cnt[20]~145_combout\ : std_logic;
SIGNAL \og|sig_cnt[20]~146\ : std_logic;
SIGNAL \og|sig_cnt[21]~147_combout\ : std_logic;
SIGNAL \og|sig_cnt[21]~148\ : std_logic;
SIGNAL \og|sig_cnt[22]~149_combout\ : std_logic;
SIGNAL \og|sig_cnt[22]~150\ : std_logic;
SIGNAL \og|sig_cnt[23]~151_combout\ : std_logic;
SIGNAL \og|sig_cnt[23]~152\ : std_logic;
SIGNAL \og|sig_cnt[24]~153_combout\ : std_logic;
SIGNAL \og|sig_cnt[24]~154\ : std_logic;
SIGNAL \og|sig_cnt[25]~155_combout\ : std_logic;
SIGNAL \og|sig_cnt[25]~156\ : std_logic;
SIGNAL \og|sig_cnt[26]~157_combout\ : std_logic;
SIGNAL \og|sig_cnt[26]~158\ : std_logic;
SIGNAL \og|sig_cnt[27]~159_combout\ : std_logic;
SIGNAL \og|sig_cnt[27]~160\ : std_logic;
SIGNAL \og|sig_cnt[28]~161_combout\ : std_logic;
SIGNAL \og|sig_cnt[28]~162\ : std_logic;
SIGNAL \og|sig_cnt[29]~163_combout\ : std_logic;
SIGNAL \og|sig_cnt[29]~164\ : std_logic;
SIGNAL \og|sig_cnt[30]~165_combout\ : std_logic;
SIGNAL \og|sig_cnt[30]~166\ : std_logic;
SIGNAL \og|sig_cnt[31]~167_combout\ : std_logic;
SIGNAL \og|sig_cnt[31]~168\ : std_logic;
SIGNAL \og|sig_cnt[32]~169_combout\ : std_logic;
SIGNAL \og|sig_cnt[32]~170\ : std_logic;
SIGNAL \og|sig_cnt[33]~171_combout\ : std_logic;
SIGNAL \og|sig_cnt[33]~172\ : std_logic;
SIGNAL \og|sig_cnt[34]~173_combout\ : std_logic;
SIGNAL \og|sig_cnt[34]~174\ : std_logic;
SIGNAL \og|sig_cnt[35]~175_combout\ : std_logic;
SIGNAL \og|sig_cnt[35]~176\ : std_logic;
SIGNAL \og|sig_cnt[36]~177_combout\ : std_logic;
SIGNAL \og|sig_cnt[36]~178\ : std_logic;
SIGNAL \og|sig_cnt[37]~179_combout\ : std_logic;
SIGNAL \og|sig_cnt[37]~180\ : std_logic;
SIGNAL \og|sig_cnt[38]~181_combout\ : std_logic;
SIGNAL \og|sig_cnt[38]~182\ : std_logic;
SIGNAL \og|sig_cnt[39]~183_combout\ : std_logic;
SIGNAL \og|sig_cnt[39]~184\ : std_logic;
SIGNAL \og|sig_cnt[40]~185_combout\ : std_logic;
SIGNAL \og|sig_cnt[40]~186\ : std_logic;
SIGNAL \og|sig_cnt[41]~187_combout\ : std_logic;
SIGNAL \og|sig_cnt[41]~188\ : std_logic;
SIGNAL \og|sig_cnt[42]~189_combout\ : std_logic;
SIGNAL \og|sig_cnt[42]~190\ : std_logic;
SIGNAL \og|sig_cnt[43]~191_combout\ : std_logic;
SIGNAL \og|sig_cnt[43]~192\ : std_logic;
SIGNAL \og|sig_cnt[44]~193_combout\ : std_logic;
SIGNAL \og|sig_cnt[44]~194\ : std_logic;
SIGNAL \og|sig_cnt[45]~195_combout\ : std_logic;
SIGNAL \og|sig_cnt[45]~196\ : std_logic;
SIGNAL \og|sig_cnt[46]~197_combout\ : std_logic;
SIGNAL \og|sig_cnt[46]~198\ : std_logic;
SIGNAL \og|sig_cnt[47]~199_combout\ : std_logic;
SIGNAL \og|sig_cnt[47]~200\ : std_logic;
SIGNAL \og|sig_cnt[48]~201_combout\ : std_logic;
SIGNAL \og|sig_cnt[48]~202\ : std_logic;
SIGNAL \og|sig_cnt[49]~203_combout\ : std_logic;
SIGNAL \og|sig_cnt[49]~204\ : std_logic;
SIGNAL \og|sig_cnt[50]~205_combout\ : std_logic;
SIGNAL \og|sig_cnt[50]~206\ : std_logic;
SIGNAL \og|sig_cnt[51]~207_combout\ : std_logic;
SIGNAL \og|sig_cnt[51]~208\ : std_logic;
SIGNAL \og|sig_cnt[52]~209_combout\ : std_logic;
SIGNAL \og|sig_cnt[52]~210\ : std_logic;
SIGNAL \og|sig_cnt[53]~211_combout\ : std_logic;
SIGNAL \og|sig_cnt[53]~212\ : std_logic;
SIGNAL \og|sig_cnt[54]~213_combout\ : std_logic;
SIGNAL \og|sig_cnt[54]~214\ : std_logic;
SIGNAL \og|sig_cnt[55]~215_combout\ : std_logic;
SIGNAL \og|sig_cnt[55]~216\ : std_logic;
SIGNAL \og|sig_cnt[56]~217_combout\ : std_logic;
SIGNAL \og|sig_cnt[56]~218\ : std_logic;
SIGNAL \og|sig_cnt[57]~219_combout\ : std_logic;
SIGNAL \og|sig_cnt[57]~220\ : std_logic;
SIGNAL \og|sig_cnt[58]~221_combout\ : std_logic;
SIGNAL \og|sig_cnt[58]~222\ : std_logic;
SIGNAL \og|sig_cnt[59]~223_combout\ : std_logic;
SIGNAL \og|sig_cnt[59]~224\ : std_logic;
SIGNAL \og|sig_cnt[60]~225_combout\ : std_logic;
SIGNAL \og|sig_cnt[60]~226\ : std_logic;
SIGNAL \og|sig_cnt[61]~227_combout\ : std_logic;
SIGNAL \og|sig_cnt[61]~228\ : std_logic;
SIGNAL \og|sig_cnt[62]~229_combout\ : std_logic;
SIGNAL \og|sig_cnt[62]~230\ : std_logic;
SIGNAL \og|sig_cnt[63]~231_combout\ : std_logic;
SIGNAL \og|sig_cnt[63]~232\ : std_logic;
SIGNAL \og|sig_cnt[64]~233_combout\ : std_logic;
SIGNAL \og|sig_cnt[64]~234\ : std_logic;
SIGNAL \og|sig_cnt[65]~235_combout\ : std_logic;
SIGNAL \og|sig_cnt[65]~236\ : std_logic;
SIGNAL \og|sig_cnt[66]~237_combout\ : std_logic;
SIGNAL \og|sig_cnt[66]~238\ : std_logic;
SIGNAL \og|sig_cnt[67]~239_combout\ : std_logic;
SIGNAL \og|sig_cnt[67]~240\ : std_logic;
SIGNAL \og|sig_cnt[68]~241_combout\ : std_logic;
SIGNAL \og|sig_cnt[68]~242\ : std_logic;
SIGNAL \og|sig_cnt[69]~243_combout\ : std_logic;
SIGNAL \og|sig_cnt[69]~244\ : std_logic;
SIGNAL \og|sig_cnt[70]~245_combout\ : std_logic;
SIGNAL \og|sig_cnt[70]~246\ : std_logic;
SIGNAL \og|sig_cnt[71]~247_combout\ : std_logic;
SIGNAL \og|sig_cnt[71]~248\ : std_logic;
SIGNAL \og|sig_cnt[72]~249_combout\ : std_logic;
SIGNAL \og|sig_cnt[72]~250\ : std_logic;
SIGNAL \og|sig_cnt[73]~251_combout\ : std_logic;
SIGNAL \og|sig_cnt[73]~252\ : std_logic;
SIGNAL \og|sig_cnt[74]~253_combout\ : std_logic;
SIGNAL \og|sig_cnt[74]~254\ : std_logic;
SIGNAL \og|sig_cnt[75]~255_combout\ : std_logic;
SIGNAL \og|sig_cnt[75]~256\ : std_logic;
SIGNAL \og|sig_cnt[76]~257_combout\ : std_logic;
SIGNAL \og|sig_cnt[76]~258\ : std_logic;
SIGNAL \og|sig_cnt[77]~259_combout\ : std_logic;
SIGNAL \og|sig_cnt[77]~260\ : std_logic;
SIGNAL \og|sig_cnt[78]~261_combout\ : std_logic;
SIGNAL \og|sig_cnt[78]~262\ : std_logic;
SIGNAL \og|sig_cnt[79]~263_combout\ : std_logic;
SIGNAL \og|sig_cnt[79]~264\ : std_logic;
SIGNAL \og|sig_cnt[80]~265_combout\ : std_logic;
SIGNAL \og|Equal1~23_combout\ : std_logic;
SIGNAL \og|Equal1~21_combout\ : std_logic;
SIGNAL \og|Equal1~22_combout\ : std_logic;
SIGNAL \og|sig_cnt[80]~266\ : std_logic;
SIGNAL \og|sig_cnt[81]~267_combout\ : std_logic;
SIGNAL \og|sig_cnt[81]~268\ : std_logic;
SIGNAL \og|sig_cnt[82]~269_combout\ : std_logic;
SIGNAL \og|sig_cnt[82]~270\ : std_logic;
SIGNAL \og|sig_cnt[83]~271_combout\ : std_logic;
SIGNAL \og|sig_cnt[83]~272\ : std_logic;
SIGNAL \og|sig_cnt[84]~273_combout\ : std_logic;
SIGNAL \og|Equal1~24_combout\ : std_logic;
SIGNAL \og|Equal1~25_combout\ : std_logic;
SIGNAL \og|sig_cnt[84]~274\ : std_logic;
SIGNAL \og|sig_cnt[85]~275_combout\ : std_logic;
SIGNAL \og|sig_cnt[85]~276\ : std_logic;
SIGNAL \og|sig_cnt[86]~277_combout\ : std_logic;
SIGNAL \og|sig_cnt[86]~278\ : std_logic;
SIGNAL \og|sig_cnt[87]~279_combout\ : std_logic;
SIGNAL \og|sig_cnt[87]~280\ : std_logic;
SIGNAL \og|sig_cnt[88]~281_combout\ : std_logic;
SIGNAL \og|sig_cnt[88]~282\ : std_logic;
SIGNAL \og|sig_cnt[89]~283_combout\ : std_logic;
SIGNAL \og|sig_cnt[89]~284\ : std_logic;
SIGNAL \og|sig_cnt[90]~285_combout\ : std_logic;
SIGNAL \og|sig_cnt[90]~286\ : std_logic;
SIGNAL \og|sig_cnt[91]~287_combout\ : std_logic;
SIGNAL \og|sig_cnt[91]~288\ : std_logic;
SIGNAL \og|sig_cnt[92]~289_combout\ : std_logic;
SIGNAL \og|sig_cnt[92]~290\ : std_logic;
SIGNAL \og|sig_cnt[93]~291_combout\ : std_logic;
SIGNAL \og|sig_cnt[93]~292\ : std_logic;
SIGNAL \og|sig_cnt[94]~293_combout\ : std_logic;
SIGNAL \og|sig_cnt[94]~294\ : std_logic;
SIGNAL \og|sig_cnt[95]~295_combout\ : std_logic;
SIGNAL \og|sig_cnt[95]~296\ : std_logic;
SIGNAL \og|sig_cnt[96]~297_combout\ : std_logic;
SIGNAL \og|Equal1~28_combout\ : std_logic;
SIGNAL \og|sig_cnt[96]~298\ : std_logic;
SIGNAL \og|sig_cnt[97]~299_combout\ : std_logic;
SIGNAL \og|sig_cnt[97]~300\ : std_logic;
SIGNAL \og|sig_cnt[98]~301_combout\ : std_logic;
SIGNAL \og|sig_cnt[98]~302\ : std_logic;
SIGNAL \og|sig_cnt[99]~303_combout\ : std_logic;
SIGNAL \og|sig_cnt[99]~304\ : std_logic;
SIGNAL \og|sig_cnt[100]~305_combout\ : std_logic;
SIGNAL \og|Equal1~29_combout\ : std_logic;
SIGNAL \og|Equal1~26_combout\ : std_logic;
SIGNAL \og|Equal1~27_combout\ : std_logic;
SIGNAL \og|Equal1~30_combout\ : std_logic;
SIGNAL \og|Equal1~11_combout\ : std_logic;
SIGNAL \og|Equal1~10_combout\ : std_logic;
SIGNAL \og|Equal1~12_combout\ : std_logic;
SIGNAL \og|Equal1~13_combout\ : std_logic;
SIGNAL \og|Equal1~14_combout\ : std_logic;
SIGNAL \og|Equal1~1_combout\ : std_logic;
SIGNAL \og|Equal1~2_combout\ : std_logic;
SIGNAL \og|Equal1~3_combout\ : std_logic;
SIGNAL \og|Equal1~0_combout\ : std_logic;
SIGNAL \og|Equal1~4_combout\ : std_logic;
SIGNAL \og|Equal1~15_combout\ : std_logic;
SIGNAL \og|Equal1~16_combout\ : std_logic;
SIGNAL \og|Equal1~17_combout\ : std_logic;
SIGNAL \og|Equal1~18_combout\ : std_logic;
SIGNAL \og|Equal1~19_combout\ : std_logic;
SIGNAL \og|Equal1~7_combout\ : std_logic;
SIGNAL \og|Equal1~5_combout\ : std_logic;
SIGNAL \og|Equal1~8_combout\ : std_logic;
SIGNAL \og|Equal1~6_combout\ : std_logic;
SIGNAL \og|Equal1~9_combout\ : std_logic;
SIGNAL \og|Equal1~20_combout\ : std_logic;
SIGNAL \og|Equal1~31_combout\ : std_logic;
SIGNAL \og|Equal1~32_combout\ : std_logic;
SIGNAL \og|state_Do~26_combout\ : std_logic;
SIGNAL \og|state_Do~29_combout\ : std_logic;
SIGNAL \og|state_Do.s2~q\ : std_logic;
SIGNAL \og|sig_cnt[100]~112_combout\ : std_logic;
SIGNAL \og|state_Do~27_combout\ : std_logic;
SIGNAL \og|state_Do.s7~q\ : std_logic;
SIGNAL \og|state_Do.s8~feeder_combout\ : std_logic;
SIGNAL \og|state_Do.s8~q\ : std_logic;
SIGNAL \crc|crc8bit_out~0_combout\ : std_logic;
SIGNAL \crc|Equal2~0_combout\ : std_logic;
SIGNAL \crc|Equal2~1_combout\ : std_logic;
SIGNAL \crc|crc8bit_out~1_combout\ : std_logic;
SIGNAL \crc|crc8bit_out~q\ : std_logic;
SIGNAL \og|Selector10~0_combout\ : std_logic;
SIGNAL \og|state_Do.s9~q\ : std_logic;
SIGNAL \og|Selector0~0_combout\ : std_logic;
SIGNAL \og|state_Do.s0~q\ : std_logic;
SIGNAL \og|Selector1~0_combout\ : std_logic;
SIGNAL \og|state_Do.s1~q\ : std_logic;
SIGNAL \og|sig_cnt[94]~110_combout\ : std_logic;
SIGNAL \og|Equal1~33_combout\ : std_logic;
SIGNAL \og|Equal1~34_combout\ : std_logic;
SIGNAL \og|Equal3~0_combout\ : std_logic;
SIGNAL \og|sig_cnt[94]~109_combout\ : std_logic;
SIGNAL \og|sig_cnt[94]~111_combout\ : std_logic;
SIGNAL \og|sig_cnt[0]~102\ : std_logic;
SIGNAL \og|sig_cnt[1]~103_combout\ : std_logic;
SIGNAL \og|sig_cnt[1]~104\ : std_logic;
SIGNAL \og|sig_cnt[2]~105_combout\ : std_logic;
SIGNAL \og|sig_cnt[2]~106\ : std_logic;
SIGNAL \og|sig_cnt[3]~107_combout\ : std_logic;
SIGNAL \og|sig_cnt[3]~108\ : std_logic;
SIGNAL \og|sig_cnt[4]~113_combout\ : std_logic;
SIGNAL \og|sig_cnt[4]~114\ : std_logic;
SIGNAL \og|sig_cnt[5]~115_combout\ : std_logic;
SIGNAL \og|state_Do~28_combout\ : std_logic;
SIGNAL \og|state_Do.s3~q\ : std_logic;
SIGNAL \og|state_Do.s4~q\ : std_logic;
SIGNAL \og|Selector5~0_combout\ : std_logic;
SIGNAL \og|state_Do.s5~q\ : std_logic;
SIGNAL \og|state_Do.s5a~feeder_combout\ : std_logic;
SIGNAL \og|state_Do.s5a~q\ : std_logic;
SIGNAL \og|Selector7~0_combout\ : std_logic;
SIGNAL \og|state_Do.s6~q\ : std_logic;
SIGNAL \og|Selector112~0_combout\ : std_logic;
SIGNAL \og|load_leds~q\ : std_logic;
SIGNAL \og|sig_green_leds_reg[0]~feeder_combout\ : std_logic;
SIGNAL \og|sig_green_leds_reg[17]~0_combout\ : std_logic;
SIGNAL \og|sig_green_leds_reg[1]~feeder_combout\ : std_logic;
SIGNAL \og|sig_green_leds_reg[2]~feeder_combout\ : std_logic;
SIGNAL \og|sig_green_leds_reg[4]~feeder_combout\ : std_logic;
SIGNAL \og|sig_green_leds_reg[6]~feeder_combout\ : std_logic;
SIGNAL \og|sig_green_leds_reg[9]~feeder_combout\ : std_logic;
SIGNAL \og|sig_green_leds_reg[10]~feeder_combout\ : std_logic;
SIGNAL \og|sig_green_leds_reg[11]~feeder_combout\ : std_logic;
SIGNAL \og|sig_green_leds_reg[12]~feeder_combout\ : std_logic;
SIGNAL \og|sig_green_leds_reg[13]~feeder_combout\ : std_logic;
SIGNAL \og|sig_green_leds_reg[14]~feeder_combout\ : std_logic;
SIGNAL \og|sig_green_leds_reg[16]~feeder_combout\ : std_logic;
SIGNAL \og|sig_green_leds_reg[17]~feeder_combout\ : std_logic;
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
SIGNAL \og|sig_rgb_leds_out[4]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[4]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[5]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[6]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[6]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[8]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[9]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[10]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[11]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[12]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[13]~feeder_combout\ : std_logic;
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
SIGNAL \og|rgb_leds[24]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[25]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[25]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[26]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[26]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[27]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[27]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[28]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[29]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[30]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[30]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[31]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[31]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[32]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[32]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[33]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[34]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[34]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[35]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[38]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[39]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[39]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[40]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[40]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[41]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[42]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[42]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[43]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[43]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[44]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[44]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[45]~feeder_combout\ : std_logic;
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
SIGNAL \og|sig_rgb_leds_out[54]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[54]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[55]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[55]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[56]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[56]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[57]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[57]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[58]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[58]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[59]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[59]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[60]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[61]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[62]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[62]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[63]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[63]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[64]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[65]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[65]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[66]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[67]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[68]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[69]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[70]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[70]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[71]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[71]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[72]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[73]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[73]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[74]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[74]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[75]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[75]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[76]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[77]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[78]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[78]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[79]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[79]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[80]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[80]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[81]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[81]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[82]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[82]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[83]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[83]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[84]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[85]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[86]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[87]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[88]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[88]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[89]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[90]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[91]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[91]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[92]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[92]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[93]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[93]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[94]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[94]~feeder_combout\ : std_logic;
SIGNAL \og|sig_rgb_leds_out[95]~feeder_combout\ : std_logic;
SIGNAL \og|rgb_leds[95]~feeder_combout\ : std_logic;
SIGNAL sig_main : std_logic_vector(13 DOWNTO 0);
SIGNAL sig_address : std_logic_vector(4 DOWNTO 0);
SIGNAL \crc|sig_sf_reg\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \MEMORY|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \og|sig_cnt\ : std_logic_vector(100 DOWNTO 0);
SIGNAL sig_rom_sf : std_logic_vector(7 DOWNTO 0);
SIGNAL \og|rgb_leds\ : std_logic_vector(95 DOWNTO 0);
SIGNAL \crc|crc_reg8bit\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \og|green_leds\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \og|sig_green_leds_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \og|sig_rgb_leds_out\ : std_logic_vector(95 DOWNTO 0);
SIGNAL \og|sig_green_leds_reg\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \crc|ALT_INV_crc8bit_out~q\ : std_logic;
SIGNAL \og|ALT_INV_load_leds~q\ : std_logic;

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
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y50_N16
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

-- Location: IOOBUF_X78_Y15_N9
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

-- Location: IOOBUF_X58_Y0_N9
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

-- Location: IOOBUF_X56_Y0_N16
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

-- Location: IOOBUF_X51_Y54_N23
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

-- Location: IOOBUF_X56_Y0_N9
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

-- Location: IOOBUF_X60_Y0_N30
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

-- Location: IOOBUF_X58_Y0_N2
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

-- Location: IOOBUF_X40_Y0_N2
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

-- Location: IOOBUF_X56_Y0_N23
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

-- Location: IOOBUF_X78_Y15_N2
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

-- Location: IOOBUF_X51_Y0_N9
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

-- Location: IOOBUF_X51_Y0_N2
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

-- Location: IOOBUF_X54_Y0_N23
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

-- Location: IOOBUF_X0_Y29_N2
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

-- Location: IOOBUF_X0_Y30_N16
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

-- Location: IOOBUF_X0_Y23_N2
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

-- Location: IOOBUF_X24_Y39_N30
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

-- Location: IOOBUF_X56_Y54_N16
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

-- Location: IOOBUF_X69_Y0_N16
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

-- Location: IOOBUF_X62_Y0_N30
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

-- Location: IOOBUF_X69_Y0_N9
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

-- Location: IOOBUF_X54_Y0_N9
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

-- Location: IOOBUF_X54_Y0_N16
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

-- Location: IOOBUF_X51_Y0_N16
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

-- Location: IOOBUF_X78_Y3_N9
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

-- Location: IOOBUF_X69_Y0_N23
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

-- Location: IOOBUF_X78_Y3_N2
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

-- Location: IOOBUF_X24_Y0_N2
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

-- Location: IOOBUF_X46_Y0_N2
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

-- Location: IOOBUF_X38_Y0_N2
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

-- Location: IOOBUF_X46_Y0_N9
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

-- Location: IOOBUF_X54_Y0_N2
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

-- Location: IOOBUF_X40_Y0_N23
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

-- Location: IOOBUF_X24_Y0_N30
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

-- Location: IOOBUF_X40_Y0_N9
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

-- Location: IOOBUF_X34_Y39_N30
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

-- Location: IOOBUF_X34_Y39_N23
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

-- Location: IOOBUF_X31_Y39_N9
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

-- Location: IOOBUF_X34_Y39_N2
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

-- Location: IOOBUF_X36_Y39_N30
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

-- Location: IOOBUF_X34_Y39_N16
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

-- Location: IOOBUF_X31_Y39_N2
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

-- Location: IOOBUF_X26_Y0_N2
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

-- Location: IOOBUF_X22_Y0_N9
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

-- Location: IOOBUF_X24_Y0_N23
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

-- Location: IOOBUF_X26_Y0_N16
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

-- Location: IOOBUF_X29_Y0_N2
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

-- Location: IOOBUF_X26_Y0_N23
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

-- Location: IOOBUF_X29_Y0_N16
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

-- Location: IOOBUF_X29_Y0_N9
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

-- Location: IOOBUF_X29_Y0_N23
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

-- Location: IOOBUF_X34_Y0_N2
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

-- Location: IOOBUF_X31_Y0_N2
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

-- Location: IOOBUF_X31_Y0_N23
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

-- Location: IOOBUF_X34_Y0_N16
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

-- Location: IOOBUF_X34_Y0_N9
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

-- Location: IOOBUF_X36_Y0_N2
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

-- Location: IOOBUF_X36_Y0_N9
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

-- Location: IOOBUF_X22_Y0_N2
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

-- Location: IOOBUF_X40_Y0_N30
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

-- Location: IOOBUF_X49_Y0_N2
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

-- Location: IOOBUF_X56_Y0_N2
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

-- Location: IOOBUF_X34_Y39_N9
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

-- Location: IOOBUF_X49_Y0_N9
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

-- Location: IOOBUF_X49_Y0_N23
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

-- Location: IOOBUF_X40_Y0_N16
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

-- Location: IOOBUF_X51_Y0_N30
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

-- Location: IOOBUF_X78_Y15_N16
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

-- Location: IOOBUF_X49_Y0_N16
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

-- Location: IOOBUF_X78_Y15_N23
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

-- Location: IOOBUF_X51_Y0_N23
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

-- Location: IOOBUF_X26_Y0_N30
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

-- Location: IOOBUF_X54_Y0_N30
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

-- Location: IOOBUF_X49_Y0_N30
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

-- Location: IOOBUF_X24_Y0_N16
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

-- Location: IOOBUF_X29_Y0_N30
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

-- Location: IOOBUF_X24_Y0_N9
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

-- Location: IOOBUF_X31_Y0_N30
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

-- Location: IOOBUF_X26_Y0_N9
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

-- Location: IOOBUF_X22_Y0_N30
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

-- Location: IOOBUF_X31_Y0_N16
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

-- Location: IOOBUF_X31_Y0_N9
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

-- Location: IOOBUF_X29_Y39_N2
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

-- Location: IOOBUF_X29_Y39_N16
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

-- Location: IOOBUF_X31_Y39_N23
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

-- Location: IOOBUF_X26_Y39_N2
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

-- Location: IOOBUF_X29_Y39_N9
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

-- Location: IOOBUF_X24_Y39_N16
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

-- Location: IOOBUF_X31_Y39_N16
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

-- Location: IOOBUF_X26_Y39_N16
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

-- Location: IOOBUF_X0_Y10_N23
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

-- Location: IOOBUF_X0_Y12_N9
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

-- Location: IOOBUF_X0_Y12_N2
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

-- Location: IOOBUF_X0_Y13_N16
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

-- Location: IOOBUF_X0_Y13_N9
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

-- Location: IOOBUF_X0_Y13_N23
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

-- Location: IOOBUF_X0_Y12_N16
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

-- Location: IOOBUF_X0_Y12_N23
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

-- Location: IOOBUF_X38_Y0_N16
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

-- Location: IOOBUF_X31_Y39_N30
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

-- Location: IOOBUF_X34_Y0_N30
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

-- Location: IOOBUF_X36_Y39_N16
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

-- Location: IOOBUF_X38_Y0_N9
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

-- Location: IOOBUF_X38_Y0_N23
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

-- Location: IOOBUF_X34_Y0_N23
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

-- Location: IOOBUF_X38_Y0_N30
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

-- Location: IOOBUF_X58_Y0_N30
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

-- Location: IOOBUF_X62_Y0_N16
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

-- Location: IOOBUF_X56_Y0_N30
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

-- Location: IOOBUF_X62_Y0_N9
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

-- Location: IOOBUF_X58_Y0_N16
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

-- Location: IOOBUF_X58_Y0_N23
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

-- Location: IOOBUF_X62_Y0_N23
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

-- Location: IOOBUF_X78_Y16_N16
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

-- Location: IOOBUF_X69_Y0_N2
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

-- Location: LCCOMB_X54_Y12_N20
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

-- Location: LCCOMB_X51_Y12_N30
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

-- Location: FF_X51_Y12_N31
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

-- Location: LCCOMB_X51_Y12_N10
\sig_main[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_main[1]~6_combout\ = (sig_main(0) & (sig_main(1) $ (VCC))) # (!sig_main(0) & (sig_main(1) & VCC))
-- \sig_main[1]~7\ = CARRY((sig_main(0) & sig_main(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_main(0),
	datab => sig_main(1),
	datad => VCC,
	combout => \sig_main[1]~6_combout\,
	cout => \sig_main[1]~7\);

-- Location: FF_X51_Y12_N11
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

-- Location: LCCOMB_X51_Y12_N12
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

-- Location: FF_X51_Y12_N13
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

-- Location: LCCOMB_X51_Y12_N14
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

-- Location: FF_X51_Y12_N15
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

-- Location: LCCOMB_X51_Y12_N16
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

-- Location: FF_X51_Y12_N17
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

-- Location: LCCOMB_X51_Y12_N18
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

-- Location: FF_X51_Y12_N19
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

-- Location: LCCOMB_X51_Y12_N20
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

-- Location: FF_X51_Y12_N21
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

-- Location: LCCOMB_X51_Y12_N28
\sig_cut~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cut~feeder_combout\ = sig_main(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_main(6),
	combout => \sig_cut~feeder_combout\);

-- Location: FF_X51_Y12_N29
sig_cut : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cut~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_cut~q\);

-- Location: FF_X51_Y12_N23
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

-- Location: LCCOMB_X51_Y12_N22
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

-- Location: FF_X54_Y12_N21
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

-- Location: LCCOMB_X54_Y12_N22
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

-- Location: FF_X54_Y12_N23
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

-- Location: FF_X54_Y12_N13
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

-- Location: FF_X51_Y12_N1
\state_t.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_t.s1~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_t.s2~q\);

-- Location: LCCOMB_X51_Y12_N2
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

-- Location: FF_X51_Y12_N3
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

-- Location: LCCOMB_X51_Y12_N24
\state_t.s4~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_t.s4~feeder_combout\ = \state_t.s3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_t.s3~q\,
	combout => \state_t.s4~feeder_combout\);

-- Location: FF_X51_Y12_N25
\state_t.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_t.s4~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_t.s4~q\);

-- Location: LCCOMB_X51_Y12_N4
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

-- Location: FF_X51_Y12_N5
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

-- Location: FF_X51_Y12_N9
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

-- Location: FF_X54_Y12_N7
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

-- Location: LCCOMB_X52_Y12_N26
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

-- Location: FF_X52_Y12_N27
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

-- Location: LCCOMB_X52_Y12_N0
\sig_address[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_address[1]~6_combout\ = (sig_address(0) & (sig_address(1) $ (VCC))) # (!sig_address(0) & (sig_address(1) & VCC))
-- \sig_address[1]~7\ = CARRY((sig_address(0) & sig_address(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_address(0),
	datab => sig_address(1),
	datad => VCC,
	combout => \sig_address[1]~6_combout\,
	cout => \sig_address[1]~7\);

-- Location: LCCOMB_X52_Y12_N12
\sig_address[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_address[0]~8_combout\ = (\state_t.s6~q\ & (!\sig_cut_not~q\ & \sig_cut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_t.s6~q\,
	datac => \sig_cut_not~q\,
	datad => \sig_cut~q\,
	combout => \sig_address[0]~8_combout\);

-- Location: FF_X52_Y12_N1
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

-- Location: LCCOMB_X52_Y12_N2
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

-- Location: FF_X52_Y12_N3
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

-- Location: LCCOMB_X52_Y12_N4
\sig_address[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_address[3]~11_combout\ = (sig_address(3) & (\sig_address[2]~10\ $ (GND))) # (!sig_address(3) & (!\sig_address[2]~10\ & VCC))
-- \sig_address[3]~12\ = CARRY((sig_address(3) & !\sig_address[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_address(3),
	datad => VCC,
	cin => \sig_address[2]~10\,
	combout => \sig_address[3]~11_combout\,
	cout => \sig_address[3]~12\);

-- Location: FF_X52_Y12_N5
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

-- Location: LCCOMB_X52_Y12_N6
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

-- Location: FF_X52_Y12_N7
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

-- Location: M9K_X53_Y12_N0
\MEMORY|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0018400BA002E400B8002DC00B6002D400B4002CC00B2002C400B0002BC00AE002B400AC002AC00AA0000000110000000000004400000000000110000000AB003F800CA003000001",
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

-- Location: LCCOMB_X54_Y12_N18
\sig_rom_sf~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rom_sf~10_combout\ = (\MEMORY|altsyncram_component|auto_generated|q_a\(0) & ((\state_t.s7~q\) # (!\state_t.s0a~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORY|altsyncram_component|auto_generated|q_a\(0),
	datab => \state_t.s0a~q\,
	datad => \state_t.s7~q\,
	combout => \sig_rom_sf~10_combout\);

-- Location: LCCOMB_X52_Y12_N24
\sig_rom_sf[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rom_sf[7]~3_combout\ = (\resetn~input_o\ & (!\sig_cut_not~q\ & \sig_cut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetn~input_o\,
	datac => \sig_cut_not~q\,
	datad => \sig_cut~q\,
	combout => \sig_rom_sf[7]~3_combout\);

-- Location: FF_X54_Y12_N19
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

-- Location: LCCOMB_X54_Y12_N8
\sig_rom_sf~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rom_sf~9_combout\ = (\state_t.s7~q\ & (((\MEMORY|altsyncram_component|auto_generated|q_a\(1))))) # (!\state_t.s7~q\ & ((\state_t.s0a~q\ & (sig_rom_sf(0))) # (!\state_t.s0a~q\ & ((\MEMORY|altsyncram_component|auto_generated|q_a\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_t.s7~q\,
	datab => sig_rom_sf(0),
	datac => \MEMORY|altsyncram_component|auto_generated|q_a\(1),
	datad => \state_t.s0a~q\,
	combout => \sig_rom_sf~9_combout\);

-- Location: FF_X54_Y12_N9
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

-- Location: LCCOMB_X54_Y12_N14
\sig_rom_sf~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rom_sf~8_combout\ = (\state_t.s0a~q\ & ((\state_t.s7~q\ & (\MEMORY|altsyncram_component|auto_generated|q_a\(2))) # (!\state_t.s7~q\ & ((sig_rom_sf(1)))))) # (!\state_t.s0a~q\ & (\MEMORY|altsyncram_component|auto_generated|q_a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORY|altsyncram_component|auto_generated|q_a\(2),
	datab => \state_t.s0a~q\,
	datac => sig_rom_sf(1),
	datad => \state_t.s7~q\,
	combout => \sig_rom_sf~8_combout\);

-- Location: FF_X54_Y12_N15
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

-- Location: LCCOMB_X54_Y12_N4
\sig_rom_sf~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rom_sf~7_combout\ = (\state_t.s0a~q\ & ((\state_t.s7~q\ & (\MEMORY|altsyncram_component|auto_generated|q_a\(3))) # (!\state_t.s7~q\ & ((sig_rom_sf(2)))))) # (!\state_t.s0a~q\ & (\MEMORY|altsyncram_component|auto_generated|q_a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORY|altsyncram_component|auto_generated|q_a\(3),
	datab => \state_t.s0a~q\,
	datac => sig_rom_sf(2),
	datad => \state_t.s7~q\,
	combout => \sig_rom_sf~7_combout\);

-- Location: FF_X54_Y12_N5
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

-- Location: LCCOMB_X54_Y12_N26
\sig_rom_sf~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rom_sf~6_combout\ = (\state_t.s0a~q\ & ((\state_t.s7~q\ & (\MEMORY|altsyncram_component|auto_generated|q_a\(4))) # (!\state_t.s7~q\ & ((sig_rom_sf(3)))))) # (!\state_t.s0a~q\ & (\MEMORY|altsyncram_component|auto_generated|q_a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORY|altsyncram_component|auto_generated|q_a\(4),
	datab => \state_t.s0a~q\,
	datac => sig_rom_sf(3),
	datad => \state_t.s7~q\,
	combout => \sig_rom_sf~6_combout\);

-- Location: FF_X54_Y12_N27
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

-- Location: LCCOMB_X54_Y12_N24
\sig_rom_sf~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rom_sf~5_combout\ = (\state_t.s0a~q\ & ((\state_t.s7~q\ & ((\MEMORY|altsyncram_component|auto_generated|q_a\(5)))) # (!\state_t.s7~q\ & (sig_rom_sf(4))))) # (!\state_t.s0a~q\ & (((\MEMORY|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_rom_sf(4),
	datab => \state_t.s0a~q\,
	datac => \MEMORY|altsyncram_component|auto_generated|q_a\(5),
	datad => \state_t.s7~q\,
	combout => \sig_rom_sf~5_combout\);

-- Location: FF_X54_Y12_N25
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

-- Location: LCCOMB_X54_Y12_N10
\sig_rom_sf~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rom_sf~4_combout\ = (\state_t.s7~q\ & (((\MEMORY|altsyncram_component|auto_generated|q_a\(6))))) # (!\state_t.s7~q\ & ((\state_t.s0a~q\ & ((sig_rom_sf(5)))) # (!\state_t.s0a~q\ & (\MEMORY|altsyncram_component|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_t.s7~q\,
	datab => \state_t.s0a~q\,
	datac => \MEMORY|altsyncram_component|auto_generated|q_a\(6),
	datad => sig_rom_sf(5),
	combout => \sig_rom_sf~4_combout\);

-- Location: FF_X54_Y12_N11
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

-- Location: LCCOMB_X54_Y12_N0
\sig_rom_sf~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_rom_sf~2_combout\ = (\state_t.s0a~q\ & ((\state_t.s7~q\ & ((\MEMORY|altsyncram_component|auto_generated|q_a\(7)))) # (!\state_t.s7~q\ & (sig_rom_sf(6))))) # (!\state_t.s0a~q\ & (((\MEMORY|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_rom_sf(6),
	datab => \state_t.s0a~q\,
	datac => \MEMORY|altsyncram_component|auto_generated|q_a\(7),
	datad => \state_t.s7~q\,
	combout => \sig_rom_sf~2_combout\);

-- Location: FF_X54_Y12_N1
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

-- Location: LCCOMB_X52_Y4_N2
\crc|crc_reg8bit~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|crc_reg8bit~2_combout\ = \crc|crc_reg8bit\(0) $ (sig_rom_sf(7) $ (\crc|crc_reg8bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \crc|crc_reg8bit\(0),
	datac => sig_rom_sf(7),
	datad => \crc|crc_reg8bit\(7),
	combout => \crc|crc_reg8bit~2_combout\);

-- Location: LCCOMB_X50_Y12_N22
\crc|crc8bit_operation:cnt[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|crc8bit_operation:cnt[7]~0_combout\ = (\crc|state_crc.s1~q\ & (!\sig_cut_not~q\ & (\resetn~input_o\ & \sig_cut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|state_crc.s1~q\,
	datab => \sig_cut_not~q\,
	datac => \resetn~input_o\,
	datad => \sig_cut~q\,
	combout => \crc|crc8bit_operation:cnt[7]~0_combout\);

-- Location: FF_X49_Y12_N9
\crc|crc8bit_operation:cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|Add0~4_combout\,
	ena => \crc|crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|crc8bit_operation:cnt[2]~q\);

-- Location: LCCOMB_X49_Y12_N4
\crc|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Add0~0_combout\ = \crc|crc8bit_operation:cnt[0]~q\ $ (VCC)
-- \crc|Add0~1\ = CARRY(\crc|crc8bit_operation:cnt[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \crc|crc8bit_operation:cnt[0]~q\,
	datad => VCC,
	combout => \crc|Add0~0_combout\,
	cout => \crc|Add0~1\);

-- Location: FF_X49_Y12_N5
\crc|crc8bit_operation:cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|Add0~0_combout\,
	ena => \crc|crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|crc8bit_operation:cnt[0]~q\);

-- Location: LCCOMB_X49_Y12_N6
\crc|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Add0~2_combout\ = (\crc|crc8bit_operation:cnt[1]~q\ & (!\crc|Add0~1\)) # (!\crc|crc8bit_operation:cnt[1]~q\ & ((\crc|Add0~1\) # (GND)))
-- \crc|Add0~3\ = CARRY((!\crc|Add0~1\) # (!\crc|crc8bit_operation:cnt[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \crc|crc8bit_operation:cnt[1]~q\,
	datad => VCC,
	cin => \crc|Add0~1\,
	combout => \crc|Add0~2_combout\,
	cout => \crc|Add0~3\);

-- Location: FF_X49_Y12_N7
\crc|crc8bit_operation:cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|Add0~2_combout\,
	ena => \crc|crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|crc8bit_operation:cnt[1]~q\);

-- Location: LCCOMB_X49_Y12_N8
\crc|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Add0~4_combout\ = (\crc|crc8bit_operation:cnt[2]~q\ & (\crc|Add0~3\ $ (GND))) # (!\crc|crc8bit_operation:cnt[2]~q\ & (!\crc|Add0~3\ & VCC))
-- \crc|Add0~5\ = CARRY((\crc|crc8bit_operation:cnt[2]~q\ & !\crc|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \crc|crc8bit_operation:cnt[2]~q\,
	datad => VCC,
	cin => \crc|Add0~3\,
	combout => \crc|Add0~4_combout\,
	cout => \crc|Add0~5\);

-- Location: LCCOMB_X49_Y12_N28
\crc|cnt~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|cnt~2_combout\ = (\crc|Add0~6_combout\ & ((!\crc|Equal1~0_combout\) # (!\crc|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|Add0~6_combout\,
	datac => \crc|Equal1~1_combout\,
	datad => \crc|Equal1~0_combout\,
	combout => \crc|cnt~2_combout\);

-- Location: FF_X49_Y12_N29
\crc|crc8bit_operation:cnt[3]\ : dffeas
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
	q => \crc|crc8bit_operation:cnt[3]~q\);

-- Location: LCCOMB_X49_Y12_N10
\crc|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Add0~6_combout\ = (\crc|crc8bit_operation:cnt[3]~q\ & (!\crc|Add0~5\)) # (!\crc|crc8bit_operation:cnt[3]~q\ & ((\crc|Add0~5\) # (GND)))
-- \crc|Add0~7\ = CARRY((!\crc|Add0~5\) # (!\crc|crc8bit_operation:cnt[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \crc|crc8bit_operation:cnt[3]~q\,
	datad => VCC,
	cin => \crc|Add0~5\,
	combout => \crc|Add0~6_combout\,
	cout => \crc|Add0~7\);

-- Location: LCCOMB_X49_Y12_N0
\crc|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Equal1~0_combout\ = (!\crc|Add0~4_combout\ & (!\crc|Add0~2_combout\ & (!\crc|Add0~0_combout\ & \crc|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|Add0~4_combout\,
	datab => \crc|Add0~2_combout\,
	datac => \crc|Add0~0_combout\,
	datad => \crc|Add0~6_combout\,
	combout => \crc|Equal1~0_combout\);

-- Location: LCCOMB_X49_Y12_N2
\crc|cnt~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|cnt~1_combout\ = (\crc|Add0~8_combout\ & ((!\crc|Equal1~0_combout\) # (!\crc|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|Add0~8_combout\,
	datac => \crc|Equal1~1_combout\,
	datad => \crc|Equal1~0_combout\,
	combout => \crc|cnt~1_combout\);

-- Location: FF_X49_Y12_N3
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

-- Location: LCCOMB_X49_Y12_N12
\crc|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Add0~8_combout\ = (\crc|crc8bit_operation:cnt[4]~q\ & (\crc|Add0~7\ $ (GND))) # (!\crc|crc8bit_operation:cnt[4]~q\ & (!\crc|Add0~7\ & VCC))
-- \crc|Add0~9\ = CARRY((\crc|crc8bit_operation:cnt[4]~q\ & !\crc|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \crc|crc8bit_operation:cnt[4]~q\,
	datad => VCC,
	cin => \crc|Add0~7\,
	combout => \crc|Add0~8_combout\,
	cout => \crc|Add0~9\);

-- Location: LCCOMB_X49_Y12_N30
\crc|cnt~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|cnt~3_combout\ = (\crc|Add0~14_combout\ & ((!\crc|Equal1~0_combout\) # (!\crc|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \crc|Add0~14_combout\,
	datac => \crc|Equal1~1_combout\,
	datad => \crc|Equal1~0_combout\,
	combout => \crc|cnt~3_combout\);

-- Location: FF_X49_Y12_N31
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

-- Location: LCCOMB_X49_Y12_N14
\crc|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Add0~10_combout\ = (\crc|crc8bit_operation:cnt[5]~q\ & (!\crc|Add0~9\)) # (!\crc|crc8bit_operation:cnt[5]~q\ & ((\crc|Add0~9\) # (GND)))
-- \crc|Add0~11\ = CARRY((!\crc|Add0~9\) # (!\crc|crc8bit_operation:cnt[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \crc|crc8bit_operation:cnt[5]~q\,
	datad => VCC,
	cin => \crc|Add0~9\,
	combout => \crc|Add0~10_combout\,
	cout => \crc|Add0~11\);

-- Location: FF_X49_Y12_N15
\crc|crc8bit_operation:cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|Add0~10_combout\,
	ena => \crc|crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|crc8bit_operation:cnt[5]~q\);

-- Location: LCCOMB_X49_Y12_N16
\crc|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Add0~12_combout\ = (\crc|crc8bit_operation:cnt[6]~q\ & (\crc|Add0~11\ $ (GND))) # (!\crc|crc8bit_operation:cnt[6]~q\ & (!\crc|Add0~11\ & VCC))
-- \crc|Add0~13\ = CARRY((\crc|crc8bit_operation:cnt[6]~q\ & !\crc|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \crc|crc8bit_operation:cnt[6]~q\,
	datad => VCC,
	cin => \crc|Add0~11\,
	combout => \crc|Add0~12_combout\,
	cout => \crc|Add0~13\);

-- Location: LCCOMB_X49_Y12_N24
\crc|cnt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|cnt~0_combout\ = (\crc|Add0~12_combout\ & ((!\crc|Equal1~0_combout\) # (!\crc|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \crc|Add0~12_combout\,
	datac => \crc|Equal1~1_combout\,
	datad => \crc|Equal1~0_combout\,
	combout => \crc|cnt~0_combout\);

-- Location: FF_X49_Y12_N25
\crc|crc8bit_operation:cnt[6]\ : dffeas
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
	q => \crc|crc8bit_operation:cnt[6]~q\);

-- Location: LCCOMB_X49_Y12_N18
\crc|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Add0~14_combout\ = \crc|crc8bit_operation:cnt[7]~q\ $ (\crc|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \crc|crc8bit_operation:cnt[7]~q\,
	cin => \crc|Add0~13\,
	combout => \crc|Add0~14_combout\);

-- Location: LCCOMB_X49_Y12_N22
\crc|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Equal1~1_combout\ = (\crc|Add0~8_combout\ & (\crc|Add0~14_combout\ & (!\crc|Add0~10_combout\ & \crc|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|Add0~8_combout\,
	datab => \crc|Add0~14_combout\,
	datac => \crc|Add0~10_combout\,
	datad => \crc|Add0~12_combout\,
	combout => \crc|Equal1~1_combout\);

-- Location: LCCOMB_X50_Y12_N4
\crc|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Selector2~0_combout\ = (\crc|Equal1~1_combout\ & (\crc|Equal1~0_combout\ & \crc|state_crc.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \crc|Equal1~1_combout\,
	datac => \crc|Equal1~0_combout\,
	datad => \crc|state_crc.s1~q\,
	combout => \crc|Selector2~0_combout\);

-- Location: FF_X50_Y12_N5
\crc|state_crc.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|Selector2~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_crc.s2~q\);

-- Location: FF_X51_Y12_N7
\crc|state_crc.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|state_crc.s2~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_crc.s3~q\);

-- Location: LCCOMB_X50_Y12_N24
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

-- Location: FF_X50_Y12_N25
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

-- Location: LCCOMB_X46_Y12_N30
\crc|sig_main_clk_f~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_main_clk_f~0_combout\ = (\sig_cut_not~q\ & !\sig_cut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_cut_not~q\,
	datad => \sig_cut~q\,
	combout => \crc|sig_main_clk_f~0_combout\);

-- Location: FF_X46_Y12_N29
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

-- Location: LCCOMB_X46_Y12_N2
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

-- Location: FF_X46_Y12_N3
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

-- Location: LCCOMB_X46_Y12_N26
\crc|sig_sf_reg[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_sf_reg[2]~feeder_combout\ = \crc|sig_sf_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc|sig_sf_reg\(1),
	combout => \crc|sig_sf_reg[2]~feeder_combout\);

-- Location: FF_X46_Y12_N27
\crc|sig_sf_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|sig_sf_reg[2]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(2));

-- Location: FF_X46_Y12_N11
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

-- Location: FF_X46_Y12_N13
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

-- Location: LCCOMB_X46_Y12_N22
\crc|sig_sf_reg[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_sf_reg[5]~feeder_combout\ = \crc|sig_sf_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc|sig_sf_reg\(4),
	combout => \crc|sig_sf_reg[5]~feeder_combout\);

-- Location: FF_X46_Y12_N23
\crc|sig_sf_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|sig_sf_reg[5]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(5));

-- Location: FF_X46_Y12_N1
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

-- Location: LCCOMB_X46_Y12_N24
\crc|sig_sf_reg[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_sf_reg[7]~feeder_combout\ = \crc|sig_sf_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc|sig_sf_reg\(6),
	combout => \crc|sig_sf_reg[7]~feeder_combout\);

-- Location: FF_X46_Y12_N25
\crc|sig_sf_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|sig_sf_reg[7]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(7));

-- Location: LCCOMB_X46_Y12_N16
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

-- Location: FF_X46_Y12_N17
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

-- Location: FF_X46_Y12_N15
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

-- Location: FF_X46_Y12_N21
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

-- Location: FF_X46_Y12_N31
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

-- Location: FF_X46_Y12_N5
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

-- Location: FF_X46_Y12_N9
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

-- Location: FF_X46_Y12_N19
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

-- Location: LCCOMB_X46_Y12_N6
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

-- Location: FF_X46_Y12_N7
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

-- Location: FF_X47_Y12_N15
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

-- Location: FF_X47_Y12_N1
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

-- Location: LCCOMB_X47_Y12_N20
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

-- Location: FF_X47_Y12_N21
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

-- Location: LCCOMB_X47_Y12_N26
\crc|sig_sf_reg[19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_sf_reg[19]~feeder_combout\ = \crc|sig_sf_reg\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc|sig_sf_reg\(18),
	combout => \crc|sig_sf_reg[19]~feeder_combout\);

-- Location: FF_X47_Y12_N27
\crc|sig_sf_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|sig_sf_reg[19]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(19));

-- Location: LCCOMB_X47_Y12_N14
\og|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~4_combout\ = (\crc|sig_sf_reg\(17) & (\crc|sig_sf_reg\(19) & (!\crc|sig_sf_reg\(16) & !\crc|sig_sf_reg\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|sig_sf_reg\(17),
	datab => \crc|sig_sf_reg\(19),
	datac => \crc|sig_sf_reg\(16),
	datad => \crc|sig_sf_reg\(18),
	combout => \og|Equal0~4_combout\);

-- Location: FF_X47_Y12_N9
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

-- Location: FF_X47_Y12_N23
\crc|sig_sf_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|sig_sf_reg\(20),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(21));

-- Location: LCCOMB_X47_Y12_N24
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

-- Location: FF_X47_Y12_N25
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

-- Location: FF_X47_Y12_N17
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

-- Location: LCCOMB_X47_Y12_N8
\og|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~3_combout\ = (\crc|sig_sf_reg\(22) & (!\crc|sig_sf_reg\(21) & (!\crc|sig_sf_reg\(20) & \crc|sig_sf_reg\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|sig_sf_reg\(22),
	datab => \crc|sig_sf_reg\(21),
	datac => \crc|sig_sf_reg\(20),
	datad => \crc|sig_sf_reg\(23),
	combout => \og|Equal0~3_combout\);

-- Location: LCCOMB_X47_Y12_N18
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

-- Location: FF_X47_Y12_N19
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

-- Location: LCCOMB_X47_Y12_N12
\crc|sig_sf_reg[25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_sf_reg[25]~feeder_combout\ = \crc|sig_sf_reg\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc|sig_sf_reg\(24),
	combout => \crc|sig_sf_reg[25]~feeder_combout\);

-- Location: FF_X47_Y12_N13
\crc|sig_sf_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|sig_sf_reg[25]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(25));

-- Location: FF_X47_Y12_N11
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

-- Location: LCCOMB_X47_Y12_N2
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

-- Location: FF_X47_Y12_N3
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

-- Location: LCCOMB_X47_Y12_N10
\og|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~1_combout\ = (!\crc|sig_sf_reg\(25) & (!\crc|sig_sf_reg\(27) & (!\crc|sig_sf_reg\(26) & !\crc|sig_sf_reg\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|sig_sf_reg\(25),
	datab => \crc|sig_sf_reg\(27),
	datac => \crc|sig_sf_reg\(26),
	datad => \crc|sig_sf_reg\(24),
	combout => \og|Equal0~1_combout\);

-- Location: LCCOMB_X47_Y12_N6
\crc|sig_sf_reg[28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|sig_sf_reg[28]~feeder_combout\ = \crc|sig_sf_reg\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc|sig_sf_reg\(27),
	combout => \crc|sig_sf_reg[28]~feeder_combout\);

-- Location: FF_X47_Y12_N7
\crc|sig_sf_reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|sig_sf_reg[28]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \crc|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|sig_sf_reg\(28));

-- Location: LCCOMB_X47_Y12_N28
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

-- Location: FF_X47_Y12_N29
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

-- Location: LCCOMB_X47_Y12_N4
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

-- Location: FF_X47_Y12_N5
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

-- Location: FF_X47_Y12_N31
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

-- Location: LCCOMB_X47_Y12_N30
\og|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~0_combout\ = (!\crc|sig_sf_reg\(28) & (\crc|sig_sf_reg\(30) & (\crc|sig_sf_reg\(31) & !\crc|sig_sf_reg\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|sig_sf_reg\(28),
	datab => \crc|sig_sf_reg\(30),
	datac => \crc|sig_sf_reg\(31),
	datad => \crc|sig_sf_reg\(29),
	combout => \og|Equal0~0_combout\);

-- Location: LCCOMB_X50_Y12_N14
\og|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~2_combout\ = (\og|Equal0~1_combout\ & \og|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|Equal0~1_combout\,
	datad => \og|Equal0~0_combout\,
	combout => \og|Equal0~2_combout\);

-- Location: LCCOMB_X46_Y12_N12
\og|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~7_combout\ = (\crc|sig_sf_reg\(5) & (!\crc|sig_sf_reg\(6) & (!\crc|sig_sf_reg\(4) & \crc|sig_sf_reg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|sig_sf_reg\(5),
	datab => \crc|sig_sf_reg\(6),
	datac => \crc|sig_sf_reg\(4),
	datad => \crc|sig_sf_reg\(7),
	combout => \og|Equal0~7_combout\);

-- Location: LCCOMB_X46_Y12_N14
\og|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~6_combout\ = (\crc|sig_sf_reg\(11) & (!\crc|sig_sf_reg\(8) & (\crc|sig_sf_reg\(9) & \crc|sig_sf_reg\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|sig_sf_reg\(11),
	datab => \crc|sig_sf_reg\(8),
	datac => \crc|sig_sf_reg\(9),
	datad => \crc|sig_sf_reg\(10),
	combout => \og|Equal0~6_combout\);

-- Location: LCCOMB_X46_Y12_N28
\og|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~8_combout\ = (!\crc|sig_sf_reg\(2) & (\crc|sig_sf_reg\(1) & (\crc|sig_sf_reg\(0) & \crc|sig_sf_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|sig_sf_reg\(2),
	datab => \crc|sig_sf_reg\(1),
	datac => \crc|sig_sf_reg\(0),
	datad => \crc|sig_sf_reg\(3),
	combout => \og|Equal0~8_combout\);

-- Location: LCCOMB_X46_Y12_N4
\og|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~5_combout\ = (\crc|sig_sf_reg\(15) & (\crc|sig_sf_reg\(13) & (\crc|sig_sf_reg\(12) & \crc|sig_sf_reg\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|sig_sf_reg\(15),
	datab => \crc|sig_sf_reg\(13),
	datac => \crc|sig_sf_reg\(12),
	datad => \crc|sig_sf_reg\(14),
	combout => \og|Equal0~5_combout\);

-- Location: LCCOMB_X50_Y12_N0
\og|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~9_combout\ = (\og|Equal0~7_combout\ & (\og|Equal0~6_combout\ & (\og|Equal0~8_combout\ & \og|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|Equal0~7_combout\,
	datab => \og|Equal0~6_combout\,
	datac => \og|Equal0~8_combout\,
	datad => \og|Equal0~5_combout\,
	combout => \og|Equal0~9_combout\);

-- Location: LCCOMB_X50_Y12_N2
\og|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal0~10_combout\ = (\og|Equal0~4_combout\ & (\og|Equal0~3_combout\ & (\og|Equal0~2_combout\ & \og|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|Equal0~4_combout\,
	datab => \og|Equal0~3_combout\,
	datac => \og|Equal0~2_combout\,
	datad => \og|Equal0~9_combout\,
	combout => \og|Equal0~10_combout\);

-- Location: LCCOMB_X50_Y12_N20
\crc|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Selector0~0_combout\ = (!\crc|state_crc.s4~q\ & ((\crc|state_crc.s0~q\) # (\og|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \crc|state_crc.s4~q\,
	datac => \crc|state_crc.s0~q\,
	datad => \og|Equal0~10_combout\,
	combout => \crc|Selector0~0_combout\);

-- Location: FF_X50_Y12_N21
\crc|state_crc.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|Selector0~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_crc.s0~q\);

-- Location: LCCOMB_X49_Y12_N26
\crc|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Selector1~0_combout\ = ((\crc|Add0~10_combout\) # (!\crc|Equal1~0_combout\)) # (!\crc|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|Add0~8_combout\,
	datac => \crc|Add0~10_combout\,
	datad => \crc|Equal1~0_combout\,
	combout => \crc|Selector1~0_combout\);

-- Location: LCCOMB_X49_Y12_N20
\crc|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Selector1~1_combout\ = (\crc|state_crc.s1~q\ & (((\crc|Selector1~0_combout\) # (!\crc|Add0~12_combout\)) # (!\crc|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|Add0~14_combout\,
	datab => \crc|Add0~12_combout\,
	datac => \crc|Selector1~0_combout\,
	datad => \crc|state_crc.s1~q\,
	combout => \crc|Selector1~1_combout\);

-- Location: LCCOMB_X50_Y12_N18
\crc|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Selector1~2_combout\ = (\crc|Selector1~1_combout\) # ((!\crc|state_crc.s0~q\ & \og|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \crc|state_crc.s0~q\,
	datac => \crc|Selector1~1_combout\,
	datad => \og|Equal0~10_combout\,
	combout => \crc|Selector1~2_combout\);

-- Location: FF_X50_Y12_N19
\crc|state_crc.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|Selector1~2_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|state_crc.s1~q\);

-- Location: LCCOMB_X50_Y12_N28
\crc|crc_reg8bit[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|crc_reg8bit[0]~1_combout\ = (!\sig_cut_not~q\ & (\crc|state_crc.s1~q\ & \sig_cut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_cut_not~q\,
	datac => \crc|state_crc.s1~q\,
	datad => \sig_cut~q\,
	combout => \crc|crc_reg8bit[0]~1_combout\);

-- Location: FF_X52_Y4_N3
\crc|crc_reg8bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|crc_reg8bit~2_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \crc|crc_reg8bit[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|crc_reg8bit\(1));

-- Location: LCCOMB_X52_Y4_N4
\crc|crc_reg8bit~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|crc_reg8bit~3_combout\ = \crc|crc_reg8bit\(1) $ (sig_rom_sf(7) $ (\crc|crc_reg8bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \crc|crc_reg8bit\(1),
	datac => sig_rom_sf(7),
	datad => \crc|crc_reg8bit\(7),
	combout => \crc|crc_reg8bit~3_combout\);

-- Location: FF_X52_Y4_N5
\crc|crc_reg8bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|crc_reg8bit~3_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \crc|crc_reg8bit[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|crc_reg8bit\(2));

-- Location: FF_X52_Y4_N17
\crc|crc_reg8bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|crc_reg8bit\(2),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \crc|crc_reg8bit[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|crc_reg8bit\(3));

-- Location: LCCOMB_X52_Y4_N8
\crc|crc_reg8bit[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|crc_reg8bit[4]~feeder_combout\ = \crc|crc_reg8bit\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc|crc_reg8bit\(3),
	combout => \crc|crc_reg8bit[4]~feeder_combout\);

-- Location: FF_X52_Y4_N9
\crc|crc_reg8bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|crc_reg8bit[4]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \crc|crc_reg8bit[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|crc_reg8bit\(4));

-- Location: FF_X52_Y4_N15
\crc|crc_reg8bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|crc_reg8bit\(4),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \crc|crc_reg8bit[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|crc_reg8bit\(5));

-- Location: FF_X52_Y4_N1
\crc|crc_reg8bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \crc|crc_reg8bit\(5),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \crc|crc_reg8bit[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|crc_reg8bit\(6));

-- Location: LCCOMB_X52_Y4_N10
\crc|crc_reg8bit[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|crc_reg8bit[7]~feeder_combout\ = \crc|crc_reg8bit\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \crc|crc_reg8bit\(6),
	combout => \crc|crc_reg8bit[7]~feeder_combout\);

-- Location: FF_X52_Y4_N11
\crc|crc_reg8bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|crc_reg8bit[7]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \crc|crc_reg8bit[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|crc_reg8bit\(7));

-- Location: LCCOMB_X52_Y4_N24
\crc|crc_reg8bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|crc_reg8bit~0_combout\ = sig_rom_sf(7) $ (\crc|crc_reg8bit\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sig_rom_sf(7),
	datad => \crc|crc_reg8bit\(7),
	combout => \crc|crc_reg8bit~0_combout\);

-- Location: FF_X52_Y4_N25
\crc|crc_reg8bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \crc|crc_reg8bit~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \crc|crc_reg8bit[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \crc|crc_reg8bit\(0));

-- Location: LCCOMB_X44_Y15_N12
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

-- Location: LCCOMB_X44_Y15_N22
\og|sig_cnt[5]~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[5]~115_combout\ = (\og|sig_cnt\(5) & (!\og|sig_cnt[4]~114\)) # (!\og|sig_cnt\(5) & ((\og|sig_cnt[4]~114\) # (GND)))
-- \og|sig_cnt[5]~116\ = CARRY((!\og|sig_cnt[4]~114\) # (!\og|sig_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(5),
	datad => VCC,
	cin => \og|sig_cnt[4]~114\,
	combout => \og|sig_cnt[5]~115_combout\,
	cout => \og|sig_cnt[5]~116\);

-- Location: LCCOMB_X44_Y15_N24
\og|sig_cnt[6]~117\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[6]~117_combout\ = (\og|sig_cnt\(6) & (\og|sig_cnt[5]~116\ $ (GND))) # (!\og|sig_cnt\(6) & (!\og|sig_cnt[5]~116\ & VCC))
-- \og|sig_cnt[6]~118\ = CARRY((\og|sig_cnt\(6) & !\og|sig_cnt[5]~116\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(6),
	datad => VCC,
	cin => \og|sig_cnt[5]~116\,
	combout => \og|sig_cnt[6]~117_combout\,
	cout => \og|sig_cnt[6]~118\);

-- Location: LCCOMB_X47_Y15_N26
\og|state_Do.s2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|state_Do.s2~feeder_combout\ = \og|state_Do.s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|state_Do.s1~q\,
	combout => \og|state_Do.s2~feeder_combout\);

-- Location: LCCOMB_X44_Y15_N26
\og|sig_cnt[7]~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[7]~119_combout\ = (\og|sig_cnt\(7) & (!\og|sig_cnt[6]~118\)) # (!\og|sig_cnt\(7) & ((\og|sig_cnt[6]~118\) # (GND)))
-- \og|sig_cnt[7]~120\ = CARRY((!\og|sig_cnt[6]~118\) # (!\og|sig_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(7),
	datad => VCC,
	cin => \og|sig_cnt[6]~118\,
	combout => \og|sig_cnt[7]~119_combout\,
	cout => \og|sig_cnt[7]~120\);

-- Location: FF_X44_Y15_N27
\og|sig_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[7]~119_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(7));

-- Location: LCCOMB_X44_Y15_N28
\og|sig_cnt[8]~121\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[8]~121_combout\ = (\og|sig_cnt\(8) & (\og|sig_cnt[7]~120\ $ (GND))) # (!\og|sig_cnt\(8) & (!\og|sig_cnt[7]~120\ & VCC))
-- \og|sig_cnt[8]~122\ = CARRY((\og|sig_cnt\(8) & !\og|sig_cnt[7]~120\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(8),
	datad => VCC,
	cin => \og|sig_cnt[7]~120\,
	combout => \og|sig_cnt[8]~121_combout\,
	cout => \og|sig_cnt[8]~122\);

-- Location: FF_X44_Y15_N29
\og|sig_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[8]~121_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(8));

-- Location: LCCOMB_X44_Y15_N30
\og|sig_cnt[9]~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[9]~123_combout\ = (\og|sig_cnt\(9) & (!\og|sig_cnt[8]~122\)) # (!\og|sig_cnt\(9) & ((\og|sig_cnt[8]~122\) # (GND)))
-- \og|sig_cnt[9]~124\ = CARRY((!\og|sig_cnt[8]~122\) # (!\og|sig_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(9),
	datad => VCC,
	cin => \og|sig_cnt[8]~122\,
	combout => \og|sig_cnt[9]~123_combout\,
	cout => \og|sig_cnt[9]~124\);

-- Location: FF_X44_Y15_N31
\og|sig_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[9]~123_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(9));

-- Location: LCCOMB_X44_Y14_N0
\og|sig_cnt[10]~125\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[10]~125_combout\ = (\og|sig_cnt\(10) & (\og|sig_cnt[9]~124\ $ (GND))) # (!\og|sig_cnt\(10) & (!\og|sig_cnt[9]~124\ & VCC))
-- \og|sig_cnt[10]~126\ = CARRY((\og|sig_cnt\(10) & !\og|sig_cnt[9]~124\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(10),
	datad => VCC,
	cin => \og|sig_cnt[9]~124\,
	combout => \og|sig_cnt[10]~125_combout\,
	cout => \og|sig_cnt[10]~126\);

-- Location: FF_X44_Y14_N1
\og|sig_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[10]~125_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(10));

-- Location: LCCOMB_X44_Y14_N2
\og|sig_cnt[11]~127\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[11]~127_combout\ = (\og|sig_cnt\(11) & (!\og|sig_cnt[10]~126\)) # (!\og|sig_cnt\(11) & ((\og|sig_cnt[10]~126\) # (GND)))
-- \og|sig_cnt[11]~128\ = CARRY((!\og|sig_cnt[10]~126\) # (!\og|sig_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(11),
	datad => VCC,
	cin => \og|sig_cnt[10]~126\,
	combout => \og|sig_cnt[11]~127_combout\,
	cout => \og|sig_cnt[11]~128\);

-- Location: FF_X44_Y14_N3
\og|sig_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[11]~127_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(11));

-- Location: LCCOMB_X44_Y14_N4
\og|sig_cnt[12]~129\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[12]~129_combout\ = (\og|sig_cnt\(12) & (\og|sig_cnt[11]~128\ $ (GND))) # (!\og|sig_cnt\(12) & (!\og|sig_cnt[11]~128\ & VCC))
-- \og|sig_cnt[12]~130\ = CARRY((\og|sig_cnt\(12) & !\og|sig_cnt[11]~128\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(12),
	datad => VCC,
	cin => \og|sig_cnt[11]~128\,
	combout => \og|sig_cnt[12]~129_combout\,
	cout => \og|sig_cnt[12]~130\);

-- Location: FF_X44_Y14_N5
\og|sig_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[12]~129_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(12));

-- Location: LCCOMB_X44_Y14_N6
\og|sig_cnt[13]~131\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[13]~131_combout\ = (\og|sig_cnt\(13) & (!\og|sig_cnt[12]~130\)) # (!\og|sig_cnt\(13) & ((\og|sig_cnt[12]~130\) # (GND)))
-- \og|sig_cnt[13]~132\ = CARRY((!\og|sig_cnt[12]~130\) # (!\og|sig_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(13),
	datad => VCC,
	cin => \og|sig_cnt[12]~130\,
	combout => \og|sig_cnt[13]~131_combout\,
	cout => \og|sig_cnt[13]~132\);

-- Location: FF_X44_Y14_N7
\og|sig_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[13]~131_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(13));

-- Location: LCCOMB_X44_Y14_N8
\og|sig_cnt[14]~133\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[14]~133_combout\ = (\og|sig_cnt\(14) & (\og|sig_cnt[13]~132\ $ (GND))) # (!\og|sig_cnt\(14) & (!\og|sig_cnt[13]~132\ & VCC))
-- \og|sig_cnt[14]~134\ = CARRY((\og|sig_cnt\(14) & !\og|sig_cnt[13]~132\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(14),
	datad => VCC,
	cin => \og|sig_cnt[13]~132\,
	combout => \og|sig_cnt[14]~133_combout\,
	cout => \og|sig_cnt[14]~134\);

-- Location: FF_X44_Y14_N9
\og|sig_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[14]~133_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(14));

-- Location: LCCOMB_X44_Y14_N10
\og|sig_cnt[15]~135\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[15]~135_combout\ = (\og|sig_cnt\(15) & (!\og|sig_cnt[14]~134\)) # (!\og|sig_cnt\(15) & ((\og|sig_cnt[14]~134\) # (GND)))
-- \og|sig_cnt[15]~136\ = CARRY((!\og|sig_cnt[14]~134\) # (!\og|sig_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(15),
	datad => VCC,
	cin => \og|sig_cnt[14]~134\,
	combout => \og|sig_cnt[15]~135_combout\,
	cout => \og|sig_cnt[15]~136\);

-- Location: FF_X44_Y14_N11
\og|sig_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[15]~135_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(15));

-- Location: LCCOMB_X44_Y14_N12
\og|sig_cnt[16]~137\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[16]~137_combout\ = (\og|sig_cnt\(16) & (\og|sig_cnt[15]~136\ $ (GND))) # (!\og|sig_cnt\(16) & (!\og|sig_cnt[15]~136\ & VCC))
-- \og|sig_cnt[16]~138\ = CARRY((\og|sig_cnt\(16) & !\og|sig_cnt[15]~136\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(16),
	datad => VCC,
	cin => \og|sig_cnt[15]~136\,
	combout => \og|sig_cnt[16]~137_combout\,
	cout => \og|sig_cnt[16]~138\);

-- Location: FF_X44_Y14_N13
\og|sig_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[16]~137_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(16));

-- Location: LCCOMB_X44_Y14_N14
\og|sig_cnt[17]~139\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[17]~139_combout\ = (\og|sig_cnt\(17) & (!\og|sig_cnt[16]~138\)) # (!\og|sig_cnt\(17) & ((\og|sig_cnt[16]~138\) # (GND)))
-- \og|sig_cnt[17]~140\ = CARRY((!\og|sig_cnt[16]~138\) # (!\og|sig_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(17),
	datad => VCC,
	cin => \og|sig_cnt[16]~138\,
	combout => \og|sig_cnt[17]~139_combout\,
	cout => \og|sig_cnt[17]~140\);

-- Location: FF_X44_Y14_N15
\og|sig_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[17]~139_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(17));

-- Location: LCCOMB_X44_Y14_N16
\og|sig_cnt[18]~141\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[18]~141_combout\ = (\og|sig_cnt\(18) & (\og|sig_cnt[17]~140\ $ (GND))) # (!\og|sig_cnt\(18) & (!\og|sig_cnt[17]~140\ & VCC))
-- \og|sig_cnt[18]~142\ = CARRY((\og|sig_cnt\(18) & !\og|sig_cnt[17]~140\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(18),
	datad => VCC,
	cin => \og|sig_cnt[17]~140\,
	combout => \og|sig_cnt[18]~141_combout\,
	cout => \og|sig_cnt[18]~142\);

-- Location: FF_X44_Y14_N17
\og|sig_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[18]~141_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(18));

-- Location: LCCOMB_X44_Y14_N18
\og|sig_cnt[19]~143\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[19]~143_combout\ = (\og|sig_cnt\(19) & (!\og|sig_cnt[18]~142\)) # (!\og|sig_cnt\(19) & ((\og|sig_cnt[18]~142\) # (GND)))
-- \og|sig_cnt[19]~144\ = CARRY((!\og|sig_cnt[18]~142\) # (!\og|sig_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(19),
	datad => VCC,
	cin => \og|sig_cnt[18]~142\,
	combout => \og|sig_cnt[19]~143_combout\,
	cout => \og|sig_cnt[19]~144\);

-- Location: FF_X44_Y14_N19
\og|sig_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[19]~143_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(19));

-- Location: LCCOMB_X44_Y14_N20
\og|sig_cnt[20]~145\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[20]~145_combout\ = (\og|sig_cnt\(20) & (\og|sig_cnt[19]~144\ $ (GND))) # (!\og|sig_cnt\(20) & (!\og|sig_cnt[19]~144\ & VCC))
-- \og|sig_cnt[20]~146\ = CARRY((\og|sig_cnt\(20) & !\og|sig_cnt[19]~144\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(20),
	datad => VCC,
	cin => \og|sig_cnt[19]~144\,
	combout => \og|sig_cnt[20]~145_combout\,
	cout => \og|sig_cnt[20]~146\);

-- Location: FF_X44_Y14_N21
\og|sig_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[20]~145_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(20));

-- Location: LCCOMB_X44_Y14_N22
\og|sig_cnt[21]~147\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[21]~147_combout\ = (\og|sig_cnt\(21) & (!\og|sig_cnt[20]~146\)) # (!\og|sig_cnt\(21) & ((\og|sig_cnt[20]~146\) # (GND)))
-- \og|sig_cnt[21]~148\ = CARRY((!\og|sig_cnt[20]~146\) # (!\og|sig_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(21),
	datad => VCC,
	cin => \og|sig_cnt[20]~146\,
	combout => \og|sig_cnt[21]~147_combout\,
	cout => \og|sig_cnt[21]~148\);

-- Location: FF_X44_Y14_N23
\og|sig_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[21]~147_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(21));

-- Location: LCCOMB_X44_Y14_N24
\og|sig_cnt[22]~149\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[22]~149_combout\ = (\og|sig_cnt\(22) & (\og|sig_cnt[21]~148\ $ (GND))) # (!\og|sig_cnt\(22) & (!\og|sig_cnt[21]~148\ & VCC))
-- \og|sig_cnt[22]~150\ = CARRY((\og|sig_cnt\(22) & !\og|sig_cnt[21]~148\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(22),
	datad => VCC,
	cin => \og|sig_cnt[21]~148\,
	combout => \og|sig_cnt[22]~149_combout\,
	cout => \og|sig_cnt[22]~150\);

-- Location: FF_X44_Y14_N25
\og|sig_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[22]~149_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(22));

-- Location: LCCOMB_X44_Y14_N26
\og|sig_cnt[23]~151\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[23]~151_combout\ = (\og|sig_cnt\(23) & (!\og|sig_cnt[22]~150\)) # (!\og|sig_cnt\(23) & ((\og|sig_cnt[22]~150\) # (GND)))
-- \og|sig_cnt[23]~152\ = CARRY((!\og|sig_cnt[22]~150\) # (!\og|sig_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(23),
	datad => VCC,
	cin => \og|sig_cnt[22]~150\,
	combout => \og|sig_cnt[23]~151_combout\,
	cout => \og|sig_cnt[23]~152\);

-- Location: FF_X44_Y14_N27
\og|sig_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[23]~151_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(23));

-- Location: LCCOMB_X44_Y14_N28
\og|sig_cnt[24]~153\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[24]~153_combout\ = (\og|sig_cnt\(24) & (\og|sig_cnt[23]~152\ $ (GND))) # (!\og|sig_cnt\(24) & (!\og|sig_cnt[23]~152\ & VCC))
-- \og|sig_cnt[24]~154\ = CARRY((\og|sig_cnt\(24) & !\og|sig_cnt[23]~152\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(24),
	datad => VCC,
	cin => \og|sig_cnt[23]~152\,
	combout => \og|sig_cnt[24]~153_combout\,
	cout => \og|sig_cnt[24]~154\);

-- Location: FF_X44_Y14_N29
\og|sig_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[24]~153_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(24));

-- Location: LCCOMB_X44_Y14_N30
\og|sig_cnt[25]~155\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[25]~155_combout\ = (\og|sig_cnt\(25) & (!\og|sig_cnt[24]~154\)) # (!\og|sig_cnt\(25) & ((\og|sig_cnt[24]~154\) # (GND)))
-- \og|sig_cnt[25]~156\ = CARRY((!\og|sig_cnt[24]~154\) # (!\og|sig_cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(25),
	datad => VCC,
	cin => \og|sig_cnt[24]~154\,
	combout => \og|sig_cnt[25]~155_combout\,
	cout => \og|sig_cnt[25]~156\);

-- Location: FF_X44_Y14_N31
\og|sig_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[25]~155_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(25));

-- Location: LCCOMB_X44_Y13_N0
\og|sig_cnt[26]~157\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[26]~157_combout\ = (\og|sig_cnt\(26) & (\og|sig_cnt[25]~156\ $ (GND))) # (!\og|sig_cnt\(26) & (!\og|sig_cnt[25]~156\ & VCC))
-- \og|sig_cnt[26]~158\ = CARRY((\og|sig_cnt\(26) & !\og|sig_cnt[25]~156\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(26),
	datad => VCC,
	cin => \og|sig_cnt[25]~156\,
	combout => \og|sig_cnt[26]~157_combout\,
	cout => \og|sig_cnt[26]~158\);

-- Location: FF_X44_Y13_N1
\og|sig_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[26]~157_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(26));

-- Location: LCCOMB_X44_Y13_N2
\og|sig_cnt[27]~159\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[27]~159_combout\ = (\og|sig_cnt\(27) & (!\og|sig_cnt[26]~158\)) # (!\og|sig_cnt\(27) & ((\og|sig_cnt[26]~158\) # (GND)))
-- \og|sig_cnt[27]~160\ = CARRY((!\og|sig_cnt[26]~158\) # (!\og|sig_cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(27),
	datad => VCC,
	cin => \og|sig_cnt[26]~158\,
	combout => \og|sig_cnt[27]~159_combout\,
	cout => \og|sig_cnt[27]~160\);

-- Location: FF_X44_Y13_N3
\og|sig_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[27]~159_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(27));

-- Location: LCCOMB_X44_Y13_N4
\og|sig_cnt[28]~161\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[28]~161_combout\ = (\og|sig_cnt\(28) & (\og|sig_cnt[27]~160\ $ (GND))) # (!\og|sig_cnt\(28) & (!\og|sig_cnt[27]~160\ & VCC))
-- \og|sig_cnt[28]~162\ = CARRY((\og|sig_cnt\(28) & !\og|sig_cnt[27]~160\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(28),
	datad => VCC,
	cin => \og|sig_cnt[27]~160\,
	combout => \og|sig_cnt[28]~161_combout\,
	cout => \og|sig_cnt[28]~162\);

-- Location: FF_X44_Y13_N5
\og|sig_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[28]~161_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(28));

-- Location: LCCOMB_X44_Y13_N6
\og|sig_cnt[29]~163\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[29]~163_combout\ = (\og|sig_cnt\(29) & (!\og|sig_cnt[28]~162\)) # (!\og|sig_cnt\(29) & ((\og|sig_cnt[28]~162\) # (GND)))
-- \og|sig_cnt[29]~164\ = CARRY((!\og|sig_cnt[28]~162\) # (!\og|sig_cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(29),
	datad => VCC,
	cin => \og|sig_cnt[28]~162\,
	combout => \og|sig_cnt[29]~163_combout\,
	cout => \og|sig_cnt[29]~164\);

-- Location: FF_X44_Y13_N7
\og|sig_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[29]~163_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(29));

-- Location: LCCOMB_X44_Y13_N8
\og|sig_cnt[30]~165\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[30]~165_combout\ = (\og|sig_cnt\(30) & (\og|sig_cnt[29]~164\ $ (GND))) # (!\og|sig_cnt\(30) & (!\og|sig_cnt[29]~164\ & VCC))
-- \og|sig_cnt[30]~166\ = CARRY((\og|sig_cnt\(30) & !\og|sig_cnt[29]~164\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(30),
	datad => VCC,
	cin => \og|sig_cnt[29]~164\,
	combout => \og|sig_cnt[30]~165_combout\,
	cout => \og|sig_cnt[30]~166\);

-- Location: FF_X44_Y13_N9
\og|sig_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[30]~165_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(30));

-- Location: LCCOMB_X44_Y13_N10
\og|sig_cnt[31]~167\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[31]~167_combout\ = (\og|sig_cnt\(31) & (!\og|sig_cnt[30]~166\)) # (!\og|sig_cnt\(31) & ((\og|sig_cnt[30]~166\) # (GND)))
-- \og|sig_cnt[31]~168\ = CARRY((!\og|sig_cnt[30]~166\) # (!\og|sig_cnt\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(31),
	datad => VCC,
	cin => \og|sig_cnt[30]~166\,
	combout => \og|sig_cnt[31]~167_combout\,
	cout => \og|sig_cnt[31]~168\);

-- Location: FF_X44_Y13_N11
\og|sig_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[31]~167_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(31));

-- Location: LCCOMB_X44_Y13_N12
\og|sig_cnt[32]~169\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[32]~169_combout\ = (\og|sig_cnt\(32) & (\og|sig_cnt[31]~168\ $ (GND))) # (!\og|sig_cnt\(32) & (!\og|sig_cnt[31]~168\ & VCC))
-- \og|sig_cnt[32]~170\ = CARRY((\og|sig_cnt\(32) & !\og|sig_cnt[31]~168\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(32),
	datad => VCC,
	cin => \og|sig_cnt[31]~168\,
	combout => \og|sig_cnt[32]~169_combout\,
	cout => \og|sig_cnt[32]~170\);

-- Location: FF_X44_Y13_N13
\og|sig_cnt[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[32]~169_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(32));

-- Location: LCCOMB_X44_Y13_N14
\og|sig_cnt[33]~171\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[33]~171_combout\ = (\og|sig_cnt\(33) & (!\og|sig_cnt[32]~170\)) # (!\og|sig_cnt\(33) & ((\og|sig_cnt[32]~170\) # (GND)))
-- \og|sig_cnt[33]~172\ = CARRY((!\og|sig_cnt[32]~170\) # (!\og|sig_cnt\(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(33),
	datad => VCC,
	cin => \og|sig_cnt[32]~170\,
	combout => \og|sig_cnt[33]~171_combout\,
	cout => \og|sig_cnt[33]~172\);

-- Location: FF_X44_Y13_N15
\og|sig_cnt[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[33]~171_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(33));

-- Location: LCCOMB_X44_Y13_N16
\og|sig_cnt[34]~173\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[34]~173_combout\ = (\og|sig_cnt\(34) & (\og|sig_cnt[33]~172\ $ (GND))) # (!\og|sig_cnt\(34) & (!\og|sig_cnt[33]~172\ & VCC))
-- \og|sig_cnt[34]~174\ = CARRY((\og|sig_cnt\(34) & !\og|sig_cnt[33]~172\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(34),
	datad => VCC,
	cin => \og|sig_cnt[33]~172\,
	combout => \og|sig_cnt[34]~173_combout\,
	cout => \og|sig_cnt[34]~174\);

-- Location: FF_X44_Y13_N17
\og|sig_cnt[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[34]~173_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(34));

-- Location: LCCOMB_X44_Y13_N18
\og|sig_cnt[35]~175\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[35]~175_combout\ = (\og|sig_cnt\(35) & (!\og|sig_cnt[34]~174\)) # (!\og|sig_cnt\(35) & ((\og|sig_cnt[34]~174\) # (GND)))
-- \og|sig_cnt[35]~176\ = CARRY((!\og|sig_cnt[34]~174\) # (!\og|sig_cnt\(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(35),
	datad => VCC,
	cin => \og|sig_cnt[34]~174\,
	combout => \og|sig_cnt[35]~175_combout\,
	cout => \og|sig_cnt[35]~176\);

-- Location: FF_X44_Y13_N19
\og|sig_cnt[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[35]~175_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(35));

-- Location: LCCOMB_X44_Y13_N20
\og|sig_cnt[36]~177\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[36]~177_combout\ = (\og|sig_cnt\(36) & (\og|sig_cnt[35]~176\ $ (GND))) # (!\og|sig_cnt\(36) & (!\og|sig_cnt[35]~176\ & VCC))
-- \og|sig_cnt[36]~178\ = CARRY((\og|sig_cnt\(36) & !\og|sig_cnt[35]~176\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(36),
	datad => VCC,
	cin => \og|sig_cnt[35]~176\,
	combout => \og|sig_cnt[36]~177_combout\,
	cout => \og|sig_cnt[36]~178\);

-- Location: FF_X44_Y13_N21
\og|sig_cnt[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[36]~177_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(36));

-- Location: LCCOMB_X44_Y13_N22
\og|sig_cnt[37]~179\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[37]~179_combout\ = (\og|sig_cnt\(37) & (!\og|sig_cnt[36]~178\)) # (!\og|sig_cnt\(37) & ((\og|sig_cnt[36]~178\) # (GND)))
-- \og|sig_cnt[37]~180\ = CARRY((!\og|sig_cnt[36]~178\) # (!\og|sig_cnt\(37)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(37),
	datad => VCC,
	cin => \og|sig_cnt[36]~178\,
	combout => \og|sig_cnt[37]~179_combout\,
	cout => \og|sig_cnt[37]~180\);

-- Location: FF_X44_Y13_N23
\og|sig_cnt[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[37]~179_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(37));

-- Location: LCCOMB_X44_Y13_N24
\og|sig_cnt[38]~181\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[38]~181_combout\ = (\og|sig_cnt\(38) & (\og|sig_cnt[37]~180\ $ (GND))) # (!\og|sig_cnt\(38) & (!\og|sig_cnt[37]~180\ & VCC))
-- \og|sig_cnt[38]~182\ = CARRY((\og|sig_cnt\(38) & !\og|sig_cnt[37]~180\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(38),
	datad => VCC,
	cin => \og|sig_cnt[37]~180\,
	combout => \og|sig_cnt[38]~181_combout\,
	cout => \og|sig_cnt[38]~182\);

-- Location: FF_X44_Y13_N25
\og|sig_cnt[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[38]~181_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(38));

-- Location: LCCOMB_X44_Y13_N26
\og|sig_cnt[39]~183\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[39]~183_combout\ = (\og|sig_cnt\(39) & (!\og|sig_cnt[38]~182\)) # (!\og|sig_cnt\(39) & ((\og|sig_cnt[38]~182\) # (GND)))
-- \og|sig_cnt[39]~184\ = CARRY((!\og|sig_cnt[38]~182\) # (!\og|sig_cnt\(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(39),
	datad => VCC,
	cin => \og|sig_cnt[38]~182\,
	combout => \og|sig_cnt[39]~183_combout\,
	cout => \og|sig_cnt[39]~184\);

-- Location: FF_X44_Y13_N27
\og|sig_cnt[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[39]~183_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(39));

-- Location: LCCOMB_X44_Y13_N28
\og|sig_cnt[40]~185\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[40]~185_combout\ = (\og|sig_cnt\(40) & (\og|sig_cnt[39]~184\ $ (GND))) # (!\og|sig_cnt\(40) & (!\og|sig_cnt[39]~184\ & VCC))
-- \og|sig_cnt[40]~186\ = CARRY((\og|sig_cnt\(40) & !\og|sig_cnt[39]~184\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(40),
	datad => VCC,
	cin => \og|sig_cnt[39]~184\,
	combout => \og|sig_cnt[40]~185_combout\,
	cout => \og|sig_cnt[40]~186\);

-- Location: FF_X44_Y13_N29
\og|sig_cnt[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[40]~185_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(40));

-- Location: LCCOMB_X44_Y13_N30
\og|sig_cnt[41]~187\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[41]~187_combout\ = (\og|sig_cnt\(41) & (!\og|sig_cnt[40]~186\)) # (!\og|sig_cnt\(41) & ((\og|sig_cnt[40]~186\) # (GND)))
-- \og|sig_cnt[41]~188\ = CARRY((!\og|sig_cnt[40]~186\) # (!\og|sig_cnt\(41)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(41),
	datad => VCC,
	cin => \og|sig_cnt[40]~186\,
	combout => \og|sig_cnt[41]~187_combout\,
	cout => \og|sig_cnt[41]~188\);

-- Location: FF_X44_Y13_N31
\og|sig_cnt[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[41]~187_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(41));

-- Location: LCCOMB_X44_Y12_N0
\og|sig_cnt[42]~189\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[42]~189_combout\ = (\og|sig_cnt\(42) & (\og|sig_cnt[41]~188\ $ (GND))) # (!\og|sig_cnt\(42) & (!\og|sig_cnt[41]~188\ & VCC))
-- \og|sig_cnt[42]~190\ = CARRY((\og|sig_cnt\(42) & !\og|sig_cnt[41]~188\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(42),
	datad => VCC,
	cin => \og|sig_cnt[41]~188\,
	combout => \og|sig_cnt[42]~189_combout\,
	cout => \og|sig_cnt[42]~190\);

-- Location: FF_X44_Y12_N1
\og|sig_cnt[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[42]~189_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(42));

-- Location: LCCOMB_X44_Y12_N2
\og|sig_cnt[43]~191\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[43]~191_combout\ = (\og|sig_cnt\(43) & (!\og|sig_cnt[42]~190\)) # (!\og|sig_cnt\(43) & ((\og|sig_cnt[42]~190\) # (GND)))
-- \og|sig_cnt[43]~192\ = CARRY((!\og|sig_cnt[42]~190\) # (!\og|sig_cnt\(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(43),
	datad => VCC,
	cin => \og|sig_cnt[42]~190\,
	combout => \og|sig_cnt[43]~191_combout\,
	cout => \og|sig_cnt[43]~192\);

-- Location: FF_X44_Y12_N3
\og|sig_cnt[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[43]~191_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(43));

-- Location: LCCOMB_X44_Y12_N4
\og|sig_cnt[44]~193\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[44]~193_combout\ = (\og|sig_cnt\(44) & (\og|sig_cnt[43]~192\ $ (GND))) # (!\og|sig_cnt\(44) & (!\og|sig_cnt[43]~192\ & VCC))
-- \og|sig_cnt[44]~194\ = CARRY((\og|sig_cnt\(44) & !\og|sig_cnt[43]~192\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(44),
	datad => VCC,
	cin => \og|sig_cnt[43]~192\,
	combout => \og|sig_cnt[44]~193_combout\,
	cout => \og|sig_cnt[44]~194\);

-- Location: FF_X44_Y12_N5
\og|sig_cnt[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[44]~193_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(44));

-- Location: LCCOMB_X44_Y12_N6
\og|sig_cnt[45]~195\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[45]~195_combout\ = (\og|sig_cnt\(45) & (!\og|sig_cnt[44]~194\)) # (!\og|sig_cnt\(45) & ((\og|sig_cnt[44]~194\) # (GND)))
-- \og|sig_cnt[45]~196\ = CARRY((!\og|sig_cnt[44]~194\) # (!\og|sig_cnt\(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(45),
	datad => VCC,
	cin => \og|sig_cnt[44]~194\,
	combout => \og|sig_cnt[45]~195_combout\,
	cout => \og|sig_cnt[45]~196\);

-- Location: FF_X44_Y12_N7
\og|sig_cnt[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[45]~195_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(45));

-- Location: LCCOMB_X44_Y12_N8
\og|sig_cnt[46]~197\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[46]~197_combout\ = (\og|sig_cnt\(46) & (\og|sig_cnt[45]~196\ $ (GND))) # (!\og|sig_cnt\(46) & (!\og|sig_cnt[45]~196\ & VCC))
-- \og|sig_cnt[46]~198\ = CARRY((\og|sig_cnt\(46) & !\og|sig_cnt[45]~196\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(46),
	datad => VCC,
	cin => \og|sig_cnt[45]~196\,
	combout => \og|sig_cnt[46]~197_combout\,
	cout => \og|sig_cnt[46]~198\);

-- Location: FF_X44_Y12_N9
\og|sig_cnt[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[46]~197_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(46));

-- Location: LCCOMB_X44_Y12_N10
\og|sig_cnt[47]~199\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[47]~199_combout\ = (\og|sig_cnt\(47) & (!\og|sig_cnt[46]~198\)) # (!\og|sig_cnt\(47) & ((\og|sig_cnt[46]~198\) # (GND)))
-- \og|sig_cnt[47]~200\ = CARRY((!\og|sig_cnt[46]~198\) # (!\og|sig_cnt\(47)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(47),
	datad => VCC,
	cin => \og|sig_cnt[46]~198\,
	combout => \og|sig_cnt[47]~199_combout\,
	cout => \og|sig_cnt[47]~200\);

-- Location: FF_X44_Y12_N11
\og|sig_cnt[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[47]~199_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(47));

-- Location: LCCOMB_X44_Y12_N12
\og|sig_cnt[48]~201\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[48]~201_combout\ = (\og|sig_cnt\(48) & (\og|sig_cnt[47]~200\ $ (GND))) # (!\og|sig_cnt\(48) & (!\og|sig_cnt[47]~200\ & VCC))
-- \og|sig_cnt[48]~202\ = CARRY((\og|sig_cnt\(48) & !\og|sig_cnt[47]~200\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(48),
	datad => VCC,
	cin => \og|sig_cnt[47]~200\,
	combout => \og|sig_cnt[48]~201_combout\,
	cout => \og|sig_cnt[48]~202\);

-- Location: FF_X44_Y12_N13
\og|sig_cnt[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[48]~201_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(48));

-- Location: LCCOMB_X44_Y12_N14
\og|sig_cnt[49]~203\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[49]~203_combout\ = (\og|sig_cnt\(49) & (!\og|sig_cnt[48]~202\)) # (!\og|sig_cnt\(49) & ((\og|sig_cnt[48]~202\) # (GND)))
-- \og|sig_cnt[49]~204\ = CARRY((!\og|sig_cnt[48]~202\) # (!\og|sig_cnt\(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(49),
	datad => VCC,
	cin => \og|sig_cnt[48]~202\,
	combout => \og|sig_cnt[49]~203_combout\,
	cout => \og|sig_cnt[49]~204\);

-- Location: FF_X44_Y12_N15
\og|sig_cnt[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[49]~203_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(49));

-- Location: LCCOMB_X44_Y12_N16
\og|sig_cnt[50]~205\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[50]~205_combout\ = (\og|sig_cnt\(50) & (\og|sig_cnt[49]~204\ $ (GND))) # (!\og|sig_cnt\(50) & (!\og|sig_cnt[49]~204\ & VCC))
-- \og|sig_cnt[50]~206\ = CARRY((\og|sig_cnt\(50) & !\og|sig_cnt[49]~204\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(50),
	datad => VCC,
	cin => \og|sig_cnt[49]~204\,
	combout => \og|sig_cnt[50]~205_combout\,
	cout => \og|sig_cnt[50]~206\);

-- Location: FF_X44_Y12_N17
\og|sig_cnt[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[50]~205_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(50));

-- Location: LCCOMB_X44_Y12_N18
\og|sig_cnt[51]~207\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[51]~207_combout\ = (\og|sig_cnt\(51) & (!\og|sig_cnt[50]~206\)) # (!\og|sig_cnt\(51) & ((\og|sig_cnt[50]~206\) # (GND)))
-- \og|sig_cnt[51]~208\ = CARRY((!\og|sig_cnt[50]~206\) # (!\og|sig_cnt\(51)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(51),
	datad => VCC,
	cin => \og|sig_cnt[50]~206\,
	combout => \og|sig_cnt[51]~207_combout\,
	cout => \og|sig_cnt[51]~208\);

-- Location: FF_X44_Y12_N19
\og|sig_cnt[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[51]~207_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(51));

-- Location: LCCOMB_X44_Y12_N20
\og|sig_cnt[52]~209\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[52]~209_combout\ = (\og|sig_cnt\(52) & (\og|sig_cnt[51]~208\ $ (GND))) # (!\og|sig_cnt\(52) & (!\og|sig_cnt[51]~208\ & VCC))
-- \og|sig_cnt[52]~210\ = CARRY((\og|sig_cnt\(52) & !\og|sig_cnt[51]~208\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(52),
	datad => VCC,
	cin => \og|sig_cnt[51]~208\,
	combout => \og|sig_cnt[52]~209_combout\,
	cout => \og|sig_cnt[52]~210\);

-- Location: FF_X44_Y12_N21
\og|sig_cnt[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[52]~209_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(52));

-- Location: LCCOMB_X44_Y12_N22
\og|sig_cnt[53]~211\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[53]~211_combout\ = (\og|sig_cnt\(53) & (!\og|sig_cnt[52]~210\)) # (!\og|sig_cnt\(53) & ((\og|sig_cnt[52]~210\) # (GND)))
-- \og|sig_cnt[53]~212\ = CARRY((!\og|sig_cnt[52]~210\) # (!\og|sig_cnt\(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(53),
	datad => VCC,
	cin => \og|sig_cnt[52]~210\,
	combout => \og|sig_cnt[53]~211_combout\,
	cout => \og|sig_cnt[53]~212\);

-- Location: FF_X44_Y12_N23
\og|sig_cnt[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[53]~211_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(53));

-- Location: LCCOMB_X44_Y12_N24
\og|sig_cnt[54]~213\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[54]~213_combout\ = (\og|sig_cnt\(54) & (\og|sig_cnt[53]~212\ $ (GND))) # (!\og|sig_cnt\(54) & (!\og|sig_cnt[53]~212\ & VCC))
-- \og|sig_cnt[54]~214\ = CARRY((\og|sig_cnt\(54) & !\og|sig_cnt[53]~212\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(54),
	datad => VCC,
	cin => \og|sig_cnt[53]~212\,
	combout => \og|sig_cnt[54]~213_combout\,
	cout => \og|sig_cnt[54]~214\);

-- Location: FF_X44_Y12_N25
\og|sig_cnt[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[54]~213_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(54));

-- Location: LCCOMB_X44_Y12_N26
\og|sig_cnt[55]~215\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[55]~215_combout\ = (\og|sig_cnt\(55) & (!\og|sig_cnt[54]~214\)) # (!\og|sig_cnt\(55) & ((\og|sig_cnt[54]~214\) # (GND)))
-- \og|sig_cnt[55]~216\ = CARRY((!\og|sig_cnt[54]~214\) # (!\og|sig_cnt\(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(55),
	datad => VCC,
	cin => \og|sig_cnt[54]~214\,
	combout => \og|sig_cnt[55]~215_combout\,
	cout => \og|sig_cnt[55]~216\);

-- Location: FF_X44_Y12_N27
\og|sig_cnt[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[55]~215_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(55));

-- Location: LCCOMB_X44_Y12_N28
\og|sig_cnt[56]~217\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[56]~217_combout\ = (\og|sig_cnt\(56) & (\og|sig_cnt[55]~216\ $ (GND))) # (!\og|sig_cnt\(56) & (!\og|sig_cnt[55]~216\ & VCC))
-- \og|sig_cnt[56]~218\ = CARRY((\og|sig_cnt\(56) & !\og|sig_cnt[55]~216\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(56),
	datad => VCC,
	cin => \og|sig_cnt[55]~216\,
	combout => \og|sig_cnt[56]~217_combout\,
	cout => \og|sig_cnt[56]~218\);

-- Location: FF_X44_Y12_N29
\og|sig_cnt[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[56]~217_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(56));

-- Location: LCCOMB_X44_Y12_N30
\og|sig_cnt[57]~219\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[57]~219_combout\ = (\og|sig_cnt\(57) & (!\og|sig_cnt[56]~218\)) # (!\og|sig_cnt\(57) & ((\og|sig_cnt[56]~218\) # (GND)))
-- \og|sig_cnt[57]~220\ = CARRY((!\og|sig_cnt[56]~218\) # (!\og|sig_cnt\(57)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(57),
	datad => VCC,
	cin => \og|sig_cnt[56]~218\,
	combout => \og|sig_cnt[57]~219_combout\,
	cout => \og|sig_cnt[57]~220\);

-- Location: FF_X44_Y12_N31
\og|sig_cnt[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[57]~219_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(57));

-- Location: LCCOMB_X44_Y11_N0
\og|sig_cnt[58]~221\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[58]~221_combout\ = (\og|sig_cnt\(58) & (\og|sig_cnt[57]~220\ $ (GND))) # (!\og|sig_cnt\(58) & (!\og|sig_cnt[57]~220\ & VCC))
-- \og|sig_cnt[58]~222\ = CARRY((\og|sig_cnt\(58) & !\og|sig_cnt[57]~220\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(58),
	datad => VCC,
	cin => \og|sig_cnt[57]~220\,
	combout => \og|sig_cnt[58]~221_combout\,
	cout => \og|sig_cnt[58]~222\);

-- Location: FF_X44_Y11_N1
\og|sig_cnt[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[58]~221_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(58));

-- Location: LCCOMB_X44_Y11_N2
\og|sig_cnt[59]~223\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[59]~223_combout\ = (\og|sig_cnt\(59) & (!\og|sig_cnt[58]~222\)) # (!\og|sig_cnt\(59) & ((\og|sig_cnt[58]~222\) # (GND)))
-- \og|sig_cnt[59]~224\ = CARRY((!\og|sig_cnt[58]~222\) # (!\og|sig_cnt\(59)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(59),
	datad => VCC,
	cin => \og|sig_cnt[58]~222\,
	combout => \og|sig_cnt[59]~223_combout\,
	cout => \og|sig_cnt[59]~224\);

-- Location: FF_X44_Y11_N3
\og|sig_cnt[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[59]~223_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(59));

-- Location: LCCOMB_X44_Y11_N4
\og|sig_cnt[60]~225\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[60]~225_combout\ = (\og|sig_cnt\(60) & (\og|sig_cnt[59]~224\ $ (GND))) # (!\og|sig_cnt\(60) & (!\og|sig_cnt[59]~224\ & VCC))
-- \og|sig_cnt[60]~226\ = CARRY((\og|sig_cnt\(60) & !\og|sig_cnt[59]~224\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(60),
	datad => VCC,
	cin => \og|sig_cnt[59]~224\,
	combout => \og|sig_cnt[60]~225_combout\,
	cout => \og|sig_cnt[60]~226\);

-- Location: FF_X44_Y11_N5
\og|sig_cnt[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[60]~225_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(60));

-- Location: LCCOMB_X44_Y11_N6
\og|sig_cnt[61]~227\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[61]~227_combout\ = (\og|sig_cnt\(61) & (!\og|sig_cnt[60]~226\)) # (!\og|sig_cnt\(61) & ((\og|sig_cnt[60]~226\) # (GND)))
-- \og|sig_cnt[61]~228\ = CARRY((!\og|sig_cnt[60]~226\) # (!\og|sig_cnt\(61)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(61),
	datad => VCC,
	cin => \og|sig_cnt[60]~226\,
	combout => \og|sig_cnt[61]~227_combout\,
	cout => \og|sig_cnt[61]~228\);

-- Location: FF_X44_Y11_N7
\og|sig_cnt[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[61]~227_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(61));

-- Location: LCCOMB_X44_Y11_N8
\og|sig_cnt[62]~229\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[62]~229_combout\ = (\og|sig_cnt\(62) & (\og|sig_cnt[61]~228\ $ (GND))) # (!\og|sig_cnt\(62) & (!\og|sig_cnt[61]~228\ & VCC))
-- \og|sig_cnt[62]~230\ = CARRY((\og|sig_cnt\(62) & !\og|sig_cnt[61]~228\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(62),
	datad => VCC,
	cin => \og|sig_cnt[61]~228\,
	combout => \og|sig_cnt[62]~229_combout\,
	cout => \og|sig_cnt[62]~230\);

-- Location: FF_X44_Y11_N9
\og|sig_cnt[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[62]~229_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(62));

-- Location: LCCOMB_X44_Y11_N10
\og|sig_cnt[63]~231\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[63]~231_combout\ = (\og|sig_cnt\(63) & (!\og|sig_cnt[62]~230\)) # (!\og|sig_cnt\(63) & ((\og|sig_cnt[62]~230\) # (GND)))
-- \og|sig_cnt[63]~232\ = CARRY((!\og|sig_cnt[62]~230\) # (!\og|sig_cnt\(63)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(63),
	datad => VCC,
	cin => \og|sig_cnt[62]~230\,
	combout => \og|sig_cnt[63]~231_combout\,
	cout => \og|sig_cnt[63]~232\);

-- Location: FF_X44_Y11_N11
\og|sig_cnt[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[63]~231_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(63));

-- Location: LCCOMB_X44_Y11_N12
\og|sig_cnt[64]~233\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[64]~233_combout\ = (\og|sig_cnt\(64) & (\og|sig_cnt[63]~232\ $ (GND))) # (!\og|sig_cnt\(64) & (!\og|sig_cnt[63]~232\ & VCC))
-- \og|sig_cnt[64]~234\ = CARRY((\og|sig_cnt\(64) & !\og|sig_cnt[63]~232\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(64),
	datad => VCC,
	cin => \og|sig_cnt[63]~232\,
	combout => \og|sig_cnt[64]~233_combout\,
	cout => \og|sig_cnt[64]~234\);

-- Location: FF_X44_Y11_N13
\og|sig_cnt[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[64]~233_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(64));

-- Location: LCCOMB_X44_Y11_N14
\og|sig_cnt[65]~235\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[65]~235_combout\ = (\og|sig_cnt\(65) & (!\og|sig_cnt[64]~234\)) # (!\og|sig_cnt\(65) & ((\og|sig_cnt[64]~234\) # (GND)))
-- \og|sig_cnt[65]~236\ = CARRY((!\og|sig_cnt[64]~234\) # (!\og|sig_cnt\(65)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(65),
	datad => VCC,
	cin => \og|sig_cnt[64]~234\,
	combout => \og|sig_cnt[65]~235_combout\,
	cout => \og|sig_cnt[65]~236\);

-- Location: FF_X44_Y11_N15
\og|sig_cnt[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[65]~235_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(65));

-- Location: LCCOMB_X44_Y11_N16
\og|sig_cnt[66]~237\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[66]~237_combout\ = (\og|sig_cnt\(66) & (\og|sig_cnt[65]~236\ $ (GND))) # (!\og|sig_cnt\(66) & (!\og|sig_cnt[65]~236\ & VCC))
-- \og|sig_cnt[66]~238\ = CARRY((\og|sig_cnt\(66) & !\og|sig_cnt[65]~236\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(66),
	datad => VCC,
	cin => \og|sig_cnt[65]~236\,
	combout => \og|sig_cnt[66]~237_combout\,
	cout => \og|sig_cnt[66]~238\);

-- Location: FF_X44_Y11_N17
\og|sig_cnt[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[66]~237_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(66));

-- Location: LCCOMB_X44_Y11_N18
\og|sig_cnt[67]~239\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[67]~239_combout\ = (\og|sig_cnt\(67) & (!\og|sig_cnt[66]~238\)) # (!\og|sig_cnt\(67) & ((\og|sig_cnt[66]~238\) # (GND)))
-- \og|sig_cnt[67]~240\ = CARRY((!\og|sig_cnt[66]~238\) # (!\og|sig_cnt\(67)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(67),
	datad => VCC,
	cin => \og|sig_cnt[66]~238\,
	combout => \og|sig_cnt[67]~239_combout\,
	cout => \og|sig_cnt[67]~240\);

-- Location: FF_X44_Y11_N19
\og|sig_cnt[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[67]~239_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(67));

-- Location: LCCOMB_X44_Y11_N20
\og|sig_cnt[68]~241\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[68]~241_combout\ = (\og|sig_cnt\(68) & (\og|sig_cnt[67]~240\ $ (GND))) # (!\og|sig_cnt\(68) & (!\og|sig_cnt[67]~240\ & VCC))
-- \og|sig_cnt[68]~242\ = CARRY((\og|sig_cnt\(68) & !\og|sig_cnt[67]~240\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(68),
	datad => VCC,
	cin => \og|sig_cnt[67]~240\,
	combout => \og|sig_cnt[68]~241_combout\,
	cout => \og|sig_cnt[68]~242\);

-- Location: FF_X44_Y11_N21
\og|sig_cnt[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[68]~241_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(68));

-- Location: LCCOMB_X44_Y11_N22
\og|sig_cnt[69]~243\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[69]~243_combout\ = (\og|sig_cnt\(69) & (!\og|sig_cnt[68]~242\)) # (!\og|sig_cnt\(69) & ((\og|sig_cnt[68]~242\) # (GND)))
-- \og|sig_cnt[69]~244\ = CARRY((!\og|sig_cnt[68]~242\) # (!\og|sig_cnt\(69)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(69),
	datad => VCC,
	cin => \og|sig_cnt[68]~242\,
	combout => \og|sig_cnt[69]~243_combout\,
	cout => \og|sig_cnt[69]~244\);

-- Location: FF_X44_Y11_N23
\og|sig_cnt[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[69]~243_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(69));

-- Location: LCCOMB_X44_Y11_N24
\og|sig_cnt[70]~245\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[70]~245_combout\ = (\og|sig_cnt\(70) & (\og|sig_cnt[69]~244\ $ (GND))) # (!\og|sig_cnt\(70) & (!\og|sig_cnt[69]~244\ & VCC))
-- \og|sig_cnt[70]~246\ = CARRY((\og|sig_cnt\(70) & !\og|sig_cnt[69]~244\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(70),
	datad => VCC,
	cin => \og|sig_cnt[69]~244\,
	combout => \og|sig_cnt[70]~245_combout\,
	cout => \og|sig_cnt[70]~246\);

-- Location: FF_X44_Y11_N25
\og|sig_cnt[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[70]~245_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(70));

-- Location: LCCOMB_X44_Y11_N26
\og|sig_cnt[71]~247\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[71]~247_combout\ = (\og|sig_cnt\(71) & (!\og|sig_cnt[70]~246\)) # (!\og|sig_cnt\(71) & ((\og|sig_cnt[70]~246\) # (GND)))
-- \og|sig_cnt[71]~248\ = CARRY((!\og|sig_cnt[70]~246\) # (!\og|sig_cnt\(71)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(71),
	datad => VCC,
	cin => \og|sig_cnt[70]~246\,
	combout => \og|sig_cnt[71]~247_combout\,
	cout => \og|sig_cnt[71]~248\);

-- Location: FF_X44_Y11_N27
\og|sig_cnt[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[71]~247_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(71));

-- Location: LCCOMB_X44_Y11_N28
\og|sig_cnt[72]~249\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[72]~249_combout\ = (\og|sig_cnt\(72) & (\og|sig_cnt[71]~248\ $ (GND))) # (!\og|sig_cnt\(72) & (!\og|sig_cnt[71]~248\ & VCC))
-- \og|sig_cnt[72]~250\ = CARRY((\og|sig_cnt\(72) & !\og|sig_cnt[71]~248\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(72),
	datad => VCC,
	cin => \og|sig_cnt[71]~248\,
	combout => \og|sig_cnt[72]~249_combout\,
	cout => \og|sig_cnt[72]~250\);

-- Location: FF_X44_Y11_N29
\og|sig_cnt[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[72]~249_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(72));

-- Location: LCCOMB_X44_Y11_N30
\og|sig_cnt[73]~251\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[73]~251_combout\ = (\og|sig_cnt\(73) & (!\og|sig_cnt[72]~250\)) # (!\og|sig_cnt\(73) & ((\og|sig_cnt[72]~250\) # (GND)))
-- \og|sig_cnt[73]~252\ = CARRY((!\og|sig_cnt[72]~250\) # (!\og|sig_cnt\(73)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(73),
	datad => VCC,
	cin => \og|sig_cnt[72]~250\,
	combout => \og|sig_cnt[73]~251_combout\,
	cout => \og|sig_cnt[73]~252\);

-- Location: FF_X44_Y11_N31
\og|sig_cnt[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[73]~251_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(73));

-- Location: LCCOMB_X44_Y10_N0
\og|sig_cnt[74]~253\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[74]~253_combout\ = (\og|sig_cnt\(74) & (\og|sig_cnt[73]~252\ $ (GND))) # (!\og|sig_cnt\(74) & (!\og|sig_cnt[73]~252\ & VCC))
-- \og|sig_cnt[74]~254\ = CARRY((\og|sig_cnt\(74) & !\og|sig_cnt[73]~252\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(74),
	datad => VCC,
	cin => \og|sig_cnt[73]~252\,
	combout => \og|sig_cnt[74]~253_combout\,
	cout => \og|sig_cnt[74]~254\);

-- Location: FF_X44_Y10_N1
\og|sig_cnt[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[74]~253_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(74));

-- Location: LCCOMB_X44_Y10_N2
\og|sig_cnt[75]~255\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[75]~255_combout\ = (\og|sig_cnt\(75) & (!\og|sig_cnt[74]~254\)) # (!\og|sig_cnt\(75) & ((\og|sig_cnt[74]~254\) # (GND)))
-- \og|sig_cnt[75]~256\ = CARRY((!\og|sig_cnt[74]~254\) # (!\og|sig_cnt\(75)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(75),
	datad => VCC,
	cin => \og|sig_cnt[74]~254\,
	combout => \og|sig_cnt[75]~255_combout\,
	cout => \og|sig_cnt[75]~256\);

-- Location: FF_X44_Y10_N3
\og|sig_cnt[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[75]~255_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(75));

-- Location: LCCOMB_X44_Y10_N4
\og|sig_cnt[76]~257\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[76]~257_combout\ = (\og|sig_cnt\(76) & (\og|sig_cnt[75]~256\ $ (GND))) # (!\og|sig_cnt\(76) & (!\og|sig_cnt[75]~256\ & VCC))
-- \og|sig_cnt[76]~258\ = CARRY((\og|sig_cnt\(76) & !\og|sig_cnt[75]~256\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(76),
	datad => VCC,
	cin => \og|sig_cnt[75]~256\,
	combout => \og|sig_cnt[76]~257_combout\,
	cout => \og|sig_cnt[76]~258\);

-- Location: FF_X44_Y10_N5
\og|sig_cnt[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[76]~257_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(76));

-- Location: LCCOMB_X44_Y10_N6
\og|sig_cnt[77]~259\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[77]~259_combout\ = (\og|sig_cnt\(77) & (!\og|sig_cnt[76]~258\)) # (!\og|sig_cnt\(77) & ((\og|sig_cnt[76]~258\) # (GND)))
-- \og|sig_cnt[77]~260\ = CARRY((!\og|sig_cnt[76]~258\) # (!\og|sig_cnt\(77)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(77),
	datad => VCC,
	cin => \og|sig_cnt[76]~258\,
	combout => \og|sig_cnt[77]~259_combout\,
	cout => \og|sig_cnt[77]~260\);

-- Location: FF_X44_Y10_N7
\og|sig_cnt[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[77]~259_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(77));

-- Location: LCCOMB_X44_Y10_N8
\og|sig_cnt[78]~261\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[78]~261_combout\ = (\og|sig_cnt\(78) & (\og|sig_cnt[77]~260\ $ (GND))) # (!\og|sig_cnt\(78) & (!\og|sig_cnt[77]~260\ & VCC))
-- \og|sig_cnt[78]~262\ = CARRY((\og|sig_cnt\(78) & !\og|sig_cnt[77]~260\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(78),
	datad => VCC,
	cin => \og|sig_cnt[77]~260\,
	combout => \og|sig_cnt[78]~261_combout\,
	cout => \og|sig_cnt[78]~262\);

-- Location: FF_X44_Y10_N9
\og|sig_cnt[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[78]~261_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(78));

-- Location: LCCOMB_X44_Y10_N10
\og|sig_cnt[79]~263\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[79]~263_combout\ = (\og|sig_cnt\(79) & (!\og|sig_cnt[78]~262\)) # (!\og|sig_cnt\(79) & ((\og|sig_cnt[78]~262\) # (GND)))
-- \og|sig_cnt[79]~264\ = CARRY((!\og|sig_cnt[78]~262\) # (!\og|sig_cnt\(79)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(79),
	datad => VCC,
	cin => \og|sig_cnt[78]~262\,
	combout => \og|sig_cnt[79]~263_combout\,
	cout => \og|sig_cnt[79]~264\);

-- Location: FF_X44_Y10_N11
\og|sig_cnt[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[79]~263_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(79));

-- Location: LCCOMB_X44_Y10_N12
\og|sig_cnt[80]~265\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[80]~265_combout\ = (\og|sig_cnt\(80) & (\og|sig_cnt[79]~264\ $ (GND))) # (!\og|sig_cnt\(80) & (!\og|sig_cnt[79]~264\ & VCC))
-- \og|sig_cnt[80]~266\ = CARRY((\og|sig_cnt\(80) & !\og|sig_cnt[79]~264\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(80),
	datad => VCC,
	cin => \og|sig_cnt[79]~264\,
	combout => \og|sig_cnt[80]~265_combout\,
	cout => \og|sig_cnt[80]~266\);

-- Location: FF_X44_Y10_N13
\og|sig_cnt[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[80]~265_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(80));

-- Location: LCCOMB_X43_Y10_N12
\og|Equal1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~23_combout\ = (!\og|sig_cnt\(80) & (!\og|sig_cnt\(79) & (!\og|sig_cnt\(78) & !\og|sig_cnt\(77))))

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
	combout => \og|Equal1~23_combout\);

-- Location: LCCOMB_X43_Y10_N24
\og|Equal1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~21_combout\ = (!\og|sig_cnt\(72) & (!\og|sig_cnt\(71) & (!\og|sig_cnt\(69) & !\og|sig_cnt\(70))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(72),
	datab => \og|sig_cnt\(71),
	datac => \og|sig_cnt\(69),
	datad => \og|sig_cnt\(70),
	combout => \og|Equal1~21_combout\);

-- Location: LCCOMB_X43_Y10_N26
\og|Equal1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~22_combout\ = (!\og|sig_cnt\(75) & (!\og|sig_cnt\(76) & (!\og|sig_cnt\(73) & !\og|sig_cnt\(74))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(75),
	datab => \og|sig_cnt\(76),
	datac => \og|sig_cnt\(73),
	datad => \og|sig_cnt\(74),
	combout => \og|Equal1~22_combout\);

-- Location: LCCOMB_X44_Y10_N14
\og|sig_cnt[81]~267\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[81]~267_combout\ = (\og|sig_cnt\(81) & (!\og|sig_cnt[80]~266\)) # (!\og|sig_cnt\(81) & ((\og|sig_cnt[80]~266\) # (GND)))
-- \og|sig_cnt[81]~268\ = CARRY((!\og|sig_cnt[80]~266\) # (!\og|sig_cnt\(81)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(81),
	datad => VCC,
	cin => \og|sig_cnt[80]~266\,
	combout => \og|sig_cnt[81]~267_combout\,
	cout => \og|sig_cnt[81]~268\);

-- Location: FF_X44_Y10_N15
\og|sig_cnt[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[81]~267_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(81));

-- Location: LCCOMB_X44_Y10_N16
\og|sig_cnt[82]~269\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[82]~269_combout\ = (\og|sig_cnt\(82) & (\og|sig_cnt[81]~268\ $ (GND))) # (!\og|sig_cnt\(82) & (!\og|sig_cnt[81]~268\ & VCC))
-- \og|sig_cnt[82]~270\ = CARRY((\og|sig_cnt\(82) & !\og|sig_cnt[81]~268\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(82),
	datad => VCC,
	cin => \og|sig_cnt[81]~268\,
	combout => \og|sig_cnt[82]~269_combout\,
	cout => \og|sig_cnt[82]~270\);

-- Location: FF_X44_Y10_N17
\og|sig_cnt[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[82]~269_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(82));

-- Location: LCCOMB_X44_Y10_N18
\og|sig_cnt[83]~271\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[83]~271_combout\ = (\og|sig_cnt\(83) & (!\og|sig_cnt[82]~270\)) # (!\og|sig_cnt\(83) & ((\og|sig_cnt[82]~270\) # (GND)))
-- \og|sig_cnt[83]~272\ = CARRY((!\og|sig_cnt[82]~270\) # (!\og|sig_cnt\(83)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(83),
	datad => VCC,
	cin => \og|sig_cnt[82]~270\,
	combout => \og|sig_cnt[83]~271_combout\,
	cout => \og|sig_cnt[83]~272\);

-- Location: FF_X44_Y10_N19
\og|sig_cnt[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[83]~271_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(83));

-- Location: LCCOMB_X44_Y10_N20
\og|sig_cnt[84]~273\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[84]~273_combout\ = (\og|sig_cnt\(84) & (\og|sig_cnt[83]~272\ $ (GND))) # (!\og|sig_cnt\(84) & (!\og|sig_cnt[83]~272\ & VCC))
-- \og|sig_cnt[84]~274\ = CARRY((\og|sig_cnt\(84) & !\og|sig_cnt[83]~272\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(84),
	datad => VCC,
	cin => \og|sig_cnt[83]~272\,
	combout => \og|sig_cnt[84]~273_combout\,
	cout => \og|sig_cnt[84]~274\);

-- Location: FF_X44_Y10_N21
\og|sig_cnt[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[84]~273_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(84));

-- Location: LCCOMB_X43_Y10_N6
\og|Equal1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~24_combout\ = (!\og|sig_cnt\(84) & (!\og|sig_cnt\(83) & (!\og|sig_cnt\(81) & !\og|sig_cnt\(82))))

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
	combout => \og|Equal1~24_combout\);

-- Location: LCCOMB_X43_Y10_N0
\og|Equal1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~25_combout\ = (\og|Equal1~23_combout\ & (\og|Equal1~21_combout\ & (\og|Equal1~22_combout\ & \og|Equal1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|Equal1~23_combout\,
	datab => \og|Equal1~21_combout\,
	datac => \og|Equal1~22_combout\,
	datad => \og|Equal1~24_combout\,
	combout => \og|Equal1~25_combout\);

-- Location: LCCOMB_X44_Y10_N22
\og|sig_cnt[85]~275\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[85]~275_combout\ = (\og|sig_cnt\(85) & (!\og|sig_cnt[84]~274\)) # (!\og|sig_cnt\(85) & ((\og|sig_cnt[84]~274\) # (GND)))
-- \og|sig_cnt[85]~276\ = CARRY((!\og|sig_cnt[84]~274\) # (!\og|sig_cnt\(85)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(85),
	datad => VCC,
	cin => \og|sig_cnt[84]~274\,
	combout => \og|sig_cnt[85]~275_combout\,
	cout => \og|sig_cnt[85]~276\);

-- Location: FF_X44_Y10_N23
\og|sig_cnt[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[85]~275_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(85));

-- Location: LCCOMB_X44_Y10_N24
\og|sig_cnt[86]~277\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[86]~277_combout\ = (\og|sig_cnt\(86) & (\og|sig_cnt[85]~276\ $ (GND))) # (!\og|sig_cnt\(86) & (!\og|sig_cnt[85]~276\ & VCC))
-- \og|sig_cnt[86]~278\ = CARRY((\og|sig_cnt\(86) & !\og|sig_cnt[85]~276\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(86),
	datad => VCC,
	cin => \og|sig_cnt[85]~276\,
	combout => \og|sig_cnt[86]~277_combout\,
	cout => \og|sig_cnt[86]~278\);

-- Location: FF_X44_Y10_N25
\og|sig_cnt[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[86]~277_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(86));

-- Location: LCCOMB_X44_Y10_N26
\og|sig_cnt[87]~279\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[87]~279_combout\ = (\og|sig_cnt\(87) & (!\og|sig_cnt[86]~278\)) # (!\og|sig_cnt\(87) & ((\og|sig_cnt[86]~278\) # (GND)))
-- \og|sig_cnt[87]~280\ = CARRY((!\og|sig_cnt[86]~278\) # (!\og|sig_cnt\(87)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(87),
	datad => VCC,
	cin => \og|sig_cnt[86]~278\,
	combout => \og|sig_cnt[87]~279_combout\,
	cout => \og|sig_cnt[87]~280\);

-- Location: FF_X44_Y10_N27
\og|sig_cnt[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[87]~279_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(87));

-- Location: LCCOMB_X44_Y10_N28
\og|sig_cnt[88]~281\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[88]~281_combout\ = (\og|sig_cnt\(88) & (\og|sig_cnt[87]~280\ $ (GND))) # (!\og|sig_cnt\(88) & (!\og|sig_cnt[87]~280\ & VCC))
-- \og|sig_cnt[88]~282\ = CARRY((\og|sig_cnt\(88) & !\og|sig_cnt[87]~280\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(88),
	datad => VCC,
	cin => \og|sig_cnt[87]~280\,
	combout => \og|sig_cnt[88]~281_combout\,
	cout => \og|sig_cnt[88]~282\);

-- Location: FF_X44_Y10_N29
\og|sig_cnt[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[88]~281_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(88));

-- Location: LCCOMB_X44_Y10_N30
\og|sig_cnt[89]~283\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[89]~283_combout\ = (\og|sig_cnt\(89) & (!\og|sig_cnt[88]~282\)) # (!\og|sig_cnt\(89) & ((\og|sig_cnt[88]~282\) # (GND)))
-- \og|sig_cnt[89]~284\ = CARRY((!\og|sig_cnt[88]~282\) # (!\og|sig_cnt\(89)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(89),
	datad => VCC,
	cin => \og|sig_cnt[88]~282\,
	combout => \og|sig_cnt[89]~283_combout\,
	cout => \og|sig_cnt[89]~284\);

-- Location: FF_X44_Y10_N31
\og|sig_cnt[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[89]~283_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(89));

-- Location: LCCOMB_X44_Y9_N0
\og|sig_cnt[90]~285\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[90]~285_combout\ = (\og|sig_cnt\(90) & (\og|sig_cnt[89]~284\ $ (GND))) # (!\og|sig_cnt\(90) & (!\og|sig_cnt[89]~284\ & VCC))
-- \og|sig_cnt[90]~286\ = CARRY((\og|sig_cnt\(90) & !\og|sig_cnt[89]~284\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(90),
	datad => VCC,
	cin => \og|sig_cnt[89]~284\,
	combout => \og|sig_cnt[90]~285_combout\,
	cout => \og|sig_cnt[90]~286\);

-- Location: FF_X44_Y9_N1
\og|sig_cnt[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[90]~285_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(90));

-- Location: LCCOMB_X44_Y9_N2
\og|sig_cnt[91]~287\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[91]~287_combout\ = (\og|sig_cnt\(91) & (!\og|sig_cnt[90]~286\)) # (!\og|sig_cnt\(91) & ((\og|sig_cnt[90]~286\) # (GND)))
-- \og|sig_cnt[91]~288\ = CARRY((!\og|sig_cnt[90]~286\) # (!\og|sig_cnt\(91)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(91),
	datad => VCC,
	cin => \og|sig_cnt[90]~286\,
	combout => \og|sig_cnt[91]~287_combout\,
	cout => \og|sig_cnt[91]~288\);

-- Location: FF_X44_Y9_N3
\og|sig_cnt[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[91]~287_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(91));

-- Location: LCCOMB_X44_Y9_N4
\og|sig_cnt[92]~289\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[92]~289_combout\ = (\og|sig_cnt\(92) & (\og|sig_cnt[91]~288\ $ (GND))) # (!\og|sig_cnt\(92) & (!\og|sig_cnt[91]~288\ & VCC))
-- \og|sig_cnt[92]~290\ = CARRY((\og|sig_cnt\(92) & !\og|sig_cnt[91]~288\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(92),
	datad => VCC,
	cin => \og|sig_cnt[91]~288\,
	combout => \og|sig_cnt[92]~289_combout\,
	cout => \og|sig_cnt[92]~290\);

-- Location: FF_X44_Y9_N5
\og|sig_cnt[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[92]~289_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(92));

-- Location: LCCOMB_X44_Y9_N6
\og|sig_cnt[93]~291\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[93]~291_combout\ = (\og|sig_cnt\(93) & (!\og|sig_cnt[92]~290\)) # (!\og|sig_cnt\(93) & ((\og|sig_cnt[92]~290\) # (GND)))
-- \og|sig_cnt[93]~292\ = CARRY((!\og|sig_cnt[92]~290\) # (!\og|sig_cnt\(93)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(93),
	datad => VCC,
	cin => \og|sig_cnt[92]~290\,
	combout => \og|sig_cnt[93]~291_combout\,
	cout => \og|sig_cnt[93]~292\);

-- Location: FF_X44_Y9_N7
\og|sig_cnt[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[93]~291_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(93));

-- Location: LCCOMB_X44_Y9_N8
\og|sig_cnt[94]~293\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[94]~293_combout\ = (\og|sig_cnt\(94) & (\og|sig_cnt[93]~292\ $ (GND))) # (!\og|sig_cnt\(94) & (!\og|sig_cnt[93]~292\ & VCC))
-- \og|sig_cnt[94]~294\ = CARRY((\og|sig_cnt\(94) & !\og|sig_cnt[93]~292\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(94),
	datad => VCC,
	cin => \og|sig_cnt[93]~292\,
	combout => \og|sig_cnt[94]~293_combout\,
	cout => \og|sig_cnt[94]~294\);

-- Location: FF_X44_Y9_N9
\og|sig_cnt[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[94]~293_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(94));

-- Location: LCCOMB_X44_Y9_N10
\og|sig_cnt[95]~295\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[95]~295_combout\ = (\og|sig_cnt\(95) & (!\og|sig_cnt[94]~294\)) # (!\og|sig_cnt\(95) & ((\og|sig_cnt[94]~294\) # (GND)))
-- \og|sig_cnt[95]~296\ = CARRY((!\og|sig_cnt[94]~294\) # (!\og|sig_cnt\(95)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(95),
	datad => VCC,
	cin => \og|sig_cnt[94]~294\,
	combout => \og|sig_cnt[95]~295_combout\,
	cout => \og|sig_cnt[95]~296\);

-- Location: FF_X44_Y9_N11
\og|sig_cnt[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[95]~295_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(95));

-- Location: LCCOMB_X44_Y9_N12
\og|sig_cnt[96]~297\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[96]~297_combout\ = (\og|sig_cnt\(96) & (\og|sig_cnt[95]~296\ $ (GND))) # (!\og|sig_cnt\(96) & (!\og|sig_cnt[95]~296\ & VCC))
-- \og|sig_cnt[96]~298\ = CARRY((\og|sig_cnt\(96) & !\og|sig_cnt[95]~296\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(96),
	datad => VCC,
	cin => \og|sig_cnt[95]~296\,
	combout => \og|sig_cnt[96]~297_combout\,
	cout => \og|sig_cnt[96]~298\);

-- Location: FF_X44_Y9_N13
\og|sig_cnt[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[96]~297_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(96));

-- Location: LCCOMB_X44_Y9_N26
\og|Equal1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~28_combout\ = (!\og|sig_cnt\(95) & (!\og|sig_cnt\(96) & (!\og|sig_cnt\(94) & !\og|sig_cnt\(93))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(95),
	datab => \og|sig_cnt\(96),
	datac => \og|sig_cnt\(94),
	datad => \og|sig_cnt\(93),
	combout => \og|Equal1~28_combout\);

-- Location: LCCOMB_X44_Y9_N14
\og|sig_cnt[97]~299\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[97]~299_combout\ = (\og|sig_cnt\(97) & (!\og|sig_cnt[96]~298\)) # (!\og|sig_cnt\(97) & ((\og|sig_cnt[96]~298\) # (GND)))
-- \og|sig_cnt[97]~300\ = CARRY((!\og|sig_cnt[96]~298\) # (!\og|sig_cnt\(97)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(97),
	datad => VCC,
	cin => \og|sig_cnt[96]~298\,
	combout => \og|sig_cnt[97]~299_combout\,
	cout => \og|sig_cnt[97]~300\);

-- Location: FF_X44_Y9_N15
\og|sig_cnt[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[97]~299_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(97));

-- Location: LCCOMB_X44_Y9_N16
\og|sig_cnt[98]~301\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[98]~301_combout\ = (\og|sig_cnt\(98) & (\og|sig_cnt[97]~300\ $ (GND))) # (!\og|sig_cnt\(98) & (!\og|sig_cnt[97]~300\ & VCC))
-- \og|sig_cnt[98]~302\ = CARRY((\og|sig_cnt\(98) & !\og|sig_cnt[97]~300\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(98),
	datad => VCC,
	cin => \og|sig_cnt[97]~300\,
	combout => \og|sig_cnt[98]~301_combout\,
	cout => \og|sig_cnt[98]~302\);

-- Location: FF_X44_Y9_N17
\og|sig_cnt[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[98]~301_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(98));

-- Location: LCCOMB_X44_Y9_N18
\og|sig_cnt[99]~303\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[99]~303_combout\ = (\og|sig_cnt\(99) & (!\og|sig_cnt[98]~302\)) # (!\og|sig_cnt\(99) & ((\og|sig_cnt[98]~302\) # (GND)))
-- \og|sig_cnt[99]~304\ = CARRY((!\og|sig_cnt[98]~302\) # (!\og|sig_cnt\(99)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(99),
	datad => VCC,
	cin => \og|sig_cnt[98]~302\,
	combout => \og|sig_cnt[99]~303_combout\,
	cout => \og|sig_cnt[99]~304\);

-- Location: FF_X44_Y9_N19
\og|sig_cnt[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[99]~303_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(99));

-- Location: LCCOMB_X44_Y9_N20
\og|sig_cnt[100]~305\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[100]~305_combout\ = \og|sig_cnt[99]~304\ $ (!\og|sig_cnt\(100))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_cnt\(100),
	cin => \og|sig_cnt[99]~304\,
	combout => \og|sig_cnt[100]~305_combout\);

-- Location: FF_X44_Y9_N21
\og|sig_cnt[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[100]~305_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(100));

-- Location: LCCOMB_X44_Y9_N28
\og|Equal1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~29_combout\ = (!\og|sig_cnt\(100) & (!\og|sig_cnt\(99) & (!\og|sig_cnt\(97) & !\og|sig_cnt\(98))))

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
	combout => \og|Equal1~29_combout\);

-- Location: LCCOMB_X44_Y9_N30
\og|Equal1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~26_combout\ = (!\og|sig_cnt\(87) & (!\og|sig_cnt\(88) & (!\og|sig_cnt\(86) & !\og|sig_cnt\(85))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(87),
	datab => \og|sig_cnt\(88),
	datac => \og|sig_cnt\(86),
	datad => \og|sig_cnt\(85),
	combout => \og|Equal1~26_combout\);

-- Location: LCCOMB_X44_Y9_N24
\og|Equal1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~27_combout\ = (!\og|sig_cnt\(89) & (!\og|sig_cnt\(91) & (!\og|sig_cnt\(92) & !\og|sig_cnt\(90))))

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
	combout => \og|Equal1~27_combout\);

-- Location: LCCOMB_X44_Y9_N22
\og|Equal1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~30_combout\ = (\og|Equal1~28_combout\ & (\og|Equal1~29_combout\ & (\og|Equal1~26_combout\ & \og|Equal1~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|Equal1~28_combout\,
	datab => \og|Equal1~29_combout\,
	datac => \og|Equal1~26_combout\,
	datad => \og|Equal1~27_combout\,
	combout => \og|Equal1~30_combout\);

-- Location: LCCOMB_X43_Y12_N6
\og|Equal1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~11_combout\ = (!\og|sig_cnt\(43) & (!\og|sig_cnt\(42) & (!\og|sig_cnt\(41) & !\og|sig_cnt\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(43),
	datab => \og|sig_cnt\(42),
	datac => \og|sig_cnt\(41),
	datad => \og|sig_cnt\(44),
	combout => \og|Equal1~11_combout\);

-- Location: LCCOMB_X43_Y12_N28
\og|Equal1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~10_combout\ = (!\og|sig_cnt\(39) & (!\og|sig_cnt\(38) & (!\og|sig_cnt\(37) & !\og|sig_cnt\(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(39),
	datab => \og|sig_cnt\(38),
	datac => \og|sig_cnt\(37),
	datad => \og|sig_cnt\(40),
	combout => \og|Equal1~10_combout\);

-- Location: LCCOMB_X43_Y12_N8
\og|Equal1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~12_combout\ = (!\og|sig_cnt\(48) & (!\og|sig_cnt\(47) & (!\og|sig_cnt\(46) & !\og|sig_cnt\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(48),
	datab => \og|sig_cnt\(47),
	datac => \og|sig_cnt\(46),
	datad => \og|sig_cnt\(45),
	combout => \og|Equal1~12_combout\);

-- Location: LCCOMB_X43_Y12_N10
\og|Equal1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~13_combout\ = (!\og|sig_cnt\(52) & (!\og|sig_cnt\(51) & (!\og|sig_cnt\(49) & !\og|sig_cnt\(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(52),
	datab => \og|sig_cnt\(51),
	datac => \og|sig_cnt\(49),
	datad => \og|sig_cnt\(50),
	combout => \og|Equal1~13_combout\);

-- Location: LCCOMB_X43_Y12_N12
\og|Equal1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~14_combout\ = (\og|Equal1~11_combout\ & (\og|Equal1~10_combout\ & (\og|Equal1~12_combout\ & \og|Equal1~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|Equal1~11_combout\,
	datab => \og|Equal1~10_combout\,
	datac => \og|Equal1~12_combout\,
	datad => \og|Equal1~13_combout\,
	combout => \og|Equal1~14_combout\);

-- Location: LCCOMB_X43_Y15_N24
\og|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~1_combout\ = (!\og|sig_cnt\(11) & (!\og|sig_cnt\(12) & (!\og|sig_cnt\(9) & !\og|sig_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(11),
	datab => \og|sig_cnt\(12),
	datac => \og|sig_cnt\(9),
	datad => \og|sig_cnt\(10),
	combout => \og|Equal1~1_combout\);

-- Location: LCCOMB_X43_Y12_N0
\og|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~2_combout\ = (!\og|sig_cnt\(14) & (!\og|sig_cnt\(15) & (!\og|sig_cnt\(16) & !\og|sig_cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(14),
	datab => \og|sig_cnt\(15),
	datac => \og|sig_cnt\(16),
	datad => \og|sig_cnt\(13),
	combout => \og|Equal1~2_combout\);

-- Location: LCCOMB_X43_Y14_N16
\og|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~3_combout\ = (!\og|sig_cnt\(20) & (!\og|sig_cnt\(19) & (!\og|sig_cnt\(17) & !\og|sig_cnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(20),
	datab => \og|sig_cnt\(19),
	datac => \og|sig_cnt\(17),
	datad => \og|sig_cnt\(18),
	combout => \og|Equal1~3_combout\);

-- Location: LCCOMB_X44_Y15_N8
\og|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~0_combout\ = (!\og|sig_cnt\(7) & (!\og|sig_cnt\(8) & (\og|sig_cnt\(1) & \og|sig_cnt\(2))))

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
	combout => \og|Equal1~0_combout\);

-- Location: LCCOMB_X43_Y12_N18
\og|Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~4_combout\ = (\og|Equal1~1_combout\ & (\og|Equal1~2_combout\ & (\og|Equal1~3_combout\ & \og|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|Equal1~1_combout\,
	datab => \og|Equal1~2_combout\,
	datac => \og|Equal1~3_combout\,
	datad => \og|Equal1~0_combout\,
	combout => \og|Equal1~4_combout\);

-- Location: LCCOMB_X42_Y12_N8
\og|Equal1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~15_combout\ = (!\og|sig_cnt\(55) & (!\og|sig_cnt\(54) & (!\og|sig_cnt\(56) & !\og|sig_cnt\(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(55),
	datab => \og|sig_cnt\(54),
	datac => \og|sig_cnt\(56),
	datad => \og|sig_cnt\(53),
	combout => \og|Equal1~15_combout\);

-- Location: LCCOMB_X43_Y11_N0
\og|Equal1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~16_combout\ = (!\og|sig_cnt\(60) & (!\og|sig_cnt\(57) & (!\og|sig_cnt\(58) & !\og|sig_cnt\(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(60),
	datab => \og|sig_cnt\(57),
	datac => \og|sig_cnt\(58),
	datad => \og|sig_cnt\(59),
	combout => \og|Equal1~16_combout\);

-- Location: LCCOMB_X43_Y12_N22
\og|Equal1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~17_combout\ = (!\og|sig_cnt\(64) & (!\og|sig_cnt\(62) & (!\og|sig_cnt\(63) & !\og|sig_cnt\(61))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(64),
	datab => \og|sig_cnt\(62),
	datac => \og|sig_cnt\(63),
	datad => \og|sig_cnt\(61),
	combout => \og|Equal1~17_combout\);

-- Location: LCCOMB_X43_Y12_N24
\og|Equal1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~18_combout\ = (!\og|sig_cnt\(67) & (!\og|sig_cnt\(68) & (!\og|sig_cnt\(66) & !\og|sig_cnt\(65))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(67),
	datab => \og|sig_cnt\(68),
	datac => \og|sig_cnt\(66),
	datad => \og|sig_cnt\(65),
	combout => \og|Equal1~18_combout\);

-- Location: LCCOMB_X43_Y12_N26
\og|Equal1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~19_combout\ = (\og|Equal1~15_combout\ & (\og|Equal1~16_combout\ & (\og|Equal1~17_combout\ & \og|Equal1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|Equal1~15_combout\,
	datab => \og|Equal1~16_combout\,
	datac => \og|Equal1~17_combout\,
	datad => \og|Equal1~18_combout\,
	combout => \og|Equal1~19_combout\);

-- Location: LCCOMB_X43_Y13_N12
\og|Equal1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~7_combout\ = (!\og|sig_cnt\(32) & (!\og|sig_cnt\(31) & (!\og|sig_cnt\(30) & !\og|sig_cnt\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(32),
	datab => \og|sig_cnt\(31),
	datac => \og|sig_cnt\(30),
	datad => \og|sig_cnt\(29),
	combout => \og|Equal1~7_combout\);

-- Location: LCCOMB_X43_Y13_N24
\og|Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~5_combout\ = (!\og|sig_cnt\(22) & (!\og|sig_cnt\(23) & (!\og|sig_cnt\(24) & !\og|sig_cnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(22),
	datab => \og|sig_cnt\(23),
	datac => \og|sig_cnt\(24),
	datad => \og|sig_cnt\(21),
	combout => \og|Equal1~5_combout\);

-- Location: LCCOMB_X43_Y13_N14
\og|Equal1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~8_combout\ = (!\og|sig_cnt\(36) & (!\og|sig_cnt\(35) & (!\og|sig_cnt\(33) & !\og|sig_cnt\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(36),
	datab => \og|sig_cnt\(35),
	datac => \og|sig_cnt\(33),
	datad => \og|sig_cnt\(34),
	combout => \og|Equal1~8_combout\);

-- Location: LCCOMB_X43_Y13_N10
\og|Equal1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~6_combout\ = (!\og|sig_cnt\(28) & (!\og|sig_cnt\(25) & (!\og|sig_cnt\(26) & !\og|sig_cnt\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(28),
	datab => \og|sig_cnt\(25),
	datac => \og|sig_cnt\(26),
	datad => \og|sig_cnt\(27),
	combout => \og|Equal1~6_combout\);

-- Location: LCCOMB_X43_Y13_N16
\og|Equal1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~9_combout\ = (\og|Equal1~7_combout\ & (\og|Equal1~5_combout\ & (\og|Equal1~8_combout\ & \og|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|Equal1~7_combout\,
	datab => \og|Equal1~5_combout\,
	datac => \og|Equal1~8_combout\,
	datad => \og|Equal1~6_combout\,
	combout => \og|Equal1~9_combout\);

-- Location: LCCOMB_X43_Y12_N20
\og|Equal1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~20_combout\ = (\og|Equal1~14_combout\ & (\og|Equal1~4_combout\ & (\og|Equal1~19_combout\ & \og|Equal1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|Equal1~14_combout\,
	datab => \og|Equal1~4_combout\,
	datac => \og|Equal1~19_combout\,
	datad => \og|Equal1~9_combout\,
	combout => \og|Equal1~20_combout\);

-- Location: LCCOMB_X44_Y15_N2
\og|Equal1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~31_combout\ = (\og|sig_cnt\(0) & (!\og|sig_cnt\(5) & \og|sig_cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(0),
	datac => \og|sig_cnt\(5),
	datad => \og|sig_cnt\(4),
	combout => \og|Equal1~31_combout\);

-- Location: LCCOMB_X44_Y15_N4
\og|Equal1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~32_combout\ = (\og|Equal1~25_combout\ & (\og|Equal1~30_combout\ & (\og|Equal1~20_combout\ & \og|Equal1~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|Equal1~25_combout\,
	datab => \og|Equal1~30_combout\,
	datac => \og|Equal1~20_combout\,
	datad => \og|Equal1~31_combout\,
	combout => \og|Equal1~32_combout\);

-- Location: LCCOMB_X47_Y15_N4
\og|state_Do~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|state_Do~26_combout\ = (\og|state_Do.s2~q\ & ((\og|sig_cnt\(3)) # ((\og|sig_cnt\(6)) # (!\og|Equal1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(3),
	datab => \og|Equal1~32_combout\,
	datac => \og|state_Do.s2~q\,
	datad => \og|sig_cnt\(6),
	combout => \og|state_Do~26_combout\);

-- Location: LCCOMB_X47_Y15_N18
\og|state_Do~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|state_Do~29_combout\ = (!\og|state_Do~27_combout\ & (!\og|state_Do~26_combout\ & (!\og|state_Do~28_combout\ & \sig_main_rising_edge~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|state_Do~27_combout\,
	datab => \og|state_Do~26_combout\,
	datac => \og|state_Do~28_combout\,
	datad => \sig_main_rising_edge~combout\,
	combout => \og|state_Do~29_combout\);

-- Location: FF_X47_Y15_N27
\og|state_Do.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|state_Do.s2~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|state_Do~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|state_Do.s2~q\);

-- Location: LCCOMB_X47_Y15_N28
\og|sig_cnt[100]~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[100]~112_combout\ = (\sig_main_rising_edge~combout\ & ((\og|state_Do.s1~q\) # ((\og|state_Do.s5~q\) # (\og|state_Do.s2~q\))))

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
	combout => \og|sig_cnt[100]~112_combout\);

-- Location: FF_X44_Y15_N25
\og|sig_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[6]~117_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(6));

-- Location: LCCOMB_X47_Y15_N30
\og|state_Do~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|state_Do~27_combout\ = (\og|state_Do.s1~q\ & (((!\og|Equal1~32_combout\) # (!\og|sig_cnt\(6))) # (!\og|sig_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(3),
	datab => \og|sig_cnt\(6),
	datac => \og|Equal1~32_combout\,
	datad => \og|state_Do.s1~q\,
	combout => \og|state_Do~27_combout\);

-- Location: FF_X50_Y12_N11
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

-- Location: LCCOMB_X50_Y12_N8
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

-- Location: FF_X50_Y12_N9
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

-- Location: LCCOMB_X51_Y12_N6
\crc|crc8bit_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|crc8bit_out~0_combout\ = (!\sig_cut_not~q\ & (\crc|state_crc.s2~q\ & \sig_cut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_cut_not~q\,
	datac => \crc|state_crc.s2~q\,
	datad => \sig_cut~q\,
	combout => \crc|crc8bit_out~0_combout\);

-- Location: LCCOMB_X52_Y4_N14
\crc|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Equal2~0_combout\ = (!\crc|crc_reg8bit\(7) & (!\crc|crc_reg8bit\(4) & (!\crc|crc_reg8bit\(5) & !\crc|crc_reg8bit\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|crc_reg8bit\(7),
	datab => \crc|crc_reg8bit\(4),
	datac => \crc|crc_reg8bit\(5),
	datad => \crc|crc_reg8bit\(6),
	combout => \crc|Equal2~0_combout\);

-- Location: LCCOMB_X52_Y4_N16
\crc|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|Equal2~1_combout\ = (!\crc|crc_reg8bit\(1) & (!\crc|crc_reg8bit\(2) & (!\crc|crc_reg8bit\(3) & !\crc|crc_reg8bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|crc_reg8bit\(1),
	datab => \crc|crc_reg8bit\(2),
	datac => \crc|crc_reg8bit\(3),
	datad => \crc|crc_reg8bit\(0),
	combout => \crc|Equal2~1_combout\);

-- Location: LCCOMB_X51_Y12_N26
\crc|crc8bit_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \crc|crc8bit_out~1_combout\ = (\crc|crc8bit_out~0_combout\ & (\crc|Equal2~0_combout\ & ((\crc|Equal2~1_combout\)))) # (!\crc|crc8bit_out~0_combout\ & (((\crc|crc8bit_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc|crc8bit_out~0_combout\,
	datab => \crc|Equal2~0_combout\,
	datac => \crc|crc8bit_out~q\,
	datad => \crc|Equal2~1_combout\,
	combout => \crc|crc8bit_out~1_combout\);

-- Location: FF_X51_Y12_N27
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

-- Location: LCCOMB_X50_Y12_N12
\og|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Selector10~0_combout\ = (\og|state_Do.s8~q\) # ((\og|state_Do.s5a~q\ & !\crc|crc8bit_out~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \og|state_Do.s5a~q\,
	datac => \og|state_Do.s8~q\,
	datad => \crc|crc8bit_out~q\,
	combout => \og|Selector10~0_combout\);

-- Location: FF_X50_Y12_N13
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

-- Location: LCCOMB_X50_Y12_N26
\og|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Selector0~0_combout\ = (!\og|state_Do.s9~q\ & ((\og|Equal0~10_combout\) # (\og|state_Do.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \og|Equal0~10_combout\,
	datac => \og|state_Do.s0~q\,
	datad => \og|state_Do.s9~q\,
	combout => \og|Selector0~0_combout\);

-- Location: FF_X50_Y12_N27
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

-- Location: LCCOMB_X47_Y15_N12
\og|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Selector1~0_combout\ = (\og|state_Do~27_combout\) # ((\og|Equal0~10_combout\ & !\og|state_Do.s0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|Equal0~10_combout\,
	datac => \og|state_Do~27_combout\,
	datad => \og|state_Do.s0~q\,
	combout => \og|Selector1~0_combout\);

-- Location: FF_X47_Y15_N13
\og|state_Do.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|Selector1~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|state_Do.s1~q\);

-- Location: LCCOMB_X47_Y15_N16
\og|sig_cnt[94]~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[94]~110_combout\ = (!\og|sig_cnt\(3) & (!\og|sig_cnt\(6) & (\og|Equal1~32_combout\ & !\og|state_Do.s5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(3),
	datab => \og|sig_cnt\(6),
	datac => \og|Equal1~32_combout\,
	datad => \og|state_Do.s5~q\,
	combout => \og|sig_cnt[94]~110_combout\);

-- Location: LCCOMB_X44_Y15_N6
\og|Equal1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~33_combout\ = (\og|Equal1~25_combout\ & (\og|Equal1~20_combout\ & \og|Equal1~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \og|Equal1~25_combout\,
	datac => \og|Equal1~20_combout\,
	datad => \og|Equal1~30_combout\,
	combout => \og|Equal1~33_combout\);

-- Location: LCCOMB_X44_Y15_N10
\og|Equal1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal1~34_combout\ = (\og|Equal1~33_combout\ & (\og|Equal1~31_combout\ & (\og|sig_cnt\(3) & \og|sig_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|Equal1~33_combout\,
	datab => \og|Equal1~31_combout\,
	datac => \og|sig_cnt\(3),
	datad => \og|sig_cnt\(6),
	combout => \og|Equal1~34_combout\);

-- Location: LCCOMB_X44_Y15_N0
\og|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Equal3~0_combout\ = (!\og|sig_cnt\(0) & (\og|sig_cnt\(3) & (!\og|sig_cnt\(4) & \og|sig_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(0),
	datab => \og|sig_cnt\(3),
	datac => \og|sig_cnt\(4),
	datad => \og|sig_cnt\(6),
	combout => \og|Equal3~0_combout\);

-- Location: LCCOMB_X47_Y15_N6
\og|sig_cnt[94]~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[94]~109_combout\ = (\og|sig_cnt\(5) & (\og|Equal3~0_combout\ & (\og|Equal1~33_combout\ & \og|state_Do.s5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(5),
	datab => \og|Equal3~0_combout\,
	datac => \og|Equal1~33_combout\,
	datad => \og|state_Do.s5~q\,
	combout => \og|sig_cnt[94]~109_combout\);

-- Location: LCCOMB_X47_Y15_N2
\og|sig_cnt[94]~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[94]~111_combout\ = (\og|state_Do.s1~q\ & (((\og|Equal1~34_combout\)))) # (!\og|state_Do.s1~q\ & ((\og|sig_cnt[94]~110_combout\) # ((\og|sig_cnt[94]~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|state_Do.s1~q\,
	datab => \og|sig_cnt[94]~110_combout\,
	datac => \og|Equal1~34_combout\,
	datad => \og|sig_cnt[94]~109_combout\,
	combout => \og|sig_cnt[94]~111_combout\);

-- Location: FF_X44_Y15_N13
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
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(0));

-- Location: LCCOMB_X44_Y15_N14
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

-- Location: FF_X44_Y15_N15
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
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(1));

-- Location: LCCOMB_X44_Y15_N16
\og|sig_cnt[2]~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[2]~105_combout\ = (\og|sig_cnt\(2) & (\og|sig_cnt[1]~104\ $ (GND))) # (!\og|sig_cnt\(2) & (!\og|sig_cnt[1]~104\ & VCC))
-- \og|sig_cnt[2]~106\ = CARRY((\og|sig_cnt\(2) & !\og|sig_cnt[1]~104\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(2),
	datad => VCC,
	cin => \og|sig_cnt[1]~104\,
	combout => \og|sig_cnt[2]~105_combout\,
	cout => \og|sig_cnt[2]~106\);

-- Location: FF_X44_Y15_N17
\og|sig_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[2]~105_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(2));

-- Location: LCCOMB_X44_Y15_N18
\og|sig_cnt[3]~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[3]~107_combout\ = (\og|sig_cnt\(3) & (!\og|sig_cnt[2]~106\)) # (!\og|sig_cnt\(3) & ((\og|sig_cnt[2]~106\) # (GND)))
-- \og|sig_cnt[3]~108\ = CARRY((!\og|sig_cnt[2]~106\) # (!\og|sig_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(3),
	datad => VCC,
	cin => \og|sig_cnt[2]~106\,
	combout => \og|sig_cnt[3]~107_combout\,
	cout => \og|sig_cnt[3]~108\);

-- Location: FF_X44_Y15_N19
\og|sig_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[3]~107_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(3));

-- Location: LCCOMB_X44_Y15_N20
\og|sig_cnt[4]~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_cnt[4]~113_combout\ = (\og|sig_cnt\(4) & (\og|sig_cnt[3]~108\ $ (GND))) # (!\og|sig_cnt\(4) & (!\og|sig_cnt[3]~108\ & VCC))
-- \og|sig_cnt[4]~114\ = CARRY((\og|sig_cnt\(4) & !\og|sig_cnt[3]~108\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \og|sig_cnt\(4),
	datad => VCC,
	cin => \og|sig_cnt[3]~108\,
	combout => \og|sig_cnt[4]~113_combout\,
	cout => \og|sig_cnt[4]~114\);

-- Location: FF_X44_Y15_N21
\og|sig_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[4]~113_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(4));

-- Location: FF_X44_Y15_N23
\og|sig_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_cnt[5]~115_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \og|sig_cnt[94]~111_combout\,
	ena => \og|sig_cnt[100]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_cnt\(5));

-- Location: LCCOMB_X47_Y15_N8
\og|state_Do~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|state_Do~28_combout\ = (\og|state_Do.s5~q\ & (((!\og|Equal1~33_combout\) # (!\og|Equal3~0_combout\)) # (!\og|sig_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|sig_cnt\(5),
	datab => \og|Equal3~0_combout\,
	datac => \og|Equal1~33_combout\,
	datad => \og|state_Do.s5~q\,
	combout => \og|state_Do~28_combout\);

-- Location: FF_X47_Y15_N5
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
	ena => \og|state_Do~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|state_Do.s3~q\);

-- Location: FF_X47_Y15_N11
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

-- Location: LCCOMB_X47_Y15_N0
\og|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Selector5~0_combout\ = (\og|state_Do~28_combout\) # (\og|state_Do.s4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \og|state_Do~28_combout\,
	datad => \og|state_Do.s4~q\,
	combout => \og|Selector5~0_combout\);

-- Location: FF_X47_Y15_N1
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

-- Location: LCCOMB_X47_Y15_N24
\og|state_Do.s5a~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|state_Do.s5a~feeder_combout\ = \og|state_Do.s5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|state_Do.s5~q\,
	combout => \og|state_Do.s5a~feeder_combout\);

-- Location: FF_X47_Y15_N25
\og|state_Do.s5a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|state_Do.s5a~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|state_Do~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|state_Do.s5a~q\);

-- Location: LCCOMB_X50_Y12_N30
\og|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Selector7~0_combout\ = (\og|state_Do.s5a~q\ & \crc|crc8bit_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \og|state_Do.s5a~q\,
	datad => \crc|crc8bit_out~q\,
	combout => \og|Selector7~0_combout\);

-- Location: FF_X50_Y12_N31
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

-- Location: LCCOMB_X50_Y12_N16
\og|Selector112~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|Selector112~0_combout\ = (!\og|state_Do.s6~q\ & ((\og|state_Do.s8~q\) # (\og|load_leds~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \og|state_Do.s6~q\,
	datab => \og|state_Do.s8~q\,
	datac => \og|load_leds~q\,
	combout => \og|Selector112~0_combout\);

-- Location: FF_X50_Y12_N17
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

-- Location: LCCOMB_X47_Y10_N10
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

-- Location: LCCOMB_X47_Y15_N20
\og|sig_green_leds_reg[17]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_green_leds_reg[17]~0_combout\ = (\sig_cut~q\ & (\og|state_Do.s2~q\ & !\sig_cut_not~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_cut~q\,
	datac => \og|state_Do.s2~q\,
	datad => \sig_cut_not~q\,
	combout => \og|sig_green_leds_reg[17]~0_combout\);

-- Location: FF_X47_Y10_N11
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
	ena => \og|sig_green_leds_reg[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_green_leds_reg\(0));

-- Location: LCCOMB_X47_Y10_N16
\og|sig_green_leds_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_green_leds_reg[1]~feeder_combout\ = \og|sig_green_leds_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_green_leds_reg\(0),
	combout => \og|sig_green_leds_reg[1]~feeder_combout\);

-- Location: FF_X47_Y10_N17
\og|sig_green_leds_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_green_leds_reg[1]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_green_leds_reg[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_green_leds_reg\(1));

-- Location: LCCOMB_X51_Y11_N30
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

-- Location: FF_X51_Y11_N31
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
	ena => \og|sig_green_leds_reg[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_green_leds_reg\(2));

-- Location: FF_X51_Y11_N19
\og|sig_green_leds_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_green_leds_reg\(2),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_green_leds_reg[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_green_leds_reg\(3));

-- Location: LCCOMB_X51_Y11_N22
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

-- Location: FF_X51_Y11_N23
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
	ena => \og|sig_green_leds_reg[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_green_leds_reg\(4));

-- Location: FF_X51_Y11_N3
\og|sig_green_leds_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_green_leds_reg\(4),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_green_leds_reg[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_green_leds_reg\(5));

-- Location: LCCOMB_X51_Y11_N14
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

-- Location: FF_X51_Y11_N15
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
	ena => \og|sig_green_leds_reg[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_green_leds_reg\(6));

-- Location: FF_X51_Y11_N27
\og|sig_green_leds_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_green_leds_reg\(6),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_green_leds_reg[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_green_leds_reg\(7));

-- Location: FF_X51_Y11_N7
\og|sig_green_leds_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_green_leds_reg\(7),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_green_leds_reg[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_green_leds_reg\(8));

-- Location: LCCOMB_X51_Y11_N10
\og|sig_green_leds_reg[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_green_leds_reg[9]~feeder_combout\ = \og|sig_green_leds_reg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_green_leds_reg\(8),
	combout => \og|sig_green_leds_reg[9]~feeder_combout\);

-- Location: FF_X51_Y11_N11
\og|sig_green_leds_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_green_leds_reg[9]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_green_leds_reg[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_green_leds_reg\(9));

-- Location: LCCOMB_X51_Y11_N12
\og|sig_green_leds_reg[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_green_leds_reg[10]~feeder_combout\ = \og|sig_green_leds_reg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_green_leds_reg\(9),
	combout => \og|sig_green_leds_reg[10]~feeder_combout\);

-- Location: FF_X51_Y11_N13
\og|sig_green_leds_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_green_leds_reg[10]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_green_leds_reg[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_green_leds_reg\(10));

-- Location: LCCOMB_X51_Y11_N16
\og|sig_green_leds_reg[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_green_leds_reg[11]~feeder_combout\ = \og|sig_green_leds_reg\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_green_leds_reg\(10),
	combout => \og|sig_green_leds_reg[11]~feeder_combout\);

-- Location: FF_X51_Y11_N17
\og|sig_green_leds_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_green_leds_reg[11]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_green_leds_reg[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_green_leds_reg\(11));

-- Location: LCCOMB_X51_Y11_N20
\og|sig_green_leds_reg[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_green_leds_reg[12]~feeder_combout\ = \og|sig_green_leds_reg\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_green_leds_reg\(11),
	combout => \og|sig_green_leds_reg[12]~feeder_combout\);

-- Location: FF_X51_Y11_N21
\og|sig_green_leds_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_green_leds_reg[12]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_green_leds_reg[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_green_leds_reg\(12));

-- Location: LCCOMB_X51_Y11_N0
\og|sig_green_leds_reg[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_green_leds_reg[13]~feeder_combout\ = \og|sig_green_leds_reg\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_green_leds_reg\(12),
	combout => \og|sig_green_leds_reg[13]~feeder_combout\);

-- Location: FF_X51_Y11_N1
\og|sig_green_leds_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_green_leds_reg[13]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_green_leds_reg[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_green_leds_reg\(13));

-- Location: LCCOMB_X51_Y11_N4
\og|sig_green_leds_reg[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_green_leds_reg[14]~feeder_combout\ = \og|sig_green_leds_reg\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_green_leds_reg\(13),
	combout => \og|sig_green_leds_reg[14]~feeder_combout\);

-- Location: FF_X51_Y11_N5
\og|sig_green_leds_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_green_leds_reg[14]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_green_leds_reg[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_green_leds_reg\(14));

-- Location: FF_X51_Y11_N25
\og|sig_green_leds_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_green_leds_reg\(14),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_green_leds_reg[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_green_leds_reg\(15));

-- Location: LCCOMB_X51_Y11_N28
\og|sig_green_leds_reg[16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_green_leds_reg[16]~feeder_combout\ = \og|sig_green_leds_reg\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_green_leds_reg\(15),
	combout => \og|sig_green_leds_reg[16]~feeder_combout\);

-- Location: FF_X51_Y11_N29
\og|sig_green_leds_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_green_leds_reg[16]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_green_leds_reg[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_green_leds_reg\(16));

-- Location: LCCOMB_X51_Y11_N8
\og|sig_green_leds_reg[17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_green_leds_reg[17]~feeder_combout\ = \og|sig_green_leds_reg\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_green_leds_reg\(16),
	combout => \og|sig_green_leds_reg[17]~feeder_combout\);

-- Location: FF_X51_Y11_N9
\og|sig_green_leds_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_green_leds_reg[17]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_green_leds_reg[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_green_leds_reg\(17));

-- Location: LCCOMB_X51_Y4_N18
\og|sig_green_leds_out[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_green_leds_out[0]~feeder_combout\ = \og|sig_green_leds_reg\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_green_leds_reg\(17),
	combout => \og|sig_green_leds_out[0]~feeder_combout\);

-- Location: LCCOMB_X47_Y15_N10
\og|sig_green_leds_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_green_leds_out[0]~0_combout\ = (\sig_cut~q\ & (\resetn~input_o\ & (\og|state_Do.s4~q\ & !\sig_cut_not~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_cut~q\,
	datab => \resetn~input_o\,
	datac => \og|state_Do.s4~q\,
	datad => \sig_cut_not~q\,
	combout => \og|sig_green_leds_out[0]~0_combout\);

-- Location: FF_X51_Y4_N19
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

-- Location: LCCOMB_X51_Y4_N0
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

-- Location: LCCOMB_X50_Y12_N10
\og|green_leds[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|green_leds[0]~0_combout\ = (\resetn~input_o\ & (!\sig_cut_not~q\ & (\og|state_Do.s7~q\ & \sig_cut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~input_o\,
	datab => \sig_cut_not~q\,
	datac => \og|state_Do.s7~q\,
	datad => \sig_cut~q\,
	combout => \og|green_leds[0]~0_combout\);

-- Location: FF_X51_Y4_N1
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

-- Location: LCCOMB_X51_Y4_N20
\og|sig_green_leds_out[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_green_leds_out[1]~feeder_combout\ = \og|sig_green_leds_reg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \og|sig_green_leds_reg\(9),
	combout => \og|sig_green_leds_out[1]~feeder_combout\);

-- Location: FF_X51_Y4_N21
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

-- Location: LCCOMB_X51_Y4_N26
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

-- Location: FF_X51_Y4_N27
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

-- Location: LCCOMB_X51_Y4_N6
\og|sig_green_leds_out[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_green_leds_out[2]~feeder_combout\ = \og|sig_green_leds_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_green_leds_reg\(1),
	combout => \og|sig_green_leds_out[2]~feeder_combout\);

-- Location: FF_X51_Y4_N7
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

-- Location: LCCOMB_X51_Y4_N28
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

-- Location: FF_X51_Y4_N29
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

-- Location: LCCOMB_X52_Y4_N28
\og|sig_rgb_leds_out[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[0]~feeder_combout\ = sig_rom_sf(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sig_rom_sf(7),
	combout => \og|sig_rgb_leds_out[0]~feeder_combout\);

-- Location: LCCOMB_X47_Y15_N22
\og|sig_rgb_leds_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[0]~0_combout\ = (!\sig_cut_not~q\ & (\sig_cut~q\ & \og|state_Do.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_cut_not~q\,
	datac => \sig_cut~q\,
	datad => \og|state_Do.s1~q\,
	combout => \og|sig_rgb_leds_out[0]~0_combout\);

-- Location: FF_X52_Y4_N29
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

-- Location: LCCOMB_X51_Y4_N22
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

-- Location: FF_X51_Y4_N23
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

-- Location: LCCOMB_X52_Y4_N20
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

-- Location: FF_X52_Y4_N21
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

-- Location: FF_X51_Y4_N17
\og|rgb_leds[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(1),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(1));

-- Location: FF_X52_Y4_N31
\og|sig_rgb_leds_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(1),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(2));

-- Location: FF_X51_Y4_N11
\og|rgb_leds[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(2),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(2));

-- Location: FF_X52_Y4_N13
\og|sig_rgb_leds_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(2),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(3));

-- Location: FF_X51_Y4_N13
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

-- Location: LCCOMB_X52_Y4_N26
\og|sig_rgb_leds_out[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[4]~feeder_combout\ = \og|sig_rgb_leds_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(3),
	combout => \og|sig_rgb_leds_out[4]~feeder_combout\);

-- Location: FF_X52_Y4_N27
\og|sig_rgb_leds_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[4]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(4));

-- Location: LCCOMB_X51_Y4_N14
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

-- Location: FF_X51_Y4_N15
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

-- Location: FF_X52_Y4_N19
\og|sig_rgb_leds_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(4),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(5));

-- Location: LCCOMB_X51_Y4_N24
\og|rgb_leds[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[5]~feeder_combout\ = \og|sig_rgb_leds_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(5),
	combout => \og|rgb_leds[5]~feeder_combout\);

-- Location: FF_X51_Y4_N25
\og|rgb_leds[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[5]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(5));

-- Location: LCCOMB_X52_Y4_N22
\og|sig_rgb_leds_out[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[6]~feeder_combout\ = \og|sig_rgb_leds_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(5),
	combout => \og|sig_rgb_leds_out[6]~feeder_combout\);

-- Location: FF_X52_Y4_N23
\og|sig_rgb_leds_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[6]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(6));

-- Location: LCCOMB_X51_Y4_N2
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

-- Location: FF_X51_Y4_N3
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

-- Location: FF_X52_Y4_N7
\og|sig_rgb_leds_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(6),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(7));

-- Location: FF_X51_Y4_N5
\og|rgb_leds[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(7),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(7));

-- Location: FF_X49_Y4_N9
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

-- Location: LCCOMB_X51_Y4_N30
\og|rgb_leds[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[8]~feeder_combout\ = \og|sig_rgb_leds_out\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(8),
	combout => \og|rgb_leds[8]~feeder_combout\);

-- Location: FF_X51_Y4_N31
\og|rgb_leds[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[8]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(8));

-- Location: FF_X47_Y4_N31
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

-- Location: LCCOMB_X50_Y4_N24
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

-- Location: FF_X50_Y4_N25
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

-- Location: FF_X47_Y4_N25
\og|sig_rgb_leds_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(9),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(10));

-- Location: LCCOMB_X47_Y4_N8
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

-- Location: FF_X47_Y4_N9
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

-- Location: LCCOMB_X47_Y4_N26
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

-- Location: FF_X47_Y4_N27
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

-- Location: FF_X47_Y4_N3
\og|rgb_leds[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(11),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(11));

-- Location: FF_X47_Y4_N13
\og|sig_rgb_leds_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(11),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(12));

-- Location: LCCOMB_X47_Y4_N28
\og|rgb_leds[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[12]~feeder_combout\ = \og|sig_rgb_leds_out\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(12),
	combout => \og|rgb_leds[12]~feeder_combout\);

-- Location: FF_X47_Y4_N29
\og|rgb_leds[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[12]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(12));

-- Location: LCCOMB_X47_Y4_N22
\og|sig_rgb_leds_out[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[13]~feeder_combout\ = \og|sig_rgb_leds_out\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(12),
	combout => \og|sig_rgb_leds_out[13]~feeder_combout\);

-- Location: FF_X47_Y4_N23
\og|sig_rgb_leds_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[13]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(13));

-- Location: FF_X47_Y4_N7
\og|rgb_leds[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(13),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(13));

-- Location: FF_X47_Y4_N17
\og|sig_rgb_leds_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(13),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(14));

-- Location: LCCOMB_X47_Y4_N0
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

-- Location: FF_X47_Y4_N1
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

-- Location: LCCOMB_X47_Y4_N18
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

-- Location: FF_X47_Y4_N19
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

-- Location: LCCOMB_X47_Y4_N10
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

-- Location: FF_X47_Y4_N11
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

-- Location: LCCOMB_X47_Y4_N20
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

-- Location: FF_X47_Y4_N21
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

-- Location: LCCOMB_X47_Y4_N4
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

-- Location: FF_X47_Y4_N5
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

-- Location: LCCOMB_X38_Y35_N24
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

-- Location: FF_X38_Y35_N25
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

-- Location: LCCOMB_X38_Y35_N0
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

-- Location: FF_X38_Y35_N1
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

-- Location: LCCOMB_X38_Y35_N10
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

-- Location: FF_X38_Y35_N11
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

-- Location: LCCOMB_X38_Y35_N2
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

-- Location: FF_X38_Y35_N3
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

-- Location: LCCOMB_X38_Y35_N12
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

-- Location: FF_X38_Y35_N13
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

-- Location: LCCOMB_X38_Y35_N28
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

-- Location: FF_X38_Y35_N29
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

-- Location: LCCOMB_X38_Y35_N30
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

-- Location: FF_X38_Y35_N31
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

-- Location: FF_X38_Y35_N15
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

-- Location: FF_X38_Y35_N17
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

-- Location: LCCOMB_X38_Y35_N8
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

-- Location: FF_X38_Y35_N9
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

-- Location: LCCOMB_X38_Y35_N18
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

-- Location: FF_X38_Y35_N19
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

-- Location: LCCOMB_X38_Y35_N26
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

-- Location: FF_X38_Y35_N27
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

-- Location: LCCOMB_X38_Y35_N20
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

-- Location: FF_X38_Y35_N21
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

-- Location: LCCOMB_X38_Y35_N4
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

-- Location: FF_X38_Y35_N5
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

-- Location: LCCOMB_X38_Y35_N6
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

-- Location: FF_X38_Y35_N7
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

-- Location: LCCOMB_X38_Y35_N22
\og|rgb_leds[24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[24]~feeder_combout\ = \og|sig_rgb_leds_out\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(24),
	combout => \og|rgb_leds[24]~feeder_combout\);

-- Location: FF_X38_Y35_N23
\og|rgb_leds[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[24]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(24));

-- Location: LCCOMB_X31_Y4_N16
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

-- Location: FF_X31_Y4_N17
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

-- Location: LCCOMB_X31_Y4_N8
\og|rgb_leds[25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[25]~feeder_combout\ = \og|sig_rgb_leds_out\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(25),
	combout => \og|rgb_leds[25]~feeder_combout\);

-- Location: FF_X31_Y4_N9
\og|rgb_leds[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[25]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(25));

-- Location: LCCOMB_X31_Y4_N18
\og|sig_rgb_leds_out[26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[26]~feeder_combout\ = \og|sig_rgb_leds_out\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(25),
	combout => \og|sig_rgb_leds_out[26]~feeder_combout\);

-- Location: FF_X31_Y4_N19
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

-- Location: LCCOMB_X31_Y4_N2
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

-- Location: FF_X31_Y4_N3
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

-- Location: LCCOMB_X31_Y4_N28
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

-- Location: FF_X31_Y4_N29
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

-- Location: LCCOMB_X31_Y4_N4
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

-- Location: FF_X31_Y4_N5
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

-- Location: LCCOMB_X31_Y4_N14
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

-- Location: FF_X31_Y4_N15
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

-- Location: FF_X31_Y4_N31
\og|rgb_leds[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(28),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(28));

-- Location: FF_X31_Y4_N1
\og|sig_rgb_leds_out[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(28),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(29));

-- Location: LCCOMB_X31_Y4_N24
\og|rgb_leds[29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[29]~feeder_combout\ = \og|sig_rgb_leds_out\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(29),
	combout => \og|rgb_leds[29]~feeder_combout\);

-- Location: FF_X31_Y4_N25
\og|rgb_leds[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[29]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(29));

-- Location: LCCOMB_X31_Y4_N10
\og|sig_rgb_leds_out[30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[30]~feeder_combout\ = \og|sig_rgb_leds_out\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(29),
	combout => \og|sig_rgb_leds_out[30]~feeder_combout\);

-- Location: FF_X31_Y4_N11
\og|sig_rgb_leds_out[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[30]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(30));

-- Location: LCCOMB_X31_Y4_N26
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

-- Location: FF_X31_Y4_N27
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

-- Location: LCCOMB_X31_Y4_N12
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

-- Location: FF_X31_Y4_N13
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

-- Location: LCCOMB_X31_Y4_N20
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

-- Location: FF_X31_Y4_N21
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

-- Location: LCCOMB_X31_Y4_N6
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

-- Location: FF_X31_Y4_N7
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

-- Location: LCCOMB_X31_Y4_N22
\og|rgb_leds[32]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[32]~feeder_combout\ = \og|sig_rgb_leds_out\(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(32),
	combout => \og|rgb_leds[32]~feeder_combout\);

-- Location: FF_X31_Y4_N23
\og|rgb_leds[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[32]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(32));

-- Location: FF_X36_Y4_N25
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

-- Location: LCCOMB_X36_Y4_N0
\og|rgb_leds[33]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[33]~feeder_combout\ = \og|sig_rgb_leds_out\(33)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(33),
	combout => \og|rgb_leds[33]~feeder_combout\);

-- Location: FF_X36_Y4_N1
\og|rgb_leds[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[33]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(33));

-- Location: LCCOMB_X36_Y4_N2
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

-- Location: FF_X36_Y4_N3
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

-- Location: LCCOMB_X36_Y4_N18
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

-- Location: FF_X36_Y4_N19
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

-- Location: LCCOMB_X36_Y4_N4
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

-- Location: FF_X36_Y4_N5
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

-- Location: FF_X36_Y4_N29
\og|rgb_leds[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(35),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(35));

-- Location: FF_X36_Y4_N31
\og|sig_rgb_leds_out[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(35),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(36));

-- Location: FF_X36_Y4_N23
\og|rgb_leds[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(36),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(36));

-- Location: FF_X36_Y4_N9
\og|sig_rgb_leds_out[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(36),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(37));

-- Location: FF_X36_Y4_N17
\og|rgb_leds[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(37),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(37));

-- Location: FF_X36_Y4_N11
\og|sig_rgb_leds_out[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(37),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(38));

-- Location: LCCOMB_X36_Y4_N26
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

-- Location: FF_X36_Y4_N27
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

-- Location: LCCOMB_X36_Y4_N12
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

-- Location: FF_X36_Y4_N13
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

-- Location: LCCOMB_X36_Y4_N20
\og|rgb_leds[39]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[39]~feeder_combout\ = \og|sig_rgb_leds_out\(39)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(39),
	combout => \og|rgb_leds[39]~feeder_combout\);

-- Location: FF_X36_Y4_N21
\og|rgb_leds[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[39]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(39));

-- Location: LCCOMB_X36_Y4_N6
\og|sig_rgb_leds_out[40]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[40]~feeder_combout\ = \og|sig_rgb_leds_out\(39)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(39),
	combout => \og|sig_rgb_leds_out[40]~feeder_combout\);

-- Location: FF_X36_Y4_N7
\og|sig_rgb_leds_out[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[40]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(40));

-- Location: LCCOMB_X36_Y4_N14
\og|rgb_leds[40]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[40]~feeder_combout\ = \og|sig_rgb_leds_out\(40)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(40),
	combout => \og|rgb_leds[40]~feeder_combout\);

-- Location: FF_X36_Y4_N15
\og|rgb_leds[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[40]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(40));

-- Location: FF_X47_Y4_N15
\og|sig_rgb_leds_out[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(40),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(41));

-- Location: LCCOMB_X49_Y4_N24
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

-- Location: FF_X49_Y4_N25
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

-- Location: LCCOMB_X49_Y4_N10
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

-- Location: FF_X49_Y4_N11
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

-- Location: LCCOMB_X49_Y4_N18
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

-- Location: FF_X49_Y4_N19
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

-- Location: LCCOMB_X49_Y4_N12
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

-- Location: FF_X49_Y4_N13
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

-- Location: LCCOMB_X49_Y4_N20
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

-- Location: FF_X49_Y4_N21
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

-- Location: LCCOMB_X49_Y4_N6
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

-- Location: FF_X49_Y4_N7
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

-- Location: LCCOMB_X49_Y4_N22
\og|rgb_leds[44]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[44]~feeder_combout\ = \og|sig_rgb_leds_out\(44)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(44),
	combout => \og|rgb_leds[44]~feeder_combout\);

-- Location: FF_X49_Y4_N23
\og|rgb_leds[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[44]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(44));

-- Location: LCCOMB_X49_Y4_N16
\og|sig_rgb_leds_out[45]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[45]~feeder_combout\ = \og|sig_rgb_leds_out\(44)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(44),
	combout => \og|sig_rgb_leds_out[45]~feeder_combout\);

-- Location: FF_X49_Y4_N17
\og|sig_rgb_leds_out[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[45]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(45));

-- Location: LCCOMB_X49_Y4_N0
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

-- Location: FF_X49_Y4_N1
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

-- Location: LCCOMB_X49_Y4_N2
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

-- Location: FF_X49_Y4_N3
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

-- Location: LCCOMB_X49_Y4_N26
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

-- Location: FF_X49_Y4_N27
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

-- Location: LCCOMB_X49_Y4_N28
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

-- Location: FF_X49_Y4_N29
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

-- Location: LCCOMB_X49_Y4_N4
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

-- Location: FF_X49_Y4_N5
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

-- Location: LCCOMB_X49_Y4_N14
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

-- Location: FF_X49_Y4_N15
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

-- Location: FF_X49_Y4_N31
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

-- Location: LCCOMB_X50_Y4_N16
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

-- Location: FF_X50_Y4_N17
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

-- Location: LCCOMB_X50_Y4_N18
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

-- Location: FF_X50_Y4_N19
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

-- Location: LCCOMB_X50_Y4_N10
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

-- Location: FF_X50_Y4_N11
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

-- Location: LCCOMB_X50_Y4_N12
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

-- Location: FF_X50_Y4_N13
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

-- Location: LCCOMB_X50_Y4_N4
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

-- Location: FF_X50_Y4_N5
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

-- Location: FF_X50_Y4_N23
\og|rgb_leds[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(51),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(51));

-- Location: FF_X50_Y4_N31
\og|sig_rgb_leds_out[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(51),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(52));

-- Location: FF_X50_Y4_N9
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

-- Location: FF_X50_Y4_N1
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

-- Location: FF_X51_Y4_N9
\og|rgb_leds[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(53),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(53));

-- Location: LCCOMB_X50_Y4_N2
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

-- Location: FF_X50_Y4_N3
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

-- Location: LCCOMB_X50_Y4_N26
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

-- Location: FF_X50_Y4_N27
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

-- Location: LCCOMB_X50_Y4_N28
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

-- Location: FF_X50_Y4_N29
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

-- Location: LCCOMB_X50_Y4_N20
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

-- Location: FF_X50_Y4_N21
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

-- Location: LCCOMB_X50_Y4_N6
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

-- Location: FF_X50_Y4_N7
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

-- Location: LCCOMB_X50_Y4_N14
\og|rgb_leds[56]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[56]~feeder_combout\ = \og|sig_rgb_leds_out\(56)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(56),
	combout => \og|rgb_leds[56]~feeder_combout\);

-- Location: FF_X50_Y4_N15
\og|rgb_leds[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[56]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(56));

-- Location: LCCOMB_X32_Y4_N16
\og|sig_rgb_leds_out[57]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[57]~feeder_combout\ = \og|sig_rgb_leds_out\(56)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(56),
	combout => \og|sig_rgb_leds_out[57]~feeder_combout\);

-- Location: FF_X32_Y4_N17
\og|sig_rgb_leds_out[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[57]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(57));

-- Location: LCCOMB_X32_Y4_N24
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

-- Location: FF_X32_Y4_N25
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

-- Location: LCCOMB_X32_Y4_N10
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

-- Location: FF_X32_Y4_N11
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

-- Location: LCCOMB_X32_Y4_N2
\og|rgb_leds[58]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[58]~feeder_combout\ = \og|sig_rgb_leds_out\(58)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(58),
	combout => \og|rgb_leds[58]~feeder_combout\);

-- Location: FF_X32_Y4_N3
\og|rgb_leds[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[58]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(58));

-- Location: LCCOMB_X32_Y4_N28
\og|sig_rgb_leds_out[59]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[59]~feeder_combout\ = \og|sig_rgb_leds_out\(58)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(58),
	combout => \og|sig_rgb_leds_out[59]~feeder_combout\);

-- Location: FF_X32_Y4_N29
\og|sig_rgb_leds_out[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[59]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(59));

-- Location: LCCOMB_X32_Y4_N4
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

-- Location: FF_X32_Y4_N5
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

-- Location: LCCOMB_X32_Y4_N30
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

-- Location: FF_X32_Y4_N31
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

-- Location: FF_X32_Y4_N15
\og|rgb_leds[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(60),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(60));

-- Location: FF_X32_Y4_N1
\og|sig_rgb_leds_out[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(60),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(61));

-- Location: LCCOMB_X32_Y4_N8
\og|rgb_leds[61]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[61]~feeder_combout\ = \og|sig_rgb_leds_out\(61)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(61),
	combout => \og|rgb_leds[61]~feeder_combout\);

-- Location: FF_X32_Y4_N9
\og|rgb_leds[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[61]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(61));

-- Location: LCCOMB_X32_Y4_N18
\og|sig_rgb_leds_out[62]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[62]~feeder_combout\ = \og|sig_rgb_leds_out\(61)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(61),
	combout => \og|sig_rgb_leds_out[62]~feeder_combout\);

-- Location: FF_X32_Y4_N19
\og|sig_rgb_leds_out[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[62]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(62));

-- Location: LCCOMB_X32_Y4_N26
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

-- Location: FF_X32_Y4_N27
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

-- Location: LCCOMB_X32_Y4_N12
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

-- Location: FF_X32_Y4_N13
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

-- Location: LCCOMB_X32_Y4_N20
\og|rgb_leds[63]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[63]~feeder_combout\ = \og|sig_rgb_leds_out\(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(63),
	combout => \og|rgb_leds[63]~feeder_combout\);

-- Location: FF_X32_Y4_N21
\og|rgb_leds[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[63]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(63));

-- Location: LCCOMB_X32_Y4_N22
\og|sig_rgb_leds_out[64]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[64]~feeder_combout\ = \og|sig_rgb_leds_out\(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(63),
	combout => \og|sig_rgb_leds_out[64]~feeder_combout\);

-- Location: FF_X32_Y4_N23
\og|sig_rgb_leds_out[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[64]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(64));

-- Location: FF_X32_Y4_N7
\og|rgb_leds[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(64),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(64));

-- Location: LCCOMB_X31_Y35_N24
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

-- Location: FF_X31_Y35_N25
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

-- Location: LCCOMB_X31_Y35_N0
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

-- Location: FF_X31_Y35_N1
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

-- Location: LCCOMB_X31_Y35_N26
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

-- Location: FF_X31_Y35_N27
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

-- Location: FF_X31_Y35_N11
\og|rgb_leds[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(66),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(66));

-- Location: FF_X31_Y35_N29
\og|sig_rgb_leds_out[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(66),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(67));

-- Location: LCCOMB_X31_Y35_N4
\og|rgb_leds[67]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[67]~feeder_combout\ = \og|sig_rgb_leds_out\(67)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(67),
	combout => \og|rgb_leds[67]~feeder_combout\);

-- Location: FF_X31_Y35_N5
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

-- Location: LCCOMB_X31_Y35_N22
\og|sig_rgb_leds_out[68]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[68]~feeder_combout\ = \og|sig_rgb_leds_out\(67)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(67),
	combout => \og|sig_rgb_leds_out[68]~feeder_combout\);

-- Location: FF_X31_Y35_N23
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

-- Location: FF_X31_Y35_N31
\og|rgb_leds[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(68),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(68));

-- Location: FF_X31_Y35_N17
\og|sig_rgb_leds_out[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(68),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(69));

-- Location: LCCOMB_X31_Y35_N8
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

-- Location: FF_X31_Y35_N9
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

-- Location: LCCOMB_X31_Y35_N18
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

-- Location: FF_X31_Y35_N19
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

-- Location: LCCOMB_X31_Y35_N2
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

-- Location: FF_X31_Y35_N3
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

-- Location: LCCOMB_X31_Y35_N20
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

-- Location: FF_X31_Y35_N21
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

-- Location: LCCOMB_X31_Y35_N12
\og|rgb_leds[71]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[71]~feeder_combout\ = \og|sig_rgb_leds_out\(71)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(71),
	combout => \og|rgb_leds[71]~feeder_combout\);

-- Location: FF_X31_Y35_N13
\og|rgb_leds[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[71]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(71));

-- Location: LCCOMB_X31_Y35_N14
\og|sig_rgb_leds_out[72]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[72]~feeder_combout\ = \og|sig_rgb_leds_out\(71)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(71),
	combout => \og|sig_rgb_leds_out[72]~feeder_combout\);

-- Location: FF_X31_Y35_N15
\og|sig_rgb_leds_out[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[72]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(72));

-- Location: FF_X31_Y35_N7
\og|rgb_leds[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(72),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(72));

-- Location: LCCOMB_X4_Y12_N24
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

-- Location: FF_X4_Y12_N25
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

-- Location: LCCOMB_X4_Y12_N8
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

-- Location: FF_X4_Y12_N9
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

-- Location: LCCOMB_X4_Y12_N10
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

-- Location: FF_X4_Y12_N11
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

-- Location: LCCOMB_X4_Y12_N26
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

-- Location: FF_X4_Y12_N27
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

-- Location: LCCOMB_X4_Y12_N20
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

-- Location: FF_X4_Y12_N21
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

-- Location: LCCOMB_X4_Y12_N12
\og|rgb_leds[75]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[75]~feeder_combout\ = \og|sig_rgb_leds_out\(75)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(75),
	combout => \og|rgb_leds[75]~feeder_combout\);

-- Location: FF_X4_Y12_N13
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

-- Location: LCCOMB_X4_Y12_N30
\og|sig_rgb_leds_out[76]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[76]~feeder_combout\ = \og|sig_rgb_leds_out\(75)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(75),
	combout => \og|sig_rgb_leds_out[76]~feeder_combout\);

-- Location: FF_X4_Y12_N31
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

-- Location: FF_X4_Y12_N23
\og|rgb_leds[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(76),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(76));

-- Location: FF_X4_Y12_N17
\og|sig_rgb_leds_out[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(76),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(77));

-- Location: LCCOMB_X4_Y12_N0
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

-- Location: FF_X4_Y12_N1
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

-- Location: LCCOMB_X4_Y12_N18
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

-- Location: FF_X4_Y12_N19
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

-- Location: LCCOMB_X4_Y12_N2
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

-- Location: FF_X4_Y12_N3
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

-- Location: LCCOMB_X4_Y12_N28
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

-- Location: FF_X4_Y12_N29
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

-- Location: LCCOMB_X4_Y12_N4
\og|rgb_leds[79]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[79]~feeder_combout\ = \og|sig_rgb_leds_out\(79)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(79),
	combout => \og|rgb_leds[79]~feeder_combout\);

-- Location: FF_X4_Y12_N5
\og|rgb_leds[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[79]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(79));

-- Location: LCCOMB_X4_Y12_N6
\og|sig_rgb_leds_out[80]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[80]~feeder_combout\ = \og|sig_rgb_leds_out\(79)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(79),
	combout => \og|sig_rgb_leds_out[80]~feeder_combout\);

-- Location: FF_X4_Y12_N7
\og|sig_rgb_leds_out[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[80]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(80));

-- Location: LCCOMB_X4_Y12_N14
\og|rgb_leds[80]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[80]~feeder_combout\ = \og|sig_rgb_leds_out\(80)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(80),
	combout => \og|rgb_leds[80]~feeder_combout\);

-- Location: FF_X4_Y12_N15
\og|rgb_leds[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[80]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(80));

-- Location: LCCOMB_X38_Y4_N16
\og|sig_rgb_leds_out[81]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[81]~feeder_combout\ = \og|sig_rgb_leds_out\(80)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \og|sig_rgb_leds_out\(80),
	combout => \og|sig_rgb_leds_out[81]~feeder_combout\);

-- Location: FF_X38_Y4_N17
\og|sig_rgb_leds_out[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[81]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(81));

-- Location: LCCOMB_X38_Y4_N8
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

-- Location: FF_X38_Y4_N9
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

-- Location: LCCOMB_X38_Y4_N10
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

-- Location: FF_X38_Y4_N11
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

-- Location: LCCOMB_X38_Y4_N2
\og|rgb_leds[82]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[82]~feeder_combout\ = \og|sig_rgb_leds_out\(82)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(82),
	combout => \og|rgb_leds[82]~feeder_combout\);

-- Location: FF_X38_Y4_N3
\og|rgb_leds[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[82]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(82));

-- Location: LCCOMB_X38_Y4_N20
\og|sig_rgb_leds_out[83]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[83]~feeder_combout\ = \og|sig_rgb_leds_out\(82)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(82),
	combout => \og|sig_rgb_leds_out[83]~feeder_combout\);

-- Location: FF_X38_Y4_N21
\og|sig_rgb_leds_out[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[83]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(83));

-- Location: LCCOMB_X38_Y4_N28
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

-- Location: FF_X38_Y4_N29
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

-- Location: LCCOMB_X38_Y4_N30
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

-- Location: FF_X38_Y4_N31
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

-- Location: FF_X38_Y4_N15
\og|rgb_leds[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(84),
	sload => VCC,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(84));

-- Location: FF_X38_Y4_N1
\og|sig_rgb_leds_out[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \og|sig_rgb_leds_out\(84),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(85));

-- Location: LCCOMB_X38_Y4_N24
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

-- Location: FF_X38_Y4_N25
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

-- Location: LCCOMB_X38_Y4_N26
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

-- Location: FF_X38_Y4_N27
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

-- Location: FF_X38_Y4_N19
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

-- Location: FF_X38_Y4_N13
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

-- Location: LCCOMB_X38_Y4_N4
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

-- Location: FF_X38_Y4_N5
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

-- Location: LCCOMB_X38_Y4_N6
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

-- Location: FF_X38_Y4_N7
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

-- Location: LCCOMB_X38_Y4_N22
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

-- Location: FF_X38_Y4_N23
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

-- Location: LCCOMB_X57_Y4_N30
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

-- Location: FF_X57_Y4_N31
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

-- Location: FF_X57_Y4_N9
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

-- Location: FF_X57_Y4_N17
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

-- Location: LCCOMB_X57_Y4_N18
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

-- Location: FF_X57_Y4_N19
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

-- Location: LCCOMB_X57_Y4_N2
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

-- Location: FF_X57_Y4_N3
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

-- Location: LCCOMB_X57_Y4_N20
\og|rgb_leds[91]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[91]~feeder_combout\ = \og|sig_rgb_leds_out\(91)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(91),
	combout => \og|rgb_leds[91]~feeder_combout\);

-- Location: FF_X57_Y4_N21
\og|rgb_leds[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[91]~feeder_combout\,
	ena => \og|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|rgb_leds\(91));

-- Location: LCCOMB_X57_Y4_N28
\og|sig_rgb_leds_out[92]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|sig_rgb_leds_out[92]~feeder_combout\ = \og|sig_rgb_leds_out\(91)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(91),
	combout => \og|sig_rgb_leds_out[92]~feeder_combout\);

-- Location: FF_X57_Y4_N29
\og|sig_rgb_leds_out[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|sig_rgb_leds_out[92]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \og|sig_rgb_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \og|sig_rgb_leds_out\(92));

-- Location: LCCOMB_X57_Y4_N14
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

-- Location: FF_X57_Y4_N15
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

-- Location: LCCOMB_X57_Y4_N6
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

-- Location: FF_X57_Y4_N7
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

-- Location: LCCOMB_X57_Y4_N0
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

-- Location: FF_X57_Y4_N1
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

-- Location: LCCOMB_X57_Y4_N24
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

-- Location: FF_X57_Y4_N25
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

-- Location: LCCOMB_X57_Y4_N26
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

-- Location: FF_X57_Y4_N27
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

-- Location: LCCOMB_X57_Y4_N10
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

-- Location: FF_X57_Y4_N11
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

-- Location: LCCOMB_X57_Y4_N4
\og|rgb_leds[95]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \og|rgb_leds[95]~feeder_combout\ = \og|sig_rgb_leds_out\(95)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \og|sig_rgb_leds_out\(95),
	combout => \og|rgb_leds[95]~feeder_combout\);

-- Location: FF_X57_Y4_N5
\og|rgb_leds[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \og|rgb_leds[95]~feeder_combout\,
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
END structure;


