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

-- DATE "08/13/2023 16:26:55"

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

ENTITY 	RGB IS
    PORT (
	resetn : IN std_logic;
	sysclk : IN std_logic;
	load_leds : IN std_logic;
	green_leds : IN std_logic_vector(7 DOWNTO 0);
	rgb_leds : IN std_logic_vector(95 DOWNTO 0);
	OB_LED_RGB_DIN : OUT std_logic;
	LED_1 : OUT std_logic;
	LED_2 : OUT std_logic;
	LED_3 : OUT std_logic
	);
END RGB;

-- Design Ports Information
-- green_leds[3]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_leds[4]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_leds[5]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_leds[6]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_leds[7]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OB_LED_RGB_DIN	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_1	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_2	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_3	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sysclk	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_leds[0]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_leds	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_leds[1]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_leds[2]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[95]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[94]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[93]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[92]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[91]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[90]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[89]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[88]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[87]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[86]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[85]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[84]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[83]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[82]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[81]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[80]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[79]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[78]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[77]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[76]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[75]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[74]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[73]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[72]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[71]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[70]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[69]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[68]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[67]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[66]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[65]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[64]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[63]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[62]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[61]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[60]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[59]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[58]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[57]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[56]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[55]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[54]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[53]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[52]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[51]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[50]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[49]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[48]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[47]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[46]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[45]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[44]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[43]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[42]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[41]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[40]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[39]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[38]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[37]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[36]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[35]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[34]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[33]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[32]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[31]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[30]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[29]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[28]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[27]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[26]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[25]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[24]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[23]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[22]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[21]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[20]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[19]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[18]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[17]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[16]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[15]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[14]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[13]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[12]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[11]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[10]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[9]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[8]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[7]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[6]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[5]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[4]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[3]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[2]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[1]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb_leds[0]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RGB IS
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
SIGNAL ww_load_leds : std_logic;
SIGNAL ww_green_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rgb_leds : std_logic_vector(95 DOWNTO 0);
SIGNAL ww_OB_LED_RGB_DIN : std_logic;
SIGNAL ww_LED_1 : std_logic;
SIGNAL ww_LED_2 : std_logic;
SIGNAL ww_LED_3 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \resetn~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sysclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \green_leds[3]~input_o\ : std_logic;
SIGNAL \green_leds[4]~input_o\ : std_logic;
SIGNAL \green_leds[5]~input_o\ : std_logic;
SIGNAL \green_leds[6]~input_o\ : std_logic;
SIGNAL \green_leds[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \OB_LED_RGB_DIN~output_o\ : std_logic;
SIGNAL \LED_1~output_o\ : std_logic;
SIGNAL \LED_2~output_o\ : std_logic;
SIGNAL \LED_3~output_o\ : std_logic;
SIGNAL \sysclk~input_o\ : std_logic;
SIGNAL \sysclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Selector203~0_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \resetn~inputclkctrl_outclk\ : std_logic;
SIGNAL \sig_cnt_delay~8_combout\ : std_logic;
SIGNAL \set_leds:sig_cnt_delay[3]~q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \set_leds:sig_cnt_delay[0]~q\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \set_leds:sig_cnt_delay[1]~q\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \set_leds:sig_cnt_delay[2]~q\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \set_leds:sig_cnt_delay[5]~q\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \sig_cnt_delay~7_combout\ : std_logic;
SIGNAL \set_leds:sig_cnt_delay[4]~q\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \set_leds:sig_cnt_delay[6]~q\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \sig_cnt_delay~5_combout\ : std_logic;
SIGNAL \set_leds:sig_cnt_delay[9]~q\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \sig_cnt_delay~6_combout\ : std_logic;
SIGNAL \set_leds:sig_cnt_delay[7]~q\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \set_leds:sig_cnt_delay[8]~q\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \set_leds:sig_cnt_delay[10]~q\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \sig_cnt_delay~4_combout\ : std_logic;
SIGNAL \set_leds:sig_cnt_delay[11]~q\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \sig_cnt_delay~9_combout\ : std_logic;
SIGNAL \set_leds:sig_cnt_delay[12]~q\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \sig_cnt_delay~10_combout\ : std_logic;
SIGNAL \set_leds:sig_cnt_delay[13]~q\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \state_leds.s3~q\ : std_logic;
SIGNAL \state_leds.s4~feeder_combout\ : std_logic;
SIGNAL \state_leds.s4~q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \sig_cnt_loop~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \sig_cnt_loop~4_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \sig_cnt_loop~3_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Equal1~24_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Equal1~23_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Equal1~22_combout\ : std_logic;
SIGNAL \Add1~63\ : std_logic;
SIGNAL \Add1~64_combout\ : std_logic;
SIGNAL \Add1~65\ : std_logic;
SIGNAL \Add1~66_combout\ : std_logic;
SIGNAL \Add1~67\ : std_logic;
SIGNAL \Add1~68_combout\ : std_logic;
SIGNAL \Add1~69\ : std_logic;
SIGNAL \Add1~70_combout\ : std_logic;
SIGNAL \Equal1~21_combout\ : std_logic;
SIGNAL \Equal1~25_combout\ : std_logic;
SIGNAL \Equal1~29_combout\ : std_logic;
SIGNAL \Equal1~28_combout\ : std_logic;
SIGNAL \Equal1~30_combout\ : std_logic;
SIGNAL \Equal1~27_combout\ : std_logic;
SIGNAL \Equal1~31_combout\ : std_logic;
SIGNAL \Equal1~26_combout\ : std_logic;
SIGNAL \Add1~71\ : std_logic;
SIGNAL \Add1~72_combout\ : std_logic;
SIGNAL \Add1~73\ : std_logic;
SIGNAL \Add1~74_combout\ : std_logic;
SIGNAL \Add1~75\ : std_logic;
SIGNAL \Add1~76_combout\ : std_logic;
SIGNAL \Add1~77\ : std_logic;
SIGNAL \Add1~78_combout\ : std_logic;
SIGNAL \Add1~79\ : std_logic;
SIGNAL \Add1~80_combout\ : std_logic;
SIGNAL \Add1~81\ : std_logic;
SIGNAL \Add1~82_combout\ : std_logic;
SIGNAL \Add1~83\ : std_logic;
SIGNAL \Add1~84_combout\ : std_logic;
SIGNAL \Add1~85\ : std_logic;
SIGNAL \Add1~86_combout\ : std_logic;
SIGNAL \Equal1~17_combout\ : std_logic;
SIGNAL \Add1~87\ : std_logic;
SIGNAL \Add1~88_combout\ : std_logic;
SIGNAL \Add1~89\ : std_logic;
SIGNAL \Add1~90_combout\ : std_logic;
SIGNAL \Add1~91\ : std_logic;
SIGNAL \Add1~92_combout\ : std_logic;
SIGNAL \Add1~93\ : std_logic;
SIGNAL \Add1~94_combout\ : std_logic;
SIGNAL \Add1~95\ : std_logic;
SIGNAL \Add1~96_combout\ : std_logic;
SIGNAL \Add1~97\ : std_logic;
SIGNAL \Add1~98_combout\ : std_logic;
SIGNAL \Add1~99\ : std_logic;
SIGNAL \Add1~100_combout\ : std_logic;
SIGNAL \Add1~101\ : std_logic;
SIGNAL \Add1~102_combout\ : std_logic;
SIGNAL \Equal1~15_combout\ : std_logic;
SIGNAL \Equal1~16_combout\ : std_logic;
SIGNAL \Equal1~18_combout\ : std_logic;
SIGNAL \Equal1~19_combout\ : std_logic;
SIGNAL \Add1~103\ : std_logic;
SIGNAL \Add1~104_combout\ : std_logic;
SIGNAL \Add1~105\ : std_logic;
SIGNAL \Add1~106_combout\ : std_logic;
SIGNAL \Add1~107\ : std_logic;
SIGNAL \Add1~108_combout\ : std_logic;
SIGNAL \Add1~109\ : std_logic;
SIGNAL \Add1~110_combout\ : std_logic;
SIGNAL \Add1~111\ : std_logic;
SIGNAL \Add1~112_combout\ : std_logic;
SIGNAL \Add1~113\ : std_logic;
SIGNAL \Add1~114_combout\ : std_logic;
SIGNAL \Add1~115\ : std_logic;
SIGNAL \Add1~116_combout\ : std_logic;
SIGNAL \Add1~117\ : std_logic;
SIGNAL \Add1~118_combout\ : std_logic;
SIGNAL \Add1~119\ : std_logic;
SIGNAL \Add1~120_combout\ : std_logic;
SIGNAL \Add1~121\ : std_logic;
SIGNAL \Add1~122_combout\ : std_logic;
SIGNAL \Add1~123\ : std_logic;
SIGNAL \Add1~124_combout\ : std_logic;
SIGNAL \Add1~125\ : std_logic;
SIGNAL \Add1~126_combout\ : std_logic;
SIGNAL \Add1~127\ : std_logic;
SIGNAL \Add1~128_combout\ : std_logic;
SIGNAL \Add1~129\ : std_logic;
SIGNAL \Add1~130_combout\ : std_logic;
SIGNAL \Add1~131\ : std_logic;
SIGNAL \Add1~132_combout\ : std_logic;
SIGNAL \Add1~133\ : std_logic;
SIGNAL \Add1~134_combout\ : std_logic;
SIGNAL \Add1~135\ : std_logic;
SIGNAL \Add1~136_combout\ : std_logic;
SIGNAL \Add1~137\ : std_logic;
SIGNAL \Add1~138_combout\ : std_logic;
SIGNAL \Add1~139\ : std_logic;
SIGNAL \Add1~140_combout\ : std_logic;
SIGNAL \Add1~141\ : std_logic;
SIGNAL \Add1~142_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Add1~143\ : std_logic;
SIGNAL \Add1~144_combout\ : std_logic;
SIGNAL \Add1~145\ : std_logic;
SIGNAL \Add1~146_combout\ : std_logic;
SIGNAL \Add1~147\ : std_logic;
SIGNAL \Add1~148_combout\ : std_logic;
SIGNAL \Add1~149\ : std_logic;
SIGNAL \Add1~150_combout\ : std_logic;
SIGNAL \Add1~151\ : std_logic;
SIGNAL \Add1~152_combout\ : std_logic;
SIGNAL \Add1~153\ : std_logic;
SIGNAL \Add1~154_combout\ : std_logic;
SIGNAL \Add1~155\ : std_logic;
SIGNAL \Add1~156_combout\ : std_logic;
SIGNAL \Add1~157\ : std_logic;
SIGNAL \Add1~158_combout\ : std_logic;
SIGNAL \Add1~159\ : std_logic;
SIGNAL \Add1~160_combout\ : std_logic;
SIGNAL \Add1~161\ : std_logic;
SIGNAL \Add1~162_combout\ : std_logic;
SIGNAL \Add1~163\ : std_logic;
SIGNAL \Add1~164_combout\ : std_logic;
SIGNAL \Add1~165\ : std_logic;
SIGNAL \Add1~166_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Add1~167\ : std_logic;
SIGNAL \Add1~168_combout\ : std_logic;
SIGNAL \Add1~169\ : std_logic;
SIGNAL \Add1~170_combout\ : std_logic;
SIGNAL \Add1~171\ : std_logic;
SIGNAL \Add1~172_combout\ : std_logic;
SIGNAL \Add1~173\ : std_logic;
SIGNAL \Add1~174_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Add1~175\ : std_logic;
SIGNAL \Add1~176_combout\ : std_logic;
SIGNAL \Add1~177\ : std_logic;
SIGNAL \Add1~178_combout\ : std_logic;
SIGNAL \Add1~179\ : std_logic;
SIGNAL \Add1~180_combout\ : std_logic;
SIGNAL \Add1~181\ : std_logic;
SIGNAL \Add1~182_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Add1~183\ : std_logic;
SIGNAL \Add1~184_combout\ : std_logic;
SIGNAL \Add1~185\ : std_logic;
SIGNAL \Add1~186_combout\ : std_logic;
SIGNAL \Add1~187\ : std_logic;
SIGNAL \Add1~188_combout\ : std_logic;
SIGNAL \Add1~189\ : std_logic;
SIGNAL \Add1~190_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add1~191\ : std_logic;
SIGNAL \Add1~192_combout\ : std_logic;
SIGNAL \Add1~193\ : std_logic;
SIGNAL \Add1~194_combout\ : std_logic;
SIGNAL \Add1~195\ : std_logic;
SIGNAL \Add1~196_combout\ : std_logic;
SIGNAL \sig_cnt_loop~1_combout\ : std_logic;
SIGNAL \Add1~197\ : std_logic;
SIGNAL \Add1~198_combout\ : std_logic;
SIGNAL \sig_cnt_loop~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~13_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \Equal1~12_combout\ : std_logic;
SIGNAL \Equal1~11_combout\ : std_logic;
SIGNAL \Equal1~14_combout\ : std_logic;
SIGNAL \Equal1~20_combout\ : std_logic;
SIGNAL \Equal1~32_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state_leds.s0~q\ : std_logic;
SIGNAL \set_leds:sig_cnt_delay[14]~q\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \state_leds.s5~q\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \state_leds.s1~q\ : std_logic;
SIGNAL \load_leds~input_o\ : std_logic;
SIGNAL \Selector3~4_combout\ : std_logic;
SIGNAL \Selector3~5_combout\ : std_logic;
SIGNAL \Selector3~6_combout\ : std_logic;
SIGNAL \state_leds.s2~q\ : std_logic;
SIGNAL \rgb_leds[94]~input_o\ : std_logic;
SIGNAL \rgb_leds[92]~input_o\ : std_logic;
SIGNAL \rgb_leds[91]~input_o\ : std_logic;
SIGNAL \rgb_leds[90]~input_o\ : std_logic;
SIGNAL \rgb_leds[88]~input_o\ : std_logic;
SIGNAL \rgb_leds[87]~input_o\ : std_logic;
SIGNAL \rgb_leds[86]~input_o\ : std_logic;
SIGNAL \rgb_leds[85]~input_o\ : std_logic;
SIGNAL \rgb_leds[84]~input_o\ : std_logic;
SIGNAL \rgb_leds[81]~input_o\ : std_logic;
SIGNAL \rgb_leds[79]~input_o\ : std_logic;
SIGNAL \rgb_leds[78]~input_o\ : std_logic;
SIGNAL \rgb_leds[77]~input_o\ : std_logic;
SIGNAL \rgb_leds[76]~input_o\ : std_logic;
SIGNAL \rgb_leds[72]~input_o\ : std_logic;
SIGNAL \rgb_leds[70]~input_o\ : std_logic;
SIGNAL \rgb_leds[68]~input_o\ : std_logic;
SIGNAL \rgb_leds[66]~input_o\ : std_logic;
SIGNAL \rgb_leds[64]~input_o\ : std_logic;
SIGNAL \rgb_leds[63]~input_o\ : std_logic;
SIGNAL \rgb_leds[62]~input_o\ : std_logic;
SIGNAL \rgb_leds[61]~input_o\ : std_logic;
SIGNAL \rgb_leds[53]~input_o\ : std_logic;
SIGNAL \rgb_leds[50]~input_o\ : std_logic;
SIGNAL \rgb_leds[49]~input_o\ : std_logic;
SIGNAL \rgb_leds[48]~input_o\ : std_logic;
SIGNAL \rgb_leds[47]~input_o\ : std_logic;
SIGNAL \rgb_leds[44]~input_o\ : std_logic;
SIGNAL \rgb_leds[41]~input_o\ : std_logic;
SIGNAL \rgb_leds[39]~input_o\ : std_logic;
SIGNAL \rgb_leds[38]~input_o\ : std_logic;
SIGNAL \rgb_leds[36]~input_o\ : std_logic;
SIGNAL \rgb_leds[32]~input_o\ : std_logic;
SIGNAL \rgb_leds[30]~input_o\ : std_logic;
SIGNAL \rgb_leds[29]~input_o\ : std_logic;
SIGNAL \rgb_leds[28]~input_o\ : std_logic;
SIGNAL \rgb_leds[26]~input_o\ : std_logic;
SIGNAL \rgb_leds[24]~input_o\ : std_logic;
SIGNAL \rgb_leds[20]~input_o\ : std_logic;
SIGNAL \rgb_leds[19]~input_o\ : std_logic;
SIGNAL \rgb_leds[16]~input_o\ : std_logic;
SIGNAL \rgb_leds[14]~input_o\ : std_logic;
SIGNAL \rgb_leds[13]~input_o\ : std_logic;
SIGNAL \rgb_leds[12]~input_o\ : std_logic;
SIGNAL \rgb_leds[11]~input_o\ : std_logic;
SIGNAL \rgb_leds[10]~input_o\ : std_logic;
SIGNAL \rgb_leds[9]~input_o\ : std_logic;
SIGNAL \rgb_leds[6]~input_o\ : std_logic;
SIGNAL \rgb_leds[4]~input_o\ : std_logic;
SIGNAL \rgb_leds[3]~input_o\ : std_logic;
SIGNAL \sig_shift_led_rgb[94]~0_combout\ : std_logic;
SIGNAL \LED_1~1_combout\ : std_logic;
SIGNAL \rgb_leds[0]~input_o\ : std_logic;
SIGNAL \Selector107~0_combout\ : std_logic;
SIGNAL \rgb_leds[1]~input_o\ : std_logic;
SIGNAL \Selector106~0_combout\ : std_logic;
SIGNAL \rgb_leds[2]~input_o\ : std_logic;
SIGNAL \Selector105~0_combout\ : std_logic;
SIGNAL \Selector104~0_combout\ : std_logic;
SIGNAL \Selector103~0_combout\ : std_logic;
SIGNAL \rgb_leds[5]~input_o\ : std_logic;
SIGNAL \Selector102~0_combout\ : std_logic;
SIGNAL \Selector101~0_combout\ : std_logic;
SIGNAL \rgb_leds[7]~input_o\ : std_logic;
SIGNAL \Selector100~0_combout\ : std_logic;
SIGNAL \rgb_leds[8]~input_o\ : std_logic;
SIGNAL \Selector99~0_combout\ : std_logic;
SIGNAL \Selector98~0_combout\ : std_logic;
SIGNAL \Selector97~0_combout\ : std_logic;
SIGNAL \Selector96~0_combout\ : std_logic;
SIGNAL \Selector95~0_combout\ : std_logic;
SIGNAL \Selector94~0_combout\ : std_logic;
SIGNAL \Selector93~0_combout\ : std_logic;
SIGNAL \rgb_leds[15]~input_o\ : std_logic;
SIGNAL \Selector92~0_combout\ : std_logic;
SIGNAL \Selector91~0_combout\ : std_logic;
SIGNAL \rgb_leds[17]~input_o\ : std_logic;
SIGNAL \Selector90~0_combout\ : std_logic;
SIGNAL \rgb_leds[18]~input_o\ : std_logic;
SIGNAL \Selector89~0_combout\ : std_logic;
SIGNAL \Selector88~0_combout\ : std_logic;
SIGNAL \Selector87~0_combout\ : std_logic;
SIGNAL \rgb_leds[21]~input_o\ : std_logic;
SIGNAL \Selector86~0_combout\ : std_logic;
SIGNAL \rgb_leds[22]~input_o\ : std_logic;
SIGNAL \Selector85~0_combout\ : std_logic;
SIGNAL \rgb_leds[23]~input_o\ : std_logic;
SIGNAL \Selector84~0_combout\ : std_logic;
SIGNAL \Selector83~0_combout\ : std_logic;
SIGNAL \rgb_leds[25]~input_o\ : std_logic;
SIGNAL \Selector82~0_combout\ : std_logic;
SIGNAL \Selector81~0_combout\ : std_logic;
SIGNAL \rgb_leds[27]~input_o\ : std_logic;
SIGNAL \Selector80~0_combout\ : std_logic;
SIGNAL \Selector79~0_combout\ : std_logic;
SIGNAL \Selector78~0_combout\ : std_logic;
SIGNAL \Selector77~0_combout\ : std_logic;
SIGNAL \rgb_leds[31]~input_o\ : std_logic;
SIGNAL \Selector76~0_combout\ : std_logic;
SIGNAL \Selector75~0_combout\ : std_logic;
SIGNAL \rgb_leds[33]~input_o\ : std_logic;
SIGNAL \Selector74~0_combout\ : std_logic;
SIGNAL \rgb_leds[34]~input_o\ : std_logic;
SIGNAL \Selector73~0_combout\ : std_logic;
SIGNAL \rgb_leds[35]~input_o\ : std_logic;
SIGNAL \Selector72~0_combout\ : std_logic;
SIGNAL \Selector71~0_combout\ : std_logic;
SIGNAL \rgb_leds[37]~input_o\ : std_logic;
SIGNAL \Selector70~0_combout\ : std_logic;
SIGNAL \Selector69~0_combout\ : std_logic;
SIGNAL \Selector68~0_combout\ : std_logic;
SIGNAL \rgb_leds[40]~input_o\ : std_logic;
SIGNAL \Selector67~0_combout\ : std_logic;
SIGNAL \Selector66~0_combout\ : std_logic;
SIGNAL \rgb_leds[42]~input_o\ : std_logic;
SIGNAL \Selector65~0_combout\ : std_logic;
SIGNAL \rgb_leds[43]~input_o\ : std_logic;
SIGNAL \Selector64~0_combout\ : std_logic;
SIGNAL \Selector63~0_combout\ : std_logic;
SIGNAL \rgb_leds[45]~input_o\ : std_logic;
SIGNAL \Selector62~0_combout\ : std_logic;
SIGNAL \rgb_leds[46]~input_o\ : std_logic;
SIGNAL \Selector61~0_combout\ : std_logic;
SIGNAL \Selector60~0_combout\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \Selector58~0_combout\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \rgb_leds[51]~input_o\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \rgb_leds[52]~input_o\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \rgb_leds[54]~input_o\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \rgb_leds[55]~input_o\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \rgb_leds[56]~input_o\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \rgb_leds[57]~input_o\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \rgb_leds[58]~input_o\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \rgb_leds[59]~input_o\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \rgb_leds[60]~input_o\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \rgb_leds[65]~input_o\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \rgb_leds[67]~input_o\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \rgb_leds[69]~input_o\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \rgb_leds[71]~input_o\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \rgb_leds[73]~input_o\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \rgb_leds[74]~input_o\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \rgb_leds[75]~input_o\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \rgb_leds[80]~input_o\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \rgb_leds[82]~input_o\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \rgb_leds[83]~input_o\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \rgb_leds[89]~input_o\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \rgb_leds[93]~input_o\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \rgb_leds[95]~input_o\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \sig_bit~0_combout\ : std_logic;
SIGNAL \sig_bit~q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \state_leds.s6~q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \state_leds.s7~q\ : std_logic;
SIGNAL \Selector3~3_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Selector207~0_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Selector206~0_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Selector202~0_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \Add2~63\ : std_logic;
SIGNAL \Add2~64_combout\ : std_logic;
SIGNAL \Add2~65\ : std_logic;
SIGNAL \Add2~66_combout\ : std_logic;
SIGNAL \Add2~67\ : std_logic;
SIGNAL \Add2~68_combout\ : std_logic;
SIGNAL \Add2~69\ : std_logic;
SIGNAL \Add2~70_combout\ : std_logic;
SIGNAL \Add2~71\ : std_logic;
SIGNAL \Add2~72_combout\ : std_logic;
SIGNAL \Add2~73\ : std_logic;
SIGNAL \Add2~74_combout\ : std_logic;
SIGNAL \Add2~75\ : std_logic;
SIGNAL \Add2~76_combout\ : std_logic;
SIGNAL \Add2~77\ : std_logic;
SIGNAL \Add2~78_combout\ : std_logic;
SIGNAL \Add2~79\ : std_logic;
SIGNAL \Add2~80_combout\ : std_logic;
SIGNAL \Add2~81\ : std_logic;
SIGNAL \Add2~82_combout\ : std_logic;
SIGNAL \Add2~83\ : std_logic;
SIGNAL \Add2~84_combout\ : std_logic;
SIGNAL \Add2~85\ : std_logic;
SIGNAL \Add2~86_combout\ : std_logic;
SIGNAL \Add2~87\ : std_logic;
SIGNAL \Add2~88_combout\ : std_logic;
SIGNAL \Add2~89\ : std_logic;
SIGNAL \Add2~90_combout\ : std_logic;
SIGNAL \Add2~91\ : std_logic;
SIGNAL \Add2~92_combout\ : std_logic;
SIGNAL \Add2~93\ : std_logic;
SIGNAL \Add2~94_combout\ : std_logic;
SIGNAL \Add2~95\ : std_logic;
SIGNAL \Add2~96_combout\ : std_logic;
SIGNAL \Add2~97\ : std_logic;
SIGNAL \Add2~98_combout\ : std_logic;
SIGNAL \Add2~99\ : std_logic;
SIGNAL \Add2~100_combout\ : std_logic;
SIGNAL \Add2~101\ : std_logic;
SIGNAL \Add2~102_combout\ : std_logic;
SIGNAL \Add2~103\ : std_logic;
SIGNAL \Add2~104_combout\ : std_logic;
SIGNAL \Add2~105\ : std_logic;
SIGNAL \Add2~106_combout\ : std_logic;
SIGNAL \Add2~107\ : std_logic;
SIGNAL \Add2~108_combout\ : std_logic;
SIGNAL \Add2~109\ : std_logic;
SIGNAL \Add2~110_combout\ : std_logic;
SIGNAL \Add2~111\ : std_logic;
SIGNAL \Add2~112_combout\ : std_logic;
SIGNAL \Add2~113\ : std_logic;
SIGNAL \Add2~114_combout\ : std_logic;
SIGNAL \Add2~115\ : std_logic;
SIGNAL \Add2~116_combout\ : std_logic;
SIGNAL \Add2~117\ : std_logic;
SIGNAL \Add2~118_combout\ : std_logic;
SIGNAL \Add2~119\ : std_logic;
SIGNAL \Add2~120_combout\ : std_logic;
SIGNAL \Add2~121\ : std_logic;
SIGNAL \Add2~122_combout\ : std_logic;
SIGNAL \Add2~123\ : std_logic;
SIGNAL \Add2~124_combout\ : std_logic;
SIGNAL \Add2~125\ : std_logic;
SIGNAL \Add2~126_combout\ : std_logic;
SIGNAL \Add2~127\ : std_logic;
SIGNAL \Add2~128_combout\ : std_logic;
SIGNAL \Add2~129\ : std_logic;
SIGNAL \Add2~130_combout\ : std_logic;
SIGNAL \Add2~131\ : std_logic;
SIGNAL \Add2~132_combout\ : std_logic;
SIGNAL \Add2~133\ : std_logic;
SIGNAL \Add2~134_combout\ : std_logic;
SIGNAL \Add2~135\ : std_logic;
SIGNAL \Add2~136_combout\ : std_logic;
SIGNAL \Add2~137\ : std_logic;
SIGNAL \Add2~138_combout\ : std_logic;
SIGNAL \Add2~139\ : std_logic;
SIGNAL \Add2~140_combout\ : std_logic;
SIGNAL \Add2~141\ : std_logic;
SIGNAL \Add2~142_combout\ : std_logic;
SIGNAL \Add2~143\ : std_logic;
SIGNAL \Add2~144_combout\ : std_logic;
SIGNAL \Add2~145\ : std_logic;
SIGNAL \Add2~146_combout\ : std_logic;
SIGNAL \Add2~147\ : std_logic;
SIGNAL \Add2~148_combout\ : std_logic;
SIGNAL \Add2~149\ : std_logic;
SIGNAL \Add2~150_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \Add2~151\ : std_logic;
SIGNAL \Add2~152_combout\ : std_logic;
SIGNAL \Add2~153\ : std_logic;
SIGNAL \Add2~154_combout\ : std_logic;
SIGNAL \Add2~155\ : std_logic;
SIGNAL \Add2~156_combout\ : std_logic;
SIGNAL \Add2~157\ : std_logic;
SIGNAL \Add2~158_combout\ : std_logic;
SIGNAL \Add2~159\ : std_logic;
SIGNAL \Add2~160_combout\ : std_logic;
SIGNAL \Add2~161\ : std_logic;
SIGNAL \Add2~162_combout\ : std_logic;
SIGNAL \Add2~163\ : std_logic;
SIGNAL \Add2~164_combout\ : std_logic;
SIGNAL \Add2~165\ : std_logic;
SIGNAL \Add2~166_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Equal2~9_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \Equal2~10_combout\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \Add2~167\ : std_logic;
SIGNAL \Add2~168_combout\ : std_logic;
SIGNAL \Add2~169\ : std_logic;
SIGNAL \Add2~170_combout\ : std_logic;
SIGNAL \Add2~171\ : std_logic;
SIGNAL \Add2~172_combout\ : std_logic;
SIGNAL \Add2~173\ : std_logic;
SIGNAL \Add2~174_combout\ : std_logic;
SIGNAL \Add2~175\ : std_logic;
SIGNAL \Add2~176_combout\ : std_logic;
SIGNAL \Add2~177\ : std_logic;
SIGNAL \Add2~178_combout\ : std_logic;
SIGNAL \Add2~179\ : std_logic;
SIGNAL \Add2~180_combout\ : std_logic;
SIGNAL \Add2~181\ : std_logic;
SIGNAL \Add2~182_combout\ : std_logic;
SIGNAL \Add2~183\ : std_logic;
SIGNAL \Add2~184_combout\ : std_logic;
SIGNAL \Add2~185\ : std_logic;
SIGNAL \Add2~186_combout\ : std_logic;
SIGNAL \Add2~187\ : std_logic;
SIGNAL \Add2~188_combout\ : std_logic;
SIGNAL \Add2~189\ : std_logic;
SIGNAL \Add2~190_combout\ : std_logic;
SIGNAL \Add2~191\ : std_logic;
SIGNAL \Add2~192_combout\ : std_logic;
SIGNAL \Add2~193\ : std_logic;
SIGNAL \Add2~194_combout\ : std_logic;
SIGNAL \Add2~195\ : std_logic;
SIGNAL \Add2~196_combout\ : std_logic;
SIGNAL \Selector109~0_combout\ : std_logic;
SIGNAL \Add2~197\ : std_logic;
SIGNAL \Add2~198_combout\ : std_logic;
SIGNAL \Selector108~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Equal2~18_combout\ : std_logic;
SIGNAL \Equal2~17_combout\ : std_logic;
SIGNAL \Equal2~19_combout\ : std_logic;
SIGNAL \Equal2~16_combout\ : std_logic;
SIGNAL \Equal2~20_combout\ : std_logic;
SIGNAL \Equal2~11_combout\ : std_logic;
SIGNAL \Equal2~13_combout\ : std_logic;
SIGNAL \Equal2~14_combout\ : std_logic;
SIGNAL \Equal2~12_combout\ : std_logic;
SIGNAL \Equal2~15_combout\ : std_logic;
SIGNAL \Equal2~21_combout\ : std_logic;
SIGNAL \Equal2~27_combout\ : std_logic;
SIGNAL \Equal2~28_combout\ : std_logic;
SIGNAL \Equal2~29_combout\ : std_logic;
SIGNAL \Equal2~30_combout\ : std_logic;
SIGNAL \Equal2~22_combout\ : std_logic;
SIGNAL \Equal2~23_combout\ : std_logic;
SIGNAL \Equal2~25_combout\ : std_logic;
SIGNAL \Equal2~24_combout\ : std_logic;
SIGNAL \Equal2~26_combout\ : std_logic;
SIGNAL \Equal2~31_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \sig_OB_LED_RGB_DIN~q\ : std_logic;
SIGNAL \OB_LED_RGB_DIN~reg0feeder_combout\ : std_logic;
SIGNAL \OB_LED_RGB_DIN~reg0_q\ : std_logic;
SIGNAL \green_leds[0]~input_o\ : std_logic;
SIGNAL \LED_1~reg0feeder_combout\ : std_logic;
SIGNAL \LED_1~0_combout\ : std_logic;
SIGNAL \LED_1~reg0_q\ : std_logic;
SIGNAL \green_leds[1]~input_o\ : std_logic;
SIGNAL \LED_2~reg0feeder_combout\ : std_logic;
SIGNAL \LED_2~reg0_q\ : std_logic;
SIGNAL \green_leds[2]~input_o\ : std_logic;
SIGNAL \LED_3~reg0feeder_combout\ : std_logic;
SIGNAL \LED_3~reg0_q\ : std_logic;
SIGNAL sig_cnt : std_logic_vector(99 DOWNTO 0);
SIGNAL sig_cnt_loop : std_logic_vector(99 DOWNTO 0);
SIGNAL sig_shift_led_rgb : std_logic_vector(95 DOWNTO 0);
SIGNAL \ALT_INV_state_leds.s0~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_resetn <= resetn;
ww_sysclk <= sysclk;
ww_load_leds <= load_leds;
ww_green_leds <= green_leds;
ww_rgb_leds <= rgb_leds;
OB_LED_RGB_DIN <= ww_OB_LED_RGB_DIN;
LED_1 <= ww_LED_1;
LED_2 <= ww_LED_2;
LED_3 <= ww_LED_3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\resetn~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \resetn~input_o\);

\sysclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sysclk~input_o\);
\ALT_INV_state_leds.s0~q\ <= NOT \state_leds.s0~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N24
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

-- Location: IOOBUF_X78_Y41_N2
\OB_LED_RGB_DIN~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OB_LED_RGB_DIN~reg0_q\,
	devoe => ww_devoe,
	o => \OB_LED_RGB_DIN~output_o\);

-- Location: IOOBUF_X51_Y0_N23
\LED_1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_1~reg0_q\,
	devoe => ww_devoe,
	o => \LED_1~output_o\);

-- Location: IOOBUF_X54_Y0_N30
\LED_2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_2~reg0_q\,
	devoe => ww_devoe,
	o => \LED_2~output_o\);

-- Location: IOOBUF_X51_Y0_N16
\LED_3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED_3~reg0_q\,
	devoe => ww_devoe,
	o => \LED_3~output_o\);

-- Location: IOIBUF_X78_Y29_N15
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

-- Location: CLKCTRL_G7
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

-- Location: LCCOMB_X42_Y12_N12
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = sig_cnt(0) $ (VCC)
-- \Add2~1\ = CARRY(sig_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X42_Y12_N18
\Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (sig_cnt(3) & (!\Add2~5\)) # (!sig_cnt(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!sig_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X42_Y12_N20
\Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (sig_cnt(4) & (\Add2~7\ $ (GND))) # (!sig_cnt(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((sig_cnt(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X42_Y12_N4
\Selector203~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector203~0_combout\ = (\Add2~8_combout\ & ((!\Equal3~2_combout\) # (!\Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~8_combout\,
	datac => \Equal3~3_combout\,
	datad => \Equal3~2_combout\,
	combout => \Selector203~0_combout\);

-- Location: IOIBUF_X78_Y29_N22
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

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X42_Y16_N6
\sig_cnt_delay~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt_delay~8_combout\ = (!\Equal0~4_combout\ & \Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~4_combout\,
	datad => \Add0~6_combout\,
	combout => \sig_cnt_delay~8_combout\);

-- Location: FF_X42_Y16_N7
\set_leds:sig_cnt_delay[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt_delay~8_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \ALT_INV_state_leds.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_leds:sig_cnt_delay[3]~q\);

-- Location: LCCOMB_X43_Y13_N0
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \set_leds:sig_cnt_delay[0]~q\ $ (VCC)
-- \Add0~1\ = CARRY(\set_leds:sig_cnt_delay[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \set_leds:sig_cnt_delay[0]~q\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X43_Y13_N1
\set_leds:sig_cnt_delay[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \ALT_INV_state_leds.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_leds:sig_cnt_delay[0]~q\);

-- Location: LCCOMB_X43_Y13_N2
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\set_leds:sig_cnt_delay[1]~q\ & (!\Add0~1\)) # (!\set_leds:sig_cnt_delay[1]~q\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\set_leds:sig_cnt_delay[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \set_leds:sig_cnt_delay[1]~q\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X43_Y13_N3
\set_leds:sig_cnt_delay[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \ALT_INV_state_leds.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_leds:sig_cnt_delay[1]~q\);

-- Location: LCCOMB_X43_Y13_N4
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\set_leds:sig_cnt_delay[2]~q\ & (\Add0~3\ $ (GND))) # (!\set_leds:sig_cnt_delay[2]~q\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\set_leds:sig_cnt_delay[2]~q\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \set_leds:sig_cnt_delay[2]~q\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X43_Y13_N5
\set_leds:sig_cnt_delay[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \ALT_INV_state_leds.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_leds:sig_cnt_delay[2]~q\);

-- Location: LCCOMB_X43_Y13_N6
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\set_leds:sig_cnt_delay[3]~q\ & (!\Add0~5\)) # (!\set_leds:sig_cnt_delay[3]~q\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\set_leds:sig_cnt_delay[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \set_leds:sig_cnt_delay[3]~q\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X43_Y13_N30
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\Add0~6_combout\ & (!\Add0~2_combout\ & (!\Add0~4_combout\ & !\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~2_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~0_combout\,
	combout => \Equal0~0_combout\);

-- Location: FF_X43_Y13_N11
\set_leds:sig_cnt_delay[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \ALT_INV_state_leds.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_leds:sig_cnt_delay[5]~q\);

-- Location: LCCOMB_X43_Y13_N8
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\set_leds:sig_cnt_delay[4]~q\ & (\Add0~7\ $ (GND))) # (!\set_leds:sig_cnt_delay[4]~q\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\set_leds:sig_cnt_delay[4]~q\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \set_leds:sig_cnt_delay[4]~q\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X42_Y13_N16
\sig_cnt_delay~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt_delay~7_combout\ = (\Add0~8_combout\ & !\Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	datad => \Equal0~4_combout\,
	combout => \sig_cnt_delay~7_combout\);

-- Location: FF_X42_Y13_N17
\set_leds:sig_cnt_delay[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt_delay~7_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \ALT_INV_state_leds.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_leds:sig_cnt_delay[4]~q\);

-- Location: LCCOMB_X43_Y13_N10
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\set_leds:sig_cnt_delay[5]~q\ & (!\Add0~9\)) # (!\set_leds:sig_cnt_delay[5]~q\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\set_leds:sig_cnt_delay[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \set_leds:sig_cnt_delay[5]~q\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X43_Y13_N13
\set_leds:sig_cnt_delay[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \ALT_INV_state_leds.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_leds:sig_cnt_delay[6]~q\);

-- Location: LCCOMB_X43_Y13_N12
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\set_leds:sig_cnt_delay[6]~q\ & (\Add0~11\ $ (GND))) # (!\set_leds:sig_cnt_delay[6]~q\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\set_leds:sig_cnt_delay[6]~q\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \set_leds:sig_cnt_delay[6]~q\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X42_Y13_N20
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Equal0~0_combout\ & (!\Add0~10_combout\ & (\Add0~8_combout\ & !\Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Add0~10_combout\,
	datac => \Add0~8_combout\,
	datad => \Add0~12_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X42_Y13_N12
\sig_cnt_delay~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt_delay~5_combout\ = (!\Equal0~4_combout\ & \Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datad => \Add0~18_combout\,
	combout => \sig_cnt_delay~5_combout\);

-- Location: FF_X42_Y13_N13
\set_leds:sig_cnt_delay[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt_delay~5_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \ALT_INV_state_leds.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_leds:sig_cnt_delay[9]~q\);

-- Location: LCCOMB_X43_Y13_N14
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\set_leds:sig_cnt_delay[7]~q\ & (!\Add0~13\)) # (!\set_leds:sig_cnt_delay[7]~q\ & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!\set_leds:sig_cnt_delay[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \set_leds:sig_cnt_delay[7]~q\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X42_Y13_N14
\sig_cnt_delay~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt_delay~6_combout\ = (\Add0~14_combout\ & !\Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	datad => \Equal0~4_combout\,
	combout => \sig_cnt_delay~6_combout\);

-- Location: FF_X42_Y13_N15
\set_leds:sig_cnt_delay[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt_delay~6_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \ALT_INV_state_leds.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_leds:sig_cnt_delay[7]~q\);

-- Location: LCCOMB_X43_Y13_N16
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\set_leds:sig_cnt_delay[8]~q\ & (\Add0~15\ $ (GND))) # (!\set_leds:sig_cnt_delay[8]~q\ & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((\set_leds:sig_cnt_delay[8]~q\ & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \set_leds:sig_cnt_delay[8]~q\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X43_Y13_N17
\set_leds:sig_cnt_delay[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \ALT_INV_state_leds.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_leds:sig_cnt_delay[8]~q\);

-- Location: LCCOMB_X43_Y13_N18
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\set_leds:sig_cnt_delay[9]~q\ & (!\Add0~17\)) # (!\set_leds:sig_cnt_delay[9]~q\ & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!\set_leds:sig_cnt_delay[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \set_leds:sig_cnt_delay[9]~q\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X42_Y13_N22
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~1_combout\ & (\Add0~18_combout\ & (\Add0~14_combout\ & !\Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Add0~18_combout\,
	datac => \Add0~14_combout\,
	datad => \Add0~16_combout\,
	combout => \Equal0~2_combout\);

-- Location: FF_X43_Y13_N21
\set_leds:sig_cnt_delay[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \ALT_INV_state_leds.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_leds:sig_cnt_delay[10]~q\);

-- Location: LCCOMB_X43_Y13_N20
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\set_leds:sig_cnt_delay[10]~q\ & (\Add0~19\ $ (GND))) # (!\set_leds:sig_cnt_delay[10]~q\ & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((\set_leds:sig_cnt_delay[10]~q\ & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \set_leds:sig_cnt_delay[10]~q\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X42_Y13_N2
\sig_cnt_delay~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt_delay~4_combout\ = (!\Equal0~4_combout\ & \Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datad => \Add0~22_combout\,
	combout => \sig_cnt_delay~4_combout\);

-- Location: FF_X42_Y13_N3
\set_leds:sig_cnt_delay[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt_delay~4_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \ALT_INV_state_leds.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_leds:sig_cnt_delay[11]~q\);

-- Location: LCCOMB_X43_Y13_N22
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\set_leds:sig_cnt_delay[11]~q\ & (!\Add0~21\)) # (!\set_leds:sig_cnt_delay[11]~q\ & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!\set_leds:sig_cnt_delay[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \set_leds:sig_cnt_delay[11]~q\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X42_Y13_N8
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Equal0~2_combout\ & (!\Add0~20_combout\ & \Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datac => \Add0~20_combout\,
	datad => \Add0~22_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X42_Y13_N0
\sig_cnt_delay~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt_delay~9_combout\ = (\Add0~24_combout\ & (((\Add0~28_combout\) # (!\Equal0~3_combout\)) # (!\Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \Add0~28_combout\,
	datac => \Equal0~3_combout\,
	datad => \Add0~24_combout\,
	combout => \sig_cnt_delay~9_combout\);

-- Location: FF_X42_Y13_N1
\set_leds:sig_cnt_delay[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt_delay~9_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \ALT_INV_state_leds.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_leds:sig_cnt_delay[12]~q\);

-- Location: LCCOMB_X43_Y13_N24
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\set_leds:sig_cnt_delay[12]~q\ & (\Add0~23\ $ (GND))) # (!\set_leds:sig_cnt_delay[12]~q\ & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((\set_leds:sig_cnt_delay[12]~q\ & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \set_leds:sig_cnt_delay[12]~q\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X42_Y13_N18
\sig_cnt_delay~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt_delay~10_combout\ = (\Add0~26_combout\ & ((\Add0~28_combout\) # ((!\Add0~24_combout\) # (!\Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \Add0~28_combout\,
	datac => \Equal0~3_combout\,
	datad => \Add0~24_combout\,
	combout => \sig_cnt_delay~10_combout\);

-- Location: FF_X42_Y13_N19
\set_leds:sig_cnt_delay[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt_delay~10_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \ALT_INV_state_leds.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_leds:sig_cnt_delay[13]~q\);

-- Location: LCCOMB_X43_Y13_N26
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\set_leds:sig_cnt_delay[13]~q\ & (!\Add0~25\)) # (!\set_leds:sig_cnt_delay[13]~q\ & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!\set_leds:sig_cnt_delay[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \set_leds:sig_cnt_delay[13]~q\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X42_Y13_N10
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Add0~26_combout\ & (!\Add0~28_combout\ & (\Equal0~3_combout\ & \Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \Add0~28_combout\,
	datac => \Equal0~3_combout\,
	datad => \Add0~24_combout\,
	combout => \Equal0~4_combout\);

-- Location: FF_X41_Y15_N9
\state_leds.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_leds.s2~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_leds.s3~q\);

-- Location: LCCOMB_X42_Y16_N18
\state_leds.s4~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_leds.s4~feeder_combout\ = \state_leds.s3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_leds.s3~q\,
	combout => \state_leds.s4~feeder_combout\);

-- Location: FF_X42_Y16_N19
\state_leds.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_leds.s4~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_leds.s4~q\);

-- Location: LCCOMB_X43_Y21_N12
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = sig_cnt_loop(0) $ (VCC)
-- \Add1~1\ = CARRY(sig_cnt_loop(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X43_Y21_N0
\sig_cnt_loop~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt_loop~2_combout\ = (\Add1~0_combout\ & !\Equal1~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datad => \Equal1~32_combout\,
	combout => \sig_cnt_loop~2_combout\);

-- Location: FF_X43_Y21_N1
\sig_cnt_loop[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt_loop~2_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(0));

-- Location: LCCOMB_X43_Y21_N14
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (sig_cnt_loop(1) & (!\Add1~1\)) # (!sig_cnt_loop(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!sig_cnt_loop(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X43_Y21_N15
\sig_cnt_loop[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~2_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(1));

-- Location: LCCOMB_X43_Y21_N16
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (sig_cnt_loop(2) & (\Add1~3\ $ (GND))) # (!sig_cnt_loop(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((sig_cnt_loop(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: FF_X43_Y21_N17
\sig_cnt_loop[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~4_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(2));

-- Location: LCCOMB_X43_Y21_N18
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (sig_cnt_loop(3) & (!\Add1~5\)) # (!sig_cnt_loop(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!sig_cnt_loop(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: FF_X43_Y21_N19
\sig_cnt_loop[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~6_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(3));

-- Location: LCCOMB_X43_Y21_N20
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (sig_cnt_loop(4) & (\Add1~7\ $ (GND))) # (!sig_cnt_loop(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((sig_cnt_loop(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X43_Y21_N21
\sig_cnt_loop[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~8_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(4));

-- Location: LCCOMB_X43_Y21_N22
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (sig_cnt_loop(5) & (!\Add1~9\)) # (!sig_cnt_loop(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!sig_cnt_loop(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X43_Y21_N6
\sig_cnt_loop~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt_loop~4_combout\ = (\Add1~10_combout\ & !\Equal1~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~10_combout\,
	datad => \Equal1~32_combout\,
	combout => \sig_cnt_loop~4_combout\);

-- Location: FF_X43_Y21_N7
\sig_cnt_loop[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt_loop~4_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(5));

-- Location: LCCOMB_X43_Y21_N24
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (sig_cnt_loop(6) & (\Add1~11\ $ (GND))) # (!sig_cnt_loop(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((sig_cnt_loop(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X43_Y21_N4
\sig_cnt_loop~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt_loop~3_combout\ = (\Add1~12_combout\ & !\Equal1~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~12_combout\,
	datad => \Equal1~32_combout\,
	combout => \sig_cnt_loop~3_combout\);

-- Location: FF_X43_Y21_N5
\sig_cnt_loop[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt_loop~3_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(6));

-- Location: LCCOMB_X43_Y21_N26
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (sig_cnt_loop(7) & (!\Add1~13\)) # (!sig_cnt_loop(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!sig_cnt_loop(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: FF_X43_Y21_N27
\sig_cnt_loop[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~14_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(7));

-- Location: LCCOMB_X43_Y21_N28
\Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (sig_cnt_loop(8) & (\Add1~15\ $ (GND))) # (!sig_cnt_loop(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((sig_cnt_loop(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: FF_X43_Y21_N29
\sig_cnt_loop[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~16_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(8));

-- Location: LCCOMB_X43_Y21_N30
\Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (sig_cnt_loop(9) & (!\Add1~17\)) # (!sig_cnt_loop(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!sig_cnt_loop(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: FF_X43_Y21_N31
\sig_cnt_loop[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~18_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(9));

-- Location: LCCOMB_X43_Y20_N0
\Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (sig_cnt_loop(10) & (\Add1~19\ $ (GND))) # (!sig_cnt_loop(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((sig_cnt_loop(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: FF_X43_Y20_N1
\sig_cnt_loop[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~20_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(10));

-- Location: LCCOMB_X43_Y20_N2
\Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (sig_cnt_loop(11) & (!\Add1~21\)) # (!sig_cnt_loop(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!sig_cnt_loop(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: FF_X43_Y20_N3
\sig_cnt_loop[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~22_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(11));

-- Location: LCCOMB_X43_Y20_N4
\Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (sig_cnt_loop(12) & (\Add1~23\ $ (GND))) # (!sig_cnt_loop(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((sig_cnt_loop(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: FF_X43_Y20_N5
\sig_cnt_loop[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~24_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(12));

-- Location: LCCOMB_X43_Y20_N6
\Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (sig_cnt_loop(13) & (!\Add1~25\)) # (!sig_cnt_loop(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!sig_cnt_loop(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: FF_X43_Y20_N7
\sig_cnt_loop[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~26_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(13));

-- Location: LCCOMB_X43_Y20_N8
\Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (sig_cnt_loop(14) & (\Add1~27\ $ (GND))) # (!sig_cnt_loop(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((sig_cnt_loop(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: FF_X43_Y20_N9
\sig_cnt_loop[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~28_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(14));

-- Location: LCCOMB_X43_Y20_N10
\Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (sig_cnt_loop(15) & (!\Add1~29\)) # (!sig_cnt_loop(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!sig_cnt_loop(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: FF_X43_Y20_N11
\sig_cnt_loop[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~30_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(15));

-- Location: LCCOMB_X43_Y20_N12
\Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (sig_cnt_loop(16) & (\Add1~31\ $ (GND))) # (!sig_cnt_loop(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((sig_cnt_loop(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: FF_X43_Y20_N13
\sig_cnt_loop[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~32_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(16));

-- Location: LCCOMB_X43_Y20_N14
\Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (sig_cnt_loop(17) & (!\Add1~33\)) # (!sig_cnt_loop(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!sig_cnt_loop(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: FF_X43_Y20_N15
\sig_cnt_loop[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~34_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(17));

-- Location: LCCOMB_X43_Y20_N16
\Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (sig_cnt_loop(18) & (\Add1~35\ $ (GND))) # (!sig_cnt_loop(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((sig_cnt_loop(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: FF_X43_Y20_N17
\sig_cnt_loop[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~36_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(18));

-- Location: LCCOMB_X43_Y20_N18
\Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (sig_cnt_loop(19) & (!\Add1~37\)) # (!sig_cnt_loop(19) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!sig_cnt_loop(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: FF_X43_Y20_N19
\sig_cnt_loop[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~38_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(19));

-- Location: LCCOMB_X43_Y20_N20
\Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (sig_cnt_loop(20) & (\Add1~39\ $ (GND))) # (!sig_cnt_loop(20) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((sig_cnt_loop(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: FF_X43_Y20_N21
\sig_cnt_loop[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~40_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(20));

-- Location: LCCOMB_X43_Y20_N22
\Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (sig_cnt_loop(21) & (!\Add1~41\)) # (!sig_cnt_loop(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!sig_cnt_loop(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: FF_X43_Y20_N23
\sig_cnt_loop[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~42_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(21));

-- Location: LCCOMB_X43_Y20_N24
\Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (sig_cnt_loop(22) & (\Add1~43\ $ (GND))) # (!sig_cnt_loop(22) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((sig_cnt_loop(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: FF_X43_Y20_N25
\sig_cnt_loop[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~44_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(22));

-- Location: LCCOMB_X43_Y20_N26
\Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (sig_cnt_loop(23) & (!\Add1~45\)) # (!sig_cnt_loop(23) & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!sig_cnt_loop(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: FF_X43_Y20_N27
\sig_cnt_loop[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~46_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(23));

-- Location: LCCOMB_X44_Y20_N22
\Equal1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~24_combout\ = (!sig_cnt_loop(22) & (!sig_cnt_loop(21) & (!sig_cnt_loop(23) & !sig_cnt_loop(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(22),
	datab => sig_cnt_loop(21),
	datac => sig_cnt_loop(23),
	datad => sig_cnt_loop(20),
	combout => \Equal1~24_combout\);

-- Location: LCCOMB_X43_Y20_N28
\Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (sig_cnt_loop(24) & (\Add1~47\ $ (GND))) # (!sig_cnt_loop(24) & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((sig_cnt_loop(24) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: FF_X43_Y20_N29
\sig_cnt_loop[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~48_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(24));

-- Location: LCCOMB_X43_Y20_N30
\Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (sig_cnt_loop(25) & (!\Add1~49\)) # (!sig_cnt_loop(25) & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!sig_cnt_loop(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: FF_X43_Y20_N31
\sig_cnt_loop[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~50_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(25));

-- Location: LCCOMB_X43_Y19_N0
\Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (sig_cnt_loop(26) & (\Add1~51\ $ (GND))) # (!sig_cnt_loop(26) & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((sig_cnt_loop(26) & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: FF_X43_Y19_N1
\sig_cnt_loop[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~52_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(26));

-- Location: LCCOMB_X43_Y19_N2
\Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (sig_cnt_loop(27) & (!\Add1~53\)) # (!sig_cnt_loop(27) & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!sig_cnt_loop(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: FF_X43_Y19_N3
\sig_cnt_loop[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~54_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(27));

-- Location: LCCOMB_X44_Y20_N20
\Equal1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~23_combout\ = (!sig_cnt_loop(24) & (!sig_cnt_loop(25) & (!sig_cnt_loop(26) & !sig_cnt_loop(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(24),
	datab => sig_cnt_loop(25),
	datac => sig_cnt_loop(26),
	datad => sig_cnt_loop(27),
	combout => \Equal1~23_combout\);

-- Location: LCCOMB_X43_Y19_N4
\Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (sig_cnt_loop(28) & (\Add1~55\ $ (GND))) # (!sig_cnt_loop(28) & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((sig_cnt_loop(28) & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: FF_X43_Y19_N5
\sig_cnt_loop[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~56_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(28));

-- Location: LCCOMB_X43_Y19_N6
\Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (sig_cnt_loop(29) & (!\Add1~57\)) # (!sig_cnt_loop(29) & ((\Add1~57\) # (GND)))
-- \Add1~59\ = CARRY((!\Add1~57\) # (!sig_cnt_loop(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: FF_X43_Y19_N7
\sig_cnt_loop[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~58_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(29));

-- Location: LCCOMB_X43_Y19_N8
\Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (sig_cnt_loop(30) & (\Add1~59\ $ (GND))) # (!sig_cnt_loop(30) & (!\Add1~59\ & VCC))
-- \Add1~61\ = CARRY((sig_cnt_loop(30) & !\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: FF_X43_Y19_N9
\sig_cnt_loop[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~60_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(30));

-- Location: LCCOMB_X43_Y19_N10
\Add1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = (sig_cnt_loop(31) & (!\Add1~61\)) # (!sig_cnt_loop(31) & ((\Add1~61\) # (GND)))
-- \Add1~63\ = CARRY((!\Add1~61\) # (!sig_cnt_loop(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(31),
	datad => VCC,
	cin => \Add1~61\,
	combout => \Add1~62_combout\,
	cout => \Add1~63\);

-- Location: FF_X43_Y19_N11
\sig_cnt_loop[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~62_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(31));

-- Location: LCCOMB_X44_Y20_N26
\Equal1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~22_combout\ = (!sig_cnt_loop(29) & (!sig_cnt_loop(30) & (!sig_cnt_loop(28) & !sig_cnt_loop(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(29),
	datab => sig_cnt_loop(30),
	datac => sig_cnt_loop(28),
	datad => sig_cnt_loop(31),
	combout => \Equal1~22_combout\);

-- Location: LCCOMB_X43_Y19_N12
\Add1~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~64_combout\ = (sig_cnt_loop(32) & (\Add1~63\ $ (GND))) # (!sig_cnt_loop(32) & (!\Add1~63\ & VCC))
-- \Add1~65\ = CARRY((sig_cnt_loop(32) & !\Add1~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(32),
	datad => VCC,
	cin => \Add1~63\,
	combout => \Add1~64_combout\,
	cout => \Add1~65\);

-- Location: FF_X43_Y19_N13
\sig_cnt_loop[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~64_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(32));

-- Location: LCCOMB_X43_Y19_N14
\Add1~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~66_combout\ = (sig_cnt_loop(33) & (!\Add1~65\)) # (!sig_cnt_loop(33) & ((\Add1~65\) # (GND)))
-- \Add1~67\ = CARRY((!\Add1~65\) # (!sig_cnt_loop(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(33),
	datad => VCC,
	cin => \Add1~65\,
	combout => \Add1~66_combout\,
	cout => \Add1~67\);

-- Location: FF_X43_Y19_N15
\sig_cnt_loop[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~66_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(33));

-- Location: LCCOMB_X43_Y19_N16
\Add1~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~68_combout\ = (sig_cnt_loop(34) & (\Add1~67\ $ (GND))) # (!sig_cnt_loop(34) & (!\Add1~67\ & VCC))
-- \Add1~69\ = CARRY((sig_cnt_loop(34) & !\Add1~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(34),
	datad => VCC,
	cin => \Add1~67\,
	combout => \Add1~68_combout\,
	cout => \Add1~69\);

-- Location: FF_X43_Y19_N17
\sig_cnt_loop[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~68_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(34));

-- Location: LCCOMB_X43_Y19_N18
\Add1~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~70_combout\ = (sig_cnt_loop(35) & (!\Add1~69\)) # (!sig_cnt_loop(35) & ((\Add1~69\) # (GND)))
-- \Add1~71\ = CARRY((!\Add1~69\) # (!sig_cnt_loop(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(35),
	datad => VCC,
	cin => \Add1~69\,
	combout => \Add1~70_combout\,
	cout => \Add1~71\);

-- Location: FF_X43_Y19_N19
\sig_cnt_loop[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~70_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(35));

-- Location: LCCOMB_X44_Y19_N16
\Equal1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~21_combout\ = (!sig_cnt_loop(33) & (!sig_cnt_loop(35) & (!sig_cnt_loop(34) & !sig_cnt_loop(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(33),
	datab => sig_cnt_loop(35),
	datac => sig_cnt_loop(34),
	datad => sig_cnt_loop(32),
	combout => \Equal1~21_combout\);

-- Location: LCCOMB_X44_Y20_N16
\Equal1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~25_combout\ = (\Equal1~24_combout\ & (\Equal1~23_combout\ & (\Equal1~22_combout\ & \Equal1~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~24_combout\,
	datab => \Equal1~23_combout\,
	datac => \Equal1~22_combout\,
	datad => \Equal1~21_combout\,
	combout => \Equal1~25_combout\);

-- Location: LCCOMB_X44_Y20_N6
\Equal1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~29_combout\ = (!sig_cnt_loop(11) & (!sig_cnt_loop(8) & (!sig_cnt_loop(10) & !sig_cnt_loop(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(11),
	datab => sig_cnt_loop(8),
	datac => sig_cnt_loop(10),
	datad => sig_cnt_loop(9),
	combout => \Equal1~29_combout\);

-- Location: LCCOMB_X44_Y20_N4
\Equal1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~28_combout\ = (!sig_cnt_loop(15) & (!sig_cnt_loop(13) & (!sig_cnt_loop(12) & !sig_cnt_loop(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(15),
	datab => sig_cnt_loop(13),
	datac => sig_cnt_loop(12),
	datad => sig_cnt_loop(14),
	combout => \Equal1~28_combout\);

-- Location: LCCOMB_X43_Y21_N8
\Equal1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~30_combout\ = (!sig_cnt_loop(7) & (!sig_cnt_loop(4) & (sig_cnt_loop(6) & sig_cnt_loop(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(7),
	datab => sig_cnt_loop(4),
	datac => sig_cnt_loop(6),
	datad => sig_cnt_loop(5),
	combout => \Equal1~30_combout\);

-- Location: LCCOMB_X44_Y20_N10
\Equal1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~27_combout\ = (!sig_cnt_loop(17) & (!sig_cnt_loop(19) & (!sig_cnt_loop(18) & !sig_cnt_loop(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(17),
	datab => sig_cnt_loop(19),
	datac => sig_cnt_loop(18),
	datad => sig_cnt_loop(16),
	combout => \Equal1~27_combout\);

-- Location: LCCOMB_X44_Y20_N0
\Equal1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~31_combout\ = (\Equal1~29_combout\ & (\Equal1~28_combout\ & (\Equal1~30_combout\ & \Equal1~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~29_combout\,
	datab => \Equal1~28_combout\,
	datac => \Equal1~30_combout\,
	datad => \Equal1~27_combout\,
	combout => \Equal1~31_combout\);

-- Location: LCCOMB_X43_Y21_N2
\Equal1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~26_combout\ = (!sig_cnt_loop(2) & (!sig_cnt_loop(0) & (!sig_cnt_loop(1) & !sig_cnt_loop(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(2),
	datab => sig_cnt_loop(0),
	datac => sig_cnt_loop(1),
	datad => sig_cnt_loop(3),
	combout => \Equal1~26_combout\);

-- Location: LCCOMB_X43_Y19_N20
\Add1~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~72_combout\ = (sig_cnt_loop(36) & (\Add1~71\ $ (GND))) # (!sig_cnt_loop(36) & (!\Add1~71\ & VCC))
-- \Add1~73\ = CARRY((sig_cnt_loop(36) & !\Add1~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(36),
	datad => VCC,
	cin => \Add1~71\,
	combout => \Add1~72_combout\,
	cout => \Add1~73\);

-- Location: FF_X43_Y19_N21
\sig_cnt_loop[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~72_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(36));

-- Location: LCCOMB_X43_Y19_N22
\Add1~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~74_combout\ = (sig_cnt_loop(37) & (!\Add1~73\)) # (!sig_cnt_loop(37) & ((\Add1~73\) # (GND)))
-- \Add1~75\ = CARRY((!\Add1~73\) # (!sig_cnt_loop(37)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(37),
	datad => VCC,
	cin => \Add1~73\,
	combout => \Add1~74_combout\,
	cout => \Add1~75\);

-- Location: FF_X43_Y19_N23
\sig_cnt_loop[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~74_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(37));

-- Location: LCCOMB_X43_Y19_N24
\Add1~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~76_combout\ = (sig_cnt_loop(38) & (\Add1~75\ $ (GND))) # (!sig_cnt_loop(38) & (!\Add1~75\ & VCC))
-- \Add1~77\ = CARRY((sig_cnt_loop(38) & !\Add1~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(38),
	datad => VCC,
	cin => \Add1~75\,
	combout => \Add1~76_combout\,
	cout => \Add1~77\);

-- Location: FF_X43_Y19_N25
\sig_cnt_loop[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~76_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(38));

-- Location: LCCOMB_X43_Y19_N26
\Add1~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~78_combout\ = (sig_cnt_loop(39) & (!\Add1~77\)) # (!sig_cnt_loop(39) & ((\Add1~77\) # (GND)))
-- \Add1~79\ = CARRY((!\Add1~77\) # (!sig_cnt_loop(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(39),
	datad => VCC,
	cin => \Add1~77\,
	combout => \Add1~78_combout\,
	cout => \Add1~79\);

-- Location: FF_X43_Y19_N27
\sig_cnt_loop[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~78_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(39));

-- Location: LCCOMB_X43_Y19_N28
\Add1~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~80_combout\ = (sig_cnt_loop(40) & (\Add1~79\ $ (GND))) # (!sig_cnt_loop(40) & (!\Add1~79\ & VCC))
-- \Add1~81\ = CARRY((sig_cnt_loop(40) & !\Add1~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(40),
	datad => VCC,
	cin => \Add1~79\,
	combout => \Add1~80_combout\,
	cout => \Add1~81\);

-- Location: FF_X43_Y19_N29
\sig_cnt_loop[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~80_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(40));

-- Location: LCCOMB_X43_Y19_N30
\Add1~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~82_combout\ = (sig_cnt_loop(41) & (!\Add1~81\)) # (!sig_cnt_loop(41) & ((\Add1~81\) # (GND)))
-- \Add1~83\ = CARRY((!\Add1~81\) # (!sig_cnt_loop(41)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(41),
	datad => VCC,
	cin => \Add1~81\,
	combout => \Add1~82_combout\,
	cout => \Add1~83\);

-- Location: FF_X43_Y19_N31
\sig_cnt_loop[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~82_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(41));

-- Location: LCCOMB_X43_Y18_N0
\Add1~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~84_combout\ = (sig_cnt_loop(42) & (\Add1~83\ $ (GND))) # (!sig_cnt_loop(42) & (!\Add1~83\ & VCC))
-- \Add1~85\ = CARRY((sig_cnt_loop(42) & !\Add1~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(42),
	datad => VCC,
	cin => \Add1~83\,
	combout => \Add1~84_combout\,
	cout => \Add1~85\);

-- Location: FF_X43_Y18_N1
\sig_cnt_loop[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~84_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(42));

-- Location: LCCOMB_X43_Y18_N2
\Add1~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~86_combout\ = (sig_cnt_loop(43) & (!\Add1~85\)) # (!sig_cnt_loop(43) & ((\Add1~85\) # (GND)))
-- \Add1~87\ = CARRY((!\Add1~85\) # (!sig_cnt_loop(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(43),
	datad => VCC,
	cin => \Add1~85\,
	combout => \Add1~86_combout\,
	cout => \Add1~87\);

-- Location: FF_X43_Y18_N3
\sig_cnt_loop[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~86_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(43));

-- Location: LCCOMB_X42_Y18_N12
\Equal1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~17_combout\ = (!sig_cnt_loop(43) & (!sig_cnt_loop(41) & (!sig_cnt_loop(42) & !sig_cnt_loop(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(43),
	datab => sig_cnt_loop(41),
	datac => sig_cnt_loop(42),
	datad => sig_cnt_loop(40),
	combout => \Equal1~17_combout\);

-- Location: LCCOMB_X43_Y18_N4
\Add1~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~88_combout\ = (sig_cnt_loop(44) & (\Add1~87\ $ (GND))) # (!sig_cnt_loop(44) & (!\Add1~87\ & VCC))
-- \Add1~89\ = CARRY((sig_cnt_loop(44) & !\Add1~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(44),
	datad => VCC,
	cin => \Add1~87\,
	combout => \Add1~88_combout\,
	cout => \Add1~89\);

-- Location: FF_X43_Y18_N5
\sig_cnt_loop[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~88_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(44));

-- Location: LCCOMB_X43_Y18_N6
\Add1~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~90_combout\ = (sig_cnt_loop(45) & (!\Add1~89\)) # (!sig_cnt_loop(45) & ((\Add1~89\) # (GND)))
-- \Add1~91\ = CARRY((!\Add1~89\) # (!sig_cnt_loop(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(45),
	datad => VCC,
	cin => \Add1~89\,
	combout => \Add1~90_combout\,
	cout => \Add1~91\);

-- Location: FF_X43_Y18_N7
\sig_cnt_loop[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~90_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(45));

-- Location: LCCOMB_X43_Y18_N8
\Add1~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~92_combout\ = (sig_cnt_loop(46) & (\Add1~91\ $ (GND))) # (!sig_cnt_loop(46) & (!\Add1~91\ & VCC))
-- \Add1~93\ = CARRY((sig_cnt_loop(46) & !\Add1~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(46),
	datad => VCC,
	cin => \Add1~91\,
	combout => \Add1~92_combout\,
	cout => \Add1~93\);

-- Location: FF_X43_Y18_N9
\sig_cnt_loop[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~92_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(46));

-- Location: LCCOMB_X43_Y18_N10
\Add1~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~94_combout\ = (sig_cnt_loop(47) & (!\Add1~93\)) # (!sig_cnt_loop(47) & ((\Add1~93\) # (GND)))
-- \Add1~95\ = CARRY((!\Add1~93\) # (!sig_cnt_loop(47)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(47),
	datad => VCC,
	cin => \Add1~93\,
	combout => \Add1~94_combout\,
	cout => \Add1~95\);

-- Location: FF_X43_Y18_N11
\sig_cnt_loop[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~94_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(47));

-- Location: LCCOMB_X43_Y18_N12
\Add1~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~96_combout\ = (sig_cnt_loop(48) & (\Add1~95\ $ (GND))) # (!sig_cnt_loop(48) & (!\Add1~95\ & VCC))
-- \Add1~97\ = CARRY((sig_cnt_loop(48) & !\Add1~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(48),
	datad => VCC,
	cin => \Add1~95\,
	combout => \Add1~96_combout\,
	cout => \Add1~97\);

-- Location: FF_X43_Y18_N13
\sig_cnt_loop[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~96_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(48));

-- Location: LCCOMB_X43_Y18_N14
\Add1~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~98_combout\ = (sig_cnt_loop(49) & (!\Add1~97\)) # (!sig_cnt_loop(49) & ((\Add1~97\) # (GND)))
-- \Add1~99\ = CARRY((!\Add1~97\) # (!sig_cnt_loop(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(49),
	datad => VCC,
	cin => \Add1~97\,
	combout => \Add1~98_combout\,
	cout => \Add1~99\);

-- Location: FF_X43_Y18_N15
\sig_cnt_loop[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~98_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(49));

-- Location: LCCOMB_X43_Y18_N16
\Add1~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~100_combout\ = (sig_cnt_loop(50) & (\Add1~99\ $ (GND))) # (!sig_cnt_loop(50) & (!\Add1~99\ & VCC))
-- \Add1~101\ = CARRY((sig_cnt_loop(50) & !\Add1~99\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(50),
	datad => VCC,
	cin => \Add1~99\,
	combout => \Add1~100_combout\,
	cout => \Add1~101\);

-- Location: FF_X43_Y18_N17
\sig_cnt_loop[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~100_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(50));

-- Location: LCCOMB_X43_Y18_N18
\Add1~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~102_combout\ = (sig_cnt_loop(51) & (!\Add1~101\)) # (!sig_cnt_loop(51) & ((\Add1~101\) # (GND)))
-- \Add1~103\ = CARRY((!\Add1~101\) # (!sig_cnt_loop(51)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(51),
	datad => VCC,
	cin => \Add1~101\,
	combout => \Add1~102_combout\,
	cout => \Add1~103\);

-- Location: FF_X43_Y18_N19
\sig_cnt_loop[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~102_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(51));

-- Location: LCCOMB_X42_Y18_N24
\Equal1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~15_combout\ = (!sig_cnt_loop(51) & (!sig_cnt_loop(49) & (!sig_cnt_loop(48) & !sig_cnt_loop(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(51),
	datab => sig_cnt_loop(49),
	datac => sig_cnt_loop(48),
	datad => sig_cnt_loop(50),
	combout => \Equal1~15_combout\);

-- Location: LCCOMB_X42_Y18_N26
\Equal1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~16_combout\ = (!sig_cnt_loop(45) & (!sig_cnt_loop(47) & (!sig_cnt_loop(46) & !sig_cnt_loop(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(45),
	datab => sig_cnt_loop(47),
	datac => sig_cnt_loop(46),
	datad => sig_cnt_loop(44),
	combout => \Equal1~16_combout\);

-- Location: LCCOMB_X42_Y19_N24
\Equal1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~18_combout\ = (!sig_cnt_loop(38) & (!sig_cnt_loop(39) & (!sig_cnt_loop(36) & !sig_cnt_loop(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(38),
	datab => sig_cnt_loop(39),
	datac => sig_cnt_loop(36),
	datad => sig_cnt_loop(37),
	combout => \Equal1~18_combout\);

-- Location: LCCOMB_X42_Y18_N6
\Equal1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~19_combout\ = (\Equal1~17_combout\ & (\Equal1~15_combout\ & (\Equal1~16_combout\ & \Equal1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~17_combout\,
	datab => \Equal1~15_combout\,
	datac => \Equal1~16_combout\,
	datad => \Equal1~18_combout\,
	combout => \Equal1~19_combout\);

-- Location: LCCOMB_X43_Y18_N20
\Add1~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~104_combout\ = (sig_cnt_loop(52) & (\Add1~103\ $ (GND))) # (!sig_cnt_loop(52) & (!\Add1~103\ & VCC))
-- \Add1~105\ = CARRY((sig_cnt_loop(52) & !\Add1~103\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(52),
	datad => VCC,
	cin => \Add1~103\,
	combout => \Add1~104_combout\,
	cout => \Add1~105\);

-- Location: FF_X43_Y18_N21
\sig_cnt_loop[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~104_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(52));

-- Location: LCCOMB_X43_Y18_N22
\Add1~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~106_combout\ = (sig_cnt_loop(53) & (!\Add1~105\)) # (!sig_cnt_loop(53) & ((\Add1~105\) # (GND)))
-- \Add1~107\ = CARRY((!\Add1~105\) # (!sig_cnt_loop(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(53),
	datad => VCC,
	cin => \Add1~105\,
	combout => \Add1~106_combout\,
	cout => \Add1~107\);

-- Location: FF_X43_Y18_N23
\sig_cnt_loop[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~106_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(53));

-- Location: LCCOMB_X43_Y18_N24
\Add1~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~108_combout\ = (sig_cnt_loop(54) & (\Add1~107\ $ (GND))) # (!sig_cnt_loop(54) & (!\Add1~107\ & VCC))
-- \Add1~109\ = CARRY((sig_cnt_loop(54) & !\Add1~107\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(54),
	datad => VCC,
	cin => \Add1~107\,
	combout => \Add1~108_combout\,
	cout => \Add1~109\);

-- Location: FF_X43_Y18_N25
\sig_cnt_loop[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~108_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(54));

-- Location: LCCOMB_X43_Y18_N26
\Add1~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~110_combout\ = (sig_cnt_loop(55) & (!\Add1~109\)) # (!sig_cnt_loop(55) & ((\Add1~109\) # (GND)))
-- \Add1~111\ = CARRY((!\Add1~109\) # (!sig_cnt_loop(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(55),
	datad => VCC,
	cin => \Add1~109\,
	combout => \Add1~110_combout\,
	cout => \Add1~111\);

-- Location: FF_X43_Y18_N27
\sig_cnt_loop[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~110_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(55));

-- Location: LCCOMB_X43_Y18_N28
\Add1~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~112_combout\ = (sig_cnt_loop(56) & (\Add1~111\ $ (GND))) # (!sig_cnt_loop(56) & (!\Add1~111\ & VCC))
-- \Add1~113\ = CARRY((sig_cnt_loop(56) & !\Add1~111\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(56),
	datad => VCC,
	cin => \Add1~111\,
	combout => \Add1~112_combout\,
	cout => \Add1~113\);

-- Location: FF_X43_Y18_N29
\sig_cnt_loop[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~112_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(56));

-- Location: LCCOMB_X43_Y18_N30
\Add1~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~114_combout\ = (sig_cnt_loop(57) & (!\Add1~113\)) # (!sig_cnt_loop(57) & ((\Add1~113\) # (GND)))
-- \Add1~115\ = CARRY((!\Add1~113\) # (!sig_cnt_loop(57)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(57),
	datad => VCC,
	cin => \Add1~113\,
	combout => \Add1~114_combout\,
	cout => \Add1~115\);

-- Location: FF_X43_Y18_N31
\sig_cnt_loop[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~114_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(57));

-- Location: LCCOMB_X43_Y17_N0
\Add1~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~116_combout\ = (sig_cnt_loop(58) & (\Add1~115\ $ (GND))) # (!sig_cnt_loop(58) & (!\Add1~115\ & VCC))
-- \Add1~117\ = CARRY((sig_cnt_loop(58) & !\Add1~115\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(58),
	datad => VCC,
	cin => \Add1~115\,
	combout => \Add1~116_combout\,
	cout => \Add1~117\);

-- Location: FF_X43_Y17_N1
\sig_cnt_loop[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~116_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(58));

-- Location: LCCOMB_X43_Y17_N2
\Add1~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~118_combout\ = (sig_cnt_loop(59) & (!\Add1~117\)) # (!sig_cnt_loop(59) & ((\Add1~117\) # (GND)))
-- \Add1~119\ = CARRY((!\Add1~117\) # (!sig_cnt_loop(59)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(59),
	datad => VCC,
	cin => \Add1~117\,
	combout => \Add1~118_combout\,
	cout => \Add1~119\);

-- Location: FF_X43_Y17_N3
\sig_cnt_loop[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~118_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(59));

-- Location: LCCOMB_X43_Y17_N4
\Add1~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~120_combout\ = (sig_cnt_loop(60) & (\Add1~119\ $ (GND))) # (!sig_cnt_loop(60) & (!\Add1~119\ & VCC))
-- \Add1~121\ = CARRY((sig_cnt_loop(60) & !\Add1~119\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(60),
	datad => VCC,
	cin => \Add1~119\,
	combout => \Add1~120_combout\,
	cout => \Add1~121\);

-- Location: FF_X43_Y17_N5
\sig_cnt_loop[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~120_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(60));

-- Location: LCCOMB_X43_Y17_N6
\Add1~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~122_combout\ = (sig_cnt_loop(61) & (!\Add1~121\)) # (!sig_cnt_loop(61) & ((\Add1~121\) # (GND)))
-- \Add1~123\ = CARRY((!\Add1~121\) # (!sig_cnt_loop(61)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(61),
	datad => VCC,
	cin => \Add1~121\,
	combout => \Add1~122_combout\,
	cout => \Add1~123\);

-- Location: FF_X43_Y17_N7
\sig_cnt_loop[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~122_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(61));

-- Location: LCCOMB_X43_Y17_N8
\Add1~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~124_combout\ = (sig_cnt_loop(62) & (\Add1~123\ $ (GND))) # (!sig_cnt_loop(62) & (!\Add1~123\ & VCC))
-- \Add1~125\ = CARRY((sig_cnt_loop(62) & !\Add1~123\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(62),
	datad => VCC,
	cin => \Add1~123\,
	combout => \Add1~124_combout\,
	cout => \Add1~125\);

-- Location: FF_X43_Y17_N9
\sig_cnt_loop[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~124_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(62));

-- Location: LCCOMB_X43_Y17_N10
\Add1~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~126_combout\ = (sig_cnt_loop(63) & (!\Add1~125\)) # (!sig_cnt_loop(63) & ((\Add1~125\) # (GND)))
-- \Add1~127\ = CARRY((!\Add1~125\) # (!sig_cnt_loop(63)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(63),
	datad => VCC,
	cin => \Add1~125\,
	combout => \Add1~126_combout\,
	cout => \Add1~127\);

-- Location: FF_X43_Y17_N11
\sig_cnt_loop[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~126_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(63));

-- Location: LCCOMB_X43_Y17_N12
\Add1~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~128_combout\ = (sig_cnt_loop(64) & (\Add1~127\ $ (GND))) # (!sig_cnt_loop(64) & (!\Add1~127\ & VCC))
-- \Add1~129\ = CARRY((sig_cnt_loop(64) & !\Add1~127\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(64),
	datad => VCC,
	cin => \Add1~127\,
	combout => \Add1~128_combout\,
	cout => \Add1~129\);

-- Location: FF_X43_Y17_N13
\sig_cnt_loop[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~128_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(64));

-- Location: LCCOMB_X43_Y17_N14
\Add1~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~130_combout\ = (sig_cnt_loop(65) & (!\Add1~129\)) # (!sig_cnt_loop(65) & ((\Add1~129\) # (GND)))
-- \Add1~131\ = CARRY((!\Add1~129\) # (!sig_cnt_loop(65)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(65),
	datad => VCC,
	cin => \Add1~129\,
	combout => \Add1~130_combout\,
	cout => \Add1~131\);

-- Location: FF_X43_Y17_N15
\sig_cnt_loop[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~130_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(65));

-- Location: LCCOMB_X43_Y17_N16
\Add1~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~132_combout\ = (sig_cnt_loop(66) & (\Add1~131\ $ (GND))) # (!sig_cnt_loop(66) & (!\Add1~131\ & VCC))
-- \Add1~133\ = CARRY((sig_cnt_loop(66) & !\Add1~131\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(66),
	datad => VCC,
	cin => \Add1~131\,
	combout => \Add1~132_combout\,
	cout => \Add1~133\);

-- Location: FF_X43_Y17_N17
\sig_cnt_loop[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~132_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(66));

-- Location: LCCOMB_X43_Y17_N18
\Add1~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~134_combout\ = (sig_cnt_loop(67) & (!\Add1~133\)) # (!sig_cnt_loop(67) & ((\Add1~133\) # (GND)))
-- \Add1~135\ = CARRY((!\Add1~133\) # (!sig_cnt_loop(67)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(67),
	datad => VCC,
	cin => \Add1~133\,
	combout => \Add1~134_combout\,
	cout => \Add1~135\);

-- Location: FF_X43_Y17_N19
\sig_cnt_loop[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~134_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(67));

-- Location: LCCOMB_X43_Y17_N20
\Add1~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~136_combout\ = (sig_cnt_loop(68) & (\Add1~135\ $ (GND))) # (!sig_cnt_loop(68) & (!\Add1~135\ & VCC))
-- \Add1~137\ = CARRY((sig_cnt_loop(68) & !\Add1~135\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(68),
	datad => VCC,
	cin => \Add1~135\,
	combout => \Add1~136_combout\,
	cout => \Add1~137\);

-- Location: FF_X43_Y17_N21
\sig_cnt_loop[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~136_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(68));

-- Location: LCCOMB_X43_Y17_N22
\Add1~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~138_combout\ = (sig_cnt_loop(69) & (!\Add1~137\)) # (!sig_cnt_loop(69) & ((\Add1~137\) # (GND)))
-- \Add1~139\ = CARRY((!\Add1~137\) # (!sig_cnt_loop(69)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(69),
	datad => VCC,
	cin => \Add1~137\,
	combout => \Add1~138_combout\,
	cout => \Add1~139\);

-- Location: FF_X43_Y17_N23
\sig_cnt_loop[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~138_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(69));

-- Location: LCCOMB_X43_Y17_N24
\Add1~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~140_combout\ = (sig_cnt_loop(70) & (\Add1~139\ $ (GND))) # (!sig_cnt_loop(70) & (!\Add1~139\ & VCC))
-- \Add1~141\ = CARRY((sig_cnt_loop(70) & !\Add1~139\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(70),
	datad => VCC,
	cin => \Add1~139\,
	combout => \Add1~140_combout\,
	cout => \Add1~141\);

-- Location: FF_X43_Y17_N25
\sig_cnt_loop[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~140_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(70));

-- Location: LCCOMB_X43_Y17_N26
\Add1~142\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~142_combout\ = (sig_cnt_loop(71) & (!\Add1~141\)) # (!sig_cnt_loop(71) & ((\Add1~141\) # (GND)))
-- \Add1~143\ = CARRY((!\Add1~141\) # (!sig_cnt_loop(71)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(71),
	datad => VCC,
	cin => \Add1~141\,
	combout => \Add1~142_combout\,
	cout => \Add1~143\);

-- Location: FF_X43_Y17_N27
\sig_cnt_loop[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~142_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(71));

-- Location: LCCOMB_X44_Y16_N6
\Equal1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (!sig_cnt_loop(68) & (!sig_cnt_loop(70) & (!sig_cnt_loop(69) & !sig_cnt_loop(71))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(68),
	datab => sig_cnt_loop(70),
	datac => sig_cnt_loop(69),
	datad => sig_cnt_loop(71),
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X43_Y17_N28
\Add1~144\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~144_combout\ = (sig_cnt_loop(72) & (\Add1~143\ $ (GND))) # (!sig_cnt_loop(72) & (!\Add1~143\ & VCC))
-- \Add1~145\ = CARRY((sig_cnt_loop(72) & !\Add1~143\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(72),
	datad => VCC,
	cin => \Add1~143\,
	combout => \Add1~144_combout\,
	cout => \Add1~145\);

-- Location: FF_X43_Y17_N29
\sig_cnt_loop[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~144_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(72));

-- Location: LCCOMB_X43_Y17_N30
\Add1~146\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~146_combout\ = (sig_cnt_loop(73) & (!\Add1~145\)) # (!sig_cnt_loop(73) & ((\Add1~145\) # (GND)))
-- \Add1~147\ = CARRY((!\Add1~145\) # (!sig_cnt_loop(73)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(73),
	datad => VCC,
	cin => \Add1~145\,
	combout => \Add1~146_combout\,
	cout => \Add1~147\);

-- Location: FF_X43_Y17_N31
\sig_cnt_loop[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~146_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(73));

-- Location: LCCOMB_X43_Y16_N0
\Add1~148\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~148_combout\ = (sig_cnt_loop(74) & (\Add1~147\ $ (GND))) # (!sig_cnt_loop(74) & (!\Add1~147\ & VCC))
-- \Add1~149\ = CARRY((sig_cnt_loop(74) & !\Add1~147\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(74),
	datad => VCC,
	cin => \Add1~147\,
	combout => \Add1~148_combout\,
	cout => \Add1~149\);

-- Location: FF_X43_Y16_N1
\sig_cnt_loop[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~148_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(74));

-- Location: LCCOMB_X43_Y16_N2
\Add1~150\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~150_combout\ = (sig_cnt_loop(75) & (!\Add1~149\)) # (!sig_cnt_loop(75) & ((\Add1~149\) # (GND)))
-- \Add1~151\ = CARRY((!\Add1~149\) # (!sig_cnt_loop(75)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(75),
	datad => VCC,
	cin => \Add1~149\,
	combout => \Add1~150_combout\,
	cout => \Add1~151\);

-- Location: FF_X43_Y16_N3
\sig_cnt_loop[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~150_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(75));

-- Location: LCCOMB_X43_Y16_N4
\Add1~152\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~152_combout\ = (sig_cnt_loop(76) & (\Add1~151\ $ (GND))) # (!sig_cnt_loop(76) & (!\Add1~151\ & VCC))
-- \Add1~153\ = CARRY((sig_cnt_loop(76) & !\Add1~151\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(76),
	datad => VCC,
	cin => \Add1~151\,
	combout => \Add1~152_combout\,
	cout => \Add1~153\);

-- Location: FF_X43_Y16_N5
\sig_cnt_loop[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~152_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(76));

-- Location: LCCOMB_X43_Y16_N6
\Add1~154\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~154_combout\ = (sig_cnt_loop(77) & (!\Add1~153\)) # (!sig_cnt_loop(77) & ((\Add1~153\) # (GND)))
-- \Add1~155\ = CARRY((!\Add1~153\) # (!sig_cnt_loop(77)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(77),
	datad => VCC,
	cin => \Add1~153\,
	combout => \Add1~154_combout\,
	cout => \Add1~155\);

-- Location: FF_X43_Y16_N7
\sig_cnt_loop[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~154_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(77));

-- Location: LCCOMB_X43_Y16_N8
\Add1~156\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~156_combout\ = (sig_cnt_loop(78) & (\Add1~155\ $ (GND))) # (!sig_cnt_loop(78) & (!\Add1~155\ & VCC))
-- \Add1~157\ = CARRY((sig_cnt_loop(78) & !\Add1~155\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(78),
	datad => VCC,
	cin => \Add1~155\,
	combout => \Add1~156_combout\,
	cout => \Add1~157\);

-- Location: FF_X43_Y16_N9
\sig_cnt_loop[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~156_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(78));

-- Location: LCCOMB_X43_Y16_N10
\Add1~158\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~158_combout\ = (sig_cnt_loop(79) & (!\Add1~157\)) # (!sig_cnt_loop(79) & ((\Add1~157\) # (GND)))
-- \Add1~159\ = CARRY((!\Add1~157\) # (!sig_cnt_loop(79)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(79),
	datad => VCC,
	cin => \Add1~157\,
	combout => \Add1~158_combout\,
	cout => \Add1~159\);

-- Location: FF_X43_Y16_N11
\sig_cnt_loop[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~158_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(79));

-- Location: LCCOMB_X43_Y16_N12
\Add1~160\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~160_combout\ = (sig_cnt_loop(80) & (\Add1~159\ $ (GND))) # (!sig_cnt_loop(80) & (!\Add1~159\ & VCC))
-- \Add1~161\ = CARRY((sig_cnt_loop(80) & !\Add1~159\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(80),
	datad => VCC,
	cin => \Add1~159\,
	combout => \Add1~160_combout\,
	cout => \Add1~161\);

-- Location: FF_X43_Y16_N13
\sig_cnt_loop[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~160_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(80));

-- Location: LCCOMB_X43_Y16_N14
\Add1~162\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~162_combout\ = (sig_cnt_loop(81) & (!\Add1~161\)) # (!sig_cnt_loop(81) & ((\Add1~161\) # (GND)))
-- \Add1~163\ = CARRY((!\Add1~161\) # (!sig_cnt_loop(81)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(81),
	datad => VCC,
	cin => \Add1~161\,
	combout => \Add1~162_combout\,
	cout => \Add1~163\);

-- Location: FF_X43_Y16_N15
\sig_cnt_loop[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~162_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(81));

-- Location: LCCOMB_X43_Y16_N16
\Add1~164\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~164_combout\ = (sig_cnt_loop(82) & (\Add1~163\ $ (GND))) # (!sig_cnt_loop(82) & (!\Add1~163\ & VCC))
-- \Add1~165\ = CARRY((sig_cnt_loop(82) & !\Add1~163\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(82),
	datad => VCC,
	cin => \Add1~163\,
	combout => \Add1~164_combout\,
	cout => \Add1~165\);

-- Location: FF_X43_Y16_N17
\sig_cnt_loop[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~164_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(82));

-- Location: LCCOMB_X43_Y16_N18
\Add1~166\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~166_combout\ = (sig_cnt_loop(83) & (!\Add1~165\)) # (!sig_cnt_loop(83) & ((\Add1~165\) # (GND)))
-- \Add1~167\ = CARRY((!\Add1~165\) # (!sig_cnt_loop(83)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(83),
	datad => VCC,
	cin => \Add1~165\,
	combout => \Add1~166_combout\,
	cout => \Add1~167\);

-- Location: FF_X43_Y16_N19
\sig_cnt_loop[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~166_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(83));

-- Location: LCCOMB_X44_Y16_N24
\Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!sig_cnt_loop(81) & (!sig_cnt_loop(83) & (!sig_cnt_loop(82) & !sig_cnt_loop(80))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(81),
	datab => sig_cnt_loop(83),
	datac => sig_cnt_loop(82),
	datad => sig_cnt_loop(80),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X44_Y16_N10
\Equal1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!sig_cnt_loop(79) & (!sig_cnt_loop(77) & (!sig_cnt_loop(76) & !sig_cnt_loop(78))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(79),
	datab => sig_cnt_loop(77),
	datac => sig_cnt_loop(76),
	datad => sig_cnt_loop(78),
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X44_Y16_N12
\Equal1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (!sig_cnt_loop(74) & (!sig_cnt_loop(75) & (!sig_cnt_loop(72) & !sig_cnt_loop(73))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(74),
	datab => sig_cnt_loop(75),
	datac => sig_cnt_loop(72),
	datad => sig_cnt_loop(73),
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X44_Y16_N16
\Equal1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (\Equal1~8_combout\ & (\Equal1~5_combout\ & (\Equal1~6_combout\ & \Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~8_combout\,
	datab => \Equal1~5_combout\,
	datac => \Equal1~6_combout\,
	datad => \Equal1~7_combout\,
	combout => \Equal1~9_combout\);

-- Location: LCCOMB_X43_Y16_N20
\Add1~168\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~168_combout\ = (sig_cnt_loop(84) & (\Add1~167\ $ (GND))) # (!sig_cnt_loop(84) & (!\Add1~167\ & VCC))
-- \Add1~169\ = CARRY((sig_cnt_loop(84) & !\Add1~167\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(84),
	datad => VCC,
	cin => \Add1~167\,
	combout => \Add1~168_combout\,
	cout => \Add1~169\);

-- Location: FF_X43_Y16_N21
\sig_cnt_loop[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~168_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(84));

-- Location: LCCOMB_X43_Y16_N22
\Add1~170\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~170_combout\ = (sig_cnt_loop(85) & (!\Add1~169\)) # (!sig_cnt_loop(85) & ((\Add1~169\) # (GND)))
-- \Add1~171\ = CARRY((!\Add1~169\) # (!sig_cnt_loop(85)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(85),
	datad => VCC,
	cin => \Add1~169\,
	combout => \Add1~170_combout\,
	cout => \Add1~171\);

-- Location: FF_X43_Y16_N23
\sig_cnt_loop[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~170_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(85));

-- Location: LCCOMB_X43_Y16_N24
\Add1~172\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~172_combout\ = (sig_cnt_loop(86) & (\Add1~171\ $ (GND))) # (!sig_cnt_loop(86) & (!\Add1~171\ & VCC))
-- \Add1~173\ = CARRY((sig_cnt_loop(86) & !\Add1~171\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(86),
	datad => VCC,
	cin => \Add1~171\,
	combout => \Add1~172_combout\,
	cout => \Add1~173\);

-- Location: FF_X43_Y16_N25
\sig_cnt_loop[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~172_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(86));

-- Location: LCCOMB_X43_Y16_N26
\Add1~174\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~174_combout\ = (sig_cnt_loop(87) & (!\Add1~173\)) # (!sig_cnt_loop(87) & ((\Add1~173\) # (GND)))
-- \Add1~175\ = CARRY((!\Add1~173\) # (!sig_cnt_loop(87)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(87),
	datad => VCC,
	cin => \Add1~173\,
	combout => \Add1~174_combout\,
	cout => \Add1~175\);

-- Location: FF_X43_Y16_N27
\sig_cnt_loop[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~174_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(87));

-- Location: LCCOMB_X42_Y16_N2
\Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!sig_cnt_loop(87) & (!sig_cnt_loop(86) & (!sig_cnt_loop(84) & !sig_cnt_loop(85))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(87),
	datab => sig_cnt_loop(86),
	datac => sig_cnt_loop(84),
	datad => sig_cnt_loop(85),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X43_Y16_N28
\Add1~176\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~176_combout\ = (sig_cnt_loop(88) & (\Add1~175\ $ (GND))) # (!sig_cnt_loop(88) & (!\Add1~175\ & VCC))
-- \Add1~177\ = CARRY((sig_cnt_loop(88) & !\Add1~175\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(88),
	datad => VCC,
	cin => \Add1~175\,
	combout => \Add1~176_combout\,
	cout => \Add1~177\);

-- Location: FF_X43_Y16_N29
\sig_cnt_loop[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~176_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(88));

-- Location: LCCOMB_X43_Y16_N30
\Add1~178\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~178_combout\ = (sig_cnt_loop(89) & (!\Add1~177\)) # (!sig_cnt_loop(89) & ((\Add1~177\) # (GND)))
-- \Add1~179\ = CARRY((!\Add1~177\) # (!sig_cnt_loop(89)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(89),
	datad => VCC,
	cin => \Add1~177\,
	combout => \Add1~178_combout\,
	cout => \Add1~179\);

-- Location: FF_X43_Y16_N31
\sig_cnt_loop[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~178_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(89));

-- Location: LCCOMB_X43_Y15_N0
\Add1~180\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~180_combout\ = (sig_cnt_loop(90) & (\Add1~179\ $ (GND))) # (!sig_cnt_loop(90) & (!\Add1~179\ & VCC))
-- \Add1~181\ = CARRY((sig_cnt_loop(90) & !\Add1~179\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(90),
	datad => VCC,
	cin => \Add1~179\,
	combout => \Add1~180_combout\,
	cout => \Add1~181\);

-- Location: FF_X43_Y15_N1
\sig_cnt_loop[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~180_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(90));

-- Location: LCCOMB_X43_Y15_N2
\Add1~182\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~182_combout\ = (sig_cnt_loop(91) & (!\Add1~181\)) # (!sig_cnt_loop(91) & ((\Add1~181\) # (GND)))
-- \Add1~183\ = CARRY((!\Add1~181\) # (!sig_cnt_loop(91)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(91),
	datad => VCC,
	cin => \Add1~181\,
	combout => \Add1~182_combout\,
	cout => \Add1~183\);

-- Location: FF_X43_Y15_N3
\sig_cnt_loop[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~182_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(91));

-- Location: LCCOMB_X43_Y15_N20
\Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!sig_cnt_loop(88) & (!sig_cnt_loop(91) & (!sig_cnt_loop(89) & !sig_cnt_loop(90))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(88),
	datab => sig_cnt_loop(91),
	datac => sig_cnt_loop(89),
	datad => sig_cnt_loop(90),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X43_Y15_N4
\Add1~184\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~184_combout\ = (sig_cnt_loop(92) & (\Add1~183\ $ (GND))) # (!sig_cnt_loop(92) & (!\Add1~183\ & VCC))
-- \Add1~185\ = CARRY((sig_cnt_loop(92) & !\Add1~183\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(92),
	datad => VCC,
	cin => \Add1~183\,
	combout => \Add1~184_combout\,
	cout => \Add1~185\);

-- Location: FF_X43_Y15_N5
\sig_cnt_loop[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~184_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(92));

-- Location: LCCOMB_X43_Y15_N6
\Add1~186\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~186_combout\ = (sig_cnt_loop(93) & (!\Add1~185\)) # (!sig_cnt_loop(93) & ((\Add1~185\) # (GND)))
-- \Add1~187\ = CARRY((!\Add1~185\) # (!sig_cnt_loop(93)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(93),
	datad => VCC,
	cin => \Add1~185\,
	combout => \Add1~186_combout\,
	cout => \Add1~187\);

-- Location: FF_X43_Y15_N7
\sig_cnt_loop[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~186_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(93));

-- Location: LCCOMB_X43_Y15_N8
\Add1~188\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~188_combout\ = (sig_cnt_loop(94) & (\Add1~187\ $ (GND))) # (!sig_cnt_loop(94) & (!\Add1~187\ & VCC))
-- \Add1~189\ = CARRY((sig_cnt_loop(94) & !\Add1~187\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(94),
	datad => VCC,
	cin => \Add1~187\,
	combout => \Add1~188_combout\,
	cout => \Add1~189\);

-- Location: FF_X43_Y15_N9
\sig_cnt_loop[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~188_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(94));

-- Location: LCCOMB_X43_Y15_N10
\Add1~190\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~190_combout\ = (sig_cnt_loop(95) & (!\Add1~189\)) # (!sig_cnt_loop(95) & ((\Add1~189\) # (GND)))
-- \Add1~191\ = CARRY((!\Add1~189\) # (!sig_cnt_loop(95)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(95),
	datad => VCC,
	cin => \Add1~189\,
	combout => \Add1~190_combout\,
	cout => \Add1~191\);

-- Location: FF_X43_Y15_N11
\sig_cnt_loop[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~190_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(95));

-- Location: LCCOMB_X43_Y15_N26
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!sig_cnt_loop(95) & (!sig_cnt_loop(92) & (!sig_cnt_loop(94) & !sig_cnt_loop(93))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(95),
	datab => sig_cnt_loop(92),
	datac => sig_cnt_loop(94),
	datad => sig_cnt_loop(93),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X43_Y15_N12
\Add1~192\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~192_combout\ = (sig_cnt_loop(96) & (\Add1~191\ $ (GND))) # (!sig_cnt_loop(96) & (!\Add1~191\ & VCC))
-- \Add1~193\ = CARRY((sig_cnt_loop(96) & !\Add1~191\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(96),
	datad => VCC,
	cin => \Add1~191\,
	combout => \Add1~192_combout\,
	cout => \Add1~193\);

-- Location: FF_X43_Y15_N13
\sig_cnt_loop[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~192_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(96));

-- Location: LCCOMB_X43_Y15_N14
\Add1~194\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~194_combout\ = (sig_cnt_loop(97) & (!\Add1~193\)) # (!sig_cnt_loop(97) & ((\Add1~193\) # (GND)))
-- \Add1~195\ = CARRY((!\Add1~193\) # (!sig_cnt_loop(97)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_loop(97),
	datad => VCC,
	cin => \Add1~193\,
	combout => \Add1~194_combout\,
	cout => \Add1~195\);

-- Location: FF_X43_Y15_N15
\sig_cnt_loop[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~194_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(97));

-- Location: LCCOMB_X43_Y15_N16
\Add1~196\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~196_combout\ = (sig_cnt_loop(98) & (\Add1~195\ $ (GND))) # (!sig_cnt_loop(98) & (!\Add1~195\ & VCC))
-- \Add1~197\ = CARRY((sig_cnt_loop(98) & !\Add1~195\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(98),
	datad => VCC,
	cin => \Add1~195\,
	combout => \Add1~196_combout\,
	cout => \Add1~197\);

-- Location: LCCOMB_X43_Y15_N30
\sig_cnt_loop~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt_loop~1_combout\ = (!\Equal1~32_combout\ & \Add1~196_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~32_combout\,
	datad => \Add1~196_combout\,
	combout => \sig_cnt_loop~1_combout\);

-- Location: FF_X43_Y15_N31
\sig_cnt_loop[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt_loop~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(98));

-- Location: LCCOMB_X43_Y15_N18
\Add1~198\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~198_combout\ = \Add1~197\ $ (sig_cnt_loop(99))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sig_cnt_loop(99),
	cin => \Add1~197\,
	combout => \Add1~198_combout\);

-- Location: LCCOMB_X43_Y15_N28
\sig_cnt_loop~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt_loop~0_combout\ = (!\Equal1~32_combout\ & \Add1~198_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~32_combout\,
	datad => \Add1~198_combout\,
	combout => \sig_cnt_loop~0_combout\);

-- Location: FF_X43_Y15_N29
\sig_cnt_loop[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt_loop~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_loop(99));

-- Location: LCCOMB_X43_Y15_N24
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!sig_cnt_loop(98) & (!sig_cnt_loop(96) & (!sig_cnt_loop(97) & !sig_cnt_loop(99))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(98),
	datab => sig_cnt_loop(96),
	datac => sig_cnt_loop(97),
	datad => sig_cnt_loop(99),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X43_Y15_N22
\Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~3_combout\ & (\Equal1~2_combout\ & (\Equal1~1_combout\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~3_combout\,
	datab => \Equal1~2_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X44_Y17_N6
\Equal1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~13_combout\ = (!sig_cnt_loop(54) & (!sig_cnt_loop(53) & (!sig_cnt_loop(55) & !sig_cnt_loop(52))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(54),
	datab => sig_cnt_loop(53),
	datac => sig_cnt_loop(55),
	datad => sig_cnt_loop(52),
	combout => \Equal1~13_combout\);

-- Location: LCCOMB_X44_Y17_N16
\Equal1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~10_combout\ = (!sig_cnt_loop(65) & (!sig_cnt_loop(67) & (!sig_cnt_loop(66) & !sig_cnt_loop(64))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(65),
	datab => sig_cnt_loop(67),
	datac => sig_cnt_loop(66),
	datad => sig_cnt_loop(64),
	combout => \Equal1~10_combout\);

-- Location: LCCOMB_X44_Y17_N4
\Equal1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~12_combout\ = (!sig_cnt_loop(59) & (!sig_cnt_loop(56) & (!sig_cnt_loop(58) & !sig_cnt_loop(57))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(59),
	datab => sig_cnt_loop(56),
	datac => sig_cnt_loop(58),
	datad => sig_cnt_loop(57),
	combout => \Equal1~12_combout\);

-- Location: LCCOMB_X44_Y17_N10
\Equal1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~11_combout\ = (!sig_cnt_loop(63) & (!sig_cnt_loop(61) & (!sig_cnt_loop(60) & !sig_cnt_loop(62))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_loop(63),
	datab => sig_cnt_loop(61),
	datac => sig_cnt_loop(60),
	datad => sig_cnt_loop(62),
	combout => \Equal1~11_combout\);

-- Location: LCCOMB_X44_Y17_N24
\Equal1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~14_combout\ = (\Equal1~13_combout\ & (\Equal1~10_combout\ & (\Equal1~12_combout\ & \Equal1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~13_combout\,
	datab => \Equal1~10_combout\,
	datac => \Equal1~12_combout\,
	datad => \Equal1~11_combout\,
	combout => \Equal1~14_combout\);

-- Location: LCCOMB_X44_Y20_N24
\Equal1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~20_combout\ = (\Equal1~19_combout\ & (\Equal1~9_combout\ & (\Equal1~4_combout\ & \Equal1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~19_combout\,
	datab => \Equal1~9_combout\,
	datac => \Equal1~4_combout\,
	datad => \Equal1~14_combout\,
	combout => \Equal1~20_combout\);

-- Location: LCCOMB_X44_Y20_N18
\Equal1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~32_combout\ = (\Equal1~25_combout\ & (\Equal1~31_combout\ & (\Equal1~26_combout\ & \Equal1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~25_combout\,
	datab => \Equal1~31_combout\,
	datac => \Equal1~26_combout\,
	datad => \Equal1~20_combout\,
	combout => \Equal1~32_combout\);

-- Location: LCCOMB_X42_Y16_N8
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\Equal0~4_combout\ & (((!\Equal1~32_combout\)) # (!\state_leds.s4~q\))) # (!\Equal0~4_combout\ & (\state_leds.s0~q\ & ((!\Equal1~32_combout\) # (!\state_leds.s4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \state_leds.s4~q\,
	datac => \state_leds.s0~q\,
	datad => \Equal1~32_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X42_Y16_N9
\state_leds.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_leds.s0~q\);

-- Location: FF_X43_Y13_N29
\set_leds:sig_cnt_delay[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~28_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \ALT_INV_state_leds.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \set_leds:sig_cnt_delay[14]~q\);

-- Location: LCCOMB_X43_Y13_N28
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = \Add0~27\ $ (!\set_leds:sig_cnt_delay[14]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \set_leds:sig_cnt_delay[14]~q\,
	cin => \Add0~27\,
	combout => \Add0~28_combout\);

-- Location: LCCOMB_X42_Y13_N30
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\Add0~28_combout\ & (\Add0~26_combout\ & \Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~28_combout\,
	datac => \Add0~26_combout\,
	datad => \Add0~24_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X42_Y13_N28
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Add0~18_combout\ & (!\Add0~16_combout\ & (!\Add0~20_combout\ & \Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Add0~16_combout\,
	datac => \Add0~20_combout\,
	datad => \Add0~22_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X42_Y13_N24
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\Add0~10_combout\ & (\Add0~14_combout\ & (\Add0~8_combout\ & !\Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add0~14_combout\,
	datac => \Add0~8_combout\,
	datad => \Add0~12_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X42_Y13_N26
\Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = ((\state_leds.s0~q\) # (!\Equal0~7_combout\)) # (!\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~7_combout\,
	datac => \state_leds.s0~q\,
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X42_Y16_N28
\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\state_leds.s3~q\ & (!\state_leds.s2~q\ & !\state_leds.s4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_leds.s3~q\,
	datab => \state_leds.s2~q\,
	datad => \state_leds.s4~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X42_Y13_N4
\Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (\Selector3~0_combout\ & (((\Selector3~1_combout\) # (!\Equal0~5_combout\)) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~5_combout\,
	datac => \Selector3~1_combout\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~2_combout\);

-- Location: LCCOMB_X41_Y15_N12
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\state_leds.s0~q\ & (\Equal0~4_combout\ & \Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_leds.s0~q\,
	datac => \Equal0~4_combout\,
	datad => \Selector3~0_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X42_Y16_N0
\Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\state_leds.s4~q\ & !\Equal1~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_leds.s4~q\,
	datad => \Equal1~32_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X42_Y16_N1
\state_leds.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_leds.s5~q\);

-- Location: LCCOMB_X41_Y15_N2
\Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (!\state_leds.s5~q\ & ((\Selector2~0_combout\) # ((\Selector3~5_combout\ & \state_leds.s1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \Selector3~5_combout\,
	datac => \state_leds.s1~q\,
	datad => \state_leds.s5~q\,
	combout => \Selector2~1_combout\);

-- Location: FF_X41_Y15_N3
\state_leds.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector2~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_leds.s1~q\);

-- Location: IOIBUF_X40_Y0_N8
\load_leds~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_leds,
	o => \load_leds~input_o\);

-- Location: LCCOMB_X41_Y15_N0
\Selector3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~4_combout\ = (\state_leds.s1~q\ & (((!\load_leds~input_o\)))) # (!\state_leds.s1~q\ & (\Equal3~3_combout\ & ((\Equal3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~3_combout\,
	datab => \state_leds.s1~q\,
	datac => \load_leds~input_o\,
	datad => \Equal3~2_combout\,
	combout => \Selector3~4_combout\);

-- Location: LCCOMB_X41_Y15_N28
\Selector3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~5_combout\ = (\Selector3~2_combout\ & (((!\state_leds.s1~q\ & !\Selector3~3_combout\)) # (!\Selector3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~2_combout\,
	datab => \Selector3~4_combout\,
	datac => \state_leds.s1~q\,
	datad => \Selector3~3_combout\,
	combout => \Selector3~5_combout\);

-- Location: LCCOMB_X41_Y15_N24
\Selector3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~6_combout\ = (\Selector3~2_combout\ & (!\Selector3~5_combout\ & !\state_leds.s5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~2_combout\,
	datab => \Selector3~5_combout\,
	datad => \state_leds.s5~q\,
	combout => \Selector3~6_combout\);

-- Location: FF_X41_Y15_N25
\state_leds.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector3~6_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_leds.s2~q\);

-- Location: IOIBUF_X34_Y39_N29
\rgb_leds[94]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(94),
	o => \rgb_leds[94]~input_o\);

-- Location: IOIBUF_X31_Y39_N22
\rgb_leds[92]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(92),
	o => \rgb_leds[92]~input_o\);

-- Location: IOIBUF_X29_Y39_N15
\rgb_leds[91]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(91),
	o => \rgb_leds[91]~input_o\);

-- Location: IOIBUF_X31_Y39_N15
\rgb_leds[90]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(90),
	o => \rgb_leds[90]~input_o\);

-- Location: IOIBUF_X34_Y39_N22
\rgb_leds[88]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(88),
	o => \rgb_leds[88]~input_o\);

-- Location: IOIBUF_X31_Y39_N29
\rgb_leds[87]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(87),
	o => \rgb_leds[87]~input_o\);

-- Location: IOIBUF_X29_Y39_N8
\rgb_leds[86]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(86),
	o => \rgb_leds[86]~input_o\);

-- Location: IOIBUF_X29_Y39_N1
\rgb_leds[85]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(85),
	o => \rgb_leds[85]~input_o\);

-- Location: IOIBUF_X36_Y39_N22
\rgb_leds[84]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(84),
	o => \rgb_leds[84]~input_o\);

-- Location: IOIBUF_X34_Y39_N15
\rgb_leds[81]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(81),
	o => \rgb_leds[81]~input_o\);

-- Location: IOIBUF_X58_Y0_N8
\rgb_leds[79]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(79),
	o => \rgb_leds[79]~input_o\);

-- Location: IOIBUF_X58_Y0_N29
\rgb_leds[78]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(78),
	o => \rgb_leds[78]~input_o\);

-- Location: IOIBUF_X60_Y0_N29
\rgb_leds[77]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(77),
	o => \rgb_leds[77]~input_o\);

-- Location: IOIBUF_X56_Y0_N22
\rgb_leds[76]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(76),
	o => \rgb_leds[76]~input_o\);

-- Location: IOIBUF_X62_Y0_N15
\rgb_leds[72]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(72),
	o => \rgb_leds[72]~input_o\);

-- Location: IOIBUF_X69_Y0_N1
\rgb_leds[70]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(70),
	o => \rgb_leds[70]~input_o\);

-- Location: IOIBUF_X58_Y0_N22
\rgb_leds[68]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(68),
	o => \rgb_leds[68]~input_o\);

-- Location: IOIBUF_X58_Y0_N15
\rgb_leds[66]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(66),
	o => \rgb_leds[66]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\rgb_leds[64]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(64),
	o => \rgb_leds[64]~input_o\);

-- Location: IOIBUF_X78_Y25_N1
\rgb_leds[63]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(63),
	o => \rgb_leds[63]~input_o\);

-- Location: IOIBUF_X78_Y24_N8
\rgb_leds[62]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(62),
	o => \rgb_leds[62]~input_o\);

-- Location: IOIBUF_X78_Y23_N22
\rgb_leds[61]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(61),
	o => \rgb_leds[61]~input_o\);

-- Location: IOIBUF_X78_Y21_N15
\rgb_leds[53]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(53),
	o => \rgb_leds[53]~input_o\);

-- Location: IOIBUF_X78_Y21_N1
\rgb_leds[50]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(50),
	o => \rgb_leds[50]~input_o\);

-- Location: IOIBUF_X78_Y24_N15
\rgb_leds[49]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(49),
	o => \rgb_leds[49]~input_o\);

-- Location: IOIBUF_X78_Y21_N22
\rgb_leds[48]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(48),
	o => \rgb_leds[48]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\rgb_leds[47]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(47),
	o => \rgb_leds[47]~input_o\);

-- Location: IOIBUF_X31_Y0_N15
\rgb_leds[44]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(44),
	o => \rgb_leds[44]~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\rgb_leds[41]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(41),
	o => \rgb_leds[41]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\rgb_leds[39]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(39),
	o => \rgb_leds[39]~input_o\);

-- Location: IOIBUF_X31_Y0_N29
\rgb_leds[38]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(38),
	o => \rgb_leds[38]~input_o\);

-- Location: IOIBUF_X29_Y0_N22
\rgb_leds[36]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(36),
	o => \rgb_leds[36]~input_o\);

-- Location: IOIBUF_X24_Y0_N22
\rgb_leds[32]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(32),
	o => \rgb_leds[32]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\rgb_leds[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(30),
	o => \rgb_leds[30]~input_o\);

-- Location: IOIBUF_X34_Y0_N29
\rgb_leds[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(29),
	o => \rgb_leds[29]~input_o\);

-- Location: IOIBUF_X29_Y0_N15
\rgb_leds[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(28),
	o => \rgb_leds[28]~input_o\);

-- Location: IOIBUF_X29_Y0_N29
\rgb_leds[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(26),
	o => \rgb_leds[26]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\rgb_leds[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(24),
	o => \rgb_leds[24]~input_o\);

-- Location: IOIBUF_X34_Y0_N15
\rgb_leds[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(20),
	o => \rgb_leds[20]~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\rgb_leds[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(19),
	o => \rgb_leds[19]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\rgb_leds[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(16),
	o => \rgb_leds[16]~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\rgb_leds[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(14),
	o => \rgb_leds[14]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\rgb_leds[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(13),
	o => \rgb_leds[13]~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\rgb_leds[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(12),
	o => \rgb_leds[12]~input_o\);

-- Location: IOIBUF_X49_Y0_N22
\rgb_leds[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(11),
	o => \rgb_leds[11]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\rgb_leds[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(10),
	o => \rgb_leds[10]~input_o\);

-- Location: IOIBUF_X69_Y0_N22
\rgb_leds[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(9),
	o => \rgb_leds[9]~input_o\);

-- Location: IOIBUF_X49_Y0_N29
\rgb_leds[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(6),
	o => \rgb_leds[6]~input_o\);

-- Location: IOIBUF_X46_Y0_N8
\rgb_leds[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(4),
	o => \rgb_leds[4]~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\rgb_leds[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(3),
	o => \rgb_leds[3]~input_o\);

-- Location: LCCOMB_X41_Y15_N8
\sig_shift_led_rgb[94]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_shift_led_rgb[94]~0_combout\ = (\state_leds.s1~q\ & (!\load_leds~input_o\)) # (!\state_leds.s1~q\ & ((\state_leds.s3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load_leds~input_o\,
	datac => \state_leds.s3~q\,
	datad => \state_leds.s1~q\,
	combout => \sig_shift_led_rgb[94]~0_combout\);

-- Location: LCCOMB_X41_Y15_N6
\LED_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_1~1_combout\ = (!\load_leds~input_o\ & \state_leds.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \load_leds~input_o\,
	datad => \state_leds.s1~q\,
	combout => \LED_1~1_combout\);

-- Location: IOIBUF_X49_Y0_N8
\rgb_leds[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(0),
	o => \rgb_leds[0]~input_o\);

-- Location: LCCOMB_X49_Y1_N14
\Selector107~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector107~0_combout\ = (\sig_shift_led_rgb[94]~0_combout\ & (\LED_1~1_combout\ & ((\rgb_leds[0]~input_o\)))) # (!\sig_shift_led_rgb[94]~0_combout\ & ((sig_shift_led_rgb(0)) # ((\LED_1~1_combout\ & \rgb_leds[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_shift_led_rgb[94]~0_combout\,
	datab => \LED_1~1_combout\,
	datac => sig_shift_led_rgb(0),
	datad => \rgb_leds[0]~input_o\,
	combout => \Selector107~0_combout\);

-- Location: FF_X49_Y1_N15
\sig_shift_led_rgb[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector107~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(0));

-- Location: IOIBUF_X51_Y0_N1
\rgb_leds[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(1),
	o => \rgb_leds[1]~input_o\);

-- Location: LCCOMB_X49_Y1_N4
\Selector106~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector106~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(0))) # (!\state_leds.s3~q\ & ((\rgb_leds[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_leds.s3~q\,
	datac => sig_shift_led_rgb(0),
	datad => \rgb_leds[1]~input_o\,
	combout => \Selector106~0_combout\);

-- Location: FF_X49_Y1_N5
\sig_shift_led_rgb[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector106~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(1));

-- Location: IOIBUF_X54_Y0_N1
\rgb_leds[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(2),
	o => \rgb_leds[2]~input_o\);

-- Location: LCCOMB_X49_Y1_N18
\Selector105~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector105~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(1))) # (!\state_leds.s3~q\ & ((\rgb_leds[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_leds.s3~q\,
	datac => sig_shift_led_rgb(1),
	datad => \rgb_leds[2]~input_o\,
	combout => \Selector105~0_combout\);

-- Location: FF_X49_Y1_N19
\sig_shift_led_rgb[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector105~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(2));

-- Location: LCCOMB_X49_Y1_N16
\Selector104~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector104~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(2)))) # (!\state_leds.s3~q\ & (\rgb_leds[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgb_leds[3]~input_o\,
	datac => \state_leds.s3~q\,
	datad => sig_shift_led_rgb(2),
	combout => \Selector104~0_combout\);

-- Location: FF_X49_Y1_N17
\sig_shift_led_rgb[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector104~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(3));

-- Location: LCCOMB_X49_Y1_N30
\Selector103~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector103~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(3)))) # (!\state_leds.s3~q\ & (\rgb_leds[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgb_leds[4]~input_o\,
	datac => \state_leds.s3~q\,
	datad => sig_shift_led_rgb(3),
	combout => \Selector103~0_combout\);

-- Location: FF_X49_Y1_N31
\sig_shift_led_rgb[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector103~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(4));

-- Location: IOIBUF_X49_Y0_N1
\rgb_leds[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(5),
	o => \rgb_leds[5]~input_o\);

-- Location: LCCOMB_X49_Y1_N28
\Selector102~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector102~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(4))) # (!\state_leds.s3~q\ & ((\rgb_leds[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_shift_led_rgb(4),
	datab => \state_leds.s3~q\,
	datac => \rgb_leds[5]~input_o\,
	combout => \Selector102~0_combout\);

-- Location: FF_X49_Y1_N29
\sig_shift_led_rgb[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector102~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(5));

-- Location: LCCOMB_X49_Y1_N26
\Selector101~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector101~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(5)))) # (!\state_leds.s3~q\ & (\rgb_leds[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgb_leds[6]~input_o\,
	datac => \state_leds.s3~q\,
	datad => sig_shift_led_rgb(5),
	combout => \Selector101~0_combout\);

-- Location: FF_X49_Y1_N27
\sig_shift_led_rgb[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector101~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(6));

-- Location: IOIBUF_X51_Y0_N29
\rgb_leds[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(7),
	o => \rgb_leds[7]~input_o\);

-- Location: LCCOMB_X49_Y1_N8
\Selector100~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector100~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(6))) # (!\state_leds.s3~q\ & ((\rgb_leds[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_leds.s3~q\,
	datac => sig_shift_led_rgb(6),
	datad => \rgb_leds[7]~input_o\,
	combout => \Selector100~0_combout\);

-- Location: FF_X49_Y1_N9
\sig_shift_led_rgb[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector100~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(7));

-- Location: IOIBUF_X54_Y0_N22
\rgb_leds[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(8),
	o => \rgb_leds[8]~input_o\);

-- Location: LCCOMB_X49_Y1_N22
\Selector99~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector99~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(7))) # (!\state_leds.s3~q\ & ((\rgb_leds[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_leds.s3~q\,
	datac => sig_shift_led_rgb(7),
	datad => \rgb_leds[8]~input_o\,
	combout => \Selector99~0_combout\);

-- Location: FF_X49_Y1_N23
\sig_shift_led_rgb[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector99~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(8));

-- Location: LCCOMB_X49_Y1_N20
\Selector98~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector98~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(8)))) # (!\state_leds.s3~q\ & (\rgb_leds[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgb_leds[9]~input_o\,
	datab => \state_leds.s3~q\,
	datac => sig_shift_led_rgb(8),
	combout => \Selector98~0_combout\);

-- Location: FF_X49_Y1_N21
\sig_shift_led_rgb[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector98~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(9));

-- Location: LCCOMB_X49_Y1_N2
\Selector97~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector97~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(9)))) # (!\state_leds.s3~q\ & (\rgb_leds[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgb_leds[10]~input_o\,
	datac => \state_leds.s3~q\,
	datad => sig_shift_led_rgb(9),
	combout => \Selector97~0_combout\);

-- Location: FF_X49_Y1_N3
\sig_shift_led_rgb[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector97~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(10));

-- Location: LCCOMB_X49_Y1_N0
\Selector96~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector96~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(10)))) # (!\state_leds.s3~q\ & (\rgb_leds[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgb_leds[11]~input_o\,
	datac => \state_leds.s3~q\,
	datad => sig_shift_led_rgb(10),
	combout => \Selector96~0_combout\);

-- Location: FF_X49_Y1_N1
\sig_shift_led_rgb[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector96~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(11));

-- Location: LCCOMB_X49_Y1_N6
\Selector95~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector95~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(11)))) # (!\state_leds.s3~q\ & (\rgb_leds[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_leds.s3~q\,
	datac => \rgb_leds[12]~input_o\,
	datad => sig_shift_led_rgb(11),
	combout => \Selector95~0_combout\);

-- Location: FF_X49_Y1_N7
\sig_shift_led_rgb[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector95~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(12));

-- Location: LCCOMB_X49_Y1_N12
\Selector94~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector94~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(12)))) # (!\state_leds.s3~q\ & (\rgb_leds[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_leds.s3~q\,
	datac => \rgb_leds[13]~input_o\,
	datad => sig_shift_led_rgb(12),
	combout => \Selector94~0_combout\);

-- Location: FF_X49_Y1_N13
\sig_shift_led_rgb[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector94~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(13));

-- Location: LCCOMB_X49_Y1_N10
\Selector93~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector93~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(13)))) # (!\state_leds.s3~q\ & (\rgb_leds[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_leds.s3~q\,
	datac => \rgb_leds[14]~input_o\,
	datad => sig_shift_led_rgb(13),
	combout => \Selector93~0_combout\);

-- Location: FF_X49_Y1_N11
\sig_shift_led_rgb[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector93~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(14));

-- Location: IOIBUF_X40_Y0_N15
\rgb_leds[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(15),
	o => \rgb_leds[15]~input_o\);

-- Location: LCCOMB_X49_Y1_N24
\Selector92~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector92~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(14))) # (!\state_leds.s3~q\ & ((\rgb_leds[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_shift_led_rgb(14),
	datab => \rgb_leds[15]~input_o\,
	datac => \state_leds.s3~q\,
	combout => \Selector92~0_combout\);

-- Location: FF_X49_Y1_N25
\sig_shift_led_rgb[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector92~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(15));

-- Location: LCCOMB_X34_Y4_N22
\Selector91~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector91~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(15)))) # (!\state_leds.s3~q\ & (\rgb_leds[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_leds.s3~q\,
	datac => \rgb_leds[16]~input_o\,
	datad => sig_shift_led_rgb(15),
	combout => \Selector91~0_combout\);

-- Location: FF_X34_Y4_N23
\sig_shift_led_rgb[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector91~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(16));

-- Location: IOIBUF_X40_Y0_N29
\rgb_leds[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(17),
	o => \rgb_leds[17]~input_o\);

-- Location: LCCOMB_X34_Y4_N12
\Selector90~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector90~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(16))) # (!\state_leds.s3~q\ & ((\rgb_leds[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_shift_led_rgb(16),
	datab => \state_leds.s3~q\,
	datad => \rgb_leds[17]~input_o\,
	combout => \Selector90~0_combout\);

-- Location: FF_X34_Y4_N13
\sig_shift_led_rgb[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector90~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(17));

-- Location: IOIBUF_X34_Y0_N8
\rgb_leds[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(18),
	o => \rgb_leds[18]~input_o\);

-- Location: LCCOMB_X34_Y4_N2
\Selector89~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector89~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(17))) # (!\state_leds.s3~q\ & ((\rgb_leds[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_shift_led_rgb(17),
	datab => \rgb_leds[18]~input_o\,
	datad => \state_leds.s3~q\,
	combout => \Selector89~0_combout\);

-- Location: FF_X34_Y4_N3
\sig_shift_led_rgb[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector89~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(18));

-- Location: LCCOMB_X34_Y4_N0
\Selector88~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector88~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(18)))) # (!\state_leds.s3~q\ & (\rgb_leds[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgb_leds[19]~input_o\,
	datab => sig_shift_led_rgb(18),
	datad => \state_leds.s3~q\,
	combout => \Selector88~0_combout\);

-- Location: FF_X34_Y4_N1
\sig_shift_led_rgb[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector88~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(19));

-- Location: LCCOMB_X34_Y4_N30
\Selector87~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector87~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(19)))) # (!\state_leds.s3~q\ & (\rgb_leds[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgb_leds[20]~input_o\,
	datab => sig_shift_led_rgb(19),
	datad => \state_leds.s3~q\,
	combout => \Selector87~0_combout\);

-- Location: FF_X34_Y4_N31
\sig_shift_led_rgb[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector87~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(20));

-- Location: IOIBUF_X26_Y0_N29
\rgb_leds[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(21),
	o => \rgb_leds[21]~input_o\);

-- Location: LCCOMB_X34_Y4_N20
\Selector86~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector86~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(20))) # (!\state_leds.s3~q\ & ((\rgb_leds[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_shift_led_rgb(20),
	datab => \state_leds.s3~q\,
	datad => \rgb_leds[21]~input_o\,
	combout => \Selector86~0_combout\);

-- Location: FF_X34_Y4_N21
\sig_shift_led_rgb[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector86~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(21));

-- Location: IOIBUF_X38_Y0_N22
\rgb_leds[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(22),
	o => \rgb_leds[22]~input_o\);

-- Location: LCCOMB_X34_Y4_N10
\Selector85~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector85~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(21))) # (!\state_leds.s3~q\ & ((\rgb_leds[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_shift_led_rgb(21),
	datac => \rgb_leds[22]~input_o\,
	datad => \state_leds.s3~q\,
	combout => \Selector85~0_combout\);

-- Location: FF_X34_Y4_N11
\sig_shift_led_rgb[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector85~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(22));

-- Location: IOIBUF_X38_Y0_N29
\rgb_leds[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(23),
	o => \rgb_leds[23]~input_o\);

-- Location: LCCOMB_X34_Y4_N16
\Selector84~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector84~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(22))) # (!\state_leds.s3~q\ & ((\rgb_leds[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_shift_led_rgb(22),
	datab => \rgb_leds[23]~input_o\,
	datad => \state_leds.s3~q\,
	combout => \Selector84~0_combout\);

-- Location: FF_X34_Y4_N17
\sig_shift_led_rgb[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector84~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(23));

-- Location: LCCOMB_X34_Y4_N6
\Selector83~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector83~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(23)))) # (!\state_leds.s3~q\ & (\rgb_leds[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgb_leds[24]~input_o\,
	datab => sig_shift_led_rgb(23),
	datad => \state_leds.s3~q\,
	combout => \Selector83~0_combout\);

-- Location: FF_X34_Y4_N7
\sig_shift_led_rgb[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector83~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(24));

-- Location: IOIBUF_X26_Y0_N8
\rgb_leds[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(25),
	o => \rgb_leds[25]~input_o\);

-- Location: LCCOMB_X34_Y4_N28
\Selector82~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector82~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(24))) # (!\state_leds.s3~q\ & ((\rgb_leds[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_shift_led_rgb(24),
	datab => \rgb_leds[25]~input_o\,
	datad => \state_leds.s3~q\,
	combout => \Selector82~0_combout\);

-- Location: FF_X34_Y4_N29
\sig_shift_led_rgb[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector82~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(25));

-- Location: LCCOMB_X34_Y4_N26
\Selector81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector81~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(25)))) # (!\state_leds.s3~q\ & (\rgb_leds[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgb_leds[26]~input_o\,
	datab => sig_shift_led_rgb(25),
	datad => \state_leds.s3~q\,
	combout => \Selector81~0_combout\);

-- Location: FF_X34_Y4_N27
\sig_shift_led_rgb[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector81~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(26));

-- Location: IOIBUF_X34_Y0_N22
\rgb_leds[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(27),
	o => \rgb_leds[27]~input_o\);

-- Location: LCCOMB_X34_Y4_N24
\Selector80~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector80~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(26))) # (!\state_leds.s3~q\ & ((\rgb_leds[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_shift_led_rgb(26),
	datab => \rgb_leds[27]~input_o\,
	datad => \state_leds.s3~q\,
	combout => \Selector80~0_combout\);

-- Location: FF_X34_Y4_N25
\sig_shift_led_rgb[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector80~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(27));

-- Location: LCCOMB_X34_Y4_N14
\Selector79~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector79~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(27)))) # (!\state_leds.s3~q\ & (\rgb_leds[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgb_leds[28]~input_o\,
	datab => sig_shift_led_rgb(27),
	datad => \state_leds.s3~q\,
	combout => \Selector79~0_combout\);

-- Location: FF_X34_Y4_N15
\sig_shift_led_rgb[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector79~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(28));

-- Location: LCCOMB_X34_Y4_N4
\Selector78~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector78~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(28)))) # (!\state_leds.s3~q\ & (\rgb_leds[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgb_leds[29]~input_o\,
	datac => sig_shift_led_rgb(28),
	datad => \state_leds.s3~q\,
	combout => \Selector78~0_combout\);

-- Location: FF_X34_Y4_N5
\sig_shift_led_rgb[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector78~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(29));

-- Location: LCCOMB_X34_Y4_N18
\Selector77~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector77~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(29)))) # (!\state_leds.s3~q\ & (\rgb_leds[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgb_leds[30]~input_o\,
	datac => sig_shift_led_rgb(29),
	datad => \state_leds.s3~q\,
	combout => \Selector77~0_combout\);

-- Location: FF_X34_Y4_N19
\sig_shift_led_rgb[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector77~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(30));

-- Location: IOIBUF_X34_Y0_N1
\rgb_leds[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(31),
	o => \rgb_leds[31]~input_o\);

-- Location: LCCOMB_X34_Y4_N8
\Selector76~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector76~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(30))) # (!\state_leds.s3~q\ & ((\rgb_leds[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_shift_led_rgb(30),
	datac => \rgb_leds[31]~input_o\,
	datad => \state_leds.s3~q\,
	combout => \Selector76~0_combout\);

-- Location: FF_X34_Y4_N9
\sig_shift_led_rgb[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector76~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(31));

-- Location: LCCOMB_X32_Y4_N22
\Selector75~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector75~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(31)))) # (!\state_leds.s3~q\ & (\rgb_leds[32]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgb_leds[32]~input_o\,
	datac => \state_leds.s3~q\,
	datad => sig_shift_led_rgb(31),
	combout => \Selector75~0_combout\);

-- Location: FF_X32_Y4_N23
\sig_shift_led_rgb[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector75~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(32));

-- Location: IOIBUF_X22_Y0_N1
\rgb_leds[33]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(33),
	o => \rgb_leds[33]~input_o\);

-- Location: LCCOMB_X32_Y4_N12
\Selector74~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector74~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(32))) # (!\state_leds.s3~q\ & ((\rgb_leds[33]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_shift_led_rgb(32),
	datac => \state_leds.s3~q\,
	datad => \rgb_leds[33]~input_o\,
	combout => \Selector74~0_combout\);

-- Location: FF_X32_Y4_N13
\sig_shift_led_rgb[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector74~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(33));

-- Location: IOIBUF_X38_Y0_N8
\rgb_leds[34]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(34),
	o => \rgb_leds[34]~input_o\);

-- Location: LCCOMB_X32_Y4_N26
\Selector73~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector73~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(33))) # (!\state_leds.s3~q\ & ((\rgb_leds[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_shift_led_rgb(33),
	datab => \rgb_leds[34]~input_o\,
	datac => \state_leds.s3~q\,
	combout => \Selector73~0_combout\);

-- Location: FF_X32_Y4_N27
\sig_shift_led_rgb[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector73~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(34));

-- Location: IOIBUF_X31_Y0_N22
\rgb_leds[35]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(35),
	o => \rgb_leds[35]~input_o\);

-- Location: LCCOMB_X32_Y4_N24
\Selector72~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector72~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(34))) # (!\state_leds.s3~q\ & ((\rgb_leds[35]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_shift_led_rgb(34),
	datac => \state_leds.s3~q\,
	datad => \rgb_leds[35]~input_o\,
	combout => \Selector72~0_combout\);

-- Location: FF_X32_Y4_N25
\sig_shift_led_rgb[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector72~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(35));

-- Location: LCCOMB_X32_Y4_N30
\Selector71~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector71~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(35)))) # (!\state_leds.s3~q\ & (\rgb_leds[36]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgb_leds[36]~input_o\,
	datab => sig_shift_led_rgb(35),
	datac => \state_leds.s3~q\,
	combout => \Selector71~0_combout\);

-- Location: FF_X32_Y4_N31
\sig_shift_led_rgb[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector71~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(36));

-- Location: IOIBUF_X31_Y0_N8
\rgb_leds[37]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(37),
	o => \rgb_leds[37]~input_o\);

-- Location: LCCOMB_X32_Y4_N4
\Selector70~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector70~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(36))) # (!\state_leds.s3~q\ & ((\rgb_leds[37]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_shift_led_rgb(36),
	datac => \state_leds.s3~q\,
	datad => \rgb_leds[37]~input_o\,
	combout => \Selector70~0_combout\);

-- Location: FF_X32_Y4_N5
\sig_shift_led_rgb[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector70~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(37));

-- Location: LCCOMB_X32_Y4_N18
\Selector69~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector69~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(37)))) # (!\state_leds.s3~q\ & (\rgb_leds[38]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_leds.s3~q\,
	datab => \rgb_leds[38]~input_o\,
	datac => sig_shift_led_rgb(37),
	combout => \Selector69~0_combout\);

-- Location: FF_X32_Y4_N19
\sig_shift_led_rgb[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector69~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(38));

-- Location: LCCOMB_X32_Y4_N0
\Selector68~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector68~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(38)))) # (!\state_leds.s3~q\ & (\rgb_leds[39]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgb_leds[39]~input_o\,
	datab => sig_shift_led_rgb(38),
	datac => \state_leds.s3~q\,
	combout => \Selector68~0_combout\);

-- Location: FF_X32_Y4_N1
\sig_shift_led_rgb[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector68~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(39));

-- Location: IOIBUF_X29_Y0_N1
\rgb_leds[40]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(40),
	o => \rgb_leds[40]~input_o\);

-- Location: LCCOMB_X32_Y4_N6
\Selector67~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector67~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(39))) # (!\state_leds.s3~q\ & ((\rgb_leds[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_leds.s3~q\,
	datab => sig_shift_led_rgb(39),
	datac => \rgb_leds[40]~input_o\,
	combout => \Selector67~0_combout\);

-- Location: FF_X32_Y4_N7
\sig_shift_led_rgb[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector67~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(40));

-- Location: LCCOMB_X32_Y4_N28
\Selector66~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector66~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(40)))) # (!\state_leds.s3~q\ & (\rgb_leds[41]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgb_leds[41]~input_o\,
	datac => \state_leds.s3~q\,
	datad => sig_shift_led_rgb(40),
	combout => \Selector66~0_combout\);

-- Location: FF_X32_Y4_N29
\sig_shift_led_rgb[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector66~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(41));

-- Location: IOIBUF_X24_Y0_N15
\rgb_leds[42]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(42),
	o => \rgb_leds[42]~input_o\);

-- Location: LCCOMB_X32_Y4_N2
\Selector65~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector65~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(41))) # (!\state_leds.s3~q\ & ((\rgb_leds[42]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_leds.s3~q\,
	datab => sig_shift_led_rgb(41),
	datac => \rgb_leds[42]~input_o\,
	combout => \Selector65~0_combout\);

-- Location: FF_X32_Y4_N3
\sig_shift_led_rgb[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector65~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(42));

-- Location: IOIBUF_X38_Y0_N15
\rgb_leds[43]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(43),
	o => \rgb_leds[43]~input_o\);

-- Location: LCCOMB_X32_Y4_N16
\Selector64~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector64~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(42))) # (!\state_leds.s3~q\ & ((\rgb_leds[43]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_leds.s3~q\,
	datab => sig_shift_led_rgb(42),
	datac => \rgb_leds[43]~input_o\,
	combout => \Selector64~0_combout\);

-- Location: FF_X32_Y4_N17
\sig_shift_led_rgb[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector64~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(43));

-- Location: LCCOMB_X32_Y4_N14
\Selector63~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector63~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(43)))) # (!\state_leds.s3~q\ & (\rgb_leds[44]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgb_leds[44]~input_o\,
	datab => sig_shift_led_rgb(43),
	datac => \state_leds.s3~q\,
	combout => \Selector63~0_combout\);

-- Location: FF_X32_Y4_N15
\sig_shift_led_rgb[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector63~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(44));

-- Location: IOIBUF_X31_Y0_N1
\rgb_leds[45]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(45),
	o => \rgb_leds[45]~input_o\);

-- Location: LCCOMB_X32_Y4_N20
\Selector62~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector62~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(44))) # (!\state_leds.s3~q\ & ((\rgb_leds[45]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_leds.s3~q\,
	datab => sig_shift_led_rgb(44),
	datac => \rgb_leds[45]~input_o\,
	combout => \Selector62~0_combout\);

-- Location: FF_X32_Y4_N21
\sig_shift_led_rgb[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector62~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(45));

-- Location: IOIBUF_X29_Y0_N8
\rgb_leds[46]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(46),
	o => \rgb_leds[46]~input_o\);

-- Location: LCCOMB_X32_Y4_N10
\Selector61~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector61~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(45))) # (!\state_leds.s3~q\ & ((\rgb_leds[46]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_leds.s3~q\,
	datab => sig_shift_led_rgb(45),
	datac => \rgb_leds[46]~input_o\,
	combout => \Selector61~0_combout\);

-- Location: FF_X32_Y4_N11
\sig_shift_led_rgb[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector61~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(46));

-- Location: LCCOMB_X32_Y4_N8
\Selector60~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector60~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(46)))) # (!\state_leds.s3~q\ & (\rgb_leds[47]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgb_leds[47]~input_o\,
	datac => \state_leds.s3~q\,
	datad => sig_shift_led_rgb(46),
	combout => \Selector60~0_combout\);

-- Location: FF_X32_Y4_N9
\sig_shift_led_rgb[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector60~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(47));

-- Location: LCCOMB_X77_Y23_N30
\Selector59~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(47)))) # (!\state_leds.s3~q\ & (\rgb_leds[48]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_leds.s3~q\,
	datab => \rgb_leds[48]~input_o\,
	datac => sig_shift_led_rgb(47),
	combout => \Selector59~0_combout\);

-- Location: FF_X77_Y23_N31
\sig_shift_led_rgb[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector59~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(48));

-- Location: LCCOMB_X77_Y23_N28
\Selector58~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector58~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(48)))) # (!\state_leds.s3~q\ & (\rgb_leds[49]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_leds.s3~q\,
	datab => \rgb_leds[49]~input_o\,
	datac => sig_shift_led_rgb(48),
	combout => \Selector58~0_combout\);

-- Location: FF_X77_Y23_N29
\sig_shift_led_rgb[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector58~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(49));

-- Location: LCCOMB_X77_Y23_N18
\Selector57~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(49)))) # (!\state_leds.s3~q\ & (\rgb_leds[50]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_leds.s3~q\,
	datac => \rgb_leds[50]~input_o\,
	datad => sig_shift_led_rgb(49),
	combout => \Selector57~0_combout\);

-- Location: FF_X77_Y23_N19
\sig_shift_led_rgb[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector57~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(50));

-- Location: IOIBUF_X78_Y24_N1
\rgb_leds[51]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(51),
	o => \rgb_leds[51]~input_o\);

-- Location: LCCOMB_X77_Y23_N16
\Selector56~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(50))) # (!\state_leds.s3~q\ & ((\rgb_leds[51]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_shift_led_rgb(50),
	datac => \state_leds.s3~q\,
	datad => \rgb_leds[51]~input_o\,
	combout => \Selector56~0_combout\);

-- Location: FF_X77_Y23_N17
\sig_shift_led_rgb[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector56~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(51));

-- Location: IOIBUF_X78_Y23_N1
\rgb_leds[52]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(52),
	o => \rgb_leds[52]~input_o\);

-- Location: LCCOMB_X77_Y23_N22
\Selector55~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(51))) # (!\state_leds.s3~q\ & ((\rgb_leds[52]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_shift_led_rgb(51),
	datac => \state_leds.s3~q\,
	datad => \rgb_leds[52]~input_o\,
	combout => \Selector55~0_combout\);

-- Location: FF_X77_Y23_N23
\sig_shift_led_rgb[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector55~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(52));

-- Location: LCCOMB_X77_Y23_N20
\Selector54~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(52)))) # (!\state_leds.s3~q\ & (\rgb_leds[53]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_leds.s3~q\,
	datab => \rgb_leds[53]~input_o\,
	datac => sig_shift_led_rgb(52),
	combout => \Selector54~0_combout\);

-- Location: FF_X77_Y23_N21
\sig_shift_led_rgb[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector54~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(53));

-- Location: IOIBUF_X78_Y23_N15
\rgb_leds[54]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(54),
	o => \rgb_leds[54]~input_o\);

-- Location: LCCOMB_X77_Y23_N2
\Selector53~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(53))) # (!\state_leds.s3~q\ & ((\rgb_leds[54]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_shift_led_rgb(53),
	datac => \state_leds.s3~q\,
	datad => \rgb_leds[54]~input_o\,
	combout => \Selector53~0_combout\);

-- Location: FF_X77_Y23_N3
\sig_shift_led_rgb[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector53~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(54));

-- Location: IOIBUF_X78_Y24_N23
\rgb_leds[55]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(55),
	o => \rgb_leds[55]~input_o\);

-- Location: LCCOMB_X77_Y23_N0
\Selector52~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(54))) # (!\state_leds.s3~q\ & ((\rgb_leds[55]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_shift_led_rgb(54),
	datac => \state_leds.s3~q\,
	datad => \rgb_leds[55]~input_o\,
	combout => \Selector52~0_combout\);

-- Location: FF_X77_Y23_N1
\sig_shift_led_rgb[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector52~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(55));

-- Location: IOIBUF_X78_Y25_N8
\rgb_leds[56]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(56),
	o => \rgb_leds[56]~input_o\);

-- Location: LCCOMB_X77_Y23_N14
\Selector51~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(55))) # (!\state_leds.s3~q\ & ((\rgb_leds[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_shift_led_rgb(55),
	datac => \state_leds.s3~q\,
	datad => \rgb_leds[56]~input_o\,
	combout => \Selector51~0_combout\);

-- Location: FF_X77_Y23_N15
\sig_shift_led_rgb[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector51~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(56));

-- Location: IOIBUF_X78_Y25_N22
\rgb_leds[57]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(57),
	o => \rgb_leds[57]~input_o\);

-- Location: LCCOMB_X77_Y23_N4
\Selector50~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(56))) # (!\state_leds.s3~q\ & ((\rgb_leds[57]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_leds.s3~q\,
	datac => sig_shift_led_rgb(56),
	datad => \rgb_leds[57]~input_o\,
	combout => \Selector50~0_combout\);

-- Location: FF_X77_Y23_N5
\sig_shift_led_rgb[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector50~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(57));

-- Location: IOIBUF_X78_Y23_N8
\rgb_leds[58]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(58),
	o => \rgb_leds[58]~input_o\);

-- Location: LCCOMB_X77_Y23_N26
\Selector49~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(57))) # (!\state_leds.s3~q\ & ((\rgb_leds[58]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_leds.s3~q\,
	datac => sig_shift_led_rgb(57),
	datad => \rgb_leds[58]~input_o\,
	combout => \Selector49~0_combout\);

-- Location: FF_X77_Y23_N27
\sig_shift_led_rgb[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector49~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(58));

-- Location: IOIBUF_X78_Y20_N15
\rgb_leds[59]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(59),
	o => \rgb_leds[59]~input_o\);

-- Location: LCCOMB_X77_Y23_N24
\Selector48~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(58))) # (!\state_leds.s3~q\ & ((\rgb_leds[59]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_shift_led_rgb(58),
	datac => \state_leds.s3~q\,
	datad => \rgb_leds[59]~input_o\,
	combout => \Selector48~0_combout\);

-- Location: FF_X77_Y23_N25
\sig_shift_led_rgb[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector48~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(59));

-- Location: IOIBUF_X78_Y21_N8
\rgb_leds[60]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(60),
	o => \rgb_leds[60]~input_o\);

-- Location: LCCOMB_X77_Y23_N6
\Selector47~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(59))) # (!\state_leds.s3~q\ & ((\rgb_leds[60]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_leds.s3~q\,
	datab => sig_shift_led_rgb(59),
	datac => \rgb_leds[60]~input_o\,
	combout => \Selector47~0_combout\);

-- Location: FF_X77_Y23_N7
\sig_shift_led_rgb[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector47~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(60));

-- Location: LCCOMB_X77_Y23_N12
\Selector46~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(60)))) # (!\state_leds.s3~q\ & (\rgb_leds[61]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_leds.s3~q\,
	datac => \rgb_leds[61]~input_o\,
	datad => sig_shift_led_rgb(60),
	combout => \Selector46~0_combout\);

-- Location: FF_X77_Y23_N13
\sig_shift_led_rgb[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector46~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(61));

-- Location: LCCOMB_X77_Y23_N10
\Selector45~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(61)))) # (!\state_leds.s3~q\ & (\rgb_leds[62]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgb_leds[62]~input_o\,
	datac => \state_leds.s3~q\,
	datad => sig_shift_led_rgb(61),
	combout => \Selector45~0_combout\);

-- Location: FF_X77_Y23_N11
\sig_shift_led_rgb[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector45~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(62));

-- Location: LCCOMB_X77_Y23_N8
\Selector44~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(62)))) # (!\state_leds.s3~q\ & (\rgb_leds[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgb_leds[63]~input_o\,
	datac => \state_leds.s3~q\,
	datad => sig_shift_led_rgb(62),
	combout => \Selector44~0_combout\);

-- Location: FF_X77_Y23_N9
\sig_shift_led_rgb[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector44~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(63));

-- Location: LCCOMB_X58_Y1_N30
\Selector43~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(63)))) # (!\state_leds.s3~q\ & (\rgb_leds[64]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgb_leds[64]~input_o\,
	datac => \state_leds.s3~q\,
	datad => sig_shift_led_rgb(63),
	combout => \Selector43~0_combout\);

-- Location: FF_X58_Y1_N31
\sig_shift_led_rgb[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector43~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(64));

-- Location: IOIBUF_X62_Y0_N8
\rgb_leds[65]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(65),
	o => \rgb_leds[65]~input_o\);

-- Location: LCCOMB_X58_Y1_N28
\Selector42~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(64))) # (!\state_leds.s3~q\ & ((\rgb_leds[65]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_leds.s3~q\,
	datac => sig_shift_led_rgb(64),
	datad => \rgb_leds[65]~input_o\,
	combout => \Selector42~0_combout\);

-- Location: FF_X58_Y1_N29
\sig_shift_led_rgb[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector42~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(65));

-- Location: LCCOMB_X58_Y1_N18
\Selector41~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(65)))) # (!\state_leds.s3~q\ & (\rgb_leds[66]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_leds.s3~q\,
	datac => \rgb_leds[66]~input_o\,
	datad => sig_shift_led_rgb(65),
	combout => \Selector41~0_combout\);

-- Location: FF_X58_Y1_N19
\sig_shift_led_rgb[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector41~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(66));

-- Location: IOIBUF_X62_Y0_N22
\rgb_leds[67]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(67),
	o => \rgb_leds[67]~input_o\);

-- Location: LCCOMB_X58_Y1_N16
\Selector40~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(66))) # (!\state_leds.s3~q\ & ((\rgb_leds[67]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_shift_led_rgb(66),
	datac => \state_leds.s3~q\,
	datad => \rgb_leds[67]~input_o\,
	combout => \Selector40~0_combout\);

-- Location: FF_X58_Y1_N17
\sig_shift_led_rgb[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector40~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(67));

-- Location: LCCOMB_X58_Y1_N14
\Selector39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(67)))) # (!\state_leds.s3~q\ & (\rgb_leds[68]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_leds.s3~q\,
	datac => \rgb_leds[68]~input_o\,
	datad => sig_shift_led_rgb(67),
	combout => \Selector39~0_combout\);

-- Location: FF_X58_Y1_N15
\sig_shift_led_rgb[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector39~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(68));

-- Location: IOIBUF_X58_Y0_N1
\rgb_leds[69]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(69),
	o => \rgb_leds[69]~input_o\);

-- Location: LCCOMB_X58_Y1_N20
\Selector38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(68))) # (!\state_leds.s3~q\ & ((\rgb_leds[69]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_shift_led_rgb(68),
	datac => \state_leds.s3~q\,
	datad => \rgb_leds[69]~input_o\,
	combout => \Selector38~0_combout\);

-- Location: FF_X58_Y1_N21
\sig_shift_led_rgb[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector38~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(69));

-- Location: LCCOMB_X58_Y1_N2
\Selector37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(69)))) # (!\state_leds.s3~q\ & (\rgb_leds[70]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgb_leds[70]~input_o\,
	datab => sig_shift_led_rgb(69),
	datac => \state_leds.s3~q\,
	combout => \Selector37~0_combout\);

-- Location: FF_X58_Y1_N3
\sig_shift_led_rgb[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector37~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(70));

-- Location: IOIBUF_X69_Y0_N8
\rgb_leds[71]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(71),
	o => \rgb_leds[71]~input_o\);

-- Location: LCCOMB_X58_Y1_N0
\Selector36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(70))) # (!\state_leds.s3~q\ & ((\rgb_leds[71]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_shift_led_rgb(70),
	datac => \state_leds.s3~q\,
	datad => \rgb_leds[71]~input_o\,
	combout => \Selector36~0_combout\);

-- Location: FF_X58_Y1_N1
\sig_shift_led_rgb[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector36~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(71));

-- Location: LCCOMB_X58_Y1_N22
\Selector35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(71)))) # (!\state_leds.s3~q\ & (\rgb_leds[72]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgb_leds[72]~input_o\,
	datab => sig_shift_led_rgb(71),
	datac => \state_leds.s3~q\,
	combout => \Selector35~0_combout\);

-- Location: FF_X58_Y1_N23
\sig_shift_led_rgb[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector35~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(72));

-- Location: IOIBUF_X62_Y0_N29
\rgb_leds[73]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(73),
	o => \rgb_leds[73]~input_o\);

-- Location: LCCOMB_X58_Y1_N4
\Selector34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(72))) # (!\state_leds.s3~q\ & ((\rgb_leds[73]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_leds.s3~q\,
	datac => sig_shift_led_rgb(72),
	datad => \rgb_leds[73]~input_o\,
	combout => \Selector34~0_combout\);

-- Location: FF_X58_Y1_N5
\sig_shift_led_rgb[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector34~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(73));

-- Location: IOIBUF_X56_Y0_N15
\rgb_leds[74]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(74),
	o => \rgb_leds[74]~input_o\);

-- Location: LCCOMB_X58_Y1_N26
\Selector33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(73))) # (!\state_leds.s3~q\ & ((\rgb_leds[74]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_shift_led_rgb(73),
	datac => \state_leds.s3~q\,
	datad => \rgb_leds[74]~input_o\,
	combout => \Selector33~0_combout\);

-- Location: FF_X58_Y1_N27
\sig_shift_led_rgb[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector33~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(74));

-- Location: IOIBUF_X56_Y0_N29
\rgb_leds[75]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(75),
	o => \rgb_leds[75]~input_o\);

-- Location: LCCOMB_X58_Y1_N24
\Selector32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(74))) # (!\state_leds.s3~q\ & ((\rgb_leds[75]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_shift_led_rgb(74),
	datab => \rgb_leds[75]~input_o\,
	datac => \state_leds.s3~q\,
	combout => \Selector32~0_combout\);

-- Location: FF_X58_Y1_N25
\sig_shift_led_rgb[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector32~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(75));

-- Location: LCCOMB_X58_Y1_N6
\Selector31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(75)))) # (!\state_leds.s3~q\ & (\rgb_leds[76]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_leds.s3~q\,
	datac => \rgb_leds[76]~input_o\,
	datad => sig_shift_led_rgb(75),
	combout => \Selector31~0_combout\);

-- Location: FF_X58_Y1_N7
\sig_shift_led_rgb[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector31~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(76));

-- Location: LCCOMB_X58_Y1_N12
\Selector30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(76)))) # (!\state_leds.s3~q\ & (\rgb_leds[77]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgb_leds[77]~input_o\,
	datac => \state_leds.s3~q\,
	datad => sig_shift_led_rgb(76),
	combout => \Selector30~0_combout\);

-- Location: FF_X58_Y1_N13
\sig_shift_led_rgb[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector30~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(77));

-- Location: LCCOMB_X58_Y1_N10
\Selector29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(77)))) # (!\state_leds.s3~q\ & (\rgb_leds[78]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgb_leds[78]~input_o\,
	datac => \state_leds.s3~q\,
	datad => sig_shift_led_rgb(77),
	combout => \Selector29~0_combout\);

-- Location: FF_X58_Y1_N11
\sig_shift_led_rgb[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector29~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(78));

-- Location: LCCOMB_X58_Y1_N8
\Selector28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(78)))) # (!\state_leds.s3~q\ & (\rgb_leds[79]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_leds.s3~q\,
	datac => \rgb_leds[79]~input_o\,
	datad => sig_shift_led_rgb(78),
	combout => \Selector28~0_combout\);

-- Location: FF_X58_Y1_N9
\sig_shift_led_rgb[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector28~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(79));

-- Location: IOIBUF_X36_Y39_N29
\rgb_leds[80]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(80),
	o => \rgb_leds[80]~input_o\);

-- Location: LCCOMB_X35_Y35_N14
\Selector27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(79))) # (!\state_leds.s3~q\ & ((\rgb_leds[80]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_leds.s3~q\,
	datac => sig_shift_led_rgb(79),
	datad => \rgb_leds[80]~input_o\,
	combout => \Selector27~0_combout\);

-- Location: FF_X35_Y35_N15
\sig_shift_led_rgb[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector27~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(80));

-- Location: LCCOMB_X35_Y35_N4
\Selector26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(80)))) # (!\state_leds.s3~q\ & (\rgb_leds[81]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgb_leds[81]~input_o\,
	datab => sig_shift_led_rgb(80),
	datac => \state_leds.s3~q\,
	combout => \Selector26~0_combout\);

-- Location: FF_X35_Y35_N5
\sig_shift_led_rgb[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector26~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(81));

-- Location: IOIBUF_X31_Y39_N1
\rgb_leds[82]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(82),
	o => \rgb_leds[82]~input_o\);

-- Location: LCCOMB_X35_Y35_N26
\Selector25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(81))) # (!\state_leds.s3~q\ & ((\rgb_leds[82]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_leds.s3~q\,
	datab => sig_shift_led_rgb(81),
	datac => \rgb_leds[82]~input_o\,
	combout => \Selector25~0_combout\);

-- Location: FF_X35_Y35_N27
\sig_shift_led_rgb[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector25~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(82));

-- Location: IOIBUF_X34_Y39_N8
\rgb_leds[83]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(83),
	o => \rgb_leds[83]~input_o\);

-- Location: LCCOMB_X35_Y35_N24
\Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(82))) # (!\state_leds.s3~q\ & ((\rgb_leds[83]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_shift_led_rgb(82),
	datac => \state_leds.s3~q\,
	datad => \rgb_leds[83]~input_o\,
	combout => \Selector24~0_combout\);

-- Location: FF_X35_Y35_N25
\sig_shift_led_rgb[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector24~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(83));

-- Location: LCCOMB_X35_Y35_N6
\Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(83)))) # (!\state_leds.s3~q\ & (\rgb_leds[84]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgb_leds[84]~input_o\,
	datab => sig_shift_led_rgb(83),
	datac => \state_leds.s3~q\,
	combout => \Selector23~0_combout\);

-- Location: FF_X35_Y35_N7
\sig_shift_led_rgb[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector23~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(84));

-- Location: LCCOMB_X35_Y35_N20
\Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(84)))) # (!\state_leds.s3~q\ & (\rgb_leds[85]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgb_leds[85]~input_o\,
	datac => \state_leds.s3~q\,
	datad => sig_shift_led_rgb(84),
	combout => \Selector22~0_combout\);

-- Location: FF_X35_Y35_N21
\sig_shift_led_rgb[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector22~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(85));

-- Location: LCCOMB_X35_Y35_N2
\Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(85)))) # (!\state_leds.s3~q\ & (\rgb_leds[86]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgb_leds[86]~input_o\,
	datac => \state_leds.s3~q\,
	datad => sig_shift_led_rgb(85),
	combout => \Selector21~0_combout\);

-- Location: FF_X35_Y35_N3
\sig_shift_led_rgb[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector21~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(86));

-- Location: LCCOMB_X35_Y35_N0
\Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(86)))) # (!\state_leds.s3~q\ & (\rgb_leds[87]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgb_leds[87]~input_o\,
	datac => \state_leds.s3~q\,
	datad => sig_shift_led_rgb(86),
	combout => \Selector20~0_combout\);

-- Location: FF_X35_Y35_N1
\sig_shift_led_rgb[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector20~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(87));

-- Location: LCCOMB_X35_Y35_N30
\Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(87)))) # (!\state_leds.s3~q\ & (\rgb_leds[88]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgb_leds[88]~input_o\,
	datac => \state_leds.s3~q\,
	datad => sig_shift_led_rgb(87),
	combout => \Selector19~0_combout\);

-- Location: FF_X35_Y35_N31
\sig_shift_led_rgb[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(88));

-- Location: IOIBUF_X31_Y39_N8
\rgb_leds[89]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(89),
	o => \rgb_leds[89]~input_o\);

-- Location: LCCOMB_X35_Y35_N28
\Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(88))) # (!\state_leds.s3~q\ & ((\rgb_leds[89]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_shift_led_rgb(88),
	datab => \rgb_leds[89]~input_o\,
	datac => \state_leds.s3~q\,
	combout => \Selector18~0_combout\);

-- Location: FF_X35_Y35_N29
\sig_shift_led_rgb[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector18~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(89));

-- Location: LCCOMB_X35_Y35_N18
\Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(89)))) # (!\state_leds.s3~q\ & (\rgb_leds[90]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgb_leds[90]~input_o\,
	datac => \state_leds.s3~q\,
	datad => sig_shift_led_rgb(89),
	combout => \Selector17~0_combout\);

-- Location: FF_X35_Y35_N19
\sig_shift_led_rgb[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector17~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(90));

-- Location: LCCOMB_X35_Y35_N8
\Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(90)))) # (!\state_leds.s3~q\ & (\rgb_leds[91]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgb_leds[91]~input_o\,
	datac => \state_leds.s3~q\,
	datad => sig_shift_led_rgb(90),
	combout => \Selector16~0_combout\);

-- Location: FF_X35_Y35_N9
\sig_shift_led_rgb[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(91));

-- Location: LCCOMB_X35_Y35_N22
\Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(91)))) # (!\state_leds.s3~q\ & (\rgb_leds[92]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgb_leds[92]~input_o\,
	datab => sig_shift_led_rgb(91),
	datac => \state_leds.s3~q\,
	combout => \Selector15~0_combout\);

-- Location: FF_X35_Y35_N23
\sig_shift_led_rgb[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector15~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(92));

-- Location: IOIBUF_X34_Y39_N1
\rgb_leds[93]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(93),
	o => \rgb_leds[93]~input_o\);

-- Location: LCCOMB_X35_Y35_N12
\Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(92))) # (!\state_leds.s3~q\ & ((\rgb_leds[93]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_shift_led_rgb(92),
	datac => \state_leds.s3~q\,
	datad => \rgb_leds[93]~input_o\,
	combout => \Selector14~0_combout\);

-- Location: FF_X35_Y35_N13
\sig_shift_led_rgb[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector14~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(93));

-- Location: LCCOMB_X35_Y35_N10
\Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\state_leds.s3~q\ & ((sig_shift_led_rgb(93)))) # (!\state_leds.s3~q\ & (\rgb_leds[94]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgb_leds[94]~input_o\,
	datac => \state_leds.s3~q\,
	datad => sig_shift_led_rgb(93),
	combout => \Selector13~0_combout\);

-- Location: FF_X35_Y35_N11
\sig_shift_led_rgb[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector13~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(94));

-- Location: IOIBUF_X36_Y39_N15
\rgb_leds[95]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rgb_leds(95),
	o => \rgb_leds[95]~input_o\);

-- Location: LCCOMB_X35_Y35_N16
\Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\state_leds.s3~q\ & (sig_shift_led_rgb(94))) # (!\state_leds.s3~q\ & ((\rgb_leds[95]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_shift_led_rgb(94),
	datab => \rgb_leds[95]~input_o\,
	datac => \state_leds.s3~q\,
	combout => \Selector12~0_combout\);

-- Location: FF_X35_Y35_N17
\sig_shift_led_rgb[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector12~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \sig_shift_led_rgb[94]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_shift_led_rgb(95));

-- Location: LCCOMB_X41_Y15_N10
\sig_bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_bit~0_combout\ = (\state_leds.s2~q\ & ((\resetn~input_o\ & (sig_shift_led_rgb(95))) # (!\resetn~input_o\ & ((\sig_bit~q\))))) # (!\state_leds.s2~q\ & (((\sig_bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_leds.s2~q\,
	datab => sig_shift_led_rgb(95),
	datac => \sig_bit~q\,
	datad => \resetn~input_o\,
	combout => \sig_bit~0_combout\);

-- Location: FF_X41_Y15_N11
sig_bit : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_bit~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_bit~q\);

-- Location: LCCOMB_X41_Y15_N16
\Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (!\sig_bit~q\ & \state_leds.s5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_bit~q\,
	datad => \state_leds.s5~q\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X41_Y15_N22
\Selector8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = ((\state_leds.s5~q\) # ((\Selector3~4_combout\ & \state_leds.s0~q\))) # (!\Selector3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~2_combout\,
	datab => \Selector3~4_combout\,
	datac => \state_leds.s0~q\,
	datad => \state_leds.s5~q\,
	combout => \Selector8~1_combout\);

-- Location: FF_X41_Y15_N17
\state_leds.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_leds.s6~q\);

-- Location: LCCOMB_X41_Y15_N20
\Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\sig_bit~q\ & \state_leds.s5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_bit~q\,
	datad => \state_leds.s5~q\,
	combout => \Selector9~0_combout\);

-- Location: FF_X41_Y15_N21
\state_leds.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_leds.s7~q\);

-- Location: LCCOMB_X41_Y15_N18
\Selector3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~3_combout\ = (\state_leds.s6~q\) # (\state_leds.s7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_leds.s6~q\,
	datad => \state_leds.s7~q\,
	combout => \Selector3~3_combout\);

-- Location: FF_X42_Y12_N5
\sig_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector203~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(4));

-- Location: LCCOMB_X43_Y11_N30
\Equal3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = (!sig_cnt(2) & (sig_cnt(1) & sig_cnt(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(2),
	datac => sig_cnt(1),
	datad => sig_cnt(4),
	combout => \Equal3~3_combout\);

-- Location: LCCOMB_X42_Y12_N0
\Selector207~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector207~0_combout\ = (\Add2~0_combout\ & ((!\Equal3~2_combout\) # (!\Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datac => \Equal3~3_combout\,
	datad => \Equal3~2_combout\,
	combout => \Selector207~0_combout\);

-- Location: FF_X42_Y12_N1
\sig_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector207~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(0));

-- Location: LCCOMB_X42_Y12_N14
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (sig_cnt(1) & (!\Add2~1\)) # (!sig_cnt(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!sig_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X42_Y12_N8
\Selector206~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector206~0_combout\ = (\Add2~2_combout\ & ((!\Equal3~2_combout\) # (!\Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~2_combout\,
	datac => \Equal3~3_combout\,
	datad => \Equal3~2_combout\,
	combout => \Selector206~0_combout\);

-- Location: FF_X42_Y12_N9
\sig_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector206~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(1));

-- Location: LCCOMB_X42_Y12_N16
\Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (sig_cnt(2) & (\Add2~3\ $ (GND))) # (!sig_cnt(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((sig_cnt(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: FF_X42_Y12_N17
\sig_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~4_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(2));

-- Location: FF_X42_Y12_N19
\sig_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~6_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(3));

-- Location: LCCOMB_X42_Y12_N22
\Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (sig_cnt(5) & (!\Add2~9\)) # (!sig_cnt(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!sig_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X42_Y12_N10
\Selector202~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector202~0_combout\ = (\Add2~10_combout\ & ((!\Equal3~2_combout\) # (!\Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datac => \Equal3~3_combout\,
	datad => \Equal3~2_combout\,
	combout => \Selector202~0_combout\);

-- Location: FF_X42_Y12_N11
\sig_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector202~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(5));

-- Location: LCCOMB_X42_Y12_N24
\Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (sig_cnt(6) & (\Add2~11\ $ (GND))) # (!sig_cnt(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((sig_cnt(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: FF_X42_Y12_N25
\sig_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~12_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(6));

-- Location: LCCOMB_X42_Y12_N26
\Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (sig_cnt(7) & (!\Add2~13\)) # (!sig_cnt(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!sig_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: FF_X42_Y12_N27
\sig_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~14_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(7));

-- Location: LCCOMB_X42_Y12_N28
\Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (sig_cnt(8) & (\Add2~15\ $ (GND))) # (!sig_cnt(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((sig_cnt(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: FF_X42_Y12_N29
\sig_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~16_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(8));

-- Location: LCCOMB_X42_Y12_N30
\Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (sig_cnt(9) & (!\Add2~17\)) # (!sig_cnt(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!sig_cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: FF_X42_Y12_N31
\sig_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~18_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(9));

-- Location: LCCOMB_X42_Y11_N0
\Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (sig_cnt(10) & (\Add2~19\ $ (GND))) # (!sig_cnt(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((sig_cnt(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: FF_X42_Y11_N1
\sig_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~20_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(10));

-- Location: LCCOMB_X42_Y11_N2
\Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (sig_cnt(11) & (!\Add2~21\)) # (!sig_cnt(11) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!sig_cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: FF_X42_Y11_N3
\sig_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~22_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(11));

-- Location: LCCOMB_X42_Y11_N4
\Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (sig_cnt(12) & (\Add2~23\ $ (GND))) # (!sig_cnt(12) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((sig_cnt(12) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: FF_X42_Y11_N5
\sig_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~24_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(12));

-- Location: LCCOMB_X42_Y11_N6
\Add2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (sig_cnt(13) & (!\Add2~25\)) # (!sig_cnt(13) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!sig_cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: FF_X42_Y11_N7
\sig_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~26_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(13));

-- Location: LCCOMB_X42_Y11_N8
\Add2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (sig_cnt(14) & (\Add2~27\ $ (GND))) # (!sig_cnt(14) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((sig_cnt(14) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: FF_X42_Y11_N9
\sig_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~28_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(14));

-- Location: LCCOMB_X42_Y11_N10
\Add2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (sig_cnt(15) & (!\Add2~29\)) # (!sig_cnt(15) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!sig_cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: FF_X42_Y11_N11
\sig_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~30_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(15));

-- Location: LCCOMB_X42_Y11_N12
\Add2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (sig_cnt(16) & (\Add2~31\ $ (GND))) # (!sig_cnt(16) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((sig_cnt(16) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: FF_X42_Y11_N13
\sig_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~32_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(16));

-- Location: LCCOMB_X42_Y11_N14
\Add2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (sig_cnt(17) & (!\Add2~33\)) # (!sig_cnt(17) & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!sig_cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(17),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: FF_X42_Y11_N15
\sig_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~34_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(17));

-- Location: LCCOMB_X42_Y11_N16
\Add2~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (sig_cnt(18) & (\Add2~35\ $ (GND))) # (!sig_cnt(18) & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((sig_cnt(18) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(18),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: FF_X42_Y11_N17
\sig_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~36_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(18));

-- Location: LCCOMB_X42_Y11_N18
\Add2~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (sig_cnt(19) & (!\Add2~37\)) # (!sig_cnt(19) & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!sig_cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(19),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: FF_X42_Y11_N19
\sig_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~38_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(19));

-- Location: LCCOMB_X42_Y11_N20
\Add2~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (sig_cnt(20) & (\Add2~39\ $ (GND))) # (!sig_cnt(20) & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((sig_cnt(20) & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(20),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: FF_X42_Y11_N21
\sig_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~40_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(20));

-- Location: LCCOMB_X42_Y11_N22
\Add2~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (sig_cnt(21) & (!\Add2~41\)) # (!sig_cnt(21) & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!sig_cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(21),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: FF_X42_Y11_N23
\sig_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~42_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(21));

-- Location: LCCOMB_X42_Y11_N24
\Add2~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (sig_cnt(22) & (\Add2~43\ $ (GND))) # (!sig_cnt(22) & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((sig_cnt(22) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(22),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: FF_X42_Y11_N25
\sig_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~44_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(22));

-- Location: LCCOMB_X42_Y11_N26
\Add2~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (sig_cnt(23) & (!\Add2~45\)) # (!sig_cnt(23) & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!sig_cnt(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(23),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: FF_X42_Y11_N27
\sig_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~46_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(23));

-- Location: LCCOMB_X42_Y11_N28
\Add2~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (sig_cnt(24) & (\Add2~47\ $ (GND))) # (!sig_cnt(24) & (!\Add2~47\ & VCC))
-- \Add2~49\ = CARRY((sig_cnt(24) & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(24),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: FF_X42_Y11_N29
\sig_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~48_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(24));

-- Location: LCCOMB_X42_Y11_N30
\Add2~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (sig_cnt(25) & (!\Add2~49\)) # (!sig_cnt(25) & ((\Add2~49\) # (GND)))
-- \Add2~51\ = CARRY((!\Add2~49\) # (!sig_cnt(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(25),
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: FF_X42_Y11_N31
\sig_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~50_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(25));

-- Location: LCCOMB_X42_Y10_N0
\Add2~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (sig_cnt(26) & (\Add2~51\ $ (GND))) # (!sig_cnt(26) & (!\Add2~51\ & VCC))
-- \Add2~53\ = CARRY((sig_cnt(26) & !\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(26),
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: FF_X42_Y10_N1
\sig_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~52_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(26));

-- Location: LCCOMB_X42_Y10_N2
\Add2~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (sig_cnt(27) & (!\Add2~53\)) # (!sig_cnt(27) & ((\Add2~53\) # (GND)))
-- \Add2~55\ = CARRY((!\Add2~53\) # (!sig_cnt(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(27),
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: FF_X42_Y10_N3
\sig_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~54_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(27));

-- Location: LCCOMB_X42_Y10_N4
\Add2~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (sig_cnt(28) & (\Add2~55\ $ (GND))) # (!sig_cnt(28) & (!\Add2~55\ & VCC))
-- \Add2~57\ = CARRY((sig_cnt(28) & !\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(28),
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: FF_X42_Y10_N5
\sig_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~56_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(28));

-- Location: LCCOMB_X42_Y10_N6
\Add2~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (sig_cnt(29) & (!\Add2~57\)) # (!sig_cnt(29) & ((\Add2~57\) # (GND)))
-- \Add2~59\ = CARRY((!\Add2~57\) # (!sig_cnt(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(29),
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: FF_X42_Y10_N7
\sig_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~58_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(29));

-- Location: LCCOMB_X42_Y10_N8
\Add2~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = (sig_cnt(30) & (\Add2~59\ $ (GND))) # (!sig_cnt(30) & (!\Add2~59\ & VCC))
-- \Add2~61\ = CARRY((sig_cnt(30) & !\Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(30),
	datad => VCC,
	cin => \Add2~59\,
	combout => \Add2~60_combout\,
	cout => \Add2~61\);

-- Location: FF_X42_Y10_N9
\sig_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~60_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(30));

-- Location: LCCOMB_X42_Y10_N10
\Add2~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = (sig_cnt(31) & (!\Add2~61\)) # (!sig_cnt(31) & ((\Add2~61\) # (GND)))
-- \Add2~63\ = CARRY((!\Add2~61\) # (!sig_cnt(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(31),
	datad => VCC,
	cin => \Add2~61\,
	combout => \Add2~62_combout\,
	cout => \Add2~63\);

-- Location: FF_X42_Y10_N11
\sig_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~62_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(31));

-- Location: LCCOMB_X42_Y10_N12
\Add2~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~64_combout\ = (sig_cnt(32) & (\Add2~63\ $ (GND))) # (!sig_cnt(32) & (!\Add2~63\ & VCC))
-- \Add2~65\ = CARRY((sig_cnt(32) & !\Add2~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(32),
	datad => VCC,
	cin => \Add2~63\,
	combout => \Add2~64_combout\,
	cout => \Add2~65\);

-- Location: FF_X42_Y10_N13
\sig_cnt[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~64_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(32));

-- Location: LCCOMB_X42_Y10_N14
\Add2~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~66_combout\ = (sig_cnt(33) & (!\Add2~65\)) # (!sig_cnt(33) & ((\Add2~65\) # (GND)))
-- \Add2~67\ = CARRY((!\Add2~65\) # (!sig_cnt(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(33),
	datad => VCC,
	cin => \Add2~65\,
	combout => \Add2~66_combout\,
	cout => \Add2~67\);

-- Location: FF_X42_Y10_N15
\sig_cnt[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~66_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(33));

-- Location: LCCOMB_X42_Y10_N16
\Add2~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~68_combout\ = (sig_cnt(34) & (\Add2~67\ $ (GND))) # (!sig_cnt(34) & (!\Add2~67\ & VCC))
-- \Add2~69\ = CARRY((sig_cnt(34) & !\Add2~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(34),
	datad => VCC,
	cin => \Add2~67\,
	combout => \Add2~68_combout\,
	cout => \Add2~69\);

-- Location: FF_X42_Y10_N17
\sig_cnt[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~68_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(34));

-- Location: LCCOMB_X42_Y10_N18
\Add2~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~70_combout\ = (sig_cnt(35) & (!\Add2~69\)) # (!sig_cnt(35) & ((\Add2~69\) # (GND)))
-- \Add2~71\ = CARRY((!\Add2~69\) # (!sig_cnt(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(35),
	datad => VCC,
	cin => \Add2~69\,
	combout => \Add2~70_combout\,
	cout => \Add2~71\);

-- Location: FF_X42_Y10_N19
\sig_cnt[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~70_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(35));

-- Location: LCCOMB_X42_Y10_N20
\Add2~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~72_combout\ = (sig_cnt(36) & (\Add2~71\ $ (GND))) # (!sig_cnt(36) & (!\Add2~71\ & VCC))
-- \Add2~73\ = CARRY((sig_cnt(36) & !\Add2~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(36),
	datad => VCC,
	cin => \Add2~71\,
	combout => \Add2~72_combout\,
	cout => \Add2~73\);

-- Location: FF_X42_Y10_N21
\sig_cnt[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~72_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(36));

-- Location: LCCOMB_X42_Y10_N22
\Add2~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~74_combout\ = (sig_cnt(37) & (!\Add2~73\)) # (!sig_cnt(37) & ((\Add2~73\) # (GND)))
-- \Add2~75\ = CARRY((!\Add2~73\) # (!sig_cnt(37)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(37),
	datad => VCC,
	cin => \Add2~73\,
	combout => \Add2~74_combout\,
	cout => \Add2~75\);

-- Location: FF_X42_Y10_N23
\sig_cnt[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~74_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(37));

-- Location: LCCOMB_X42_Y10_N24
\Add2~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~76_combout\ = (sig_cnt(38) & (\Add2~75\ $ (GND))) # (!sig_cnt(38) & (!\Add2~75\ & VCC))
-- \Add2~77\ = CARRY((sig_cnt(38) & !\Add2~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(38),
	datad => VCC,
	cin => \Add2~75\,
	combout => \Add2~76_combout\,
	cout => \Add2~77\);

-- Location: FF_X42_Y10_N25
\sig_cnt[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~76_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(38));

-- Location: LCCOMB_X42_Y10_N26
\Add2~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~78_combout\ = (sig_cnt(39) & (!\Add2~77\)) # (!sig_cnt(39) & ((\Add2~77\) # (GND)))
-- \Add2~79\ = CARRY((!\Add2~77\) # (!sig_cnt(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(39),
	datad => VCC,
	cin => \Add2~77\,
	combout => \Add2~78_combout\,
	cout => \Add2~79\);

-- Location: FF_X42_Y10_N27
\sig_cnt[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~78_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(39));

-- Location: LCCOMB_X42_Y10_N28
\Add2~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~80_combout\ = (sig_cnt(40) & (\Add2~79\ $ (GND))) # (!sig_cnt(40) & (!\Add2~79\ & VCC))
-- \Add2~81\ = CARRY((sig_cnt(40) & !\Add2~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(40),
	datad => VCC,
	cin => \Add2~79\,
	combout => \Add2~80_combout\,
	cout => \Add2~81\);

-- Location: FF_X42_Y10_N29
\sig_cnt[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~80_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(40));

-- Location: LCCOMB_X42_Y10_N30
\Add2~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~82_combout\ = (sig_cnt(41) & (!\Add2~81\)) # (!sig_cnt(41) & ((\Add2~81\) # (GND)))
-- \Add2~83\ = CARRY((!\Add2~81\) # (!sig_cnt(41)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(41),
	datad => VCC,
	cin => \Add2~81\,
	combout => \Add2~82_combout\,
	cout => \Add2~83\);

-- Location: FF_X42_Y10_N31
\sig_cnt[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~82_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(41));

-- Location: LCCOMB_X42_Y9_N0
\Add2~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~84_combout\ = (sig_cnt(42) & (\Add2~83\ $ (GND))) # (!sig_cnt(42) & (!\Add2~83\ & VCC))
-- \Add2~85\ = CARRY((sig_cnt(42) & !\Add2~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(42),
	datad => VCC,
	cin => \Add2~83\,
	combout => \Add2~84_combout\,
	cout => \Add2~85\);

-- Location: FF_X42_Y9_N1
\sig_cnt[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~84_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(42));

-- Location: LCCOMB_X42_Y9_N2
\Add2~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~86_combout\ = (sig_cnt(43) & (!\Add2~85\)) # (!sig_cnt(43) & ((\Add2~85\) # (GND)))
-- \Add2~87\ = CARRY((!\Add2~85\) # (!sig_cnt(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(43),
	datad => VCC,
	cin => \Add2~85\,
	combout => \Add2~86_combout\,
	cout => \Add2~87\);

-- Location: FF_X42_Y9_N3
\sig_cnt[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~86_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(43));

-- Location: LCCOMB_X42_Y9_N4
\Add2~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~88_combout\ = (sig_cnt(44) & (\Add2~87\ $ (GND))) # (!sig_cnt(44) & (!\Add2~87\ & VCC))
-- \Add2~89\ = CARRY((sig_cnt(44) & !\Add2~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(44),
	datad => VCC,
	cin => \Add2~87\,
	combout => \Add2~88_combout\,
	cout => \Add2~89\);

-- Location: FF_X42_Y9_N5
\sig_cnt[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~88_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(44));

-- Location: LCCOMB_X42_Y9_N6
\Add2~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~90_combout\ = (sig_cnt(45) & (!\Add2~89\)) # (!sig_cnt(45) & ((\Add2~89\) # (GND)))
-- \Add2~91\ = CARRY((!\Add2~89\) # (!sig_cnt(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(45),
	datad => VCC,
	cin => \Add2~89\,
	combout => \Add2~90_combout\,
	cout => \Add2~91\);

-- Location: FF_X42_Y9_N7
\sig_cnt[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~90_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(45));

-- Location: LCCOMB_X42_Y9_N8
\Add2~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~92_combout\ = (sig_cnt(46) & (\Add2~91\ $ (GND))) # (!sig_cnt(46) & (!\Add2~91\ & VCC))
-- \Add2~93\ = CARRY((sig_cnt(46) & !\Add2~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(46),
	datad => VCC,
	cin => \Add2~91\,
	combout => \Add2~92_combout\,
	cout => \Add2~93\);

-- Location: FF_X42_Y9_N9
\sig_cnt[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~92_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(46));

-- Location: LCCOMB_X42_Y9_N10
\Add2~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~94_combout\ = (sig_cnt(47) & (!\Add2~93\)) # (!sig_cnt(47) & ((\Add2~93\) # (GND)))
-- \Add2~95\ = CARRY((!\Add2~93\) # (!sig_cnt(47)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(47),
	datad => VCC,
	cin => \Add2~93\,
	combout => \Add2~94_combout\,
	cout => \Add2~95\);

-- Location: FF_X42_Y9_N11
\sig_cnt[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~94_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(47));

-- Location: LCCOMB_X42_Y9_N12
\Add2~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~96_combout\ = (sig_cnt(48) & (\Add2~95\ $ (GND))) # (!sig_cnt(48) & (!\Add2~95\ & VCC))
-- \Add2~97\ = CARRY((sig_cnt(48) & !\Add2~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(48),
	datad => VCC,
	cin => \Add2~95\,
	combout => \Add2~96_combout\,
	cout => \Add2~97\);

-- Location: FF_X42_Y9_N13
\sig_cnt[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~96_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(48));

-- Location: LCCOMB_X42_Y9_N14
\Add2~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~98_combout\ = (sig_cnt(49) & (!\Add2~97\)) # (!sig_cnt(49) & ((\Add2~97\) # (GND)))
-- \Add2~99\ = CARRY((!\Add2~97\) # (!sig_cnt(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(49),
	datad => VCC,
	cin => \Add2~97\,
	combout => \Add2~98_combout\,
	cout => \Add2~99\);

-- Location: FF_X42_Y9_N15
\sig_cnt[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~98_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(49));

-- Location: LCCOMB_X42_Y9_N16
\Add2~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~100_combout\ = (sig_cnt(50) & (\Add2~99\ $ (GND))) # (!sig_cnt(50) & (!\Add2~99\ & VCC))
-- \Add2~101\ = CARRY((sig_cnt(50) & !\Add2~99\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(50),
	datad => VCC,
	cin => \Add2~99\,
	combout => \Add2~100_combout\,
	cout => \Add2~101\);

-- Location: FF_X42_Y9_N17
\sig_cnt[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~100_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(50));

-- Location: LCCOMB_X42_Y9_N18
\Add2~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~102_combout\ = (sig_cnt(51) & (!\Add2~101\)) # (!sig_cnt(51) & ((\Add2~101\) # (GND)))
-- \Add2~103\ = CARRY((!\Add2~101\) # (!sig_cnt(51)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(51),
	datad => VCC,
	cin => \Add2~101\,
	combout => \Add2~102_combout\,
	cout => \Add2~103\);

-- Location: FF_X42_Y9_N19
\sig_cnt[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~102_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(51));

-- Location: LCCOMB_X42_Y9_N20
\Add2~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~104_combout\ = (sig_cnt(52) & (\Add2~103\ $ (GND))) # (!sig_cnt(52) & (!\Add2~103\ & VCC))
-- \Add2~105\ = CARRY((sig_cnt(52) & !\Add2~103\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(52),
	datad => VCC,
	cin => \Add2~103\,
	combout => \Add2~104_combout\,
	cout => \Add2~105\);

-- Location: FF_X42_Y9_N21
\sig_cnt[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~104_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(52));

-- Location: LCCOMB_X42_Y9_N22
\Add2~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~106_combout\ = (sig_cnt(53) & (!\Add2~105\)) # (!sig_cnt(53) & ((\Add2~105\) # (GND)))
-- \Add2~107\ = CARRY((!\Add2~105\) # (!sig_cnt(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(53),
	datad => VCC,
	cin => \Add2~105\,
	combout => \Add2~106_combout\,
	cout => \Add2~107\);

-- Location: FF_X42_Y9_N23
\sig_cnt[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~106_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(53));

-- Location: LCCOMB_X42_Y9_N24
\Add2~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~108_combout\ = (sig_cnt(54) & (\Add2~107\ $ (GND))) # (!sig_cnt(54) & (!\Add2~107\ & VCC))
-- \Add2~109\ = CARRY((sig_cnt(54) & !\Add2~107\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(54),
	datad => VCC,
	cin => \Add2~107\,
	combout => \Add2~108_combout\,
	cout => \Add2~109\);

-- Location: FF_X42_Y9_N25
\sig_cnt[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~108_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(54));

-- Location: LCCOMB_X42_Y9_N26
\Add2~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~110_combout\ = (sig_cnt(55) & (!\Add2~109\)) # (!sig_cnt(55) & ((\Add2~109\) # (GND)))
-- \Add2~111\ = CARRY((!\Add2~109\) # (!sig_cnt(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(55),
	datad => VCC,
	cin => \Add2~109\,
	combout => \Add2~110_combout\,
	cout => \Add2~111\);

-- Location: FF_X42_Y9_N27
\sig_cnt[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~110_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(55));

-- Location: LCCOMB_X42_Y9_N28
\Add2~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~112_combout\ = (sig_cnt(56) & (\Add2~111\ $ (GND))) # (!sig_cnt(56) & (!\Add2~111\ & VCC))
-- \Add2~113\ = CARRY((sig_cnt(56) & !\Add2~111\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(56),
	datad => VCC,
	cin => \Add2~111\,
	combout => \Add2~112_combout\,
	cout => \Add2~113\);

-- Location: FF_X42_Y9_N29
\sig_cnt[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~112_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(56));

-- Location: LCCOMB_X42_Y9_N30
\Add2~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~114_combout\ = (sig_cnt(57) & (!\Add2~113\)) # (!sig_cnt(57) & ((\Add2~113\) # (GND)))
-- \Add2~115\ = CARRY((!\Add2~113\) # (!sig_cnt(57)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(57),
	datad => VCC,
	cin => \Add2~113\,
	combout => \Add2~114_combout\,
	cout => \Add2~115\);

-- Location: FF_X42_Y9_N31
\sig_cnt[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~114_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(57));

-- Location: LCCOMB_X42_Y8_N0
\Add2~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~116_combout\ = (sig_cnt(58) & (\Add2~115\ $ (GND))) # (!sig_cnt(58) & (!\Add2~115\ & VCC))
-- \Add2~117\ = CARRY((sig_cnt(58) & !\Add2~115\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(58),
	datad => VCC,
	cin => \Add2~115\,
	combout => \Add2~116_combout\,
	cout => \Add2~117\);

-- Location: FF_X42_Y8_N1
\sig_cnt[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~116_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(58));

-- Location: LCCOMB_X42_Y8_N2
\Add2~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~118_combout\ = (sig_cnt(59) & (!\Add2~117\)) # (!sig_cnt(59) & ((\Add2~117\) # (GND)))
-- \Add2~119\ = CARRY((!\Add2~117\) # (!sig_cnt(59)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(59),
	datad => VCC,
	cin => \Add2~117\,
	combout => \Add2~118_combout\,
	cout => \Add2~119\);

-- Location: FF_X42_Y8_N3
\sig_cnt[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~118_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(59));

-- Location: LCCOMB_X42_Y8_N4
\Add2~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~120_combout\ = (sig_cnt(60) & (\Add2~119\ $ (GND))) # (!sig_cnt(60) & (!\Add2~119\ & VCC))
-- \Add2~121\ = CARRY((sig_cnt(60) & !\Add2~119\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(60),
	datad => VCC,
	cin => \Add2~119\,
	combout => \Add2~120_combout\,
	cout => \Add2~121\);

-- Location: FF_X42_Y8_N5
\sig_cnt[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~120_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(60));

-- Location: LCCOMB_X42_Y8_N6
\Add2~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~122_combout\ = (sig_cnt(61) & (!\Add2~121\)) # (!sig_cnt(61) & ((\Add2~121\) # (GND)))
-- \Add2~123\ = CARRY((!\Add2~121\) # (!sig_cnt(61)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(61),
	datad => VCC,
	cin => \Add2~121\,
	combout => \Add2~122_combout\,
	cout => \Add2~123\);

-- Location: FF_X42_Y8_N7
\sig_cnt[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~122_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(61));

-- Location: LCCOMB_X42_Y8_N8
\Add2~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~124_combout\ = (sig_cnt(62) & (\Add2~123\ $ (GND))) # (!sig_cnt(62) & (!\Add2~123\ & VCC))
-- \Add2~125\ = CARRY((sig_cnt(62) & !\Add2~123\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(62),
	datad => VCC,
	cin => \Add2~123\,
	combout => \Add2~124_combout\,
	cout => \Add2~125\);

-- Location: FF_X42_Y8_N9
\sig_cnt[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~124_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(62));

-- Location: LCCOMB_X42_Y8_N10
\Add2~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~126_combout\ = (sig_cnt(63) & (!\Add2~125\)) # (!sig_cnt(63) & ((\Add2~125\) # (GND)))
-- \Add2~127\ = CARRY((!\Add2~125\) # (!sig_cnt(63)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(63),
	datad => VCC,
	cin => \Add2~125\,
	combout => \Add2~126_combout\,
	cout => \Add2~127\);

-- Location: FF_X42_Y8_N11
\sig_cnt[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~126_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(63));

-- Location: LCCOMB_X42_Y8_N12
\Add2~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~128_combout\ = (sig_cnt(64) & (\Add2~127\ $ (GND))) # (!sig_cnt(64) & (!\Add2~127\ & VCC))
-- \Add2~129\ = CARRY((sig_cnt(64) & !\Add2~127\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(64),
	datad => VCC,
	cin => \Add2~127\,
	combout => \Add2~128_combout\,
	cout => \Add2~129\);

-- Location: FF_X42_Y8_N13
\sig_cnt[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~128_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(64));

-- Location: LCCOMB_X42_Y8_N14
\Add2~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~130_combout\ = (sig_cnt(65) & (!\Add2~129\)) # (!sig_cnt(65) & ((\Add2~129\) # (GND)))
-- \Add2~131\ = CARRY((!\Add2~129\) # (!sig_cnt(65)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(65),
	datad => VCC,
	cin => \Add2~129\,
	combout => \Add2~130_combout\,
	cout => \Add2~131\);

-- Location: FF_X42_Y8_N15
\sig_cnt[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~130_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(65));

-- Location: LCCOMB_X42_Y8_N16
\Add2~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~132_combout\ = (sig_cnt(66) & (\Add2~131\ $ (GND))) # (!sig_cnt(66) & (!\Add2~131\ & VCC))
-- \Add2~133\ = CARRY((sig_cnt(66) & !\Add2~131\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(66),
	datad => VCC,
	cin => \Add2~131\,
	combout => \Add2~132_combout\,
	cout => \Add2~133\);

-- Location: FF_X42_Y8_N17
\sig_cnt[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~132_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(66));

-- Location: LCCOMB_X42_Y8_N18
\Add2~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~134_combout\ = (sig_cnt(67) & (!\Add2~133\)) # (!sig_cnt(67) & ((\Add2~133\) # (GND)))
-- \Add2~135\ = CARRY((!\Add2~133\) # (!sig_cnt(67)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(67),
	datad => VCC,
	cin => \Add2~133\,
	combout => \Add2~134_combout\,
	cout => \Add2~135\);

-- Location: FF_X42_Y8_N19
\sig_cnt[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~134_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(67));

-- Location: LCCOMB_X42_Y8_N20
\Add2~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~136_combout\ = (sig_cnt(68) & (\Add2~135\ $ (GND))) # (!sig_cnt(68) & (!\Add2~135\ & VCC))
-- \Add2~137\ = CARRY((sig_cnt(68) & !\Add2~135\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(68),
	datad => VCC,
	cin => \Add2~135\,
	combout => \Add2~136_combout\,
	cout => \Add2~137\);

-- Location: FF_X42_Y8_N21
\sig_cnt[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~136_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(68));

-- Location: LCCOMB_X42_Y8_N22
\Add2~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~138_combout\ = (sig_cnt(69) & (!\Add2~137\)) # (!sig_cnt(69) & ((\Add2~137\) # (GND)))
-- \Add2~139\ = CARRY((!\Add2~137\) # (!sig_cnt(69)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(69),
	datad => VCC,
	cin => \Add2~137\,
	combout => \Add2~138_combout\,
	cout => \Add2~139\);

-- Location: FF_X42_Y8_N23
\sig_cnt[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~138_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(69));

-- Location: LCCOMB_X42_Y8_N24
\Add2~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~140_combout\ = (sig_cnt(70) & (\Add2~139\ $ (GND))) # (!sig_cnt(70) & (!\Add2~139\ & VCC))
-- \Add2~141\ = CARRY((sig_cnt(70) & !\Add2~139\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(70),
	datad => VCC,
	cin => \Add2~139\,
	combout => \Add2~140_combout\,
	cout => \Add2~141\);

-- Location: FF_X42_Y8_N25
\sig_cnt[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~140_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(70));

-- Location: LCCOMB_X42_Y8_N26
\Add2~142\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~142_combout\ = (sig_cnt(71) & (!\Add2~141\)) # (!sig_cnt(71) & ((\Add2~141\) # (GND)))
-- \Add2~143\ = CARRY((!\Add2~141\) # (!sig_cnt(71)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(71),
	datad => VCC,
	cin => \Add2~141\,
	combout => \Add2~142_combout\,
	cout => \Add2~143\);

-- Location: FF_X42_Y8_N27
\sig_cnt[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~142_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(71));

-- Location: LCCOMB_X42_Y8_N28
\Add2~144\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~144_combout\ = (sig_cnt(72) & (\Add2~143\ $ (GND))) # (!sig_cnt(72) & (!\Add2~143\ & VCC))
-- \Add2~145\ = CARRY((sig_cnt(72) & !\Add2~143\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(72),
	datad => VCC,
	cin => \Add2~143\,
	combout => \Add2~144_combout\,
	cout => \Add2~145\);

-- Location: FF_X42_Y8_N29
\sig_cnt[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~144_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(72));

-- Location: LCCOMB_X42_Y8_N30
\Add2~146\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~146_combout\ = (sig_cnt(73) & (!\Add2~145\)) # (!sig_cnt(73) & ((\Add2~145\) # (GND)))
-- \Add2~147\ = CARRY((!\Add2~145\) # (!sig_cnt(73)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(73),
	datad => VCC,
	cin => \Add2~145\,
	combout => \Add2~146_combout\,
	cout => \Add2~147\);

-- Location: FF_X42_Y8_N31
\sig_cnt[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~146_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(73));

-- Location: LCCOMB_X42_Y7_N0
\Add2~148\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~148_combout\ = (sig_cnt(74) & (\Add2~147\ $ (GND))) # (!sig_cnt(74) & (!\Add2~147\ & VCC))
-- \Add2~149\ = CARRY((sig_cnt(74) & !\Add2~147\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(74),
	datad => VCC,
	cin => \Add2~147\,
	combout => \Add2~148_combout\,
	cout => \Add2~149\);

-- Location: FF_X42_Y7_N1
\sig_cnt[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~148_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(74));

-- Location: LCCOMB_X42_Y7_N2
\Add2~150\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~150_combout\ = (sig_cnt(75) & (!\Add2~149\)) # (!sig_cnt(75) & ((\Add2~149\) # (GND)))
-- \Add2~151\ = CARRY((!\Add2~149\) # (!sig_cnt(75)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(75),
	datad => VCC,
	cin => \Add2~149\,
	combout => \Add2~150_combout\,
	cout => \Add2~151\);

-- Location: FF_X42_Y7_N3
\sig_cnt[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~150_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(75));

-- Location: LCCOMB_X43_Y7_N12
\Equal2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (!sig_cnt(74) & (!sig_cnt(72) & (!sig_cnt(75) & !sig_cnt(73))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(74),
	datab => sig_cnt(72),
	datac => sig_cnt(75),
	datad => sig_cnt(73),
	combout => \Equal2~8_combout\);

-- Location: LCCOMB_X42_Y7_N4
\Add2~152\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~152_combout\ = (sig_cnt(76) & (\Add2~151\ $ (GND))) # (!sig_cnt(76) & (!\Add2~151\ & VCC))
-- \Add2~153\ = CARRY((sig_cnt(76) & !\Add2~151\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(76),
	datad => VCC,
	cin => \Add2~151\,
	combout => \Add2~152_combout\,
	cout => \Add2~153\);

-- Location: FF_X42_Y7_N5
\sig_cnt[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~152_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(76));

-- Location: LCCOMB_X42_Y7_N6
\Add2~154\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~154_combout\ = (sig_cnt(77) & (!\Add2~153\)) # (!sig_cnt(77) & ((\Add2~153\) # (GND)))
-- \Add2~155\ = CARRY((!\Add2~153\) # (!sig_cnt(77)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(77),
	datad => VCC,
	cin => \Add2~153\,
	combout => \Add2~154_combout\,
	cout => \Add2~155\);

-- Location: FF_X42_Y7_N7
\sig_cnt[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~154_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(77));

-- Location: LCCOMB_X42_Y7_N8
\Add2~156\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~156_combout\ = (sig_cnt(78) & (\Add2~155\ $ (GND))) # (!sig_cnt(78) & (!\Add2~155\ & VCC))
-- \Add2~157\ = CARRY((sig_cnt(78) & !\Add2~155\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(78),
	datad => VCC,
	cin => \Add2~155\,
	combout => \Add2~156_combout\,
	cout => \Add2~157\);

-- Location: FF_X42_Y7_N9
\sig_cnt[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~156_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(78));

-- Location: LCCOMB_X42_Y7_N10
\Add2~158\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~158_combout\ = (sig_cnt(79) & (!\Add2~157\)) # (!sig_cnt(79) & ((\Add2~157\) # (GND)))
-- \Add2~159\ = CARRY((!\Add2~157\) # (!sig_cnt(79)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(79),
	datad => VCC,
	cin => \Add2~157\,
	combout => \Add2~158_combout\,
	cout => \Add2~159\);

-- Location: FF_X42_Y7_N11
\sig_cnt[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~158_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(79));

-- Location: LCCOMB_X42_Y7_N12
\Add2~160\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~160_combout\ = (sig_cnt(80) & (\Add2~159\ $ (GND))) # (!sig_cnt(80) & (!\Add2~159\ & VCC))
-- \Add2~161\ = CARRY((sig_cnt(80) & !\Add2~159\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(80),
	datad => VCC,
	cin => \Add2~159\,
	combout => \Add2~160_combout\,
	cout => \Add2~161\);

-- Location: FF_X42_Y7_N13
\sig_cnt[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~160_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(80));

-- Location: LCCOMB_X42_Y7_N14
\Add2~162\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~162_combout\ = (sig_cnt(81) & (!\Add2~161\)) # (!sig_cnt(81) & ((\Add2~161\) # (GND)))
-- \Add2~163\ = CARRY((!\Add2~161\) # (!sig_cnt(81)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(81),
	datad => VCC,
	cin => \Add2~161\,
	combout => \Add2~162_combout\,
	cout => \Add2~163\);

-- Location: FF_X42_Y7_N15
\sig_cnt[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~162_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(81));

-- Location: LCCOMB_X42_Y7_N16
\Add2~164\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~164_combout\ = (sig_cnt(82) & (\Add2~163\ $ (GND))) # (!sig_cnt(82) & (!\Add2~163\ & VCC))
-- \Add2~165\ = CARRY((sig_cnt(82) & !\Add2~163\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(82),
	datad => VCC,
	cin => \Add2~163\,
	combout => \Add2~164_combout\,
	cout => \Add2~165\);

-- Location: FF_X42_Y7_N17
\sig_cnt[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~164_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(82));

-- Location: LCCOMB_X42_Y7_N18
\Add2~166\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~166_combout\ = (sig_cnt(83) & (!\Add2~165\)) # (!sig_cnt(83) & ((\Add2~165\) # (GND)))
-- \Add2~167\ = CARRY((!\Add2~165\) # (!sig_cnt(83)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(83),
	datad => VCC,
	cin => \Add2~165\,
	combout => \Add2~166_combout\,
	cout => \Add2~167\);

-- Location: FF_X42_Y7_N19
\sig_cnt[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~166_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(83));

-- Location: LCCOMB_X43_Y7_N16
\Equal2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (!sig_cnt(80) & (!sig_cnt(83) & (!sig_cnt(82) & !sig_cnt(81))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(80),
	datab => sig_cnt(83),
	datac => sig_cnt(82),
	datad => sig_cnt(81),
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X43_Y7_N14
\Equal2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~9_combout\ = (!sig_cnt(71) & (!sig_cnt(70) & (!sig_cnt(69) & !sig_cnt(68))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(71),
	datab => sig_cnt(70),
	datac => sig_cnt(69),
	datad => sig_cnt(68),
	combout => \Equal2~9_combout\);

-- Location: LCCOMB_X43_Y7_N10
\Equal2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = (!sig_cnt(79) & (!sig_cnt(77) & (!sig_cnt(76) & !sig_cnt(78))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(79),
	datab => sig_cnt(77),
	datac => sig_cnt(76),
	datad => sig_cnt(78),
	combout => \Equal2~7_combout\);

-- Location: LCCOMB_X43_Y7_N24
\Equal2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~10_combout\ = (\Equal2~8_combout\ & (\Equal2~6_combout\ & (\Equal2~9_combout\ & \Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~8_combout\,
	datab => \Equal2~6_combout\,
	datac => \Equal2~9_combout\,
	datad => \Equal2~7_combout\,
	combout => \Equal2~10_combout\);

-- Location: LCCOMB_X43_Y11_N24
\Equal3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = (!sig_cnt(2) & (sig_cnt(4) & (sig_cnt(1) & \Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(2),
	datab => sig_cnt(4),
	datac => sig_cnt(1),
	datad => \Equal3~2_combout\,
	combout => \Equal3~4_combout\);

-- Location: LCCOMB_X42_Y7_N20
\Add2~168\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~168_combout\ = (sig_cnt(84) & (\Add2~167\ $ (GND))) # (!sig_cnt(84) & (!\Add2~167\ & VCC))
-- \Add2~169\ = CARRY((sig_cnt(84) & !\Add2~167\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(84),
	datad => VCC,
	cin => \Add2~167\,
	combout => \Add2~168_combout\,
	cout => \Add2~169\);

-- Location: FF_X42_Y7_N21
\sig_cnt[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~168_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(84));

-- Location: LCCOMB_X42_Y7_N22
\Add2~170\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~170_combout\ = (sig_cnt(85) & (!\Add2~169\)) # (!sig_cnt(85) & ((\Add2~169\) # (GND)))
-- \Add2~171\ = CARRY((!\Add2~169\) # (!sig_cnt(85)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(85),
	datad => VCC,
	cin => \Add2~169\,
	combout => \Add2~170_combout\,
	cout => \Add2~171\);

-- Location: FF_X42_Y7_N23
\sig_cnt[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~170_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(85));

-- Location: LCCOMB_X42_Y7_N24
\Add2~172\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~172_combout\ = (sig_cnt(86) & (\Add2~171\ $ (GND))) # (!sig_cnt(86) & (!\Add2~171\ & VCC))
-- \Add2~173\ = CARRY((sig_cnt(86) & !\Add2~171\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(86),
	datad => VCC,
	cin => \Add2~171\,
	combout => \Add2~172_combout\,
	cout => \Add2~173\);

-- Location: FF_X42_Y7_N25
\sig_cnt[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~172_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(86));

-- Location: LCCOMB_X42_Y7_N26
\Add2~174\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~174_combout\ = (sig_cnt(87) & (!\Add2~173\)) # (!sig_cnt(87) & ((\Add2~173\) # (GND)))
-- \Add2~175\ = CARRY((!\Add2~173\) # (!sig_cnt(87)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(87),
	datad => VCC,
	cin => \Add2~173\,
	combout => \Add2~174_combout\,
	cout => \Add2~175\);

-- Location: FF_X42_Y7_N27
\sig_cnt[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~174_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(87));

-- Location: LCCOMB_X42_Y7_N28
\Add2~176\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~176_combout\ = (sig_cnt(88) & (\Add2~175\ $ (GND))) # (!sig_cnt(88) & (!\Add2~175\ & VCC))
-- \Add2~177\ = CARRY((sig_cnt(88) & !\Add2~175\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(88),
	datad => VCC,
	cin => \Add2~175\,
	combout => \Add2~176_combout\,
	cout => \Add2~177\);

-- Location: FF_X42_Y7_N29
\sig_cnt[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~176_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(88));

-- Location: LCCOMB_X42_Y7_N30
\Add2~178\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~178_combout\ = (sig_cnt(89) & (!\Add2~177\)) # (!sig_cnt(89) & ((\Add2~177\) # (GND)))
-- \Add2~179\ = CARRY((!\Add2~177\) # (!sig_cnt(89)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(89),
	datad => VCC,
	cin => \Add2~177\,
	combout => \Add2~178_combout\,
	cout => \Add2~179\);

-- Location: FF_X42_Y7_N31
\sig_cnt[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~178_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(89));

-- Location: LCCOMB_X42_Y6_N0
\Add2~180\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~180_combout\ = (sig_cnt(90) & (\Add2~179\ $ (GND))) # (!sig_cnt(90) & (!\Add2~179\ & VCC))
-- \Add2~181\ = CARRY((sig_cnt(90) & !\Add2~179\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(90),
	datad => VCC,
	cin => \Add2~179\,
	combout => \Add2~180_combout\,
	cout => \Add2~181\);

-- Location: FF_X42_Y6_N1
\sig_cnt[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~180_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(90));

-- Location: LCCOMB_X42_Y6_N2
\Add2~182\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~182_combout\ = (sig_cnt(91) & (!\Add2~181\)) # (!sig_cnt(91) & ((\Add2~181\) # (GND)))
-- \Add2~183\ = CARRY((!\Add2~181\) # (!sig_cnt(91)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(91),
	datad => VCC,
	cin => \Add2~181\,
	combout => \Add2~182_combout\,
	cout => \Add2~183\);

-- Location: FF_X42_Y6_N3
\sig_cnt[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~182_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(91));

-- Location: LCCOMB_X42_Y6_N4
\Add2~184\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~184_combout\ = (sig_cnt(92) & (\Add2~183\ $ (GND))) # (!sig_cnt(92) & (!\Add2~183\ & VCC))
-- \Add2~185\ = CARRY((sig_cnt(92) & !\Add2~183\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(92),
	datad => VCC,
	cin => \Add2~183\,
	combout => \Add2~184_combout\,
	cout => \Add2~185\);

-- Location: FF_X42_Y6_N5
\sig_cnt[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~184_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(92));

-- Location: LCCOMB_X42_Y6_N6
\Add2~186\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~186_combout\ = (sig_cnt(93) & (!\Add2~185\)) # (!sig_cnt(93) & ((\Add2~185\) # (GND)))
-- \Add2~187\ = CARRY((!\Add2~185\) # (!sig_cnt(93)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(93),
	datad => VCC,
	cin => \Add2~185\,
	combout => \Add2~186_combout\,
	cout => \Add2~187\);

-- Location: FF_X42_Y6_N7
\sig_cnt[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~186_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(93));

-- Location: LCCOMB_X42_Y6_N8
\Add2~188\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~188_combout\ = (sig_cnt(94) & (\Add2~187\ $ (GND))) # (!sig_cnt(94) & (!\Add2~187\ & VCC))
-- \Add2~189\ = CARRY((sig_cnt(94) & !\Add2~187\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(94),
	datad => VCC,
	cin => \Add2~187\,
	combout => \Add2~188_combout\,
	cout => \Add2~189\);

-- Location: FF_X42_Y6_N9
\sig_cnt[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~188_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(94));

-- Location: LCCOMB_X42_Y6_N10
\Add2~190\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~190_combout\ = (sig_cnt(95) & (!\Add2~189\)) # (!sig_cnt(95) & ((\Add2~189\) # (GND)))
-- \Add2~191\ = CARRY((!\Add2~189\) # (!sig_cnt(95)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(95),
	datad => VCC,
	cin => \Add2~189\,
	combout => \Add2~190_combout\,
	cout => \Add2~191\);

-- Location: FF_X42_Y6_N11
\sig_cnt[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~190_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(95));

-- Location: LCCOMB_X42_Y6_N12
\Add2~192\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~192_combout\ = (sig_cnt(96) & (\Add2~191\ $ (GND))) # (!sig_cnt(96) & (!\Add2~191\ & VCC))
-- \Add2~193\ = CARRY((sig_cnt(96) & !\Add2~191\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(96),
	datad => VCC,
	cin => \Add2~191\,
	combout => \Add2~192_combout\,
	cout => \Add2~193\);

-- Location: FF_X42_Y6_N13
\sig_cnt[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~192_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(96));

-- Location: LCCOMB_X42_Y6_N14
\Add2~194\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~194_combout\ = (sig_cnt(97) & (!\Add2~193\)) # (!sig_cnt(97) & ((\Add2~193\) # (GND)))
-- \Add2~195\ = CARRY((!\Add2~193\) # (!sig_cnt(97)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt(97),
	datad => VCC,
	cin => \Add2~193\,
	combout => \Add2~194_combout\,
	cout => \Add2~195\);

-- Location: FF_X42_Y6_N15
\sig_cnt[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~194_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(97));

-- Location: LCCOMB_X42_Y6_N16
\Add2~196\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~196_combout\ = (sig_cnt(98) & (\Add2~195\ $ (GND))) # (!sig_cnt(98) & (!\Add2~195\ & VCC))
-- \Add2~197\ = CARRY((sig_cnt(98) & !\Add2~195\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(98),
	datad => VCC,
	cin => \Add2~195\,
	combout => \Add2~196_combout\,
	cout => \Add2~197\);

-- Location: LCCOMB_X42_Y6_N30
\Selector109~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector109~0_combout\ = (!\Equal3~4_combout\ & \Add2~196_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal3~4_combout\,
	datad => \Add2~196_combout\,
	combout => \Selector109~0_combout\);

-- Location: FF_X42_Y6_N31
\sig_cnt[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector109~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(98));

-- Location: LCCOMB_X42_Y6_N18
\Add2~198\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~198_combout\ = \Add2~197\ $ (sig_cnt(99))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sig_cnt(99),
	cin => \Add2~197\,
	combout => \Add2~198_combout\);

-- Location: LCCOMB_X42_Y6_N28
\Selector108~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector108~0_combout\ = (!\Equal3~4_combout\ & \Add2~198_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal3~4_combout\,
	datad => \Add2~198_combout\,
	combout => \Selector108~0_combout\);

-- Location: FF_X42_Y6_N29
\sig_cnt[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector108~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt(99));

-- Location: LCCOMB_X42_Y6_N24
\Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!sig_cnt(98) & (!sig_cnt(99) & (!sig_cnt(97) & !sig_cnt(96))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(98),
	datab => sig_cnt(99),
	datac => sig_cnt(97),
	datad => sig_cnt(96),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X42_Y6_N20
\Equal2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!sig_cnt(88) & (!sig_cnt(90) & (!sig_cnt(89) & !sig_cnt(91))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(88),
	datab => sig_cnt(90),
	datac => sig_cnt(89),
	datad => sig_cnt(91),
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X42_Y6_N26
\Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!sig_cnt(93) & (!sig_cnt(94) & (!sig_cnt(92) & !sig_cnt(95))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(93),
	datab => sig_cnt(94),
	datac => sig_cnt(92),
	datad => sig_cnt(95),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X44_Y5_N0
\Equal2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (!sig_cnt(84) & (!sig_cnt(87) & (!sig_cnt(85) & !sig_cnt(86))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(84),
	datab => sig_cnt(87),
	datac => sig_cnt(85),
	datad => sig_cnt(86),
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X42_Y6_N22
\Equal2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (\Equal2~1_combout\ & (\Equal2~3_combout\ & (\Equal2~2_combout\ & \Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \Equal2~3_combout\,
	datac => \Equal2~2_combout\,
	datad => \Equal2~4_combout\,
	combout => \Equal2~5_combout\);

-- Location: LCCOMB_X43_Y9_N10
\Equal2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~18_combout\ = (!sig_cnt(43) & (!sig_cnt(40) & (!sig_cnt(42) & !sig_cnt(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(43),
	datab => sig_cnt(40),
	datac => sig_cnt(42),
	datad => sig_cnt(41),
	combout => \Equal2~18_combout\);

-- Location: LCCOMB_X43_Y9_N24
\Equal2~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~17_combout\ = (!sig_cnt(46) & (!sig_cnt(45) & (!sig_cnt(47) & !sig_cnt(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(46),
	datab => sig_cnt(45),
	datac => sig_cnt(47),
	datad => sig_cnt(44),
	combout => \Equal2~17_combout\);

-- Location: LCCOMB_X43_Y9_N4
\Equal2~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~19_combout\ = (!sig_cnt(36) & (!sig_cnt(37) & (!sig_cnt(38) & !sig_cnt(39))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(36),
	datab => sig_cnt(37),
	datac => sig_cnt(38),
	datad => sig_cnt(39),
	combout => \Equal2~19_combout\);

-- Location: LCCOMB_X43_Y9_N6
\Equal2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~16_combout\ = (!sig_cnt(49) & (!sig_cnt(51) & (!sig_cnt(50) & !sig_cnt(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(49),
	datab => sig_cnt(51),
	datac => sig_cnt(50),
	datad => sig_cnt(48),
	combout => \Equal2~16_combout\);

-- Location: LCCOMB_X43_Y9_N22
\Equal2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~20_combout\ = (\Equal2~18_combout\ & (\Equal2~17_combout\ & (\Equal2~19_combout\ & \Equal2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~18_combout\,
	datab => \Equal2~17_combout\,
	datac => \Equal2~19_combout\,
	datad => \Equal2~16_combout\,
	combout => \Equal2~20_combout\);

-- Location: LCCOMB_X43_Y8_N16
\Equal2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~11_combout\ = (!sig_cnt(64) & (!sig_cnt(67) & (!sig_cnt(66) & !sig_cnt(65))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(64),
	datab => sig_cnt(67),
	datac => sig_cnt(66),
	datad => sig_cnt(65),
	combout => \Equal2~11_combout\);

-- Location: LCCOMB_X43_Y9_N0
\Equal2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~13_combout\ = (!sig_cnt(59) & (!sig_cnt(57) & (!sig_cnt(58) & !sig_cnt(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(59),
	datab => sig_cnt(57),
	datac => sig_cnt(58),
	datad => sig_cnt(56),
	combout => \Equal2~13_combout\);

-- Location: LCCOMB_X43_Y9_N26
\Equal2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~14_combout\ = (!sig_cnt(54) & (!sig_cnt(53) & (!sig_cnt(55) & !sig_cnt(52))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(54),
	datab => sig_cnt(53),
	datac => sig_cnt(55),
	datad => sig_cnt(52),
	combout => \Equal2~14_combout\);

-- Location: LCCOMB_X43_Y8_N2
\Equal2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~12_combout\ = (!sig_cnt(63) & (!sig_cnt(61) & (!sig_cnt(60) & !sig_cnt(62))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(63),
	datab => sig_cnt(61),
	datac => sig_cnt(60),
	datad => sig_cnt(62),
	combout => \Equal2~12_combout\);

-- Location: LCCOMB_X43_Y9_N20
\Equal2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~15_combout\ = (\Equal2~11_combout\ & (\Equal2~13_combout\ & (\Equal2~14_combout\ & \Equal2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~11_combout\,
	datab => \Equal2~13_combout\,
	datac => \Equal2~14_combout\,
	datad => \Equal2~12_combout\,
	combout => \Equal2~15_combout\);

-- Location: LCCOMB_X43_Y9_N16
\Equal2~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~21_combout\ = (\Equal2~10_combout\ & (\Equal2~5_combout\ & (\Equal2~20_combout\ & \Equal2~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~10_combout\,
	datab => \Equal2~5_combout\,
	datac => \Equal2~20_combout\,
	datad => \Equal2~15_combout\,
	combout => \Equal2~21_combout\);

-- Location: LCCOMB_X43_Y11_N26
\Equal2~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~27_combout\ = (!sig_cnt(17) & (!sig_cnt(19) & (!sig_cnt(18) & !sig_cnt(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(17),
	datab => sig_cnt(19),
	datac => sig_cnt(18),
	datad => sig_cnt(16),
	combout => \Equal2~27_combout\);

-- Location: LCCOMB_X43_Y11_N28
\Equal2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~28_combout\ = (!sig_cnt(15) & (!sig_cnt(13) & (!sig_cnt(12) & !sig_cnt(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(15),
	datab => sig_cnt(13),
	datac => sig_cnt(12),
	datad => sig_cnt(14),
	combout => \Equal2~28_combout\);

-- Location: LCCOMB_X42_Y12_N6
\Equal2~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~29_combout\ = (!sig_cnt(11) & (!sig_cnt(10) & (!sig_cnt(9) & !sig_cnt(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(11),
	datab => sig_cnt(10),
	datac => sig_cnt(9),
	datad => sig_cnt(8),
	combout => \Equal2~29_combout\);

-- Location: LCCOMB_X42_Y12_N2
\Equal2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~30_combout\ = (\Equal2~29_combout\ & (!sig_cnt(6) & (!sig_cnt(7) & !sig_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~29_combout\,
	datab => sig_cnt(6),
	datac => sig_cnt(7),
	datad => sig_cnt(0),
	combout => \Equal2~30_combout\);

-- Location: LCCOMB_X43_Y11_N10
\Equal2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~22_combout\ = (!sig_cnt(33) & (!sig_cnt(34) & (!sig_cnt(35) & !sig_cnt(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(33),
	datab => sig_cnt(34),
	datac => sig_cnt(35),
	datad => sig_cnt(32),
	combout => \Equal2~22_combout\);

-- Location: LCCOMB_X43_Y10_N0
\Equal2~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~23_combout\ = (!sig_cnt(30) & (!sig_cnt(29) & (!sig_cnt(28) & !sig_cnt(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(30),
	datab => sig_cnt(29),
	datac => sig_cnt(28),
	datad => sig_cnt(31),
	combout => \Equal2~23_combout\);

-- Location: LCCOMB_X43_Y11_N22
\Equal2~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~25_combout\ = (!sig_cnt(20) & (!sig_cnt(22) & (!sig_cnt(23) & !sig_cnt(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(20),
	datab => sig_cnt(22),
	datac => sig_cnt(23),
	datad => sig_cnt(21),
	combout => \Equal2~25_combout\);

-- Location: LCCOMB_X43_Y11_N20
\Equal2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~24_combout\ = (!sig_cnt(24) & (!sig_cnt(27) & (!sig_cnt(26) & !sig_cnt(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(24),
	datab => sig_cnt(27),
	datac => sig_cnt(26),
	datad => sig_cnt(25),
	combout => \Equal2~24_combout\);

-- Location: LCCOMB_X43_Y11_N0
\Equal2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~26_combout\ = (\Equal2~22_combout\ & (\Equal2~23_combout\ & (\Equal2~25_combout\ & \Equal2~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~22_combout\,
	datab => \Equal2~23_combout\,
	datac => \Equal2~25_combout\,
	datad => \Equal2~24_combout\,
	combout => \Equal2~26_combout\);

-- Location: LCCOMB_X43_Y11_N6
\Equal2~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~31_combout\ = (\Equal2~27_combout\ & (\Equal2~28_combout\ & (\Equal2~30_combout\ & \Equal2~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~27_combout\,
	datab => \Equal2~28_combout\,
	datac => \Equal2~30_combout\,
	datad => \Equal2~26_combout\,
	combout => \Equal2~31_combout\);

-- Location: LCCOMB_X43_Y11_N18
\Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (!sig_cnt(3) & (sig_cnt(5) & (\Equal2~21_combout\ & \Equal2~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(3),
	datab => sig_cnt(5),
	datac => \Equal2~21_combout\,
	datad => \Equal2~31_combout\,
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X43_Y11_N12
\Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (sig_cnt(2) & (!sig_cnt(1) & !sig_cnt(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(2),
	datac => sig_cnt(1),
	datad => sig_cnt(4),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X41_Y15_N26
\Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\state_leds.s1~q\) # ((\state_leds.s7~q\ & ((!\Equal4~0_combout\) # (!\Equal3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~2_combout\,
	datab => \state_leds.s7~q\,
	datac => \Equal4~0_combout\,
	datad => \state_leds.s1~q\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X43_Y11_N16
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (sig_cnt(3) & (!sig_cnt(4) & (sig_cnt(2) & !sig_cnt(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt(3),
	datab => sig_cnt(4),
	datac => sig_cnt(2),
	datad => sig_cnt(5),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X43_Y11_N8
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Equal2~31_combout\ & (\Equal2~21_combout\ & (sig_cnt(1) & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~31_combout\,
	datab => \Equal2~21_combout\,
	datac => sig_cnt(1),
	datad => \Equal2~0_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X41_Y15_N14
\Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\Selector0~1_combout\) # (((\state_leds.s6~q\ & !\Selector0~0_combout\)) # (!\Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~1_combout\,
	datab => \state_leds.s6~q\,
	datac => \Selector0~0_combout\,
	datad => \Selector3~0_combout\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X41_Y15_N30
\Selector0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (\state_leds.s5~q\) # ((\Selector0~2_combout\ & \sig_OB_LED_RGB_DIN~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector0~2_combout\,
	datac => \sig_OB_LED_RGB_DIN~q\,
	datad => \state_leds.s5~q\,
	combout => \Selector0~3_combout\);

-- Location: FF_X41_Y15_N31
sig_OB_LED_RGB_DIN : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector0~3_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_OB_LED_RGB_DIN~q\);

-- Location: LCCOMB_X64_Y15_N0
\OB_LED_RGB_DIN~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OB_LED_RGB_DIN~reg0feeder_combout\ = \sig_OB_LED_RGB_DIN~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sig_OB_LED_RGB_DIN~q\,
	combout => \OB_LED_RGB_DIN~reg0feeder_combout\);

-- Location: FF_X64_Y15_N1
\OB_LED_RGB_DIN~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \OB_LED_RGB_DIN~reg0feeder_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OB_LED_RGB_DIN~reg0_q\);

-- Location: IOIBUF_X78_Y3_N8
\green_leds[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_green_leds(0),
	o => \green_leds[0]~input_o\);

-- Location: LCCOMB_X52_Y1_N0
\LED_1~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_1~reg0feeder_combout\ = \green_leds[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \green_leds[0]~input_o\,
	combout => \LED_1~reg0feeder_combout\);

-- Location: LCCOMB_X41_Y15_N4
\LED_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_1~0_combout\ = (\state_leds.s1~q\ & (!\load_leds~input_o\ & \resetn~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_leds.s1~q\,
	datac => \load_leds~input_o\,
	datad => \resetn~input_o\,
	combout => \LED_1~0_combout\);

-- Location: FF_X52_Y1_N1
\LED_1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \LED_1~reg0feeder_combout\,
	ena => \LED_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_1~reg0_q\);

-- Location: IOIBUF_X69_Y0_N15
\green_leds[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_green_leds(1),
	o => \green_leds[1]~input_o\);

-- Location: LCCOMB_X52_Y1_N2
\LED_2~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_2~reg0feeder_combout\ = \green_leds[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \green_leds[1]~input_o\,
	combout => \LED_2~reg0feeder_combout\);

-- Location: FF_X52_Y1_N3
\LED_2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \LED_2~reg0feeder_combout\,
	ena => \LED_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_2~reg0_q\);

-- Location: IOIBUF_X51_Y0_N8
\green_leds[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_green_leds(2),
	o => \green_leds[2]~input_o\);

-- Location: LCCOMB_X52_Y1_N4
\LED_3~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_3~reg0feeder_combout\ = \green_leds[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \green_leds[2]~input_o\,
	combout => \LED_3~reg0feeder_combout\);

-- Location: FF_X52_Y1_N5
\LED_3~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \LED_3~reg0feeder_combout\,
	ena => \LED_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED_3~reg0_q\);

-- Location: IOIBUF_X0_Y30_N1
\green_leds[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_green_leds(3),
	o => \green_leds[3]~input_o\);

-- Location: IOIBUF_X49_Y54_N29
\green_leds[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_green_leds(4),
	o => \green_leds[4]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\green_leds[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_green_leds(5),
	o => \green_leds[5]~input_o\);

-- Location: IOIBUF_X22_Y0_N29
\green_leds[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_green_leds(6),
	o => \green_leds[6]~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\green_leds[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_green_leds(7),
	o => \green_leds[7]~input_o\);

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

ww_OB_LED_RGB_DIN <= \OB_LED_RGB_DIN~output_o\;

ww_LED_1 <= \LED_1~output_o\;

ww_LED_2 <= \LED_2~output_o\;

ww_LED_3 <= \LED_3~output_o\;
END structure;


