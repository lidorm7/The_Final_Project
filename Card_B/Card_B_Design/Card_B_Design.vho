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

-- DATE "08/01/2024 15:23:52"

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

ENTITY 	Card_B_Design IS
    PORT (
	resetn : IN std_logic;
	sysclk : IN std_logic;
	BiPhase_rx_in : IN std_logic;
	OB_LED_RGB_Din : BUFFER std_logic;
	LED_1 : BUFFER std_logic;
	LED_2 : BUFFER std_logic;
	LED_3 : BUFFER std_logic
	);
END Card_B_Design;

-- Design Ports Information
-- OB_LED_RGB_Din	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED_1	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED_2	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED_3	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sysclk	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- resetn	=>  Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BiPhase_rx_in	=>  Location: PIN_AB8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF Card_B_Design IS
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
SIGNAL ww_BiPhase_rx_in : std_logic;
SIGNAL ww_OB_LED_RGB_Din : std_logic;
SIGNAL ww_LED_1 : std_logic;
SIGNAL ww_LED_2 : std_logic;
SIGNAL ww_LED_3 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \sysclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \OB_LED_RGB_Din~output_o\ : std_logic;
SIGNAL \LED_1~output_o\ : std_logic;
SIGNAL \LED_2~output_o\ : std_logic;
SIGNAL \LED_3~output_o\ : std_logic;
SIGNAL \sysclk~input_o\ : std_logic;
SIGNAL \sysclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \RGB_Leds|Add1~0_combout\ : std_logic;
SIGNAL \RGB_Leds|sig_cnt_loop~2_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \Simple|cnt_clk[0]~14_combout\ : std_logic;
SIGNAL \Simple|Equal0~2_combout\ : std_logic;
SIGNAL \Simple|Equal0~1_combout\ : std_logic;
SIGNAL \Simple|Equal0~0_combout\ : std_logic;
SIGNAL \Simple|cnt_clk[12]~39\ : std_logic;
SIGNAL \Simple|cnt_clk[13]~40_combout\ : std_logic;
SIGNAL \Simple|Equal0~3_combout\ : std_logic;
SIGNAL \BiPhase_rx_in~input_o\ : std_logic;
SIGNAL \Filter|sig_filter[2]~feeder_combout\ : std_logic;
SIGNAL \Filter|sig_filter[3]~feeder_combout\ : std_logic;
SIGNAL \Filter|sig_filter[5]~feeder_combout\ : std_logic;
SIGNAL \Filter|sig_filter[6]~feeder_combout\ : std_logic;
SIGNAL \Filter|sig_check_5~0_combout\ : std_logic;
SIGNAL \Filter|sig_check_5~q\ : std_logic;
SIGNAL \Filter|sig_filter[7]~feeder_combout\ : std_logic;
SIGNAL \Filter|sig_check_6~0_combout\ : std_logic;
SIGNAL \Filter|sig_check_6~q\ : std_logic;
SIGNAL \Filter|sig_check_4~0_combout\ : std_logic;
SIGNAL \Filter|sig_check_4~q\ : std_logic;
SIGNAL \Filter|sig_check_2~0_combout\ : std_logic;
SIGNAL \Filter|sig_check_2~q\ : std_logic;
SIGNAL \Filter|sig_check_3~0_combout\ : std_logic;
SIGNAL \Filter|sig_check_3~q\ : std_logic;
SIGNAL \Filter|sig_check_0~0_combout\ : std_logic;
SIGNAL \Filter|sig_check_0~q\ : std_logic;
SIGNAL \Filter|sig_check_1~0_combout\ : std_logic;
SIGNAL \Filter|sig_check_1~q\ : std_logic;
SIGNAL \Filter|main_check~0_combout\ : std_logic;
SIGNAL \Filter|main_check~1_combout\ : std_logic;
SIGNAL \Filter|sig_total_check~q\ : std_logic;
SIGNAL \Filter|signal_out~0_combout\ : std_logic;
SIGNAL \Filter|signal_out~q\ : std_logic;
SIGNAL \Simple|sig_bi_phase_filterd_cut~feeder_combout\ : std_logic;
SIGNAL \Simple|sig_bi_phase_filterd_cut~q\ : std_logic;
SIGNAL \Simple|sig_bi_phase_filterd_cut_not~q\ : std_logic;
SIGNAL \Simple|sig_enable~0_combout\ : std_logic;
SIGNAL \Simple|sig_enable~1_combout\ : std_logic;
SIGNAL \Simple|sig_enable~q\ : std_logic;
SIGNAL \Simple|clk_00~0_combout\ : std_logic;
SIGNAL \Simple|cnt_clk[0]~15\ : std_logic;
SIGNAL \Simple|cnt_clk[1]~16_combout\ : std_logic;
SIGNAL \Simple|cnt_clk[1]~17\ : std_logic;
SIGNAL \Simple|cnt_clk[2]~18_combout\ : std_logic;
SIGNAL \Simple|cnt_clk[2]~19\ : std_logic;
SIGNAL \Simple|cnt_clk[3]~20_combout\ : std_logic;
SIGNAL \Simple|cnt_clk[3]~21\ : std_logic;
SIGNAL \Simple|cnt_clk[4]~22_combout\ : std_logic;
SIGNAL \Simple|cnt_clk[4]~23\ : std_logic;
SIGNAL \Simple|cnt_clk[5]~24_combout\ : std_logic;
SIGNAL \Simple|cnt_clk[5]~25\ : std_logic;
SIGNAL \Simple|cnt_clk[6]~26_combout\ : std_logic;
SIGNAL \Simple|cnt_clk[6]~27\ : std_logic;
SIGNAL \Simple|cnt_clk[7]~28_combout\ : std_logic;
SIGNAL \Simple|cnt_clk[7]~29\ : std_logic;
SIGNAL \Simple|cnt_clk[8]~30_combout\ : std_logic;
SIGNAL \Simple|cnt_clk[8]~31\ : std_logic;
SIGNAL \Simple|cnt_clk[9]~32_combout\ : std_logic;
SIGNAL \Simple|cnt_clk[9]~33\ : std_logic;
SIGNAL \Simple|cnt_clk[10]~34_combout\ : std_logic;
SIGNAL \Simple|cnt_clk[10]~35\ : std_logic;
SIGNAL \Simple|cnt_clk[11]~36_combout\ : std_logic;
SIGNAL \Simple|cnt_clk[11]~37\ : std_logic;
SIGNAL \Simple|cnt_clk[12]~38_combout\ : std_logic;
SIGNAL \Simple|Equal0~4_combout\ : std_logic;
SIGNAL \Simple|sig_90_clk~0_combout\ : std_logic;
SIGNAL \Simple|sig_90_clk~q\ : std_logic;
SIGNAL \Simple|sig_90_cut~q\ : std_logic;
SIGNAL \Simple|sig_90_cut_not~q\ : std_logic;
SIGNAL \Simple|sig_00_clk~0_combout\ : std_logic;
SIGNAL \Simple|sig_00_clk~q\ : std_logic;
SIGNAL \Simple|sig_ff_A~0_combout\ : std_logic;
SIGNAL \Simple|sig_ff_A~1_combout\ : std_logic;
SIGNAL \Simple|sig_ff_A~q\ : std_logic;
SIGNAL \Simple|sig_ff_B~0_combout\ : std_logic;
SIGNAL \Simple|sig_ff_B~1_combout\ : std_logic;
SIGNAL \Simple|sig_ff_B~q\ : std_logic;
SIGNAL \Simple|nrzl_data~0_combout\ : std_logic;
SIGNAL \DO|sig_main_clk_cut~0_combout\ : std_logic;
SIGNAL \DO|sig_main_clk_cut~q\ : std_logic;
SIGNAL \DO|sig_main_clk_cut_not~q\ : std_logic;
SIGNAL \DO|sig_main_clk_r~combout\ : std_logic;
SIGNAL \Simple|nrzl_data~q\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[0]~feeder_combout\ : std_logic;
SIGNAL \CRC8|cnt~0_combout\ : std_logic;
SIGNAL \CRC8|state_crc.s3~feeder_combout\ : std_logic;
SIGNAL \CRC8|state_crc.s3~q\ : std_logic;
SIGNAL \CRC8|state_crc.s4~feeder_combout\ : std_logic;
SIGNAL \CRC8|state_crc.s4~q\ : std_logic;
SIGNAL \CRC8|sig_correlation[0]~5_combout\ : std_logic;
SIGNAL \CRC8|flag~0_combout\ : std_logic;
SIGNAL \CRC8|flag~q\ : std_logic;
SIGNAL \CRC8|state_xor~70_combout\ : std_logic;
SIGNAL \CRC8|state_xor.s1~q\ : std_logic;
SIGNAL \CRC8|state_xor.s2~q\ : std_logic;
SIGNAL \CRC8|state_xor.s3~feeder_combout\ : std_logic;
SIGNAL \CRC8|state_xor.s3~q\ : std_logic;
SIGNAL \CRC8|state_xor.s4~feeder_combout\ : std_logic;
SIGNAL \CRC8|state_xor.s4~q\ : std_logic;
SIGNAL \CRC8|state_xor.s5~feeder_combout\ : std_logic;
SIGNAL \CRC8|state_xor.s5~q\ : std_logic;
SIGNAL \CRC8|state_xor.s6~feeder_combout\ : std_logic;
SIGNAL \CRC8|state_xor.s6~q\ : std_logic;
SIGNAL \CRC8|state_xor.s7~q\ : std_logic;
SIGNAL \CRC8|state_xor.s8~feeder_combout\ : std_logic;
SIGNAL \CRC8|state_xor.s8~q\ : std_logic;
SIGNAL \CRC8|state_xor.s9~feeder_combout\ : std_logic;
SIGNAL \CRC8|state_xor.s9~q\ : std_logic;
SIGNAL \CRC8|state_xor.s10~q\ : std_logic;
SIGNAL \CRC8|state_xor.s11~q\ : std_logic;
SIGNAL \CRC8|state_xor.s12~feeder_combout\ : std_logic;
SIGNAL \CRC8|state_xor.s12~q\ : std_logic;
SIGNAL \CRC8|state_xor.s13~feeder_combout\ : std_logic;
SIGNAL \CRC8|state_xor.s13~q\ : std_logic;
SIGNAL \CRC8|state_xor.s14~feeder_combout\ : std_logic;
SIGNAL \CRC8|state_xor.s14~q\ : std_logic;
SIGNAL \CRC8|state_xor.s15~feeder_combout\ : std_logic;
SIGNAL \CRC8|state_xor.s15~q\ : std_logic;
SIGNAL \CRC8|state_xor.s16~feeder_combout\ : std_logic;
SIGNAL \CRC8|state_xor.s16~q\ : std_logic;
SIGNAL \CRC8|state_xor.s17~q\ : std_logic;
SIGNAL \CRC8|state_xor.s18~feeder_combout\ : std_logic;
SIGNAL \CRC8|state_xor.s18~q\ : std_logic;
SIGNAL \CRC8|state_xor.s19~q\ : std_logic;
SIGNAL \CRC8|state_xor.s20~q\ : std_logic;
SIGNAL \CRC8|state_xor.s21~q\ : std_logic;
SIGNAL \CRC8|state_xor.s22~q\ : std_logic;
SIGNAL \CRC8|state_xor.s23~feeder_combout\ : std_logic;
SIGNAL \CRC8|state_xor.s23~q\ : std_logic;
SIGNAL \CRC8|state_xor.s24~q\ : std_logic;
SIGNAL \CRC8|state_xor.s25~q\ : std_logic;
SIGNAL \CRC8|state_xor.s26~q\ : std_logic;
SIGNAL \CRC8|state_xor.s27~q\ : std_logic;
SIGNAL \CRC8|state_xor.s28~q\ : std_logic;
SIGNAL \CRC8|state_xor.s29~q\ : std_logic;
SIGNAL \CRC8|state_xor.s30~q\ : std_logic;
SIGNAL \CRC8|state_xor.s31~feeder_combout\ : std_logic;
SIGNAL \CRC8|state_xor.s31~q\ : std_logic;
SIGNAL \CRC8|state_xor.s32~q\ : std_logic;
SIGNAL \CRC8|Selector0~0_combout\ : std_logic;
SIGNAL \CRC8|state_xor.s0~q\ : std_logic;
SIGNAL \CRC8|sig_main_clk_f~0_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~23_combout\ : std_logic;
SIGNAL \CRC8|sig_sf_reg[3]~feeder_combout\ : std_logic;
SIGNAL \CRC8|sig_sf_reg[11]~feeder_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~18_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~19_combout\ : std_logic;
SIGNAL \CRC8|sig_sf_reg[15]~feeder_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~20_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~21_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~22_combout\ : std_logic;
SIGNAL \CRC8|sig_sf_reg[17]~feeder_combout\ : std_logic;
SIGNAL \CRC8|sig_sf_reg[20]~feeder_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~36_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~37_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~38_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~26_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~24_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~25_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~27_combout\ : std_logic;
SIGNAL \CRC8|sig_sf_reg[25]~feeder_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~28_combout\ : std_logic;
SIGNAL \CRC8|sig_sf_reg[26]~feeder_combout\ : std_logic;
SIGNAL \CRC8|sig_sf_reg[27]~feeder_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~29_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~30_combout\ : std_logic;
SIGNAL \CRC8|sig_sf_reg[30]~feeder_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~31_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~32_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~33_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~34_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~35_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~39_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~40_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~15_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~16_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~17_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~50_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~51_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~42_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~43_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~44_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~41_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~45_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~46_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~48_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~49_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~47_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[0]~6\ : std_logic;
SIGNAL \CRC8|sig_correlation[1]~7_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[1]~8\ : std_logic;
SIGNAL \CRC8|sig_correlation[2]~9_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[2]~10\ : std_logic;
SIGNAL \CRC8|sig_correlation[3]~11_combout\ : std_logic;
SIGNAL \CRC8|sig_correlation[3]~12\ : std_logic;
SIGNAL \CRC8|sig_correlation[4]~13_combout\ : std_logic;
SIGNAL \DO|LessThan0~0_combout\ : std_logic;
SIGNAL \CRC8|Selector37~0_combout\ : std_logic;
SIGNAL \CRC8|state_crc.s0~q\ : std_logic;
SIGNAL \CRC8|Selector38~0_combout\ : std_logic;
SIGNAL \CRC8|Selector38~1_combout\ : std_logic;
SIGNAL \CRC8|state_crc.s1~q\ : std_logic;
SIGNAL \CRC8|crc8bit_operation:cnt[7]~0_combout\ : std_logic;
SIGNAL \CRC8|crc8bit_operation:cnt[3]~q\ : std_logic;
SIGNAL \CRC8|Add1~0_combout\ : std_logic;
SIGNAL \CRC8|crc8bit_operation:cnt[0]~q\ : std_logic;
SIGNAL \CRC8|Add1~1\ : std_logic;
SIGNAL \CRC8|Add1~2_combout\ : std_logic;
SIGNAL \CRC8|crc8bit_operation:cnt[1]~q\ : std_logic;
SIGNAL \CRC8|Add1~3\ : std_logic;
SIGNAL \CRC8|Add1~4_combout\ : std_logic;
SIGNAL \CRC8|crc8bit_operation:cnt[2]~q\ : std_logic;
SIGNAL \CRC8|Add1~5\ : std_logic;
SIGNAL \CRC8|Add1~6_combout\ : std_logic;
SIGNAL \CRC8|Equal0~0_combout\ : std_logic;
SIGNAL \CRC8|cnt~2_combout\ : std_logic;
SIGNAL \CRC8|crc8bit_operation:cnt[6]~q\ : std_logic;
SIGNAL \CRC8|Add1~7\ : std_logic;
SIGNAL \CRC8|Add1~8_combout\ : std_logic;
SIGNAL \CRC8|cnt~1_combout\ : std_logic;
SIGNAL \CRC8|crc8bit_operation:cnt[4]~q\ : std_logic;
SIGNAL \CRC8|Add1~9\ : std_logic;
SIGNAL \CRC8|Add1~10_combout\ : std_logic;
SIGNAL \CRC8|crc8bit_operation:cnt[5]~q\ : std_logic;
SIGNAL \CRC8|Add1~11\ : std_logic;
SIGNAL \CRC8|Add1~12_combout\ : std_logic;
SIGNAL \CRC8|cnt~3_combout\ : std_logic;
SIGNAL \CRC8|crc8bit_operation:cnt[7]~q\ : std_logic;
SIGNAL \CRC8|Add1~13\ : std_logic;
SIGNAL \CRC8|Add1~14_combout\ : std_logic;
SIGNAL \CRC8|Equal0~1_combout\ : std_logic;
SIGNAL \CRC8|Selector39~0_combout\ : std_logic;
SIGNAL \CRC8|state_crc.s2~q\ : std_logic;
SIGNAL \CRC8|crc8bit_out~0_combout\ : std_logic;
SIGNAL \CRC8|Selector42~0_combout\ : std_logic;
SIGNAL \CRC8|Selector49~0_combout\ : std_logic;
SIGNAL \CRC8|Selector49~1_combout\ : std_logic;
SIGNAL \CRC8|Selector48~0_combout\ : std_logic;
SIGNAL \CRC8|Selector48~1_combout\ : std_logic;
SIGNAL \CRC8|Selector47~0_combout\ : std_logic;
SIGNAL \CRC8|Selector47~1_combout\ : std_logic;
SIGNAL \CRC8|Selector46~0_combout\ : std_logic;
SIGNAL \CRC8|Selector45~0_combout\ : std_logic;
SIGNAL \CRC8|Selector44~0_combout\ : std_logic;
SIGNAL \CRC8|Selector43~0_combout\ : std_logic;
SIGNAL \CRC8|Equal1~0_combout\ : std_logic;
SIGNAL \CRC8|Equal1~1_combout\ : std_logic;
SIGNAL \CRC8|crc8bit_out~1_combout\ : std_logic;
SIGNAL \CRC8|crc8bit_out~q\ : std_logic;
SIGNAL \DO|sig_cnt[0]~101_combout\ : std_logic;
SIGNAL \DO|sig_cnt[0]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_cnt[5]~115\ : std_logic;
SIGNAL \DO|sig_cnt[6]~116_combout\ : std_logic;
SIGNAL \DO|sig_cnt[100]~107_combout\ : std_logic;
SIGNAL \DO|sig_cnt[6]~117\ : std_logic;
SIGNAL \DO|sig_cnt[7]~118_combout\ : std_logic;
SIGNAL \DO|sig_cnt[7]~119\ : std_logic;
SIGNAL \DO|sig_cnt[8]~120_combout\ : std_logic;
SIGNAL \DO|sig_cnt[8]~121\ : std_logic;
SIGNAL \DO|sig_cnt[9]~122_combout\ : std_logic;
SIGNAL \DO|sig_cnt[9]~123\ : std_logic;
SIGNAL \DO|sig_cnt[10]~124_combout\ : std_logic;
SIGNAL \DO|sig_cnt[10]~125\ : std_logic;
SIGNAL \DO|sig_cnt[11]~126_combout\ : std_logic;
SIGNAL \DO|sig_cnt[11]~127\ : std_logic;
SIGNAL \DO|sig_cnt[12]~128_combout\ : std_logic;
SIGNAL \DO|sig_cnt[12]~129\ : std_logic;
SIGNAL \DO|sig_cnt[13]~130_combout\ : std_logic;
SIGNAL \DO|sig_cnt[13]~131\ : std_logic;
SIGNAL \DO|sig_cnt[14]~132_combout\ : std_logic;
SIGNAL \DO|sig_cnt[14]~133\ : std_logic;
SIGNAL \DO|sig_cnt[15]~134_combout\ : std_logic;
SIGNAL \DO|sig_cnt[15]~135\ : std_logic;
SIGNAL \DO|sig_cnt[16]~136_combout\ : std_logic;
SIGNAL \DO|sig_cnt[16]~137\ : std_logic;
SIGNAL \DO|sig_cnt[17]~138_combout\ : std_logic;
SIGNAL \DO|sig_cnt[17]~139\ : std_logic;
SIGNAL \DO|sig_cnt[18]~140_combout\ : std_logic;
SIGNAL \DO|sig_cnt[18]~141\ : std_logic;
SIGNAL \DO|sig_cnt[19]~142_combout\ : std_logic;
SIGNAL \DO|sig_cnt[19]~143\ : std_logic;
SIGNAL \DO|sig_cnt[20]~144_combout\ : std_logic;
SIGNAL \DO|sig_cnt[20]~145\ : std_logic;
SIGNAL \DO|sig_cnt[21]~146_combout\ : std_logic;
SIGNAL \DO|sig_cnt[21]~147\ : std_logic;
SIGNAL \DO|sig_cnt[22]~148_combout\ : std_logic;
SIGNAL \DO|sig_cnt[22]~149\ : std_logic;
SIGNAL \DO|sig_cnt[23]~150_combout\ : std_logic;
SIGNAL \DO|sig_cnt[23]~151\ : std_logic;
SIGNAL \DO|sig_cnt[24]~152_combout\ : std_logic;
SIGNAL \DO|sig_cnt[24]~153\ : std_logic;
SIGNAL \DO|sig_cnt[25]~154_combout\ : std_logic;
SIGNAL \DO|sig_cnt[25]~155\ : std_logic;
SIGNAL \DO|sig_cnt[26]~156_combout\ : std_logic;
SIGNAL \DO|sig_cnt[26]~157\ : std_logic;
SIGNAL \DO|sig_cnt[27]~158_combout\ : std_logic;
SIGNAL \DO|sig_cnt[27]~159\ : std_logic;
SIGNAL \DO|sig_cnt[28]~160_combout\ : std_logic;
SIGNAL \DO|sig_cnt[28]~161\ : std_logic;
SIGNAL \DO|sig_cnt[29]~162_combout\ : std_logic;
SIGNAL \DO|sig_cnt[29]~163\ : std_logic;
SIGNAL \DO|sig_cnt[30]~164_combout\ : std_logic;
SIGNAL \DO|sig_cnt[30]~165\ : std_logic;
SIGNAL \DO|sig_cnt[31]~166_combout\ : std_logic;
SIGNAL \DO|sig_cnt[31]~167\ : std_logic;
SIGNAL \DO|sig_cnt[32]~168_combout\ : std_logic;
SIGNAL \DO|sig_cnt[32]~169\ : std_logic;
SIGNAL \DO|sig_cnt[33]~170_combout\ : std_logic;
SIGNAL \DO|sig_cnt[33]~171\ : std_logic;
SIGNAL \DO|sig_cnt[34]~172_combout\ : std_logic;
SIGNAL \DO|sig_cnt[34]~173\ : std_logic;
SIGNAL \DO|sig_cnt[35]~174_combout\ : std_logic;
SIGNAL \DO|sig_cnt[35]~175\ : std_logic;
SIGNAL \DO|sig_cnt[36]~176_combout\ : std_logic;
SIGNAL \DO|Equal0~8_combout\ : std_logic;
SIGNAL \DO|Equal0~6_combout\ : std_logic;
SIGNAL \DO|Equal0~7_combout\ : std_logic;
SIGNAL \DO|Equal0~5_combout\ : std_logic;
SIGNAL \DO|Equal0~9_combout\ : std_logic;
SIGNAL \DO|sig_cnt[36]~177\ : std_logic;
SIGNAL \DO|sig_cnt[37]~178_combout\ : std_logic;
SIGNAL \DO|sig_cnt[37]~179\ : std_logic;
SIGNAL \DO|sig_cnt[38]~180_combout\ : std_logic;
SIGNAL \DO|sig_cnt[38]~181\ : std_logic;
SIGNAL \DO|sig_cnt[39]~182_combout\ : std_logic;
SIGNAL \DO|sig_cnt[39]~183\ : std_logic;
SIGNAL \DO|sig_cnt[40]~184_combout\ : std_logic;
SIGNAL \DO|sig_cnt[40]~185\ : std_logic;
SIGNAL \DO|sig_cnt[41]~186_combout\ : std_logic;
SIGNAL \DO|sig_cnt[41]~187\ : std_logic;
SIGNAL \DO|sig_cnt[42]~188_combout\ : std_logic;
SIGNAL \DO|sig_cnt[42]~189\ : std_logic;
SIGNAL \DO|sig_cnt[43]~190_combout\ : std_logic;
SIGNAL \DO|sig_cnt[43]~191\ : std_logic;
SIGNAL \DO|sig_cnt[44]~192_combout\ : std_logic;
SIGNAL \DO|Equal0~11_combout\ : std_logic;
SIGNAL \DO|Equal0~10_combout\ : std_logic;
SIGNAL \DO|sig_cnt[44]~193\ : std_logic;
SIGNAL \DO|sig_cnt[45]~194_combout\ : std_logic;
SIGNAL \DO|sig_cnt[45]~195\ : std_logic;
SIGNAL \DO|sig_cnt[46]~196_combout\ : std_logic;
SIGNAL \DO|sig_cnt[46]~197\ : std_logic;
SIGNAL \DO|sig_cnt[47]~198_combout\ : std_logic;
SIGNAL \DO|sig_cnt[47]~199\ : std_logic;
SIGNAL \DO|sig_cnt[48]~200_combout\ : std_logic;
SIGNAL \DO|Equal0~12_combout\ : std_logic;
SIGNAL \DO|sig_cnt[48]~201\ : std_logic;
SIGNAL \DO|sig_cnt[49]~202_combout\ : std_logic;
SIGNAL \DO|sig_cnt[49]~203\ : std_logic;
SIGNAL \DO|sig_cnt[50]~204_combout\ : std_logic;
SIGNAL \DO|sig_cnt[50]~205\ : std_logic;
SIGNAL \DO|sig_cnt[51]~206_combout\ : std_logic;
SIGNAL \DO|sig_cnt[51]~207\ : std_logic;
SIGNAL \DO|sig_cnt[52]~208_combout\ : std_logic;
SIGNAL \DO|Equal0~13_combout\ : std_logic;
SIGNAL \DO|Equal0~14_combout\ : std_logic;
SIGNAL \DO|sig_cnt[52]~209\ : std_logic;
SIGNAL \DO|sig_cnt[53]~210_combout\ : std_logic;
SIGNAL \DO|sig_cnt[53]~211\ : std_logic;
SIGNAL \DO|sig_cnt[54]~212_combout\ : std_logic;
SIGNAL \DO|sig_cnt[54]~213\ : std_logic;
SIGNAL \DO|sig_cnt[55]~214_combout\ : std_logic;
SIGNAL \DO|sig_cnt[55]~215\ : std_logic;
SIGNAL \DO|sig_cnt[56]~216_combout\ : std_logic;
SIGNAL \DO|Equal0~15_combout\ : std_logic;
SIGNAL \DO|sig_cnt[56]~217\ : std_logic;
SIGNAL \DO|sig_cnt[57]~218_combout\ : std_logic;
SIGNAL \DO|sig_cnt[57]~219\ : std_logic;
SIGNAL \DO|sig_cnt[58]~220_combout\ : std_logic;
SIGNAL \DO|sig_cnt[58]~221\ : std_logic;
SIGNAL \DO|sig_cnt[59]~222_combout\ : std_logic;
SIGNAL \DO|sig_cnt[59]~223\ : std_logic;
SIGNAL \DO|sig_cnt[60]~224_combout\ : std_logic;
SIGNAL \DO|sig_cnt[60]~225\ : std_logic;
SIGNAL \DO|sig_cnt[61]~226_combout\ : std_logic;
SIGNAL \DO|sig_cnt[61]~227\ : std_logic;
SIGNAL \DO|sig_cnt[62]~228_combout\ : std_logic;
SIGNAL \DO|sig_cnt[62]~229\ : std_logic;
SIGNAL \DO|sig_cnt[63]~230_combout\ : std_logic;
SIGNAL \DO|sig_cnt[63]~231\ : std_logic;
SIGNAL \DO|sig_cnt[64]~232_combout\ : std_logic;
SIGNAL \DO|sig_cnt[64]~233\ : std_logic;
SIGNAL \DO|sig_cnt[65]~234_combout\ : std_logic;
SIGNAL \DO|sig_cnt[65]~235\ : std_logic;
SIGNAL \DO|sig_cnt[66]~236_combout\ : std_logic;
SIGNAL \DO|sig_cnt[66]~237\ : std_logic;
SIGNAL \DO|sig_cnt[67]~238_combout\ : std_logic;
SIGNAL \DO|sig_cnt[67]~239\ : std_logic;
SIGNAL \DO|sig_cnt[68]~240_combout\ : std_logic;
SIGNAL \DO|Equal0~18_combout\ : std_logic;
SIGNAL \DO|Equal0~17_combout\ : std_logic;
SIGNAL \DO|Equal0~16_combout\ : std_logic;
SIGNAL \DO|Equal0~19_combout\ : std_logic;
SIGNAL \DO|Equal0~2_combout\ : std_logic;
SIGNAL \DO|Equal0~1_combout\ : std_logic;
SIGNAL \DO|Equal0~3_combout\ : std_logic;
SIGNAL \DO|Equal0~0_combout\ : std_logic;
SIGNAL \DO|Equal0~4_combout\ : std_logic;
SIGNAL \DO|Equal0~20_combout\ : std_logic;
SIGNAL \DO|sig_cnt[68]~241\ : std_logic;
SIGNAL \DO|sig_cnt[69]~242_combout\ : std_logic;
SIGNAL \DO|sig_cnt[69]~243\ : std_logic;
SIGNAL \DO|sig_cnt[70]~244_combout\ : std_logic;
SIGNAL \DO|sig_cnt[70]~245\ : std_logic;
SIGNAL \DO|sig_cnt[71]~246_combout\ : std_logic;
SIGNAL \DO|sig_cnt[71]~247\ : std_logic;
SIGNAL \DO|sig_cnt[72]~248_combout\ : std_logic;
SIGNAL \DO|Equal0~21_combout\ : std_logic;
SIGNAL \DO|sig_cnt[72]~249\ : std_logic;
SIGNAL \DO|sig_cnt[73]~250_combout\ : std_logic;
SIGNAL \DO|sig_cnt[73]~251\ : std_logic;
SIGNAL \DO|sig_cnt[74]~252_combout\ : std_logic;
SIGNAL \DO|sig_cnt[74]~253\ : std_logic;
SIGNAL \DO|sig_cnt[75]~254_combout\ : std_logic;
SIGNAL \DO|sig_cnt[75]~255\ : std_logic;
SIGNAL \DO|sig_cnt[76]~256_combout\ : std_logic;
SIGNAL \DO|sig_cnt[76]~257\ : std_logic;
SIGNAL \DO|sig_cnt[77]~258_combout\ : std_logic;
SIGNAL \DO|sig_cnt[77]~259\ : std_logic;
SIGNAL \DO|sig_cnt[78]~260_combout\ : std_logic;
SIGNAL \DO|sig_cnt[78]~261\ : std_logic;
SIGNAL \DO|sig_cnt[79]~262_combout\ : std_logic;
SIGNAL \DO|sig_cnt[79]~263\ : std_logic;
SIGNAL \DO|sig_cnt[80]~264_combout\ : std_logic;
SIGNAL \DO|sig_cnt[80]~265\ : std_logic;
SIGNAL \DO|sig_cnt[81]~266_combout\ : std_logic;
SIGNAL \DO|sig_cnt[81]~267\ : std_logic;
SIGNAL \DO|sig_cnt[82]~268_combout\ : std_logic;
SIGNAL \DO|sig_cnt[82]~269\ : std_logic;
SIGNAL \DO|sig_cnt[83]~270_combout\ : std_logic;
SIGNAL \DO|sig_cnt[83]~271\ : std_logic;
SIGNAL \DO|sig_cnt[84]~272_combout\ : std_logic;
SIGNAL \DO|Equal0~24_combout\ : std_logic;
SIGNAL \DO|Equal0~23_combout\ : std_logic;
SIGNAL \DO|Equal0~22_combout\ : std_logic;
SIGNAL \DO|Equal0~25_combout\ : std_logic;
SIGNAL \DO|sig_cnt[84]~273\ : std_logic;
SIGNAL \DO|sig_cnt[85]~274_combout\ : std_logic;
SIGNAL \DO|sig_cnt[85]~275\ : std_logic;
SIGNAL \DO|sig_cnt[86]~276_combout\ : std_logic;
SIGNAL \DO|sig_cnt[86]~277\ : std_logic;
SIGNAL \DO|sig_cnt[87]~278_combout\ : std_logic;
SIGNAL \DO|sig_cnt[87]~279\ : std_logic;
SIGNAL \DO|sig_cnt[88]~280_combout\ : std_logic;
SIGNAL \DO|sig_cnt[88]~281\ : std_logic;
SIGNAL \DO|sig_cnt[89]~282_combout\ : std_logic;
SIGNAL \DO|sig_cnt[89]~283\ : std_logic;
SIGNAL \DO|sig_cnt[90]~284_combout\ : std_logic;
SIGNAL \DO|sig_cnt[90]~285\ : std_logic;
SIGNAL \DO|sig_cnt[91]~286_combout\ : std_logic;
SIGNAL \DO|sig_cnt[91]~287\ : std_logic;
SIGNAL \DO|sig_cnt[92]~288_combout\ : std_logic;
SIGNAL \DO|Equal0~27_combout\ : std_logic;
SIGNAL \DO|sig_cnt[92]~289\ : std_logic;
SIGNAL \DO|sig_cnt[93]~290_combout\ : std_logic;
SIGNAL \DO|sig_cnt[93]~291\ : std_logic;
SIGNAL \DO|sig_cnt[94]~292_combout\ : std_logic;
SIGNAL \DO|sig_cnt[94]~293\ : std_logic;
SIGNAL \DO|sig_cnt[95]~294_combout\ : std_logic;
SIGNAL \DO|sig_cnt[95]~295\ : std_logic;
SIGNAL \DO|sig_cnt[96]~296_combout\ : std_logic;
SIGNAL \DO|Equal0~28_combout\ : std_logic;
SIGNAL \DO|sig_cnt[96]~297\ : std_logic;
SIGNAL \DO|sig_cnt[97]~298_combout\ : std_logic;
SIGNAL \DO|sig_cnt[97]~299\ : std_logic;
SIGNAL \DO|sig_cnt[98]~300_combout\ : std_logic;
SIGNAL \DO|sig_cnt[98]~301\ : std_logic;
SIGNAL \DO|sig_cnt[99]~302_combout\ : std_logic;
SIGNAL \DO|sig_cnt[99]~303\ : std_logic;
SIGNAL \DO|sig_cnt[100]~304_combout\ : std_logic;
SIGNAL \DO|Equal0~29_combout\ : std_logic;
SIGNAL \DO|Equal0~26_combout\ : std_logic;
SIGNAL \DO|Equal0~30_combout\ : std_logic;
SIGNAL \DO|Equal0~31_combout\ : std_logic;
SIGNAL \DO|Equal0~32_combout\ : std_logic;
SIGNAL \DO|Equal2~0_combout\ : std_logic;
SIGNAL \DO|sig_cnt[20]~105_combout\ : std_logic;
SIGNAL \DO|Equal0~33_combout\ : std_logic;
SIGNAL \DO|sig_cnt[20]~106_combout\ : std_logic;
SIGNAL \DO|sig_cnt[0]~102\ : std_logic;
SIGNAL \DO|sig_cnt[1]~103_combout\ : std_logic;
SIGNAL \DO|sig_cnt[1]~104\ : std_logic;
SIGNAL \DO|sig_cnt[2]~108_combout\ : std_logic;
SIGNAL \DO|sig_cnt[2]~109\ : std_logic;
SIGNAL \DO|sig_cnt[3]~110_combout\ : std_logic;
SIGNAL \DO|sig_cnt[3]~111\ : std_logic;
SIGNAL \DO|sig_cnt[4]~112_combout\ : std_logic;
SIGNAL \DO|sig_cnt[4]~113\ : std_logic;
SIGNAL \DO|sig_cnt[5]~114_combout\ : std_logic;
SIGNAL \DO|Equal1~0_combout\ : std_logic;
SIGNAL \DO|Equal1~1_combout\ : std_logic;
SIGNAL \DO|state_Do~27_combout\ : std_logic;
SIGNAL \DO|state_Do~26_combout\ : std_logic;
SIGNAL \DO|state_Do~28_combout\ : std_logic;
SIGNAL \DO|state_Do.s2~q\ : std_logic;
SIGNAL \DO|state_Do.s3~q\ : std_logic;
SIGNAL \DO|state_Do.s4~q\ : std_logic;
SIGNAL \DO|Selector5~0_combout\ : std_logic;
SIGNAL \DO|state_Do.s5~q\ : std_logic;
SIGNAL \DO|state_Do.s5a~feeder_combout\ : std_logic;
SIGNAL \DO|state_Do.s5a~q\ : std_logic;
SIGNAL \DO|Selector7~0_combout\ : std_logic;
SIGNAL \DO|state_Do.s6~q\ : std_logic;
SIGNAL \DO|state_Do.s7~q\ : std_logic;
SIGNAL \DO|state_Do.s8~feeder_combout\ : std_logic;
SIGNAL \DO|state_Do.s8~q\ : std_logic;
SIGNAL \DO|Selector10~0_combout\ : std_logic;
SIGNAL \DO|state_Do.s9~q\ : std_logic;
SIGNAL \DO|Selector0~0_combout\ : std_logic;
SIGNAL \DO|state_Do.s0~q\ : std_logic;
SIGNAL \DO|state_Do.s1~0_combout\ : std_logic;
SIGNAL \DO|state_Do.s1~q\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[95]~0_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[1]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[2]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[5]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[6]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[8]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[9]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[12]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[14]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[15]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[16]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[17]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[18]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[19]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[21]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[25]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[26]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[28]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[30]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[33]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[34]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[36]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[39]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[41]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[42]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[43]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[46]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[47]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[48]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[51]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[54]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[56]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[58]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[59]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[60]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[61]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[62]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[63]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[67]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[71]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[72]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[74]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[75]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[78]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[79]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[80]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[81]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[82]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[84]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[85]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[86]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[89]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[90]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[92]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_rgb_leds_out[93]~feeder_combout\ : std_logic;
SIGNAL \DO|green_leds[0]~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[92]~feeder_combout\ : std_logic;
SIGNAL \DO|rgb_leds[91]~feeder_combout\ : std_logic;
SIGNAL \DO|rgb_leds[88]~feeder_combout\ : std_logic;
SIGNAL \DO|rgb_leds[84]~feeder_combout\ : std_logic;
SIGNAL \DO|rgb_leds[83]~feeder_combout\ : std_logic;
SIGNAL \DO|rgb_leds[79]~feeder_combout\ : std_logic;
SIGNAL \DO|rgb_leds[75]~feeder_combout\ : std_logic;
SIGNAL \DO|rgb_leds[74]~feeder_combout\ : std_logic;
SIGNAL \DO|rgb_leds[72]~feeder_combout\ : std_logic;
SIGNAL \DO|rgb_leds[70]~feeder_combout\ : std_logic;
SIGNAL \DO|rgb_leds[65]~feeder_combout\ : std_logic;
SIGNAL \DO|rgb_leds[63]~feeder_combout\ : std_logic;
SIGNAL \DO|rgb_leds[57]~feeder_combout\ : std_logic;
SIGNAL \DO|rgb_leds[49]~feeder_combout\ : std_logic;
SIGNAL \DO|rgb_leds[45]~feeder_combout\ : std_logic;
SIGNAL \DO|rgb_leds[39]~feeder_combout\ : std_logic;
SIGNAL \DO|rgb_leds[32]~feeder_combout\ : std_logic;
SIGNAL \DO|rgb_leds[31]~feeder_combout\ : std_logic;
SIGNAL \DO|rgb_leds[30]~feeder_combout\ : std_logic;
SIGNAL \DO|rgb_leds[26]~feeder_combout\ : std_logic;
SIGNAL \DO|rgb_leds[22]~feeder_combout\ : std_logic;
SIGNAL \DO|rgb_leds[11]~feeder_combout\ : std_logic;
SIGNAL \DO|rgb_leds[4]~feeder_combout\ : std_logic;
SIGNAL \DO|Selector112~0_combout\ : std_logic;
SIGNAL \DO|load_leds~q\ : std_logic;
SIGNAL \RGB_Leds|sig_cnt_delay~8_combout\ : std_logic;
SIGNAL \RGB_Leds|set_leds:sig_cnt_delay[11]~q\ : std_logic;
SIGNAL \RGB_Leds|Add0~0_combout\ : std_logic;
SIGNAL \RGB_Leds|set_leds:sig_cnt_delay[0]~q\ : std_logic;
SIGNAL \RGB_Leds|Add0~1\ : std_logic;
SIGNAL \RGB_Leds|Add0~2_combout\ : std_logic;
SIGNAL \RGB_Leds|set_leds:sig_cnt_delay[1]~q\ : std_logic;
SIGNAL \RGB_Leds|Add0~3\ : std_logic;
SIGNAL \RGB_Leds|Add0~4_combout\ : std_logic;
SIGNAL \RGB_Leds|set_leds:sig_cnt_delay[2]~q\ : std_logic;
SIGNAL \RGB_Leds|Add0~5\ : std_logic;
SIGNAL \RGB_Leds|Add0~6_combout\ : std_logic;
SIGNAL \RGB_Leds|sig_cnt_delay~5_combout\ : std_logic;
SIGNAL \RGB_Leds|set_leds:sig_cnt_delay[3]~q\ : std_logic;
SIGNAL \RGB_Leds|Add0~7\ : std_logic;
SIGNAL \RGB_Leds|Add0~8_combout\ : std_logic;
SIGNAL \RGB_Leds|sig_cnt_delay~4_combout\ : std_logic;
SIGNAL \RGB_Leds|set_leds:sig_cnt_delay[4]~q\ : std_logic;
SIGNAL \RGB_Leds|Add0~9\ : std_logic;
SIGNAL \RGB_Leds|Add0~10_combout\ : std_logic;
SIGNAL \RGB_Leds|set_leds:sig_cnt_delay[5]~q\ : std_logic;
SIGNAL \RGB_Leds|Add0~11\ : std_logic;
SIGNAL \RGB_Leds|Add0~12_combout\ : std_logic;
SIGNAL \RGB_Leds|set_leds:sig_cnt_delay[6]~q\ : std_logic;
SIGNAL \RGB_Leds|Add0~13\ : std_logic;
SIGNAL \RGB_Leds|Add0~14_combout\ : std_logic;
SIGNAL \RGB_Leds|sig_cnt_delay~6_combout\ : std_logic;
SIGNAL \RGB_Leds|set_leds:sig_cnt_delay[7]~q\ : std_logic;
SIGNAL \RGB_Leds|Add0~15\ : std_logic;
SIGNAL \RGB_Leds|Add0~17\ : std_logic;
SIGNAL \RGB_Leds|Add0~18_combout\ : std_logic;
SIGNAL \RGB_Leds|sig_cnt_delay~7_combout\ : std_logic;
SIGNAL \RGB_Leds|set_leds:sig_cnt_delay[9]~q\ : std_logic;
SIGNAL \RGB_Leds|Add0~19\ : std_logic;
SIGNAL \RGB_Leds|Add0~20_combout\ : std_logic;
SIGNAL \RGB_Leds|set_leds:sig_cnt_delay[10]~q\ : std_logic;
SIGNAL \RGB_Leds|Add0~21\ : std_logic;
SIGNAL \RGB_Leds|Add0~22_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal0~3_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal0~4_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal0~5_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal0~6_combout\ : std_logic;
SIGNAL \RGB_Leds|set_leds:sig_cnt_delay[14]~q\ : std_logic;
SIGNAL \RGB_Leds|Add0~23\ : std_logic;
SIGNAL \RGB_Leds|Add0~25\ : std_logic;
SIGNAL \RGB_Leds|Add0~26_combout\ : std_logic;
SIGNAL \RGB_Leds|sig_cnt_delay~9_combout\ : std_logic;
SIGNAL \RGB_Leds|set_leds:sig_cnt_delay[12]~q\ : std_logic;
SIGNAL \RGB_Leds|Add0~24_combout\ : std_logic;
SIGNAL \RGB_Leds|sig_cnt_delay~10_combout\ : std_logic;
SIGNAL \RGB_Leds|set_leds:sig_cnt_delay[13]~q\ : std_logic;
SIGNAL \RGB_Leds|Add0~27\ : std_logic;
SIGNAL \RGB_Leds|Add0~28_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal0~7_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector1~0_combout\ : std_logic;
SIGNAL \RGB_Leds|state_leds.s0~q\ : std_logic;
SIGNAL \RGB_Leds|set_leds:sig_cnt_delay[8]~q\ : std_logic;
SIGNAL \RGB_Leds|Add0~16_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal0~1_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal0~2_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal0~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector3~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector2~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector2~1_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector2~2_combout\ : std_logic;
SIGNAL \RGB_Leds|state_leds.s1~q\ : std_logic;
SIGNAL \RGB_Leds|sig_shift_led_rgb[84]~0_combout\ : std_logic;
SIGNAL \RGB_Leds|LED_1~1_combout\ : std_logic;
SIGNAL \DO|rgb_leds[0]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector107~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector106~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[2]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector105~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[3]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector104~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector103~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector102~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector101~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[7]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector100~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[8]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector99~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector98~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector97~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector96~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector95~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector94~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector93~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[15]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector92~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[16]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector91~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[17]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector90~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[18]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector89~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[19]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector88~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[20]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector87~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector86~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector85~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[23]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector84~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector83~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector82~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector81~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[27]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector80~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[28]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector79~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector78~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector77~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector76~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector75~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[33]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector74~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector73~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[35]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector72~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector71~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[37]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector70~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector69~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector68~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[40]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector67~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector66~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[42]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector65~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector64~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[44]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector63~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector62~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[46]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector61~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector60~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[48]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector59~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector58~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[50]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector57~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector56~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector55~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector54~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector53~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[55]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector52~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[56]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector51~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector50~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[58]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector49~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector48~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector47~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[61]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector46~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[62]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector45~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector44~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[64]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector43~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector42~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[66]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector41~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[67]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector40~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector39~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector38~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector37~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[71]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector36~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector35~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[73]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector34~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector33~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector32~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[76]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector31~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector30~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[78]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector29~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector28~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector27~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[81]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector26~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector25~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector24~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector23~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector22~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[86]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector21~0_combout\ : std_logic;
SIGNAL \RGB_Leds|sig_shift_led_rgb[86]~feeder_combout\ : std_logic;
SIGNAL \DO|rgb_leds[87]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector20~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector19~0_combout\ : std_logic;
SIGNAL \RGB_Leds|sig_shift_led_rgb[88]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector18~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[90]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector17~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector16~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector15~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector14~0_combout\ : std_logic;
SIGNAL \DO|rgb_leds[94]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector13~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector12~0_combout\ : std_logic;
SIGNAL \RGB_Leds|sig_bit~0_combout\ : std_logic;
SIGNAL \RGB_Leds|sig_bit~q\ : std_logic;
SIGNAL \RGB_Leds|Selector9~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector207~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~1\ : std_logic;
SIGNAL \RGB_Leds|Add2~2_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector206~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~3\ : std_logic;
SIGNAL \RGB_Leds|Add2~4_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~5\ : std_logic;
SIGNAL \RGB_Leds|Add2~6_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~7\ : std_logic;
SIGNAL \RGB_Leds|Add2~8_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector203~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~9\ : std_logic;
SIGNAL \RGB_Leds|Add2~10_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector202~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~11\ : std_logic;
SIGNAL \RGB_Leds|Add2~12_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~13\ : std_logic;
SIGNAL \RGB_Leds|Add2~14_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~15\ : std_logic;
SIGNAL \RGB_Leds|Add2~16_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~17\ : std_logic;
SIGNAL \RGB_Leds|Add2~18_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~19\ : std_logic;
SIGNAL \RGB_Leds|Add2~20_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~21\ : std_logic;
SIGNAL \RGB_Leds|Add2~22_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~23\ : std_logic;
SIGNAL \RGB_Leds|Add2~24_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~25\ : std_logic;
SIGNAL \RGB_Leds|Add2~26_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~27\ : std_logic;
SIGNAL \RGB_Leds|Add2~28_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~29\ : std_logic;
SIGNAL \RGB_Leds|Add2~30_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~31\ : std_logic;
SIGNAL \RGB_Leds|Add2~32_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~33\ : std_logic;
SIGNAL \RGB_Leds|Add2~34_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~35\ : std_logic;
SIGNAL \RGB_Leds|Add2~36_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~37\ : std_logic;
SIGNAL \RGB_Leds|Add2~38_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~39\ : std_logic;
SIGNAL \RGB_Leds|Add2~40_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~41\ : std_logic;
SIGNAL \RGB_Leds|Add2~42_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~43\ : std_logic;
SIGNAL \RGB_Leds|Add2~44_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~45\ : std_logic;
SIGNAL \RGB_Leds|Add2~46_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~47\ : std_logic;
SIGNAL \RGB_Leds|Add2~48_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~49\ : std_logic;
SIGNAL \RGB_Leds|Add2~50_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~51\ : std_logic;
SIGNAL \RGB_Leds|Add2~52_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~53\ : std_logic;
SIGNAL \RGB_Leds|Add2~54_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~55\ : std_logic;
SIGNAL \RGB_Leds|Add2~56_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~57\ : std_logic;
SIGNAL \RGB_Leds|Add2~58_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~59\ : std_logic;
SIGNAL \RGB_Leds|Add2~60_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~61\ : std_logic;
SIGNAL \RGB_Leds|Add2~62_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~63\ : std_logic;
SIGNAL \RGB_Leds|Add2~64_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~65\ : std_logic;
SIGNAL \RGB_Leds|Add2~66_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~67\ : std_logic;
SIGNAL \RGB_Leds|Add2~68_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~69\ : std_logic;
SIGNAL \RGB_Leds|Add2~70_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~71\ : std_logic;
SIGNAL \RGB_Leds|Add2~72_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~73\ : std_logic;
SIGNAL \RGB_Leds|Add2~74_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~75\ : std_logic;
SIGNAL \RGB_Leds|Add2~76_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~77\ : std_logic;
SIGNAL \RGB_Leds|Add2~78_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~79\ : std_logic;
SIGNAL \RGB_Leds|Add2~80_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~81\ : std_logic;
SIGNAL \RGB_Leds|Add2~82_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~83\ : std_logic;
SIGNAL \RGB_Leds|Add2~84_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~85\ : std_logic;
SIGNAL \RGB_Leds|Add2~86_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~87\ : std_logic;
SIGNAL \RGB_Leds|Add2~88_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~89\ : std_logic;
SIGNAL \RGB_Leds|Add2~90_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~91\ : std_logic;
SIGNAL \RGB_Leds|Add2~92_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~93\ : std_logic;
SIGNAL \RGB_Leds|Add2~94_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~95\ : std_logic;
SIGNAL \RGB_Leds|Add2~96_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~97\ : std_logic;
SIGNAL \RGB_Leds|Add2~98_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~99\ : std_logic;
SIGNAL \RGB_Leds|Add2~100_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~101\ : std_logic;
SIGNAL \RGB_Leds|Add2~102_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~103\ : std_logic;
SIGNAL \RGB_Leds|Add2~104_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~105\ : std_logic;
SIGNAL \RGB_Leds|Add2~106_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~107\ : std_logic;
SIGNAL \RGB_Leds|Add2~108_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~109\ : std_logic;
SIGNAL \RGB_Leds|Add2~110_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~111\ : std_logic;
SIGNAL \RGB_Leds|Add2~112_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~113\ : std_logic;
SIGNAL \RGB_Leds|Add2~114_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~115\ : std_logic;
SIGNAL \RGB_Leds|Add2~116_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~117\ : std_logic;
SIGNAL \RGB_Leds|Add2~118_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~119\ : std_logic;
SIGNAL \RGB_Leds|Add2~120_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~121\ : std_logic;
SIGNAL \RGB_Leds|Add2~122_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~123\ : std_logic;
SIGNAL \RGB_Leds|Add2~124_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~125\ : std_logic;
SIGNAL \RGB_Leds|Add2~126_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal2~12_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal2~13_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal2~14_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~127\ : std_logic;
SIGNAL \RGB_Leds|Add2~128_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~129\ : std_logic;
SIGNAL \RGB_Leds|Add2~130_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~131\ : std_logic;
SIGNAL \RGB_Leds|Add2~132_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~133\ : std_logic;
SIGNAL \RGB_Leds|Add2~134_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal2~11_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal2~15_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal2~18_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal2~17_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal2~16_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal2~19_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal2~20_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~135\ : std_logic;
SIGNAL \RGB_Leds|Add2~136_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~137\ : std_logic;
SIGNAL \RGB_Leds|Add2~138_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~139\ : std_logic;
SIGNAL \RGB_Leds|Add2~140_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~141\ : std_logic;
SIGNAL \RGB_Leds|Add2~142_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~143\ : std_logic;
SIGNAL \RGB_Leds|Add2~144_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~145\ : std_logic;
SIGNAL \RGB_Leds|Add2~146_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~147\ : std_logic;
SIGNAL \RGB_Leds|Add2~148_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~149\ : std_logic;
SIGNAL \RGB_Leds|Add2~150_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal2~8_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~151\ : std_logic;
SIGNAL \RGB_Leds|Add2~152_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~153\ : std_logic;
SIGNAL \RGB_Leds|Add2~154_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~155\ : std_logic;
SIGNAL \RGB_Leds|Add2~156_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~157\ : std_logic;
SIGNAL \RGB_Leds|Add2~158_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~159\ : std_logic;
SIGNAL \RGB_Leds|Add2~160_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~161\ : std_logic;
SIGNAL \RGB_Leds|Add2~162_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~163\ : std_logic;
SIGNAL \RGB_Leds|Add2~164_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~165\ : std_logic;
SIGNAL \RGB_Leds|Add2~166_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal2~6_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal2~7_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal2~9_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal2~10_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~167\ : std_logic;
SIGNAL \RGB_Leds|Add2~168_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~169\ : std_logic;
SIGNAL \RGB_Leds|Add2~170_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~171\ : std_logic;
SIGNAL \RGB_Leds|Add2~172_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~173\ : std_logic;
SIGNAL \RGB_Leds|Add2~174_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal2~4_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~175\ : std_logic;
SIGNAL \RGB_Leds|Add2~176_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~177\ : std_logic;
SIGNAL \RGB_Leds|Add2~178_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~179\ : std_logic;
SIGNAL \RGB_Leds|Add2~180_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~181\ : std_logic;
SIGNAL \RGB_Leds|Add2~182_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal2~3_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~183\ : std_logic;
SIGNAL \RGB_Leds|Add2~184_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~185\ : std_logic;
SIGNAL \RGB_Leds|Add2~186_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~187\ : std_logic;
SIGNAL \RGB_Leds|Add2~188_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~189\ : std_logic;
SIGNAL \RGB_Leds|Add2~190_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal2~2_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~191\ : std_logic;
SIGNAL \RGB_Leds|Add2~192_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~193\ : std_logic;
SIGNAL \RGB_Leds|Add2~194_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~195\ : std_logic;
SIGNAL \RGB_Leds|Add2~196_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector109~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Add2~197\ : std_logic;
SIGNAL \RGB_Leds|Add2~198_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector108~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal2~1_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal2~5_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal2~21_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal2~27_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal2~28_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal2~29_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal2~30_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal2~23_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal2~22_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal2~25_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal2~24_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal2~26_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal2~31_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal3~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal3~1_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector11~3_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector11~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector11~1_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector8~1_combout\ : std_logic;
SIGNAL \RGB_Leds|state_leds.s7~q\ : std_logic;
SIGNAL \RGB_Leds|Selector8~0_combout\ : std_logic;
SIGNAL \RGB_Leds|state_leds.s6~q\ : std_logic;
SIGNAL \RGB_Leds|Selector11~2_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector11~4_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector3~1_combout\ : std_logic;
SIGNAL \RGB_Leds|state_leds.s2~q\ : std_logic;
SIGNAL \RGB_Leds|state_leds.s3~q\ : std_logic;
SIGNAL \RGB_Leds|state_leds.s4~q\ : std_logic;
SIGNAL \RGB_Leds|Add1~1\ : std_logic;
SIGNAL \RGB_Leds|Add1~2_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~3\ : std_logic;
SIGNAL \RGB_Leds|Add1~4_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~5\ : std_logic;
SIGNAL \RGB_Leds|Add1~6_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~7\ : std_logic;
SIGNAL \RGB_Leds|Add1~8_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~9\ : std_logic;
SIGNAL \RGB_Leds|Add1~10_combout\ : std_logic;
SIGNAL \RGB_Leds|sig_cnt_loop~4_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~11\ : std_logic;
SIGNAL \RGB_Leds|Add1~12_combout\ : std_logic;
SIGNAL \RGB_Leds|sig_cnt_loop~3_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~13\ : std_logic;
SIGNAL \RGB_Leds|Add1~14_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~15\ : std_logic;
SIGNAL \RGB_Leds|Add1~16_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~17\ : std_logic;
SIGNAL \RGB_Leds|Add1~18_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~19\ : std_logic;
SIGNAL \RGB_Leds|Add1~20_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~21\ : std_logic;
SIGNAL \RGB_Leds|Add1~22_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~29_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~23\ : std_logic;
SIGNAL \RGB_Leds|Add1~24_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~25\ : std_logic;
SIGNAL \RGB_Leds|Add1~26_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~27\ : std_logic;
SIGNAL \RGB_Leds|Add1~28_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~29\ : std_logic;
SIGNAL \RGB_Leds|Add1~30_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~28_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~30_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~31\ : std_logic;
SIGNAL \RGB_Leds|Add1~32_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~33\ : std_logic;
SIGNAL \RGB_Leds|Add1~34_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~35\ : std_logic;
SIGNAL \RGB_Leds|Add1~36_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~37\ : std_logic;
SIGNAL \RGB_Leds|Add1~38_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~27_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~31_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~26_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~39\ : std_logic;
SIGNAL \RGB_Leds|Add1~40_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~41\ : std_logic;
SIGNAL \RGB_Leds|Add1~42_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~43\ : std_logic;
SIGNAL \RGB_Leds|Add1~44_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~45\ : std_logic;
SIGNAL \RGB_Leds|Add1~46_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~47\ : std_logic;
SIGNAL \RGB_Leds|Add1~48_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~49\ : std_logic;
SIGNAL \RGB_Leds|Add1~50_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~51\ : std_logic;
SIGNAL \RGB_Leds|Add1~52_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~53\ : std_logic;
SIGNAL \RGB_Leds|Add1~54_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~55\ : std_logic;
SIGNAL \RGB_Leds|Add1~56_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~57\ : std_logic;
SIGNAL \RGB_Leds|Add1~58_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~59\ : std_logic;
SIGNAL \RGB_Leds|Add1~60_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~61\ : std_logic;
SIGNAL \RGB_Leds|Add1~62_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~63\ : std_logic;
SIGNAL \RGB_Leds|Add1~64_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~65\ : std_logic;
SIGNAL \RGB_Leds|Add1~66_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~67\ : std_logic;
SIGNAL \RGB_Leds|Add1~68_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~69\ : std_logic;
SIGNAL \RGB_Leds|Add1~70_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~71\ : std_logic;
SIGNAL \RGB_Leds|Add1~72_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~73\ : std_logic;
SIGNAL \RGB_Leds|Add1~74_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~75\ : std_logic;
SIGNAL \RGB_Leds|Add1~76_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~77\ : std_logic;
SIGNAL \RGB_Leds|Add1~78_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~79\ : std_logic;
SIGNAL \RGB_Leds|Add1~80_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~81\ : std_logic;
SIGNAL \RGB_Leds|Add1~82_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~83\ : std_logic;
SIGNAL \RGB_Leds|Add1~84_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~85\ : std_logic;
SIGNAL \RGB_Leds|Add1~86_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~87\ : std_logic;
SIGNAL \RGB_Leds|Add1~88_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~89\ : std_logic;
SIGNAL \RGB_Leds|Add1~90_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~91\ : std_logic;
SIGNAL \RGB_Leds|Add1~92_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~93\ : std_logic;
SIGNAL \RGB_Leds|Add1~94_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~95\ : std_logic;
SIGNAL \RGB_Leds|Add1~96_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~97\ : std_logic;
SIGNAL \RGB_Leds|Add1~98_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~99\ : std_logic;
SIGNAL \RGB_Leds|Add1~100_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~101\ : std_logic;
SIGNAL \RGB_Leds|Add1~102_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~103\ : std_logic;
SIGNAL \RGB_Leds|Add1~104_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~105\ : std_logic;
SIGNAL \RGB_Leds|Add1~106_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~107\ : std_logic;
SIGNAL \RGB_Leds|Add1~108_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~109\ : std_logic;
SIGNAL \RGB_Leds|Add1~110_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~111\ : std_logic;
SIGNAL \RGB_Leds|Add1~112_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~113\ : std_logic;
SIGNAL \RGB_Leds|Add1~114_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~115\ : std_logic;
SIGNAL \RGB_Leds|Add1~116_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~117\ : std_logic;
SIGNAL \RGB_Leds|Add1~118_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~119\ : std_logic;
SIGNAL \RGB_Leds|Add1~120_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~121\ : std_logic;
SIGNAL \RGB_Leds|Add1~122_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~123\ : std_logic;
SIGNAL \RGB_Leds|Add1~124_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~125\ : std_logic;
SIGNAL \RGB_Leds|Add1~126_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~127\ : std_logic;
SIGNAL \RGB_Leds|Add1~128_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~129\ : std_logic;
SIGNAL \RGB_Leds|Add1~130_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~131\ : std_logic;
SIGNAL \RGB_Leds|Add1~132_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~133\ : std_logic;
SIGNAL \RGB_Leds|Add1~134_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~135\ : std_logic;
SIGNAL \RGB_Leds|Add1~136_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~137\ : std_logic;
SIGNAL \RGB_Leds|Add1~138_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~139\ : std_logic;
SIGNAL \RGB_Leds|Add1~140_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~141\ : std_logic;
SIGNAL \RGB_Leds|Add1~142_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~143\ : std_logic;
SIGNAL \RGB_Leds|Add1~144_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~145\ : std_logic;
SIGNAL \RGB_Leds|Add1~146_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~147\ : std_logic;
SIGNAL \RGB_Leds|Add1~148_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~149\ : std_logic;
SIGNAL \RGB_Leds|Add1~150_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~151\ : std_logic;
SIGNAL \RGB_Leds|Add1~152_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~153\ : std_logic;
SIGNAL \RGB_Leds|Add1~154_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~155\ : std_logic;
SIGNAL \RGB_Leds|Add1~156_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~157\ : std_logic;
SIGNAL \RGB_Leds|Add1~158_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~159\ : std_logic;
SIGNAL \RGB_Leds|Add1~160_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~161\ : std_logic;
SIGNAL \RGB_Leds|Add1~162_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~163\ : std_logic;
SIGNAL \RGB_Leds|Add1~164_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~165\ : std_logic;
SIGNAL \RGB_Leds|Add1~166_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~167\ : std_logic;
SIGNAL \RGB_Leds|Add1~168_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~169\ : std_logic;
SIGNAL \RGB_Leds|Add1~170_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~171\ : std_logic;
SIGNAL \RGB_Leds|Add1~172_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~173\ : std_logic;
SIGNAL \RGB_Leds|Add1~174_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~175\ : std_logic;
SIGNAL \RGB_Leds|Add1~176_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~177\ : std_logic;
SIGNAL \RGB_Leds|Add1~178_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~179\ : std_logic;
SIGNAL \RGB_Leds|Add1~180_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~181\ : std_logic;
SIGNAL \RGB_Leds|Add1~182_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~2_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~183\ : std_logic;
SIGNAL \RGB_Leds|Add1~184_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~185\ : std_logic;
SIGNAL \RGB_Leds|Add1~186_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~187\ : std_logic;
SIGNAL \RGB_Leds|Add1~188_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~189\ : std_logic;
SIGNAL \RGB_Leds|Add1~190_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~191\ : std_logic;
SIGNAL \RGB_Leds|Add1~192_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~193\ : std_logic;
SIGNAL \RGB_Leds|Add1~194_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~195\ : std_logic;
SIGNAL \RGB_Leds|Add1~196_combout\ : std_logic;
SIGNAL \RGB_Leds|sig_cnt_loop~1_combout\ : std_logic;
SIGNAL \RGB_Leds|Add1~197\ : std_logic;
SIGNAL \RGB_Leds|Add1~198_combout\ : std_logic;
SIGNAL \RGB_Leds|sig_cnt_loop~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~1_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~3_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~4_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~16_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~18_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~15_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~17_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~19_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~12_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~13_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~11_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~10_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~14_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~6_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~7_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~5_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~8_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~9_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~20_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~22_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~23_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~21_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~24_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~25_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal1~32_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector6~0_combout\ : std_logic;
SIGNAL \RGB_Leds|state_leds.s5~q\ : std_logic;
SIGNAL \RGB_Leds|Equal4~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector0~1_combout\ : std_logic;
SIGNAL \RGB_Leds|Equal2~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector0~0_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector0~2_combout\ : std_logic;
SIGNAL \RGB_Leds|Selector0~3_combout\ : std_logic;
SIGNAL \RGB_Leds|sig_OB_LED_RGB_DIN~q\ : std_logic;
SIGNAL \RGB_Leds|OB_LED_RGB_DIN~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|OB_LED_RGB_DIN~q\ : std_logic;
SIGNAL \DO|sig_green_leds_reg[0]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_green_leds_reg[0]~0_combout\ : std_logic;
SIGNAL \DO|sig_green_leds_out[0]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_green_leds_out[0]~0_combout\ : std_logic;
SIGNAL \DO|green_leds[0]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|LED_1~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|LED_1~0_combout\ : std_logic;
SIGNAL \RGB_Leds|LED_1~q\ : std_logic;
SIGNAL \DO|sig_green_leds_reg[1]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_green_leds_out[1]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|LED_2~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|LED_2~q\ : std_logic;
SIGNAL \DO|sig_green_leds_reg[2]~feeder_combout\ : std_logic;
SIGNAL \DO|sig_green_leds_out[2]~feeder_combout\ : std_logic;
SIGNAL \DO|green_leds[2]~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|LED_3~feeder_combout\ : std_logic;
SIGNAL \RGB_Leds|LED_3~q\ : std_logic;
SIGNAL \Simple|cnt_clk\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \DO|green_leds\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RGB_Leds|sig_cnt\ : std_logic_vector(99 DOWNTO 0);
SIGNAL \CRC8|sig_correlation\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \DO|sig_cnt\ : std_logic_vector(100 DOWNTO 0);
SIGNAL \RGB_Leds|sig_shift_led_rgb\ : std_logic_vector(95 DOWNTO 0);
SIGNAL \DO|sig_green_leds_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DO|rgb_leds\ : std_logic_vector(95 DOWNTO 0);
SIGNAL \RGB_Leds|sig_cnt_loop\ : std_logic_vector(99 DOWNTO 0);
SIGNAL \DO|sig_green_leds_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CRC8|crc_reg8bit\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CRC8|sig_sf_reg\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \DO|sig_rgb_leds_out\ : std_logic_vector(95 DOWNTO 0);
SIGNAL \Filter|sig_filter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RGB_Leds|ALT_INV_state_leds.s0~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_resetn <= resetn;
ww_sysclk <= sysclk;
ww_BiPhase_rx_in <= BiPhase_rx_in;
OB_LED_RGB_Din <= ww_OB_LED_RGB_Din;
LED_1 <= ww_LED_1;
LED_2 <= ww_LED_2;
LED_3 <= ww_LED_3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\sysclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sysclk~input_o\);
\RGB_Leds|ALT_INV_state_leds.s0~q\ <= NOT \RGB_Leds|state_leds.s0~q\;
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
\OB_LED_RGB_Din~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RGB_Leds|OB_LED_RGB_DIN~q\,
	devoe => ww_devoe,
	o => \OB_LED_RGB_Din~output_o\);

-- Location: IOOBUF_X51_Y0_N23
\LED_1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RGB_Leds|LED_1~q\,
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
	i => \RGB_Leds|LED_2~q\,
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
	i => \RGB_Leds|LED_3~q\,
	devoe => ww_devoe,
	o => \LED_3~output_o\);

-- Location: IOIBUF_X34_Y0_N29
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

-- Location: CLKCTRL_G19
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

-- Location: LCCOMB_X38_Y8_N12
\RGB_Leds|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~0_combout\ = \RGB_Leds|sig_cnt_loop\(0) $ (VCC)
-- \RGB_Leds|Add1~1\ = CARRY(\RGB_Leds|sig_cnt_loop\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(0),
	datad => VCC,
	combout => \RGB_Leds|Add1~0_combout\,
	cout => \RGB_Leds|Add1~1\);

-- Location: LCCOMB_X38_Y8_N0
\RGB_Leds|sig_cnt_loop~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|sig_cnt_loop~2_combout\ = (!\RGB_Leds|Equal1~32_combout\ & \RGB_Leds|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RGB_Leds|Equal1~32_combout\,
	datad => \RGB_Leds|Add1~0_combout\,
	combout => \RGB_Leds|sig_cnt_loop~2_combout\);

-- Location: IOIBUF_X34_Y0_N15
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

-- Location: LCCOMB_X34_Y9_N2
\Simple|cnt_clk[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Simple|cnt_clk[0]~14_combout\ = \Simple|cnt_clk\(0) $ (VCC)
-- \Simple|cnt_clk[0]~15\ = CARRY(\Simple|cnt_clk\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Simple|cnt_clk\(0),
	datad => VCC,
	combout => \Simple|cnt_clk[0]~14_combout\,
	cout => \Simple|cnt_clk[0]~15\);

-- Location: LCCOMB_X35_Y9_N0
\Simple|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Simple|Equal0~2_combout\ = (!\Simple|cnt_clk\(8) & (!\Simple|cnt_clk\(9) & (!\Simple|cnt_clk\(11) & !\Simple|cnt_clk\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Simple|cnt_clk\(8),
	datab => \Simple|cnt_clk\(9),
	datac => \Simple|cnt_clk\(11),
	datad => \Simple|cnt_clk\(10),
	combout => \Simple|Equal0~2_combout\);

-- Location: LCCOMB_X34_Y9_N30
\Simple|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Simple|Equal0~1_combout\ = (!\Simple|cnt_clk\(5) & (!\Simple|cnt_clk\(7) & (!\Simple|cnt_clk\(6) & !\Simple|cnt_clk\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Simple|cnt_clk\(5),
	datab => \Simple|cnt_clk\(7),
	datac => \Simple|cnt_clk\(6),
	datad => \Simple|cnt_clk\(4),
	combout => \Simple|Equal0~1_combout\);

-- Location: LCCOMB_X34_Y9_N0
\Simple|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Simple|Equal0~0_combout\ = (!\Simple|cnt_clk\(2) & (!\Simple|cnt_clk\(1) & (!\Simple|cnt_clk\(3) & !\Simple|cnt_clk\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Simple|cnt_clk\(2),
	datab => \Simple|cnt_clk\(1),
	datac => \Simple|cnt_clk\(3),
	datad => \Simple|cnt_clk\(0),
	combout => \Simple|Equal0~0_combout\);

-- Location: LCCOMB_X34_Y9_N26
\Simple|cnt_clk[12]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Simple|cnt_clk[12]~38_combout\ = (\Simple|cnt_clk\(12) & (\Simple|cnt_clk[11]~37\ $ (GND))) # (!\Simple|cnt_clk\(12) & (!\Simple|cnt_clk[11]~37\ & VCC))
-- \Simple|cnt_clk[12]~39\ = CARRY((\Simple|cnt_clk\(12) & !\Simple|cnt_clk[11]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Simple|cnt_clk\(12),
	datad => VCC,
	cin => \Simple|cnt_clk[11]~37\,
	combout => \Simple|cnt_clk[12]~38_combout\,
	cout => \Simple|cnt_clk[12]~39\);

-- Location: LCCOMB_X34_Y9_N28
\Simple|cnt_clk[13]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Simple|cnt_clk[13]~40_combout\ = \Simple|cnt_clk[12]~39\ $ (\Simple|cnt_clk\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Simple|cnt_clk\(13),
	cin => \Simple|cnt_clk[12]~39\,
	combout => \Simple|cnt_clk[13]~40_combout\);

-- Location: FF_X34_Y9_N29
\Simple|cnt_clk[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Simple|cnt_clk[13]~40_combout\,
	clrn => \resetn~input_o\,
	sclr => \Simple|clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Simple|cnt_clk\(13));

-- Location: LCCOMB_X31_Y9_N2
\Simple|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Simple|Equal0~3_combout\ = (\Simple|Equal0~2_combout\ & (\Simple|Equal0~1_combout\ & (\Simple|Equal0~0_combout\ & \Simple|cnt_clk\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Simple|Equal0~2_combout\,
	datab => \Simple|Equal0~1_combout\,
	datac => \Simple|Equal0~0_combout\,
	datad => \Simple|cnt_clk\(13),
	combout => \Simple|Equal0~3_combout\);

-- Location: IOIBUF_X31_Y0_N8
\BiPhase_rx_in~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BiPhase_rx_in,
	o => \BiPhase_rx_in~input_o\);

-- Location: FF_X29_Y3_N3
\Filter|sig_filter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \BiPhase_rx_in~input_o\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Filter|sig_filter\(0));

-- Location: FF_X27_Y2_N11
\Filter|sig_filter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \Filter|sig_filter\(0),
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Filter|sig_filter\(1));

-- Location: LCCOMB_X27_Y2_N12
\Filter|sig_filter[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Filter|sig_filter[2]~feeder_combout\ = \Filter|sig_filter\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Filter|sig_filter\(1),
	combout => \Filter|sig_filter[2]~feeder_combout\);

-- Location: FF_X27_Y2_N13
\Filter|sig_filter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Filter|sig_filter[2]~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Filter|sig_filter\(2));

-- Location: LCCOMB_X27_Y2_N14
\Filter|sig_filter[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Filter|sig_filter[3]~feeder_combout\ = \Filter|sig_filter\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Filter|sig_filter\(2),
	combout => \Filter|sig_filter[3]~feeder_combout\);

-- Location: FF_X27_Y2_N15
\Filter|sig_filter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Filter|sig_filter[3]~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Filter|sig_filter\(3));

-- Location: FF_X27_Y2_N25
\Filter|sig_filter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \Filter|sig_filter\(3),
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Filter|sig_filter\(4));

-- Location: LCCOMB_X27_Y2_N18
\Filter|sig_filter[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Filter|sig_filter[5]~feeder_combout\ = \Filter|sig_filter\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Filter|sig_filter\(4),
	combout => \Filter|sig_filter[5]~feeder_combout\);

-- Location: FF_X27_Y2_N19
\Filter|sig_filter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Filter|sig_filter[5]~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Filter|sig_filter\(5));

-- Location: LCCOMB_X27_Y2_N20
\Filter|sig_filter[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Filter|sig_filter[6]~feeder_combout\ = \Filter|sig_filter\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Filter|sig_filter\(5),
	combout => \Filter|sig_filter[6]~feeder_combout\);

-- Location: FF_X27_Y2_N21
\Filter|sig_filter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Filter|sig_filter[6]~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Filter|sig_filter\(6));

-- Location: LCCOMB_X27_Y2_N30
\Filter|sig_check_5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Filter|sig_check_5~0_combout\ = \Filter|sig_filter\(6) $ (!\Filter|sig_filter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Filter|sig_filter\(6),
	datad => \Filter|sig_filter\(5),
	combout => \Filter|sig_check_5~0_combout\);

-- Location: FF_X27_Y2_N31
\Filter|sig_check_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Filter|sig_check_5~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Filter|sig_check_5~q\);

-- Location: LCCOMB_X27_Y2_N22
\Filter|sig_filter[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Filter|sig_filter[7]~feeder_combout\ = \Filter|sig_filter\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Filter|sig_filter\(6),
	combout => \Filter|sig_filter[7]~feeder_combout\);

-- Location: FF_X27_Y2_N23
\Filter|sig_filter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Filter|sig_filter[7]~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Filter|sig_filter\(7));

-- Location: LCCOMB_X27_Y2_N8
\Filter|sig_check_6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Filter|sig_check_6~0_combout\ = \Filter|sig_filter\(7) $ (!\Filter|sig_filter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Filter|sig_filter\(7),
	datad => \Filter|sig_filter\(6),
	combout => \Filter|sig_check_6~0_combout\);

-- Location: FF_X27_Y2_N9
\Filter|sig_check_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Filter|sig_check_6~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Filter|sig_check_6~q\);

-- Location: LCCOMB_X27_Y2_N4
\Filter|sig_check_4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Filter|sig_check_4~0_combout\ = \Filter|sig_filter\(5) $ (!\Filter|sig_filter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Filter|sig_filter\(5),
	datad => \Filter|sig_filter\(4),
	combout => \Filter|sig_check_4~0_combout\);

-- Location: FF_X27_Y2_N5
\Filter|sig_check_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Filter|sig_check_4~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Filter|sig_check_4~q\);

-- Location: LCCOMB_X27_Y2_N6
\Filter|sig_check_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Filter|sig_check_2~0_combout\ = \Filter|sig_filter\(3) $ (!\Filter|sig_filter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Filter|sig_filter\(3),
	datad => \Filter|sig_filter\(2),
	combout => \Filter|sig_check_2~0_combout\);

-- Location: FF_X27_Y2_N7
\Filter|sig_check_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Filter|sig_check_2~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Filter|sig_check_2~q\);

-- Location: LCCOMB_X27_Y2_N16
\Filter|sig_check_3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Filter|sig_check_3~0_combout\ = \Filter|sig_filter\(3) $ (!\Filter|sig_filter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Filter|sig_filter\(3),
	datad => \Filter|sig_filter\(4),
	combout => \Filter|sig_check_3~0_combout\);

-- Location: FF_X27_Y2_N17
\Filter|sig_check_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Filter|sig_check_3~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Filter|sig_check_3~q\);

-- Location: LCCOMB_X27_Y2_N26
\Filter|sig_check_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Filter|sig_check_0~0_combout\ = \Filter|sig_filter\(1) $ (!\Filter|sig_filter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Filter|sig_filter\(1),
	datac => \Filter|sig_filter\(0),
	combout => \Filter|sig_check_0~0_combout\);

-- Location: FF_X27_Y2_N27
\Filter|sig_check_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Filter|sig_check_0~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Filter|sig_check_0~q\);

-- Location: LCCOMB_X27_Y2_N28
\Filter|sig_check_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Filter|sig_check_1~0_combout\ = \Filter|sig_filter\(2) $ (!\Filter|sig_filter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Filter|sig_filter\(2),
	datad => \Filter|sig_filter\(1),
	combout => \Filter|sig_check_1~0_combout\);

-- Location: FF_X27_Y2_N29
\Filter|sig_check_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Filter|sig_check_1~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Filter|sig_check_1~q\);

-- Location: LCCOMB_X27_Y2_N2
\Filter|main_check~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Filter|main_check~0_combout\ = (((!\Filter|sig_check_1~q\) # (!\Filter|sig_check_0~q\)) # (!\Filter|sig_check_3~q\)) # (!\Filter|sig_check_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Filter|sig_check_2~q\,
	datab => \Filter|sig_check_3~q\,
	datac => \Filter|sig_check_0~q\,
	datad => \Filter|sig_check_1~q\,
	combout => \Filter|main_check~0_combout\);

-- Location: LCCOMB_X27_Y2_N0
\Filter|main_check~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Filter|main_check~1_combout\ = (\Filter|sig_check_5~q\ & (\Filter|sig_check_6~q\ & (\Filter|sig_check_4~q\ & !\Filter|main_check~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Filter|sig_check_5~q\,
	datab => \Filter|sig_check_6~q\,
	datac => \Filter|sig_check_4~q\,
	datad => \Filter|main_check~0_combout\,
	combout => \Filter|main_check~1_combout\);

-- Location: FF_X27_Y2_N1
\Filter|sig_total_check\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Filter|main_check~1_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Filter|sig_total_check~q\);

-- Location: LCCOMB_X29_Y3_N16
\Filter|signal_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Filter|signal_out~0_combout\ = (\Filter|sig_total_check~q\ & (\BiPhase_rx_in~input_o\)) # (!\Filter|sig_total_check~q\ & ((\Filter|signal_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Filter|sig_total_check~q\,
	datab => \BiPhase_rx_in~input_o\,
	datac => \Filter|signal_out~q\,
	combout => \Filter|signal_out~0_combout\);

-- Location: FF_X29_Y3_N17
\Filter|signal_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Filter|signal_out~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Filter|signal_out~q\);

-- Location: LCCOMB_X31_Y9_N12
\Simple|sig_bi_phase_filterd_cut~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Simple|sig_bi_phase_filterd_cut~feeder_combout\ = \Filter|signal_out~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Filter|signal_out~q\,
	combout => \Simple|sig_bi_phase_filterd_cut~feeder_combout\);

-- Location: FF_X31_Y9_N13
\Simple|sig_bi_phase_filterd_cut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Simple|sig_bi_phase_filterd_cut~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Simple|sig_bi_phase_filterd_cut~q\);

-- Location: FF_X31_Y9_N29
\Simple|sig_bi_phase_filterd_cut_not\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \Simple|sig_bi_phase_filterd_cut~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Simple|sig_bi_phase_filterd_cut_not~q\);

-- Location: LCCOMB_X31_Y9_N18
\Simple|sig_enable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Simple|sig_enable~0_combout\ = (\Simple|sig_enable~q\ & (\Simple|sig_bi_phase_filterd_cut_not~q\ $ (!\Simple|sig_bi_phase_filterd_cut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Simple|sig_bi_phase_filterd_cut_not~q\,
	datac => \Simple|sig_enable~q\,
	datad => \Simple|sig_bi_phase_filterd_cut~q\,
	combout => \Simple|sig_enable~0_combout\);

-- Location: LCCOMB_X31_Y9_N26
\Simple|sig_enable~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Simple|sig_enable~1_combout\ = (\Simple|sig_enable~0_combout\) # ((\Simple|cnt_clk\(12) & (\Simple|Equal0~3_combout\ & !\Simple|sig_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Simple|cnt_clk\(12),
	datab => \Simple|Equal0~3_combout\,
	datac => \Simple|sig_enable~q\,
	datad => \Simple|sig_enable~0_combout\,
	combout => \Simple|sig_enable~1_combout\);

-- Location: FF_X31_Y9_N27
\Simple|sig_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Simple|sig_enable~1_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Simple|sig_enable~q\);

-- Location: LCCOMB_X31_Y9_N28
\Simple|clk_00~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Simple|clk_00~0_combout\ = (\Simple|sig_enable~q\ & (\Simple|sig_bi_phase_filterd_cut_not~q\ $ (\Simple|sig_bi_phase_filterd_cut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Simple|sig_enable~q\,
	datac => \Simple|sig_bi_phase_filterd_cut_not~q\,
	datad => \Simple|sig_bi_phase_filterd_cut~q\,
	combout => \Simple|clk_00~0_combout\);

-- Location: FF_X34_Y9_N3
\Simple|cnt_clk[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Simple|cnt_clk[0]~14_combout\,
	clrn => \resetn~input_o\,
	sclr => \Simple|clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Simple|cnt_clk\(0));

-- Location: LCCOMB_X34_Y9_N4
\Simple|cnt_clk[1]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Simple|cnt_clk[1]~16_combout\ = (\Simple|cnt_clk\(1) & (!\Simple|cnt_clk[0]~15\)) # (!\Simple|cnt_clk\(1) & ((\Simple|cnt_clk[0]~15\) # (GND)))
-- \Simple|cnt_clk[1]~17\ = CARRY((!\Simple|cnt_clk[0]~15\) # (!\Simple|cnt_clk\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Simple|cnt_clk\(1),
	datad => VCC,
	cin => \Simple|cnt_clk[0]~15\,
	combout => \Simple|cnt_clk[1]~16_combout\,
	cout => \Simple|cnt_clk[1]~17\);

-- Location: FF_X34_Y9_N5
\Simple|cnt_clk[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Simple|cnt_clk[1]~16_combout\,
	clrn => \resetn~input_o\,
	sclr => \Simple|clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Simple|cnt_clk\(1));

-- Location: LCCOMB_X34_Y9_N6
\Simple|cnt_clk[2]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Simple|cnt_clk[2]~18_combout\ = (\Simple|cnt_clk\(2) & (\Simple|cnt_clk[1]~17\ $ (GND))) # (!\Simple|cnt_clk\(2) & (!\Simple|cnt_clk[1]~17\ & VCC))
-- \Simple|cnt_clk[2]~19\ = CARRY((\Simple|cnt_clk\(2) & !\Simple|cnt_clk[1]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Simple|cnt_clk\(2),
	datad => VCC,
	cin => \Simple|cnt_clk[1]~17\,
	combout => \Simple|cnt_clk[2]~18_combout\,
	cout => \Simple|cnt_clk[2]~19\);

-- Location: FF_X34_Y9_N7
\Simple|cnt_clk[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Simple|cnt_clk[2]~18_combout\,
	clrn => \resetn~input_o\,
	sclr => \Simple|clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Simple|cnt_clk\(2));

-- Location: LCCOMB_X34_Y9_N8
\Simple|cnt_clk[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Simple|cnt_clk[3]~20_combout\ = (\Simple|cnt_clk\(3) & (!\Simple|cnt_clk[2]~19\)) # (!\Simple|cnt_clk\(3) & ((\Simple|cnt_clk[2]~19\) # (GND)))
-- \Simple|cnt_clk[3]~21\ = CARRY((!\Simple|cnt_clk[2]~19\) # (!\Simple|cnt_clk\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Simple|cnt_clk\(3),
	datad => VCC,
	cin => \Simple|cnt_clk[2]~19\,
	combout => \Simple|cnt_clk[3]~20_combout\,
	cout => \Simple|cnt_clk[3]~21\);

-- Location: FF_X34_Y9_N9
\Simple|cnt_clk[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Simple|cnt_clk[3]~20_combout\,
	clrn => \resetn~input_o\,
	sclr => \Simple|clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Simple|cnt_clk\(3));

-- Location: LCCOMB_X34_Y9_N10
\Simple|cnt_clk[4]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Simple|cnt_clk[4]~22_combout\ = (\Simple|cnt_clk\(4) & (\Simple|cnt_clk[3]~21\ $ (GND))) # (!\Simple|cnt_clk\(4) & (!\Simple|cnt_clk[3]~21\ & VCC))
-- \Simple|cnt_clk[4]~23\ = CARRY((\Simple|cnt_clk\(4) & !\Simple|cnt_clk[3]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Simple|cnt_clk\(4),
	datad => VCC,
	cin => \Simple|cnt_clk[3]~21\,
	combout => \Simple|cnt_clk[4]~22_combout\,
	cout => \Simple|cnt_clk[4]~23\);

-- Location: FF_X34_Y9_N11
\Simple|cnt_clk[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Simple|cnt_clk[4]~22_combout\,
	clrn => \resetn~input_o\,
	sclr => \Simple|clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Simple|cnt_clk\(4));

-- Location: LCCOMB_X34_Y9_N12
\Simple|cnt_clk[5]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Simple|cnt_clk[5]~24_combout\ = (\Simple|cnt_clk\(5) & (!\Simple|cnt_clk[4]~23\)) # (!\Simple|cnt_clk\(5) & ((\Simple|cnt_clk[4]~23\) # (GND)))
-- \Simple|cnt_clk[5]~25\ = CARRY((!\Simple|cnt_clk[4]~23\) # (!\Simple|cnt_clk\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Simple|cnt_clk\(5),
	datad => VCC,
	cin => \Simple|cnt_clk[4]~23\,
	combout => \Simple|cnt_clk[5]~24_combout\,
	cout => \Simple|cnt_clk[5]~25\);

-- Location: FF_X34_Y9_N13
\Simple|cnt_clk[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Simple|cnt_clk[5]~24_combout\,
	clrn => \resetn~input_o\,
	sclr => \Simple|clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Simple|cnt_clk\(5));

-- Location: LCCOMB_X34_Y9_N14
\Simple|cnt_clk[6]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Simple|cnt_clk[6]~26_combout\ = (\Simple|cnt_clk\(6) & (\Simple|cnt_clk[5]~25\ $ (GND))) # (!\Simple|cnt_clk\(6) & (!\Simple|cnt_clk[5]~25\ & VCC))
-- \Simple|cnt_clk[6]~27\ = CARRY((\Simple|cnt_clk\(6) & !\Simple|cnt_clk[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Simple|cnt_clk\(6),
	datad => VCC,
	cin => \Simple|cnt_clk[5]~25\,
	combout => \Simple|cnt_clk[6]~26_combout\,
	cout => \Simple|cnt_clk[6]~27\);

-- Location: FF_X34_Y9_N15
\Simple|cnt_clk[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Simple|cnt_clk[6]~26_combout\,
	clrn => \resetn~input_o\,
	sclr => \Simple|clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Simple|cnt_clk\(6));

-- Location: LCCOMB_X34_Y9_N16
\Simple|cnt_clk[7]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Simple|cnt_clk[7]~28_combout\ = (\Simple|cnt_clk\(7) & (!\Simple|cnt_clk[6]~27\)) # (!\Simple|cnt_clk\(7) & ((\Simple|cnt_clk[6]~27\) # (GND)))
-- \Simple|cnt_clk[7]~29\ = CARRY((!\Simple|cnt_clk[6]~27\) # (!\Simple|cnt_clk\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Simple|cnt_clk\(7),
	datad => VCC,
	cin => \Simple|cnt_clk[6]~27\,
	combout => \Simple|cnt_clk[7]~28_combout\,
	cout => \Simple|cnt_clk[7]~29\);

-- Location: FF_X34_Y9_N17
\Simple|cnt_clk[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Simple|cnt_clk[7]~28_combout\,
	clrn => \resetn~input_o\,
	sclr => \Simple|clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Simple|cnt_clk\(7));

-- Location: LCCOMB_X34_Y9_N18
\Simple|cnt_clk[8]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Simple|cnt_clk[8]~30_combout\ = (\Simple|cnt_clk\(8) & (\Simple|cnt_clk[7]~29\ $ (GND))) # (!\Simple|cnt_clk\(8) & (!\Simple|cnt_clk[7]~29\ & VCC))
-- \Simple|cnt_clk[8]~31\ = CARRY((\Simple|cnt_clk\(8) & !\Simple|cnt_clk[7]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Simple|cnt_clk\(8),
	datad => VCC,
	cin => \Simple|cnt_clk[7]~29\,
	combout => \Simple|cnt_clk[8]~30_combout\,
	cout => \Simple|cnt_clk[8]~31\);

-- Location: FF_X34_Y9_N19
\Simple|cnt_clk[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Simple|cnt_clk[8]~30_combout\,
	clrn => \resetn~input_o\,
	sclr => \Simple|clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Simple|cnt_clk\(8));

-- Location: LCCOMB_X34_Y9_N20
\Simple|cnt_clk[9]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Simple|cnt_clk[9]~32_combout\ = (\Simple|cnt_clk\(9) & (!\Simple|cnt_clk[8]~31\)) # (!\Simple|cnt_clk\(9) & ((\Simple|cnt_clk[8]~31\) # (GND)))
-- \Simple|cnt_clk[9]~33\ = CARRY((!\Simple|cnt_clk[8]~31\) # (!\Simple|cnt_clk\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Simple|cnt_clk\(9),
	datad => VCC,
	cin => \Simple|cnt_clk[8]~31\,
	combout => \Simple|cnt_clk[9]~32_combout\,
	cout => \Simple|cnt_clk[9]~33\);

-- Location: FF_X34_Y9_N21
\Simple|cnt_clk[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Simple|cnt_clk[9]~32_combout\,
	clrn => \resetn~input_o\,
	sclr => \Simple|clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Simple|cnt_clk\(9));

-- Location: LCCOMB_X34_Y9_N22
\Simple|cnt_clk[10]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Simple|cnt_clk[10]~34_combout\ = (\Simple|cnt_clk\(10) & (\Simple|cnt_clk[9]~33\ $ (GND))) # (!\Simple|cnt_clk\(10) & (!\Simple|cnt_clk[9]~33\ & VCC))
-- \Simple|cnt_clk[10]~35\ = CARRY((\Simple|cnt_clk\(10) & !\Simple|cnt_clk[9]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Simple|cnt_clk\(10),
	datad => VCC,
	cin => \Simple|cnt_clk[9]~33\,
	combout => \Simple|cnt_clk[10]~34_combout\,
	cout => \Simple|cnt_clk[10]~35\);

-- Location: FF_X34_Y9_N23
\Simple|cnt_clk[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Simple|cnt_clk[10]~34_combout\,
	clrn => \resetn~input_o\,
	sclr => \Simple|clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Simple|cnt_clk\(10));

-- Location: LCCOMB_X34_Y9_N24
\Simple|cnt_clk[11]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Simple|cnt_clk[11]~36_combout\ = (\Simple|cnt_clk\(11) & (!\Simple|cnt_clk[10]~35\)) # (!\Simple|cnt_clk\(11) & ((\Simple|cnt_clk[10]~35\) # (GND)))
-- \Simple|cnt_clk[11]~37\ = CARRY((!\Simple|cnt_clk[10]~35\) # (!\Simple|cnt_clk\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Simple|cnt_clk\(11),
	datad => VCC,
	cin => \Simple|cnt_clk[10]~35\,
	combout => \Simple|cnt_clk[11]~36_combout\,
	cout => \Simple|cnt_clk[11]~37\);

-- Location: FF_X34_Y9_N25
\Simple|cnt_clk[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Simple|cnt_clk[11]~36_combout\,
	clrn => \resetn~input_o\,
	sclr => \Simple|clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Simple|cnt_clk\(11));

-- Location: FF_X34_Y9_N27
\Simple|cnt_clk[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Simple|cnt_clk[12]~38_combout\,
	clrn => \resetn~input_o\,
	sclr => \Simple|clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Simple|cnt_clk\(12));

-- Location: LCCOMB_X31_Y9_N14
\Simple|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Simple|Equal0~4_combout\ = (\Simple|Equal0~2_combout\ & (\Simple|Equal0~0_combout\ & \Simple|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Simple|Equal0~2_combout\,
	datab => \Simple|Equal0~0_combout\,
	datad => \Simple|Equal0~1_combout\,
	combout => \Simple|Equal0~4_combout\);

-- Location: LCCOMB_X31_Y9_N22
\Simple|sig_90_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Simple|sig_90_clk~0_combout\ = (\Simple|cnt_clk\(12) & ((\Simple|Equal0~4_combout\ & ((!\Simple|cnt_clk\(13)))) # (!\Simple|Equal0~4_combout\ & (\Simple|sig_90_clk~q\)))) # (!\Simple|cnt_clk\(12) & (((\Simple|sig_90_clk~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Simple|cnt_clk\(12),
	datab => \Simple|Equal0~4_combout\,
	datac => \Simple|sig_90_clk~q\,
	datad => \Simple|cnt_clk\(13),
	combout => \Simple|sig_90_clk~0_combout\);

-- Location: FF_X31_Y9_N23
\Simple|sig_90_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Simple|sig_90_clk~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Simple|sig_90_clk~q\);

-- Location: FF_X31_Y9_N15
\Simple|sig_90_cut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \Simple|sig_90_clk~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Simple|sig_90_cut~q\);

-- Location: FF_X31_Y9_N31
\Simple|sig_90_cut_not\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \Simple|sig_90_cut~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Simple|sig_90_cut_not~q\);

-- Location: LCCOMB_X31_Y9_N16
\Simple|sig_00_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Simple|sig_00_clk~0_combout\ = (!\Simple|clk_00~0_combout\ & ((\Simple|sig_00_clk~q\) # ((!\Simple|cnt_clk\(12) & \Simple|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Simple|cnt_clk\(12),
	datab => \Simple|Equal0~3_combout\,
	datac => \Simple|sig_00_clk~q\,
	datad => \Simple|clk_00~0_combout\,
	combout => \Simple|sig_00_clk~0_combout\);

-- Location: FF_X31_Y9_N17
\Simple|sig_00_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Simple|sig_00_clk~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Simple|sig_00_clk~q\);

-- Location: LCCOMB_X31_Y9_N30
\Simple|sig_ff_A~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Simple|sig_ff_A~0_combout\ = (\Simple|sig_90_cut~q\ & (!\Simple|sig_90_cut_not~q\ & !\Simple|sig_00_clk~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Simple|sig_90_cut~q\,
	datac => \Simple|sig_90_cut_not~q\,
	datad => \Simple|sig_00_clk~q\,
	combout => \Simple|sig_ff_A~0_combout\);

-- Location: LCCOMB_X31_Y9_N24
\Simple|sig_ff_A~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Simple|sig_ff_A~1_combout\ = (\Simple|sig_ff_A~0_combout\ & (\Filter|signal_out~q\)) # (!\Simple|sig_ff_A~0_combout\ & ((\Simple|sig_ff_A~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Simple|sig_ff_A~0_combout\,
	datab => \Filter|signal_out~q\,
	datac => \Simple|sig_ff_A~q\,
	combout => \Simple|sig_ff_A~1_combout\);

-- Location: FF_X31_Y9_N25
\Simple|sig_ff_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Simple|sig_ff_A~1_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Simple|sig_ff_A~q\);

-- Location: LCCOMB_X31_Y9_N4
\Simple|sig_ff_B~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Simple|sig_ff_B~0_combout\ = (\Simple|sig_90_cut_not~q\ & (!\Simple|sig_90_cut~q\ & \Simple|sig_00_clk~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Simple|sig_90_cut_not~q\,
	datac => \Simple|sig_90_cut~q\,
	datad => \Simple|sig_00_clk~q\,
	combout => \Simple|sig_ff_B~0_combout\);

-- Location: LCCOMB_X31_Y9_N20
\Simple|sig_ff_B~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Simple|sig_ff_B~1_combout\ = (\Simple|sig_ff_B~0_combout\ & (\Filter|signal_out~q\)) # (!\Simple|sig_ff_B~0_combout\ & ((\Simple|sig_ff_B~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Filter|signal_out~q\,
	datac => \Simple|sig_ff_B~q\,
	datad => \Simple|sig_ff_B~0_combout\,
	combout => \Simple|sig_ff_B~1_combout\);

-- Location: FF_X31_Y9_N21
\Simple|sig_ff_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Simple|sig_ff_B~1_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Simple|sig_ff_B~q\);

-- Location: LCCOMB_X31_Y9_N0
\Simple|nrzl_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Simple|nrzl_data~0_combout\ = \Simple|sig_ff_A~q\ $ (!\Simple|sig_ff_B~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Simple|sig_ff_A~q\,
	datac => \Simple|sig_ff_B~q\,
	combout => \Simple|nrzl_data~0_combout\);

-- Location: LCCOMB_X36_Y17_N16
\DO|sig_main_clk_cut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_main_clk_cut~0_combout\ = !\Simple|sig_00_clk~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Simple|sig_00_clk~q\,
	combout => \DO|sig_main_clk_cut~0_combout\);

-- Location: FF_X36_Y17_N17
\DO|sig_main_clk_cut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_main_clk_cut~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_main_clk_cut~q\);

-- Location: FF_X41_Y17_N23
\DO|sig_main_clk_cut_not\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_main_clk_cut~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_main_clk_cut_not~q\);

-- Location: LCCOMB_X41_Y17_N22
\DO|sig_main_clk_r\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_main_clk_r~combout\ = (\DO|sig_main_clk_cut~q\ & !\DO|sig_main_clk_cut_not~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_main_clk_cut~q\,
	datac => \DO|sig_main_clk_cut_not~q\,
	combout => \DO|sig_main_clk_r~combout\);

-- Location: FF_X31_Y9_N1
\Simple|nrzl_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Simple|nrzl_data~0_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Simple|nrzl_data~q\);

-- Location: LCCOMB_X42_Y14_N28
\DO|sig_rgb_leds_out[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[0]~feeder_combout\ = \Simple|nrzl_data~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Simple|nrzl_data~q\,
	combout => \DO|sig_rgb_leds_out[0]~feeder_combout\);

-- Location: LCCOMB_X36_Y11_N28
\CRC8|cnt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|cnt~0_combout\ = (\CRC8|Add1~6_combout\ & ((!\CRC8|Equal0~0_combout\) # (!\CRC8|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|Equal0~1_combout\,
	datac => \CRC8|Equal0~0_combout\,
	datad => \CRC8|Add1~6_combout\,
	combout => \CRC8|cnt~0_combout\);

-- Location: LCCOMB_X36_Y13_N20
\CRC8|state_crc.s3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|state_crc.s3~feeder_combout\ = \CRC8|state_crc.s2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CRC8|state_crc.s2~q\,
	combout => \CRC8|state_crc.s3~feeder_combout\);

-- Location: FF_X36_Y13_N21
\CRC8|state_crc.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|state_crc.s3~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_crc.s3~q\);

-- Location: LCCOMB_X35_Y13_N30
\CRC8|state_crc.s4~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|state_crc.s4~feeder_combout\ = \CRC8|state_crc.s3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CRC8|state_crc.s3~q\,
	combout => \CRC8|state_crc.s4~feeder_combout\);

-- Location: FF_X35_Y13_N31
\CRC8|state_crc.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|state_crc.s4~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_crc.s4~q\);

-- Location: LCCOMB_X35_Y13_N6
\CRC8|sig_correlation[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[0]~5_combout\ = !\CRC8|sig_correlation\(0)
-- \CRC8|sig_correlation[0]~6\ = CARRY(!\CRC8|sig_correlation\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|sig_correlation\(0),
	combout => \CRC8|sig_correlation[0]~5_combout\,
	cout => \CRC8|sig_correlation[0]~6\);

-- Location: LCCOMB_X36_Y13_N12
\CRC8|flag~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|flag~0_combout\ = (!\CRC8|state_xor.s32~q\ & ((\CRC8|flag~q\) # ((\DO|sig_main_clk_cut_not~q\ & !\DO|sig_main_clk_cut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_main_clk_cut_not~q\,
	datab => \DO|sig_main_clk_cut~q\,
	datac => \CRC8|flag~q\,
	datad => \CRC8|state_xor.s32~q\,
	combout => \CRC8|flag~0_combout\);

-- Location: FF_X36_Y13_N13
\CRC8|flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|flag~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|flag~q\);

-- Location: LCCOMB_X36_Y13_N8
\CRC8|state_xor~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|state_xor~70_combout\ = (!\CRC8|state_xor.s0~q\ & \CRC8|flag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CRC8|state_xor.s0~q\,
	datad => \CRC8|flag~q\,
	combout => \CRC8|state_xor~70_combout\);

-- Location: FF_X36_Y13_N9
\CRC8|state_xor.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|state_xor~70_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s1~q\);

-- Location: FF_X32_Y9_N25
\CRC8|state_xor.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|state_xor.s1~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s2~q\);

-- Location: LCCOMB_X32_Y9_N16
\CRC8|state_xor.s3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|state_xor.s3~feeder_combout\ = \CRC8|state_xor.s2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CRC8|state_xor.s2~q\,
	combout => \CRC8|state_xor.s3~feeder_combout\);

-- Location: FF_X32_Y9_N17
\CRC8|state_xor.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|state_xor.s3~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s3~q\);

-- Location: LCCOMB_X32_Y9_N10
\CRC8|state_xor.s4~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|state_xor.s4~feeder_combout\ = \CRC8|state_xor.s3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CRC8|state_xor.s3~q\,
	combout => \CRC8|state_xor.s4~feeder_combout\);

-- Location: FF_X32_Y9_N11
\CRC8|state_xor.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|state_xor.s4~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s4~q\);

-- Location: LCCOMB_X32_Y9_N30
\CRC8|state_xor.s5~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|state_xor.s5~feeder_combout\ = \CRC8|state_xor.s4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CRC8|state_xor.s4~q\,
	combout => \CRC8|state_xor.s5~feeder_combout\);

-- Location: FF_X32_Y9_N31
\CRC8|state_xor.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|state_xor.s5~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s5~q\);

-- Location: LCCOMB_X31_Y8_N14
\CRC8|state_xor.s6~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|state_xor.s6~feeder_combout\ = \CRC8|state_xor.s5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CRC8|state_xor.s5~q\,
	combout => \CRC8|state_xor.s6~feeder_combout\);

-- Location: FF_X31_Y8_N15
\CRC8|state_xor.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|state_xor.s6~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s6~q\);

-- Location: FF_X31_Y8_N11
\CRC8|state_xor.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|state_xor.s6~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s7~q\);

-- Location: LCCOMB_X31_Y8_N20
\CRC8|state_xor.s8~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|state_xor.s8~feeder_combout\ = \CRC8|state_xor.s7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CRC8|state_xor.s7~q\,
	combout => \CRC8|state_xor.s8~feeder_combout\);

-- Location: FF_X31_Y8_N21
\CRC8|state_xor.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|state_xor.s8~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s8~q\);

-- Location: LCCOMB_X31_Y8_N26
\CRC8|state_xor.s9~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|state_xor.s9~feeder_combout\ = \CRC8|state_xor.s8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CRC8|state_xor.s8~q\,
	combout => \CRC8|state_xor.s9~feeder_combout\);

-- Location: FF_X31_Y8_N27
\CRC8|state_xor.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|state_xor.s9~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s9~q\);

-- Location: FF_X31_Y8_N31
\CRC8|state_xor.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|state_xor.s9~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s10~q\);

-- Location: FF_X31_Y8_N13
\CRC8|state_xor.s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|state_xor.s10~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s11~q\);

-- Location: LCCOMB_X31_Y8_N18
\CRC8|state_xor.s12~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|state_xor.s12~feeder_combout\ = \CRC8|state_xor.s11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CRC8|state_xor.s11~q\,
	combout => \CRC8|state_xor.s12~feeder_combout\);

-- Location: FF_X31_Y8_N19
\CRC8|state_xor.s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|state_xor.s12~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s12~q\);

-- Location: LCCOMB_X29_Y8_N16
\CRC8|state_xor.s13~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|state_xor.s13~feeder_combout\ = \CRC8|state_xor.s12~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CRC8|state_xor.s12~q\,
	combout => \CRC8|state_xor.s13~feeder_combout\);

-- Location: FF_X29_Y8_N17
\CRC8|state_xor.s13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|state_xor.s13~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s13~q\);

-- Location: LCCOMB_X29_Y8_N20
\CRC8|state_xor.s14~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|state_xor.s14~feeder_combout\ = \CRC8|state_xor.s13~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CRC8|state_xor.s13~q\,
	combout => \CRC8|state_xor.s14~feeder_combout\);

-- Location: FF_X29_Y8_N21
\CRC8|state_xor.s14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|state_xor.s14~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s14~q\);

-- Location: LCCOMB_X29_Y8_N24
\CRC8|state_xor.s15~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|state_xor.s15~feeder_combout\ = \CRC8|state_xor.s14~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CRC8|state_xor.s14~q\,
	combout => \CRC8|state_xor.s15~feeder_combout\);

-- Location: FF_X29_Y8_N25
\CRC8|state_xor.s15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|state_xor.s15~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s15~q\);

-- Location: LCCOMB_X29_Y8_N22
\CRC8|state_xor.s16~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|state_xor.s16~feeder_combout\ = \CRC8|state_xor.s15~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CRC8|state_xor.s15~q\,
	combout => \CRC8|state_xor.s16~feeder_combout\);

-- Location: FF_X29_Y8_N23
\CRC8|state_xor.s16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|state_xor.s16~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s16~q\);

-- Location: FF_X30_Y8_N11
\CRC8|state_xor.s17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|state_xor.s16~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s17~q\);

-- Location: LCCOMB_X30_Y8_N8
\CRC8|state_xor.s18~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|state_xor.s18~feeder_combout\ = \CRC8|state_xor.s17~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CRC8|state_xor.s17~q\,
	combout => \CRC8|state_xor.s18~feeder_combout\);

-- Location: FF_X30_Y8_N9
\CRC8|state_xor.s18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|state_xor.s18~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s18~q\);

-- Location: FF_X30_Y8_N23
\CRC8|state_xor.s19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|state_xor.s18~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s19~q\);

-- Location: FF_X30_Y8_N27
\CRC8|state_xor.s20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|state_xor.s19~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s20~q\);

-- Location: FF_X30_Y8_N19
\CRC8|state_xor.s21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|state_xor.s20~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s21~q\);

-- Location: FF_X30_Y8_N17
\CRC8|state_xor.s22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|state_xor.s21~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s22~q\);

-- Location: LCCOMB_X30_Y8_N20
\CRC8|state_xor.s23~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|state_xor.s23~feeder_combout\ = \CRC8|state_xor.s22~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CRC8|state_xor.s22~q\,
	combout => \CRC8|state_xor.s23~feeder_combout\);

-- Location: FF_X30_Y8_N21
\CRC8|state_xor.s23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|state_xor.s23~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s23~q\);

-- Location: FF_X30_Y9_N23
\CRC8|state_xor.s24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|state_xor.s23~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s24~q\);

-- Location: FF_X30_Y9_N25
\CRC8|state_xor.s25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|state_xor.s24~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s25~q\);

-- Location: FF_X30_Y9_N29
\CRC8|state_xor.s26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|state_xor.s25~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s26~q\);

-- Location: FF_X30_Y9_N17
\CRC8|state_xor.s27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|state_xor.s26~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s27~q\);

-- Location: FF_X30_Y9_N9
\CRC8|state_xor.s28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|state_xor.s27~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s28~q\);

-- Location: FF_X30_Y9_N19
\CRC8|state_xor.s29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|state_xor.s28~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s29~q\);

-- Location: FF_X30_Y9_N11
\CRC8|state_xor.s30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|state_xor.s29~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s30~q\);

-- Location: LCCOMB_X36_Y13_N30
\CRC8|state_xor.s31~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|state_xor.s31~feeder_combout\ = \CRC8|state_xor.s30~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CRC8|state_xor.s30~q\,
	combout => \CRC8|state_xor.s31~feeder_combout\);

-- Location: FF_X36_Y13_N31
\CRC8|state_xor.s31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|state_xor.s31~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s31~q\);

-- Location: FF_X36_Y13_N3
\CRC8|state_xor.s32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|state_xor.s31~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s32~q\);

-- Location: LCCOMB_X36_Y13_N14
\CRC8|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|Selector0~0_combout\ = (!\CRC8|state_xor.s32~q\ & ((\CRC8|state_xor.s0~q\) # (\CRC8|flag~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CRC8|state_xor.s32~q\,
	datac => \CRC8|state_xor.s0~q\,
	datad => \CRC8|flag~q\,
	combout => \CRC8|Selector0~0_combout\);

-- Location: FF_X36_Y13_N15
\CRC8|state_xor.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|Selector0~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_xor.s0~q\);

-- Location: LCCOMB_X35_Y13_N28
\CRC8|sig_main_clk_f~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_main_clk_f~0_combout\ = (\DO|sig_main_clk_cut_not~q\ & !\DO|sig_main_clk_cut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_main_clk_cut_not~q\,
	datac => \DO|sig_main_clk_cut~q\,
	combout => \CRC8|sig_main_clk_f~0_combout\);

-- Location: FF_X32_Y9_N5
\CRC8|sig_sf_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \Simple|nrzl_data~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \CRC8|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_sf_reg\(0));

-- Location: FF_X32_Y9_N19
\CRC8|sig_sf_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|sig_sf_reg\(0),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \CRC8|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_sf_reg\(1));

-- Location: LCCOMB_X29_Y8_N0
\CRC8|sig_correlation[4]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~23_combout\ = (!\CRC8|state_xor.s16~q\ & (!\CRC8|state_xor.s15~q\ & (!\CRC8|state_xor.s13~q\ & !\CRC8|state_xor.s14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|state_xor.s16~q\,
	datab => \CRC8|state_xor.s15~q\,
	datac => \CRC8|state_xor.s13~q\,
	datad => \CRC8|state_xor.s14~q\,
	combout => \CRC8|sig_correlation[4]~23_combout\);

-- Location: FF_X32_Y9_N15
\CRC8|sig_sf_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|sig_sf_reg\(1),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \CRC8|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_sf_reg\(2));

-- Location: LCCOMB_X32_Y9_N28
\CRC8|sig_sf_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_sf_reg[3]~feeder_combout\ = \CRC8|sig_sf_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CRC8|sig_sf_reg\(2),
	combout => \CRC8|sig_sf_reg[3]~feeder_combout\);

-- Location: FF_X32_Y9_N29
\CRC8|sig_sf_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|sig_sf_reg[3]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \CRC8|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_sf_reg\(3));

-- Location: FF_X32_Y9_N9
\CRC8|sig_sf_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|sig_sf_reg\(3),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \CRC8|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_sf_reg\(4));

-- Location: FF_X31_Y8_N5
\CRC8|sig_sf_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|sig_sf_reg\(4),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \CRC8|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_sf_reg\(5));

-- Location: FF_X31_Y8_N17
\CRC8|sig_sf_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|sig_sf_reg\(5),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \CRC8|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_sf_reg\(6));

-- Location: FF_X31_Y8_N9
\CRC8|sig_sf_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|sig_sf_reg\(6),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \CRC8|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_sf_reg\(7));

-- Location: FF_X31_Y8_N7
\CRC8|sig_sf_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|sig_sf_reg\(7),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \CRC8|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_sf_reg\(8));

-- Location: FF_X31_Y8_N1
\CRC8|sig_sf_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|sig_sf_reg\(8),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \CRC8|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_sf_reg\(9));

-- Location: FF_X31_Y8_N29
\CRC8|sig_sf_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|sig_sf_reg\(9),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \CRC8|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_sf_reg\(10));

-- Location: LCCOMB_X31_Y8_N2
\CRC8|sig_sf_reg[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_sf_reg[11]~feeder_combout\ = \CRC8|sig_sf_reg\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CRC8|sig_sf_reg\(10),
	combout => \CRC8|sig_sf_reg[11]~feeder_combout\);

-- Location: FF_X31_Y8_N3
\CRC8|sig_sf_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|sig_sf_reg[11]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \CRC8|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_sf_reg\(11));

-- Location: LCCOMB_X31_Y8_N28
\CRC8|sig_correlation[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~18_combout\ = (\CRC8|state_xor.s11~q\ & (((!\CRC8|sig_sf_reg\(10))))) # (!\CRC8|state_xor.s11~q\ & (\CRC8|state_xor.s12~q\ & ((!\CRC8|sig_sf_reg\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|state_xor.s11~q\,
	datab => \CRC8|state_xor.s12~q\,
	datac => \CRC8|sig_sf_reg\(10),
	datad => \CRC8|sig_sf_reg\(11),
	combout => \CRC8|sig_correlation[4]~18_combout\);

-- Location: LCCOMB_X31_Y8_N0
\CRC8|sig_correlation[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~19_combout\ = (\CRC8|state_xor.s10~q\ & (!\CRC8|sig_sf_reg\(9))) # (!\CRC8|state_xor.s10~q\ & ((\CRC8|sig_correlation[4]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|state_xor.s10~q\,
	datac => \CRC8|sig_sf_reg\(9),
	datad => \CRC8|sig_correlation[4]~18_combout\,
	combout => \CRC8|sig_correlation[4]~19_combout\);

-- Location: FF_X29_Y8_N27
\CRC8|sig_sf_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|sig_sf_reg\(11),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \CRC8|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_sf_reg\(12));

-- Location: FF_X29_Y8_N31
\CRC8|sig_sf_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|sig_sf_reg\(12),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \CRC8|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_sf_reg\(13));

-- Location: FF_X29_Y8_N19
\CRC8|sig_sf_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|sig_sf_reg\(13),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \CRC8|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_sf_reg\(14));

-- Location: LCCOMB_X29_Y8_N28
\CRC8|sig_sf_reg[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_sf_reg[15]~feeder_combout\ = \CRC8|sig_sf_reg\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CRC8|sig_sf_reg\(14),
	combout => \CRC8|sig_sf_reg[15]~feeder_combout\);

-- Location: FF_X29_Y8_N29
\CRC8|sig_sf_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|sig_sf_reg[15]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \CRC8|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_sf_reg\(15));

-- Location: LCCOMB_X29_Y8_N18
\CRC8|sig_correlation[4]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~20_combout\ = (\CRC8|state_xor.s15~q\ & (((!\CRC8|sig_sf_reg\(14))))) # (!\CRC8|state_xor.s15~q\ & (!\CRC8|sig_sf_reg\(15) & ((\CRC8|state_xor.s16~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|sig_sf_reg\(15),
	datab => \CRC8|state_xor.s15~q\,
	datac => \CRC8|sig_sf_reg\(14),
	datad => \CRC8|state_xor.s16~q\,
	combout => \CRC8|sig_correlation[4]~20_combout\);

-- Location: LCCOMB_X29_Y8_N30
\CRC8|sig_correlation[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~21_combout\ = (\CRC8|state_xor.s14~q\ & (!\CRC8|sig_sf_reg\(13))) # (!\CRC8|state_xor.s14~q\ & ((\CRC8|sig_correlation[4]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CRC8|state_xor.s14~q\,
	datac => \CRC8|sig_sf_reg\(13),
	datad => \CRC8|sig_correlation[4]~20_combout\,
	combout => \CRC8|sig_correlation[4]~21_combout\);

-- Location: LCCOMB_X29_Y8_N26
\CRC8|sig_correlation[4]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~22_combout\ = (\CRC8|state_xor.s13~q\ & ((!\CRC8|sig_sf_reg\(12)))) # (!\CRC8|state_xor.s13~q\ & (\CRC8|sig_correlation[4]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CRC8|sig_correlation[4]~21_combout\,
	datac => \CRC8|sig_sf_reg\(12),
	datad => \CRC8|state_xor.s13~q\,
	combout => \CRC8|sig_correlation[4]~22_combout\);

-- Location: FF_X30_Y8_N25
\CRC8|sig_sf_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|sig_sf_reg\(15),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \CRC8|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_sf_reg\(16));

-- Location: LCCOMB_X30_Y8_N4
\CRC8|sig_sf_reg[17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_sf_reg[17]~feeder_combout\ = \CRC8|sig_sf_reg\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CRC8|sig_sf_reg\(16),
	combout => \CRC8|sig_sf_reg[17]~feeder_combout\);

-- Location: FF_X30_Y8_N5
\CRC8|sig_sf_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|sig_sf_reg[17]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \CRC8|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_sf_reg\(17));

-- Location: FF_X30_Y8_N15
\CRC8|sig_sf_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|sig_sf_reg\(17),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \CRC8|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_sf_reg\(18));

-- Location: FF_X30_Y8_N7
\CRC8|sig_sf_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|sig_sf_reg\(18),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \CRC8|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_sf_reg\(19));

-- Location: LCCOMB_X30_Y8_N30
\CRC8|sig_sf_reg[20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_sf_reg[20]~feeder_combout\ = \CRC8|sig_sf_reg\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CRC8|sig_sf_reg\(19),
	combout => \CRC8|sig_sf_reg[20]~feeder_combout\);

-- Location: FF_X30_Y8_N31
\CRC8|sig_sf_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|sig_sf_reg[20]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \CRC8|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_sf_reg\(20));

-- Location: FF_X30_Y8_N29
\CRC8|sig_sf_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|sig_sf_reg\(20),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \CRC8|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_sf_reg\(21));

-- Location: FF_X30_Y8_N13
\CRC8|sig_sf_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|sig_sf_reg\(21),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \CRC8|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_sf_reg\(22));

-- Location: LCCOMB_X30_Y8_N28
\CRC8|sig_correlation[4]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~36_combout\ = (\CRC8|state_xor.s22~q\ & (((\CRC8|sig_sf_reg\(21))))) # (!\CRC8|state_xor.s22~q\ & (!\CRC8|sig_sf_reg\(22) & ((\CRC8|state_xor.s23~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|sig_sf_reg\(22),
	datab => \CRC8|state_xor.s22~q\,
	datac => \CRC8|sig_sf_reg\(21),
	datad => \CRC8|state_xor.s23~q\,
	combout => \CRC8|sig_correlation[4]~36_combout\);

-- Location: LCCOMB_X30_Y8_N26
\CRC8|sig_correlation[4]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~37_combout\ = (!\CRC8|state_xor.s20~q\ & ((\CRC8|state_xor.s21~q\ & (\CRC8|sig_sf_reg\(20))) # (!\CRC8|state_xor.s21~q\ & ((\CRC8|sig_correlation[4]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|state_xor.s21~q\,
	datab => \CRC8|sig_sf_reg\(20),
	datac => \CRC8|state_xor.s20~q\,
	datad => \CRC8|sig_correlation[4]~36_combout\,
	combout => \CRC8|sig_correlation[4]~37_combout\);

-- Location: LCCOMB_X30_Y8_N6
\CRC8|sig_correlation[4]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~38_combout\ = (\CRC8|sig_correlation[4]~37_combout\) # ((\CRC8|state_xor.s20~q\ & !\CRC8|sig_sf_reg\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|state_xor.s20~q\,
	datac => \CRC8|sig_sf_reg\(19),
	datad => \CRC8|sig_correlation[4]~37_combout\,
	combout => \CRC8|sig_correlation[4]~38_combout\);

-- Location: LCCOMB_X30_Y8_N22
\CRC8|sig_correlation[4]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~26_combout\ = (!\CRC8|state_xor.s18~q\ & (!\CRC8|state_xor.s19~q\ & !\CRC8|state_xor.s17~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CRC8|state_xor.s18~q\,
	datac => \CRC8|state_xor.s19~q\,
	datad => \CRC8|state_xor.s17~q\,
	combout => \CRC8|sig_correlation[4]~26_combout\);

-- Location: LCCOMB_X30_Y8_N14
\CRC8|sig_correlation[4]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~24_combout\ = (\CRC8|state_xor.s18~q\ & (!\CRC8|sig_sf_reg\(17))) # (!\CRC8|state_xor.s18~q\ & (((\CRC8|sig_sf_reg\(18) & \CRC8|state_xor.s19~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|state_xor.s18~q\,
	datab => \CRC8|sig_sf_reg\(17),
	datac => \CRC8|sig_sf_reg\(18),
	datad => \CRC8|state_xor.s19~q\,
	combout => \CRC8|sig_correlation[4]~24_combout\);

-- Location: LCCOMB_X30_Y8_N24
\CRC8|sig_correlation[4]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~25_combout\ = (\CRC8|state_xor.s17~q\ & (\CRC8|sig_sf_reg\(16))) # (!\CRC8|state_xor.s17~q\ & ((\CRC8|sig_correlation[4]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|state_xor.s17~q\,
	datac => \CRC8|sig_sf_reg\(16),
	datad => \CRC8|sig_correlation[4]~24_combout\,
	combout => \CRC8|sig_correlation[4]~25_combout\);

-- Location: LCCOMB_X30_Y8_N18
\CRC8|sig_correlation[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~27_combout\ = (!\CRC8|state_xor.s20~q\ & (!\CRC8|state_xor.s22~q\ & (!\CRC8|state_xor.s21~q\ & !\CRC8|state_xor.s23~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|state_xor.s20~q\,
	datab => \CRC8|state_xor.s22~q\,
	datac => \CRC8|state_xor.s21~q\,
	datad => \CRC8|state_xor.s23~q\,
	combout => \CRC8|sig_correlation[4]~27_combout\);

-- Location: FF_X30_Y9_N15
\CRC8|sig_sf_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|sig_sf_reg\(22),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \CRC8|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_sf_reg\(23));

-- Location: FF_X30_Y9_N21
\CRC8|sig_sf_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|sig_sf_reg\(23),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \CRC8|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_sf_reg\(24));

-- Location: LCCOMB_X30_Y9_N6
\CRC8|sig_sf_reg[25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_sf_reg[25]~feeder_combout\ = \CRC8|sig_sf_reg\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CRC8|sig_sf_reg\(24),
	combout => \CRC8|sig_sf_reg[25]~feeder_combout\);

-- Location: FF_X30_Y9_N7
\CRC8|sig_sf_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|sig_sf_reg[25]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \CRC8|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_sf_reg\(25));

-- Location: LCCOMB_X30_Y9_N24
\CRC8|sig_correlation[4]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~28_combout\ = (\CRC8|state_xor.s25~q\ & (((\CRC8|sig_sf_reg\(24))))) # (!\CRC8|state_xor.s25~q\ & (\CRC8|sig_sf_reg\(25) & ((\CRC8|state_xor.s26~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|sig_sf_reg\(25),
	datab => \CRC8|sig_sf_reg\(24),
	datac => \CRC8|state_xor.s25~q\,
	datad => \CRC8|state_xor.s26~q\,
	combout => \CRC8|sig_correlation[4]~28_combout\);

-- Location: LCCOMB_X30_Y9_N2
\CRC8|sig_sf_reg[26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_sf_reg[26]~feeder_combout\ = \CRC8|sig_sf_reg\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CRC8|sig_sf_reg\(25),
	combout => \CRC8|sig_sf_reg[26]~feeder_combout\);

-- Location: FF_X30_Y9_N3
\CRC8|sig_sf_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|sig_sf_reg[26]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \CRC8|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_sf_reg\(26));

-- Location: LCCOMB_X30_Y9_N26
\CRC8|sig_sf_reg[27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_sf_reg[27]~feeder_combout\ = \CRC8|sig_sf_reg\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CRC8|sig_sf_reg\(26),
	combout => \CRC8|sig_sf_reg[27]~feeder_combout\);

-- Location: FF_X30_Y9_N27
\CRC8|sig_sf_reg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|sig_sf_reg[27]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \CRC8|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_sf_reg\(27));

-- Location: LCCOMB_X30_Y9_N16
\CRC8|sig_correlation[4]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~29_combout\ = (\CRC8|state_xor.s27~q\ & (((\CRC8|sig_sf_reg\(26))))) # (!\CRC8|state_xor.s27~q\ & (\CRC8|sig_sf_reg\(27) & (\CRC8|state_xor.s28~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|sig_sf_reg\(27),
	datab => \CRC8|state_xor.s28~q\,
	datac => \CRC8|state_xor.s27~q\,
	datad => \CRC8|sig_sf_reg\(26),
	combout => \CRC8|sig_correlation[4]~29_combout\);

-- Location: FF_X30_Y9_N5
\CRC8|sig_sf_reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|sig_sf_reg\(27),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \CRC8|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_sf_reg\(28));

-- Location: FF_X30_Y9_N31
\CRC8|sig_sf_reg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|sig_sf_reg\(28),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \CRC8|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_sf_reg\(29));

-- Location: LCCOMB_X30_Y9_N20
\CRC8|sig_correlation[4]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~30_combout\ = (\CRC8|state_xor.s30~q\ & \CRC8|sig_sf_reg\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|state_xor.s30~q\,
	datad => \CRC8|sig_sf_reg\(29),
	combout => \CRC8|sig_correlation[4]~30_combout\);

-- Location: LCCOMB_X30_Y9_N0
\CRC8|sig_sf_reg[30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_sf_reg[30]~feeder_combout\ = \CRC8|sig_sf_reg\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CRC8|sig_sf_reg\(29),
	combout => \CRC8|sig_sf_reg[30]~feeder_combout\);

-- Location: FF_X30_Y9_N1
\CRC8|sig_sf_reg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|sig_sf_reg[30]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \CRC8|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_sf_reg\(30));

-- Location: FF_X30_Y9_N13
\CRC8|sig_sf_reg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \CRC8|sig_sf_reg\(30),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \CRC8|sig_main_clk_f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_sf_reg\(31));

-- Location: LCCOMB_X30_Y9_N12
\CRC8|sig_correlation[4]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~31_combout\ = (!\CRC8|state_xor.s30~q\ & ((\CRC8|state_xor.s32~q\ & ((!\CRC8|sig_sf_reg\(31)))) # (!\CRC8|state_xor.s32~q\ & (!\CRC8|sig_sf_reg\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|state_xor.s30~q\,
	datab => \CRC8|sig_sf_reg\(30),
	datac => \CRC8|sig_sf_reg\(31),
	datad => \CRC8|state_xor.s32~q\,
	combout => \CRC8|sig_correlation[4]~31_combout\);

-- Location: LCCOMB_X30_Y9_N18
\CRC8|sig_correlation[4]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~32_combout\ = (\CRC8|state_xor.s29~q\ & (((\CRC8|sig_sf_reg\(28))))) # (!\CRC8|state_xor.s29~q\ & ((\CRC8|sig_correlation[4]~30_combout\) # ((\CRC8|sig_correlation[4]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|sig_correlation[4]~30_combout\,
	datab => \CRC8|sig_sf_reg\(28),
	datac => \CRC8|state_xor.s29~q\,
	datad => \CRC8|sig_correlation[4]~31_combout\,
	combout => \CRC8|sig_correlation[4]~32_combout\);

-- Location: LCCOMB_X30_Y9_N8
\CRC8|sig_correlation[4]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~33_combout\ = (\CRC8|sig_correlation[4]~29_combout\) # ((!\CRC8|state_xor.s27~q\ & (!\CRC8|state_xor.s28~q\ & \CRC8|sig_correlation[4]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|sig_correlation[4]~29_combout\,
	datab => \CRC8|state_xor.s27~q\,
	datac => \CRC8|state_xor.s28~q\,
	datad => \CRC8|sig_correlation[4]~32_combout\,
	combout => \CRC8|sig_correlation[4]~33_combout\);

-- Location: LCCOMB_X30_Y9_N28
\CRC8|sig_correlation[4]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~34_combout\ = (\CRC8|sig_correlation[4]~28_combout\) # ((!\CRC8|state_xor.s25~q\ & (!\CRC8|state_xor.s26~q\ & \CRC8|sig_correlation[4]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|state_xor.s25~q\,
	datab => \CRC8|sig_correlation[4]~28_combout\,
	datac => \CRC8|state_xor.s26~q\,
	datad => \CRC8|sig_correlation[4]~33_combout\,
	combout => \CRC8|sig_correlation[4]~34_combout\);

-- Location: LCCOMB_X30_Y9_N22
\CRC8|sig_correlation[4]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~35_combout\ = (\CRC8|sig_correlation[4]~27_combout\ & ((\CRC8|state_xor.s24~q\ & (!\CRC8|sig_sf_reg\(23))) # (!\CRC8|state_xor.s24~q\ & ((\CRC8|sig_correlation[4]~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|sig_correlation[4]~27_combout\,
	datab => \CRC8|sig_sf_reg\(23),
	datac => \CRC8|state_xor.s24~q\,
	datad => \CRC8|sig_correlation[4]~34_combout\,
	combout => \CRC8|sig_correlation[4]~35_combout\);

-- Location: LCCOMB_X29_Y9_N24
\CRC8|sig_correlation[4]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~39_combout\ = (\CRC8|sig_correlation[4]~25_combout\) # ((\CRC8|sig_correlation[4]~26_combout\ & ((\CRC8|sig_correlation[4]~38_combout\) # (\CRC8|sig_correlation[4]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|sig_correlation[4]~38_combout\,
	datab => \CRC8|sig_correlation[4]~26_combout\,
	datac => \CRC8|sig_correlation[4]~25_combout\,
	datad => \CRC8|sig_correlation[4]~35_combout\,
	combout => \CRC8|sig_correlation[4]~39_combout\);

-- Location: LCCOMB_X29_Y9_N26
\CRC8|sig_correlation[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~40_combout\ = (\CRC8|sig_correlation[4]~19_combout\) # ((\CRC8|sig_correlation[4]~22_combout\) # ((\CRC8|sig_correlation[4]~23_combout\ & \CRC8|sig_correlation[4]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|sig_correlation[4]~23_combout\,
	datab => \CRC8|sig_correlation[4]~19_combout\,
	datac => \CRC8|sig_correlation[4]~22_combout\,
	datad => \CRC8|sig_correlation[4]~39_combout\,
	combout => \CRC8|sig_correlation[4]~40_combout\);

-- Location: LCCOMB_X32_Y9_N8
\CRC8|sig_correlation[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~15_combout\ = (\CRC8|state_xor.s4~q\ & (!\CRC8|sig_sf_reg\(3))) # (!\CRC8|state_xor.s4~q\ & (((\CRC8|sig_sf_reg\(4) & \CRC8|state_xor.s5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|state_xor.s4~q\,
	datab => \CRC8|sig_sf_reg\(3),
	datac => \CRC8|sig_sf_reg\(4),
	datad => \CRC8|state_xor.s5~q\,
	combout => \CRC8|sig_correlation[4]~15_combout\);

-- Location: LCCOMB_X32_Y9_N14
\CRC8|sig_correlation[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~16_combout\ = (\CRC8|state_xor.s3~q\ & (\CRC8|sig_sf_reg\(2))) # (!\CRC8|state_xor.s3~q\ & ((\CRC8|sig_correlation[4]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CRC8|state_xor.s3~q\,
	datac => \CRC8|sig_sf_reg\(2),
	datad => \CRC8|sig_correlation[4]~15_combout\,
	combout => \CRC8|sig_correlation[4]~16_combout\);

-- Location: LCCOMB_X31_Y8_N6
\CRC8|sig_correlation[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~17_combout\ = (\CRC8|state_xor.s9~q\ & (!\CRC8|state_xor.s8~q\ & (\CRC8|sig_sf_reg\(8) & !\CRC8|state_xor.s7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|state_xor.s9~q\,
	datab => \CRC8|state_xor.s8~q\,
	datac => \CRC8|sig_sf_reg\(8),
	datad => \CRC8|state_xor.s7~q\,
	combout => \CRC8|sig_correlation[4]~17_combout\);

-- Location: LCCOMB_X31_Y8_N16
\CRC8|sig_correlation[4]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~50_combout\ = (\CRC8|state_xor.s7~q\ & (((\CRC8|sig_sf_reg\(6))))) # (!\CRC8|state_xor.s7~q\ & (!\CRC8|sig_sf_reg\(7) & (\CRC8|state_xor.s8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|sig_sf_reg\(7),
	datab => \CRC8|state_xor.s8~q\,
	datac => \CRC8|sig_sf_reg\(6),
	datad => \CRC8|state_xor.s7~q\,
	combout => \CRC8|sig_correlation[4]~50_combout\);

-- Location: LCCOMB_X31_Y8_N4
\CRC8|sig_correlation[4]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~51_combout\ = (\CRC8|state_xor.s6~q\ & (((!\CRC8|sig_sf_reg\(5))))) # (!\CRC8|state_xor.s6~q\ & ((\CRC8|sig_correlation[4]~17_combout\) # ((\CRC8|sig_correlation[4]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|sig_correlation[4]~17_combout\,
	datab => \CRC8|state_xor.s6~q\,
	datac => \CRC8|sig_sf_reg\(5),
	datad => \CRC8|sig_correlation[4]~50_combout\,
	combout => \CRC8|sig_correlation[4]~51_combout\);

-- Location: LCCOMB_X31_Y8_N24
\CRC8|sig_correlation[4]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~42_combout\ = (!\CRC8|state_xor.s9~q\ & (!\CRC8|state_xor.s8~q\ & (!\CRC8|state_xor.s6~q\ & !\CRC8|state_xor.s7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|state_xor.s9~q\,
	datab => \CRC8|state_xor.s8~q\,
	datac => \CRC8|state_xor.s6~q\,
	datad => \CRC8|state_xor.s7~q\,
	combout => \CRC8|sig_correlation[4]~42_combout\);

-- Location: LCCOMB_X31_Y8_N8
\CRC8|sig_correlation[4]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~43_combout\ = (!\CRC8|state_xor.s10~q\ & (!\CRC8|state_xor.s12~q\ & !\CRC8|state_xor.s11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|state_xor.s10~q\,
	datab => \CRC8|state_xor.s12~q\,
	datad => \CRC8|state_xor.s11~q\,
	combout => \CRC8|sig_correlation[4]~43_combout\);

-- Location: LCCOMB_X31_Y8_N22
\CRC8|sig_correlation[4]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~44_combout\ = (\CRC8|sig_correlation[4]~42_combout\ & ((\CRC8|sig_correlation[4]~43_combout\) # (\CRC8|sig_correlation[4]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CRC8|sig_correlation[4]~42_combout\,
	datac => \CRC8|sig_correlation[4]~43_combout\,
	datad => \CRC8|sig_correlation[4]~19_combout\,
	combout => \CRC8|sig_correlation[4]~44_combout\);

-- Location: LCCOMB_X32_Y9_N18
\CRC8|sig_correlation[4]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~41_combout\ = (!\CRC8|state_xor.s4~q\ & (!\CRC8|state_xor.s3~q\ & !\CRC8|state_xor.s5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|state_xor.s4~q\,
	datab => \CRC8|state_xor.s3~q\,
	datad => \CRC8|state_xor.s5~q\,
	combout => \CRC8|sig_correlation[4]~41_combout\);

-- Location: LCCOMB_X32_Y9_N26
\CRC8|sig_correlation[4]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~45_combout\ = (\CRC8|sig_correlation[4]~41_combout\ & ((\CRC8|sig_correlation[4]~44_combout\) # (\CRC8|sig_correlation[4]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CRC8|sig_correlation[4]~44_combout\,
	datac => \CRC8|sig_correlation[4]~51_combout\,
	datad => \CRC8|sig_correlation[4]~41_combout\,
	combout => \CRC8|sig_correlation[4]~45_combout\);

-- Location: LCCOMB_X32_Y9_N20
\CRC8|sig_correlation[4]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~46_combout\ = (\CRC8|sig_correlation[4]~16_combout\) # ((\CRC8|sig_correlation[4]~45_combout\ & ((\CRC8|sig_correlation[4]~40_combout\) # (\CRC8|sig_correlation[4]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|sig_correlation[4]~40_combout\,
	datab => \CRC8|sig_correlation[4]~16_combout\,
	datac => \CRC8|sig_correlation[4]~51_combout\,
	datad => \CRC8|sig_correlation[4]~45_combout\,
	combout => \CRC8|sig_correlation[4]~46_combout\);

-- Location: LCCOMB_X32_Y9_N24
\CRC8|sig_correlation[4]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~48_combout\ = (\CRC8|state_xor.s2~q\ & (!\CRC8|sig_sf_reg\(1))) # (!\CRC8|state_xor.s2~q\ & ((\CRC8|sig_correlation[4]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|sig_sf_reg\(1),
	datac => \CRC8|state_xor.s2~q\,
	datad => \CRC8|sig_correlation[4]~46_combout\,
	combout => \CRC8|sig_correlation[4]~48_combout\);

-- Location: LCCOMB_X32_Y9_N4
\CRC8|sig_correlation[4]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~49_combout\ = ((\CRC8|state_xor.s1~q\ & (\CRC8|sig_sf_reg\(0))) # (!\CRC8|state_xor.s1~q\ & ((!\CRC8|sig_correlation[4]~48_combout\)))) # (!\CRC8|state_xor.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|state_xor.s0~q\,
	datab => \CRC8|state_xor.s1~q\,
	datac => \CRC8|sig_sf_reg\(0),
	datad => \CRC8|sig_correlation[4]~48_combout\,
	combout => \CRC8|sig_correlation[4]~49_combout\);

-- Location: LCCOMB_X35_Y13_N4
\CRC8|sig_correlation[4]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~47_combout\ = ((\DO|sig_main_clk_cut_not~q\ & !\DO|sig_main_clk_cut~q\)) # (!\CRC8|sig_correlation[4]~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_main_clk_cut_not~q\,
	datab => \DO|sig_main_clk_cut~q\,
	datad => \CRC8|sig_correlation[4]~49_combout\,
	combout => \CRC8|sig_correlation[4]~47_combout\);

-- Location: FF_X35_Y13_N7
\CRC8|sig_correlation[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|sig_correlation[0]~5_combout\,
	asdata => VCC,
	clrn => \resetn~input_o\,
	sload => \CRC8|sig_correlation[4]~49_combout\,
	ena => \CRC8|sig_correlation[4]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_correlation\(0));

-- Location: LCCOMB_X35_Y13_N8
\CRC8|sig_correlation[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[1]~7_combout\ = (\CRC8|sig_correlation\(1) & ((GND) # (!\CRC8|sig_correlation[0]~6\))) # (!\CRC8|sig_correlation\(1) & (\CRC8|sig_correlation[0]~6\ $ (GND)))
-- \CRC8|sig_correlation[1]~8\ = CARRY((\CRC8|sig_correlation\(1)) # (!\CRC8|sig_correlation[0]~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CRC8|sig_correlation\(1),
	datad => VCC,
	cin => \CRC8|sig_correlation[0]~6\,
	combout => \CRC8|sig_correlation[1]~7_combout\,
	cout => \CRC8|sig_correlation[1]~8\);

-- Location: FF_X35_Y13_N9
\CRC8|sig_correlation[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|sig_correlation[1]~7_combout\,
	asdata => VCC,
	clrn => \resetn~input_o\,
	sload => \CRC8|sig_correlation[4]~49_combout\,
	ena => \CRC8|sig_correlation[4]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_correlation\(1));

-- Location: LCCOMB_X35_Y13_N10
\CRC8|sig_correlation[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[2]~9_combout\ = (\CRC8|sig_correlation\(2) & (\CRC8|sig_correlation[1]~8\ & VCC)) # (!\CRC8|sig_correlation\(2) & (!\CRC8|sig_correlation[1]~8\))
-- \CRC8|sig_correlation[2]~10\ = CARRY((!\CRC8|sig_correlation\(2) & !\CRC8|sig_correlation[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|sig_correlation\(2),
	datad => VCC,
	cin => \CRC8|sig_correlation[1]~8\,
	combout => \CRC8|sig_correlation[2]~9_combout\,
	cout => \CRC8|sig_correlation[2]~10\);

-- Location: FF_X35_Y13_N11
\CRC8|sig_correlation[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|sig_correlation[2]~9_combout\,
	asdata => VCC,
	clrn => \resetn~input_o\,
	sload => \CRC8|sig_correlation[4]~49_combout\,
	ena => \CRC8|sig_correlation[4]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_correlation\(2));

-- Location: LCCOMB_X35_Y13_N12
\CRC8|sig_correlation[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[3]~11_combout\ = (\CRC8|sig_correlation\(3) & ((GND) # (!\CRC8|sig_correlation[2]~10\))) # (!\CRC8|sig_correlation\(3) & (\CRC8|sig_correlation[2]~10\ $ (GND)))
-- \CRC8|sig_correlation[3]~12\ = CARRY((\CRC8|sig_correlation\(3)) # (!\CRC8|sig_correlation[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|sig_correlation\(3),
	datad => VCC,
	cin => \CRC8|sig_correlation[2]~10\,
	combout => \CRC8|sig_correlation[3]~11_combout\,
	cout => \CRC8|sig_correlation[3]~12\);

-- Location: FF_X35_Y13_N13
\CRC8|sig_correlation[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|sig_correlation[3]~11_combout\,
	asdata => VCC,
	clrn => \resetn~input_o\,
	sload => \CRC8|sig_correlation[4]~49_combout\,
	ena => \CRC8|sig_correlation[4]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_correlation\(3));

-- Location: LCCOMB_X35_Y13_N14
\CRC8|sig_correlation[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|sig_correlation[4]~13_combout\ = \CRC8|sig_correlation\(4) $ (!\CRC8|sig_correlation[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CRC8|sig_correlation\(4),
	cin => \CRC8|sig_correlation[3]~12\,
	combout => \CRC8|sig_correlation[4]~13_combout\);

-- Location: FF_X35_Y13_N15
\CRC8|sig_correlation[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|sig_correlation[4]~13_combout\,
	asdata => VCC,
	clrn => \resetn~input_o\,
	sload => \CRC8|sig_correlation[4]~49_combout\,
	ena => \CRC8|sig_correlation[4]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|sig_correlation\(4));

-- Location: LCCOMB_X38_Y13_N24
\DO|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|LessThan0~0_combout\ = (\CRC8|sig_correlation\(2) & (\CRC8|sig_correlation\(3) & ((\CRC8|sig_correlation\(1)) # (\CRC8|sig_correlation\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|sig_correlation\(2),
	datab => \CRC8|sig_correlation\(3),
	datac => \CRC8|sig_correlation\(1),
	datad => \CRC8|sig_correlation\(0),
	combout => \DO|LessThan0~0_combout\);

-- Location: LCCOMB_X35_Y13_N22
\CRC8|Selector37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|Selector37~0_combout\ = (!\CRC8|state_crc.s4~q\ & ((\CRC8|state_crc.s0~q\) # ((\CRC8|sig_correlation\(4) & \DO|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|state_crc.s4~q\,
	datab => \CRC8|sig_correlation\(4),
	datac => \CRC8|state_crc.s0~q\,
	datad => \DO|LessThan0~0_combout\,
	combout => \CRC8|Selector37~0_combout\);

-- Location: FF_X35_Y13_N23
\CRC8|state_crc.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|Selector37~0_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_crc.s0~q\);

-- Location: LCCOMB_X35_Y13_N16
\CRC8|Selector38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|Selector38~0_combout\ = (!\CRC8|state_crc.s0~q\ & (\CRC8|sig_correlation\(4) & \DO|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|state_crc.s0~q\,
	datac => \CRC8|sig_correlation\(4),
	datad => \DO|LessThan0~0_combout\,
	combout => \CRC8|Selector38~0_combout\);

-- Location: LCCOMB_X36_Y11_N26
\CRC8|Selector38~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|Selector38~1_combout\ = (\CRC8|Selector38~0_combout\) # ((\CRC8|state_crc.s1~q\ & ((!\CRC8|Equal0~0_combout\) # (!\CRC8|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|Equal0~1_combout\,
	datab => \CRC8|Equal0~0_combout\,
	datac => \CRC8|state_crc.s1~q\,
	datad => \CRC8|Selector38~0_combout\,
	combout => \CRC8|Selector38~1_combout\);

-- Location: FF_X36_Y11_N27
\CRC8|state_crc.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|Selector38~1_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_crc.s1~q\);

-- Location: LCCOMB_X35_Y13_N2
\CRC8|crc8bit_operation:cnt[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|crc8bit_operation:cnt[7]~0_combout\ = (\resetn~input_o\ & (\DO|sig_main_clk_cut~q\ & (!\DO|sig_main_clk_cut_not~q\ & \CRC8|state_crc.s1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~input_o\,
	datab => \DO|sig_main_clk_cut~q\,
	datac => \DO|sig_main_clk_cut_not~q\,
	datad => \CRC8|state_crc.s1~q\,
	combout => \CRC8|crc8bit_operation:cnt[7]~0_combout\);

-- Location: FF_X36_Y11_N29
\CRC8|crc8bit_operation:cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|cnt~0_combout\,
	ena => \CRC8|crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|crc8bit_operation:cnt[3]~q\);

-- Location: LCCOMB_X36_Y11_N0
\CRC8|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|Add1~0_combout\ = \CRC8|crc8bit_operation:cnt[0]~q\ $ (VCC)
-- \CRC8|Add1~1\ = CARRY(\CRC8|crc8bit_operation:cnt[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|crc8bit_operation:cnt[0]~q\,
	datad => VCC,
	combout => \CRC8|Add1~0_combout\,
	cout => \CRC8|Add1~1\);

-- Location: FF_X36_Y11_N1
\CRC8|crc8bit_operation:cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|Add1~0_combout\,
	ena => \CRC8|crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|crc8bit_operation:cnt[0]~q\);

-- Location: LCCOMB_X36_Y11_N2
\CRC8|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|Add1~2_combout\ = (\CRC8|crc8bit_operation:cnt[1]~q\ & (!\CRC8|Add1~1\)) # (!\CRC8|crc8bit_operation:cnt[1]~q\ & ((\CRC8|Add1~1\) # (GND)))
-- \CRC8|Add1~3\ = CARRY((!\CRC8|Add1~1\) # (!\CRC8|crc8bit_operation:cnt[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CRC8|crc8bit_operation:cnt[1]~q\,
	datad => VCC,
	cin => \CRC8|Add1~1\,
	combout => \CRC8|Add1~2_combout\,
	cout => \CRC8|Add1~3\);

-- Location: FF_X36_Y11_N3
\CRC8|crc8bit_operation:cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|Add1~2_combout\,
	ena => \CRC8|crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|crc8bit_operation:cnt[1]~q\);

-- Location: LCCOMB_X36_Y11_N4
\CRC8|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|Add1~4_combout\ = (\CRC8|crc8bit_operation:cnt[2]~q\ & (\CRC8|Add1~3\ $ (GND))) # (!\CRC8|crc8bit_operation:cnt[2]~q\ & (!\CRC8|Add1~3\ & VCC))
-- \CRC8|Add1~5\ = CARRY((\CRC8|crc8bit_operation:cnt[2]~q\ & !\CRC8|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CRC8|crc8bit_operation:cnt[2]~q\,
	datad => VCC,
	cin => \CRC8|Add1~3\,
	combout => \CRC8|Add1~4_combout\,
	cout => \CRC8|Add1~5\);

-- Location: FF_X36_Y11_N5
\CRC8|crc8bit_operation:cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|Add1~4_combout\,
	ena => \CRC8|crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|crc8bit_operation:cnt[2]~q\);

-- Location: LCCOMB_X36_Y11_N6
\CRC8|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|Add1~6_combout\ = (\CRC8|crc8bit_operation:cnt[3]~q\ & (!\CRC8|Add1~5\)) # (!\CRC8|crc8bit_operation:cnt[3]~q\ & ((\CRC8|Add1~5\) # (GND)))
-- \CRC8|Add1~7\ = CARRY((!\CRC8|Add1~5\) # (!\CRC8|crc8bit_operation:cnt[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CRC8|crc8bit_operation:cnt[3]~q\,
	datad => VCC,
	cin => \CRC8|Add1~5\,
	combout => \CRC8|Add1~6_combout\,
	cout => \CRC8|Add1~7\);

-- Location: LCCOMB_X36_Y11_N30
\CRC8|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|Equal0~0_combout\ = (\CRC8|Add1~6_combout\ & (!\CRC8|Add1~2_combout\ & (!\CRC8|Add1~4_combout\ & !\CRC8|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|Add1~6_combout\,
	datab => \CRC8|Add1~2_combout\,
	datac => \CRC8|Add1~4_combout\,
	datad => \CRC8|Add1~0_combout\,
	combout => \CRC8|Equal0~0_combout\);

-- Location: LCCOMB_X36_Y11_N18
\CRC8|cnt~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|cnt~2_combout\ = (\CRC8|Add1~12_combout\ & ((!\CRC8|Equal0~0_combout\) # (!\CRC8|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|Equal0~1_combout\,
	datac => \CRC8|Equal0~0_combout\,
	datad => \CRC8|Add1~12_combout\,
	combout => \CRC8|cnt~2_combout\);

-- Location: FF_X36_Y11_N19
\CRC8|crc8bit_operation:cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|cnt~2_combout\,
	ena => \CRC8|crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|crc8bit_operation:cnt[6]~q\);

-- Location: LCCOMB_X36_Y11_N8
\CRC8|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|Add1~8_combout\ = (\CRC8|crc8bit_operation:cnt[4]~q\ & (\CRC8|Add1~7\ $ (GND))) # (!\CRC8|crc8bit_operation:cnt[4]~q\ & (!\CRC8|Add1~7\ & VCC))
-- \CRC8|Add1~9\ = CARRY((\CRC8|crc8bit_operation:cnt[4]~q\ & !\CRC8|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CRC8|crc8bit_operation:cnt[4]~q\,
	datad => VCC,
	cin => \CRC8|Add1~7\,
	combout => \CRC8|Add1~8_combout\,
	cout => \CRC8|Add1~9\);

-- Location: LCCOMB_X36_Y11_N24
\CRC8|cnt~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|cnt~1_combout\ = (\CRC8|Add1~8_combout\ & ((!\CRC8|Equal0~1_combout\) # (!\CRC8|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|Equal0~0_combout\,
	datab => \CRC8|Add1~8_combout\,
	datac => \CRC8|Equal0~1_combout\,
	combout => \CRC8|cnt~1_combout\);

-- Location: FF_X36_Y11_N25
\CRC8|crc8bit_operation:cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|cnt~1_combout\,
	ena => \CRC8|crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|crc8bit_operation:cnt[4]~q\);

-- Location: LCCOMB_X36_Y11_N10
\CRC8|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|Add1~10_combout\ = (\CRC8|crc8bit_operation:cnt[5]~q\ & (!\CRC8|Add1~9\)) # (!\CRC8|crc8bit_operation:cnt[5]~q\ & ((\CRC8|Add1~9\) # (GND)))
-- \CRC8|Add1~11\ = CARRY((!\CRC8|Add1~9\) # (!\CRC8|crc8bit_operation:cnt[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CRC8|crc8bit_operation:cnt[5]~q\,
	datad => VCC,
	cin => \CRC8|Add1~9\,
	combout => \CRC8|Add1~10_combout\,
	cout => \CRC8|Add1~11\);

-- Location: FF_X36_Y11_N11
\CRC8|crc8bit_operation:cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|Add1~10_combout\,
	ena => \CRC8|crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|crc8bit_operation:cnt[5]~q\);

-- Location: LCCOMB_X36_Y11_N12
\CRC8|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|Add1~12_combout\ = (\CRC8|crc8bit_operation:cnt[6]~q\ & (\CRC8|Add1~11\ $ (GND))) # (!\CRC8|crc8bit_operation:cnt[6]~q\ & (!\CRC8|Add1~11\ & VCC))
-- \CRC8|Add1~13\ = CARRY((\CRC8|crc8bit_operation:cnt[6]~q\ & !\CRC8|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CRC8|crc8bit_operation:cnt[6]~q\,
	datad => VCC,
	cin => \CRC8|Add1~11\,
	combout => \CRC8|Add1~12_combout\,
	cout => \CRC8|Add1~13\);

-- Location: LCCOMB_X36_Y11_N20
\CRC8|cnt~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|cnt~3_combout\ = (\CRC8|Add1~14_combout\ & ((!\CRC8|Equal0~1_combout\) # (!\CRC8|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|Equal0~0_combout\,
	datab => \CRC8|Add1~14_combout\,
	datac => \CRC8|Equal0~1_combout\,
	combout => \CRC8|cnt~3_combout\);

-- Location: FF_X36_Y11_N21
\CRC8|crc8bit_operation:cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|cnt~3_combout\,
	ena => \CRC8|crc8bit_operation:cnt[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|crc8bit_operation:cnt[7]~q\);

-- Location: LCCOMB_X36_Y11_N14
\CRC8|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|Add1~14_combout\ = \CRC8|Add1~13\ $ (\CRC8|crc8bit_operation:cnt[7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CRC8|crc8bit_operation:cnt[7]~q\,
	cin => \CRC8|Add1~13\,
	combout => \CRC8|Add1~14_combout\);

-- Location: LCCOMB_X36_Y11_N22
\CRC8|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|Equal0~1_combout\ = (\CRC8|Add1~12_combout\ & (\CRC8|Add1~14_combout\ & (\CRC8|Add1~8_combout\ & !\CRC8|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|Add1~12_combout\,
	datab => \CRC8|Add1~14_combout\,
	datac => \CRC8|Add1~8_combout\,
	datad => \CRC8|Add1~10_combout\,
	combout => \CRC8|Equal0~1_combout\);

-- Location: LCCOMB_X36_Y11_N16
\CRC8|Selector39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|Selector39~0_combout\ = (\CRC8|Equal0~1_combout\ & (\CRC8|state_crc.s1~q\ & \CRC8|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|Equal0~1_combout\,
	datac => \CRC8|state_crc.s1~q\,
	datad => \CRC8|Equal0~0_combout\,
	combout => \CRC8|Selector39~0_combout\);

-- Location: FF_X36_Y11_N17
\CRC8|state_crc.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|Selector39~0_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|state_crc.s2~q\);

-- Location: LCCOMB_X36_Y13_N26
\CRC8|crc8bit_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|crc8bit_out~0_combout\ = (\DO|sig_main_clk_cut~q\ & (!\DO|sig_main_clk_cut_not~q\ & \CRC8|state_crc.s2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_main_clk_cut~q\,
	datac => \DO|sig_main_clk_cut_not~q\,
	datad => \CRC8|state_crc.s2~q\,
	combout => \CRC8|crc8bit_out~0_combout\);

-- Location: LCCOMB_X36_Y13_N4
\CRC8|Selector42~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|Selector42~0_combout\ = (\CRC8|state_crc.s1~q\ & (\CRC8|crc_reg8bit\(6))) # (!\CRC8|state_crc.s1~q\ & (((\CRC8|crc_reg8bit\(7) & !\CRC8|state_crc.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|crc_reg8bit\(6),
	datab => \CRC8|state_crc.s1~q\,
	datac => \CRC8|crc_reg8bit\(7),
	datad => \CRC8|state_crc.s3~q\,
	combout => \CRC8|Selector42~0_combout\);

-- Location: FF_X36_Y13_N5
\CRC8|crc_reg8bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|Selector42~0_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|crc_reg8bit\(7));

-- Location: LCCOMB_X35_Y13_N18
\CRC8|Selector49~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|Selector49~0_combout\ = (\CRC8|state_crc.s1~q\ & (\Simple|nrzl_data~q\ $ (\CRC8|crc_reg8bit\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CRC8|state_crc.s1~q\,
	datac => \Simple|nrzl_data~q\,
	datad => \CRC8|crc_reg8bit\(7),
	combout => \CRC8|Selector49~0_combout\);

-- Location: LCCOMB_X35_Y13_N26
\CRC8|Selector49~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|Selector49~1_combout\ = (\CRC8|Selector49~0_combout\) # ((!\CRC8|state_crc.s3~q\ & (!\CRC8|state_crc.s1~q\ & \CRC8|crc_reg8bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|state_crc.s3~q\,
	datab => \CRC8|state_crc.s1~q\,
	datac => \CRC8|crc_reg8bit\(0),
	datad => \CRC8|Selector49~0_combout\,
	combout => \CRC8|Selector49~1_combout\);

-- Location: FF_X35_Y13_N27
\CRC8|crc_reg8bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|Selector49~1_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|crc_reg8bit\(0));

-- Location: LCCOMB_X35_Y13_N24
\CRC8|Selector48~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|Selector48~0_combout\ = (\CRC8|state_crc.s1~q\ & (\CRC8|crc_reg8bit\(7) $ (\CRC8|crc_reg8bit\(0) $ (\Simple|nrzl_data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|crc_reg8bit\(7),
	datab => \CRC8|crc_reg8bit\(0),
	datac => \Simple|nrzl_data~q\,
	datad => \CRC8|state_crc.s1~q\,
	combout => \CRC8|Selector48~0_combout\);

-- Location: LCCOMB_X35_Y13_N0
\CRC8|Selector48~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|Selector48~1_combout\ = (\CRC8|Selector48~0_combout\) # ((!\CRC8|state_crc.s3~q\ & (\CRC8|crc_reg8bit\(1) & !\CRC8|state_crc.s1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|state_crc.s3~q\,
	datab => \CRC8|Selector48~0_combout\,
	datac => \CRC8|crc_reg8bit\(1),
	datad => \CRC8|state_crc.s1~q\,
	combout => \CRC8|Selector48~1_combout\);

-- Location: FF_X35_Y13_N1
\CRC8|crc_reg8bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|Selector48~1_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|crc_reg8bit\(1));

-- Location: LCCOMB_X35_Y13_N20
\CRC8|Selector47~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|Selector47~0_combout\ = (\CRC8|state_crc.s1~q\ & (\CRC8|crc_reg8bit\(7) $ (\CRC8|crc_reg8bit\(1) $ (\Simple|nrzl_data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|crc_reg8bit\(7),
	datab => \CRC8|crc_reg8bit\(1),
	datac => \Simple|nrzl_data~q\,
	datad => \CRC8|state_crc.s1~q\,
	combout => \CRC8|Selector47~0_combout\);

-- Location: LCCOMB_X36_Y13_N16
\CRC8|Selector47~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|Selector47~1_combout\ = (\CRC8|Selector47~0_combout\) # ((!\CRC8|state_crc.s1~q\ & (\CRC8|crc_reg8bit\(2) & !\CRC8|state_crc.s3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|Selector47~0_combout\,
	datab => \CRC8|state_crc.s1~q\,
	datac => \CRC8|crc_reg8bit\(2),
	datad => \CRC8|state_crc.s3~q\,
	combout => \CRC8|Selector47~1_combout\);

-- Location: FF_X36_Y13_N17
\CRC8|crc_reg8bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|Selector47~1_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|crc_reg8bit\(2));

-- Location: LCCOMB_X36_Y13_N6
\CRC8|Selector46~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|Selector46~0_combout\ = (\CRC8|state_crc.s1~q\ & (\CRC8|crc_reg8bit\(2))) # (!\CRC8|state_crc.s1~q\ & (((\CRC8|crc_reg8bit\(3) & !\CRC8|state_crc.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|state_crc.s1~q\,
	datab => \CRC8|crc_reg8bit\(2),
	datac => \CRC8|crc_reg8bit\(3),
	datad => \CRC8|state_crc.s3~q\,
	combout => \CRC8|Selector46~0_combout\);

-- Location: FF_X36_Y13_N7
\CRC8|crc_reg8bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|Selector46~0_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|crc_reg8bit\(3));

-- Location: LCCOMB_X36_Y13_N10
\CRC8|Selector45~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|Selector45~0_combout\ = (\CRC8|state_crc.s1~q\ & (\CRC8|crc_reg8bit\(3))) # (!\CRC8|state_crc.s1~q\ & (((\CRC8|crc_reg8bit\(4) & !\CRC8|state_crc.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|crc_reg8bit\(3),
	datab => \CRC8|state_crc.s1~q\,
	datac => \CRC8|crc_reg8bit\(4),
	datad => \CRC8|state_crc.s3~q\,
	combout => \CRC8|Selector45~0_combout\);

-- Location: FF_X36_Y13_N11
\CRC8|crc_reg8bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|Selector45~0_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|crc_reg8bit\(4));

-- Location: LCCOMB_X36_Y13_N24
\CRC8|Selector44~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|Selector44~0_combout\ = (\CRC8|state_crc.s1~q\ & (\CRC8|crc_reg8bit\(4))) # (!\CRC8|state_crc.s1~q\ & (((\CRC8|crc_reg8bit\(5) & !\CRC8|state_crc.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|crc_reg8bit\(4),
	datab => \CRC8|state_crc.s1~q\,
	datac => \CRC8|crc_reg8bit\(5),
	datad => \CRC8|state_crc.s3~q\,
	combout => \CRC8|Selector44~0_combout\);

-- Location: FF_X36_Y13_N25
\CRC8|crc_reg8bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|Selector44~0_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|crc_reg8bit\(5));

-- Location: LCCOMB_X36_Y13_N22
\CRC8|Selector43~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|Selector43~0_combout\ = (\CRC8|state_crc.s1~q\ & (\CRC8|crc_reg8bit\(5))) # (!\CRC8|state_crc.s1~q\ & (((\CRC8|crc_reg8bit\(6) & !\CRC8|state_crc.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|state_crc.s1~q\,
	datab => \CRC8|crc_reg8bit\(5),
	datac => \CRC8|crc_reg8bit\(6),
	datad => \CRC8|state_crc.s3~q\,
	combout => \CRC8|Selector43~0_combout\);

-- Location: FF_X36_Y13_N23
\CRC8|crc_reg8bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|Selector43~0_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|crc_reg8bit\(6));

-- Location: LCCOMB_X36_Y13_N28
\CRC8|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|Equal1~0_combout\ = (!\CRC8|crc_reg8bit\(6) & (!\CRC8|crc_reg8bit\(5) & (!\CRC8|crc_reg8bit\(7) & !\CRC8|crc_reg8bit\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|crc_reg8bit\(6),
	datab => \CRC8|crc_reg8bit\(5),
	datac => \CRC8|crc_reg8bit\(7),
	datad => \CRC8|crc_reg8bit\(4),
	combout => \CRC8|Equal1~0_combout\);

-- Location: LCCOMB_X36_Y13_N18
\CRC8|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|Equal1~1_combout\ = (!\CRC8|crc_reg8bit\(0) & (!\CRC8|crc_reg8bit\(2) & (!\CRC8|crc_reg8bit\(1) & !\CRC8|crc_reg8bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|crc_reg8bit\(0),
	datab => \CRC8|crc_reg8bit\(2),
	datac => \CRC8|crc_reg8bit\(1),
	datad => \CRC8|crc_reg8bit\(3),
	combout => \CRC8|Equal1~1_combout\);

-- Location: LCCOMB_X36_Y13_N0
\CRC8|crc8bit_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CRC8|crc8bit_out~1_combout\ = (\CRC8|crc8bit_out~0_combout\ & (\CRC8|Equal1~0_combout\ & ((\CRC8|Equal1~1_combout\)))) # (!\CRC8|crc8bit_out~0_combout\ & (((\CRC8|crc8bit_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRC8|crc8bit_out~0_combout\,
	datab => \CRC8|Equal1~0_combout\,
	datac => \CRC8|crc8bit_out~q\,
	datad => \CRC8|Equal1~1_combout\,
	combout => \CRC8|crc8bit_out~1_combout\);

-- Location: FF_X36_Y13_N1
\CRC8|crc8bit_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \CRC8|crc8bit_out~1_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CRC8|crc8bit_out~q\);

-- Location: LCCOMB_X35_Y25_N12
\DO|sig_cnt[0]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[0]~101_combout\ = \DO|sig_cnt\(0) $ (VCC)
-- \DO|sig_cnt[0]~102\ = CARRY(\DO|sig_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(0),
	datad => VCC,
	combout => \DO|sig_cnt[0]~101_combout\,
	cout => \DO|sig_cnt[0]~102\);

-- Location: LCCOMB_X35_Y25_N8
\DO|sig_cnt[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[0]~feeder_combout\ = \DO|sig_cnt[0]~101_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_cnt[0]~101_combout\,
	combout => \DO|sig_cnt[0]~feeder_combout\);

-- Location: LCCOMB_X35_Y25_N22
\DO|sig_cnt[5]~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[5]~114_combout\ = (\DO|sig_cnt\(5) & (!\DO|sig_cnt[4]~113\)) # (!\DO|sig_cnt\(5) & ((\DO|sig_cnt[4]~113\) # (GND)))
-- \DO|sig_cnt[5]~115\ = CARRY((!\DO|sig_cnt[4]~113\) # (!\DO|sig_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(5),
	datad => VCC,
	cin => \DO|sig_cnt[4]~113\,
	combout => \DO|sig_cnt[5]~114_combout\,
	cout => \DO|sig_cnt[5]~115\);

-- Location: LCCOMB_X35_Y25_N24
\DO|sig_cnt[6]~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[6]~116_combout\ = (\DO|sig_cnt\(6) & (\DO|sig_cnt[5]~115\ $ (GND))) # (!\DO|sig_cnt\(6) & (!\DO|sig_cnt[5]~115\ & VCC))
-- \DO|sig_cnt[6]~117\ = CARRY((\DO|sig_cnt\(6) & !\DO|sig_cnt[5]~115\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(6),
	datad => VCC,
	cin => \DO|sig_cnt[5]~115\,
	combout => \DO|sig_cnt[6]~116_combout\,
	cout => \DO|sig_cnt[6]~117\);

-- Location: LCCOMB_X34_Y20_N30
\DO|sig_cnt[100]~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[100]~107_combout\ = (\DO|sig_main_clk_r~combout\ & ((\DO|state_Do.s2~q\) # ((\DO|state_Do.s1~q\) # (\DO|state_Do.s5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|state_Do.s2~q\,
	datab => \DO|state_Do.s1~q\,
	datac => \DO|sig_main_clk_r~combout\,
	datad => \DO|state_Do.s5~q\,
	combout => \DO|sig_cnt[100]~107_combout\);

-- Location: FF_X35_Y25_N25
\DO|sig_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[6]~116_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(6));

-- Location: LCCOMB_X35_Y25_N26
\DO|sig_cnt[7]~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[7]~118_combout\ = (\DO|sig_cnt\(7) & (!\DO|sig_cnt[6]~117\)) # (!\DO|sig_cnt\(7) & ((\DO|sig_cnt[6]~117\) # (GND)))
-- \DO|sig_cnt[7]~119\ = CARRY((!\DO|sig_cnt[6]~117\) # (!\DO|sig_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(7),
	datad => VCC,
	cin => \DO|sig_cnt[6]~117\,
	combout => \DO|sig_cnt[7]~118_combout\,
	cout => \DO|sig_cnt[7]~119\);

-- Location: FF_X35_Y25_N27
\DO|sig_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[7]~118_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(7));

-- Location: LCCOMB_X35_Y25_N28
\DO|sig_cnt[8]~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[8]~120_combout\ = (\DO|sig_cnt\(8) & (\DO|sig_cnt[7]~119\ $ (GND))) # (!\DO|sig_cnt\(8) & (!\DO|sig_cnt[7]~119\ & VCC))
-- \DO|sig_cnt[8]~121\ = CARRY((\DO|sig_cnt\(8) & !\DO|sig_cnt[7]~119\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(8),
	datad => VCC,
	cin => \DO|sig_cnt[7]~119\,
	combout => \DO|sig_cnt[8]~120_combout\,
	cout => \DO|sig_cnt[8]~121\);

-- Location: FF_X35_Y25_N29
\DO|sig_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[8]~120_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(8));

-- Location: LCCOMB_X35_Y25_N30
\DO|sig_cnt[9]~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[9]~122_combout\ = (\DO|sig_cnt\(9) & (!\DO|sig_cnt[8]~121\)) # (!\DO|sig_cnt\(9) & ((\DO|sig_cnt[8]~121\) # (GND)))
-- \DO|sig_cnt[9]~123\ = CARRY((!\DO|sig_cnt[8]~121\) # (!\DO|sig_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(9),
	datad => VCC,
	cin => \DO|sig_cnt[8]~121\,
	combout => \DO|sig_cnt[9]~122_combout\,
	cout => \DO|sig_cnt[9]~123\);

-- Location: FF_X35_Y25_N31
\DO|sig_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[9]~122_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(9));

-- Location: LCCOMB_X35_Y24_N0
\DO|sig_cnt[10]~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[10]~124_combout\ = (\DO|sig_cnt\(10) & (\DO|sig_cnt[9]~123\ $ (GND))) # (!\DO|sig_cnt\(10) & (!\DO|sig_cnt[9]~123\ & VCC))
-- \DO|sig_cnt[10]~125\ = CARRY((\DO|sig_cnt\(10) & !\DO|sig_cnt[9]~123\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(10),
	datad => VCC,
	cin => \DO|sig_cnt[9]~123\,
	combout => \DO|sig_cnt[10]~124_combout\,
	cout => \DO|sig_cnt[10]~125\);

-- Location: FF_X35_Y24_N1
\DO|sig_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[10]~124_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(10));

-- Location: LCCOMB_X35_Y24_N2
\DO|sig_cnt[11]~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[11]~126_combout\ = (\DO|sig_cnt\(11) & (!\DO|sig_cnt[10]~125\)) # (!\DO|sig_cnt\(11) & ((\DO|sig_cnt[10]~125\) # (GND)))
-- \DO|sig_cnt[11]~127\ = CARRY((!\DO|sig_cnt[10]~125\) # (!\DO|sig_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(11),
	datad => VCC,
	cin => \DO|sig_cnt[10]~125\,
	combout => \DO|sig_cnt[11]~126_combout\,
	cout => \DO|sig_cnt[11]~127\);

-- Location: FF_X35_Y24_N3
\DO|sig_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[11]~126_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(11));

-- Location: LCCOMB_X35_Y24_N4
\DO|sig_cnt[12]~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[12]~128_combout\ = (\DO|sig_cnt\(12) & (\DO|sig_cnt[11]~127\ $ (GND))) # (!\DO|sig_cnt\(12) & (!\DO|sig_cnt[11]~127\ & VCC))
-- \DO|sig_cnt[12]~129\ = CARRY((\DO|sig_cnt\(12) & !\DO|sig_cnt[11]~127\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(12),
	datad => VCC,
	cin => \DO|sig_cnt[11]~127\,
	combout => \DO|sig_cnt[12]~128_combout\,
	cout => \DO|sig_cnt[12]~129\);

-- Location: FF_X35_Y24_N5
\DO|sig_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[12]~128_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(12));

-- Location: LCCOMB_X35_Y24_N6
\DO|sig_cnt[13]~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[13]~130_combout\ = (\DO|sig_cnt\(13) & (!\DO|sig_cnt[12]~129\)) # (!\DO|sig_cnt\(13) & ((\DO|sig_cnt[12]~129\) # (GND)))
-- \DO|sig_cnt[13]~131\ = CARRY((!\DO|sig_cnt[12]~129\) # (!\DO|sig_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(13),
	datad => VCC,
	cin => \DO|sig_cnt[12]~129\,
	combout => \DO|sig_cnt[13]~130_combout\,
	cout => \DO|sig_cnt[13]~131\);

-- Location: FF_X35_Y24_N7
\DO|sig_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[13]~130_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(13));

-- Location: LCCOMB_X35_Y24_N8
\DO|sig_cnt[14]~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[14]~132_combout\ = (\DO|sig_cnt\(14) & (\DO|sig_cnt[13]~131\ $ (GND))) # (!\DO|sig_cnt\(14) & (!\DO|sig_cnt[13]~131\ & VCC))
-- \DO|sig_cnt[14]~133\ = CARRY((\DO|sig_cnt\(14) & !\DO|sig_cnt[13]~131\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(14),
	datad => VCC,
	cin => \DO|sig_cnt[13]~131\,
	combout => \DO|sig_cnt[14]~132_combout\,
	cout => \DO|sig_cnt[14]~133\);

-- Location: FF_X35_Y24_N9
\DO|sig_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[14]~132_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(14));

-- Location: LCCOMB_X35_Y24_N10
\DO|sig_cnt[15]~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[15]~134_combout\ = (\DO|sig_cnt\(15) & (!\DO|sig_cnt[14]~133\)) # (!\DO|sig_cnt\(15) & ((\DO|sig_cnt[14]~133\) # (GND)))
-- \DO|sig_cnt[15]~135\ = CARRY((!\DO|sig_cnt[14]~133\) # (!\DO|sig_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(15),
	datad => VCC,
	cin => \DO|sig_cnt[14]~133\,
	combout => \DO|sig_cnt[15]~134_combout\,
	cout => \DO|sig_cnt[15]~135\);

-- Location: FF_X35_Y24_N11
\DO|sig_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[15]~134_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(15));

-- Location: LCCOMB_X35_Y24_N12
\DO|sig_cnt[16]~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[16]~136_combout\ = (\DO|sig_cnt\(16) & (\DO|sig_cnt[15]~135\ $ (GND))) # (!\DO|sig_cnt\(16) & (!\DO|sig_cnt[15]~135\ & VCC))
-- \DO|sig_cnt[16]~137\ = CARRY((\DO|sig_cnt\(16) & !\DO|sig_cnt[15]~135\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(16),
	datad => VCC,
	cin => \DO|sig_cnt[15]~135\,
	combout => \DO|sig_cnt[16]~136_combout\,
	cout => \DO|sig_cnt[16]~137\);

-- Location: FF_X35_Y24_N13
\DO|sig_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[16]~136_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(16));

-- Location: LCCOMB_X35_Y24_N14
\DO|sig_cnt[17]~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[17]~138_combout\ = (\DO|sig_cnt\(17) & (!\DO|sig_cnt[16]~137\)) # (!\DO|sig_cnt\(17) & ((\DO|sig_cnt[16]~137\) # (GND)))
-- \DO|sig_cnt[17]~139\ = CARRY((!\DO|sig_cnt[16]~137\) # (!\DO|sig_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(17),
	datad => VCC,
	cin => \DO|sig_cnt[16]~137\,
	combout => \DO|sig_cnt[17]~138_combout\,
	cout => \DO|sig_cnt[17]~139\);

-- Location: FF_X35_Y24_N15
\DO|sig_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[17]~138_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(17));

-- Location: LCCOMB_X35_Y24_N16
\DO|sig_cnt[18]~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[18]~140_combout\ = (\DO|sig_cnt\(18) & (\DO|sig_cnt[17]~139\ $ (GND))) # (!\DO|sig_cnt\(18) & (!\DO|sig_cnt[17]~139\ & VCC))
-- \DO|sig_cnt[18]~141\ = CARRY((\DO|sig_cnt\(18) & !\DO|sig_cnt[17]~139\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(18),
	datad => VCC,
	cin => \DO|sig_cnt[17]~139\,
	combout => \DO|sig_cnt[18]~140_combout\,
	cout => \DO|sig_cnt[18]~141\);

-- Location: FF_X35_Y24_N17
\DO|sig_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[18]~140_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(18));

-- Location: LCCOMB_X35_Y24_N18
\DO|sig_cnt[19]~142\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[19]~142_combout\ = (\DO|sig_cnt\(19) & (!\DO|sig_cnt[18]~141\)) # (!\DO|sig_cnt\(19) & ((\DO|sig_cnt[18]~141\) # (GND)))
-- \DO|sig_cnt[19]~143\ = CARRY((!\DO|sig_cnt[18]~141\) # (!\DO|sig_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(19),
	datad => VCC,
	cin => \DO|sig_cnt[18]~141\,
	combout => \DO|sig_cnt[19]~142_combout\,
	cout => \DO|sig_cnt[19]~143\);

-- Location: FF_X35_Y24_N19
\DO|sig_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[19]~142_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(19));

-- Location: LCCOMB_X35_Y24_N20
\DO|sig_cnt[20]~144\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[20]~144_combout\ = (\DO|sig_cnt\(20) & (\DO|sig_cnt[19]~143\ $ (GND))) # (!\DO|sig_cnt\(20) & (!\DO|sig_cnt[19]~143\ & VCC))
-- \DO|sig_cnt[20]~145\ = CARRY((\DO|sig_cnt\(20) & !\DO|sig_cnt[19]~143\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(20),
	datad => VCC,
	cin => \DO|sig_cnt[19]~143\,
	combout => \DO|sig_cnt[20]~144_combout\,
	cout => \DO|sig_cnt[20]~145\);

-- Location: FF_X35_Y24_N21
\DO|sig_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[20]~144_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(20));

-- Location: LCCOMB_X35_Y24_N22
\DO|sig_cnt[21]~146\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[21]~146_combout\ = (\DO|sig_cnt\(21) & (!\DO|sig_cnt[20]~145\)) # (!\DO|sig_cnt\(21) & ((\DO|sig_cnt[20]~145\) # (GND)))
-- \DO|sig_cnt[21]~147\ = CARRY((!\DO|sig_cnt[20]~145\) # (!\DO|sig_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(21),
	datad => VCC,
	cin => \DO|sig_cnt[20]~145\,
	combout => \DO|sig_cnt[21]~146_combout\,
	cout => \DO|sig_cnt[21]~147\);

-- Location: FF_X35_Y24_N23
\DO|sig_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[21]~146_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(21));

-- Location: LCCOMB_X35_Y24_N24
\DO|sig_cnt[22]~148\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[22]~148_combout\ = (\DO|sig_cnt\(22) & (\DO|sig_cnt[21]~147\ $ (GND))) # (!\DO|sig_cnt\(22) & (!\DO|sig_cnt[21]~147\ & VCC))
-- \DO|sig_cnt[22]~149\ = CARRY((\DO|sig_cnt\(22) & !\DO|sig_cnt[21]~147\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(22),
	datad => VCC,
	cin => \DO|sig_cnt[21]~147\,
	combout => \DO|sig_cnt[22]~148_combout\,
	cout => \DO|sig_cnt[22]~149\);

-- Location: FF_X35_Y24_N25
\DO|sig_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[22]~148_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(22));

-- Location: LCCOMB_X35_Y24_N26
\DO|sig_cnt[23]~150\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[23]~150_combout\ = (\DO|sig_cnt\(23) & (!\DO|sig_cnt[22]~149\)) # (!\DO|sig_cnt\(23) & ((\DO|sig_cnt[22]~149\) # (GND)))
-- \DO|sig_cnt[23]~151\ = CARRY((!\DO|sig_cnt[22]~149\) # (!\DO|sig_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(23),
	datad => VCC,
	cin => \DO|sig_cnt[22]~149\,
	combout => \DO|sig_cnt[23]~150_combout\,
	cout => \DO|sig_cnt[23]~151\);

-- Location: FF_X35_Y24_N27
\DO|sig_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[23]~150_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(23));

-- Location: LCCOMB_X35_Y24_N28
\DO|sig_cnt[24]~152\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[24]~152_combout\ = (\DO|sig_cnt\(24) & (\DO|sig_cnt[23]~151\ $ (GND))) # (!\DO|sig_cnt\(24) & (!\DO|sig_cnt[23]~151\ & VCC))
-- \DO|sig_cnt[24]~153\ = CARRY((\DO|sig_cnt\(24) & !\DO|sig_cnt[23]~151\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(24),
	datad => VCC,
	cin => \DO|sig_cnt[23]~151\,
	combout => \DO|sig_cnt[24]~152_combout\,
	cout => \DO|sig_cnt[24]~153\);

-- Location: FF_X35_Y24_N29
\DO|sig_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[24]~152_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(24));

-- Location: LCCOMB_X35_Y24_N30
\DO|sig_cnt[25]~154\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[25]~154_combout\ = (\DO|sig_cnt\(25) & (!\DO|sig_cnt[24]~153\)) # (!\DO|sig_cnt\(25) & ((\DO|sig_cnt[24]~153\) # (GND)))
-- \DO|sig_cnt[25]~155\ = CARRY((!\DO|sig_cnt[24]~153\) # (!\DO|sig_cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(25),
	datad => VCC,
	cin => \DO|sig_cnt[24]~153\,
	combout => \DO|sig_cnt[25]~154_combout\,
	cout => \DO|sig_cnt[25]~155\);

-- Location: FF_X35_Y24_N31
\DO|sig_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[25]~154_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(25));

-- Location: LCCOMB_X35_Y23_N0
\DO|sig_cnt[26]~156\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[26]~156_combout\ = (\DO|sig_cnt\(26) & (\DO|sig_cnt[25]~155\ $ (GND))) # (!\DO|sig_cnt\(26) & (!\DO|sig_cnt[25]~155\ & VCC))
-- \DO|sig_cnt[26]~157\ = CARRY((\DO|sig_cnt\(26) & !\DO|sig_cnt[25]~155\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(26),
	datad => VCC,
	cin => \DO|sig_cnt[25]~155\,
	combout => \DO|sig_cnt[26]~156_combout\,
	cout => \DO|sig_cnt[26]~157\);

-- Location: FF_X35_Y23_N1
\DO|sig_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[26]~156_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(26));

-- Location: LCCOMB_X35_Y23_N2
\DO|sig_cnt[27]~158\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[27]~158_combout\ = (\DO|sig_cnt\(27) & (!\DO|sig_cnt[26]~157\)) # (!\DO|sig_cnt\(27) & ((\DO|sig_cnt[26]~157\) # (GND)))
-- \DO|sig_cnt[27]~159\ = CARRY((!\DO|sig_cnt[26]~157\) # (!\DO|sig_cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(27),
	datad => VCC,
	cin => \DO|sig_cnt[26]~157\,
	combout => \DO|sig_cnt[27]~158_combout\,
	cout => \DO|sig_cnt[27]~159\);

-- Location: FF_X35_Y23_N3
\DO|sig_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[27]~158_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(27));

-- Location: LCCOMB_X35_Y23_N4
\DO|sig_cnt[28]~160\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[28]~160_combout\ = (\DO|sig_cnt\(28) & (\DO|sig_cnt[27]~159\ $ (GND))) # (!\DO|sig_cnt\(28) & (!\DO|sig_cnt[27]~159\ & VCC))
-- \DO|sig_cnt[28]~161\ = CARRY((\DO|sig_cnt\(28) & !\DO|sig_cnt[27]~159\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(28),
	datad => VCC,
	cin => \DO|sig_cnt[27]~159\,
	combout => \DO|sig_cnt[28]~160_combout\,
	cout => \DO|sig_cnt[28]~161\);

-- Location: FF_X35_Y23_N5
\DO|sig_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[28]~160_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(28));

-- Location: LCCOMB_X35_Y23_N6
\DO|sig_cnt[29]~162\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[29]~162_combout\ = (\DO|sig_cnt\(29) & (!\DO|sig_cnt[28]~161\)) # (!\DO|sig_cnt\(29) & ((\DO|sig_cnt[28]~161\) # (GND)))
-- \DO|sig_cnt[29]~163\ = CARRY((!\DO|sig_cnt[28]~161\) # (!\DO|sig_cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(29),
	datad => VCC,
	cin => \DO|sig_cnt[28]~161\,
	combout => \DO|sig_cnt[29]~162_combout\,
	cout => \DO|sig_cnt[29]~163\);

-- Location: FF_X35_Y23_N7
\DO|sig_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[29]~162_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(29));

-- Location: LCCOMB_X35_Y23_N8
\DO|sig_cnt[30]~164\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[30]~164_combout\ = (\DO|sig_cnt\(30) & (\DO|sig_cnt[29]~163\ $ (GND))) # (!\DO|sig_cnt\(30) & (!\DO|sig_cnt[29]~163\ & VCC))
-- \DO|sig_cnt[30]~165\ = CARRY((\DO|sig_cnt\(30) & !\DO|sig_cnt[29]~163\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(30),
	datad => VCC,
	cin => \DO|sig_cnt[29]~163\,
	combout => \DO|sig_cnt[30]~164_combout\,
	cout => \DO|sig_cnt[30]~165\);

-- Location: FF_X35_Y23_N9
\DO|sig_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[30]~164_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(30));

-- Location: LCCOMB_X35_Y23_N10
\DO|sig_cnt[31]~166\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[31]~166_combout\ = (\DO|sig_cnt\(31) & (!\DO|sig_cnt[30]~165\)) # (!\DO|sig_cnt\(31) & ((\DO|sig_cnt[30]~165\) # (GND)))
-- \DO|sig_cnt[31]~167\ = CARRY((!\DO|sig_cnt[30]~165\) # (!\DO|sig_cnt\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(31),
	datad => VCC,
	cin => \DO|sig_cnt[30]~165\,
	combout => \DO|sig_cnt[31]~166_combout\,
	cout => \DO|sig_cnt[31]~167\);

-- Location: FF_X35_Y23_N11
\DO|sig_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[31]~166_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(31));

-- Location: LCCOMB_X35_Y23_N12
\DO|sig_cnt[32]~168\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[32]~168_combout\ = (\DO|sig_cnt\(32) & (\DO|sig_cnt[31]~167\ $ (GND))) # (!\DO|sig_cnt\(32) & (!\DO|sig_cnt[31]~167\ & VCC))
-- \DO|sig_cnt[32]~169\ = CARRY((\DO|sig_cnt\(32) & !\DO|sig_cnt[31]~167\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(32),
	datad => VCC,
	cin => \DO|sig_cnt[31]~167\,
	combout => \DO|sig_cnt[32]~168_combout\,
	cout => \DO|sig_cnt[32]~169\);

-- Location: FF_X35_Y23_N13
\DO|sig_cnt[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[32]~168_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(32));

-- Location: LCCOMB_X35_Y23_N14
\DO|sig_cnt[33]~170\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[33]~170_combout\ = (\DO|sig_cnt\(33) & (!\DO|sig_cnt[32]~169\)) # (!\DO|sig_cnt\(33) & ((\DO|sig_cnt[32]~169\) # (GND)))
-- \DO|sig_cnt[33]~171\ = CARRY((!\DO|sig_cnt[32]~169\) # (!\DO|sig_cnt\(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(33),
	datad => VCC,
	cin => \DO|sig_cnt[32]~169\,
	combout => \DO|sig_cnt[33]~170_combout\,
	cout => \DO|sig_cnt[33]~171\);

-- Location: FF_X35_Y23_N15
\DO|sig_cnt[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[33]~170_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(33));

-- Location: LCCOMB_X35_Y23_N16
\DO|sig_cnt[34]~172\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[34]~172_combout\ = (\DO|sig_cnt\(34) & (\DO|sig_cnt[33]~171\ $ (GND))) # (!\DO|sig_cnt\(34) & (!\DO|sig_cnt[33]~171\ & VCC))
-- \DO|sig_cnt[34]~173\ = CARRY((\DO|sig_cnt\(34) & !\DO|sig_cnt[33]~171\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(34),
	datad => VCC,
	cin => \DO|sig_cnt[33]~171\,
	combout => \DO|sig_cnt[34]~172_combout\,
	cout => \DO|sig_cnt[34]~173\);

-- Location: FF_X35_Y23_N17
\DO|sig_cnt[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[34]~172_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(34));

-- Location: LCCOMB_X35_Y23_N18
\DO|sig_cnt[35]~174\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[35]~174_combout\ = (\DO|sig_cnt\(35) & (!\DO|sig_cnt[34]~173\)) # (!\DO|sig_cnt\(35) & ((\DO|sig_cnt[34]~173\) # (GND)))
-- \DO|sig_cnt[35]~175\ = CARRY((!\DO|sig_cnt[34]~173\) # (!\DO|sig_cnt\(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(35),
	datad => VCC,
	cin => \DO|sig_cnt[34]~173\,
	combout => \DO|sig_cnt[35]~174_combout\,
	cout => \DO|sig_cnt[35]~175\);

-- Location: FF_X35_Y23_N19
\DO|sig_cnt[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[35]~174_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(35));

-- Location: LCCOMB_X35_Y23_N20
\DO|sig_cnt[36]~176\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[36]~176_combout\ = (\DO|sig_cnt\(36) & (\DO|sig_cnt[35]~175\ $ (GND))) # (!\DO|sig_cnt\(36) & (!\DO|sig_cnt[35]~175\ & VCC))
-- \DO|sig_cnt[36]~177\ = CARRY((\DO|sig_cnt\(36) & !\DO|sig_cnt[35]~175\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(36),
	datad => VCC,
	cin => \DO|sig_cnt[35]~175\,
	combout => \DO|sig_cnt[36]~176_combout\,
	cout => \DO|sig_cnt[36]~177\);

-- Location: FF_X35_Y23_N21
\DO|sig_cnt[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[36]~176_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(36));

-- Location: LCCOMB_X36_Y23_N12
\DO|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~8_combout\ = (!\DO|sig_cnt\(33) & (!\DO|sig_cnt\(35) & (!\DO|sig_cnt\(34) & !\DO|sig_cnt\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(33),
	datab => \DO|sig_cnt\(35),
	datac => \DO|sig_cnt\(34),
	datad => \DO|sig_cnt\(36),
	combout => \DO|Equal0~8_combout\);

-- Location: LCCOMB_X36_Y23_N24
\DO|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~6_combout\ = (!\DO|sig_cnt\(27) & (!\DO|sig_cnt\(28) & (!\DO|sig_cnt\(26) & !\DO|sig_cnt\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(27),
	datab => \DO|sig_cnt\(28),
	datac => \DO|sig_cnt\(26),
	datad => \DO|sig_cnt\(25),
	combout => \DO|Equal0~6_combout\);

-- Location: LCCOMB_X36_Y23_N26
\DO|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~7_combout\ = (!\DO|sig_cnt\(30) & (!\DO|sig_cnt\(32) & (!\DO|sig_cnt\(29) & !\DO|sig_cnt\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(30),
	datab => \DO|sig_cnt\(32),
	datac => \DO|sig_cnt\(29),
	datad => \DO|sig_cnt\(31),
	combout => \DO|Equal0~7_combout\);

-- Location: LCCOMB_X36_Y24_N8
\DO|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~5_combout\ = (!\DO|sig_cnt\(24) & (!\DO|sig_cnt\(22) & (!\DO|sig_cnt\(23) & !\DO|sig_cnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(24),
	datab => \DO|sig_cnt\(22),
	datac => \DO|sig_cnt\(23),
	datad => \DO|sig_cnt\(21),
	combout => \DO|Equal0~5_combout\);

-- Location: LCCOMB_X36_Y23_N22
\DO|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~9_combout\ = (\DO|Equal0~8_combout\ & (\DO|Equal0~6_combout\ & (\DO|Equal0~7_combout\ & \DO|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|Equal0~8_combout\,
	datab => \DO|Equal0~6_combout\,
	datac => \DO|Equal0~7_combout\,
	datad => \DO|Equal0~5_combout\,
	combout => \DO|Equal0~9_combout\);

-- Location: LCCOMB_X35_Y23_N22
\DO|sig_cnt[37]~178\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[37]~178_combout\ = (\DO|sig_cnt\(37) & (!\DO|sig_cnt[36]~177\)) # (!\DO|sig_cnt\(37) & ((\DO|sig_cnt[36]~177\) # (GND)))
-- \DO|sig_cnt[37]~179\ = CARRY((!\DO|sig_cnt[36]~177\) # (!\DO|sig_cnt\(37)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(37),
	datad => VCC,
	cin => \DO|sig_cnt[36]~177\,
	combout => \DO|sig_cnt[37]~178_combout\,
	cout => \DO|sig_cnt[37]~179\);

-- Location: FF_X35_Y23_N23
\DO|sig_cnt[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[37]~178_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(37));

-- Location: LCCOMB_X35_Y23_N24
\DO|sig_cnt[38]~180\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[38]~180_combout\ = (\DO|sig_cnt\(38) & (\DO|sig_cnt[37]~179\ $ (GND))) # (!\DO|sig_cnt\(38) & (!\DO|sig_cnt[37]~179\ & VCC))
-- \DO|sig_cnt[38]~181\ = CARRY((\DO|sig_cnt\(38) & !\DO|sig_cnt[37]~179\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(38),
	datad => VCC,
	cin => \DO|sig_cnt[37]~179\,
	combout => \DO|sig_cnt[38]~180_combout\,
	cout => \DO|sig_cnt[38]~181\);

-- Location: FF_X35_Y23_N25
\DO|sig_cnt[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[38]~180_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(38));

-- Location: LCCOMB_X35_Y23_N26
\DO|sig_cnt[39]~182\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[39]~182_combout\ = (\DO|sig_cnt\(39) & (!\DO|sig_cnt[38]~181\)) # (!\DO|sig_cnt\(39) & ((\DO|sig_cnt[38]~181\) # (GND)))
-- \DO|sig_cnt[39]~183\ = CARRY((!\DO|sig_cnt[38]~181\) # (!\DO|sig_cnt\(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(39),
	datad => VCC,
	cin => \DO|sig_cnt[38]~181\,
	combout => \DO|sig_cnt[39]~182_combout\,
	cout => \DO|sig_cnt[39]~183\);

-- Location: FF_X35_Y23_N27
\DO|sig_cnt[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[39]~182_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(39));

-- Location: LCCOMB_X35_Y23_N28
\DO|sig_cnt[40]~184\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[40]~184_combout\ = (\DO|sig_cnt\(40) & (\DO|sig_cnt[39]~183\ $ (GND))) # (!\DO|sig_cnt\(40) & (!\DO|sig_cnt[39]~183\ & VCC))
-- \DO|sig_cnt[40]~185\ = CARRY((\DO|sig_cnt\(40) & !\DO|sig_cnt[39]~183\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(40),
	datad => VCC,
	cin => \DO|sig_cnt[39]~183\,
	combout => \DO|sig_cnt[40]~184_combout\,
	cout => \DO|sig_cnt[40]~185\);

-- Location: FF_X35_Y23_N29
\DO|sig_cnt[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[40]~184_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(40));

-- Location: LCCOMB_X35_Y23_N30
\DO|sig_cnt[41]~186\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[41]~186_combout\ = (\DO|sig_cnt\(41) & (!\DO|sig_cnt[40]~185\)) # (!\DO|sig_cnt\(41) & ((\DO|sig_cnt[40]~185\) # (GND)))
-- \DO|sig_cnt[41]~187\ = CARRY((!\DO|sig_cnt[40]~185\) # (!\DO|sig_cnt\(41)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(41),
	datad => VCC,
	cin => \DO|sig_cnt[40]~185\,
	combout => \DO|sig_cnt[41]~186_combout\,
	cout => \DO|sig_cnt[41]~187\);

-- Location: FF_X35_Y23_N31
\DO|sig_cnt[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[41]~186_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(41));

-- Location: LCCOMB_X35_Y22_N0
\DO|sig_cnt[42]~188\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[42]~188_combout\ = (\DO|sig_cnt\(42) & (\DO|sig_cnt[41]~187\ $ (GND))) # (!\DO|sig_cnt\(42) & (!\DO|sig_cnt[41]~187\ & VCC))
-- \DO|sig_cnt[42]~189\ = CARRY((\DO|sig_cnt\(42) & !\DO|sig_cnt[41]~187\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(42),
	datad => VCC,
	cin => \DO|sig_cnt[41]~187\,
	combout => \DO|sig_cnt[42]~188_combout\,
	cout => \DO|sig_cnt[42]~189\);

-- Location: FF_X35_Y22_N1
\DO|sig_cnt[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[42]~188_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(42));

-- Location: LCCOMB_X35_Y22_N2
\DO|sig_cnt[43]~190\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[43]~190_combout\ = (\DO|sig_cnt\(43) & (!\DO|sig_cnt[42]~189\)) # (!\DO|sig_cnt\(43) & ((\DO|sig_cnt[42]~189\) # (GND)))
-- \DO|sig_cnt[43]~191\ = CARRY((!\DO|sig_cnt[42]~189\) # (!\DO|sig_cnt\(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(43),
	datad => VCC,
	cin => \DO|sig_cnt[42]~189\,
	combout => \DO|sig_cnt[43]~190_combout\,
	cout => \DO|sig_cnt[43]~191\);

-- Location: FF_X35_Y22_N3
\DO|sig_cnt[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[43]~190_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(43));

-- Location: LCCOMB_X35_Y22_N4
\DO|sig_cnt[44]~192\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[44]~192_combout\ = (\DO|sig_cnt\(44) & (\DO|sig_cnt[43]~191\ $ (GND))) # (!\DO|sig_cnt\(44) & (!\DO|sig_cnt[43]~191\ & VCC))
-- \DO|sig_cnt[44]~193\ = CARRY((\DO|sig_cnt\(44) & !\DO|sig_cnt[43]~191\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(44),
	datad => VCC,
	cin => \DO|sig_cnt[43]~191\,
	combout => \DO|sig_cnt[44]~192_combout\,
	cout => \DO|sig_cnt[44]~193\);

-- Location: FF_X35_Y22_N5
\DO|sig_cnt[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[44]~192_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(44));

-- Location: LCCOMB_X34_Y22_N10
\DO|Equal0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~11_combout\ = (!\DO|sig_cnt\(44) & (!\DO|sig_cnt\(41) & (!\DO|sig_cnt\(42) & !\DO|sig_cnt\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(44),
	datab => \DO|sig_cnt\(41),
	datac => \DO|sig_cnt\(42),
	datad => \DO|sig_cnt\(43),
	combout => \DO|Equal0~11_combout\);

-- Location: LCCOMB_X34_Y22_N16
\DO|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~10_combout\ = (!\DO|sig_cnt\(40) & (!\DO|sig_cnt\(38) & (!\DO|sig_cnt\(37) & !\DO|sig_cnt\(39))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(40),
	datab => \DO|sig_cnt\(38),
	datac => \DO|sig_cnt\(37),
	datad => \DO|sig_cnt\(39),
	combout => \DO|Equal0~10_combout\);

-- Location: LCCOMB_X35_Y22_N6
\DO|sig_cnt[45]~194\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[45]~194_combout\ = (\DO|sig_cnt\(45) & (!\DO|sig_cnt[44]~193\)) # (!\DO|sig_cnt\(45) & ((\DO|sig_cnt[44]~193\) # (GND)))
-- \DO|sig_cnt[45]~195\ = CARRY((!\DO|sig_cnt[44]~193\) # (!\DO|sig_cnt\(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(45),
	datad => VCC,
	cin => \DO|sig_cnt[44]~193\,
	combout => \DO|sig_cnt[45]~194_combout\,
	cout => \DO|sig_cnt[45]~195\);

-- Location: FF_X35_Y22_N7
\DO|sig_cnt[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[45]~194_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(45));

-- Location: LCCOMB_X35_Y22_N8
\DO|sig_cnt[46]~196\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[46]~196_combout\ = (\DO|sig_cnt\(46) & (\DO|sig_cnt[45]~195\ $ (GND))) # (!\DO|sig_cnt\(46) & (!\DO|sig_cnt[45]~195\ & VCC))
-- \DO|sig_cnt[46]~197\ = CARRY((\DO|sig_cnt\(46) & !\DO|sig_cnt[45]~195\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(46),
	datad => VCC,
	cin => \DO|sig_cnt[45]~195\,
	combout => \DO|sig_cnt[46]~196_combout\,
	cout => \DO|sig_cnt[46]~197\);

-- Location: FF_X35_Y22_N9
\DO|sig_cnt[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[46]~196_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(46));

-- Location: LCCOMB_X35_Y22_N10
\DO|sig_cnt[47]~198\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[47]~198_combout\ = (\DO|sig_cnt\(47) & (!\DO|sig_cnt[46]~197\)) # (!\DO|sig_cnt\(47) & ((\DO|sig_cnt[46]~197\) # (GND)))
-- \DO|sig_cnt[47]~199\ = CARRY((!\DO|sig_cnt[46]~197\) # (!\DO|sig_cnt\(47)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(47),
	datad => VCC,
	cin => \DO|sig_cnt[46]~197\,
	combout => \DO|sig_cnt[47]~198_combout\,
	cout => \DO|sig_cnt[47]~199\);

-- Location: FF_X35_Y22_N11
\DO|sig_cnt[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[47]~198_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(47));

-- Location: LCCOMB_X35_Y22_N12
\DO|sig_cnt[48]~200\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[48]~200_combout\ = (\DO|sig_cnt\(48) & (\DO|sig_cnt[47]~199\ $ (GND))) # (!\DO|sig_cnt\(48) & (!\DO|sig_cnt[47]~199\ & VCC))
-- \DO|sig_cnt[48]~201\ = CARRY((\DO|sig_cnt\(48) & !\DO|sig_cnt[47]~199\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(48),
	datad => VCC,
	cin => \DO|sig_cnt[47]~199\,
	combout => \DO|sig_cnt[48]~200_combout\,
	cout => \DO|sig_cnt[48]~201\);

-- Location: FF_X35_Y22_N13
\DO|sig_cnt[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[48]~200_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(48));

-- Location: LCCOMB_X34_Y22_N4
\DO|Equal0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~12_combout\ = (!\DO|sig_cnt\(46) & (!\DO|sig_cnt\(47) & (!\DO|sig_cnt\(48) & !\DO|sig_cnt\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(46),
	datab => \DO|sig_cnt\(47),
	datac => \DO|sig_cnt\(48),
	datad => \DO|sig_cnt\(45),
	combout => \DO|Equal0~12_combout\);

-- Location: LCCOMB_X35_Y22_N14
\DO|sig_cnt[49]~202\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[49]~202_combout\ = (\DO|sig_cnt\(49) & (!\DO|sig_cnt[48]~201\)) # (!\DO|sig_cnt\(49) & ((\DO|sig_cnt[48]~201\) # (GND)))
-- \DO|sig_cnt[49]~203\ = CARRY((!\DO|sig_cnt[48]~201\) # (!\DO|sig_cnt\(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(49),
	datad => VCC,
	cin => \DO|sig_cnt[48]~201\,
	combout => \DO|sig_cnt[49]~202_combout\,
	cout => \DO|sig_cnt[49]~203\);

-- Location: FF_X35_Y22_N15
\DO|sig_cnt[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[49]~202_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(49));

-- Location: LCCOMB_X35_Y22_N16
\DO|sig_cnt[50]~204\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[50]~204_combout\ = (\DO|sig_cnt\(50) & (\DO|sig_cnt[49]~203\ $ (GND))) # (!\DO|sig_cnt\(50) & (!\DO|sig_cnt[49]~203\ & VCC))
-- \DO|sig_cnt[50]~205\ = CARRY((\DO|sig_cnt\(50) & !\DO|sig_cnt[49]~203\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(50),
	datad => VCC,
	cin => \DO|sig_cnt[49]~203\,
	combout => \DO|sig_cnt[50]~204_combout\,
	cout => \DO|sig_cnt[50]~205\);

-- Location: FF_X35_Y22_N17
\DO|sig_cnt[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[50]~204_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(50));

-- Location: LCCOMB_X35_Y22_N18
\DO|sig_cnt[51]~206\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[51]~206_combout\ = (\DO|sig_cnt\(51) & (!\DO|sig_cnt[50]~205\)) # (!\DO|sig_cnt\(51) & ((\DO|sig_cnt[50]~205\) # (GND)))
-- \DO|sig_cnt[51]~207\ = CARRY((!\DO|sig_cnt[50]~205\) # (!\DO|sig_cnt\(51)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(51),
	datad => VCC,
	cin => \DO|sig_cnt[50]~205\,
	combout => \DO|sig_cnt[51]~206_combout\,
	cout => \DO|sig_cnt[51]~207\);

-- Location: FF_X35_Y22_N19
\DO|sig_cnt[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[51]~206_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(51));

-- Location: LCCOMB_X35_Y22_N20
\DO|sig_cnt[52]~208\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[52]~208_combout\ = (\DO|sig_cnt\(52) & (\DO|sig_cnt[51]~207\ $ (GND))) # (!\DO|sig_cnt\(52) & (!\DO|sig_cnt[51]~207\ & VCC))
-- \DO|sig_cnt[52]~209\ = CARRY((\DO|sig_cnt\(52) & !\DO|sig_cnt[51]~207\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(52),
	datad => VCC,
	cin => \DO|sig_cnt[51]~207\,
	combout => \DO|sig_cnt[52]~208_combout\,
	cout => \DO|sig_cnt[52]~209\);

-- Location: FF_X35_Y22_N21
\DO|sig_cnt[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[52]~208_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(52));

-- Location: LCCOMB_X34_Y22_N6
\DO|Equal0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~13_combout\ = (!\DO|sig_cnt\(52) & (!\DO|sig_cnt\(50) & (!\DO|sig_cnt\(49) & !\DO|sig_cnt\(51))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(52),
	datab => \DO|sig_cnt\(50),
	datac => \DO|sig_cnt\(49),
	datad => \DO|sig_cnt\(51),
	combout => \DO|Equal0~13_combout\);

-- Location: LCCOMB_X34_Y22_N0
\DO|Equal0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~14_combout\ = (\DO|Equal0~11_combout\ & (\DO|Equal0~10_combout\ & (\DO|Equal0~12_combout\ & \DO|Equal0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|Equal0~11_combout\,
	datab => \DO|Equal0~10_combout\,
	datac => \DO|Equal0~12_combout\,
	datad => \DO|Equal0~13_combout\,
	combout => \DO|Equal0~14_combout\);

-- Location: LCCOMB_X35_Y22_N22
\DO|sig_cnt[53]~210\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[53]~210_combout\ = (\DO|sig_cnt\(53) & (!\DO|sig_cnt[52]~209\)) # (!\DO|sig_cnt\(53) & ((\DO|sig_cnt[52]~209\) # (GND)))
-- \DO|sig_cnt[53]~211\ = CARRY((!\DO|sig_cnt[52]~209\) # (!\DO|sig_cnt\(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(53),
	datad => VCC,
	cin => \DO|sig_cnt[52]~209\,
	combout => \DO|sig_cnt[53]~210_combout\,
	cout => \DO|sig_cnt[53]~211\);

-- Location: FF_X35_Y22_N23
\DO|sig_cnt[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[53]~210_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(53));

-- Location: LCCOMB_X35_Y22_N24
\DO|sig_cnt[54]~212\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[54]~212_combout\ = (\DO|sig_cnt\(54) & (\DO|sig_cnt[53]~211\ $ (GND))) # (!\DO|sig_cnt\(54) & (!\DO|sig_cnt[53]~211\ & VCC))
-- \DO|sig_cnt[54]~213\ = CARRY((\DO|sig_cnt\(54) & !\DO|sig_cnt[53]~211\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(54),
	datad => VCC,
	cin => \DO|sig_cnt[53]~211\,
	combout => \DO|sig_cnt[54]~212_combout\,
	cout => \DO|sig_cnt[54]~213\);

-- Location: FF_X35_Y22_N25
\DO|sig_cnt[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[54]~212_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(54));

-- Location: LCCOMB_X35_Y22_N26
\DO|sig_cnt[55]~214\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[55]~214_combout\ = (\DO|sig_cnt\(55) & (!\DO|sig_cnt[54]~213\)) # (!\DO|sig_cnt\(55) & ((\DO|sig_cnt[54]~213\) # (GND)))
-- \DO|sig_cnt[55]~215\ = CARRY((!\DO|sig_cnt[54]~213\) # (!\DO|sig_cnt\(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(55),
	datad => VCC,
	cin => \DO|sig_cnt[54]~213\,
	combout => \DO|sig_cnt[55]~214_combout\,
	cout => \DO|sig_cnt[55]~215\);

-- Location: FF_X35_Y22_N27
\DO|sig_cnt[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[55]~214_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(55));

-- Location: LCCOMB_X35_Y22_N28
\DO|sig_cnt[56]~216\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[56]~216_combout\ = (\DO|sig_cnt\(56) & (\DO|sig_cnt[55]~215\ $ (GND))) # (!\DO|sig_cnt\(56) & (!\DO|sig_cnt[55]~215\ & VCC))
-- \DO|sig_cnt[56]~217\ = CARRY((\DO|sig_cnt\(56) & !\DO|sig_cnt[55]~215\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(56),
	datad => VCC,
	cin => \DO|sig_cnt[55]~215\,
	combout => \DO|sig_cnt[56]~216_combout\,
	cout => \DO|sig_cnt[56]~217\);

-- Location: FF_X35_Y22_N29
\DO|sig_cnt[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[56]~216_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(56));

-- Location: LCCOMB_X34_Y22_N26
\DO|Equal0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~15_combout\ = (!\DO|sig_cnt\(53) & (!\DO|sig_cnt\(56) & (!\DO|sig_cnt\(55) & !\DO|sig_cnt\(54))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(53),
	datab => \DO|sig_cnt\(56),
	datac => \DO|sig_cnt\(55),
	datad => \DO|sig_cnt\(54),
	combout => \DO|Equal0~15_combout\);

-- Location: LCCOMB_X35_Y22_N30
\DO|sig_cnt[57]~218\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[57]~218_combout\ = (\DO|sig_cnt\(57) & (!\DO|sig_cnt[56]~217\)) # (!\DO|sig_cnt\(57) & ((\DO|sig_cnt[56]~217\) # (GND)))
-- \DO|sig_cnt[57]~219\ = CARRY((!\DO|sig_cnt[56]~217\) # (!\DO|sig_cnt\(57)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(57),
	datad => VCC,
	cin => \DO|sig_cnt[56]~217\,
	combout => \DO|sig_cnt[57]~218_combout\,
	cout => \DO|sig_cnt[57]~219\);

-- Location: FF_X35_Y22_N31
\DO|sig_cnt[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[57]~218_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(57));

-- Location: LCCOMB_X35_Y21_N0
\DO|sig_cnt[58]~220\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[58]~220_combout\ = (\DO|sig_cnt\(58) & (\DO|sig_cnt[57]~219\ $ (GND))) # (!\DO|sig_cnt\(58) & (!\DO|sig_cnt[57]~219\ & VCC))
-- \DO|sig_cnt[58]~221\ = CARRY((\DO|sig_cnt\(58) & !\DO|sig_cnt[57]~219\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(58),
	datad => VCC,
	cin => \DO|sig_cnt[57]~219\,
	combout => \DO|sig_cnt[58]~220_combout\,
	cout => \DO|sig_cnt[58]~221\);

-- Location: FF_X35_Y21_N1
\DO|sig_cnt[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[58]~220_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(58));

-- Location: LCCOMB_X35_Y21_N2
\DO|sig_cnt[59]~222\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[59]~222_combout\ = (\DO|sig_cnt\(59) & (!\DO|sig_cnt[58]~221\)) # (!\DO|sig_cnt\(59) & ((\DO|sig_cnt[58]~221\) # (GND)))
-- \DO|sig_cnt[59]~223\ = CARRY((!\DO|sig_cnt[58]~221\) # (!\DO|sig_cnt\(59)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(59),
	datad => VCC,
	cin => \DO|sig_cnt[58]~221\,
	combout => \DO|sig_cnt[59]~222_combout\,
	cout => \DO|sig_cnt[59]~223\);

-- Location: FF_X35_Y21_N3
\DO|sig_cnt[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[59]~222_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(59));

-- Location: LCCOMB_X35_Y21_N4
\DO|sig_cnt[60]~224\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[60]~224_combout\ = (\DO|sig_cnt\(60) & (\DO|sig_cnt[59]~223\ $ (GND))) # (!\DO|sig_cnt\(60) & (!\DO|sig_cnt[59]~223\ & VCC))
-- \DO|sig_cnt[60]~225\ = CARRY((\DO|sig_cnt\(60) & !\DO|sig_cnt[59]~223\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(60),
	datad => VCC,
	cin => \DO|sig_cnt[59]~223\,
	combout => \DO|sig_cnt[60]~224_combout\,
	cout => \DO|sig_cnt[60]~225\);

-- Location: FF_X35_Y21_N5
\DO|sig_cnt[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[60]~224_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(60));

-- Location: LCCOMB_X35_Y21_N6
\DO|sig_cnt[61]~226\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[61]~226_combout\ = (\DO|sig_cnt\(61) & (!\DO|sig_cnt[60]~225\)) # (!\DO|sig_cnt\(61) & ((\DO|sig_cnt[60]~225\) # (GND)))
-- \DO|sig_cnt[61]~227\ = CARRY((!\DO|sig_cnt[60]~225\) # (!\DO|sig_cnt\(61)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(61),
	datad => VCC,
	cin => \DO|sig_cnt[60]~225\,
	combout => \DO|sig_cnt[61]~226_combout\,
	cout => \DO|sig_cnt[61]~227\);

-- Location: FF_X35_Y21_N7
\DO|sig_cnt[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[61]~226_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(61));

-- Location: LCCOMB_X35_Y21_N8
\DO|sig_cnt[62]~228\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[62]~228_combout\ = (\DO|sig_cnt\(62) & (\DO|sig_cnt[61]~227\ $ (GND))) # (!\DO|sig_cnt\(62) & (!\DO|sig_cnt[61]~227\ & VCC))
-- \DO|sig_cnt[62]~229\ = CARRY((\DO|sig_cnt\(62) & !\DO|sig_cnt[61]~227\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(62),
	datad => VCC,
	cin => \DO|sig_cnt[61]~227\,
	combout => \DO|sig_cnt[62]~228_combout\,
	cout => \DO|sig_cnt[62]~229\);

-- Location: FF_X35_Y21_N9
\DO|sig_cnt[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[62]~228_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(62));

-- Location: LCCOMB_X35_Y21_N10
\DO|sig_cnt[63]~230\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[63]~230_combout\ = (\DO|sig_cnt\(63) & (!\DO|sig_cnt[62]~229\)) # (!\DO|sig_cnt\(63) & ((\DO|sig_cnt[62]~229\) # (GND)))
-- \DO|sig_cnt[63]~231\ = CARRY((!\DO|sig_cnt[62]~229\) # (!\DO|sig_cnt\(63)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(63),
	datad => VCC,
	cin => \DO|sig_cnt[62]~229\,
	combout => \DO|sig_cnt[63]~230_combout\,
	cout => \DO|sig_cnt[63]~231\);

-- Location: FF_X35_Y21_N11
\DO|sig_cnt[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[63]~230_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(63));

-- Location: LCCOMB_X35_Y21_N12
\DO|sig_cnt[64]~232\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[64]~232_combout\ = (\DO|sig_cnt\(64) & (\DO|sig_cnt[63]~231\ $ (GND))) # (!\DO|sig_cnt\(64) & (!\DO|sig_cnt[63]~231\ & VCC))
-- \DO|sig_cnt[64]~233\ = CARRY((\DO|sig_cnt\(64) & !\DO|sig_cnt[63]~231\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(64),
	datad => VCC,
	cin => \DO|sig_cnt[63]~231\,
	combout => \DO|sig_cnt[64]~232_combout\,
	cout => \DO|sig_cnt[64]~233\);

-- Location: FF_X35_Y21_N13
\DO|sig_cnt[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[64]~232_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(64));

-- Location: LCCOMB_X35_Y21_N14
\DO|sig_cnt[65]~234\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[65]~234_combout\ = (\DO|sig_cnt\(65) & (!\DO|sig_cnt[64]~233\)) # (!\DO|sig_cnt\(65) & ((\DO|sig_cnt[64]~233\) # (GND)))
-- \DO|sig_cnt[65]~235\ = CARRY((!\DO|sig_cnt[64]~233\) # (!\DO|sig_cnt\(65)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(65),
	datad => VCC,
	cin => \DO|sig_cnt[64]~233\,
	combout => \DO|sig_cnt[65]~234_combout\,
	cout => \DO|sig_cnt[65]~235\);

-- Location: FF_X35_Y21_N15
\DO|sig_cnt[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[65]~234_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(65));

-- Location: LCCOMB_X35_Y21_N16
\DO|sig_cnt[66]~236\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[66]~236_combout\ = (\DO|sig_cnt\(66) & (\DO|sig_cnt[65]~235\ $ (GND))) # (!\DO|sig_cnt\(66) & (!\DO|sig_cnt[65]~235\ & VCC))
-- \DO|sig_cnt[66]~237\ = CARRY((\DO|sig_cnt\(66) & !\DO|sig_cnt[65]~235\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(66),
	datad => VCC,
	cin => \DO|sig_cnt[65]~235\,
	combout => \DO|sig_cnt[66]~236_combout\,
	cout => \DO|sig_cnt[66]~237\);

-- Location: FF_X35_Y21_N17
\DO|sig_cnt[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[66]~236_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(66));

-- Location: LCCOMB_X35_Y21_N18
\DO|sig_cnt[67]~238\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[67]~238_combout\ = (\DO|sig_cnt\(67) & (!\DO|sig_cnt[66]~237\)) # (!\DO|sig_cnt\(67) & ((\DO|sig_cnt[66]~237\) # (GND)))
-- \DO|sig_cnt[67]~239\ = CARRY((!\DO|sig_cnt[66]~237\) # (!\DO|sig_cnt\(67)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(67),
	datad => VCC,
	cin => \DO|sig_cnt[66]~237\,
	combout => \DO|sig_cnt[67]~238_combout\,
	cout => \DO|sig_cnt[67]~239\);

-- Location: FF_X35_Y21_N19
\DO|sig_cnt[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[67]~238_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(67));

-- Location: LCCOMB_X35_Y21_N20
\DO|sig_cnt[68]~240\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[68]~240_combout\ = (\DO|sig_cnt\(68) & (\DO|sig_cnt[67]~239\ $ (GND))) # (!\DO|sig_cnt\(68) & (!\DO|sig_cnt[67]~239\ & VCC))
-- \DO|sig_cnt[68]~241\ = CARRY((\DO|sig_cnt\(68) & !\DO|sig_cnt[67]~239\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(68),
	datad => VCC,
	cin => \DO|sig_cnt[67]~239\,
	combout => \DO|sig_cnt[68]~240_combout\,
	cout => \DO|sig_cnt[68]~241\);

-- Location: FF_X35_Y21_N21
\DO|sig_cnt[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[68]~240_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(68));

-- Location: LCCOMB_X34_Y21_N0
\DO|Equal0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~18_combout\ = (!\DO|sig_cnt\(68) & (!\DO|sig_cnt\(66) & (!\DO|sig_cnt\(65) & !\DO|sig_cnt\(67))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(68),
	datab => \DO|sig_cnt\(66),
	datac => \DO|sig_cnt\(65),
	datad => \DO|sig_cnt\(67),
	combout => \DO|Equal0~18_combout\);

-- Location: LCCOMB_X34_Y22_N22
\DO|Equal0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~17_combout\ = (!\DO|sig_cnt\(63) & (!\DO|sig_cnt\(61) & (!\DO|sig_cnt\(62) & !\DO|sig_cnt\(64))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(63),
	datab => \DO|sig_cnt\(61),
	datac => \DO|sig_cnt\(62),
	datad => \DO|sig_cnt\(64),
	combout => \DO|Equal0~17_combout\);

-- Location: LCCOMB_X34_Y22_N20
\DO|Equal0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~16_combout\ = (!\DO|sig_cnt\(58) & (!\DO|sig_cnt\(60) & (!\DO|sig_cnt\(57) & !\DO|sig_cnt\(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(58),
	datab => \DO|sig_cnt\(60),
	datac => \DO|sig_cnt\(57),
	datad => \DO|sig_cnt\(59),
	combout => \DO|Equal0~16_combout\);

-- Location: LCCOMB_X34_Y22_N24
\DO|Equal0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~19_combout\ = (\DO|Equal0~15_combout\ & (\DO|Equal0~18_combout\ & (\DO|Equal0~17_combout\ & \DO|Equal0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|Equal0~15_combout\,
	datab => \DO|Equal0~18_combout\,
	datac => \DO|Equal0~17_combout\,
	datad => \DO|Equal0~16_combout\,
	combout => \DO|Equal0~19_combout\);

-- Location: LCCOMB_X34_Y24_N18
\DO|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~2_combout\ = (!\DO|sig_cnt\(16) & (!\DO|sig_cnt\(15) & (!\DO|sig_cnt\(14) & !\DO|sig_cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(16),
	datab => \DO|sig_cnt\(15),
	datac => \DO|sig_cnt\(14),
	datad => \DO|sig_cnt\(13),
	combout => \DO|Equal0~2_combout\);

-- Location: LCCOMB_X34_Y24_N8
\DO|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~1_combout\ = (!\DO|sig_cnt\(12) & (!\DO|sig_cnt\(9) & (!\DO|sig_cnt\(10) & !\DO|sig_cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(12),
	datab => \DO|sig_cnt\(9),
	datac => \DO|sig_cnt\(10),
	datad => \DO|sig_cnt\(11),
	combout => \DO|Equal0~1_combout\);

-- Location: LCCOMB_X34_Y24_N12
\DO|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~3_combout\ = (!\DO|sig_cnt\(20) & (!\DO|sig_cnt\(19) & (!\DO|sig_cnt\(17) & !\DO|sig_cnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(20),
	datab => \DO|sig_cnt\(19),
	datac => \DO|sig_cnt\(17),
	datad => \DO|sig_cnt\(18),
	combout => \DO|Equal0~3_combout\);

-- Location: LCCOMB_X35_Y25_N10
\DO|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~0_combout\ = (!\DO|sig_cnt\(7) & (!\DO|sig_cnt\(8) & (\DO|sig_cnt\(1) & \DO|sig_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(7),
	datab => \DO|sig_cnt\(8),
	datac => \DO|sig_cnt\(1),
	datad => \DO|sig_cnt\(2),
	combout => \DO|Equal0~0_combout\);

-- Location: LCCOMB_X34_Y23_N24
\DO|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~4_combout\ = (\DO|Equal0~2_combout\ & (\DO|Equal0~1_combout\ & (\DO|Equal0~3_combout\ & \DO|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|Equal0~2_combout\,
	datab => \DO|Equal0~1_combout\,
	datac => \DO|Equal0~3_combout\,
	datad => \DO|Equal0~0_combout\,
	combout => \DO|Equal0~4_combout\);

-- Location: LCCOMB_X34_Y23_N10
\DO|Equal0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~20_combout\ = (\DO|Equal0~9_combout\ & (\DO|Equal0~14_combout\ & (\DO|Equal0~19_combout\ & \DO|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|Equal0~9_combout\,
	datab => \DO|Equal0~14_combout\,
	datac => \DO|Equal0~19_combout\,
	datad => \DO|Equal0~4_combout\,
	combout => \DO|Equal0~20_combout\);

-- Location: LCCOMB_X35_Y21_N22
\DO|sig_cnt[69]~242\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[69]~242_combout\ = (\DO|sig_cnt\(69) & (!\DO|sig_cnt[68]~241\)) # (!\DO|sig_cnt\(69) & ((\DO|sig_cnt[68]~241\) # (GND)))
-- \DO|sig_cnt[69]~243\ = CARRY((!\DO|sig_cnt[68]~241\) # (!\DO|sig_cnt\(69)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(69),
	datad => VCC,
	cin => \DO|sig_cnt[68]~241\,
	combout => \DO|sig_cnt[69]~242_combout\,
	cout => \DO|sig_cnt[69]~243\);

-- Location: FF_X35_Y21_N23
\DO|sig_cnt[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[69]~242_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(69));

-- Location: LCCOMB_X35_Y21_N24
\DO|sig_cnt[70]~244\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[70]~244_combout\ = (\DO|sig_cnt\(70) & (\DO|sig_cnt[69]~243\ $ (GND))) # (!\DO|sig_cnt\(70) & (!\DO|sig_cnt[69]~243\ & VCC))
-- \DO|sig_cnt[70]~245\ = CARRY((\DO|sig_cnt\(70) & !\DO|sig_cnt[69]~243\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(70),
	datad => VCC,
	cin => \DO|sig_cnt[69]~243\,
	combout => \DO|sig_cnt[70]~244_combout\,
	cout => \DO|sig_cnt[70]~245\);

-- Location: FF_X35_Y21_N25
\DO|sig_cnt[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[70]~244_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(70));

-- Location: LCCOMB_X35_Y21_N26
\DO|sig_cnt[71]~246\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[71]~246_combout\ = (\DO|sig_cnt\(71) & (!\DO|sig_cnt[70]~245\)) # (!\DO|sig_cnt\(71) & ((\DO|sig_cnt[70]~245\) # (GND)))
-- \DO|sig_cnt[71]~247\ = CARRY((!\DO|sig_cnt[70]~245\) # (!\DO|sig_cnt\(71)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(71),
	datad => VCC,
	cin => \DO|sig_cnt[70]~245\,
	combout => \DO|sig_cnt[71]~246_combout\,
	cout => \DO|sig_cnt[71]~247\);

-- Location: FF_X35_Y21_N27
\DO|sig_cnt[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[71]~246_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(71));

-- Location: LCCOMB_X35_Y21_N28
\DO|sig_cnt[72]~248\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[72]~248_combout\ = (\DO|sig_cnt\(72) & (\DO|sig_cnt[71]~247\ $ (GND))) # (!\DO|sig_cnt\(72) & (!\DO|sig_cnt[71]~247\ & VCC))
-- \DO|sig_cnt[72]~249\ = CARRY((\DO|sig_cnt\(72) & !\DO|sig_cnt[71]~247\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(72),
	datad => VCC,
	cin => \DO|sig_cnt[71]~247\,
	combout => \DO|sig_cnt[72]~248_combout\,
	cout => \DO|sig_cnt[72]~249\);

-- Location: FF_X35_Y21_N29
\DO|sig_cnt[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[72]~248_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(72));

-- Location: LCCOMB_X34_Y21_N10
\DO|Equal0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~21_combout\ = (!\DO|sig_cnt\(70) & (!\DO|sig_cnt\(69) & (!\DO|sig_cnt\(71) & !\DO|sig_cnt\(72))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(70),
	datab => \DO|sig_cnt\(69),
	datac => \DO|sig_cnt\(71),
	datad => \DO|sig_cnt\(72),
	combout => \DO|Equal0~21_combout\);

-- Location: LCCOMB_X35_Y21_N30
\DO|sig_cnt[73]~250\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[73]~250_combout\ = (\DO|sig_cnt\(73) & (!\DO|sig_cnt[72]~249\)) # (!\DO|sig_cnt\(73) & ((\DO|sig_cnt[72]~249\) # (GND)))
-- \DO|sig_cnt[73]~251\ = CARRY((!\DO|sig_cnt[72]~249\) # (!\DO|sig_cnt\(73)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(73),
	datad => VCC,
	cin => \DO|sig_cnt[72]~249\,
	combout => \DO|sig_cnt[73]~250_combout\,
	cout => \DO|sig_cnt[73]~251\);

-- Location: FF_X35_Y21_N31
\DO|sig_cnt[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[73]~250_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(73));

-- Location: LCCOMB_X35_Y20_N0
\DO|sig_cnt[74]~252\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[74]~252_combout\ = (\DO|sig_cnt\(74) & (\DO|sig_cnt[73]~251\ $ (GND))) # (!\DO|sig_cnt\(74) & (!\DO|sig_cnt[73]~251\ & VCC))
-- \DO|sig_cnt[74]~253\ = CARRY((\DO|sig_cnt\(74) & !\DO|sig_cnt[73]~251\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(74),
	datad => VCC,
	cin => \DO|sig_cnt[73]~251\,
	combout => \DO|sig_cnt[74]~252_combout\,
	cout => \DO|sig_cnt[74]~253\);

-- Location: FF_X35_Y20_N1
\DO|sig_cnt[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[74]~252_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(74));

-- Location: LCCOMB_X35_Y20_N2
\DO|sig_cnt[75]~254\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[75]~254_combout\ = (\DO|sig_cnt\(75) & (!\DO|sig_cnt[74]~253\)) # (!\DO|sig_cnt\(75) & ((\DO|sig_cnt[74]~253\) # (GND)))
-- \DO|sig_cnt[75]~255\ = CARRY((!\DO|sig_cnt[74]~253\) # (!\DO|sig_cnt\(75)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(75),
	datad => VCC,
	cin => \DO|sig_cnt[74]~253\,
	combout => \DO|sig_cnt[75]~254_combout\,
	cout => \DO|sig_cnt[75]~255\);

-- Location: FF_X35_Y20_N3
\DO|sig_cnt[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[75]~254_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(75));

-- Location: LCCOMB_X35_Y20_N4
\DO|sig_cnt[76]~256\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[76]~256_combout\ = (\DO|sig_cnt\(76) & (\DO|sig_cnt[75]~255\ $ (GND))) # (!\DO|sig_cnt\(76) & (!\DO|sig_cnt[75]~255\ & VCC))
-- \DO|sig_cnt[76]~257\ = CARRY((\DO|sig_cnt\(76) & !\DO|sig_cnt[75]~255\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(76),
	datad => VCC,
	cin => \DO|sig_cnt[75]~255\,
	combout => \DO|sig_cnt[76]~256_combout\,
	cout => \DO|sig_cnt[76]~257\);

-- Location: FF_X35_Y20_N5
\DO|sig_cnt[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[76]~256_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(76));

-- Location: LCCOMB_X35_Y20_N6
\DO|sig_cnt[77]~258\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[77]~258_combout\ = (\DO|sig_cnt\(77) & (!\DO|sig_cnt[76]~257\)) # (!\DO|sig_cnt\(77) & ((\DO|sig_cnt[76]~257\) # (GND)))
-- \DO|sig_cnt[77]~259\ = CARRY((!\DO|sig_cnt[76]~257\) # (!\DO|sig_cnt\(77)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(77),
	datad => VCC,
	cin => \DO|sig_cnt[76]~257\,
	combout => \DO|sig_cnt[77]~258_combout\,
	cout => \DO|sig_cnt[77]~259\);

-- Location: FF_X35_Y20_N7
\DO|sig_cnt[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[77]~258_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(77));

-- Location: LCCOMB_X35_Y20_N8
\DO|sig_cnt[78]~260\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[78]~260_combout\ = (\DO|sig_cnt\(78) & (\DO|sig_cnt[77]~259\ $ (GND))) # (!\DO|sig_cnt\(78) & (!\DO|sig_cnt[77]~259\ & VCC))
-- \DO|sig_cnt[78]~261\ = CARRY((\DO|sig_cnt\(78) & !\DO|sig_cnt[77]~259\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(78),
	datad => VCC,
	cin => \DO|sig_cnt[77]~259\,
	combout => \DO|sig_cnt[78]~260_combout\,
	cout => \DO|sig_cnt[78]~261\);

-- Location: FF_X35_Y20_N9
\DO|sig_cnt[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[78]~260_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(78));

-- Location: LCCOMB_X35_Y20_N10
\DO|sig_cnt[79]~262\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[79]~262_combout\ = (\DO|sig_cnt\(79) & (!\DO|sig_cnt[78]~261\)) # (!\DO|sig_cnt\(79) & ((\DO|sig_cnt[78]~261\) # (GND)))
-- \DO|sig_cnt[79]~263\ = CARRY((!\DO|sig_cnt[78]~261\) # (!\DO|sig_cnt\(79)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(79),
	datad => VCC,
	cin => \DO|sig_cnt[78]~261\,
	combout => \DO|sig_cnt[79]~262_combout\,
	cout => \DO|sig_cnt[79]~263\);

-- Location: FF_X35_Y20_N11
\DO|sig_cnt[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[79]~262_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(79));

-- Location: LCCOMB_X35_Y20_N12
\DO|sig_cnt[80]~264\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[80]~264_combout\ = (\DO|sig_cnt\(80) & (\DO|sig_cnt[79]~263\ $ (GND))) # (!\DO|sig_cnt\(80) & (!\DO|sig_cnt[79]~263\ & VCC))
-- \DO|sig_cnt[80]~265\ = CARRY((\DO|sig_cnt\(80) & !\DO|sig_cnt[79]~263\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(80),
	datad => VCC,
	cin => \DO|sig_cnt[79]~263\,
	combout => \DO|sig_cnt[80]~264_combout\,
	cout => \DO|sig_cnt[80]~265\);

-- Location: FF_X35_Y20_N13
\DO|sig_cnt[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[80]~264_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(80));

-- Location: LCCOMB_X35_Y20_N14
\DO|sig_cnt[81]~266\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[81]~266_combout\ = (\DO|sig_cnt\(81) & (!\DO|sig_cnt[80]~265\)) # (!\DO|sig_cnt\(81) & ((\DO|sig_cnt[80]~265\) # (GND)))
-- \DO|sig_cnt[81]~267\ = CARRY((!\DO|sig_cnt[80]~265\) # (!\DO|sig_cnt\(81)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(81),
	datad => VCC,
	cin => \DO|sig_cnt[80]~265\,
	combout => \DO|sig_cnt[81]~266_combout\,
	cout => \DO|sig_cnt[81]~267\);

-- Location: FF_X35_Y20_N15
\DO|sig_cnt[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[81]~266_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(81));

-- Location: LCCOMB_X35_Y20_N16
\DO|sig_cnt[82]~268\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[82]~268_combout\ = (\DO|sig_cnt\(82) & (\DO|sig_cnt[81]~267\ $ (GND))) # (!\DO|sig_cnt\(82) & (!\DO|sig_cnt[81]~267\ & VCC))
-- \DO|sig_cnt[82]~269\ = CARRY((\DO|sig_cnt\(82) & !\DO|sig_cnt[81]~267\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(82),
	datad => VCC,
	cin => \DO|sig_cnt[81]~267\,
	combout => \DO|sig_cnt[82]~268_combout\,
	cout => \DO|sig_cnt[82]~269\);

-- Location: FF_X35_Y20_N17
\DO|sig_cnt[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[82]~268_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(82));

-- Location: LCCOMB_X35_Y20_N18
\DO|sig_cnt[83]~270\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[83]~270_combout\ = (\DO|sig_cnt\(83) & (!\DO|sig_cnt[82]~269\)) # (!\DO|sig_cnt\(83) & ((\DO|sig_cnt[82]~269\) # (GND)))
-- \DO|sig_cnt[83]~271\ = CARRY((!\DO|sig_cnt[82]~269\) # (!\DO|sig_cnt\(83)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(83),
	datad => VCC,
	cin => \DO|sig_cnt[82]~269\,
	combout => \DO|sig_cnt[83]~270_combout\,
	cout => \DO|sig_cnt[83]~271\);

-- Location: FF_X35_Y20_N19
\DO|sig_cnt[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[83]~270_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(83));

-- Location: LCCOMB_X35_Y20_N20
\DO|sig_cnt[84]~272\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[84]~272_combout\ = (\DO|sig_cnt\(84) & (\DO|sig_cnt[83]~271\ $ (GND))) # (!\DO|sig_cnt\(84) & (!\DO|sig_cnt[83]~271\ & VCC))
-- \DO|sig_cnt[84]~273\ = CARRY((\DO|sig_cnt\(84) & !\DO|sig_cnt[83]~271\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(84),
	datad => VCC,
	cin => \DO|sig_cnt[83]~271\,
	combout => \DO|sig_cnt[84]~272_combout\,
	cout => \DO|sig_cnt[84]~273\);

-- Location: FF_X35_Y20_N21
\DO|sig_cnt[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[84]~272_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(84));

-- Location: LCCOMB_X36_Y20_N2
\DO|Equal0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~24_combout\ = (!\DO|sig_cnt\(81) & (!\DO|sig_cnt\(84) & (!\DO|sig_cnt\(82) & !\DO|sig_cnt\(83))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(81),
	datab => \DO|sig_cnt\(84),
	datac => \DO|sig_cnt\(82),
	datad => \DO|sig_cnt\(83),
	combout => \DO|Equal0~24_combout\);

-- Location: LCCOMB_X36_Y20_N0
\DO|Equal0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~23_combout\ = (!\DO|sig_cnt\(78) & (!\DO|sig_cnt\(79) & (!\DO|sig_cnt\(77) & !\DO|sig_cnt\(80))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(78),
	datab => \DO|sig_cnt\(79),
	datac => \DO|sig_cnt\(77),
	datad => \DO|sig_cnt\(80),
	combout => \DO|Equal0~23_combout\);

-- Location: LCCOMB_X34_Y21_N12
\DO|Equal0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~22_combout\ = (!\DO|sig_cnt\(76) & (!\DO|sig_cnt\(74) & (!\DO|sig_cnt\(73) & !\DO|sig_cnt\(75))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(76),
	datab => \DO|sig_cnt\(74),
	datac => \DO|sig_cnt\(73),
	datad => \DO|sig_cnt\(75),
	combout => \DO|Equal0~22_combout\);

-- Location: LCCOMB_X34_Y21_N22
\DO|Equal0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~25_combout\ = (\DO|Equal0~21_combout\ & (\DO|Equal0~24_combout\ & (\DO|Equal0~23_combout\ & \DO|Equal0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|Equal0~21_combout\,
	datab => \DO|Equal0~24_combout\,
	datac => \DO|Equal0~23_combout\,
	datad => \DO|Equal0~22_combout\,
	combout => \DO|Equal0~25_combout\);

-- Location: LCCOMB_X35_Y20_N22
\DO|sig_cnt[85]~274\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[85]~274_combout\ = (\DO|sig_cnt\(85) & (!\DO|sig_cnt[84]~273\)) # (!\DO|sig_cnt\(85) & ((\DO|sig_cnt[84]~273\) # (GND)))
-- \DO|sig_cnt[85]~275\ = CARRY((!\DO|sig_cnt[84]~273\) # (!\DO|sig_cnt\(85)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(85),
	datad => VCC,
	cin => \DO|sig_cnt[84]~273\,
	combout => \DO|sig_cnt[85]~274_combout\,
	cout => \DO|sig_cnt[85]~275\);

-- Location: FF_X35_Y20_N23
\DO|sig_cnt[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[85]~274_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(85));

-- Location: LCCOMB_X35_Y20_N24
\DO|sig_cnt[86]~276\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[86]~276_combout\ = (\DO|sig_cnt\(86) & (\DO|sig_cnt[85]~275\ $ (GND))) # (!\DO|sig_cnt\(86) & (!\DO|sig_cnt[85]~275\ & VCC))
-- \DO|sig_cnt[86]~277\ = CARRY((\DO|sig_cnt\(86) & !\DO|sig_cnt[85]~275\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(86),
	datad => VCC,
	cin => \DO|sig_cnt[85]~275\,
	combout => \DO|sig_cnt[86]~276_combout\,
	cout => \DO|sig_cnt[86]~277\);

-- Location: FF_X35_Y20_N25
\DO|sig_cnt[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[86]~276_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(86));

-- Location: LCCOMB_X35_Y20_N26
\DO|sig_cnt[87]~278\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[87]~278_combout\ = (\DO|sig_cnt\(87) & (!\DO|sig_cnt[86]~277\)) # (!\DO|sig_cnt\(87) & ((\DO|sig_cnt[86]~277\) # (GND)))
-- \DO|sig_cnt[87]~279\ = CARRY((!\DO|sig_cnt[86]~277\) # (!\DO|sig_cnt\(87)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(87),
	datad => VCC,
	cin => \DO|sig_cnt[86]~277\,
	combout => \DO|sig_cnt[87]~278_combout\,
	cout => \DO|sig_cnt[87]~279\);

-- Location: FF_X35_Y20_N27
\DO|sig_cnt[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[87]~278_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(87));

-- Location: LCCOMB_X35_Y20_N28
\DO|sig_cnt[88]~280\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[88]~280_combout\ = (\DO|sig_cnt\(88) & (\DO|sig_cnt[87]~279\ $ (GND))) # (!\DO|sig_cnt\(88) & (!\DO|sig_cnt[87]~279\ & VCC))
-- \DO|sig_cnt[88]~281\ = CARRY((\DO|sig_cnt\(88) & !\DO|sig_cnt[87]~279\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(88),
	datad => VCC,
	cin => \DO|sig_cnt[87]~279\,
	combout => \DO|sig_cnt[88]~280_combout\,
	cout => \DO|sig_cnt[88]~281\);

-- Location: FF_X35_Y20_N29
\DO|sig_cnt[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[88]~280_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(88));

-- Location: LCCOMB_X35_Y20_N30
\DO|sig_cnt[89]~282\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[89]~282_combout\ = (\DO|sig_cnt\(89) & (!\DO|sig_cnt[88]~281\)) # (!\DO|sig_cnt\(89) & ((\DO|sig_cnt[88]~281\) # (GND)))
-- \DO|sig_cnt[89]~283\ = CARRY((!\DO|sig_cnt[88]~281\) # (!\DO|sig_cnt\(89)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(89),
	datad => VCC,
	cin => \DO|sig_cnt[88]~281\,
	combout => \DO|sig_cnt[89]~282_combout\,
	cout => \DO|sig_cnt[89]~283\);

-- Location: FF_X35_Y20_N31
\DO|sig_cnt[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[89]~282_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(89));

-- Location: LCCOMB_X35_Y19_N0
\DO|sig_cnt[90]~284\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[90]~284_combout\ = (\DO|sig_cnt\(90) & (\DO|sig_cnt[89]~283\ $ (GND))) # (!\DO|sig_cnt\(90) & (!\DO|sig_cnt[89]~283\ & VCC))
-- \DO|sig_cnt[90]~285\ = CARRY((\DO|sig_cnt\(90) & !\DO|sig_cnt[89]~283\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(90),
	datad => VCC,
	cin => \DO|sig_cnt[89]~283\,
	combout => \DO|sig_cnt[90]~284_combout\,
	cout => \DO|sig_cnt[90]~285\);

-- Location: FF_X35_Y19_N1
\DO|sig_cnt[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[90]~284_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(90));

-- Location: LCCOMB_X35_Y19_N2
\DO|sig_cnt[91]~286\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[91]~286_combout\ = (\DO|sig_cnt\(91) & (!\DO|sig_cnt[90]~285\)) # (!\DO|sig_cnt\(91) & ((\DO|sig_cnt[90]~285\) # (GND)))
-- \DO|sig_cnt[91]~287\ = CARRY((!\DO|sig_cnt[90]~285\) # (!\DO|sig_cnt\(91)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(91),
	datad => VCC,
	cin => \DO|sig_cnt[90]~285\,
	combout => \DO|sig_cnt[91]~286_combout\,
	cout => \DO|sig_cnt[91]~287\);

-- Location: FF_X35_Y19_N3
\DO|sig_cnt[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[91]~286_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(91));

-- Location: LCCOMB_X35_Y19_N4
\DO|sig_cnt[92]~288\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[92]~288_combout\ = (\DO|sig_cnt\(92) & (\DO|sig_cnt[91]~287\ $ (GND))) # (!\DO|sig_cnt\(92) & (!\DO|sig_cnt[91]~287\ & VCC))
-- \DO|sig_cnt[92]~289\ = CARRY((\DO|sig_cnt\(92) & !\DO|sig_cnt[91]~287\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(92),
	datad => VCC,
	cin => \DO|sig_cnt[91]~287\,
	combout => \DO|sig_cnt[92]~288_combout\,
	cout => \DO|sig_cnt[92]~289\);

-- Location: FF_X35_Y19_N5
\DO|sig_cnt[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[92]~288_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(92));

-- Location: LCCOMB_X35_Y19_N30
\DO|Equal0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~27_combout\ = (!\DO|sig_cnt\(89) & (!\DO|sig_cnt\(91) & (!\DO|sig_cnt\(92) & !\DO|sig_cnt\(90))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(89),
	datab => \DO|sig_cnt\(91),
	datac => \DO|sig_cnt\(92),
	datad => \DO|sig_cnt\(90),
	combout => \DO|Equal0~27_combout\);

-- Location: LCCOMB_X35_Y19_N6
\DO|sig_cnt[93]~290\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[93]~290_combout\ = (\DO|sig_cnt\(93) & (!\DO|sig_cnt[92]~289\)) # (!\DO|sig_cnt\(93) & ((\DO|sig_cnt[92]~289\) # (GND)))
-- \DO|sig_cnt[93]~291\ = CARRY((!\DO|sig_cnt[92]~289\) # (!\DO|sig_cnt\(93)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(93),
	datad => VCC,
	cin => \DO|sig_cnt[92]~289\,
	combout => \DO|sig_cnt[93]~290_combout\,
	cout => \DO|sig_cnt[93]~291\);

-- Location: FF_X35_Y19_N7
\DO|sig_cnt[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[93]~290_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(93));

-- Location: LCCOMB_X35_Y19_N8
\DO|sig_cnt[94]~292\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[94]~292_combout\ = (\DO|sig_cnt\(94) & (\DO|sig_cnt[93]~291\ $ (GND))) # (!\DO|sig_cnt\(94) & (!\DO|sig_cnt[93]~291\ & VCC))
-- \DO|sig_cnt[94]~293\ = CARRY((\DO|sig_cnt\(94) & !\DO|sig_cnt[93]~291\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(94),
	datad => VCC,
	cin => \DO|sig_cnt[93]~291\,
	combout => \DO|sig_cnt[94]~292_combout\,
	cout => \DO|sig_cnt[94]~293\);

-- Location: FF_X35_Y19_N9
\DO|sig_cnt[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[94]~292_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(94));

-- Location: LCCOMB_X35_Y19_N10
\DO|sig_cnt[95]~294\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[95]~294_combout\ = (\DO|sig_cnt\(95) & (!\DO|sig_cnt[94]~293\)) # (!\DO|sig_cnt\(95) & ((\DO|sig_cnt[94]~293\) # (GND)))
-- \DO|sig_cnt[95]~295\ = CARRY((!\DO|sig_cnt[94]~293\) # (!\DO|sig_cnt\(95)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(95),
	datad => VCC,
	cin => \DO|sig_cnt[94]~293\,
	combout => \DO|sig_cnt[95]~294_combout\,
	cout => \DO|sig_cnt[95]~295\);

-- Location: FF_X35_Y19_N11
\DO|sig_cnt[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[95]~294_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(95));

-- Location: LCCOMB_X35_Y19_N12
\DO|sig_cnt[96]~296\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[96]~296_combout\ = (\DO|sig_cnt\(96) & (\DO|sig_cnt[95]~295\ $ (GND))) # (!\DO|sig_cnt\(96) & (!\DO|sig_cnt[95]~295\ & VCC))
-- \DO|sig_cnt[96]~297\ = CARRY((\DO|sig_cnt\(96) & !\DO|sig_cnt[95]~295\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(96),
	datad => VCC,
	cin => \DO|sig_cnt[95]~295\,
	combout => \DO|sig_cnt[96]~296_combout\,
	cout => \DO|sig_cnt[96]~297\);

-- Location: FF_X35_Y19_N13
\DO|sig_cnt[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[96]~296_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(96));

-- Location: LCCOMB_X35_Y19_N24
\DO|Equal0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~28_combout\ = (!\DO|sig_cnt\(95) & (!\DO|sig_cnt\(96) & (!\DO|sig_cnt\(94) & !\DO|sig_cnt\(93))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(95),
	datab => \DO|sig_cnt\(96),
	datac => \DO|sig_cnt\(94),
	datad => \DO|sig_cnt\(93),
	combout => \DO|Equal0~28_combout\);

-- Location: LCCOMB_X35_Y19_N14
\DO|sig_cnt[97]~298\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[97]~298_combout\ = (\DO|sig_cnt\(97) & (!\DO|sig_cnt[96]~297\)) # (!\DO|sig_cnt\(97) & ((\DO|sig_cnt[96]~297\) # (GND)))
-- \DO|sig_cnt[97]~299\ = CARRY((!\DO|sig_cnt[96]~297\) # (!\DO|sig_cnt\(97)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(97),
	datad => VCC,
	cin => \DO|sig_cnt[96]~297\,
	combout => \DO|sig_cnt[97]~298_combout\,
	cout => \DO|sig_cnt[97]~299\);

-- Location: FF_X35_Y19_N15
\DO|sig_cnt[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[97]~298_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(97));

-- Location: LCCOMB_X35_Y19_N16
\DO|sig_cnt[98]~300\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[98]~300_combout\ = (\DO|sig_cnt\(98) & (\DO|sig_cnt[97]~299\ $ (GND))) # (!\DO|sig_cnt\(98) & (!\DO|sig_cnt[97]~299\ & VCC))
-- \DO|sig_cnt[98]~301\ = CARRY((\DO|sig_cnt\(98) & !\DO|sig_cnt[97]~299\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(98),
	datad => VCC,
	cin => \DO|sig_cnt[97]~299\,
	combout => \DO|sig_cnt[98]~300_combout\,
	cout => \DO|sig_cnt[98]~301\);

-- Location: FF_X35_Y19_N17
\DO|sig_cnt[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[98]~300_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(98));

-- Location: LCCOMB_X35_Y19_N18
\DO|sig_cnt[99]~302\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[99]~302_combout\ = (\DO|sig_cnt\(99) & (!\DO|sig_cnt[98]~301\)) # (!\DO|sig_cnt\(99) & ((\DO|sig_cnt[98]~301\) # (GND)))
-- \DO|sig_cnt[99]~303\ = CARRY((!\DO|sig_cnt[98]~301\) # (!\DO|sig_cnt\(99)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(99),
	datad => VCC,
	cin => \DO|sig_cnt[98]~301\,
	combout => \DO|sig_cnt[99]~302_combout\,
	cout => \DO|sig_cnt[99]~303\);

-- Location: FF_X35_Y19_N19
\DO|sig_cnt[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[99]~302_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(99));

-- Location: LCCOMB_X35_Y19_N20
\DO|sig_cnt[100]~304\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[100]~304_combout\ = \DO|sig_cnt[99]~303\ $ (!\DO|sig_cnt\(100))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_cnt\(100),
	cin => \DO|sig_cnt[99]~303\,
	combout => \DO|sig_cnt[100]~304_combout\);

-- Location: FF_X35_Y19_N21
\DO|sig_cnt[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[100]~304_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(100));

-- Location: LCCOMB_X35_Y19_N26
\DO|Equal0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~29_combout\ = (!\DO|sig_cnt\(100) & (!\DO|sig_cnt\(98) & (!\DO|sig_cnt\(97) & !\DO|sig_cnt\(99))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(100),
	datab => \DO|sig_cnt\(98),
	datac => \DO|sig_cnt\(97),
	datad => \DO|sig_cnt\(99),
	combout => \DO|Equal0~29_combout\);

-- Location: LCCOMB_X36_Y20_N28
\DO|Equal0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~26_combout\ = (!\DO|sig_cnt\(86) & (!\DO|sig_cnt\(85) & (!\DO|sig_cnt\(87) & !\DO|sig_cnt\(88))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(86),
	datab => \DO|sig_cnt\(85),
	datac => \DO|sig_cnt\(87),
	datad => \DO|sig_cnt\(88),
	combout => \DO|Equal0~26_combout\);

-- Location: LCCOMB_X35_Y19_N28
\DO|Equal0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~30_combout\ = (\DO|Equal0~27_combout\ & (\DO|Equal0~28_combout\ & (\DO|Equal0~29_combout\ & \DO|Equal0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|Equal0~27_combout\,
	datab => \DO|Equal0~28_combout\,
	datac => \DO|Equal0~29_combout\,
	datad => \DO|Equal0~26_combout\,
	combout => \DO|Equal0~30_combout\);

-- Location: LCCOMB_X34_Y23_N4
\DO|Equal0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~31_combout\ = (\DO|Equal0~20_combout\ & (\DO|Equal0~25_combout\ & \DO|Equal0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|Equal0~20_combout\,
	datac => \DO|Equal0~25_combout\,
	datad => \DO|Equal0~30_combout\,
	combout => \DO|Equal0~31_combout\);

-- Location: LCCOMB_X34_Y23_N14
\DO|Equal0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~32_combout\ = (\DO|sig_cnt\(6) & (\DO|Equal0~31_combout\ & \DO|sig_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(6),
	datac => \DO|Equal0~31_combout\,
	datad => \DO|sig_cnt\(3),
	combout => \DO|Equal0~32_combout\);

-- Location: LCCOMB_X34_Y23_N26
\DO|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal2~0_combout\ = (!\DO|sig_cnt\(0) & (\DO|Equal0~32_combout\ & (!\DO|sig_cnt\(4) & \DO|sig_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(0),
	datab => \DO|Equal0~32_combout\,
	datac => \DO|sig_cnt\(4),
	datad => \DO|sig_cnt\(5),
	combout => \DO|Equal2~0_combout\);

-- Location: LCCOMB_X34_Y23_N6
\DO|sig_cnt[20]~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[20]~105_combout\ = (!\DO|state_Do.s1~q\ & ((\DO|state_Do.s5~q\ & (\DO|Equal2~0_combout\)) # (!\DO|state_Do.s5~q\ & ((\DO|Equal1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|state_Do.s1~q\,
	datab => \DO|state_Do.s5~q\,
	datac => \DO|Equal2~0_combout\,
	datad => \DO|Equal1~1_combout\,
	combout => \DO|sig_cnt[20]~105_combout\);

-- Location: LCCOMB_X34_Y23_N16
\DO|Equal0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal0~33_combout\ = (\DO|sig_cnt\(0) & (\DO|Equal0~32_combout\ & (\DO|sig_cnt\(4) & !\DO|sig_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(0),
	datab => \DO|Equal0~32_combout\,
	datac => \DO|sig_cnt\(4),
	datad => \DO|sig_cnt\(5),
	combout => \DO|Equal0~33_combout\);

-- Location: LCCOMB_X34_Y23_N0
\DO|sig_cnt[20]~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[20]~106_combout\ = (\DO|sig_cnt[20]~105_combout\) # ((\DO|state_Do.s1~q\ & \DO|Equal0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt[20]~105_combout\,
	datac => \DO|state_Do.s1~q\,
	datad => \DO|Equal0~33_combout\,
	combout => \DO|sig_cnt[20]~106_combout\);

-- Location: FF_X35_Y25_N9
\DO|sig_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[0]~feeder_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(0));

-- Location: LCCOMB_X35_Y25_N14
\DO|sig_cnt[1]~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[1]~103_combout\ = (\DO|sig_cnt\(1) & (!\DO|sig_cnt[0]~102\)) # (!\DO|sig_cnt\(1) & ((\DO|sig_cnt[0]~102\) # (GND)))
-- \DO|sig_cnt[1]~104\ = CARRY((!\DO|sig_cnt[0]~102\) # (!\DO|sig_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(1),
	datad => VCC,
	cin => \DO|sig_cnt[0]~102\,
	combout => \DO|sig_cnt[1]~103_combout\,
	cout => \DO|sig_cnt[1]~104\);

-- Location: FF_X35_Y25_N15
\DO|sig_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[1]~103_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(1));

-- Location: LCCOMB_X35_Y25_N16
\DO|sig_cnt[2]~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[2]~108_combout\ = (\DO|sig_cnt\(2) & (\DO|sig_cnt[1]~104\ $ (GND))) # (!\DO|sig_cnt\(2) & (!\DO|sig_cnt[1]~104\ & VCC))
-- \DO|sig_cnt[2]~109\ = CARRY((\DO|sig_cnt\(2) & !\DO|sig_cnt[1]~104\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(2),
	datad => VCC,
	cin => \DO|sig_cnt[1]~104\,
	combout => \DO|sig_cnt[2]~108_combout\,
	cout => \DO|sig_cnt[2]~109\);

-- Location: FF_X35_Y25_N17
\DO|sig_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[2]~108_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(2));

-- Location: LCCOMB_X35_Y25_N18
\DO|sig_cnt[3]~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[3]~110_combout\ = (\DO|sig_cnt\(3) & (!\DO|sig_cnt[2]~109\)) # (!\DO|sig_cnt\(3) & ((\DO|sig_cnt[2]~109\) # (GND)))
-- \DO|sig_cnt[3]~111\ = CARRY((!\DO|sig_cnt[2]~109\) # (!\DO|sig_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(3),
	datad => VCC,
	cin => \DO|sig_cnt[2]~109\,
	combout => \DO|sig_cnt[3]~110_combout\,
	cout => \DO|sig_cnt[3]~111\);

-- Location: FF_X35_Y25_N19
\DO|sig_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[3]~110_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(3));

-- Location: LCCOMB_X35_Y25_N20
\DO|sig_cnt[4]~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_cnt[4]~112_combout\ = (\DO|sig_cnt\(4) & (\DO|sig_cnt[3]~111\ $ (GND))) # (!\DO|sig_cnt\(4) & (!\DO|sig_cnt[3]~111\ & VCC))
-- \DO|sig_cnt[4]~113\ = CARRY((\DO|sig_cnt\(4) & !\DO|sig_cnt[3]~111\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DO|sig_cnt\(4),
	datad => VCC,
	cin => \DO|sig_cnt[3]~111\,
	combout => \DO|sig_cnt[4]~112_combout\,
	cout => \DO|sig_cnt[4]~113\);

-- Location: FF_X35_Y25_N21
\DO|sig_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[4]~112_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(4));

-- Location: FF_X35_Y25_N23
\DO|sig_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_cnt[5]~114_combout\,
	clrn => \resetn~input_o\,
	sclr => \DO|sig_cnt[20]~106_combout\,
	ena => \DO|sig_cnt[100]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_cnt\(5));

-- Location: LCCOMB_X35_Y25_N4
\DO|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal1~0_combout\ = (!\DO|sig_cnt\(5) & (!\DO|sig_cnt\(4) & (\DO|sig_cnt\(0) & !\DO|sig_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_cnt\(5),
	datab => \DO|sig_cnt\(4),
	datac => \DO|sig_cnt\(0),
	datad => \DO|sig_cnt\(3),
	combout => \DO|Equal1~0_combout\);

-- Location: LCCOMB_X34_Y23_N12
\DO|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Equal1~1_combout\ = (\DO|Equal1~0_combout\ & (\DO|Equal0~31_combout\ & !\DO|sig_cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|Equal1~0_combout\,
	datac => \DO|Equal0~31_combout\,
	datad => \DO|sig_cnt\(6),
	combout => \DO|Equal1~1_combout\);

-- Location: LCCOMB_X34_Y20_N20
\DO|state_Do~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|state_Do~27_combout\ = (\DO|Equal1~1_combout\ & (\DO|state_Do.s5~q\ & ((!\DO|Equal2~0_combout\)))) # (!\DO|Equal1~1_combout\ & ((\DO|state_Do.s2~q\) # ((\DO|state_Do.s5~q\ & !\DO|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|Equal1~1_combout\,
	datab => \DO|state_Do.s5~q\,
	datac => \DO|state_Do.s2~q\,
	datad => \DO|Equal2~0_combout\,
	combout => \DO|state_Do~27_combout\);

-- Location: LCCOMB_X34_Y20_N14
\DO|state_Do~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|state_Do~26_combout\ = ((!\DO|state_Do.s0~q\ & ((!\DO|LessThan0~0_combout\) # (!\CRC8|sig_correlation\(4))))) # (!\DO|sig_main_clk_r~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_main_clk_r~combout\,
	datab => \DO|state_Do.s0~q\,
	datac => \CRC8|sig_correlation\(4),
	datad => \DO|LessThan0~0_combout\,
	combout => \DO|state_Do~26_combout\);

-- Location: LCCOMB_X34_Y20_N18
\DO|state_Do~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|state_Do~28_combout\ = (!\DO|state_Do~27_combout\ & (!\DO|state_Do~26_combout\ & ((\DO|Equal0~33_combout\) # (!\DO|state_Do.s1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|state_Do.s1~q\,
	datab => \DO|state_Do~27_combout\,
	datac => \DO|state_Do~26_combout\,
	datad => \DO|Equal0~33_combout\,
	combout => \DO|state_Do~28_combout\);

-- Location: FF_X34_Y20_N21
\DO|state_Do.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|state_Do.s1~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|state_Do~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|state_Do.s2~q\);

-- Location: FF_X34_Y20_N9
\DO|state_Do.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|state_Do.s2~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|state_Do~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|state_Do.s3~q\);

-- Location: FF_X34_Y20_N25
\DO|state_Do.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|state_Do.s3~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|state_Do.s4~q\);

-- Location: LCCOMB_X34_Y20_N26
\DO|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Selector5~0_combout\ = (\DO|state_Do.s4~q\) # ((\DO|state_Do.s5~q\ & !\DO|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DO|state_Do.s4~q\,
	datac => \DO|state_Do.s5~q\,
	datad => \DO|Equal2~0_combout\,
	combout => \DO|Selector5~0_combout\);

-- Location: FF_X34_Y20_N27
\DO|state_Do.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|Selector5~0_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|state_Do.s5~q\);

-- Location: LCCOMB_X34_Y20_N10
\DO|state_Do.s5a~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|state_Do.s5a~feeder_combout\ = \DO|state_Do.s5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|state_Do.s5~q\,
	combout => \DO|state_Do.s5a~feeder_combout\);

-- Location: FF_X34_Y20_N11
\DO|state_Do.s5a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|state_Do.s5a~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|state_Do~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|state_Do.s5a~q\);

-- Location: LCCOMB_X38_Y12_N8
\DO|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Selector7~0_combout\ = (\CRC8|crc8bit_out~q\ & \DO|state_Do.s5a~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CRC8|crc8bit_out~q\,
	datad => \DO|state_Do.s5a~q\,
	combout => \DO|Selector7~0_combout\);

-- Location: FF_X38_Y12_N9
\DO|state_Do.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|Selector7~0_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|state_Do.s6~q\);

-- Location: FF_X38_Y12_N19
\DO|state_Do.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|state_Do.s6~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|state_Do.s7~q\);

-- Location: LCCOMB_X38_Y12_N2
\DO|state_Do.s8~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|state_Do.s8~feeder_combout\ = \DO|state_Do.s7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|state_Do.s7~q\,
	combout => \DO|state_Do.s8~feeder_combout\);

-- Location: FF_X38_Y12_N3
\DO|state_Do.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|state_Do.s8~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|state_Do.s8~q\);

-- Location: LCCOMB_X34_Y20_N12
\DO|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Selector10~0_combout\ = (\DO|state_Do.s8~q\) # ((!\CRC8|crc8bit_out~q\ & \DO|state_Do.s5a~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CRC8|crc8bit_out~q\,
	datac => \DO|state_Do.s8~q\,
	datad => \DO|state_Do.s5a~q\,
	combout => \DO|Selector10~0_combout\);

-- Location: FF_X34_Y20_N13
\DO|state_Do.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|Selector10~0_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|state_Do.s9~q\);

-- Location: LCCOMB_X34_Y20_N28
\DO|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Selector0~0_combout\ = (!\DO|state_Do.s9~q\ & ((\DO|state_Do.s0~q\) # ((\CRC8|sig_correlation\(4) & \DO|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|state_Do.s9~q\,
	datab => \CRC8|sig_correlation\(4),
	datac => \DO|state_Do.s0~q\,
	datad => \DO|LessThan0~0_combout\,
	combout => \DO|Selector0~0_combout\);

-- Location: FF_X34_Y20_N29
\DO|state_Do.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|Selector0~0_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|state_Do.s0~q\);

-- Location: LCCOMB_X34_Y20_N16
\DO|state_Do.s1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|state_Do.s1~0_combout\ = !\DO|state_Do.s0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|state_Do.s0~q\,
	combout => \DO|state_Do.s1~0_combout\);

-- Location: FF_X34_Y20_N17
\DO|state_Do.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|state_Do.s1~0_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|state_Do~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|state_Do.s1~q\);

-- Location: LCCOMB_X34_Y20_N0
\DO|sig_rgb_leds_out[95]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[95]~0_combout\ = (\DO|state_Do.s1~q\ & (\DO|sig_main_clk_cut~q\ & !\DO|sig_main_clk_cut_not~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DO|state_Do.s1~q\,
	datac => \DO|sig_main_clk_cut~q\,
	datad => \DO|sig_main_clk_cut_not~q\,
	combout => \DO|sig_rgb_leds_out[95]~0_combout\);

-- Location: FF_X42_Y14_N29
\DO|sig_rgb_leds_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[0]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(0));

-- Location: LCCOMB_X42_Y14_N10
\DO|sig_rgb_leds_out[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[1]~feeder_combout\ = \DO|sig_rgb_leds_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(0),
	combout => \DO|sig_rgb_leds_out[1]~feeder_combout\);

-- Location: FF_X42_Y14_N11
\DO|sig_rgb_leds_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[1]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(1));

-- Location: LCCOMB_X42_Y14_N22
\DO|sig_rgb_leds_out[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[2]~feeder_combout\ = \DO|sig_rgb_leds_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(1),
	combout => \DO|sig_rgb_leds_out[2]~feeder_combout\);

-- Location: FF_X42_Y14_N23
\DO|sig_rgb_leds_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[2]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(2));

-- Location: FF_X42_Y14_N5
\DO|sig_rgb_leds_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(2),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(3));

-- Location: FF_X42_Y14_N19
\DO|sig_rgb_leds_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(3),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(4));

-- Location: LCCOMB_X42_Y14_N0
\DO|sig_rgb_leds_out[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[5]~feeder_combout\ = \DO|sig_rgb_leds_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(4),
	combout => \DO|sig_rgb_leds_out[5]~feeder_combout\);

-- Location: FF_X42_Y14_N1
\DO|sig_rgb_leds_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[5]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(5));

-- Location: LCCOMB_X42_Y14_N30
\DO|sig_rgb_leds_out[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[6]~feeder_combout\ = \DO|sig_rgb_leds_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(5),
	combout => \DO|sig_rgb_leds_out[6]~feeder_combout\);

-- Location: FF_X42_Y14_N31
\DO|sig_rgb_leds_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[6]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(6));

-- Location: FF_X42_Y14_N13
\DO|sig_rgb_leds_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(6),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(7));

-- Location: LCCOMB_X42_Y14_N24
\DO|sig_rgb_leds_out[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[8]~feeder_combout\ = \DO|sig_rgb_leds_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(7),
	combout => \DO|sig_rgb_leds_out[8]~feeder_combout\);

-- Location: FF_X42_Y14_N25
\DO|sig_rgb_leds_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[8]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(8));

-- Location: LCCOMB_X42_Y14_N20
\DO|sig_rgb_leds_out[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[9]~feeder_combout\ = \DO|sig_rgb_leds_out\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(8),
	combout => \DO|sig_rgb_leds_out[9]~feeder_combout\);

-- Location: FF_X42_Y14_N21
\DO|sig_rgb_leds_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[9]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(9));

-- Location: FF_X42_Y14_N27
\DO|sig_rgb_leds_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(9),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(10));

-- Location: FF_X42_Y14_N9
\DO|sig_rgb_leds_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(10),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(11));

-- Location: LCCOMB_X36_Y12_N30
\DO|sig_rgb_leds_out[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[12]~feeder_combout\ = \DO|sig_rgb_leds_out\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(11),
	combout => \DO|sig_rgb_leds_out[12]~feeder_combout\);

-- Location: FF_X36_Y12_N31
\DO|sig_rgb_leds_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[12]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(12));

-- Location: FF_X36_Y12_N21
\DO|sig_rgb_leds_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(12),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(13));

-- Location: LCCOMB_X36_Y12_N10
\DO|sig_rgb_leds_out[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[14]~feeder_combout\ = \DO|sig_rgb_leds_out\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(13),
	combout => \DO|sig_rgb_leds_out[14]~feeder_combout\);

-- Location: FF_X36_Y12_N11
\DO|sig_rgb_leds_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[14]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(14));

-- Location: LCCOMB_X36_Y12_N0
\DO|sig_rgb_leds_out[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[15]~feeder_combout\ = \DO|sig_rgb_leds_out\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(14),
	combout => \DO|sig_rgb_leds_out[15]~feeder_combout\);

-- Location: FF_X36_Y12_N1
\DO|sig_rgb_leds_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[15]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(15));

-- Location: LCCOMB_X36_Y12_N6
\DO|sig_rgb_leds_out[16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[16]~feeder_combout\ = \DO|sig_rgb_leds_out\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(15),
	combout => \DO|sig_rgb_leds_out[16]~feeder_combout\);

-- Location: FF_X36_Y12_N7
\DO|sig_rgb_leds_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[16]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(16));

-- Location: LCCOMB_X36_Y12_N18
\DO|sig_rgb_leds_out[17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[17]~feeder_combout\ = \DO|sig_rgb_leds_out\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(16),
	combout => \DO|sig_rgb_leds_out[17]~feeder_combout\);

-- Location: FF_X36_Y12_N19
\DO|sig_rgb_leds_out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[17]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(17));

-- Location: LCCOMB_X36_Y12_N24
\DO|sig_rgb_leds_out[18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[18]~feeder_combout\ = \DO|sig_rgb_leds_out\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(17),
	combout => \DO|sig_rgb_leds_out[18]~feeder_combout\);

-- Location: FF_X36_Y12_N25
\DO|sig_rgb_leds_out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[18]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(18));

-- Location: LCCOMB_X36_Y12_N14
\DO|sig_rgb_leds_out[19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[19]~feeder_combout\ = \DO|sig_rgb_leds_out\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(18),
	combout => \DO|sig_rgb_leds_out[19]~feeder_combout\);

-- Location: FF_X36_Y12_N15
\DO|sig_rgb_leds_out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[19]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(19));

-- Location: FF_X36_Y12_N13
\DO|sig_rgb_leds_out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(19),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(20));

-- Location: LCCOMB_X36_Y12_N26
\DO|sig_rgb_leds_out[21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[21]~feeder_combout\ = \DO|sig_rgb_leds_out\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(20),
	combout => \DO|sig_rgb_leds_out[21]~feeder_combout\);

-- Location: FF_X36_Y12_N27
\DO|sig_rgb_leds_out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[21]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(21));

-- Location: FF_X36_Y12_N9
\DO|sig_rgb_leds_out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(21),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(22));

-- Location: FF_X36_Y12_N23
\DO|sig_rgb_leds_out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(22),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(23));

-- Location: FF_X36_Y12_N29
\DO|sig_rgb_leds_out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(23),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(24));

-- Location: LCCOMB_X36_Y12_N2
\DO|sig_rgb_leds_out[25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[25]~feeder_combout\ = \DO|sig_rgb_leds_out\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(24),
	combout => \DO|sig_rgb_leds_out[25]~feeder_combout\);

-- Location: FF_X36_Y12_N3
\DO|sig_rgb_leds_out[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[25]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(25));

-- Location: LCCOMB_X36_Y12_N16
\DO|sig_rgb_leds_out[26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[26]~feeder_combout\ = \DO|sig_rgb_leds_out\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(25),
	combout => \DO|sig_rgb_leds_out[26]~feeder_combout\);

-- Location: FF_X36_Y12_N17
\DO|sig_rgb_leds_out[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[26]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(26));

-- Location: FF_X40_Y10_N21
\DO|sig_rgb_leds_out[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(26),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(27));

-- Location: LCCOMB_X40_Y10_N26
\DO|sig_rgb_leds_out[28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[28]~feeder_combout\ = \DO|sig_rgb_leds_out\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(27),
	combout => \DO|sig_rgb_leds_out[28]~feeder_combout\);

-- Location: FF_X40_Y10_N27
\DO|sig_rgb_leds_out[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[28]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(28));

-- Location: FF_X40_Y10_N25
\DO|sig_rgb_leds_out[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(28),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(29));

-- Location: LCCOMB_X40_Y10_N14
\DO|sig_rgb_leds_out[30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[30]~feeder_combout\ = \DO|sig_rgb_leds_out\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(29),
	combout => \DO|sig_rgb_leds_out[30]~feeder_combout\);

-- Location: FF_X40_Y10_N15
\DO|sig_rgb_leds_out[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[30]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(30));

-- Location: FF_X40_Y10_N5
\DO|sig_rgb_leds_out[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(30),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(31));

-- Location: FF_X40_Y10_N11
\DO|sig_rgb_leds_out[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(31),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(32));

-- Location: LCCOMB_X40_Y10_N16
\DO|sig_rgb_leds_out[33]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[33]~feeder_combout\ = \DO|sig_rgb_leds_out\(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(32),
	combout => \DO|sig_rgb_leds_out[33]~feeder_combout\);

-- Location: FF_X40_Y10_N17
\DO|sig_rgb_leds_out[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[33]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(33));

-- Location: LCCOMB_X40_Y10_N12
\DO|sig_rgb_leds_out[34]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[34]~feeder_combout\ = \DO|sig_rgb_leds_out\(33)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(33),
	combout => \DO|sig_rgb_leds_out[34]~feeder_combout\);

-- Location: FF_X40_Y10_N13
\DO|sig_rgb_leds_out[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[34]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(34));

-- Location: FF_X40_Y10_N19
\DO|sig_rgb_leds_out[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(34),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(35));

-- Location: LCCOMB_X40_Y10_N8
\DO|sig_rgb_leds_out[36]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[36]~feeder_combout\ = \DO|sig_rgb_leds_out\(35)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(35),
	combout => \DO|sig_rgb_leds_out[36]~feeder_combout\);

-- Location: FF_X40_Y10_N9
\DO|sig_rgb_leds_out[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[36]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(36));

-- Location: FF_X40_Y10_N23
\DO|sig_rgb_leds_out[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(36),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(37));

-- Location: FF_X40_Y10_N29
\DO|sig_rgb_leds_out[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(37),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(38));

-- Location: LCCOMB_X40_Y10_N2
\DO|sig_rgb_leds_out[39]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[39]~feeder_combout\ = \DO|sig_rgb_leds_out\(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(38),
	combout => \DO|sig_rgb_leds_out[39]~feeder_combout\);

-- Location: FF_X40_Y10_N3
\DO|sig_rgb_leds_out[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[39]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(39));

-- Location: FF_X40_Y10_N1
\DO|sig_rgb_leds_out[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(39),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(40));

-- Location: LCCOMB_X39_Y9_N20
\DO|sig_rgb_leds_out[41]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[41]~feeder_combout\ = \DO|sig_rgb_leds_out\(40)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(40),
	combout => \DO|sig_rgb_leds_out[41]~feeder_combout\);

-- Location: FF_X39_Y9_N21
\DO|sig_rgb_leds_out[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[41]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(41));

-- Location: LCCOMB_X39_Y9_N10
\DO|sig_rgb_leds_out[42]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[42]~feeder_combout\ = \DO|sig_rgb_leds_out\(41)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(41),
	combout => \DO|sig_rgb_leds_out[42]~feeder_combout\);

-- Location: FF_X39_Y9_N11
\DO|sig_rgb_leds_out[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[42]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(42));

-- Location: LCCOMB_X39_Y9_N8
\DO|sig_rgb_leds_out[43]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[43]~feeder_combout\ = \DO|sig_rgb_leds_out\(42)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(42),
	combout => \DO|sig_rgb_leds_out[43]~feeder_combout\);

-- Location: FF_X39_Y9_N9
\DO|sig_rgb_leds_out[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[43]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(43));

-- Location: FF_X39_Y9_N7
\DO|sig_rgb_leds_out[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(43),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(44));

-- Location: FF_X39_Y9_N29
\DO|sig_rgb_leds_out[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(44),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(45));

-- Location: LCCOMB_X39_Y9_N18
\DO|sig_rgb_leds_out[46]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[46]~feeder_combout\ = \DO|sig_rgb_leds_out\(45)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(45),
	combout => \DO|sig_rgb_leds_out[46]~feeder_combout\);

-- Location: FF_X39_Y9_N19
\DO|sig_rgb_leds_out[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[46]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(46));

-- Location: LCCOMB_X39_Y9_N24
\DO|sig_rgb_leds_out[47]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[47]~feeder_combout\ = \DO|sig_rgb_leds_out\(46)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(46),
	combout => \DO|sig_rgb_leds_out[47]~feeder_combout\);

-- Location: FF_X39_Y9_N25
\DO|sig_rgb_leds_out[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[47]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(47));

-- Location: LCCOMB_X39_Y9_N22
\DO|sig_rgb_leds_out[48]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[48]~feeder_combout\ = \DO|sig_rgb_leds_out\(47)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(47),
	combout => \DO|sig_rgb_leds_out[48]~feeder_combout\);

-- Location: FF_X39_Y9_N23
\DO|sig_rgb_leds_out[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[48]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(48));

-- Location: FF_X39_Y9_N5
\DO|sig_rgb_leds_out[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(48),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(49));

-- Location: FF_X39_Y9_N3
\DO|sig_rgb_leds_out[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(49),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(50));

-- Location: LCCOMB_X39_Y9_N0
\DO|sig_rgb_leds_out[51]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[51]~feeder_combout\ = \DO|sig_rgb_leds_out\(50)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(50),
	combout => \DO|sig_rgb_leds_out[51]~feeder_combout\);

-- Location: FF_X39_Y9_N1
\DO|sig_rgb_leds_out[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[51]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(51));

-- Location: FF_X37_Y11_N23
\DO|sig_rgb_leds_out[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(51),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(52));

-- Location: FF_X37_Y11_N29
\DO|sig_rgb_leds_out[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(52),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(53));

-- Location: LCCOMB_X37_Y11_N26
\DO|sig_rgb_leds_out[54]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[54]~feeder_combout\ = \DO|sig_rgb_leds_out\(53)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(53),
	combout => \DO|sig_rgb_leds_out[54]~feeder_combout\);

-- Location: FF_X37_Y11_N27
\DO|sig_rgb_leds_out[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[54]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(54));

-- Location: FF_X37_Y11_N17
\DO|sig_rgb_leds_out[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(54),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(55));

-- Location: LCCOMB_X37_Y11_N30
\DO|sig_rgb_leds_out[56]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[56]~feeder_combout\ = \DO|sig_rgb_leds_out\(55)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(55),
	combout => \DO|sig_rgb_leds_out[56]~feeder_combout\);

-- Location: FF_X37_Y11_N31
\DO|sig_rgb_leds_out[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[56]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(56));

-- Location: FF_X37_Y11_N5
\DO|sig_rgb_leds_out[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(56),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(57));

-- Location: LCCOMB_X37_Y11_N10
\DO|sig_rgb_leds_out[58]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[58]~feeder_combout\ = \DO|sig_rgb_leds_out\(57)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(57),
	combout => \DO|sig_rgb_leds_out[58]~feeder_combout\);

-- Location: FF_X37_Y11_N11
\DO|sig_rgb_leds_out[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[58]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(58));

-- Location: LCCOMB_X37_Y11_N0
\DO|sig_rgb_leds_out[59]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[59]~feeder_combout\ = \DO|sig_rgb_leds_out\(58)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(58),
	combout => \DO|sig_rgb_leds_out[59]~feeder_combout\);

-- Location: FF_X37_Y11_N1
\DO|sig_rgb_leds_out[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[59]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(59));

-- Location: LCCOMB_X37_Y11_N6
\DO|sig_rgb_leds_out[60]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[60]~feeder_combout\ = \DO|sig_rgb_leds_out\(59)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(59),
	combout => \DO|sig_rgb_leds_out[60]~feeder_combout\);

-- Location: FF_X37_Y11_N7
\DO|sig_rgb_leds_out[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[60]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(60));

-- Location: LCCOMB_X37_Y11_N20
\DO|sig_rgb_leds_out[61]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[61]~feeder_combout\ = \DO|sig_rgb_leds_out\(60)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(60),
	combout => \DO|sig_rgb_leds_out[61]~feeder_combout\);

-- Location: FF_X37_Y11_N21
\DO|sig_rgb_leds_out[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[61]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(61));

-- Location: LCCOMB_X37_Y11_N2
\DO|sig_rgb_leds_out[62]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[62]~feeder_combout\ = \DO|sig_rgb_leds_out\(61)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(61),
	combout => \DO|sig_rgb_leds_out[62]~feeder_combout\);

-- Location: FF_X37_Y11_N3
\DO|sig_rgb_leds_out[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[62]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(62));

-- Location: LCCOMB_X37_Y11_N8
\DO|sig_rgb_leds_out[63]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[63]~feeder_combout\ = \DO|sig_rgb_leds_out\(62)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(62),
	combout => \DO|sig_rgb_leds_out[63]~feeder_combout\);

-- Location: FF_X37_Y11_N9
\DO|sig_rgb_leds_out[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[63]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(63));

-- Location: FF_X37_Y11_N15
\DO|sig_rgb_leds_out[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(63),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(64));

-- Location: FF_X37_Y11_N13
\DO|sig_rgb_leds_out[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(64),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(65));

-- Location: FF_X37_Y11_N19
\DO|sig_rgb_leds_out[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(65),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(66));

-- Location: LCCOMB_X37_Y11_N24
\DO|sig_rgb_leds_out[67]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[67]~feeder_combout\ = \DO|sig_rgb_leds_out\(66)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(66),
	combout => \DO|sig_rgb_leds_out[67]~feeder_combout\);

-- Location: FF_X37_Y11_N25
\DO|sig_rgb_leds_out[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[67]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(67));

-- Location: FF_X40_Y11_N31
\DO|sig_rgb_leds_out[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(67),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(68));

-- Location: FF_X40_Y11_N5
\DO|sig_rgb_leds_out[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(68),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(69));

-- Location: FF_X40_Y11_N3
\DO|sig_rgb_leds_out[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(69),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(70));

-- Location: LCCOMB_X40_Y11_N24
\DO|sig_rgb_leds_out[71]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[71]~feeder_combout\ = \DO|sig_rgb_leds_out\(70)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(70),
	combout => \DO|sig_rgb_leds_out[71]~feeder_combout\);

-- Location: FF_X40_Y11_N25
\DO|sig_rgb_leds_out[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[71]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(71));

-- Location: LCCOMB_X40_Y11_N22
\DO|sig_rgb_leds_out[72]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[72]~feeder_combout\ = \DO|sig_rgb_leds_out\(71)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(71),
	combout => \DO|sig_rgb_leds_out[72]~feeder_combout\);

-- Location: FF_X40_Y11_N23
\DO|sig_rgb_leds_out[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[72]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(72));

-- Location: FF_X40_Y11_N13
\DO|sig_rgb_leds_out[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(72),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(73));

-- Location: LCCOMB_X40_Y11_N18
\DO|sig_rgb_leds_out[74]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[74]~feeder_combout\ = \DO|sig_rgb_leds_out\(73)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(73),
	combout => \DO|sig_rgb_leds_out[74]~feeder_combout\);

-- Location: FF_X40_Y11_N19
\DO|sig_rgb_leds_out[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[74]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(74));

-- Location: LCCOMB_X40_Y11_N8
\DO|sig_rgb_leds_out[75]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[75]~feeder_combout\ = \DO|sig_rgb_leds_out\(74)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(74),
	combout => \DO|sig_rgb_leds_out[75]~feeder_combout\);

-- Location: FF_X40_Y11_N9
\DO|sig_rgb_leds_out[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[75]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(75));

-- Location: FF_X40_Y11_N15
\DO|sig_rgb_leds_out[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(75),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(76));

-- Location: FF_X40_Y11_N21
\DO|sig_rgb_leds_out[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(76),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(77));

-- Location: LCCOMB_X40_Y11_N10
\DO|sig_rgb_leds_out[78]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[78]~feeder_combout\ = \DO|sig_rgb_leds_out\(77)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(77),
	combout => \DO|sig_rgb_leds_out[78]~feeder_combout\);

-- Location: FF_X40_Y11_N11
\DO|sig_rgb_leds_out[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[78]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(78));

-- Location: LCCOMB_X40_Y11_N16
\DO|sig_rgb_leds_out[79]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[79]~feeder_combout\ = \DO|sig_rgb_leds_out\(78)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(78),
	combout => \DO|sig_rgb_leds_out[79]~feeder_combout\);

-- Location: FF_X40_Y11_N17
\DO|sig_rgb_leds_out[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[79]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(79));

-- Location: LCCOMB_X40_Y11_N6
\DO|sig_rgb_leds_out[80]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[80]~feeder_combout\ = \DO|sig_rgb_leds_out\(79)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(79),
	combout => \DO|sig_rgb_leds_out[80]~feeder_combout\);

-- Location: FF_X40_Y11_N7
\DO|sig_rgb_leds_out[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[80]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(80));

-- Location: LCCOMB_X40_Y11_N28
\DO|sig_rgb_leds_out[81]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[81]~feeder_combout\ = \DO|sig_rgb_leds_out\(80)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(80),
	combout => \DO|sig_rgb_leds_out[81]~feeder_combout\);

-- Location: FF_X40_Y11_N29
\DO|sig_rgb_leds_out[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[81]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(81));

-- Location: LCCOMB_X40_Y11_N26
\DO|sig_rgb_leds_out[82]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[82]~feeder_combout\ = \DO|sig_rgb_leds_out\(81)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(81),
	combout => \DO|sig_rgb_leds_out[82]~feeder_combout\);

-- Location: FF_X40_Y11_N27
\DO|sig_rgb_leds_out[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[82]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(82));

-- Location: FF_X40_Y11_N1
\DO|sig_rgb_leds_out[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(82),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(83));

-- Location: LCCOMB_X38_Y12_N24
\DO|sig_rgb_leds_out[84]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[84]~feeder_combout\ = \DO|sig_rgb_leds_out\(83)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(83),
	combout => \DO|sig_rgb_leds_out[84]~feeder_combout\);

-- Location: FF_X38_Y12_N25
\DO|sig_rgb_leds_out[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[84]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(84));

-- Location: LCCOMB_X38_Y12_N6
\DO|sig_rgb_leds_out[85]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[85]~feeder_combout\ = \DO|sig_rgb_leds_out\(84)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(84),
	combout => \DO|sig_rgb_leds_out[85]~feeder_combout\);

-- Location: FF_X38_Y12_N7
\DO|sig_rgb_leds_out[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[85]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(85));

-- Location: LCCOMB_X38_Y12_N12
\DO|sig_rgb_leds_out[86]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[86]~feeder_combout\ = \DO|sig_rgb_leds_out\(85)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(85),
	combout => \DO|sig_rgb_leds_out[86]~feeder_combout\);

-- Location: FF_X38_Y12_N13
\DO|sig_rgb_leds_out[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[86]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(86));

-- Location: FF_X38_Y12_N15
\DO|sig_rgb_leds_out[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(86),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(87));

-- Location: FF_X38_Y12_N29
\DO|sig_rgb_leds_out[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(87),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(88));

-- Location: LCCOMB_X38_Y12_N16
\DO|sig_rgb_leds_out[89]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[89]~feeder_combout\ = \DO|sig_rgb_leds_out\(88)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(88),
	combout => \DO|sig_rgb_leds_out[89]~feeder_combout\);

-- Location: FF_X38_Y12_N17
\DO|sig_rgb_leds_out[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[89]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(89));

-- Location: LCCOMB_X38_Y12_N22
\DO|sig_rgb_leds_out[90]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[90]~feeder_combout\ = \DO|sig_rgb_leds_out\(89)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(89),
	combout => \DO|sig_rgb_leds_out[90]~feeder_combout\);

-- Location: FF_X38_Y12_N23
\DO|sig_rgb_leds_out[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[90]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(90));

-- Location: FF_X38_Y12_N21
\DO|sig_rgb_leds_out[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(90),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(91));

-- Location: LCCOMB_X38_Y12_N10
\DO|sig_rgb_leds_out[92]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[92]~feeder_combout\ = \DO|sig_rgb_leds_out\(91)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(91),
	combout => \DO|sig_rgb_leds_out[92]~feeder_combout\);

-- Location: FF_X38_Y12_N11
\DO|sig_rgb_leds_out[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[92]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(92));

-- Location: LCCOMB_X38_Y12_N4
\DO|sig_rgb_leds_out[93]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_rgb_leds_out[93]~feeder_combout\ = \DO|sig_rgb_leds_out\(92)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(92),
	combout => \DO|sig_rgb_leds_out[93]~feeder_combout\);

-- Location: FF_X38_Y12_N5
\DO|sig_rgb_leds_out[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_rgb_leds_out[93]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(93));

-- Location: FF_X38_Y12_N27
\DO|sig_rgb_leds_out[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(93),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(94));

-- Location: FF_X38_Y12_N31
\DO|sig_rgb_leds_out[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(94),
	clrn => \resetn~input_o\,
	sload => VCC,
	ena => \DO|sig_rgb_leds_out[95]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_rgb_leds_out\(95));

-- Location: LCCOMB_X38_Y12_N18
\DO|green_leds[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|green_leds[0]~0_combout\ = (\DO|sig_main_clk_cut~q\ & (\resetn~input_o\ & (\DO|state_Do.s7~q\ & !\DO|sig_main_clk_cut_not~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_main_clk_cut~q\,
	datab => \resetn~input_o\,
	datac => \DO|state_Do.s7~q\,
	datad => \DO|sig_main_clk_cut_not~q\,
	combout => \DO|green_leds[0]~0_combout\);

-- Location: FF_X37_Y12_N5
\DO|rgb_leds[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(95),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(95));

-- Location: FF_X40_Y12_N21
\DO|rgb_leds[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(93),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(93));

-- Location: LCCOMB_X41_Y12_N8
\DO|rgb_leds[92]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[92]~feeder_combout\ = \DO|sig_rgb_leds_out\(92)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(92),
	combout => \DO|rgb_leds[92]~feeder_combout\);

-- Location: FF_X41_Y12_N9
\DO|rgb_leds[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[92]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(92));

-- Location: LCCOMB_X39_Y12_N28
\DO|rgb_leds[91]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[91]~feeder_combout\ = \DO|sig_rgb_leds_out\(91)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(91),
	combout => \DO|rgb_leds[91]~feeder_combout\);

-- Location: FF_X39_Y12_N29
\DO|rgb_leds[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[91]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(91));

-- Location: LCCOMB_X39_Y12_N10
\DO|rgb_leds[88]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[88]~feeder_combout\ = \DO|sig_rgb_leds_out\(88)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(88),
	combout => \DO|rgb_leds[88]~feeder_combout\);

-- Location: FF_X39_Y12_N11
\DO|rgb_leds[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[88]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(88));

-- Location: FF_X39_Y12_N1
\DO|rgb_leds[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(85),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(85));

-- Location: LCCOMB_X40_Y13_N14
\DO|rgb_leds[84]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[84]~feeder_combout\ = \DO|sig_rgb_leds_out\(84)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(84),
	combout => \DO|rgb_leds[84]~feeder_combout\);

-- Location: FF_X40_Y13_N15
\DO|rgb_leds[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[84]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(84));

-- Location: LCCOMB_X40_Y13_N26
\DO|rgb_leds[83]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[83]~feeder_combout\ = \DO|sig_rgb_leds_out\(83)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(83),
	combout => \DO|rgb_leds[83]~feeder_combout\);

-- Location: FF_X40_Y13_N27
\DO|rgb_leds[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[83]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(83));

-- Location: FF_X40_Y13_N23
\DO|rgb_leds[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(82),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(82));

-- Location: FF_X40_Y13_N7
\DO|rgb_leds[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(80),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(80));

-- Location: LCCOMB_X40_Y13_N18
\DO|rgb_leds[79]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[79]~feeder_combout\ = \DO|sig_rgb_leds_out\(79)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(79),
	combout => \DO|rgb_leds[79]~feeder_combout\);

-- Location: FF_X40_Y13_N19
\DO|rgb_leds[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[79]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(79));

-- Location: FF_X40_Y13_N31
\DO|rgb_leds[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(77),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(77));

-- Location: LCCOMB_X41_Y11_N8
\DO|rgb_leds[75]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[75]~feeder_combout\ = \DO|sig_rgb_leds_out\(75)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(75),
	combout => \DO|rgb_leds[75]~feeder_combout\);

-- Location: FF_X41_Y11_N9
\DO|rgb_leds[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[75]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(75));

-- Location: LCCOMB_X41_Y11_N4
\DO|rgb_leds[74]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[74]~feeder_combout\ = \DO|sig_rgb_leds_out\(74)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(74),
	combout => \DO|rgb_leds[74]~feeder_combout\);

-- Location: FF_X41_Y11_N5
\DO|rgb_leds[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[74]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(74));

-- Location: LCCOMB_X41_Y11_N20
\DO|rgb_leds[72]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[72]~feeder_combout\ = \DO|sig_rgb_leds_out\(72)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(72),
	combout => \DO|rgb_leds[72]~feeder_combout\);

-- Location: FF_X41_Y11_N21
\DO|rgb_leds[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[72]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(72));

-- Location: LCCOMB_X41_Y11_N28
\DO|rgb_leds[70]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[70]~feeder_combout\ = \DO|sig_rgb_leds_out\(70)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(70),
	combout => \DO|rgb_leds[70]~feeder_combout\);

-- Location: FF_X41_Y11_N29
\DO|rgb_leds[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[70]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(70));

-- Location: LCCOMB_X38_Y11_N4
\DO|rgb_leds[65]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[65]~feeder_combout\ = \DO|sig_rgb_leds_out\(65)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(65),
	combout => \DO|rgb_leds[65]~feeder_combout\);

-- Location: FF_X38_Y11_N5
\DO|rgb_leds[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[65]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(65));

-- Location: LCCOMB_X38_Y11_N20
\DO|rgb_leds[63]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[63]~feeder_combout\ = \DO|sig_rgb_leds_out\(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(63),
	combout => \DO|rgb_leds[63]~feeder_combout\);

-- Location: FF_X38_Y11_N21
\DO|rgb_leds[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[63]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(63));

-- Location: FF_X37_Y13_N5
\DO|rgb_leds[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(60),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(60));

-- Location: LCCOMB_X37_Y12_N0
\DO|rgb_leds[57]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[57]~feeder_combout\ = \DO|sig_rgb_leds_out\(57)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(57),
	combout => \DO|rgb_leds[57]~feeder_combout\);

-- Location: FF_X37_Y12_N1
\DO|rgb_leds[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[57]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(57));

-- Location: LCCOMB_X38_Y9_N20
\DO|rgb_leds[49]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[49]~feeder_combout\ = \DO|sig_rgb_leds_out\(49)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(49),
	combout => \DO|rgb_leds[49]~feeder_combout\);

-- Location: FF_X38_Y9_N21
\DO|rgb_leds[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[49]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(49));

-- Location: LCCOMB_X38_Y9_N4
\DO|rgb_leds[45]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[45]~feeder_combout\ = \DO|sig_rgb_leds_out\(45)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(45),
	combout => \DO|rgb_leds[45]~feeder_combout\);

-- Location: FF_X38_Y9_N5
\DO|rgb_leds[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[45]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(45));

-- Location: LCCOMB_X39_Y11_N18
\DO|rgb_leds[39]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[39]~feeder_combout\ = \DO|sig_rgb_leds_out\(39)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(39),
	combout => \DO|rgb_leds[39]~feeder_combout\);

-- Location: FF_X39_Y11_N19
\DO|rgb_leds[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[39]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(39));

-- Location: LCCOMB_X40_Y10_N30
\DO|rgb_leds[32]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[32]~feeder_combout\ = \DO|sig_rgb_leds_out\(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(32),
	combout => \DO|rgb_leds[32]~feeder_combout\);

-- Location: FF_X40_Y10_N31
\DO|rgb_leds[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[32]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(32));

-- Location: LCCOMB_X40_Y12_N28
\DO|rgb_leds[31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[31]~feeder_combout\ = \DO|sig_rgb_leds_out\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(31),
	combout => \DO|rgb_leds[31]~feeder_combout\);

-- Location: FF_X40_Y12_N29
\DO|rgb_leds[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[31]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(31));

-- Location: LCCOMB_X41_Y12_N28
\DO|rgb_leds[30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[30]~feeder_combout\ = \DO|sig_rgb_leds_out\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(30),
	combout => \DO|rgb_leds[30]~feeder_combout\);

-- Location: FF_X41_Y12_N29
\DO|rgb_leds[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[30]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(30));

-- Location: LCCOMB_X40_Y12_N22
\DO|rgb_leds[26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[26]~feeder_combout\ = \DO|sig_rgb_leds_out\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(26),
	combout => \DO|rgb_leds[26]~feeder_combout\);

-- Location: FF_X40_Y12_N23
\DO|rgb_leds[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[26]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(26));

-- Location: FF_X40_Y12_N9
\DO|rgb_leds[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(25),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(25));

-- Location: LCCOMB_X37_Y12_N26
\DO|rgb_leds[22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[22]~feeder_combout\ = \DO|sig_rgb_leds_out\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(22),
	combout => \DO|rgb_leds[22]~feeder_combout\);

-- Location: FF_X37_Y12_N27
\DO|rgb_leds[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[22]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(22));

-- Location: FF_X37_Y12_N31
\DO|rgb_leds[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(21),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(21));

-- Location: FF_X35_Y12_N19
\DO|rgb_leds[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(14),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(14));

-- Location: FF_X35_Y12_N11
\DO|rgb_leds[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(12),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(12));

-- Location: LCCOMB_X35_Y12_N30
\DO|rgb_leds[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[11]~feeder_combout\ = \DO|sig_rgb_leds_out\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(11),
	combout => \DO|rgb_leds[11]~feeder_combout\);

-- Location: FF_X35_Y12_N31
\DO|rgb_leds[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[11]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(11));

-- Location: FF_X41_Y14_N29
\DO|rgb_leds[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(9),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(9));

-- Location: LCCOMB_X41_Y14_N4
\DO|rgb_leds[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[4]~feeder_combout\ = \DO|sig_rgb_leds_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(4),
	combout => \DO|rgb_leds[4]~feeder_combout\);

-- Location: FF_X41_Y14_N5
\DO|rgb_leds[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[4]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(4));

-- Location: FF_X41_Y14_N7
\DO|rgb_leds[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(1),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(1));

-- Location: LCCOMB_X38_Y12_N0
\DO|Selector112~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|Selector112~0_combout\ = (!\DO|state_Do.s6~q\ & ((\DO|load_leds~q\) # (\DO|state_Do.s8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DO|state_Do.s6~q\,
	datac => \DO|load_leds~q\,
	datad => \DO|state_Do.s8~q\,
	combout => \DO|Selector112~0_combout\);

-- Location: FF_X38_Y12_N1
\DO|load_leds\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|Selector112~0_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_main_clk_r~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|load_leds~q\);

-- Location: LCCOMB_X43_Y8_N12
\RGB_Leds|sig_cnt_delay~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|sig_cnt_delay~8_combout\ = (\RGB_Leds|Add0~22_combout\ & !\RGB_Leds|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|Add0~22_combout\,
	datad => \RGB_Leds|Equal0~7_combout\,
	combout => \RGB_Leds|sig_cnt_delay~8_combout\);

-- Location: FF_X43_Y8_N13
\RGB_Leds|set_leds:sig_cnt_delay[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|sig_cnt_delay~8_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|ALT_INV_state_leds.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|set_leds:sig_cnt_delay[11]~q\);

-- Location: LCCOMB_X42_Y8_N2
\RGB_Leds|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add0~0_combout\ = \RGB_Leds|set_leds:sig_cnt_delay[0]~q\ $ (VCC)
-- \RGB_Leds|Add0~1\ = CARRY(\RGB_Leds|set_leds:sig_cnt_delay[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|set_leds:sig_cnt_delay[0]~q\,
	datad => VCC,
	combout => \RGB_Leds|Add0~0_combout\,
	cout => \RGB_Leds|Add0~1\);

-- Location: FF_X42_Y8_N3
\RGB_Leds|set_leds:sig_cnt_delay[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add0~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|ALT_INV_state_leds.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|set_leds:sig_cnt_delay[0]~q\);

-- Location: LCCOMB_X42_Y8_N4
\RGB_Leds|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add0~2_combout\ = (\RGB_Leds|set_leds:sig_cnt_delay[1]~q\ & (!\RGB_Leds|Add0~1\)) # (!\RGB_Leds|set_leds:sig_cnt_delay[1]~q\ & ((\RGB_Leds|Add0~1\) # (GND)))
-- \RGB_Leds|Add0~3\ = CARRY((!\RGB_Leds|Add0~1\) # (!\RGB_Leds|set_leds:sig_cnt_delay[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|set_leds:sig_cnt_delay[1]~q\,
	datad => VCC,
	cin => \RGB_Leds|Add0~1\,
	combout => \RGB_Leds|Add0~2_combout\,
	cout => \RGB_Leds|Add0~3\);

-- Location: FF_X42_Y8_N5
\RGB_Leds|set_leds:sig_cnt_delay[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add0~2_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|ALT_INV_state_leds.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|set_leds:sig_cnt_delay[1]~q\);

-- Location: LCCOMB_X42_Y8_N6
\RGB_Leds|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add0~4_combout\ = (\RGB_Leds|set_leds:sig_cnt_delay[2]~q\ & (\RGB_Leds|Add0~3\ $ (GND))) # (!\RGB_Leds|set_leds:sig_cnt_delay[2]~q\ & (!\RGB_Leds|Add0~3\ & VCC))
-- \RGB_Leds|Add0~5\ = CARRY((\RGB_Leds|set_leds:sig_cnt_delay[2]~q\ & !\RGB_Leds|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|set_leds:sig_cnt_delay[2]~q\,
	datad => VCC,
	cin => \RGB_Leds|Add0~3\,
	combout => \RGB_Leds|Add0~4_combout\,
	cout => \RGB_Leds|Add0~5\);

-- Location: FF_X42_Y8_N7
\RGB_Leds|set_leds:sig_cnt_delay[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add0~4_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|ALT_INV_state_leds.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|set_leds:sig_cnt_delay[2]~q\);

-- Location: LCCOMB_X42_Y8_N8
\RGB_Leds|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add0~6_combout\ = (\RGB_Leds|set_leds:sig_cnt_delay[3]~q\ & (!\RGB_Leds|Add0~5\)) # (!\RGB_Leds|set_leds:sig_cnt_delay[3]~q\ & ((\RGB_Leds|Add0~5\) # (GND)))
-- \RGB_Leds|Add0~7\ = CARRY((!\RGB_Leds|Add0~5\) # (!\RGB_Leds|set_leds:sig_cnt_delay[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|set_leds:sig_cnt_delay[3]~q\,
	datad => VCC,
	cin => \RGB_Leds|Add0~5\,
	combout => \RGB_Leds|Add0~6_combout\,
	cout => \RGB_Leds|Add0~7\);

-- Location: LCCOMB_X43_Y8_N4
\RGB_Leds|sig_cnt_delay~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|sig_cnt_delay~5_combout\ = (\RGB_Leds|Add0~6_combout\ & !\RGB_Leds|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Add0~6_combout\,
	datad => \RGB_Leds|Equal0~7_combout\,
	combout => \RGB_Leds|sig_cnt_delay~5_combout\);

-- Location: FF_X43_Y8_N5
\RGB_Leds|set_leds:sig_cnt_delay[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|sig_cnt_delay~5_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|ALT_INV_state_leds.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|set_leds:sig_cnt_delay[3]~q\);

-- Location: LCCOMB_X42_Y8_N10
\RGB_Leds|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add0~8_combout\ = (\RGB_Leds|set_leds:sig_cnt_delay[4]~q\ & (\RGB_Leds|Add0~7\ $ (GND))) # (!\RGB_Leds|set_leds:sig_cnt_delay[4]~q\ & (!\RGB_Leds|Add0~7\ & VCC))
-- \RGB_Leds|Add0~9\ = CARRY((\RGB_Leds|set_leds:sig_cnt_delay[4]~q\ & !\RGB_Leds|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|set_leds:sig_cnt_delay[4]~q\,
	datad => VCC,
	cin => \RGB_Leds|Add0~7\,
	combout => \RGB_Leds|Add0~8_combout\,
	cout => \RGB_Leds|Add0~9\);

-- Location: LCCOMB_X43_Y8_N18
\RGB_Leds|sig_cnt_delay~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|sig_cnt_delay~4_combout\ = (\RGB_Leds|Add0~8_combout\ & !\RGB_Leds|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Add0~8_combout\,
	datad => \RGB_Leds|Equal0~7_combout\,
	combout => \RGB_Leds|sig_cnt_delay~4_combout\);

-- Location: FF_X43_Y8_N19
\RGB_Leds|set_leds:sig_cnt_delay[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|sig_cnt_delay~4_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|ALT_INV_state_leds.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|set_leds:sig_cnt_delay[4]~q\);

-- Location: LCCOMB_X42_Y8_N12
\RGB_Leds|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add0~10_combout\ = (\RGB_Leds|set_leds:sig_cnt_delay[5]~q\ & (!\RGB_Leds|Add0~9\)) # (!\RGB_Leds|set_leds:sig_cnt_delay[5]~q\ & ((\RGB_Leds|Add0~9\) # (GND)))
-- \RGB_Leds|Add0~11\ = CARRY((!\RGB_Leds|Add0~9\) # (!\RGB_Leds|set_leds:sig_cnt_delay[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|set_leds:sig_cnt_delay[5]~q\,
	datad => VCC,
	cin => \RGB_Leds|Add0~9\,
	combout => \RGB_Leds|Add0~10_combout\,
	cout => \RGB_Leds|Add0~11\);

-- Location: FF_X42_Y8_N13
\RGB_Leds|set_leds:sig_cnt_delay[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add0~10_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|ALT_INV_state_leds.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|set_leds:sig_cnt_delay[5]~q\);

-- Location: LCCOMB_X42_Y8_N14
\RGB_Leds|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add0~12_combout\ = (\RGB_Leds|set_leds:sig_cnt_delay[6]~q\ & (\RGB_Leds|Add0~11\ $ (GND))) # (!\RGB_Leds|set_leds:sig_cnt_delay[6]~q\ & (!\RGB_Leds|Add0~11\ & VCC))
-- \RGB_Leds|Add0~13\ = CARRY((\RGB_Leds|set_leds:sig_cnt_delay[6]~q\ & !\RGB_Leds|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|set_leds:sig_cnt_delay[6]~q\,
	datad => VCC,
	cin => \RGB_Leds|Add0~11\,
	combout => \RGB_Leds|Add0~12_combout\,
	cout => \RGB_Leds|Add0~13\);

-- Location: FF_X42_Y8_N15
\RGB_Leds|set_leds:sig_cnt_delay[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add0~12_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|ALT_INV_state_leds.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|set_leds:sig_cnt_delay[6]~q\);

-- Location: LCCOMB_X42_Y8_N16
\RGB_Leds|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add0~14_combout\ = (\RGB_Leds|set_leds:sig_cnt_delay[7]~q\ & (!\RGB_Leds|Add0~13\)) # (!\RGB_Leds|set_leds:sig_cnt_delay[7]~q\ & ((\RGB_Leds|Add0~13\) # (GND)))
-- \RGB_Leds|Add0~15\ = CARRY((!\RGB_Leds|Add0~13\) # (!\RGB_Leds|set_leds:sig_cnt_delay[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|set_leds:sig_cnt_delay[7]~q\,
	datad => VCC,
	cin => \RGB_Leds|Add0~13\,
	combout => \RGB_Leds|Add0~14_combout\,
	cout => \RGB_Leds|Add0~15\);

-- Location: LCCOMB_X43_Y8_N30
\RGB_Leds|sig_cnt_delay~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|sig_cnt_delay~6_combout\ = (\RGB_Leds|Add0~14_combout\ & !\RGB_Leds|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RGB_Leds|Add0~14_combout\,
	datad => \RGB_Leds|Equal0~7_combout\,
	combout => \RGB_Leds|sig_cnt_delay~6_combout\);

-- Location: FF_X43_Y8_N31
\RGB_Leds|set_leds:sig_cnt_delay[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|sig_cnt_delay~6_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|ALT_INV_state_leds.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|set_leds:sig_cnt_delay[7]~q\);

-- Location: LCCOMB_X42_Y8_N18
\RGB_Leds|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add0~16_combout\ = (\RGB_Leds|set_leds:sig_cnt_delay[8]~q\ & (\RGB_Leds|Add0~15\ $ (GND))) # (!\RGB_Leds|set_leds:sig_cnt_delay[8]~q\ & (!\RGB_Leds|Add0~15\ & VCC))
-- \RGB_Leds|Add0~17\ = CARRY((\RGB_Leds|set_leds:sig_cnt_delay[8]~q\ & !\RGB_Leds|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|set_leds:sig_cnt_delay[8]~q\,
	datad => VCC,
	cin => \RGB_Leds|Add0~15\,
	combout => \RGB_Leds|Add0~16_combout\,
	cout => \RGB_Leds|Add0~17\);

-- Location: LCCOMB_X42_Y8_N20
\RGB_Leds|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add0~18_combout\ = (\RGB_Leds|set_leds:sig_cnt_delay[9]~q\ & (!\RGB_Leds|Add0~17\)) # (!\RGB_Leds|set_leds:sig_cnt_delay[9]~q\ & ((\RGB_Leds|Add0~17\) # (GND)))
-- \RGB_Leds|Add0~19\ = CARRY((!\RGB_Leds|Add0~17\) # (!\RGB_Leds|set_leds:sig_cnt_delay[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|set_leds:sig_cnt_delay[9]~q\,
	datad => VCC,
	cin => \RGB_Leds|Add0~17\,
	combout => \RGB_Leds|Add0~18_combout\,
	cout => \RGB_Leds|Add0~19\);

-- Location: LCCOMB_X43_Y8_N2
\RGB_Leds|sig_cnt_delay~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|sig_cnt_delay~7_combout\ = (\RGB_Leds|Add0~18_combout\ & !\RGB_Leds|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|Add0~18_combout\,
	datad => \RGB_Leds|Equal0~7_combout\,
	combout => \RGB_Leds|sig_cnt_delay~7_combout\);

-- Location: FF_X43_Y8_N3
\RGB_Leds|set_leds:sig_cnt_delay[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|sig_cnt_delay~7_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|ALT_INV_state_leds.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|set_leds:sig_cnt_delay[9]~q\);

-- Location: LCCOMB_X42_Y8_N22
\RGB_Leds|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add0~20_combout\ = (\RGB_Leds|set_leds:sig_cnt_delay[10]~q\ & (\RGB_Leds|Add0~19\ $ (GND))) # (!\RGB_Leds|set_leds:sig_cnt_delay[10]~q\ & (!\RGB_Leds|Add0~19\ & VCC))
-- \RGB_Leds|Add0~21\ = CARRY((\RGB_Leds|set_leds:sig_cnt_delay[10]~q\ & !\RGB_Leds|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|set_leds:sig_cnt_delay[10]~q\,
	datad => VCC,
	cin => \RGB_Leds|Add0~19\,
	combout => \RGB_Leds|Add0~20_combout\,
	cout => \RGB_Leds|Add0~21\);

-- Location: FF_X42_Y8_N23
\RGB_Leds|set_leds:sig_cnt_delay[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add0~20_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|ALT_INV_state_leds.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|set_leds:sig_cnt_delay[10]~q\);

-- Location: LCCOMB_X42_Y8_N24
\RGB_Leds|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add0~22_combout\ = (\RGB_Leds|set_leds:sig_cnt_delay[11]~q\ & (!\RGB_Leds|Add0~21\)) # (!\RGB_Leds|set_leds:sig_cnt_delay[11]~q\ & ((\RGB_Leds|Add0~21\) # (GND)))
-- \RGB_Leds|Add0~23\ = CARRY((!\RGB_Leds|Add0~21\) # (!\RGB_Leds|set_leds:sig_cnt_delay[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|set_leds:sig_cnt_delay[11]~q\,
	datad => VCC,
	cin => \RGB_Leds|Add0~21\,
	combout => \RGB_Leds|Add0~22_combout\,
	cout => \RGB_Leds|Add0~23\);

-- Location: LCCOMB_X43_Y8_N20
\RGB_Leds|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal0~3_combout\ = (\RGB_Leds|Add0~6_combout\ & (!\RGB_Leds|Add0~4_combout\ & (!\RGB_Leds|Add0~2_combout\ & !\RGB_Leds|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Add0~6_combout\,
	datab => \RGB_Leds|Add0~4_combout\,
	datac => \RGB_Leds|Add0~2_combout\,
	datad => \RGB_Leds|Add0~0_combout\,
	combout => \RGB_Leds|Equal0~3_combout\);

-- Location: LCCOMB_X43_Y8_N6
\RGB_Leds|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal0~4_combout\ = (!\RGB_Leds|Add0~12_combout\ & (\RGB_Leds|Equal0~3_combout\ & (\RGB_Leds|Add0~14_combout\ & !\RGB_Leds|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Add0~12_combout\,
	datab => \RGB_Leds|Equal0~3_combout\,
	datac => \RGB_Leds|Add0~14_combout\,
	datad => \RGB_Leds|Add0~10_combout\,
	combout => \RGB_Leds|Equal0~4_combout\);

-- Location: LCCOMB_X43_Y8_N24
\RGB_Leds|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal0~5_combout\ = (\RGB_Leds|Add0~8_combout\ & (\RGB_Leds|Add0~18_combout\ & (!\RGB_Leds|Add0~16_combout\ & \RGB_Leds|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Add0~8_combout\,
	datab => \RGB_Leds|Add0~18_combout\,
	datac => \RGB_Leds|Add0~16_combout\,
	datad => \RGB_Leds|Equal0~4_combout\,
	combout => \RGB_Leds|Equal0~5_combout\);

-- Location: LCCOMB_X43_Y8_N26
\RGB_Leds|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal0~6_combout\ = (\RGB_Leds|Add0~22_combout\ & (!\RGB_Leds|Add0~20_combout\ & \RGB_Leds|Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|Add0~22_combout\,
	datac => \RGB_Leds|Add0~20_combout\,
	datad => \RGB_Leds|Equal0~5_combout\,
	combout => \RGB_Leds|Equal0~6_combout\);

-- Location: FF_X42_Y8_N31
\RGB_Leds|set_leds:sig_cnt_delay[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add0~28_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|ALT_INV_state_leds.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|set_leds:sig_cnt_delay[14]~q\);

-- Location: LCCOMB_X42_Y8_N26
\RGB_Leds|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add0~24_combout\ = (\RGB_Leds|set_leds:sig_cnt_delay[12]~q\ & (\RGB_Leds|Add0~23\ $ (GND))) # (!\RGB_Leds|set_leds:sig_cnt_delay[12]~q\ & (!\RGB_Leds|Add0~23\ & VCC))
-- \RGB_Leds|Add0~25\ = CARRY((\RGB_Leds|set_leds:sig_cnt_delay[12]~q\ & !\RGB_Leds|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|set_leds:sig_cnt_delay[12]~q\,
	datad => VCC,
	cin => \RGB_Leds|Add0~23\,
	combout => \RGB_Leds|Add0~24_combout\,
	cout => \RGB_Leds|Add0~25\);

-- Location: LCCOMB_X42_Y8_N28
\RGB_Leds|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add0~26_combout\ = (\RGB_Leds|set_leds:sig_cnt_delay[13]~q\ & (!\RGB_Leds|Add0~25\)) # (!\RGB_Leds|set_leds:sig_cnt_delay[13]~q\ & ((\RGB_Leds|Add0~25\) # (GND)))
-- \RGB_Leds|Add0~27\ = CARRY((!\RGB_Leds|Add0~25\) # (!\RGB_Leds|set_leds:sig_cnt_delay[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|set_leds:sig_cnt_delay[13]~q\,
	datad => VCC,
	cin => \RGB_Leds|Add0~25\,
	combout => \RGB_Leds|Add0~26_combout\,
	cout => \RGB_Leds|Add0~27\);

-- Location: LCCOMB_X42_Y8_N0
\RGB_Leds|sig_cnt_delay~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|sig_cnt_delay~9_combout\ = (\RGB_Leds|Add0~24_combout\ & (((\RGB_Leds|Add0~28_combout\) # (!\RGB_Leds|Equal0~6_combout\)) # (!\RGB_Leds|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Add0~24_combout\,
	datab => \RGB_Leds|Add0~26_combout\,
	datac => \RGB_Leds|Add0~28_combout\,
	datad => \RGB_Leds|Equal0~6_combout\,
	combout => \RGB_Leds|sig_cnt_delay~9_combout\);

-- Location: FF_X42_Y8_N1
\RGB_Leds|set_leds:sig_cnt_delay[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|sig_cnt_delay~9_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|ALT_INV_state_leds.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|set_leds:sig_cnt_delay[12]~q\);

-- Location: LCCOMB_X43_Y8_N8
\RGB_Leds|sig_cnt_delay~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|sig_cnt_delay~10_combout\ = (\RGB_Leds|Add0~26_combout\ & (((\RGB_Leds|Add0~28_combout\) # (!\RGB_Leds|Add0~24_combout\)) # (!\RGB_Leds|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Equal0~6_combout\,
	datab => \RGB_Leds|Add0~28_combout\,
	datac => \RGB_Leds|Add0~24_combout\,
	datad => \RGB_Leds|Add0~26_combout\,
	combout => \RGB_Leds|sig_cnt_delay~10_combout\);

-- Location: FF_X43_Y8_N9
\RGB_Leds|set_leds:sig_cnt_delay[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|sig_cnt_delay~10_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|ALT_INV_state_leds.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|set_leds:sig_cnt_delay[13]~q\);

-- Location: LCCOMB_X42_Y8_N30
\RGB_Leds|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add0~28_combout\ = \RGB_Leds|Add0~27\ $ (!\RGB_Leds|set_leds:sig_cnt_delay[14]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \RGB_Leds|set_leds:sig_cnt_delay[14]~q\,
	cin => \RGB_Leds|Add0~27\,
	combout => \RGB_Leds|Add0~28_combout\);

-- Location: LCCOMB_X43_Y8_N28
\RGB_Leds|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal0~7_combout\ = (\RGB_Leds|Equal0~6_combout\ & (!\RGB_Leds|Add0~28_combout\ & (\RGB_Leds|Add0~24_combout\ & \RGB_Leds|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Equal0~6_combout\,
	datab => \RGB_Leds|Add0~28_combout\,
	datac => \RGB_Leds|Add0~24_combout\,
	datad => \RGB_Leds|Add0~26_combout\,
	combout => \RGB_Leds|Equal0~7_combout\);

-- Location: LCCOMB_X39_Y7_N26
\RGB_Leds|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector1~0_combout\ = (\RGB_Leds|Equal1~32_combout\ & (!\RGB_Leds|state_leds.s4~q\ & ((\RGB_Leds|state_leds.s0~q\) # (\RGB_Leds|Equal0~7_combout\)))) # (!\RGB_Leds|Equal1~32_combout\ & (((\RGB_Leds|state_leds.s0~q\) # 
-- (\RGB_Leds|Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Equal1~32_combout\,
	datab => \RGB_Leds|state_leds.s4~q\,
	datac => \RGB_Leds|state_leds.s0~q\,
	datad => \RGB_Leds|Equal0~7_combout\,
	combout => \RGB_Leds|Selector1~0_combout\);

-- Location: FF_X39_Y7_N27
\RGB_Leds|state_leds.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector1~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|state_leds.s0~q\);

-- Location: FF_X42_Y8_N19
\RGB_Leds|set_leds:sig_cnt_delay[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add0~16_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|ALT_INV_state_leds.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|set_leds:sig_cnt_delay[8]~q\);

-- Location: LCCOMB_X43_Y8_N14
\RGB_Leds|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal0~1_combout\ = (!\RGB_Leds|Add0~16_combout\ & (\RGB_Leds|Add0~22_combout\ & (!\RGB_Leds|Add0~20_combout\ & \RGB_Leds|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Add0~16_combout\,
	datab => \RGB_Leds|Add0~22_combout\,
	datac => \RGB_Leds|Add0~20_combout\,
	datad => \RGB_Leds|Add0~18_combout\,
	combout => \RGB_Leds|Equal0~1_combout\);

-- Location: LCCOMB_X43_Y8_N10
\RGB_Leds|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal0~2_combout\ = (!\RGB_Leds|Add0~28_combout\ & (\RGB_Leds|Add0~24_combout\ & \RGB_Leds|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|Add0~28_combout\,
	datac => \RGB_Leds|Add0~24_combout\,
	datad => \RGB_Leds|Add0~26_combout\,
	combout => \RGB_Leds|Equal0~2_combout\);

-- Location: LCCOMB_X43_Y8_N16
\RGB_Leds|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal0~0_combout\ = (!\RGB_Leds|Add0~10_combout\ & (!\RGB_Leds|Add0~12_combout\ & (\RGB_Leds|Add0~14_combout\ & \RGB_Leds|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Add0~10_combout\,
	datab => \RGB_Leds|Add0~12_combout\,
	datac => \RGB_Leds|Add0~14_combout\,
	datad => \RGB_Leds|Add0~8_combout\,
	combout => \RGB_Leds|Equal0~0_combout\);

-- Location: LCCOMB_X41_Y17_N18
\RGB_Leds|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector3~0_combout\ = (!\RGB_Leds|state_leds.s2~q\ & (!\RGB_Leds|state_leds.s3~q\ & !\RGB_Leds|state_leds.s4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|state_leds.s2~q\,
	datab => \RGB_Leds|state_leds.s3~q\,
	datac => \RGB_Leds|state_leds.s4~q\,
	combout => \RGB_Leds|Selector3~0_combout\);

-- Location: LCCOMB_X43_Y19_N2
\RGB_Leds|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector2~0_combout\ = (!\RGB_Leds|state_leds.s0~q\ & (\RGB_Leds|Equal0~3_combout\ & \RGB_Leds|Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|state_leds.s0~q\,
	datab => \RGB_Leds|Equal0~3_combout\,
	datac => \RGB_Leds|Selector3~0_combout\,
	combout => \RGB_Leds|Selector2~0_combout\);

-- Location: LCCOMB_X43_Y19_N28
\RGB_Leds|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector2~1_combout\ = (\RGB_Leds|Equal0~1_combout\ & (\RGB_Leds|Equal0~2_combout\ & (\RGB_Leds|Equal0~0_combout\ & \RGB_Leds|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Equal0~1_combout\,
	datab => \RGB_Leds|Equal0~2_combout\,
	datac => \RGB_Leds|Equal0~0_combout\,
	datad => \RGB_Leds|Selector2~0_combout\,
	combout => \RGB_Leds|Selector2~1_combout\);

-- Location: LCCOMB_X41_Y17_N24
\RGB_Leds|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector2~2_combout\ = (!\RGB_Leds|state_leds.s5~q\ & ((\RGB_Leds|Selector2~1_combout\) # ((\RGB_Leds|state_leds.s1~q\ & \RGB_Leds|Selector11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|state_leds.s5~q\,
	datab => \RGB_Leds|Selector2~1_combout\,
	datac => \RGB_Leds|state_leds.s1~q\,
	datad => \RGB_Leds|Selector11~4_combout\,
	combout => \RGB_Leds|Selector2~2_combout\);

-- Location: FF_X41_Y17_N25
\RGB_Leds|state_leds.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector2~2_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|state_leds.s1~q\);

-- Location: LCCOMB_X41_Y17_N8
\RGB_Leds|sig_shift_led_rgb[84]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|sig_shift_led_rgb[84]~0_combout\ = (\RGB_Leds|state_leds.s1~q\ & ((\DO|load_leds~q\))) # (!\RGB_Leds|state_leds.s1~q\ & (\RGB_Leds|state_leds.s3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|state_leds.s3~q\,
	datac => \DO|load_leds~q\,
	datad => \RGB_Leds|state_leds.s1~q\,
	combout => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\);

-- Location: LCCOMB_X41_Y17_N20
\RGB_Leds|LED_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|LED_1~1_combout\ = (\DO|load_leds~q\ & \RGB_Leds|state_leds.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DO|load_leds~q\,
	datad => \RGB_Leds|state_leds.s1~q\,
	combout => \RGB_Leds|LED_1~1_combout\);

-- Location: LCCOMB_X42_Y14_N16
\DO|rgb_leds[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[0]~feeder_combout\ = \DO|sig_rgb_leds_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(0),
	combout => \DO|rgb_leds[0]~feeder_combout\);

-- Location: FF_X42_Y14_N17
\DO|rgb_leds[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[0]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(0));

-- Location: LCCOMB_X41_Y17_N26
\RGB_Leds|Selector107~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector107~0_combout\ = (\RGB_Leds|sig_shift_led_rgb[84]~0_combout\ & (\RGB_Leds|LED_1~1_combout\ & ((\DO|rgb_leds\(0))))) # (!\RGB_Leds|sig_shift_led_rgb[84]~0_combout\ & ((\RGB_Leds|sig_shift_led_rgb\(0)) # ((\RGB_Leds|LED_1~1_combout\ & 
-- \DO|rgb_leds\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	datab => \RGB_Leds|LED_1~1_combout\,
	datac => \RGB_Leds|sig_shift_led_rgb\(0),
	datad => \DO|rgb_leds\(0),
	combout => \RGB_Leds|Selector107~0_combout\);

-- Location: FF_X41_Y17_N27
\RGB_Leds|sig_shift_led_rgb[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector107~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(0));

-- Location: LCCOMB_X41_Y14_N26
\RGB_Leds|Selector106~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector106~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(0)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|rgb_leds\(1),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \RGB_Leds|sig_shift_led_rgb\(0),
	combout => \RGB_Leds|Selector106~0_combout\);

-- Location: FF_X41_Y14_N27
\RGB_Leds|sig_shift_led_rgb[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector106~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(1));

-- Location: LCCOMB_X41_Y14_N12
\DO|rgb_leds[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[2]~feeder_combout\ = \DO|sig_rgb_leds_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(2),
	combout => \DO|rgb_leds[2]~feeder_combout\);

-- Location: FF_X41_Y14_N13
\DO|rgb_leds[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[2]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(2));

-- Location: LCCOMB_X41_Y14_N30
\RGB_Leds|Selector105~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector105~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(1))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_shift_led_rgb\(1),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \DO|rgb_leds\(2),
	combout => \RGB_Leds|Selector105~0_combout\);

-- Location: FF_X41_Y14_N31
\RGB_Leds|sig_shift_led_rgb[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector105~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(2));

-- Location: LCCOMB_X41_Y14_N16
\DO|rgb_leds[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[3]~feeder_combout\ = \DO|sig_rgb_leds_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(3),
	combout => \DO|rgb_leds[3]~feeder_combout\);

-- Location: FF_X41_Y14_N17
\DO|rgb_leds[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[3]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(3));

-- Location: LCCOMB_X41_Y14_N10
\RGB_Leds|Selector104~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector104~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(2))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_shift_led_rgb\(2),
	datab => \DO|rgb_leds\(3),
	datac => \RGB_Leds|state_leds.s3~q\,
	combout => \RGB_Leds|Selector104~0_combout\);

-- Location: FF_X41_Y14_N11
\RGB_Leds|sig_shift_led_rgb[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector104~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(3));

-- Location: LCCOMB_X41_Y14_N22
\RGB_Leds|Selector103~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector103~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(3)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DO|rgb_leds\(4),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \RGB_Leds|sig_shift_led_rgb\(3),
	combout => \RGB_Leds|Selector103~0_combout\);

-- Location: FF_X41_Y14_N23
\RGB_Leds|sig_shift_led_rgb[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector103~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(4));

-- Location: FF_X41_Y14_N1
\DO|rgb_leds[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(5),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(5));

-- Location: LCCOMB_X41_Y14_N20
\RGB_Leds|Selector102~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector102~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(4))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_shift_led_rgb\(4),
	datab => \DO|rgb_leds\(5),
	datac => \RGB_Leds|state_leds.s3~q\,
	combout => \RGB_Leds|Selector102~0_combout\);

-- Location: FF_X41_Y14_N21
\RGB_Leds|sig_shift_led_rgb[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector102~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(5));

-- Location: FF_X42_Y14_N3
\DO|rgb_leds[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(6),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(6));

-- Location: LCCOMB_X41_Y14_N18
\RGB_Leds|Selector101~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector101~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(5))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_shift_led_rgb\(5),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \DO|rgb_leds\(6),
	combout => \RGB_Leds|Selector101~0_combout\);

-- Location: FF_X41_Y14_N19
\RGB_Leds|sig_shift_led_rgb[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector101~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(6));

-- Location: LCCOMB_X42_Y14_N14
\DO|rgb_leds[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[7]~feeder_combout\ = \DO|sig_rgb_leds_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(7),
	combout => \DO|rgb_leds[7]~feeder_combout\);

-- Location: FF_X42_Y14_N15
\DO|rgb_leds[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[7]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(7));

-- Location: LCCOMB_X41_Y14_N14
\RGB_Leds|Selector100~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector100~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(6))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|state_leds.s3~q\,
	datab => \RGB_Leds|sig_shift_led_rgb\(6),
	datac => \DO|rgb_leds\(7),
	combout => \RGB_Leds|Selector100~0_combout\);

-- Location: FF_X41_Y14_N15
\RGB_Leds|sig_shift_led_rgb[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector100~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(7));

-- Location: LCCOMB_X41_Y14_N24
\DO|rgb_leds[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[8]~feeder_combout\ = \DO|sig_rgb_leds_out\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(8),
	combout => \DO|rgb_leds[8]~feeder_combout\);

-- Location: FF_X41_Y14_N25
\DO|rgb_leds[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[8]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(8));

-- Location: LCCOMB_X41_Y14_N2
\RGB_Leds|Selector99~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector99~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(7))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_shift_led_rgb\(7),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \DO|rgb_leds\(8),
	combout => \RGB_Leds|Selector99~0_combout\);

-- Location: FF_X41_Y14_N3
\RGB_Leds|sig_shift_led_rgb[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector99~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(8));

-- Location: LCCOMB_X41_Y14_N8
\RGB_Leds|Selector98~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector98~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(8)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DO|rgb_leds\(9),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \RGB_Leds|sig_shift_led_rgb\(8),
	combout => \RGB_Leds|Selector98~0_combout\);

-- Location: FF_X41_Y14_N9
\RGB_Leds|sig_shift_led_rgb[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector98~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(9));

-- Location: FF_X41_Y12_N7
\DO|rgb_leds[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(10),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(10));

-- Location: LCCOMB_X35_Y12_N20
\RGB_Leds|Selector97~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector97~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(9))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_shift_led_rgb\(9),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \DO|rgb_leds\(10),
	combout => \RGB_Leds|Selector97~0_combout\);

-- Location: FF_X35_Y12_N21
\RGB_Leds|sig_shift_led_rgb[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector97~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(10));

-- Location: LCCOMB_X35_Y12_N8
\RGB_Leds|Selector96~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector96~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(10)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|rgb_leds\(11),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \RGB_Leds|sig_shift_led_rgb\(10),
	combout => \RGB_Leds|Selector96~0_combout\);

-- Location: FF_X35_Y12_N9
\RGB_Leds|sig_shift_led_rgb[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector96~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(11));

-- Location: LCCOMB_X35_Y12_N28
\RGB_Leds|Selector95~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector95~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(11)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|rgb_leds\(12),
	datab => \RGB_Leds|sig_shift_led_rgb\(11),
	datac => \RGB_Leds|state_leds.s3~q\,
	combout => \RGB_Leds|Selector95~0_combout\);

-- Location: FF_X35_Y12_N29
\RGB_Leds|sig_shift_led_rgb[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector95~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(12));

-- Location: FF_X35_Y12_N7
\DO|rgb_leds[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(13),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(13));

-- Location: LCCOMB_X35_Y12_N16
\RGB_Leds|Selector94~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector94~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(12))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_shift_led_rgb\(12),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \DO|rgb_leds\(13),
	combout => \RGB_Leds|Selector94~0_combout\);

-- Location: FF_X35_Y12_N17
\RGB_Leds|sig_shift_led_rgb[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector94~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(13));

-- Location: LCCOMB_X35_Y12_N22
\RGB_Leds|Selector93~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector93~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(13)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DO|rgb_leds\(14),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \RGB_Leds|sig_shift_led_rgb\(13),
	combout => \RGB_Leds|Selector93~0_combout\);

-- Location: FF_X35_Y12_N23
\RGB_Leds|sig_shift_led_rgb[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector93~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(14));

-- Location: LCCOMB_X36_Y12_N4
\DO|rgb_leds[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[15]~feeder_combout\ = \DO|sig_rgb_leds_out\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(15),
	combout => \DO|rgb_leds[15]~feeder_combout\);

-- Location: FF_X36_Y12_N5
\DO|rgb_leds[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[15]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(15));

-- Location: LCCOMB_X35_Y12_N26
\RGB_Leds|Selector92~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector92~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(14))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_shift_led_rgb\(14),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \DO|rgb_leds\(15),
	combout => \RGB_Leds|Selector92~0_combout\);

-- Location: FF_X35_Y12_N27
\RGB_Leds|sig_shift_led_rgb[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector92~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(15));

-- Location: LCCOMB_X35_Y12_N4
\DO|rgb_leds[16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[16]~feeder_combout\ = \DO|sig_rgb_leds_out\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(16),
	combout => \DO|rgb_leds[16]~feeder_combout\);

-- Location: FF_X35_Y12_N5
\DO|rgb_leds[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[16]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(16));

-- Location: LCCOMB_X35_Y12_N14
\RGB_Leds|Selector91~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector91~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(15))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_shift_led_rgb\(15),
	datab => \DO|rgb_leds\(16),
	datac => \RGB_Leds|state_leds.s3~q\,
	combout => \RGB_Leds|Selector91~0_combout\);

-- Location: FF_X35_Y12_N15
\RGB_Leds|sig_shift_led_rgb[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector91~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(16));

-- Location: LCCOMB_X35_Y12_N0
\DO|rgb_leds[17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[17]~feeder_combout\ = \DO|sig_rgb_leds_out\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(17),
	combout => \DO|rgb_leds[17]~feeder_combout\);

-- Location: FF_X35_Y12_N1
\DO|rgb_leds[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[17]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(17));

-- Location: LCCOMB_X35_Y12_N2
\RGB_Leds|Selector90~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector90~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(16))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_shift_led_rgb\(16),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \DO|rgb_leds\(17),
	combout => \RGB_Leds|Selector90~0_combout\);

-- Location: FF_X35_Y12_N3
\RGB_Leds|sig_shift_led_rgb[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector90~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(17));

-- Location: LCCOMB_X35_Y12_N12
\DO|rgb_leds[18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[18]~feeder_combout\ = \DO|sig_rgb_leds_out\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(18),
	combout => \DO|rgb_leds[18]~feeder_combout\);

-- Location: FF_X35_Y12_N13
\DO|rgb_leds[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[18]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(18));

-- Location: LCCOMB_X35_Y12_N24
\RGB_Leds|Selector89~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector89~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(17))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_shift_led_rgb\(17),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \DO|rgb_leds\(18),
	combout => \RGB_Leds|Selector89~0_combout\);

-- Location: FF_X35_Y12_N25
\RGB_Leds|sig_shift_led_rgb[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector89~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(18));

-- Location: LCCOMB_X37_Y12_N28
\DO|rgb_leds[19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[19]~feeder_combout\ = \DO|sig_rgb_leds_out\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(19),
	combout => \DO|rgb_leds[19]~feeder_combout\);

-- Location: FF_X37_Y12_N29
\DO|rgb_leds[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[19]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(19));

-- Location: LCCOMB_X37_Y12_N8
\RGB_Leds|Selector88~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector88~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(18))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|state_leds.s3~q\,
	datac => \RGB_Leds|sig_shift_led_rgb\(18),
	datad => \DO|rgb_leds\(19),
	combout => \RGB_Leds|Selector88~0_combout\);

-- Location: FF_X37_Y12_N9
\RGB_Leds|sig_shift_led_rgb[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector88~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(19));

-- Location: LCCOMB_X37_Y12_N18
\DO|rgb_leds[20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[20]~feeder_combout\ = \DO|sig_rgb_leds_out\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(20),
	combout => \DO|rgb_leds[20]~feeder_combout\);

-- Location: FF_X37_Y12_N19
\DO|rgb_leds[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[20]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(20));

-- Location: LCCOMB_X37_Y12_N20
\RGB_Leds|Selector87~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector87~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(19))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|state_leds.s3~q\,
	datac => \RGB_Leds|sig_shift_led_rgb\(19),
	datad => \DO|rgb_leds\(20),
	combout => \RGB_Leds|Selector87~0_combout\);

-- Location: FF_X37_Y12_N21
\RGB_Leds|sig_shift_led_rgb[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector87~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(20));

-- Location: LCCOMB_X37_Y12_N16
\RGB_Leds|Selector86~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector86~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(20)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|state_leds.s3~q\,
	datac => \DO|rgb_leds\(21),
	datad => \RGB_Leds|sig_shift_led_rgb\(20),
	combout => \RGB_Leds|Selector86~0_combout\);

-- Location: FF_X37_Y12_N17
\RGB_Leds|sig_shift_led_rgb[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector86~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(21));

-- Location: LCCOMB_X37_Y12_N12
\RGB_Leds|Selector85~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector85~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(21)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|state_leds.s3~q\,
	datac => \DO|rgb_leds\(22),
	datad => \RGB_Leds|sig_shift_led_rgb\(21),
	combout => \RGB_Leds|Selector85~0_combout\);

-- Location: FF_X37_Y12_N13
\RGB_Leds|sig_shift_led_rgb[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector85~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(22));

-- Location: LCCOMB_X37_Y12_N6
\DO|rgb_leds[23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[23]~feeder_combout\ = \DO|sig_rgb_leds_out\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(23),
	combout => \DO|rgb_leds[23]~feeder_combout\);

-- Location: FF_X37_Y12_N7
\DO|rgb_leds[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[23]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(23));

-- Location: LCCOMB_X37_Y12_N2
\RGB_Leds|Selector84~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector84~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(22))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_shift_led_rgb\(22),
	datab => \RGB_Leds|state_leds.s3~q\,
	datad => \DO|rgb_leds\(23),
	combout => \RGB_Leds|Selector84~0_combout\);

-- Location: FF_X37_Y12_N3
\RGB_Leds|sig_shift_led_rgb[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector84~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(23));

-- Location: FF_X40_Y12_N15
\DO|rgb_leds[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(24),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(24));

-- Location: LCCOMB_X41_Y12_N12
\RGB_Leds|Selector83~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector83~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(23))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_shift_led_rgb\(23),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \DO|rgb_leds\(24),
	combout => \RGB_Leds|Selector83~0_combout\);

-- Location: FF_X41_Y12_N13
\RGB_Leds|sig_shift_led_rgb[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector83~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(24));

-- Location: LCCOMB_X41_Y12_N2
\RGB_Leds|Selector82~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector82~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(24)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|rgb_leds\(25),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \RGB_Leds|sig_shift_led_rgb\(24),
	combout => \RGB_Leds|Selector82~0_combout\);

-- Location: FF_X41_Y12_N3
\RGB_Leds|sig_shift_led_rgb[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector82~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(25));

-- Location: LCCOMB_X41_Y12_N30
\RGB_Leds|Selector81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector81~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(25)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DO|rgb_leds\(26),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \RGB_Leds|sig_shift_led_rgb\(25),
	combout => \RGB_Leds|Selector81~0_combout\);

-- Location: FF_X41_Y12_N31
\RGB_Leds|sig_shift_led_rgb[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector81~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(26));

-- Location: LCCOMB_X41_Y12_N16
\DO|rgb_leds[27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[27]~feeder_combout\ = \DO|sig_rgb_leds_out\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(27),
	combout => \DO|rgb_leds[27]~feeder_combout\);

-- Location: FF_X41_Y12_N17
\DO|rgb_leds[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[27]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(27));

-- Location: LCCOMB_X41_Y12_N26
\RGB_Leds|Selector80~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector80~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(26))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_shift_led_rgb\(26),
	datab => \DO|rgb_leds\(27),
	datac => \RGB_Leds|state_leds.s3~q\,
	combout => \RGB_Leds|Selector80~0_combout\);

-- Location: FF_X41_Y12_N27
\RGB_Leds|sig_shift_led_rgb[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector80~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(27));

-- Location: LCCOMB_X41_Y12_N4
\DO|rgb_leds[28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[28]~feeder_combout\ = \DO|sig_rgb_leds_out\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(28),
	combout => \DO|rgb_leds[28]~feeder_combout\);

-- Location: FF_X41_Y12_N5
\DO|rgb_leds[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[28]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(28));

-- Location: LCCOMB_X41_Y12_N14
\RGB_Leds|Selector79~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector79~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(27))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_shift_led_rgb\(27),
	datab => \DO|rgb_leds\(28),
	datac => \RGB_Leds|state_leds.s3~q\,
	combout => \RGB_Leds|Selector79~0_combout\);

-- Location: FF_X41_Y12_N15
\RGB_Leds|sig_shift_led_rgb[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector79~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(28));

-- Location: FF_X41_Y12_N1
\DO|rgb_leds[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(29),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(29));

-- Location: LCCOMB_X41_Y12_N10
\RGB_Leds|Selector78~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector78~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(28))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_shift_led_rgb\(28),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \DO|rgb_leds\(29),
	combout => \RGB_Leds|Selector78~0_combout\);

-- Location: FF_X41_Y12_N11
\RGB_Leds|sig_shift_led_rgb[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector78~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(29));

-- Location: LCCOMB_X41_Y12_N24
\RGB_Leds|Selector77~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector77~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(29)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DO|rgb_leds\(30),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \RGB_Leds|sig_shift_led_rgb\(29),
	combout => \RGB_Leds|Selector77~0_combout\);

-- Location: FF_X41_Y12_N25
\RGB_Leds|sig_shift_led_rgb[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector77~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(30));

-- Location: LCCOMB_X40_Y12_N18
\RGB_Leds|Selector76~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector76~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(30)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|state_leds.s3~q\,
	datab => \DO|rgb_leds\(31),
	datad => \RGB_Leds|sig_shift_led_rgb\(30),
	combout => \RGB_Leds|Selector76~0_combout\);

-- Location: FF_X40_Y12_N19
\RGB_Leds|sig_shift_led_rgb[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector76~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(31));

-- Location: LCCOMB_X40_Y12_N16
\RGB_Leds|Selector75~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector75~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(31)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|state_leds.s3~q\,
	datab => \DO|rgb_leds\(32),
	datad => \RGB_Leds|sig_shift_led_rgb\(31),
	combout => \RGB_Leds|Selector75~0_combout\);

-- Location: FF_X40_Y12_N17
\RGB_Leds|sig_shift_led_rgb[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector75~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(32));

-- Location: LCCOMB_X41_Y12_N22
\DO|rgb_leds[33]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[33]~feeder_combout\ = \DO|sig_rgb_leds_out\(33)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(33),
	combout => \DO|rgb_leds[33]~feeder_combout\);

-- Location: FF_X41_Y12_N23
\DO|rgb_leds[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[33]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(33));

-- Location: LCCOMB_X40_Y12_N4
\RGB_Leds|Selector74~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector74~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(32))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|state_leds.s3~q\,
	datab => \RGB_Leds|sig_shift_led_rgb\(32),
	datad => \DO|rgb_leds\(33),
	combout => \RGB_Leds|Selector74~0_combout\);

-- Location: FF_X40_Y12_N5
\RGB_Leds|sig_shift_led_rgb[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector74~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(33));

-- Location: FF_X40_Y12_N31
\DO|rgb_leds[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(34),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(34));

-- Location: LCCOMB_X40_Y12_N2
\RGB_Leds|Selector73~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector73~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(33))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|state_leds.s3~q\,
	datab => \RGB_Leds|sig_shift_led_rgb\(33),
	datac => \DO|rgb_leds\(34),
	combout => \RGB_Leds|Selector73~0_combout\);

-- Location: FF_X40_Y12_N3
\RGB_Leds|sig_shift_led_rgb[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector73~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(34));

-- Location: LCCOMB_X39_Y11_N6
\DO|rgb_leds[35]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[35]~feeder_combout\ = \DO|sig_rgb_leds_out\(35)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(35),
	combout => \DO|rgb_leds[35]~feeder_combout\);

-- Location: FF_X39_Y11_N7
\DO|rgb_leds[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[35]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(35));

-- Location: LCCOMB_X39_Y11_N2
\RGB_Leds|Selector72~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector72~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(34))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|state_leds.s3~q\,
	datab => \RGB_Leds|sig_shift_led_rgb\(34),
	datad => \DO|rgb_leds\(35),
	combout => \RGB_Leds|Selector72~0_combout\);

-- Location: FF_X39_Y11_N3
\RGB_Leds|sig_shift_led_rgb[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector72~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(35));

-- Location: FF_X39_Y11_N13
\DO|rgb_leds[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(36),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(36));

-- Location: LCCOMB_X39_Y11_N0
\RGB_Leds|Selector71~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector71~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(35))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|state_leds.s3~q\,
	datab => \RGB_Leds|sig_shift_led_rgb\(35),
	datad => \DO|rgb_leds\(36),
	combout => \RGB_Leds|Selector71~0_combout\);

-- Location: FF_X39_Y11_N1
\RGB_Leds|sig_shift_led_rgb[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector71~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(36));

-- Location: LCCOMB_X38_Y11_N14
\DO|rgb_leds[37]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[37]~feeder_combout\ = \DO|sig_rgb_leds_out\(37)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(37),
	combout => \DO|rgb_leds[37]~feeder_combout\);

-- Location: FF_X38_Y11_N15
\DO|rgb_leds[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[37]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(37));

-- Location: LCCOMB_X39_Y11_N4
\RGB_Leds|Selector70~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector70~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(36))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|state_leds.s3~q\,
	datab => \RGB_Leds|sig_shift_led_rgb\(36),
	datad => \DO|rgb_leds\(37),
	combout => \RGB_Leds|Selector70~0_combout\);

-- Location: FF_X39_Y11_N5
\RGB_Leds|sig_shift_led_rgb[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector70~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(37));

-- Location: FF_X39_Y11_N23
\DO|rgb_leds[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(38),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(38));

-- Location: LCCOMB_X39_Y11_N24
\RGB_Leds|Selector69~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector69~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(37))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(38))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|state_leds.s3~q\,
	datab => \RGB_Leds|sig_shift_led_rgb\(37),
	datac => \DO|rgb_leds\(38),
	combout => \RGB_Leds|Selector69~0_combout\);

-- Location: FF_X39_Y11_N25
\RGB_Leds|sig_shift_led_rgb[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector69~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(38));

-- Location: LCCOMB_X39_Y11_N28
\RGB_Leds|Selector68~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector68~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(38)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|state_leds.s3~q\,
	datab => \DO|rgb_leds\(39),
	datad => \RGB_Leds|sig_shift_led_rgb\(38),
	combout => \RGB_Leds|Selector68~0_combout\);

-- Location: FF_X39_Y11_N29
\RGB_Leds|sig_shift_led_rgb[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector68~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(39));

-- Location: LCCOMB_X39_Y11_N14
\DO|rgb_leds[40]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[40]~feeder_combout\ = \DO|sig_rgb_leds_out\(40)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(40),
	combout => \DO|rgb_leds[40]~feeder_combout\);

-- Location: FF_X39_Y11_N15
\DO|rgb_leds[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[40]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(40));

-- Location: LCCOMB_X39_Y11_N16
\RGB_Leds|Selector67~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector67~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(39))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|state_leds.s3~q\,
	datab => \RGB_Leds|sig_shift_led_rgb\(39),
	datac => \DO|rgb_leds\(40),
	combout => \RGB_Leds|Selector67~0_combout\);

-- Location: FF_X39_Y11_N17
\RGB_Leds|sig_shift_led_rgb[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector67~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(40));

-- Location: FF_X39_Y11_N11
\DO|rgb_leds[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(41),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(41));

-- Location: LCCOMB_X39_Y11_N30
\RGB_Leds|Selector66~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector66~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(40))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|state_leds.s3~q\,
	datab => \RGB_Leds|sig_shift_led_rgb\(40),
	datad => \DO|rgb_leds\(41),
	combout => \RGB_Leds|Selector66~0_combout\);

-- Location: FF_X39_Y11_N31
\RGB_Leds|sig_shift_led_rgb[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector66~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(41));

-- Location: LCCOMB_X42_Y11_N4
\DO|rgb_leds[42]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[42]~feeder_combout\ = \DO|sig_rgb_leds_out\(42)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(42),
	combout => \DO|rgb_leds[42]~feeder_combout\);

-- Location: FF_X42_Y11_N5
\DO|rgb_leds[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[42]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(42));

-- Location: LCCOMB_X39_Y11_N26
\RGB_Leds|Selector65~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector65~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(41))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|state_leds.s3~q\,
	datac => \RGB_Leds|sig_shift_led_rgb\(41),
	datad => \DO|rgb_leds\(42),
	combout => \RGB_Leds|Selector65~0_combout\);

-- Location: FF_X39_Y11_N27
\RGB_Leds|sig_shift_led_rgb[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector65~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(42));

-- Location: FF_X39_Y11_N21
\DO|rgb_leds[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(43),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(43));

-- Location: LCCOMB_X39_Y11_N8
\RGB_Leds|Selector64~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector64~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(42))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|state_leds.s3~q\,
	datac => \RGB_Leds|sig_shift_led_rgb\(42),
	datad => \DO|rgb_leds\(43),
	combout => \RGB_Leds|Selector64~0_combout\);

-- Location: FF_X39_Y11_N9
\RGB_Leds|sig_shift_led_rgb[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector64~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(43));

-- Location: LCCOMB_X38_Y9_N30
\DO|rgb_leds[44]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[44]~feeder_combout\ = \DO|sig_rgb_leds_out\(44)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(44),
	combout => \DO|rgb_leds[44]~feeder_combout\);

-- Location: FF_X38_Y9_N31
\DO|rgb_leds[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[44]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(44));

-- Location: LCCOMB_X38_Y9_N2
\RGB_Leds|Selector63~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector63~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(43))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_shift_led_rgb\(43),
	datac => \DO|rgb_leds\(44),
	datad => \RGB_Leds|state_leds.s3~q\,
	combout => \RGB_Leds|Selector63~0_combout\);

-- Location: FF_X38_Y9_N3
\RGB_Leds|sig_shift_led_rgb[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector63~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(44));

-- Location: LCCOMB_X38_Y9_N22
\RGB_Leds|Selector62~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector62~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(44)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|state_leds.s3~q\,
	datac => \DO|rgb_leds\(45),
	datad => \RGB_Leds|sig_shift_led_rgb\(44),
	combout => \RGB_Leds|Selector62~0_combout\);

-- Location: FF_X38_Y9_N23
\RGB_Leds|sig_shift_led_rgb[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector62~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(45));

-- Location: LCCOMB_X38_Y9_N8
\DO|rgb_leds[46]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[46]~feeder_combout\ = \DO|sig_rgb_leds_out\(46)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(46),
	combout => \DO|rgb_leds[46]~feeder_combout\);

-- Location: FF_X38_Y9_N9
\DO|rgb_leds[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[46]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(46));

-- Location: LCCOMB_X38_Y9_N10
\RGB_Leds|Selector61~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector61~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(45))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(46))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_shift_led_rgb\(45),
	datab => \RGB_Leds|state_leds.s3~q\,
	datac => \DO|rgb_leds\(46),
	combout => \RGB_Leds|Selector61~0_combout\);

-- Location: FF_X38_Y9_N11
\RGB_Leds|sig_shift_led_rgb[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector61~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(46));

-- Location: FF_X38_Y9_N29
\DO|rgb_leds[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(47),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(47));

-- Location: LCCOMB_X38_Y9_N14
\RGB_Leds|Selector60~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector60~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(46))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_shift_led_rgb\(46),
	datab => \RGB_Leds|state_leds.s3~q\,
	datad => \DO|rgb_leds\(47),
	combout => \RGB_Leds|Selector60~0_combout\);

-- Location: FF_X38_Y9_N15
\RGB_Leds|sig_shift_led_rgb[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector60~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(47));

-- Location: LCCOMB_X38_Y9_N0
\DO|rgb_leds[48]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[48]~feeder_combout\ = \DO|sig_rgb_leds_out\(48)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(48),
	combout => \DO|rgb_leds[48]~feeder_combout\);

-- Location: FF_X38_Y9_N1
\DO|rgb_leds[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[48]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(48));

-- Location: LCCOMB_X38_Y9_N18
\RGB_Leds|Selector59~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector59~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(47))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|state_leds.s3~q\,
	datac => \RGB_Leds|sig_shift_led_rgb\(47),
	datad => \DO|rgb_leds\(48),
	combout => \RGB_Leds|Selector59~0_combout\);

-- Location: FF_X38_Y9_N19
\RGB_Leds|sig_shift_led_rgb[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector59~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(48));

-- Location: LCCOMB_X38_Y9_N6
\RGB_Leds|Selector58~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector58~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(48)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|state_leds.s3~q\,
	datac => \DO|rgb_leds\(49),
	datad => \RGB_Leds|sig_shift_led_rgb\(48),
	combout => \RGB_Leds|Selector58~0_combout\);

-- Location: FF_X38_Y9_N7
\RGB_Leds|sig_shift_led_rgb[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector58~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(49));

-- Location: LCCOMB_X38_Y9_N24
\DO|rgb_leds[50]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[50]~feeder_combout\ = \DO|sig_rgb_leds_out\(50)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(50),
	combout => \DO|rgb_leds[50]~feeder_combout\);

-- Location: FF_X38_Y9_N25
\DO|rgb_leds[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[50]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(50));

-- Location: LCCOMB_X38_Y9_N26
\RGB_Leds|Selector57~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector57~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(49))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_shift_led_rgb\(49),
	datab => \RGB_Leds|state_leds.s3~q\,
	datad => \DO|rgb_leds\(50),
	combout => \RGB_Leds|Selector57~0_combout\);

-- Location: FF_X38_Y9_N27
\RGB_Leds|sig_shift_led_rgb[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector57~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(50));

-- Location: FF_X38_Y9_N13
\DO|rgb_leds[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(51),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(51));

-- Location: LCCOMB_X38_Y9_N16
\RGB_Leds|Selector56~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector56~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(50))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(51))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|state_leds.s3~q\,
	datac => \RGB_Leds|sig_shift_led_rgb\(50),
	datad => \DO|rgb_leds\(51),
	combout => \RGB_Leds|Selector56~0_combout\);

-- Location: FF_X38_Y9_N17
\RGB_Leds|sig_shift_led_rgb[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector56~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(51));

-- Location: FF_X37_Y13_N15
\DO|rgb_leds[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(52),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(52));

-- Location: LCCOMB_X37_Y13_N26
\RGB_Leds|Selector55~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector55~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(51))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(52))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_shift_led_rgb\(51),
	datac => \DO|rgb_leds\(52),
	datad => \RGB_Leds|state_leds.s3~q\,
	combout => \RGB_Leds|Selector55~0_combout\);

-- Location: FF_X37_Y13_N27
\RGB_Leds|sig_shift_led_rgb[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector55~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(52));

-- Location: FF_X37_Y13_N13
\DO|rgb_leds[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(53),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(53));

-- Location: LCCOMB_X37_Y13_N22
\RGB_Leds|Selector54~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector54~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(52))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|state_leds.s3~q\,
	datac => \RGB_Leds|sig_shift_led_rgb\(52),
	datad => \DO|rgb_leds\(53),
	combout => \RGB_Leds|Selector54~0_combout\);

-- Location: FF_X37_Y13_N23
\RGB_Leds|sig_shift_led_rgb[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector54~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(53));

-- Location: FF_X37_Y13_N25
\DO|rgb_leds[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(54),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(54));

-- Location: LCCOMB_X37_Y13_N10
\RGB_Leds|Selector53~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector53~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(53))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(54))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|state_leds.s3~q\,
	datac => \RGB_Leds|sig_shift_led_rgb\(53),
	datad => \DO|rgb_leds\(54),
	combout => \RGB_Leds|Selector53~0_combout\);

-- Location: FF_X37_Y13_N11
\RGB_Leds|sig_shift_led_rgb[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector53~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(54));

-- Location: LCCOMB_X37_Y13_N20
\DO|rgb_leds[55]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[55]~feeder_combout\ = \DO|sig_rgb_leds_out\(55)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(55),
	combout => \DO|rgb_leds[55]~feeder_combout\);

-- Location: FF_X37_Y13_N21
\DO|rgb_leds[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[55]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(55));

-- Location: LCCOMB_X37_Y13_N6
\RGB_Leds|Selector52~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector52~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(54))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(55))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_shift_led_rgb\(54),
	datab => \RGB_Leds|state_leds.s3~q\,
	datad => \DO|rgb_leds\(55),
	combout => \RGB_Leds|Selector52~0_combout\);

-- Location: FF_X37_Y13_N7
\RGB_Leds|sig_shift_led_rgb[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector52~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(55));

-- Location: LCCOMB_X37_Y13_N16
\DO|rgb_leds[56]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[56]~feeder_combout\ = \DO|sig_rgb_leds_out\(56)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(56),
	combout => \DO|rgb_leds[56]~feeder_combout\);

-- Location: FF_X37_Y13_N17
\DO|rgb_leds[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[56]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(56));

-- Location: LCCOMB_X37_Y13_N28
\RGB_Leds|Selector51~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector51~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(55))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_shift_led_rgb\(55),
	datab => \RGB_Leds|state_leds.s3~q\,
	datad => \DO|rgb_leds\(56),
	combout => \RGB_Leds|Selector51~0_combout\);

-- Location: FF_X37_Y13_N29
\RGB_Leds|sig_shift_led_rgb[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector51~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(56));

-- Location: LCCOMB_X37_Y13_N0
\RGB_Leds|Selector50~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector50~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(56)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(57)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|rgb_leds\(57),
	datab => \RGB_Leds|state_leds.s3~q\,
	datad => \RGB_Leds|sig_shift_led_rgb\(56),
	combout => \RGB_Leds|Selector50~0_combout\);

-- Location: FF_X37_Y13_N1
\RGB_Leds|sig_shift_led_rgb[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector50~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(57));

-- Location: LCCOMB_X37_Y13_N2
\DO|rgb_leds[58]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[58]~feeder_combout\ = \DO|sig_rgb_leds_out\(58)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(58),
	combout => \DO|rgb_leds[58]~feeder_combout\);

-- Location: FF_X37_Y13_N3
\DO|rgb_leds[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[58]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(58));

-- Location: LCCOMB_X37_Y13_N30
\RGB_Leds|Selector49~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector49~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(57))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(58))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|state_leds.s3~q\,
	datac => \RGB_Leds|sig_shift_led_rgb\(57),
	datad => \DO|rgb_leds\(58),
	combout => \RGB_Leds|Selector49~0_combout\);

-- Location: FF_X37_Y13_N31
\RGB_Leds|sig_shift_led_rgb[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector49~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(58));

-- Location: FF_X38_Y11_N29
\DO|rgb_leds[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(59),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(59));

-- Location: LCCOMB_X37_Y13_N18
\RGB_Leds|Selector48~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector48~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(58))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|state_leds.s3~q\,
	datac => \RGB_Leds|sig_shift_led_rgb\(58),
	datad => \DO|rgb_leds\(59),
	combout => \RGB_Leds|Selector48~0_combout\);

-- Location: FF_X37_Y13_N19
\RGB_Leds|sig_shift_led_rgb[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector48~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(59));

-- Location: LCCOMB_X37_Y13_N8
\RGB_Leds|Selector47~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector47~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(59)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(60)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|state_leds.s3~q\,
	datac => \DO|rgb_leds\(60),
	datad => \RGB_Leds|sig_shift_led_rgb\(59),
	combout => \RGB_Leds|Selector47~0_combout\);

-- Location: FF_X37_Y13_N9
\RGB_Leds|sig_shift_led_rgb[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector47~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(60));

-- Location: LCCOMB_X38_Y11_N18
\DO|rgb_leds[61]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[61]~feeder_combout\ = \DO|sig_rgb_leds_out\(61)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(61),
	combout => \DO|rgb_leds[61]~feeder_combout\);

-- Location: FF_X38_Y11_N19
\DO|rgb_leds[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[61]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(61));

-- Location: LCCOMB_X38_Y11_N30
\RGB_Leds|Selector46~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector46~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(60))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(61))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|state_leds.s3~q\,
	datac => \RGB_Leds|sig_shift_led_rgb\(60),
	datad => \DO|rgb_leds\(61),
	combout => \RGB_Leds|Selector46~0_combout\);

-- Location: FF_X38_Y11_N31
\RGB_Leds|sig_shift_led_rgb[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector46~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(61));

-- Location: LCCOMB_X38_Y11_N16
\DO|rgb_leds[62]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[62]~feeder_combout\ = \DO|sig_rgb_leds_out\(62)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(62),
	combout => \DO|rgb_leds[62]~feeder_combout\);

-- Location: FF_X38_Y11_N17
\DO|rgb_leds[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[62]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(62));

-- Location: LCCOMB_X38_Y11_N10
\RGB_Leds|Selector45~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector45~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(61))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(62))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_shift_led_rgb\(61),
	datab => \DO|rgb_leds\(62),
	datac => \RGB_Leds|state_leds.s3~q\,
	combout => \RGB_Leds|Selector45~0_combout\);

-- Location: FF_X38_Y11_N11
\RGB_Leds|sig_shift_led_rgb[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector45~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(62));

-- Location: LCCOMB_X38_Y11_N22
\RGB_Leds|Selector44~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector44~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(62)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(63)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DO|rgb_leds\(63),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \RGB_Leds|sig_shift_led_rgb\(62),
	combout => \RGB_Leds|Selector44~0_combout\);

-- Location: FF_X38_Y11_N23
\RGB_Leds|sig_shift_led_rgb[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector44~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(63));

-- Location: LCCOMB_X38_Y11_N0
\DO|rgb_leds[64]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[64]~feeder_combout\ = \DO|sig_rgb_leds_out\(64)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(64),
	combout => \DO|rgb_leds[64]~feeder_combout\);

-- Location: FF_X38_Y11_N1
\DO|rgb_leds[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[64]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(64));

-- Location: LCCOMB_X38_Y11_N2
\RGB_Leds|Selector43~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector43~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(63))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(64))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_shift_led_rgb\(63),
	datab => \DO|rgb_leds\(64),
	datac => \RGB_Leds|state_leds.s3~q\,
	combout => \RGB_Leds|Selector43~0_combout\);

-- Location: FF_X38_Y11_N3
\RGB_Leds|sig_shift_led_rgb[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector43~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(64));

-- Location: LCCOMB_X38_Y11_N6
\RGB_Leds|Selector42~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector42~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(64)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(65)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DO|rgb_leds\(65),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \RGB_Leds|sig_shift_led_rgb\(64),
	combout => \RGB_Leds|Selector42~0_combout\);

-- Location: FF_X38_Y11_N7
\RGB_Leds|sig_shift_led_rgb[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector42~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(65));

-- Location: LCCOMB_X38_Y11_N8
\DO|rgb_leds[66]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[66]~feeder_combout\ = \DO|sig_rgb_leds_out\(66)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(66),
	combout => \DO|rgb_leds[66]~feeder_combout\);

-- Location: FF_X38_Y11_N9
\DO|rgb_leds[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[66]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(66));

-- Location: LCCOMB_X38_Y11_N26
\RGB_Leds|Selector41~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector41~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(65))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(66))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_shift_led_rgb\(65),
	datab => \DO|rgb_leds\(66),
	datac => \RGB_Leds|state_leds.s3~q\,
	combout => \RGB_Leds|Selector41~0_combout\);

-- Location: FF_X38_Y11_N27
\RGB_Leds|sig_shift_led_rgb[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector41~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(66));

-- Location: LCCOMB_X38_Y11_N12
\DO|rgb_leds[67]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[67]~feeder_combout\ = \DO|sig_rgb_leds_out\(67)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(67),
	combout => \DO|rgb_leds[67]~feeder_combout\);

-- Location: FF_X38_Y11_N13
\DO|rgb_leds[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[67]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(67));

-- Location: LCCOMB_X38_Y11_N24
\RGB_Leds|Selector40~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector40~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(66))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(67))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_shift_led_rgb\(66),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \DO|rgb_leds\(67),
	combout => \RGB_Leds|Selector40~0_combout\);

-- Location: FF_X38_Y11_N25
\RGB_Leds|sig_shift_led_rgb[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector40~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(67));

-- Location: FF_X42_Y11_N19
\DO|rgb_leds[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(68),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(68));

-- Location: LCCOMB_X41_Y11_N30
\RGB_Leds|Selector39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector39~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(67))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(68))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_shift_led_rgb\(67),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \DO|rgb_leds\(68),
	combout => \RGB_Leds|Selector39~0_combout\);

-- Location: FF_X41_Y11_N31
\RGB_Leds|sig_shift_led_rgb[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector39~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(68));

-- Location: FF_X42_Y11_N25
\DO|rgb_leds[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(69),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(69));

-- Location: LCCOMB_X41_Y11_N18
\RGB_Leds|Selector38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector38~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(68))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(69))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_shift_led_rgb\(68),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \DO|rgb_leds\(69),
	combout => \RGB_Leds|Selector38~0_combout\);

-- Location: FF_X41_Y11_N19
\RGB_Leds|sig_shift_led_rgb[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector38~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(69));

-- Location: LCCOMB_X41_Y11_N22
\RGB_Leds|Selector37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector37~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(69)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(70)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DO|rgb_leds\(70),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \RGB_Leds|sig_shift_led_rgb\(69),
	combout => \RGB_Leds|Selector37~0_combout\);

-- Location: FF_X41_Y11_N23
\RGB_Leds|sig_shift_led_rgb[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector37~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(70));

-- Location: LCCOMB_X41_Y11_N0
\DO|rgb_leds[71]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[71]~feeder_combout\ = \DO|sig_rgb_leds_out\(71)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(71),
	combout => \DO|rgb_leds[71]~feeder_combout\);

-- Location: FF_X41_Y11_N1
\DO|rgb_leds[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[71]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(71));

-- Location: LCCOMB_X41_Y11_N10
\RGB_Leds|Selector36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector36~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(70))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(71))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_shift_led_rgb\(70),
	datab => \DO|rgb_leds\(71),
	datac => \RGB_Leds|state_leds.s3~q\,
	combout => \RGB_Leds|Selector36~0_combout\);

-- Location: FF_X41_Y11_N11
\RGB_Leds|sig_shift_led_rgb[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector36~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(71));

-- Location: LCCOMB_X41_Y11_N14
\RGB_Leds|Selector35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector35~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(71)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(72)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DO|rgb_leds\(72),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \RGB_Leds|sig_shift_led_rgb\(71),
	combout => \RGB_Leds|Selector35~0_combout\);

-- Location: FF_X41_Y11_N15
\RGB_Leds|sig_shift_led_rgb[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector35~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(72));

-- Location: LCCOMB_X41_Y11_N24
\DO|rgb_leds[73]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[73]~feeder_combout\ = \DO|sig_rgb_leds_out\(73)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(73),
	combout => \DO|rgb_leds[73]~feeder_combout\);

-- Location: FF_X41_Y11_N25
\DO|rgb_leds[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[73]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(73));

-- Location: LCCOMB_X41_Y11_N2
\RGB_Leds|Selector34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector34~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(72))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(73))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_shift_led_rgb\(72),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \DO|rgb_leds\(73),
	combout => \RGB_Leds|Selector34~0_combout\);

-- Location: FF_X41_Y11_N3
\RGB_Leds|sig_shift_led_rgb[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector34~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(73));

-- Location: LCCOMB_X41_Y11_N6
\RGB_Leds|Selector33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector33~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(73)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(74)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DO|rgb_leds\(74),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \RGB_Leds|sig_shift_led_rgb\(73),
	combout => \RGB_Leds|Selector33~0_combout\);

-- Location: FF_X41_Y11_N7
\RGB_Leds|sig_shift_led_rgb[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector33~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(74));

-- Location: LCCOMB_X41_Y11_N26
\RGB_Leds|Selector32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector32~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(74)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(75)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DO|rgb_leds\(75),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \RGB_Leds|sig_shift_led_rgb\(74),
	combout => \RGB_Leds|Selector32~0_combout\);

-- Location: FF_X41_Y11_N27
\RGB_Leds|sig_shift_led_rgb[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector32~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(75));

-- Location: LCCOMB_X41_Y11_N12
\DO|rgb_leds[76]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[76]~feeder_combout\ = \DO|sig_rgb_leds_out\(76)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(76),
	combout => \DO|rgb_leds[76]~feeder_combout\);

-- Location: FF_X41_Y11_N13
\DO|rgb_leds[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[76]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(76));

-- Location: LCCOMB_X41_Y11_N16
\RGB_Leds|Selector31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector31~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(75))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(76))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_shift_led_rgb\(75),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \DO|rgb_leds\(76),
	combout => \RGB_Leds|Selector31~0_combout\);

-- Location: FF_X41_Y11_N17
\RGB_Leds|sig_shift_led_rgb[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector31~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(76));

-- Location: LCCOMB_X40_Y13_N4
\RGB_Leds|Selector30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector30~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(76)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(77)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|rgb_leds\(77),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \RGB_Leds|sig_shift_led_rgb\(76),
	combout => \RGB_Leds|Selector30~0_combout\);

-- Location: FF_X40_Y13_N5
\RGB_Leds|sig_shift_led_rgb[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector30~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(77));

-- Location: LCCOMB_X41_Y13_N24
\DO|rgb_leds[78]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[78]~feeder_combout\ = \DO|sig_rgb_leds_out\(78)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(78),
	combout => \DO|rgb_leds[78]~feeder_combout\);

-- Location: FF_X41_Y13_N25
\DO|rgb_leds[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[78]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(78));

-- Location: LCCOMB_X40_Y13_N16
\RGB_Leds|Selector29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector29~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(77))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(78))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_shift_led_rgb\(77),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \DO|rgb_leds\(78),
	combout => \RGB_Leds|Selector29~0_combout\);

-- Location: FF_X40_Y13_N17
\RGB_Leds|sig_shift_led_rgb[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector29~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(78));

-- Location: LCCOMB_X40_Y13_N12
\RGB_Leds|Selector28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector28~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(78)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(79)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DO|rgb_leds\(79),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \RGB_Leds|sig_shift_led_rgb\(78),
	combout => \RGB_Leds|Selector28~0_combout\);

-- Location: FF_X40_Y13_N13
\RGB_Leds|sig_shift_led_rgb[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector28~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(79));

-- Location: LCCOMB_X40_Y13_N8
\RGB_Leds|Selector27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector27~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(79)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(80)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|rgb_leds\(80),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \RGB_Leds|sig_shift_led_rgb\(79),
	combout => \RGB_Leds|Selector27~0_combout\);

-- Location: FF_X40_Y13_N9
\RGB_Leds|sig_shift_led_rgb[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector27~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(80));

-- Location: LCCOMB_X40_Y13_N2
\DO|rgb_leds[81]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[81]~feeder_combout\ = \DO|sig_rgb_leds_out\(81)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(81),
	combout => \DO|rgb_leds[81]~feeder_combout\);

-- Location: FF_X40_Y13_N3
\DO|rgb_leds[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[81]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(81));

-- Location: LCCOMB_X40_Y13_N28
\RGB_Leds|Selector26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector26~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(80))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(81))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_shift_led_rgb\(80),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \DO|rgb_leds\(81),
	combout => \RGB_Leds|Selector26~0_combout\);

-- Location: FF_X40_Y13_N29
\RGB_Leds|sig_shift_led_rgb[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector26~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(81));

-- Location: LCCOMB_X40_Y13_N24
\RGB_Leds|Selector25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector25~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(81)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(82)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|rgb_leds\(82),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \RGB_Leds|sig_shift_led_rgb\(81),
	combout => \RGB_Leds|Selector25~0_combout\);

-- Location: FF_X40_Y13_N25
\RGB_Leds|sig_shift_led_rgb[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector25~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(82));

-- Location: LCCOMB_X40_Y13_N20
\RGB_Leds|Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector24~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(82)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(83)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|rgb_leds\(83),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \RGB_Leds|sig_shift_led_rgb\(82),
	combout => \RGB_Leds|Selector24~0_combout\);

-- Location: FF_X40_Y13_N21
\RGB_Leds|sig_shift_led_rgb[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector24~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(83));

-- Location: LCCOMB_X40_Y13_N10
\RGB_Leds|Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector23~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(83)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(84)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DO|rgb_leds\(84),
	datac => \RGB_Leds|state_leds.s3~q\,
	datad => \RGB_Leds|sig_shift_led_rgb\(83),
	combout => \RGB_Leds|Selector23~0_combout\);

-- Location: FF_X40_Y13_N11
\RGB_Leds|sig_shift_led_rgb[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector23~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(84));

-- Location: LCCOMB_X40_Y13_N0
\RGB_Leds|Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector22~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(84)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(85)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|state_leds.s3~q\,
	datac => \DO|rgb_leds\(85),
	datad => \RGB_Leds|sig_shift_led_rgb\(84),
	combout => \RGB_Leds|Selector22~0_combout\);

-- Location: FF_X40_Y13_N1
\RGB_Leds|sig_shift_led_rgb[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector22~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(85));

-- Location: LCCOMB_X39_Y12_N14
\DO|rgb_leds[86]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[86]~feeder_combout\ = \DO|sig_rgb_leds_out\(86)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(86),
	combout => \DO|rgb_leds[86]~feeder_combout\);

-- Location: FF_X39_Y12_N15
\DO|rgb_leds[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[86]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(86));

-- Location: LCCOMB_X40_Y12_N8
\RGB_Leds|Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector21~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(85))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(86))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|state_leds.s3~q\,
	datab => \RGB_Leds|sig_shift_led_rgb\(85),
	datad => \DO|rgb_leds\(86),
	combout => \RGB_Leds|Selector21~0_combout\);

-- Location: LCCOMB_X41_Y12_N20
\RGB_Leds|sig_shift_led_rgb[86]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|sig_shift_led_rgb[86]~feeder_combout\ = \RGB_Leds|Selector21~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RGB_Leds|Selector21~0_combout\,
	combout => \RGB_Leds|sig_shift_led_rgb[86]~feeder_combout\);

-- Location: FF_X41_Y12_N21
\RGB_Leds|sig_shift_led_rgb[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|sig_shift_led_rgb[86]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(86));

-- Location: LCCOMB_X39_Y12_N12
\DO|rgb_leds[87]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[87]~feeder_combout\ = \DO|sig_rgb_leds_out\(87)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(87),
	combout => \DO|rgb_leds[87]~feeder_combout\);

-- Location: FF_X39_Y12_N13
\DO|rgb_leds[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[87]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(87));

-- Location: LCCOMB_X40_Y12_N12
\RGB_Leds|Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector20~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(86))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(87))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|state_leds.s3~q\,
	datac => \RGB_Leds|sig_shift_led_rgb\(86),
	datad => \DO|rgb_leds\(87),
	combout => \RGB_Leds|Selector20~0_combout\);

-- Location: FF_X40_Y12_N13
\RGB_Leds|sig_shift_led_rgb[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector20~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(87));

-- Location: LCCOMB_X40_Y12_N14
\RGB_Leds|Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector19~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(87)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(88)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|state_leds.s3~q\,
	datab => \DO|rgb_leds\(88),
	datad => \RGB_Leds|sig_shift_led_rgb\(87),
	combout => \RGB_Leds|Selector19~0_combout\);

-- Location: LCCOMB_X41_Y12_N18
\RGB_Leds|sig_shift_led_rgb[88]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|sig_shift_led_rgb[88]~feeder_combout\ = \RGB_Leds|Selector19~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RGB_Leds|Selector19~0_combout\,
	combout => \RGB_Leds|sig_shift_led_rgb[88]~feeder_combout\);

-- Location: FF_X41_Y12_N19
\RGB_Leds|sig_shift_led_rgb[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|sig_shift_led_rgb[88]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(88));

-- Location: FF_X39_Y12_N9
\DO|rgb_leds[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_rgb_leds_out\(89),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(89));

-- Location: LCCOMB_X40_Y12_N26
\RGB_Leds|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector18~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(88))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(89))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|state_leds.s3~q\,
	datab => \RGB_Leds|sig_shift_led_rgb\(88),
	datad => \DO|rgb_leds\(89),
	combout => \RGB_Leds|Selector18~0_combout\);

-- Location: FF_X40_Y12_N27
\RGB_Leds|sig_shift_led_rgb[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector18~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(89));

-- Location: LCCOMB_X39_Y12_N30
\DO|rgb_leds[90]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[90]~feeder_combout\ = \DO|sig_rgb_leds_out\(90)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(90),
	combout => \DO|rgb_leds[90]~feeder_combout\);

-- Location: FF_X39_Y12_N31
\DO|rgb_leds[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[90]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(90));

-- Location: LCCOMB_X40_Y12_N0
\RGB_Leds|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector17~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(89))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(90))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|state_leds.s3~q\,
	datac => \RGB_Leds|sig_shift_led_rgb\(89),
	datad => \DO|rgb_leds\(90),
	combout => \RGB_Leds|Selector17~0_combout\);

-- Location: FF_X40_Y12_N1
\RGB_Leds|sig_shift_led_rgb[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector17~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(90));

-- Location: LCCOMB_X40_Y12_N6
\RGB_Leds|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector16~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(90)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(91)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|state_leds.s3~q\,
	datab => \DO|rgb_leds\(91),
	datad => \RGB_Leds|sig_shift_led_rgb\(90),
	combout => \RGB_Leds|Selector16~0_combout\);

-- Location: FF_X40_Y12_N7
\RGB_Leds|sig_shift_led_rgb[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector16~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(91));

-- Location: LCCOMB_X40_Y12_N10
\RGB_Leds|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector15~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(91)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(92)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|state_leds.s3~q\,
	datab => \DO|rgb_leds\(92),
	datad => \RGB_Leds|sig_shift_led_rgb\(91),
	combout => \RGB_Leds|Selector15~0_combout\);

-- Location: FF_X40_Y12_N11
\RGB_Leds|sig_shift_led_rgb[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector15~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(92));

-- Location: LCCOMB_X40_Y12_N24
\RGB_Leds|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector14~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(92)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(93)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|state_leds.s3~q\,
	datab => \DO|rgb_leds\(93),
	datad => \RGB_Leds|sig_shift_led_rgb\(92),
	combout => \RGB_Leds|Selector14~0_combout\);

-- Location: FF_X40_Y12_N25
\RGB_Leds|sig_shift_led_rgb[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector14~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(93));

-- Location: LCCOMB_X37_Y12_N22
\DO|rgb_leds[94]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|rgb_leds[94]~feeder_combout\ = \DO|sig_rgb_leds_out\(94)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_rgb_leds_out\(94),
	combout => \DO|rgb_leds[94]~feeder_combout\);

-- Location: FF_X37_Y12_N23
\DO|rgb_leds[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|rgb_leds[94]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|rgb_leds\(94));

-- Location: LCCOMB_X37_Y12_N10
\RGB_Leds|Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector13~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & (\RGB_Leds|sig_shift_led_rgb\(93))) # (!\RGB_Leds|state_leds.s3~q\ & ((\DO|rgb_leds\(94))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_shift_led_rgb\(93),
	datab => \RGB_Leds|state_leds.s3~q\,
	datac => \DO|rgb_leds\(94),
	combout => \RGB_Leds|Selector13~0_combout\);

-- Location: FF_X37_Y12_N11
\RGB_Leds|sig_shift_led_rgb[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector13~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(94));

-- Location: LCCOMB_X37_Y12_N24
\RGB_Leds|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector12~0_combout\ = (\RGB_Leds|state_leds.s3~q\ & ((\RGB_Leds|sig_shift_led_rgb\(94)))) # (!\RGB_Leds|state_leds.s3~q\ & (\DO|rgb_leds\(95)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|state_leds.s3~q\,
	datac => \DO|rgb_leds\(95),
	datad => \RGB_Leds|sig_shift_led_rgb\(94),
	combout => \RGB_Leds|Selector12~0_combout\);

-- Location: FF_X37_Y12_N25
\RGB_Leds|sig_shift_led_rgb[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector12~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|sig_shift_led_rgb[84]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_shift_led_rgb\(95));

-- Location: LCCOMB_X41_Y17_N28
\RGB_Leds|sig_bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|sig_bit~0_combout\ = (\resetn~input_o\ & ((\RGB_Leds|state_leds.s2~q\ & (\RGB_Leds|sig_shift_led_rgb\(95))) # (!\RGB_Leds|state_leds.s2~q\ & ((\RGB_Leds|sig_bit~q\))))) # (!\resetn~input_o\ & (((\RGB_Leds|sig_bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~input_o\,
	datab => \RGB_Leds|sig_shift_led_rgb\(95),
	datac => \RGB_Leds|sig_bit~q\,
	datad => \RGB_Leds|state_leds.s2~q\,
	combout => \RGB_Leds|sig_bit~0_combout\);

-- Location: FF_X41_Y17_N29
\RGB_Leds|sig_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|sig_bit~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_bit~q\);

-- Location: LCCOMB_X41_Y17_N4
\RGB_Leds|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector9~0_combout\ = (\RGB_Leds|state_leds.s5~q\ & \RGB_Leds|sig_bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|state_leds.s5~q\,
	datad => \RGB_Leds|sig_bit~q\,
	combout => \RGB_Leds|Selector9~0_combout\);

-- Location: LCCOMB_X42_Y23_N12
\RGB_Leds|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~0_combout\ = \RGB_Leds|sig_cnt\(0) $ (VCC)
-- \RGB_Leds|Add2~1\ = CARRY(\RGB_Leds|sig_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(0),
	datad => VCC,
	combout => \RGB_Leds|Add2~0_combout\,
	cout => \RGB_Leds|Add2~1\);

-- Location: LCCOMB_X42_Y23_N8
\RGB_Leds|Selector207~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector207~0_combout\ = (\RGB_Leds|Add2~0_combout\ & !\RGB_Leds|Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Add2~0_combout\,
	datad => \RGB_Leds|Equal3~1_combout\,
	combout => \RGB_Leds|Selector207~0_combout\);

-- Location: FF_X42_Y23_N9
\RGB_Leds|sig_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector207~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(0));

-- Location: LCCOMB_X42_Y23_N14
\RGB_Leds|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~2_combout\ = (\RGB_Leds|sig_cnt\(1) & (!\RGB_Leds|Add2~1\)) # (!\RGB_Leds|sig_cnt\(1) & ((\RGB_Leds|Add2~1\) # (GND)))
-- \RGB_Leds|Add2~3\ = CARRY((!\RGB_Leds|Add2~1\) # (!\RGB_Leds|sig_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(1),
	datad => VCC,
	cin => \RGB_Leds|Add2~1\,
	combout => \RGB_Leds|Add2~2_combout\,
	cout => \RGB_Leds|Add2~3\);

-- Location: LCCOMB_X42_Y23_N0
\RGB_Leds|Selector206~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector206~0_combout\ = (\RGB_Leds|Add2~2_combout\ & !\RGB_Leds|Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RGB_Leds|Add2~2_combout\,
	datad => \RGB_Leds|Equal3~1_combout\,
	combout => \RGB_Leds|Selector206~0_combout\);

-- Location: FF_X42_Y23_N1
\RGB_Leds|sig_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector206~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(1));

-- Location: LCCOMB_X42_Y23_N16
\RGB_Leds|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~4_combout\ = (\RGB_Leds|sig_cnt\(2) & (\RGB_Leds|Add2~3\ $ (GND))) # (!\RGB_Leds|sig_cnt\(2) & (!\RGB_Leds|Add2~3\ & VCC))
-- \RGB_Leds|Add2~5\ = CARRY((\RGB_Leds|sig_cnt\(2) & !\RGB_Leds|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(2),
	datad => VCC,
	cin => \RGB_Leds|Add2~3\,
	combout => \RGB_Leds|Add2~4_combout\,
	cout => \RGB_Leds|Add2~5\);

-- Location: FF_X42_Y23_N17
\RGB_Leds|sig_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~4_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(2));

-- Location: LCCOMB_X42_Y23_N18
\RGB_Leds|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~6_combout\ = (\RGB_Leds|sig_cnt\(3) & (!\RGB_Leds|Add2~5\)) # (!\RGB_Leds|sig_cnt\(3) & ((\RGB_Leds|Add2~5\) # (GND)))
-- \RGB_Leds|Add2~7\ = CARRY((!\RGB_Leds|Add2~5\) # (!\RGB_Leds|sig_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(3),
	datad => VCC,
	cin => \RGB_Leds|Add2~5\,
	combout => \RGB_Leds|Add2~6_combout\,
	cout => \RGB_Leds|Add2~7\);

-- Location: FF_X42_Y23_N19
\RGB_Leds|sig_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~6_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(3));

-- Location: LCCOMB_X42_Y23_N20
\RGB_Leds|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~8_combout\ = (\RGB_Leds|sig_cnt\(4) & (\RGB_Leds|Add2~7\ $ (GND))) # (!\RGB_Leds|sig_cnt\(4) & (!\RGB_Leds|Add2~7\ & VCC))
-- \RGB_Leds|Add2~9\ = CARRY((\RGB_Leds|sig_cnt\(4) & !\RGB_Leds|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(4),
	datad => VCC,
	cin => \RGB_Leds|Add2~7\,
	combout => \RGB_Leds|Add2~8_combout\,
	cout => \RGB_Leds|Add2~9\);

-- Location: LCCOMB_X42_Y23_N4
\RGB_Leds|Selector203~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector203~0_combout\ = (\RGB_Leds|Add2~8_combout\ & !\RGB_Leds|Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|Add2~8_combout\,
	datad => \RGB_Leds|Equal3~1_combout\,
	combout => \RGB_Leds|Selector203~0_combout\);

-- Location: FF_X42_Y23_N5
\RGB_Leds|sig_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector203~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(4));

-- Location: LCCOMB_X42_Y23_N22
\RGB_Leds|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~10_combout\ = (\RGB_Leds|sig_cnt\(5) & (!\RGB_Leds|Add2~9\)) # (!\RGB_Leds|sig_cnt\(5) & ((\RGB_Leds|Add2~9\) # (GND)))
-- \RGB_Leds|Add2~11\ = CARRY((!\RGB_Leds|Add2~9\) # (!\RGB_Leds|sig_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(5),
	datad => VCC,
	cin => \RGB_Leds|Add2~9\,
	combout => \RGB_Leds|Add2~10_combout\,
	cout => \RGB_Leds|Add2~11\);

-- Location: LCCOMB_X42_Y23_N10
\RGB_Leds|Selector202~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector202~0_combout\ = (\RGB_Leds|Add2~10_combout\ & !\RGB_Leds|Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RGB_Leds|Add2~10_combout\,
	datad => \RGB_Leds|Equal3~1_combout\,
	combout => \RGB_Leds|Selector202~0_combout\);

-- Location: FF_X42_Y23_N11
\RGB_Leds|sig_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector202~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(5));

-- Location: LCCOMB_X42_Y23_N24
\RGB_Leds|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~12_combout\ = (\RGB_Leds|sig_cnt\(6) & (\RGB_Leds|Add2~11\ $ (GND))) # (!\RGB_Leds|sig_cnt\(6) & (!\RGB_Leds|Add2~11\ & VCC))
-- \RGB_Leds|Add2~13\ = CARRY((\RGB_Leds|sig_cnt\(6) & !\RGB_Leds|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(6),
	datad => VCC,
	cin => \RGB_Leds|Add2~11\,
	combout => \RGB_Leds|Add2~12_combout\,
	cout => \RGB_Leds|Add2~13\);

-- Location: FF_X42_Y23_N25
\RGB_Leds|sig_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~12_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(6));

-- Location: LCCOMB_X42_Y23_N26
\RGB_Leds|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~14_combout\ = (\RGB_Leds|sig_cnt\(7) & (!\RGB_Leds|Add2~13\)) # (!\RGB_Leds|sig_cnt\(7) & ((\RGB_Leds|Add2~13\) # (GND)))
-- \RGB_Leds|Add2~15\ = CARRY((!\RGB_Leds|Add2~13\) # (!\RGB_Leds|sig_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(7),
	datad => VCC,
	cin => \RGB_Leds|Add2~13\,
	combout => \RGB_Leds|Add2~14_combout\,
	cout => \RGB_Leds|Add2~15\);

-- Location: FF_X42_Y23_N27
\RGB_Leds|sig_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~14_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(7));

-- Location: LCCOMB_X42_Y23_N28
\RGB_Leds|Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~16_combout\ = (\RGB_Leds|sig_cnt\(8) & (\RGB_Leds|Add2~15\ $ (GND))) # (!\RGB_Leds|sig_cnt\(8) & (!\RGB_Leds|Add2~15\ & VCC))
-- \RGB_Leds|Add2~17\ = CARRY((\RGB_Leds|sig_cnt\(8) & !\RGB_Leds|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(8),
	datad => VCC,
	cin => \RGB_Leds|Add2~15\,
	combout => \RGB_Leds|Add2~16_combout\,
	cout => \RGB_Leds|Add2~17\);

-- Location: FF_X42_Y23_N29
\RGB_Leds|sig_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~16_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(8));

-- Location: LCCOMB_X42_Y23_N30
\RGB_Leds|Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~18_combout\ = (\RGB_Leds|sig_cnt\(9) & (!\RGB_Leds|Add2~17\)) # (!\RGB_Leds|sig_cnt\(9) & ((\RGB_Leds|Add2~17\) # (GND)))
-- \RGB_Leds|Add2~19\ = CARRY((!\RGB_Leds|Add2~17\) # (!\RGB_Leds|sig_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(9),
	datad => VCC,
	cin => \RGB_Leds|Add2~17\,
	combout => \RGB_Leds|Add2~18_combout\,
	cout => \RGB_Leds|Add2~19\);

-- Location: FF_X42_Y23_N31
\RGB_Leds|sig_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~18_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(9));

-- Location: LCCOMB_X42_Y22_N0
\RGB_Leds|Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~20_combout\ = (\RGB_Leds|sig_cnt\(10) & (\RGB_Leds|Add2~19\ $ (GND))) # (!\RGB_Leds|sig_cnt\(10) & (!\RGB_Leds|Add2~19\ & VCC))
-- \RGB_Leds|Add2~21\ = CARRY((\RGB_Leds|sig_cnt\(10) & !\RGB_Leds|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(10),
	datad => VCC,
	cin => \RGB_Leds|Add2~19\,
	combout => \RGB_Leds|Add2~20_combout\,
	cout => \RGB_Leds|Add2~21\);

-- Location: FF_X42_Y22_N1
\RGB_Leds|sig_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~20_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(10));

-- Location: LCCOMB_X42_Y22_N2
\RGB_Leds|Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~22_combout\ = (\RGB_Leds|sig_cnt\(11) & (!\RGB_Leds|Add2~21\)) # (!\RGB_Leds|sig_cnt\(11) & ((\RGB_Leds|Add2~21\) # (GND)))
-- \RGB_Leds|Add2~23\ = CARRY((!\RGB_Leds|Add2~21\) # (!\RGB_Leds|sig_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(11),
	datad => VCC,
	cin => \RGB_Leds|Add2~21\,
	combout => \RGB_Leds|Add2~22_combout\,
	cout => \RGB_Leds|Add2~23\);

-- Location: FF_X42_Y22_N3
\RGB_Leds|sig_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~22_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(11));

-- Location: LCCOMB_X42_Y22_N4
\RGB_Leds|Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~24_combout\ = (\RGB_Leds|sig_cnt\(12) & (\RGB_Leds|Add2~23\ $ (GND))) # (!\RGB_Leds|sig_cnt\(12) & (!\RGB_Leds|Add2~23\ & VCC))
-- \RGB_Leds|Add2~25\ = CARRY((\RGB_Leds|sig_cnt\(12) & !\RGB_Leds|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(12),
	datad => VCC,
	cin => \RGB_Leds|Add2~23\,
	combout => \RGB_Leds|Add2~24_combout\,
	cout => \RGB_Leds|Add2~25\);

-- Location: FF_X42_Y22_N5
\RGB_Leds|sig_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~24_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(12));

-- Location: LCCOMB_X42_Y22_N6
\RGB_Leds|Add2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~26_combout\ = (\RGB_Leds|sig_cnt\(13) & (!\RGB_Leds|Add2~25\)) # (!\RGB_Leds|sig_cnt\(13) & ((\RGB_Leds|Add2~25\) # (GND)))
-- \RGB_Leds|Add2~27\ = CARRY((!\RGB_Leds|Add2~25\) # (!\RGB_Leds|sig_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(13),
	datad => VCC,
	cin => \RGB_Leds|Add2~25\,
	combout => \RGB_Leds|Add2~26_combout\,
	cout => \RGB_Leds|Add2~27\);

-- Location: FF_X42_Y22_N7
\RGB_Leds|sig_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~26_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(13));

-- Location: LCCOMB_X42_Y22_N8
\RGB_Leds|Add2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~28_combout\ = (\RGB_Leds|sig_cnt\(14) & (\RGB_Leds|Add2~27\ $ (GND))) # (!\RGB_Leds|sig_cnt\(14) & (!\RGB_Leds|Add2~27\ & VCC))
-- \RGB_Leds|Add2~29\ = CARRY((\RGB_Leds|sig_cnt\(14) & !\RGB_Leds|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(14),
	datad => VCC,
	cin => \RGB_Leds|Add2~27\,
	combout => \RGB_Leds|Add2~28_combout\,
	cout => \RGB_Leds|Add2~29\);

-- Location: FF_X42_Y22_N9
\RGB_Leds|sig_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~28_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(14));

-- Location: LCCOMB_X42_Y22_N10
\RGB_Leds|Add2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~30_combout\ = (\RGB_Leds|sig_cnt\(15) & (!\RGB_Leds|Add2~29\)) # (!\RGB_Leds|sig_cnt\(15) & ((\RGB_Leds|Add2~29\) # (GND)))
-- \RGB_Leds|Add2~31\ = CARRY((!\RGB_Leds|Add2~29\) # (!\RGB_Leds|sig_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(15),
	datad => VCC,
	cin => \RGB_Leds|Add2~29\,
	combout => \RGB_Leds|Add2~30_combout\,
	cout => \RGB_Leds|Add2~31\);

-- Location: FF_X42_Y22_N11
\RGB_Leds|sig_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~30_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(15));

-- Location: LCCOMB_X42_Y22_N12
\RGB_Leds|Add2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~32_combout\ = (\RGB_Leds|sig_cnt\(16) & (\RGB_Leds|Add2~31\ $ (GND))) # (!\RGB_Leds|sig_cnt\(16) & (!\RGB_Leds|Add2~31\ & VCC))
-- \RGB_Leds|Add2~33\ = CARRY((\RGB_Leds|sig_cnt\(16) & !\RGB_Leds|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(16),
	datad => VCC,
	cin => \RGB_Leds|Add2~31\,
	combout => \RGB_Leds|Add2~32_combout\,
	cout => \RGB_Leds|Add2~33\);

-- Location: FF_X42_Y22_N13
\RGB_Leds|sig_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~32_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(16));

-- Location: LCCOMB_X42_Y22_N14
\RGB_Leds|Add2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~34_combout\ = (\RGB_Leds|sig_cnt\(17) & (!\RGB_Leds|Add2~33\)) # (!\RGB_Leds|sig_cnt\(17) & ((\RGB_Leds|Add2~33\) # (GND)))
-- \RGB_Leds|Add2~35\ = CARRY((!\RGB_Leds|Add2~33\) # (!\RGB_Leds|sig_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(17),
	datad => VCC,
	cin => \RGB_Leds|Add2~33\,
	combout => \RGB_Leds|Add2~34_combout\,
	cout => \RGB_Leds|Add2~35\);

-- Location: FF_X42_Y22_N15
\RGB_Leds|sig_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~34_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(17));

-- Location: LCCOMB_X42_Y22_N16
\RGB_Leds|Add2~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~36_combout\ = (\RGB_Leds|sig_cnt\(18) & (\RGB_Leds|Add2~35\ $ (GND))) # (!\RGB_Leds|sig_cnt\(18) & (!\RGB_Leds|Add2~35\ & VCC))
-- \RGB_Leds|Add2~37\ = CARRY((\RGB_Leds|sig_cnt\(18) & !\RGB_Leds|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(18),
	datad => VCC,
	cin => \RGB_Leds|Add2~35\,
	combout => \RGB_Leds|Add2~36_combout\,
	cout => \RGB_Leds|Add2~37\);

-- Location: FF_X42_Y22_N17
\RGB_Leds|sig_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~36_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(18));

-- Location: LCCOMB_X42_Y22_N18
\RGB_Leds|Add2~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~38_combout\ = (\RGB_Leds|sig_cnt\(19) & (!\RGB_Leds|Add2~37\)) # (!\RGB_Leds|sig_cnt\(19) & ((\RGB_Leds|Add2~37\) # (GND)))
-- \RGB_Leds|Add2~39\ = CARRY((!\RGB_Leds|Add2~37\) # (!\RGB_Leds|sig_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(19),
	datad => VCC,
	cin => \RGB_Leds|Add2~37\,
	combout => \RGB_Leds|Add2~38_combout\,
	cout => \RGB_Leds|Add2~39\);

-- Location: FF_X42_Y22_N19
\RGB_Leds|sig_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~38_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(19));

-- Location: LCCOMB_X42_Y22_N20
\RGB_Leds|Add2~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~40_combout\ = (\RGB_Leds|sig_cnt\(20) & (\RGB_Leds|Add2~39\ $ (GND))) # (!\RGB_Leds|sig_cnt\(20) & (!\RGB_Leds|Add2~39\ & VCC))
-- \RGB_Leds|Add2~41\ = CARRY((\RGB_Leds|sig_cnt\(20) & !\RGB_Leds|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(20),
	datad => VCC,
	cin => \RGB_Leds|Add2~39\,
	combout => \RGB_Leds|Add2~40_combout\,
	cout => \RGB_Leds|Add2~41\);

-- Location: FF_X42_Y22_N21
\RGB_Leds|sig_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~40_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(20));

-- Location: LCCOMB_X42_Y22_N22
\RGB_Leds|Add2~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~42_combout\ = (\RGB_Leds|sig_cnt\(21) & (!\RGB_Leds|Add2~41\)) # (!\RGB_Leds|sig_cnt\(21) & ((\RGB_Leds|Add2~41\) # (GND)))
-- \RGB_Leds|Add2~43\ = CARRY((!\RGB_Leds|Add2~41\) # (!\RGB_Leds|sig_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(21),
	datad => VCC,
	cin => \RGB_Leds|Add2~41\,
	combout => \RGB_Leds|Add2~42_combout\,
	cout => \RGB_Leds|Add2~43\);

-- Location: FF_X42_Y22_N23
\RGB_Leds|sig_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~42_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(21));

-- Location: LCCOMB_X42_Y22_N24
\RGB_Leds|Add2~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~44_combout\ = (\RGB_Leds|sig_cnt\(22) & (\RGB_Leds|Add2~43\ $ (GND))) # (!\RGB_Leds|sig_cnt\(22) & (!\RGB_Leds|Add2~43\ & VCC))
-- \RGB_Leds|Add2~45\ = CARRY((\RGB_Leds|sig_cnt\(22) & !\RGB_Leds|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(22),
	datad => VCC,
	cin => \RGB_Leds|Add2~43\,
	combout => \RGB_Leds|Add2~44_combout\,
	cout => \RGB_Leds|Add2~45\);

-- Location: FF_X42_Y22_N25
\RGB_Leds|sig_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~44_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(22));

-- Location: LCCOMB_X42_Y22_N26
\RGB_Leds|Add2~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~46_combout\ = (\RGB_Leds|sig_cnt\(23) & (!\RGB_Leds|Add2~45\)) # (!\RGB_Leds|sig_cnt\(23) & ((\RGB_Leds|Add2~45\) # (GND)))
-- \RGB_Leds|Add2~47\ = CARRY((!\RGB_Leds|Add2~45\) # (!\RGB_Leds|sig_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(23),
	datad => VCC,
	cin => \RGB_Leds|Add2~45\,
	combout => \RGB_Leds|Add2~46_combout\,
	cout => \RGB_Leds|Add2~47\);

-- Location: FF_X42_Y22_N27
\RGB_Leds|sig_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~46_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(23));

-- Location: LCCOMB_X42_Y22_N28
\RGB_Leds|Add2~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~48_combout\ = (\RGB_Leds|sig_cnt\(24) & (\RGB_Leds|Add2~47\ $ (GND))) # (!\RGB_Leds|sig_cnt\(24) & (!\RGB_Leds|Add2~47\ & VCC))
-- \RGB_Leds|Add2~49\ = CARRY((\RGB_Leds|sig_cnt\(24) & !\RGB_Leds|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(24),
	datad => VCC,
	cin => \RGB_Leds|Add2~47\,
	combout => \RGB_Leds|Add2~48_combout\,
	cout => \RGB_Leds|Add2~49\);

-- Location: FF_X42_Y22_N29
\RGB_Leds|sig_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~48_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(24));

-- Location: LCCOMB_X42_Y22_N30
\RGB_Leds|Add2~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~50_combout\ = (\RGB_Leds|sig_cnt\(25) & (!\RGB_Leds|Add2~49\)) # (!\RGB_Leds|sig_cnt\(25) & ((\RGB_Leds|Add2~49\) # (GND)))
-- \RGB_Leds|Add2~51\ = CARRY((!\RGB_Leds|Add2~49\) # (!\RGB_Leds|sig_cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(25),
	datad => VCC,
	cin => \RGB_Leds|Add2~49\,
	combout => \RGB_Leds|Add2~50_combout\,
	cout => \RGB_Leds|Add2~51\);

-- Location: FF_X42_Y22_N31
\RGB_Leds|sig_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~50_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(25));

-- Location: LCCOMB_X42_Y21_N0
\RGB_Leds|Add2~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~52_combout\ = (\RGB_Leds|sig_cnt\(26) & (\RGB_Leds|Add2~51\ $ (GND))) # (!\RGB_Leds|sig_cnt\(26) & (!\RGB_Leds|Add2~51\ & VCC))
-- \RGB_Leds|Add2~53\ = CARRY((\RGB_Leds|sig_cnt\(26) & !\RGB_Leds|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(26),
	datad => VCC,
	cin => \RGB_Leds|Add2~51\,
	combout => \RGB_Leds|Add2~52_combout\,
	cout => \RGB_Leds|Add2~53\);

-- Location: FF_X42_Y21_N1
\RGB_Leds|sig_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~52_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(26));

-- Location: LCCOMB_X42_Y21_N2
\RGB_Leds|Add2~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~54_combout\ = (\RGB_Leds|sig_cnt\(27) & (!\RGB_Leds|Add2~53\)) # (!\RGB_Leds|sig_cnt\(27) & ((\RGB_Leds|Add2~53\) # (GND)))
-- \RGB_Leds|Add2~55\ = CARRY((!\RGB_Leds|Add2~53\) # (!\RGB_Leds|sig_cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(27),
	datad => VCC,
	cin => \RGB_Leds|Add2~53\,
	combout => \RGB_Leds|Add2~54_combout\,
	cout => \RGB_Leds|Add2~55\);

-- Location: FF_X42_Y21_N3
\RGB_Leds|sig_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~54_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(27));

-- Location: LCCOMB_X42_Y21_N4
\RGB_Leds|Add2~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~56_combout\ = (\RGB_Leds|sig_cnt\(28) & (\RGB_Leds|Add2~55\ $ (GND))) # (!\RGB_Leds|sig_cnt\(28) & (!\RGB_Leds|Add2~55\ & VCC))
-- \RGB_Leds|Add2~57\ = CARRY((\RGB_Leds|sig_cnt\(28) & !\RGB_Leds|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(28),
	datad => VCC,
	cin => \RGB_Leds|Add2~55\,
	combout => \RGB_Leds|Add2~56_combout\,
	cout => \RGB_Leds|Add2~57\);

-- Location: FF_X42_Y21_N5
\RGB_Leds|sig_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~56_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(28));

-- Location: LCCOMB_X42_Y21_N6
\RGB_Leds|Add2~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~58_combout\ = (\RGB_Leds|sig_cnt\(29) & (!\RGB_Leds|Add2~57\)) # (!\RGB_Leds|sig_cnt\(29) & ((\RGB_Leds|Add2~57\) # (GND)))
-- \RGB_Leds|Add2~59\ = CARRY((!\RGB_Leds|Add2~57\) # (!\RGB_Leds|sig_cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(29),
	datad => VCC,
	cin => \RGB_Leds|Add2~57\,
	combout => \RGB_Leds|Add2~58_combout\,
	cout => \RGB_Leds|Add2~59\);

-- Location: FF_X42_Y21_N7
\RGB_Leds|sig_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~58_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(29));

-- Location: LCCOMB_X42_Y21_N8
\RGB_Leds|Add2~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~60_combout\ = (\RGB_Leds|sig_cnt\(30) & (\RGB_Leds|Add2~59\ $ (GND))) # (!\RGB_Leds|sig_cnt\(30) & (!\RGB_Leds|Add2~59\ & VCC))
-- \RGB_Leds|Add2~61\ = CARRY((\RGB_Leds|sig_cnt\(30) & !\RGB_Leds|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(30),
	datad => VCC,
	cin => \RGB_Leds|Add2~59\,
	combout => \RGB_Leds|Add2~60_combout\,
	cout => \RGB_Leds|Add2~61\);

-- Location: FF_X42_Y21_N9
\RGB_Leds|sig_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~60_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(30));

-- Location: LCCOMB_X42_Y21_N10
\RGB_Leds|Add2~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~62_combout\ = (\RGB_Leds|sig_cnt\(31) & (!\RGB_Leds|Add2~61\)) # (!\RGB_Leds|sig_cnt\(31) & ((\RGB_Leds|Add2~61\) # (GND)))
-- \RGB_Leds|Add2~63\ = CARRY((!\RGB_Leds|Add2~61\) # (!\RGB_Leds|sig_cnt\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(31),
	datad => VCC,
	cin => \RGB_Leds|Add2~61\,
	combout => \RGB_Leds|Add2~62_combout\,
	cout => \RGB_Leds|Add2~63\);

-- Location: FF_X42_Y21_N11
\RGB_Leds|sig_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~62_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(31));

-- Location: LCCOMB_X42_Y21_N12
\RGB_Leds|Add2~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~64_combout\ = (\RGB_Leds|sig_cnt\(32) & (\RGB_Leds|Add2~63\ $ (GND))) # (!\RGB_Leds|sig_cnt\(32) & (!\RGB_Leds|Add2~63\ & VCC))
-- \RGB_Leds|Add2~65\ = CARRY((\RGB_Leds|sig_cnt\(32) & !\RGB_Leds|Add2~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(32),
	datad => VCC,
	cin => \RGB_Leds|Add2~63\,
	combout => \RGB_Leds|Add2~64_combout\,
	cout => \RGB_Leds|Add2~65\);

-- Location: FF_X42_Y21_N13
\RGB_Leds|sig_cnt[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~64_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(32));

-- Location: LCCOMB_X42_Y21_N14
\RGB_Leds|Add2~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~66_combout\ = (\RGB_Leds|sig_cnt\(33) & (!\RGB_Leds|Add2~65\)) # (!\RGB_Leds|sig_cnt\(33) & ((\RGB_Leds|Add2~65\) # (GND)))
-- \RGB_Leds|Add2~67\ = CARRY((!\RGB_Leds|Add2~65\) # (!\RGB_Leds|sig_cnt\(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(33),
	datad => VCC,
	cin => \RGB_Leds|Add2~65\,
	combout => \RGB_Leds|Add2~66_combout\,
	cout => \RGB_Leds|Add2~67\);

-- Location: FF_X42_Y21_N15
\RGB_Leds|sig_cnt[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~66_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(33));

-- Location: LCCOMB_X42_Y21_N16
\RGB_Leds|Add2~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~68_combout\ = (\RGB_Leds|sig_cnt\(34) & (\RGB_Leds|Add2~67\ $ (GND))) # (!\RGB_Leds|sig_cnt\(34) & (!\RGB_Leds|Add2~67\ & VCC))
-- \RGB_Leds|Add2~69\ = CARRY((\RGB_Leds|sig_cnt\(34) & !\RGB_Leds|Add2~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(34),
	datad => VCC,
	cin => \RGB_Leds|Add2~67\,
	combout => \RGB_Leds|Add2~68_combout\,
	cout => \RGB_Leds|Add2~69\);

-- Location: FF_X42_Y21_N17
\RGB_Leds|sig_cnt[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~68_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(34));

-- Location: LCCOMB_X42_Y21_N18
\RGB_Leds|Add2~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~70_combout\ = (\RGB_Leds|sig_cnt\(35) & (!\RGB_Leds|Add2~69\)) # (!\RGB_Leds|sig_cnt\(35) & ((\RGB_Leds|Add2~69\) # (GND)))
-- \RGB_Leds|Add2~71\ = CARRY((!\RGB_Leds|Add2~69\) # (!\RGB_Leds|sig_cnt\(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(35),
	datad => VCC,
	cin => \RGB_Leds|Add2~69\,
	combout => \RGB_Leds|Add2~70_combout\,
	cout => \RGB_Leds|Add2~71\);

-- Location: FF_X42_Y21_N19
\RGB_Leds|sig_cnt[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~70_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(35));

-- Location: LCCOMB_X42_Y21_N20
\RGB_Leds|Add2~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~72_combout\ = (\RGB_Leds|sig_cnt\(36) & (\RGB_Leds|Add2~71\ $ (GND))) # (!\RGB_Leds|sig_cnt\(36) & (!\RGB_Leds|Add2~71\ & VCC))
-- \RGB_Leds|Add2~73\ = CARRY((\RGB_Leds|sig_cnt\(36) & !\RGB_Leds|Add2~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(36),
	datad => VCC,
	cin => \RGB_Leds|Add2~71\,
	combout => \RGB_Leds|Add2~72_combout\,
	cout => \RGB_Leds|Add2~73\);

-- Location: FF_X42_Y21_N21
\RGB_Leds|sig_cnt[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~72_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(36));

-- Location: LCCOMB_X42_Y21_N22
\RGB_Leds|Add2~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~74_combout\ = (\RGB_Leds|sig_cnt\(37) & (!\RGB_Leds|Add2~73\)) # (!\RGB_Leds|sig_cnt\(37) & ((\RGB_Leds|Add2~73\) # (GND)))
-- \RGB_Leds|Add2~75\ = CARRY((!\RGB_Leds|Add2~73\) # (!\RGB_Leds|sig_cnt\(37)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(37),
	datad => VCC,
	cin => \RGB_Leds|Add2~73\,
	combout => \RGB_Leds|Add2~74_combout\,
	cout => \RGB_Leds|Add2~75\);

-- Location: FF_X42_Y21_N23
\RGB_Leds|sig_cnt[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~74_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(37));

-- Location: LCCOMB_X42_Y21_N24
\RGB_Leds|Add2~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~76_combout\ = (\RGB_Leds|sig_cnt\(38) & (\RGB_Leds|Add2~75\ $ (GND))) # (!\RGB_Leds|sig_cnt\(38) & (!\RGB_Leds|Add2~75\ & VCC))
-- \RGB_Leds|Add2~77\ = CARRY((\RGB_Leds|sig_cnt\(38) & !\RGB_Leds|Add2~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(38),
	datad => VCC,
	cin => \RGB_Leds|Add2~75\,
	combout => \RGB_Leds|Add2~76_combout\,
	cout => \RGB_Leds|Add2~77\);

-- Location: FF_X42_Y21_N25
\RGB_Leds|sig_cnt[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~76_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(38));

-- Location: LCCOMB_X42_Y21_N26
\RGB_Leds|Add2~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~78_combout\ = (\RGB_Leds|sig_cnt\(39) & (!\RGB_Leds|Add2~77\)) # (!\RGB_Leds|sig_cnt\(39) & ((\RGB_Leds|Add2~77\) # (GND)))
-- \RGB_Leds|Add2~79\ = CARRY((!\RGB_Leds|Add2~77\) # (!\RGB_Leds|sig_cnt\(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(39),
	datad => VCC,
	cin => \RGB_Leds|Add2~77\,
	combout => \RGB_Leds|Add2~78_combout\,
	cout => \RGB_Leds|Add2~79\);

-- Location: FF_X42_Y21_N27
\RGB_Leds|sig_cnt[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~78_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(39));

-- Location: LCCOMB_X42_Y21_N28
\RGB_Leds|Add2~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~80_combout\ = (\RGB_Leds|sig_cnt\(40) & (\RGB_Leds|Add2~79\ $ (GND))) # (!\RGB_Leds|sig_cnt\(40) & (!\RGB_Leds|Add2~79\ & VCC))
-- \RGB_Leds|Add2~81\ = CARRY((\RGB_Leds|sig_cnt\(40) & !\RGB_Leds|Add2~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(40),
	datad => VCC,
	cin => \RGB_Leds|Add2~79\,
	combout => \RGB_Leds|Add2~80_combout\,
	cout => \RGB_Leds|Add2~81\);

-- Location: FF_X42_Y21_N29
\RGB_Leds|sig_cnt[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~80_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(40));

-- Location: LCCOMB_X42_Y21_N30
\RGB_Leds|Add2~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~82_combout\ = (\RGB_Leds|sig_cnt\(41) & (!\RGB_Leds|Add2~81\)) # (!\RGB_Leds|sig_cnt\(41) & ((\RGB_Leds|Add2~81\) # (GND)))
-- \RGB_Leds|Add2~83\ = CARRY((!\RGB_Leds|Add2~81\) # (!\RGB_Leds|sig_cnt\(41)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(41),
	datad => VCC,
	cin => \RGB_Leds|Add2~81\,
	combout => \RGB_Leds|Add2~82_combout\,
	cout => \RGB_Leds|Add2~83\);

-- Location: FF_X42_Y21_N31
\RGB_Leds|sig_cnt[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~82_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(41));

-- Location: LCCOMB_X42_Y20_N0
\RGB_Leds|Add2~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~84_combout\ = (\RGB_Leds|sig_cnt\(42) & (\RGB_Leds|Add2~83\ $ (GND))) # (!\RGB_Leds|sig_cnt\(42) & (!\RGB_Leds|Add2~83\ & VCC))
-- \RGB_Leds|Add2~85\ = CARRY((\RGB_Leds|sig_cnt\(42) & !\RGB_Leds|Add2~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(42),
	datad => VCC,
	cin => \RGB_Leds|Add2~83\,
	combout => \RGB_Leds|Add2~84_combout\,
	cout => \RGB_Leds|Add2~85\);

-- Location: FF_X42_Y20_N1
\RGB_Leds|sig_cnt[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~84_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(42));

-- Location: LCCOMB_X42_Y20_N2
\RGB_Leds|Add2~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~86_combout\ = (\RGB_Leds|sig_cnt\(43) & (!\RGB_Leds|Add2~85\)) # (!\RGB_Leds|sig_cnt\(43) & ((\RGB_Leds|Add2~85\) # (GND)))
-- \RGB_Leds|Add2~87\ = CARRY((!\RGB_Leds|Add2~85\) # (!\RGB_Leds|sig_cnt\(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(43),
	datad => VCC,
	cin => \RGB_Leds|Add2~85\,
	combout => \RGB_Leds|Add2~86_combout\,
	cout => \RGB_Leds|Add2~87\);

-- Location: FF_X42_Y20_N3
\RGB_Leds|sig_cnt[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~86_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(43));

-- Location: LCCOMB_X42_Y20_N4
\RGB_Leds|Add2~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~88_combout\ = (\RGB_Leds|sig_cnt\(44) & (\RGB_Leds|Add2~87\ $ (GND))) # (!\RGB_Leds|sig_cnt\(44) & (!\RGB_Leds|Add2~87\ & VCC))
-- \RGB_Leds|Add2~89\ = CARRY((\RGB_Leds|sig_cnt\(44) & !\RGB_Leds|Add2~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(44),
	datad => VCC,
	cin => \RGB_Leds|Add2~87\,
	combout => \RGB_Leds|Add2~88_combout\,
	cout => \RGB_Leds|Add2~89\);

-- Location: FF_X42_Y20_N5
\RGB_Leds|sig_cnt[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~88_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(44));

-- Location: LCCOMB_X42_Y20_N6
\RGB_Leds|Add2~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~90_combout\ = (\RGB_Leds|sig_cnt\(45) & (!\RGB_Leds|Add2~89\)) # (!\RGB_Leds|sig_cnt\(45) & ((\RGB_Leds|Add2~89\) # (GND)))
-- \RGB_Leds|Add2~91\ = CARRY((!\RGB_Leds|Add2~89\) # (!\RGB_Leds|sig_cnt\(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(45),
	datad => VCC,
	cin => \RGB_Leds|Add2~89\,
	combout => \RGB_Leds|Add2~90_combout\,
	cout => \RGB_Leds|Add2~91\);

-- Location: FF_X42_Y20_N7
\RGB_Leds|sig_cnt[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~90_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(45));

-- Location: LCCOMB_X42_Y20_N8
\RGB_Leds|Add2~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~92_combout\ = (\RGB_Leds|sig_cnt\(46) & (\RGB_Leds|Add2~91\ $ (GND))) # (!\RGB_Leds|sig_cnt\(46) & (!\RGB_Leds|Add2~91\ & VCC))
-- \RGB_Leds|Add2~93\ = CARRY((\RGB_Leds|sig_cnt\(46) & !\RGB_Leds|Add2~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(46),
	datad => VCC,
	cin => \RGB_Leds|Add2~91\,
	combout => \RGB_Leds|Add2~92_combout\,
	cout => \RGB_Leds|Add2~93\);

-- Location: FF_X42_Y20_N9
\RGB_Leds|sig_cnt[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~92_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(46));

-- Location: LCCOMB_X42_Y20_N10
\RGB_Leds|Add2~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~94_combout\ = (\RGB_Leds|sig_cnt\(47) & (!\RGB_Leds|Add2~93\)) # (!\RGB_Leds|sig_cnt\(47) & ((\RGB_Leds|Add2~93\) # (GND)))
-- \RGB_Leds|Add2~95\ = CARRY((!\RGB_Leds|Add2~93\) # (!\RGB_Leds|sig_cnt\(47)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(47),
	datad => VCC,
	cin => \RGB_Leds|Add2~93\,
	combout => \RGB_Leds|Add2~94_combout\,
	cout => \RGB_Leds|Add2~95\);

-- Location: FF_X42_Y20_N11
\RGB_Leds|sig_cnt[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~94_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(47));

-- Location: LCCOMB_X42_Y20_N12
\RGB_Leds|Add2~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~96_combout\ = (\RGB_Leds|sig_cnt\(48) & (\RGB_Leds|Add2~95\ $ (GND))) # (!\RGB_Leds|sig_cnt\(48) & (!\RGB_Leds|Add2~95\ & VCC))
-- \RGB_Leds|Add2~97\ = CARRY((\RGB_Leds|sig_cnt\(48) & !\RGB_Leds|Add2~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(48),
	datad => VCC,
	cin => \RGB_Leds|Add2~95\,
	combout => \RGB_Leds|Add2~96_combout\,
	cout => \RGB_Leds|Add2~97\);

-- Location: FF_X42_Y20_N13
\RGB_Leds|sig_cnt[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~96_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(48));

-- Location: LCCOMB_X42_Y20_N14
\RGB_Leds|Add2~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~98_combout\ = (\RGB_Leds|sig_cnt\(49) & (!\RGB_Leds|Add2~97\)) # (!\RGB_Leds|sig_cnt\(49) & ((\RGB_Leds|Add2~97\) # (GND)))
-- \RGB_Leds|Add2~99\ = CARRY((!\RGB_Leds|Add2~97\) # (!\RGB_Leds|sig_cnt\(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(49),
	datad => VCC,
	cin => \RGB_Leds|Add2~97\,
	combout => \RGB_Leds|Add2~98_combout\,
	cout => \RGB_Leds|Add2~99\);

-- Location: FF_X42_Y20_N15
\RGB_Leds|sig_cnt[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~98_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(49));

-- Location: LCCOMB_X42_Y20_N16
\RGB_Leds|Add2~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~100_combout\ = (\RGB_Leds|sig_cnt\(50) & (\RGB_Leds|Add2~99\ $ (GND))) # (!\RGB_Leds|sig_cnt\(50) & (!\RGB_Leds|Add2~99\ & VCC))
-- \RGB_Leds|Add2~101\ = CARRY((\RGB_Leds|sig_cnt\(50) & !\RGB_Leds|Add2~99\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(50),
	datad => VCC,
	cin => \RGB_Leds|Add2~99\,
	combout => \RGB_Leds|Add2~100_combout\,
	cout => \RGB_Leds|Add2~101\);

-- Location: FF_X42_Y20_N17
\RGB_Leds|sig_cnt[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~100_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(50));

-- Location: LCCOMB_X42_Y20_N18
\RGB_Leds|Add2~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~102_combout\ = (\RGB_Leds|sig_cnt\(51) & (!\RGB_Leds|Add2~101\)) # (!\RGB_Leds|sig_cnt\(51) & ((\RGB_Leds|Add2~101\) # (GND)))
-- \RGB_Leds|Add2~103\ = CARRY((!\RGB_Leds|Add2~101\) # (!\RGB_Leds|sig_cnt\(51)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(51),
	datad => VCC,
	cin => \RGB_Leds|Add2~101\,
	combout => \RGB_Leds|Add2~102_combout\,
	cout => \RGB_Leds|Add2~103\);

-- Location: FF_X42_Y20_N19
\RGB_Leds|sig_cnt[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~102_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(51));

-- Location: LCCOMB_X42_Y20_N20
\RGB_Leds|Add2~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~104_combout\ = (\RGB_Leds|sig_cnt\(52) & (\RGB_Leds|Add2~103\ $ (GND))) # (!\RGB_Leds|sig_cnt\(52) & (!\RGB_Leds|Add2~103\ & VCC))
-- \RGB_Leds|Add2~105\ = CARRY((\RGB_Leds|sig_cnt\(52) & !\RGB_Leds|Add2~103\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(52),
	datad => VCC,
	cin => \RGB_Leds|Add2~103\,
	combout => \RGB_Leds|Add2~104_combout\,
	cout => \RGB_Leds|Add2~105\);

-- Location: FF_X42_Y20_N21
\RGB_Leds|sig_cnt[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~104_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(52));

-- Location: LCCOMB_X42_Y20_N22
\RGB_Leds|Add2~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~106_combout\ = (\RGB_Leds|sig_cnt\(53) & (!\RGB_Leds|Add2~105\)) # (!\RGB_Leds|sig_cnt\(53) & ((\RGB_Leds|Add2~105\) # (GND)))
-- \RGB_Leds|Add2~107\ = CARRY((!\RGB_Leds|Add2~105\) # (!\RGB_Leds|sig_cnt\(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(53),
	datad => VCC,
	cin => \RGB_Leds|Add2~105\,
	combout => \RGB_Leds|Add2~106_combout\,
	cout => \RGB_Leds|Add2~107\);

-- Location: FF_X42_Y20_N23
\RGB_Leds|sig_cnt[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~106_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(53));

-- Location: LCCOMB_X42_Y20_N24
\RGB_Leds|Add2~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~108_combout\ = (\RGB_Leds|sig_cnt\(54) & (\RGB_Leds|Add2~107\ $ (GND))) # (!\RGB_Leds|sig_cnt\(54) & (!\RGB_Leds|Add2~107\ & VCC))
-- \RGB_Leds|Add2~109\ = CARRY((\RGB_Leds|sig_cnt\(54) & !\RGB_Leds|Add2~107\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(54),
	datad => VCC,
	cin => \RGB_Leds|Add2~107\,
	combout => \RGB_Leds|Add2~108_combout\,
	cout => \RGB_Leds|Add2~109\);

-- Location: FF_X42_Y20_N25
\RGB_Leds|sig_cnt[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~108_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(54));

-- Location: LCCOMB_X42_Y20_N26
\RGB_Leds|Add2~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~110_combout\ = (\RGB_Leds|sig_cnt\(55) & (!\RGB_Leds|Add2~109\)) # (!\RGB_Leds|sig_cnt\(55) & ((\RGB_Leds|Add2~109\) # (GND)))
-- \RGB_Leds|Add2~111\ = CARRY((!\RGB_Leds|Add2~109\) # (!\RGB_Leds|sig_cnt\(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(55),
	datad => VCC,
	cin => \RGB_Leds|Add2~109\,
	combout => \RGB_Leds|Add2~110_combout\,
	cout => \RGB_Leds|Add2~111\);

-- Location: FF_X42_Y20_N27
\RGB_Leds|sig_cnt[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~110_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(55));

-- Location: LCCOMB_X42_Y20_N28
\RGB_Leds|Add2~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~112_combout\ = (\RGB_Leds|sig_cnt\(56) & (\RGB_Leds|Add2~111\ $ (GND))) # (!\RGB_Leds|sig_cnt\(56) & (!\RGB_Leds|Add2~111\ & VCC))
-- \RGB_Leds|Add2~113\ = CARRY((\RGB_Leds|sig_cnt\(56) & !\RGB_Leds|Add2~111\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(56),
	datad => VCC,
	cin => \RGB_Leds|Add2~111\,
	combout => \RGB_Leds|Add2~112_combout\,
	cout => \RGB_Leds|Add2~113\);

-- Location: FF_X42_Y20_N29
\RGB_Leds|sig_cnt[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~112_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(56));

-- Location: LCCOMB_X42_Y20_N30
\RGB_Leds|Add2~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~114_combout\ = (\RGB_Leds|sig_cnt\(57) & (!\RGB_Leds|Add2~113\)) # (!\RGB_Leds|sig_cnt\(57) & ((\RGB_Leds|Add2~113\) # (GND)))
-- \RGB_Leds|Add2~115\ = CARRY((!\RGB_Leds|Add2~113\) # (!\RGB_Leds|sig_cnt\(57)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(57),
	datad => VCC,
	cin => \RGB_Leds|Add2~113\,
	combout => \RGB_Leds|Add2~114_combout\,
	cout => \RGB_Leds|Add2~115\);

-- Location: FF_X42_Y20_N31
\RGB_Leds|sig_cnt[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~114_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(57));

-- Location: LCCOMB_X42_Y19_N0
\RGB_Leds|Add2~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~116_combout\ = (\RGB_Leds|sig_cnt\(58) & (\RGB_Leds|Add2~115\ $ (GND))) # (!\RGB_Leds|sig_cnt\(58) & (!\RGB_Leds|Add2~115\ & VCC))
-- \RGB_Leds|Add2~117\ = CARRY((\RGB_Leds|sig_cnt\(58) & !\RGB_Leds|Add2~115\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(58),
	datad => VCC,
	cin => \RGB_Leds|Add2~115\,
	combout => \RGB_Leds|Add2~116_combout\,
	cout => \RGB_Leds|Add2~117\);

-- Location: FF_X42_Y19_N1
\RGB_Leds|sig_cnt[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~116_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(58));

-- Location: LCCOMB_X42_Y19_N2
\RGB_Leds|Add2~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~118_combout\ = (\RGB_Leds|sig_cnt\(59) & (!\RGB_Leds|Add2~117\)) # (!\RGB_Leds|sig_cnt\(59) & ((\RGB_Leds|Add2~117\) # (GND)))
-- \RGB_Leds|Add2~119\ = CARRY((!\RGB_Leds|Add2~117\) # (!\RGB_Leds|sig_cnt\(59)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(59),
	datad => VCC,
	cin => \RGB_Leds|Add2~117\,
	combout => \RGB_Leds|Add2~118_combout\,
	cout => \RGB_Leds|Add2~119\);

-- Location: FF_X42_Y19_N3
\RGB_Leds|sig_cnt[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~118_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(59));

-- Location: LCCOMB_X42_Y19_N4
\RGB_Leds|Add2~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~120_combout\ = (\RGB_Leds|sig_cnt\(60) & (\RGB_Leds|Add2~119\ $ (GND))) # (!\RGB_Leds|sig_cnt\(60) & (!\RGB_Leds|Add2~119\ & VCC))
-- \RGB_Leds|Add2~121\ = CARRY((\RGB_Leds|sig_cnt\(60) & !\RGB_Leds|Add2~119\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(60),
	datad => VCC,
	cin => \RGB_Leds|Add2~119\,
	combout => \RGB_Leds|Add2~120_combout\,
	cout => \RGB_Leds|Add2~121\);

-- Location: FF_X42_Y19_N5
\RGB_Leds|sig_cnt[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~120_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(60));

-- Location: LCCOMB_X42_Y19_N6
\RGB_Leds|Add2~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~122_combout\ = (\RGB_Leds|sig_cnt\(61) & (!\RGB_Leds|Add2~121\)) # (!\RGB_Leds|sig_cnt\(61) & ((\RGB_Leds|Add2~121\) # (GND)))
-- \RGB_Leds|Add2~123\ = CARRY((!\RGB_Leds|Add2~121\) # (!\RGB_Leds|sig_cnt\(61)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(61),
	datad => VCC,
	cin => \RGB_Leds|Add2~121\,
	combout => \RGB_Leds|Add2~122_combout\,
	cout => \RGB_Leds|Add2~123\);

-- Location: FF_X42_Y19_N7
\RGB_Leds|sig_cnt[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~122_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(61));

-- Location: LCCOMB_X42_Y19_N8
\RGB_Leds|Add2~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~124_combout\ = (\RGB_Leds|sig_cnt\(62) & (\RGB_Leds|Add2~123\ $ (GND))) # (!\RGB_Leds|sig_cnt\(62) & (!\RGB_Leds|Add2~123\ & VCC))
-- \RGB_Leds|Add2~125\ = CARRY((\RGB_Leds|sig_cnt\(62) & !\RGB_Leds|Add2~123\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(62),
	datad => VCC,
	cin => \RGB_Leds|Add2~123\,
	combout => \RGB_Leds|Add2~124_combout\,
	cout => \RGB_Leds|Add2~125\);

-- Location: FF_X42_Y19_N9
\RGB_Leds|sig_cnt[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~124_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(62));

-- Location: LCCOMB_X42_Y19_N10
\RGB_Leds|Add2~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~126_combout\ = (\RGB_Leds|sig_cnt\(63) & (!\RGB_Leds|Add2~125\)) # (!\RGB_Leds|sig_cnt\(63) & ((\RGB_Leds|Add2~125\) # (GND)))
-- \RGB_Leds|Add2~127\ = CARRY((!\RGB_Leds|Add2~125\) # (!\RGB_Leds|sig_cnt\(63)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(63),
	datad => VCC,
	cin => \RGB_Leds|Add2~125\,
	combout => \RGB_Leds|Add2~126_combout\,
	cout => \RGB_Leds|Add2~127\);

-- Location: FF_X42_Y19_N11
\RGB_Leds|sig_cnt[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~126_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(63));

-- Location: LCCOMB_X43_Y19_N30
\RGB_Leds|Equal2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal2~12_combout\ = (!\RGB_Leds|sig_cnt\(63) & (!\RGB_Leds|sig_cnt\(61) & (!\RGB_Leds|sig_cnt\(60) & !\RGB_Leds|sig_cnt\(62))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(63),
	datab => \RGB_Leds|sig_cnt\(61),
	datac => \RGB_Leds|sig_cnt\(60),
	datad => \RGB_Leds|sig_cnt\(62),
	combout => \RGB_Leds|Equal2~12_combout\);

-- Location: LCCOMB_X41_Y20_N16
\RGB_Leds|Equal2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal2~13_combout\ = (!\RGB_Leds|sig_cnt\(58) & (!\RGB_Leds|sig_cnt\(59) & (!\RGB_Leds|sig_cnt\(57) & !\RGB_Leds|sig_cnt\(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(58),
	datab => \RGB_Leds|sig_cnt\(59),
	datac => \RGB_Leds|sig_cnt\(57),
	datad => \RGB_Leds|sig_cnt\(56),
	combout => \RGB_Leds|Equal2~13_combout\);

-- Location: LCCOMB_X41_Y20_N26
\RGB_Leds|Equal2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal2~14_combout\ = (!\RGB_Leds|sig_cnt\(53) & (!\RGB_Leds|sig_cnt\(55) & (!\RGB_Leds|sig_cnt\(52) & !\RGB_Leds|sig_cnt\(54))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(53),
	datab => \RGB_Leds|sig_cnt\(55),
	datac => \RGB_Leds|sig_cnt\(52),
	datad => \RGB_Leds|sig_cnt\(54),
	combout => \RGB_Leds|Equal2~14_combout\);

-- Location: LCCOMB_X42_Y19_N12
\RGB_Leds|Add2~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~128_combout\ = (\RGB_Leds|sig_cnt\(64) & (\RGB_Leds|Add2~127\ $ (GND))) # (!\RGB_Leds|sig_cnt\(64) & (!\RGB_Leds|Add2~127\ & VCC))
-- \RGB_Leds|Add2~129\ = CARRY((\RGB_Leds|sig_cnt\(64) & !\RGB_Leds|Add2~127\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(64),
	datad => VCC,
	cin => \RGB_Leds|Add2~127\,
	combout => \RGB_Leds|Add2~128_combout\,
	cout => \RGB_Leds|Add2~129\);

-- Location: FF_X42_Y19_N13
\RGB_Leds|sig_cnt[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~128_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(64));

-- Location: LCCOMB_X42_Y19_N14
\RGB_Leds|Add2~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~130_combout\ = (\RGB_Leds|sig_cnt\(65) & (!\RGB_Leds|Add2~129\)) # (!\RGB_Leds|sig_cnt\(65) & ((\RGB_Leds|Add2~129\) # (GND)))
-- \RGB_Leds|Add2~131\ = CARRY((!\RGB_Leds|Add2~129\) # (!\RGB_Leds|sig_cnt\(65)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(65),
	datad => VCC,
	cin => \RGB_Leds|Add2~129\,
	combout => \RGB_Leds|Add2~130_combout\,
	cout => \RGB_Leds|Add2~131\);

-- Location: FF_X42_Y19_N15
\RGB_Leds|sig_cnt[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~130_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(65));

-- Location: LCCOMB_X42_Y19_N16
\RGB_Leds|Add2~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~132_combout\ = (\RGB_Leds|sig_cnt\(66) & (\RGB_Leds|Add2~131\ $ (GND))) # (!\RGB_Leds|sig_cnt\(66) & (!\RGB_Leds|Add2~131\ & VCC))
-- \RGB_Leds|Add2~133\ = CARRY((\RGB_Leds|sig_cnt\(66) & !\RGB_Leds|Add2~131\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(66),
	datad => VCC,
	cin => \RGB_Leds|Add2~131\,
	combout => \RGB_Leds|Add2~132_combout\,
	cout => \RGB_Leds|Add2~133\);

-- Location: FF_X42_Y19_N17
\RGB_Leds|sig_cnt[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~132_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(66));

-- Location: LCCOMB_X42_Y19_N18
\RGB_Leds|Add2~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~134_combout\ = (\RGB_Leds|sig_cnt\(67) & (!\RGB_Leds|Add2~133\)) # (!\RGB_Leds|sig_cnt\(67) & ((\RGB_Leds|Add2~133\) # (GND)))
-- \RGB_Leds|Add2~135\ = CARRY((!\RGB_Leds|Add2~133\) # (!\RGB_Leds|sig_cnt\(67)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(67),
	datad => VCC,
	cin => \RGB_Leds|Add2~133\,
	combout => \RGB_Leds|Add2~134_combout\,
	cout => \RGB_Leds|Add2~135\);

-- Location: FF_X42_Y19_N19
\RGB_Leds|sig_cnt[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~134_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(67));

-- Location: LCCOMB_X43_Y19_N12
\RGB_Leds|Equal2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal2~11_combout\ = (!\RGB_Leds|sig_cnt\(65) & (!\RGB_Leds|sig_cnt\(67) & (!\RGB_Leds|sig_cnt\(66) & !\RGB_Leds|sig_cnt\(64))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(65),
	datab => \RGB_Leds|sig_cnt\(67),
	datac => \RGB_Leds|sig_cnt\(66),
	datad => \RGB_Leds|sig_cnt\(64),
	combout => \RGB_Leds|Equal2~11_combout\);

-- Location: LCCOMB_X41_Y20_N12
\RGB_Leds|Equal2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal2~15_combout\ = (\RGB_Leds|Equal2~12_combout\ & (\RGB_Leds|Equal2~13_combout\ & (\RGB_Leds|Equal2~14_combout\ & \RGB_Leds|Equal2~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Equal2~12_combout\,
	datab => \RGB_Leds|Equal2~13_combout\,
	datac => \RGB_Leds|Equal2~14_combout\,
	datad => \RGB_Leds|Equal2~11_combout\,
	combout => \RGB_Leds|Equal2~15_combout\);

-- Location: LCCOMB_X41_Y20_N10
\RGB_Leds|Equal2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal2~18_combout\ = (!\RGB_Leds|sig_cnt\(40) & (!\RGB_Leds|sig_cnt\(42) & (!\RGB_Leds|sig_cnt\(41) & !\RGB_Leds|sig_cnt\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(40),
	datab => \RGB_Leds|sig_cnt\(42),
	datac => \RGB_Leds|sig_cnt\(41),
	datad => \RGB_Leds|sig_cnt\(43),
	combout => \RGB_Leds|Equal2~18_combout\);

-- Location: LCCOMB_X41_Y20_N24
\RGB_Leds|Equal2~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal2~17_combout\ = (!\RGB_Leds|sig_cnt\(45) & (!\RGB_Leds|sig_cnt\(47) & (!\RGB_Leds|sig_cnt\(46) & !\RGB_Leds|sig_cnt\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(45),
	datab => \RGB_Leds|sig_cnt\(47),
	datac => \RGB_Leds|sig_cnt\(46),
	datad => \RGB_Leds|sig_cnt\(44),
	combout => \RGB_Leds|Equal2~17_combout\);

-- Location: LCCOMB_X41_Y20_N22
\RGB_Leds|Equal2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal2~16_combout\ = (!\RGB_Leds|sig_cnt\(51) & (!\RGB_Leds|sig_cnt\(49) & (!\RGB_Leds|sig_cnt\(48) & !\RGB_Leds|sig_cnt\(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(51),
	datab => \RGB_Leds|sig_cnt\(49),
	datac => \RGB_Leds|sig_cnt\(48),
	datad => \RGB_Leds|sig_cnt\(50),
	combout => \RGB_Leds|Equal2~16_combout\);

-- Location: LCCOMB_X41_Y21_N16
\RGB_Leds|Equal2~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal2~19_combout\ = (!\RGB_Leds|sig_cnt\(38) & (!\RGB_Leds|sig_cnt\(39) & (!\RGB_Leds|sig_cnt\(36) & !\RGB_Leds|sig_cnt\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(38),
	datab => \RGB_Leds|sig_cnt\(39),
	datac => \RGB_Leds|sig_cnt\(36),
	datad => \RGB_Leds|sig_cnt\(37),
	combout => \RGB_Leds|Equal2~19_combout\);

-- Location: LCCOMB_X41_Y20_N20
\RGB_Leds|Equal2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal2~20_combout\ = (\RGB_Leds|Equal2~18_combout\ & (\RGB_Leds|Equal2~17_combout\ & (\RGB_Leds|Equal2~16_combout\ & \RGB_Leds|Equal2~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Equal2~18_combout\,
	datab => \RGB_Leds|Equal2~17_combout\,
	datac => \RGB_Leds|Equal2~16_combout\,
	datad => \RGB_Leds|Equal2~19_combout\,
	combout => \RGB_Leds|Equal2~20_combout\);

-- Location: LCCOMB_X42_Y19_N20
\RGB_Leds|Add2~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~136_combout\ = (\RGB_Leds|sig_cnt\(68) & (\RGB_Leds|Add2~135\ $ (GND))) # (!\RGB_Leds|sig_cnt\(68) & (!\RGB_Leds|Add2~135\ & VCC))
-- \RGB_Leds|Add2~137\ = CARRY((\RGB_Leds|sig_cnt\(68) & !\RGB_Leds|Add2~135\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(68),
	datad => VCC,
	cin => \RGB_Leds|Add2~135\,
	combout => \RGB_Leds|Add2~136_combout\,
	cout => \RGB_Leds|Add2~137\);

-- Location: FF_X42_Y19_N21
\RGB_Leds|sig_cnt[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~136_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(68));

-- Location: LCCOMB_X42_Y19_N22
\RGB_Leds|Add2~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~138_combout\ = (\RGB_Leds|sig_cnt\(69) & (!\RGB_Leds|Add2~137\)) # (!\RGB_Leds|sig_cnt\(69) & ((\RGB_Leds|Add2~137\) # (GND)))
-- \RGB_Leds|Add2~139\ = CARRY((!\RGB_Leds|Add2~137\) # (!\RGB_Leds|sig_cnt\(69)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(69),
	datad => VCC,
	cin => \RGB_Leds|Add2~137\,
	combout => \RGB_Leds|Add2~138_combout\,
	cout => \RGB_Leds|Add2~139\);

-- Location: FF_X42_Y19_N23
\RGB_Leds|sig_cnt[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~138_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(69));

-- Location: LCCOMB_X42_Y19_N24
\RGB_Leds|Add2~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~140_combout\ = (\RGB_Leds|sig_cnt\(70) & (\RGB_Leds|Add2~139\ $ (GND))) # (!\RGB_Leds|sig_cnt\(70) & (!\RGB_Leds|Add2~139\ & VCC))
-- \RGB_Leds|Add2~141\ = CARRY((\RGB_Leds|sig_cnt\(70) & !\RGB_Leds|Add2~139\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(70),
	datad => VCC,
	cin => \RGB_Leds|Add2~139\,
	combout => \RGB_Leds|Add2~140_combout\,
	cout => \RGB_Leds|Add2~141\);

-- Location: FF_X42_Y19_N25
\RGB_Leds|sig_cnt[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~140_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(70));

-- Location: LCCOMB_X42_Y19_N26
\RGB_Leds|Add2~142\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~142_combout\ = (\RGB_Leds|sig_cnt\(71) & (!\RGB_Leds|Add2~141\)) # (!\RGB_Leds|sig_cnt\(71) & ((\RGB_Leds|Add2~141\) # (GND)))
-- \RGB_Leds|Add2~143\ = CARRY((!\RGB_Leds|Add2~141\) # (!\RGB_Leds|sig_cnt\(71)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(71),
	datad => VCC,
	cin => \RGB_Leds|Add2~141\,
	combout => \RGB_Leds|Add2~142_combout\,
	cout => \RGB_Leds|Add2~143\);

-- Location: FF_X42_Y19_N27
\RGB_Leds|sig_cnt[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~142_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(71));

-- Location: LCCOMB_X42_Y19_N28
\RGB_Leds|Add2~144\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~144_combout\ = (\RGB_Leds|sig_cnt\(72) & (\RGB_Leds|Add2~143\ $ (GND))) # (!\RGB_Leds|sig_cnt\(72) & (!\RGB_Leds|Add2~143\ & VCC))
-- \RGB_Leds|Add2~145\ = CARRY((\RGB_Leds|sig_cnt\(72) & !\RGB_Leds|Add2~143\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(72),
	datad => VCC,
	cin => \RGB_Leds|Add2~143\,
	combout => \RGB_Leds|Add2~144_combout\,
	cout => \RGB_Leds|Add2~145\);

-- Location: FF_X42_Y19_N29
\RGB_Leds|sig_cnt[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~144_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(72));

-- Location: LCCOMB_X42_Y19_N30
\RGB_Leds|Add2~146\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~146_combout\ = (\RGB_Leds|sig_cnt\(73) & (!\RGB_Leds|Add2~145\)) # (!\RGB_Leds|sig_cnt\(73) & ((\RGB_Leds|Add2~145\) # (GND)))
-- \RGB_Leds|Add2~147\ = CARRY((!\RGB_Leds|Add2~145\) # (!\RGB_Leds|sig_cnt\(73)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(73),
	datad => VCC,
	cin => \RGB_Leds|Add2~145\,
	combout => \RGB_Leds|Add2~146_combout\,
	cout => \RGB_Leds|Add2~147\);

-- Location: FF_X42_Y19_N31
\RGB_Leds|sig_cnt[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~146_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(73));

-- Location: LCCOMB_X42_Y18_N0
\RGB_Leds|Add2~148\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~148_combout\ = (\RGB_Leds|sig_cnt\(74) & (\RGB_Leds|Add2~147\ $ (GND))) # (!\RGB_Leds|sig_cnt\(74) & (!\RGB_Leds|Add2~147\ & VCC))
-- \RGB_Leds|Add2~149\ = CARRY((\RGB_Leds|sig_cnt\(74) & !\RGB_Leds|Add2~147\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(74),
	datad => VCC,
	cin => \RGB_Leds|Add2~147\,
	combout => \RGB_Leds|Add2~148_combout\,
	cout => \RGB_Leds|Add2~149\);

-- Location: FF_X42_Y18_N1
\RGB_Leds|sig_cnt[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~148_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(74));

-- Location: LCCOMB_X42_Y18_N2
\RGB_Leds|Add2~150\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~150_combout\ = (\RGB_Leds|sig_cnt\(75) & (!\RGB_Leds|Add2~149\)) # (!\RGB_Leds|sig_cnt\(75) & ((\RGB_Leds|Add2~149\) # (GND)))
-- \RGB_Leds|Add2~151\ = CARRY((!\RGB_Leds|Add2~149\) # (!\RGB_Leds|sig_cnt\(75)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(75),
	datad => VCC,
	cin => \RGB_Leds|Add2~149\,
	combout => \RGB_Leds|Add2~150_combout\,
	cout => \RGB_Leds|Add2~151\);

-- Location: FF_X42_Y18_N3
\RGB_Leds|sig_cnt[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~150_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(75));

-- Location: LCCOMB_X41_Y18_N12
\RGB_Leds|Equal2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal2~8_combout\ = (!\RGB_Leds|sig_cnt\(75) & (!\RGB_Leds|sig_cnt\(73) & (!\RGB_Leds|sig_cnt\(74) & !\RGB_Leds|sig_cnt\(72))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(75),
	datab => \RGB_Leds|sig_cnt\(73),
	datac => \RGB_Leds|sig_cnt\(74),
	datad => \RGB_Leds|sig_cnt\(72),
	combout => \RGB_Leds|Equal2~8_combout\);

-- Location: LCCOMB_X42_Y18_N4
\RGB_Leds|Add2~152\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~152_combout\ = (\RGB_Leds|sig_cnt\(76) & (\RGB_Leds|Add2~151\ $ (GND))) # (!\RGB_Leds|sig_cnt\(76) & (!\RGB_Leds|Add2~151\ & VCC))
-- \RGB_Leds|Add2~153\ = CARRY((\RGB_Leds|sig_cnt\(76) & !\RGB_Leds|Add2~151\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(76),
	datad => VCC,
	cin => \RGB_Leds|Add2~151\,
	combout => \RGB_Leds|Add2~152_combout\,
	cout => \RGB_Leds|Add2~153\);

-- Location: FF_X42_Y18_N5
\RGB_Leds|sig_cnt[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~152_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(76));

-- Location: LCCOMB_X42_Y18_N6
\RGB_Leds|Add2~154\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~154_combout\ = (\RGB_Leds|sig_cnt\(77) & (!\RGB_Leds|Add2~153\)) # (!\RGB_Leds|sig_cnt\(77) & ((\RGB_Leds|Add2~153\) # (GND)))
-- \RGB_Leds|Add2~155\ = CARRY((!\RGB_Leds|Add2~153\) # (!\RGB_Leds|sig_cnt\(77)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(77),
	datad => VCC,
	cin => \RGB_Leds|Add2~153\,
	combout => \RGB_Leds|Add2~154_combout\,
	cout => \RGB_Leds|Add2~155\);

-- Location: FF_X42_Y18_N7
\RGB_Leds|sig_cnt[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~154_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(77));

-- Location: LCCOMB_X42_Y18_N8
\RGB_Leds|Add2~156\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~156_combout\ = (\RGB_Leds|sig_cnt\(78) & (\RGB_Leds|Add2~155\ $ (GND))) # (!\RGB_Leds|sig_cnt\(78) & (!\RGB_Leds|Add2~155\ & VCC))
-- \RGB_Leds|Add2~157\ = CARRY((\RGB_Leds|sig_cnt\(78) & !\RGB_Leds|Add2~155\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(78),
	datad => VCC,
	cin => \RGB_Leds|Add2~155\,
	combout => \RGB_Leds|Add2~156_combout\,
	cout => \RGB_Leds|Add2~157\);

-- Location: FF_X42_Y18_N9
\RGB_Leds|sig_cnt[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~156_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(78));

-- Location: LCCOMB_X42_Y18_N10
\RGB_Leds|Add2~158\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~158_combout\ = (\RGB_Leds|sig_cnt\(79) & (!\RGB_Leds|Add2~157\)) # (!\RGB_Leds|sig_cnt\(79) & ((\RGB_Leds|Add2~157\) # (GND)))
-- \RGB_Leds|Add2~159\ = CARRY((!\RGB_Leds|Add2~157\) # (!\RGB_Leds|sig_cnt\(79)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(79),
	datad => VCC,
	cin => \RGB_Leds|Add2~157\,
	combout => \RGB_Leds|Add2~158_combout\,
	cout => \RGB_Leds|Add2~159\);

-- Location: FF_X42_Y18_N11
\RGB_Leds|sig_cnt[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~158_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(79));

-- Location: LCCOMB_X42_Y18_N12
\RGB_Leds|Add2~160\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~160_combout\ = (\RGB_Leds|sig_cnt\(80) & (\RGB_Leds|Add2~159\ $ (GND))) # (!\RGB_Leds|sig_cnt\(80) & (!\RGB_Leds|Add2~159\ & VCC))
-- \RGB_Leds|Add2~161\ = CARRY((\RGB_Leds|sig_cnt\(80) & !\RGB_Leds|Add2~159\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(80),
	datad => VCC,
	cin => \RGB_Leds|Add2~159\,
	combout => \RGB_Leds|Add2~160_combout\,
	cout => \RGB_Leds|Add2~161\);

-- Location: FF_X42_Y18_N13
\RGB_Leds|sig_cnt[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~160_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(80));

-- Location: LCCOMB_X42_Y18_N14
\RGB_Leds|Add2~162\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~162_combout\ = (\RGB_Leds|sig_cnt\(81) & (!\RGB_Leds|Add2~161\)) # (!\RGB_Leds|sig_cnt\(81) & ((\RGB_Leds|Add2~161\) # (GND)))
-- \RGB_Leds|Add2~163\ = CARRY((!\RGB_Leds|Add2~161\) # (!\RGB_Leds|sig_cnt\(81)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(81),
	datad => VCC,
	cin => \RGB_Leds|Add2~161\,
	combout => \RGB_Leds|Add2~162_combout\,
	cout => \RGB_Leds|Add2~163\);

-- Location: FF_X42_Y18_N15
\RGB_Leds|sig_cnt[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~162_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(81));

-- Location: LCCOMB_X42_Y18_N16
\RGB_Leds|Add2~164\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~164_combout\ = (\RGB_Leds|sig_cnt\(82) & (\RGB_Leds|Add2~163\ $ (GND))) # (!\RGB_Leds|sig_cnt\(82) & (!\RGB_Leds|Add2~163\ & VCC))
-- \RGB_Leds|Add2~165\ = CARRY((\RGB_Leds|sig_cnt\(82) & !\RGB_Leds|Add2~163\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(82),
	datad => VCC,
	cin => \RGB_Leds|Add2~163\,
	combout => \RGB_Leds|Add2~164_combout\,
	cout => \RGB_Leds|Add2~165\);

-- Location: FF_X42_Y18_N17
\RGB_Leds|sig_cnt[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~164_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(82));

-- Location: LCCOMB_X42_Y18_N18
\RGB_Leds|Add2~166\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~166_combout\ = (\RGB_Leds|sig_cnt\(83) & (!\RGB_Leds|Add2~165\)) # (!\RGB_Leds|sig_cnt\(83) & ((\RGB_Leds|Add2~165\) # (GND)))
-- \RGB_Leds|Add2~167\ = CARRY((!\RGB_Leds|Add2~165\) # (!\RGB_Leds|sig_cnt\(83)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(83),
	datad => VCC,
	cin => \RGB_Leds|Add2~165\,
	combout => \RGB_Leds|Add2~166_combout\,
	cout => \RGB_Leds|Add2~167\);

-- Location: FF_X42_Y18_N19
\RGB_Leds|sig_cnt[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~166_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(83));

-- Location: LCCOMB_X41_Y18_N24
\RGB_Leds|Equal2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal2~6_combout\ = (!\RGB_Leds|sig_cnt\(83) & (!\RGB_Leds|sig_cnt\(81) & (!\RGB_Leds|sig_cnt\(80) & !\RGB_Leds|sig_cnt\(82))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(83),
	datab => \RGB_Leds|sig_cnt\(81),
	datac => \RGB_Leds|sig_cnt\(80),
	datad => \RGB_Leds|sig_cnt\(82),
	combout => \RGB_Leds|Equal2~6_combout\);

-- Location: LCCOMB_X41_Y18_N26
\RGB_Leds|Equal2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal2~7_combout\ = (!\RGB_Leds|sig_cnt\(77) & (!\RGB_Leds|sig_cnt\(78) & (!\RGB_Leds|sig_cnt\(79) & !\RGB_Leds|sig_cnt\(76))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(77),
	datab => \RGB_Leds|sig_cnt\(78),
	datac => \RGB_Leds|sig_cnt\(79),
	datad => \RGB_Leds|sig_cnt\(76),
	combout => \RGB_Leds|Equal2~7_combout\);

-- Location: LCCOMB_X43_Y19_N26
\RGB_Leds|Equal2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal2~9_combout\ = (!\RGB_Leds|sig_cnt\(68) & (!\RGB_Leds|sig_cnt\(69) & (!\RGB_Leds|sig_cnt\(71) & !\RGB_Leds|sig_cnt\(70))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(68),
	datab => \RGB_Leds|sig_cnt\(69),
	datac => \RGB_Leds|sig_cnt\(71),
	datad => \RGB_Leds|sig_cnt\(70),
	combout => \RGB_Leds|Equal2~9_combout\);

-- Location: LCCOMB_X41_Y18_N6
\RGB_Leds|Equal2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal2~10_combout\ = (\RGB_Leds|Equal2~8_combout\ & (\RGB_Leds|Equal2~6_combout\ & (\RGB_Leds|Equal2~7_combout\ & \RGB_Leds|Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Equal2~8_combout\,
	datab => \RGB_Leds|Equal2~6_combout\,
	datac => \RGB_Leds|Equal2~7_combout\,
	datad => \RGB_Leds|Equal2~9_combout\,
	combout => \RGB_Leds|Equal2~10_combout\);

-- Location: LCCOMB_X42_Y18_N20
\RGB_Leds|Add2~168\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~168_combout\ = (\RGB_Leds|sig_cnt\(84) & (\RGB_Leds|Add2~167\ $ (GND))) # (!\RGB_Leds|sig_cnt\(84) & (!\RGB_Leds|Add2~167\ & VCC))
-- \RGB_Leds|Add2~169\ = CARRY((\RGB_Leds|sig_cnt\(84) & !\RGB_Leds|Add2~167\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(84),
	datad => VCC,
	cin => \RGB_Leds|Add2~167\,
	combout => \RGB_Leds|Add2~168_combout\,
	cout => \RGB_Leds|Add2~169\);

-- Location: FF_X42_Y18_N21
\RGB_Leds|sig_cnt[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~168_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(84));

-- Location: LCCOMB_X42_Y18_N22
\RGB_Leds|Add2~170\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~170_combout\ = (\RGB_Leds|sig_cnt\(85) & (!\RGB_Leds|Add2~169\)) # (!\RGB_Leds|sig_cnt\(85) & ((\RGB_Leds|Add2~169\) # (GND)))
-- \RGB_Leds|Add2~171\ = CARRY((!\RGB_Leds|Add2~169\) # (!\RGB_Leds|sig_cnt\(85)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(85),
	datad => VCC,
	cin => \RGB_Leds|Add2~169\,
	combout => \RGB_Leds|Add2~170_combout\,
	cout => \RGB_Leds|Add2~171\);

-- Location: FF_X42_Y18_N23
\RGB_Leds|sig_cnt[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~170_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(85));

-- Location: LCCOMB_X42_Y18_N24
\RGB_Leds|Add2~172\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~172_combout\ = (\RGB_Leds|sig_cnt\(86) & (\RGB_Leds|Add2~171\ $ (GND))) # (!\RGB_Leds|sig_cnt\(86) & (!\RGB_Leds|Add2~171\ & VCC))
-- \RGB_Leds|Add2~173\ = CARRY((\RGB_Leds|sig_cnt\(86) & !\RGB_Leds|Add2~171\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(86),
	datad => VCC,
	cin => \RGB_Leds|Add2~171\,
	combout => \RGB_Leds|Add2~172_combout\,
	cout => \RGB_Leds|Add2~173\);

-- Location: FF_X42_Y18_N25
\RGB_Leds|sig_cnt[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~172_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(86));

-- Location: LCCOMB_X42_Y18_N26
\RGB_Leds|Add2~174\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~174_combout\ = (\RGB_Leds|sig_cnt\(87) & (!\RGB_Leds|Add2~173\)) # (!\RGB_Leds|sig_cnt\(87) & ((\RGB_Leds|Add2~173\) # (GND)))
-- \RGB_Leds|Add2~175\ = CARRY((!\RGB_Leds|Add2~173\) # (!\RGB_Leds|sig_cnt\(87)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(87),
	datad => VCC,
	cin => \RGB_Leds|Add2~173\,
	combout => \RGB_Leds|Add2~174_combout\,
	cout => \RGB_Leds|Add2~175\);

-- Location: FF_X42_Y18_N27
\RGB_Leds|sig_cnt[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~174_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(87));

-- Location: LCCOMB_X43_Y18_N24
\RGB_Leds|Equal2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal2~4_combout\ = (!\RGB_Leds|sig_cnt\(86) & (!\RGB_Leds|sig_cnt\(85) & (!\RGB_Leds|sig_cnt\(87) & !\RGB_Leds|sig_cnt\(84))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(86),
	datab => \RGB_Leds|sig_cnt\(85),
	datac => \RGB_Leds|sig_cnt\(87),
	datad => \RGB_Leds|sig_cnt\(84),
	combout => \RGB_Leds|Equal2~4_combout\);

-- Location: LCCOMB_X42_Y18_N28
\RGB_Leds|Add2~176\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~176_combout\ = (\RGB_Leds|sig_cnt\(88) & (\RGB_Leds|Add2~175\ $ (GND))) # (!\RGB_Leds|sig_cnt\(88) & (!\RGB_Leds|Add2~175\ & VCC))
-- \RGB_Leds|Add2~177\ = CARRY((\RGB_Leds|sig_cnt\(88) & !\RGB_Leds|Add2~175\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(88),
	datad => VCC,
	cin => \RGB_Leds|Add2~175\,
	combout => \RGB_Leds|Add2~176_combout\,
	cout => \RGB_Leds|Add2~177\);

-- Location: FF_X42_Y18_N29
\RGB_Leds|sig_cnt[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~176_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(88));

-- Location: LCCOMB_X42_Y18_N30
\RGB_Leds|Add2~178\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~178_combout\ = (\RGB_Leds|sig_cnt\(89) & (!\RGB_Leds|Add2~177\)) # (!\RGB_Leds|sig_cnt\(89) & ((\RGB_Leds|Add2~177\) # (GND)))
-- \RGB_Leds|Add2~179\ = CARRY((!\RGB_Leds|Add2~177\) # (!\RGB_Leds|sig_cnt\(89)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(89),
	datad => VCC,
	cin => \RGB_Leds|Add2~177\,
	combout => \RGB_Leds|Add2~178_combout\,
	cout => \RGB_Leds|Add2~179\);

-- Location: FF_X42_Y18_N31
\RGB_Leds|sig_cnt[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~178_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(89));

-- Location: LCCOMB_X42_Y17_N0
\RGB_Leds|Add2~180\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~180_combout\ = (\RGB_Leds|sig_cnt\(90) & (\RGB_Leds|Add2~179\ $ (GND))) # (!\RGB_Leds|sig_cnt\(90) & (!\RGB_Leds|Add2~179\ & VCC))
-- \RGB_Leds|Add2~181\ = CARRY((\RGB_Leds|sig_cnt\(90) & !\RGB_Leds|Add2~179\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(90),
	datad => VCC,
	cin => \RGB_Leds|Add2~179\,
	combout => \RGB_Leds|Add2~180_combout\,
	cout => \RGB_Leds|Add2~181\);

-- Location: FF_X42_Y17_N1
\RGB_Leds|sig_cnt[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~180_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(90));

-- Location: LCCOMB_X42_Y17_N2
\RGB_Leds|Add2~182\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~182_combout\ = (\RGB_Leds|sig_cnt\(91) & (!\RGB_Leds|Add2~181\)) # (!\RGB_Leds|sig_cnt\(91) & ((\RGB_Leds|Add2~181\) # (GND)))
-- \RGB_Leds|Add2~183\ = CARRY((!\RGB_Leds|Add2~181\) # (!\RGB_Leds|sig_cnt\(91)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(91),
	datad => VCC,
	cin => \RGB_Leds|Add2~181\,
	combout => \RGB_Leds|Add2~182_combout\,
	cout => \RGB_Leds|Add2~183\);

-- Location: FF_X42_Y17_N3
\RGB_Leds|sig_cnt[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~182_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(91));

-- Location: LCCOMB_X42_Y17_N20
\RGB_Leds|Equal2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal2~3_combout\ = (!\RGB_Leds|sig_cnt\(88) & (!\RGB_Leds|sig_cnt\(91) & (!\RGB_Leds|sig_cnt\(89) & !\RGB_Leds|sig_cnt\(90))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(88),
	datab => \RGB_Leds|sig_cnt\(91),
	datac => \RGB_Leds|sig_cnt\(89),
	datad => \RGB_Leds|sig_cnt\(90),
	combout => \RGB_Leds|Equal2~3_combout\);

-- Location: LCCOMB_X42_Y17_N4
\RGB_Leds|Add2~184\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~184_combout\ = (\RGB_Leds|sig_cnt\(92) & (\RGB_Leds|Add2~183\ $ (GND))) # (!\RGB_Leds|sig_cnt\(92) & (!\RGB_Leds|Add2~183\ & VCC))
-- \RGB_Leds|Add2~185\ = CARRY((\RGB_Leds|sig_cnt\(92) & !\RGB_Leds|Add2~183\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(92),
	datad => VCC,
	cin => \RGB_Leds|Add2~183\,
	combout => \RGB_Leds|Add2~184_combout\,
	cout => \RGB_Leds|Add2~185\);

-- Location: FF_X42_Y17_N5
\RGB_Leds|sig_cnt[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~184_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(92));

-- Location: LCCOMB_X42_Y17_N6
\RGB_Leds|Add2~186\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~186_combout\ = (\RGB_Leds|sig_cnt\(93) & (!\RGB_Leds|Add2~185\)) # (!\RGB_Leds|sig_cnt\(93) & ((\RGB_Leds|Add2~185\) # (GND)))
-- \RGB_Leds|Add2~187\ = CARRY((!\RGB_Leds|Add2~185\) # (!\RGB_Leds|sig_cnt\(93)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(93),
	datad => VCC,
	cin => \RGB_Leds|Add2~185\,
	combout => \RGB_Leds|Add2~186_combout\,
	cout => \RGB_Leds|Add2~187\);

-- Location: FF_X42_Y17_N7
\RGB_Leds|sig_cnt[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~186_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(93));

-- Location: LCCOMB_X42_Y17_N8
\RGB_Leds|Add2~188\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~188_combout\ = (\RGB_Leds|sig_cnt\(94) & (\RGB_Leds|Add2~187\ $ (GND))) # (!\RGB_Leds|sig_cnt\(94) & (!\RGB_Leds|Add2~187\ & VCC))
-- \RGB_Leds|Add2~189\ = CARRY((\RGB_Leds|sig_cnt\(94) & !\RGB_Leds|Add2~187\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(94),
	datad => VCC,
	cin => \RGB_Leds|Add2~187\,
	combout => \RGB_Leds|Add2~188_combout\,
	cout => \RGB_Leds|Add2~189\);

-- Location: FF_X42_Y17_N9
\RGB_Leds|sig_cnt[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~188_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(94));

-- Location: LCCOMB_X42_Y17_N10
\RGB_Leds|Add2~190\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~190_combout\ = (\RGB_Leds|sig_cnt\(95) & (!\RGB_Leds|Add2~189\)) # (!\RGB_Leds|sig_cnt\(95) & ((\RGB_Leds|Add2~189\) # (GND)))
-- \RGB_Leds|Add2~191\ = CARRY((!\RGB_Leds|Add2~189\) # (!\RGB_Leds|sig_cnt\(95)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(95),
	datad => VCC,
	cin => \RGB_Leds|Add2~189\,
	combout => \RGB_Leds|Add2~190_combout\,
	cout => \RGB_Leds|Add2~191\);

-- Location: FF_X42_Y17_N11
\RGB_Leds|sig_cnt[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~190_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(95));

-- Location: LCCOMB_X42_Y17_N26
\RGB_Leds|Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal2~2_combout\ = (!\RGB_Leds|sig_cnt\(95) & (!\RGB_Leds|sig_cnt\(94) & (!\RGB_Leds|sig_cnt\(92) & !\RGB_Leds|sig_cnt\(93))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(95),
	datab => \RGB_Leds|sig_cnt\(94),
	datac => \RGB_Leds|sig_cnt\(92),
	datad => \RGB_Leds|sig_cnt\(93),
	combout => \RGB_Leds|Equal2~2_combout\);

-- Location: LCCOMB_X42_Y17_N12
\RGB_Leds|Add2~192\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~192_combout\ = (\RGB_Leds|sig_cnt\(96) & (\RGB_Leds|Add2~191\ $ (GND))) # (!\RGB_Leds|sig_cnt\(96) & (!\RGB_Leds|Add2~191\ & VCC))
-- \RGB_Leds|Add2~193\ = CARRY((\RGB_Leds|sig_cnt\(96) & !\RGB_Leds|Add2~191\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(96),
	datad => VCC,
	cin => \RGB_Leds|Add2~191\,
	combout => \RGB_Leds|Add2~192_combout\,
	cout => \RGB_Leds|Add2~193\);

-- Location: FF_X42_Y17_N13
\RGB_Leds|sig_cnt[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~192_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(96));

-- Location: LCCOMB_X42_Y17_N14
\RGB_Leds|Add2~194\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~194_combout\ = (\RGB_Leds|sig_cnt\(97) & (!\RGB_Leds|Add2~193\)) # (!\RGB_Leds|sig_cnt\(97) & ((\RGB_Leds|Add2~193\) # (GND)))
-- \RGB_Leds|Add2~195\ = CARRY((!\RGB_Leds|Add2~193\) # (!\RGB_Leds|sig_cnt\(97)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt\(97),
	datad => VCC,
	cin => \RGB_Leds|Add2~193\,
	combout => \RGB_Leds|Add2~194_combout\,
	cout => \RGB_Leds|Add2~195\);

-- Location: FF_X42_Y17_N15
\RGB_Leds|sig_cnt[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add2~194_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(97));

-- Location: LCCOMB_X42_Y17_N16
\RGB_Leds|Add2~196\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~196_combout\ = (\RGB_Leds|sig_cnt\(98) & (\RGB_Leds|Add2~195\ $ (GND))) # (!\RGB_Leds|sig_cnt\(98) & (!\RGB_Leds|Add2~195\ & VCC))
-- \RGB_Leds|Add2~197\ = CARRY((\RGB_Leds|sig_cnt\(98) & !\RGB_Leds|Add2~195\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(98),
	datad => VCC,
	cin => \RGB_Leds|Add2~195\,
	combout => \RGB_Leds|Add2~196_combout\,
	cout => \RGB_Leds|Add2~197\);

-- Location: LCCOMB_X42_Y17_N30
\RGB_Leds|Selector109~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector109~0_combout\ = (!\RGB_Leds|Equal3~1_combout\ & \RGB_Leds|Add2~196_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|Equal3~1_combout\,
	datad => \RGB_Leds|Add2~196_combout\,
	combout => \RGB_Leds|Selector109~0_combout\);

-- Location: FF_X42_Y17_N31
\RGB_Leds|sig_cnt[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector109~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(98));

-- Location: LCCOMB_X42_Y17_N18
\RGB_Leds|Add2~198\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add2~198_combout\ = \RGB_Leds|Add2~197\ $ (\RGB_Leds|sig_cnt\(99))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \RGB_Leds|sig_cnt\(99),
	cin => \RGB_Leds|Add2~197\,
	combout => \RGB_Leds|Add2~198_combout\);

-- Location: LCCOMB_X42_Y17_N28
\RGB_Leds|Selector108~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector108~0_combout\ = (!\RGB_Leds|Equal3~1_combout\ & \RGB_Leds|Add2~198_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|Equal3~1_combout\,
	datad => \RGB_Leds|Add2~198_combout\,
	combout => \RGB_Leds|Selector108~0_combout\);

-- Location: FF_X42_Y17_N29
\RGB_Leds|sig_cnt[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector108~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt\(99));

-- Location: LCCOMB_X42_Y17_N24
\RGB_Leds|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal2~1_combout\ = (!\RGB_Leds|sig_cnt\(98) & (!\RGB_Leds|sig_cnt\(99) & (!\RGB_Leds|sig_cnt\(97) & !\RGB_Leds|sig_cnt\(96))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(98),
	datab => \RGB_Leds|sig_cnt\(99),
	datac => \RGB_Leds|sig_cnt\(97),
	datad => \RGB_Leds|sig_cnt\(96),
	combout => \RGB_Leds|Equal2~1_combout\);

-- Location: LCCOMB_X42_Y17_N22
\RGB_Leds|Equal2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal2~5_combout\ = (\RGB_Leds|Equal2~4_combout\ & (\RGB_Leds|Equal2~3_combout\ & (\RGB_Leds|Equal2~2_combout\ & \RGB_Leds|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Equal2~4_combout\,
	datab => \RGB_Leds|Equal2~3_combout\,
	datac => \RGB_Leds|Equal2~2_combout\,
	datad => \RGB_Leds|Equal2~1_combout\,
	combout => \RGB_Leds|Equal2~5_combout\);

-- Location: LCCOMB_X41_Y20_N6
\RGB_Leds|Equal2~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal2~21_combout\ = (\RGB_Leds|Equal2~15_combout\ & (\RGB_Leds|Equal2~20_combout\ & (\RGB_Leds|Equal2~10_combout\ & \RGB_Leds|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Equal2~15_combout\,
	datab => \RGB_Leds|Equal2~20_combout\,
	datac => \RGB_Leds|Equal2~10_combout\,
	datad => \RGB_Leds|Equal2~5_combout\,
	combout => \RGB_Leds|Equal2~21_combout\);

-- Location: LCCOMB_X43_Y22_N6
\RGB_Leds|Equal2~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal2~27_combout\ = (!\RGB_Leds|sig_cnt\(16) & (!\RGB_Leds|sig_cnt\(19) & (!\RGB_Leds|sig_cnt\(18) & !\RGB_Leds|sig_cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(16),
	datab => \RGB_Leds|sig_cnt\(19),
	datac => \RGB_Leds|sig_cnt\(18),
	datad => \RGB_Leds|sig_cnt\(17),
	combout => \RGB_Leds|Equal2~27_combout\);

-- Location: LCCOMB_X43_Y22_N16
\RGB_Leds|Equal2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal2~28_combout\ = (!\RGB_Leds|sig_cnt\(14) & (!\RGB_Leds|sig_cnt\(13) & (!\RGB_Leds|sig_cnt\(12) & !\RGB_Leds|sig_cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(14),
	datab => \RGB_Leds|sig_cnt\(13),
	datac => \RGB_Leds|sig_cnt\(12),
	datad => \RGB_Leds|sig_cnt\(15),
	combout => \RGB_Leds|Equal2~28_combout\);

-- Location: LCCOMB_X42_Y23_N6
\RGB_Leds|Equal2~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal2~29_combout\ = (!\RGB_Leds|sig_cnt\(11) & (!\RGB_Leds|sig_cnt\(10) & (!\RGB_Leds|sig_cnt\(9) & !\RGB_Leds|sig_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(11),
	datab => \RGB_Leds|sig_cnt\(10),
	datac => \RGB_Leds|sig_cnt\(9),
	datad => \RGB_Leds|sig_cnt\(8),
	combout => \RGB_Leds|Equal2~29_combout\);

-- Location: LCCOMB_X42_Y23_N2
\RGB_Leds|Equal2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal2~30_combout\ = (!\RGB_Leds|sig_cnt\(7) & (!\RGB_Leds|sig_cnt\(6) & (!\RGB_Leds|sig_cnt\(0) & \RGB_Leds|Equal2~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(7),
	datab => \RGB_Leds|sig_cnt\(6),
	datac => \RGB_Leds|sig_cnt\(0),
	datad => \RGB_Leds|Equal2~29_combout\,
	combout => \RGB_Leds|Equal2~30_combout\);

-- Location: LCCOMB_X43_Y21_N10
\RGB_Leds|Equal2~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal2~23_combout\ = (!\RGB_Leds|sig_cnt\(31) & (!\RGB_Leds|sig_cnt\(29) & (!\RGB_Leds|sig_cnt\(28) & !\RGB_Leds|sig_cnt\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(31),
	datab => \RGB_Leds|sig_cnt\(29),
	datac => \RGB_Leds|sig_cnt\(28),
	datad => \RGB_Leds|sig_cnt\(30),
	combout => \RGB_Leds|Equal2~23_combout\);

-- Location: LCCOMB_X43_Y21_N0
\RGB_Leds|Equal2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal2~22_combout\ = (!\RGB_Leds|sig_cnt\(33) & (!\RGB_Leds|sig_cnt\(35) & (!\RGB_Leds|sig_cnt\(34) & !\RGB_Leds|sig_cnt\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(33),
	datab => \RGB_Leds|sig_cnt\(35),
	datac => \RGB_Leds|sig_cnt\(34),
	datad => \RGB_Leds|sig_cnt\(32),
	combout => \RGB_Leds|Equal2~22_combout\);

-- Location: LCCOMB_X43_Y22_N26
\RGB_Leds|Equal2~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal2~25_combout\ = (!\RGB_Leds|sig_cnt\(20) & (!\RGB_Leds|sig_cnt\(21) & (!\RGB_Leds|sig_cnt\(23) & !\RGB_Leds|sig_cnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(20),
	datab => \RGB_Leds|sig_cnt\(21),
	datac => \RGB_Leds|sig_cnt\(23),
	datad => \RGB_Leds|sig_cnt\(22),
	combout => \RGB_Leds|Equal2~25_combout\);

-- Location: LCCOMB_X43_Y22_N24
\RGB_Leds|Equal2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal2~24_combout\ = (!\RGB_Leds|sig_cnt\(26) & (!\RGB_Leds|sig_cnt\(25) & (!\RGB_Leds|sig_cnt\(27) & !\RGB_Leds|sig_cnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(26),
	datab => \RGB_Leds|sig_cnt\(25),
	datac => \RGB_Leds|sig_cnt\(27),
	datad => \RGB_Leds|sig_cnt\(24),
	combout => \RGB_Leds|Equal2~24_combout\);

-- Location: LCCOMB_X43_Y22_N12
\RGB_Leds|Equal2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal2~26_combout\ = (\RGB_Leds|Equal2~23_combout\ & (\RGB_Leds|Equal2~22_combout\ & (\RGB_Leds|Equal2~25_combout\ & \RGB_Leds|Equal2~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Equal2~23_combout\,
	datab => \RGB_Leds|Equal2~22_combout\,
	datac => \RGB_Leds|Equal2~25_combout\,
	datad => \RGB_Leds|Equal2~24_combout\,
	combout => \RGB_Leds|Equal2~26_combout\);

-- Location: LCCOMB_X43_Y22_N18
\RGB_Leds|Equal2~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal2~31_combout\ = (\RGB_Leds|Equal2~27_combout\ & (\RGB_Leds|Equal2~28_combout\ & (\RGB_Leds|Equal2~30_combout\ & \RGB_Leds|Equal2~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Equal2~27_combout\,
	datab => \RGB_Leds|Equal2~28_combout\,
	datac => \RGB_Leds|Equal2~30_combout\,
	datad => \RGB_Leds|Equal2~26_combout\,
	combout => \RGB_Leds|Equal2~31_combout\);

-- Location: LCCOMB_X43_Y19_N10
\RGB_Leds|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal3~0_combout\ = (\RGB_Leds|sig_cnt\(5) & (\RGB_Leds|Equal2~21_combout\ & (!\RGB_Leds|sig_cnt\(3) & \RGB_Leds|Equal2~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(5),
	datab => \RGB_Leds|Equal2~21_combout\,
	datac => \RGB_Leds|sig_cnt\(3),
	datad => \RGB_Leds|Equal2~31_combout\,
	combout => \RGB_Leds|Equal3~0_combout\);

-- Location: LCCOMB_X43_Y19_N18
\RGB_Leds|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal3~1_combout\ = (!\RGB_Leds|sig_cnt\(2) & (\RGB_Leds|sig_cnt\(1) & (\RGB_Leds|sig_cnt\(4) & \RGB_Leds|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(2),
	datab => \RGB_Leds|sig_cnt\(1),
	datac => \RGB_Leds|sig_cnt\(4),
	datad => \RGB_Leds|Equal3~0_combout\,
	combout => \RGB_Leds|Equal3~1_combout\);

-- Location: LCCOMB_X41_Y17_N0
\RGB_Leds|Selector11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector11~3_combout\ = (\RGB_Leds|state_leds.s1~q\ & (\DO|load_leds~q\)) # (!\RGB_Leds|state_leds.s1~q\ & ((\RGB_Leds|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|state_leds.s1~q\,
	datac => \DO|load_leds~q\,
	datad => \RGB_Leds|Equal3~1_combout\,
	combout => \RGB_Leds|Selector11~3_combout\);

-- Location: LCCOMB_X43_Y19_N22
\RGB_Leds|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector11~0_combout\ = (\RGB_Leds|state_leds.s0~q\) # ((!\RGB_Leds|Equal0~3_combout\) # (!\RGB_Leds|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|state_leds.s0~q\,
	datac => \RGB_Leds|Equal0~0_combout\,
	datad => \RGB_Leds|Equal0~3_combout\,
	combout => \RGB_Leds|Selector11~0_combout\);

-- Location: LCCOMB_X43_Y19_N24
\RGB_Leds|Selector11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector11~1_combout\ = (\RGB_Leds|Selector3~0_combout\ & (((\RGB_Leds|Selector11~0_combout\) # (!\RGB_Leds|Equal0~1_combout\)) # (!\RGB_Leds|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Selector3~0_combout\,
	datab => \RGB_Leds|Equal0~2_combout\,
	datac => \RGB_Leds|Selector11~0_combout\,
	datad => \RGB_Leds|Equal0~1_combout\,
	combout => \RGB_Leds|Selector11~1_combout\);

-- Location: LCCOMB_X41_Y17_N14
\RGB_Leds|Selector8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector8~1_combout\ = (\RGB_Leds|state_leds.s5~q\) # (((\RGB_Leds|Selector11~3_combout\ & \RGB_Leds|state_leds.s0~q\)) # (!\RGB_Leds|Selector11~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|state_leds.s5~q\,
	datab => \RGB_Leds|Selector11~3_combout\,
	datac => \RGB_Leds|Selector11~1_combout\,
	datad => \RGB_Leds|state_leds.s0~q\,
	combout => \RGB_Leds|Selector8~1_combout\);

-- Location: FF_X41_Y17_N5
\RGB_Leds|state_leds.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector9~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|state_leds.s7~q\);

-- Location: LCCOMB_X41_Y17_N12
\RGB_Leds|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector8~0_combout\ = (\RGB_Leds|state_leds.s5~q\ & !\RGB_Leds|sig_bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|state_leds.s5~q\,
	datad => \RGB_Leds|sig_bit~q\,
	combout => \RGB_Leds|Selector8~0_combout\);

-- Location: FF_X41_Y17_N13
\RGB_Leds|state_leds.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector8~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|state_leds.s6~q\);

-- Location: LCCOMB_X41_Y17_N16
\RGB_Leds|Selector11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector11~2_combout\ = (\RGB_Leds|state_leds.s7~q\) # (\RGB_Leds|state_leds.s6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|state_leds.s7~q\,
	datad => \RGB_Leds|state_leds.s6~q\,
	combout => \RGB_Leds|Selector11~2_combout\);

-- Location: LCCOMB_X41_Y17_N10
\RGB_Leds|Selector11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector11~4_combout\ = (\RGB_Leds|Selector11~1_combout\ & (((!\RGB_Leds|Selector11~2_combout\ & !\RGB_Leds|state_leds.s1~q\)) # (!\RGB_Leds|Selector11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Selector11~2_combout\,
	datab => \RGB_Leds|state_leds.s1~q\,
	datac => \RGB_Leds|Selector11~1_combout\,
	datad => \RGB_Leds|Selector11~3_combout\,
	combout => \RGB_Leds|Selector11~4_combout\);

-- Location: LCCOMB_X41_Y17_N30
\RGB_Leds|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector3~1_combout\ = (!\RGB_Leds|Selector11~4_combout\ & (\RGB_Leds|Selector11~1_combout\ & !\RGB_Leds|state_leds.s5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Selector11~4_combout\,
	datac => \RGB_Leds|Selector11~1_combout\,
	datad => \RGB_Leds|state_leds.s5~q\,
	combout => \RGB_Leds|Selector3~1_combout\);

-- Location: FF_X41_Y17_N31
\RGB_Leds|state_leds.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector3~1_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|state_leds.s2~q\);

-- Location: FF_X41_Y17_N17
\RGB_Leds|state_leds.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \RGB_Leds|state_leds.s2~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|state_leds.s3~q\);

-- Location: FF_X41_Y17_N19
\RGB_Leds|state_leds.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \RGB_Leds|state_leds.s3~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|state_leds.s4~q\);

-- Location: FF_X38_Y8_N1
\RGB_Leds|sig_cnt_loop[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|sig_cnt_loop~2_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(0));

-- Location: LCCOMB_X38_Y8_N14
\RGB_Leds|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~2_combout\ = (\RGB_Leds|sig_cnt_loop\(1) & (!\RGB_Leds|Add1~1\)) # (!\RGB_Leds|sig_cnt_loop\(1) & ((\RGB_Leds|Add1~1\) # (GND)))
-- \RGB_Leds|Add1~3\ = CARRY((!\RGB_Leds|Add1~1\) # (!\RGB_Leds|sig_cnt_loop\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(1),
	datad => VCC,
	cin => \RGB_Leds|Add1~1\,
	combout => \RGB_Leds|Add1~2_combout\,
	cout => \RGB_Leds|Add1~3\);

-- Location: FF_X38_Y8_N15
\RGB_Leds|sig_cnt_loop[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~2_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(1));

-- Location: LCCOMB_X38_Y8_N16
\RGB_Leds|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~4_combout\ = (\RGB_Leds|sig_cnt_loop\(2) & (\RGB_Leds|Add1~3\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(2) & (!\RGB_Leds|Add1~3\ & VCC))
-- \RGB_Leds|Add1~5\ = CARRY((\RGB_Leds|sig_cnt_loop\(2) & !\RGB_Leds|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(2),
	datad => VCC,
	cin => \RGB_Leds|Add1~3\,
	combout => \RGB_Leds|Add1~4_combout\,
	cout => \RGB_Leds|Add1~5\);

-- Location: FF_X38_Y8_N17
\RGB_Leds|sig_cnt_loop[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~4_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(2));

-- Location: LCCOMB_X38_Y8_N18
\RGB_Leds|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~6_combout\ = (\RGB_Leds|sig_cnt_loop\(3) & (!\RGB_Leds|Add1~5\)) # (!\RGB_Leds|sig_cnt_loop\(3) & ((\RGB_Leds|Add1~5\) # (GND)))
-- \RGB_Leds|Add1~7\ = CARRY((!\RGB_Leds|Add1~5\) # (!\RGB_Leds|sig_cnt_loop\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(3),
	datad => VCC,
	cin => \RGB_Leds|Add1~5\,
	combout => \RGB_Leds|Add1~6_combout\,
	cout => \RGB_Leds|Add1~7\);

-- Location: FF_X38_Y8_N19
\RGB_Leds|sig_cnt_loop[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~6_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(3));

-- Location: LCCOMB_X38_Y8_N20
\RGB_Leds|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~8_combout\ = (\RGB_Leds|sig_cnt_loop\(4) & (\RGB_Leds|Add1~7\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(4) & (!\RGB_Leds|Add1~7\ & VCC))
-- \RGB_Leds|Add1~9\ = CARRY((\RGB_Leds|sig_cnt_loop\(4) & !\RGB_Leds|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(4),
	datad => VCC,
	cin => \RGB_Leds|Add1~7\,
	combout => \RGB_Leds|Add1~8_combout\,
	cout => \RGB_Leds|Add1~9\);

-- Location: FF_X38_Y8_N21
\RGB_Leds|sig_cnt_loop[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~8_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(4));

-- Location: LCCOMB_X38_Y8_N22
\RGB_Leds|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~10_combout\ = (\RGB_Leds|sig_cnt_loop\(5) & (!\RGB_Leds|Add1~9\)) # (!\RGB_Leds|sig_cnt_loop\(5) & ((\RGB_Leds|Add1~9\) # (GND)))
-- \RGB_Leds|Add1~11\ = CARRY((!\RGB_Leds|Add1~9\) # (!\RGB_Leds|sig_cnt_loop\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(5),
	datad => VCC,
	cin => \RGB_Leds|Add1~9\,
	combout => \RGB_Leds|Add1~10_combout\,
	cout => \RGB_Leds|Add1~11\);

-- Location: LCCOMB_X38_Y8_N8
\RGB_Leds|sig_cnt_loop~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|sig_cnt_loop~4_combout\ = (!\RGB_Leds|Equal1~32_combout\ & \RGB_Leds|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|Equal1~32_combout\,
	datac => \RGB_Leds|Add1~10_combout\,
	combout => \RGB_Leds|sig_cnt_loop~4_combout\);

-- Location: FF_X38_Y8_N9
\RGB_Leds|sig_cnt_loop[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|sig_cnt_loop~4_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(5));

-- Location: LCCOMB_X38_Y8_N24
\RGB_Leds|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~12_combout\ = (\RGB_Leds|sig_cnt_loop\(6) & (\RGB_Leds|Add1~11\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(6) & (!\RGB_Leds|Add1~11\ & VCC))
-- \RGB_Leds|Add1~13\ = CARRY((\RGB_Leds|sig_cnt_loop\(6) & !\RGB_Leds|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(6),
	datad => VCC,
	cin => \RGB_Leds|Add1~11\,
	combout => \RGB_Leds|Add1~12_combout\,
	cout => \RGB_Leds|Add1~13\);

-- Location: LCCOMB_X38_Y8_N6
\RGB_Leds|sig_cnt_loop~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|sig_cnt_loop~3_combout\ = (!\RGB_Leds|Equal1~32_combout\ & \RGB_Leds|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RGB_Leds|Equal1~32_combout\,
	datad => \RGB_Leds|Add1~12_combout\,
	combout => \RGB_Leds|sig_cnt_loop~3_combout\);

-- Location: FF_X38_Y8_N7
\RGB_Leds|sig_cnt_loop[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|sig_cnt_loop~3_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(6));

-- Location: LCCOMB_X38_Y8_N26
\RGB_Leds|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~14_combout\ = (\RGB_Leds|sig_cnt_loop\(7) & (!\RGB_Leds|Add1~13\)) # (!\RGB_Leds|sig_cnt_loop\(7) & ((\RGB_Leds|Add1~13\) # (GND)))
-- \RGB_Leds|Add1~15\ = CARRY((!\RGB_Leds|Add1~13\) # (!\RGB_Leds|sig_cnt_loop\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(7),
	datad => VCC,
	cin => \RGB_Leds|Add1~13\,
	combout => \RGB_Leds|Add1~14_combout\,
	cout => \RGB_Leds|Add1~15\);

-- Location: FF_X38_Y8_N27
\RGB_Leds|sig_cnt_loop[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~14_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(7));

-- Location: LCCOMB_X38_Y8_N28
\RGB_Leds|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~16_combout\ = (\RGB_Leds|sig_cnt_loop\(8) & (\RGB_Leds|Add1~15\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(8) & (!\RGB_Leds|Add1~15\ & VCC))
-- \RGB_Leds|Add1~17\ = CARRY((\RGB_Leds|sig_cnt_loop\(8) & !\RGB_Leds|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(8),
	datad => VCC,
	cin => \RGB_Leds|Add1~15\,
	combout => \RGB_Leds|Add1~16_combout\,
	cout => \RGB_Leds|Add1~17\);

-- Location: FF_X38_Y8_N29
\RGB_Leds|sig_cnt_loop[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~16_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(8));

-- Location: LCCOMB_X38_Y8_N30
\RGB_Leds|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~18_combout\ = (\RGB_Leds|sig_cnt_loop\(9) & (!\RGB_Leds|Add1~17\)) # (!\RGB_Leds|sig_cnt_loop\(9) & ((\RGB_Leds|Add1~17\) # (GND)))
-- \RGB_Leds|Add1~19\ = CARRY((!\RGB_Leds|Add1~17\) # (!\RGB_Leds|sig_cnt_loop\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(9),
	datad => VCC,
	cin => \RGB_Leds|Add1~17\,
	combout => \RGB_Leds|Add1~18_combout\,
	cout => \RGB_Leds|Add1~19\);

-- Location: FF_X38_Y8_N31
\RGB_Leds|sig_cnt_loop[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~18_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(9));

-- Location: LCCOMB_X38_Y7_N0
\RGB_Leds|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~20_combout\ = (\RGB_Leds|sig_cnt_loop\(10) & (\RGB_Leds|Add1~19\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(10) & (!\RGB_Leds|Add1~19\ & VCC))
-- \RGB_Leds|Add1~21\ = CARRY((\RGB_Leds|sig_cnt_loop\(10) & !\RGB_Leds|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(10),
	datad => VCC,
	cin => \RGB_Leds|Add1~19\,
	combout => \RGB_Leds|Add1~20_combout\,
	cout => \RGB_Leds|Add1~21\);

-- Location: FF_X38_Y7_N1
\RGB_Leds|sig_cnt_loop[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~20_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(10));

-- Location: LCCOMB_X38_Y7_N2
\RGB_Leds|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~22_combout\ = (\RGB_Leds|sig_cnt_loop\(11) & (!\RGB_Leds|Add1~21\)) # (!\RGB_Leds|sig_cnt_loop\(11) & ((\RGB_Leds|Add1~21\) # (GND)))
-- \RGB_Leds|Add1~23\ = CARRY((!\RGB_Leds|Add1~21\) # (!\RGB_Leds|sig_cnt_loop\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(11),
	datad => VCC,
	cin => \RGB_Leds|Add1~21\,
	combout => \RGB_Leds|Add1~22_combout\,
	cout => \RGB_Leds|Add1~23\);

-- Location: FF_X38_Y7_N3
\RGB_Leds|sig_cnt_loop[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~22_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(11));

-- Location: LCCOMB_X38_Y8_N4
\RGB_Leds|Equal1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~29_combout\ = (!\RGB_Leds|sig_cnt_loop\(11) & (!\RGB_Leds|sig_cnt_loop\(10) & (!\RGB_Leds|sig_cnt_loop\(9) & !\RGB_Leds|sig_cnt_loop\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(11),
	datab => \RGB_Leds|sig_cnt_loop\(10),
	datac => \RGB_Leds|sig_cnt_loop\(9),
	datad => \RGB_Leds|sig_cnt_loop\(8),
	combout => \RGB_Leds|Equal1~29_combout\);

-- Location: LCCOMB_X38_Y7_N4
\RGB_Leds|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~24_combout\ = (\RGB_Leds|sig_cnt_loop\(12) & (\RGB_Leds|Add1~23\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(12) & (!\RGB_Leds|Add1~23\ & VCC))
-- \RGB_Leds|Add1~25\ = CARRY((\RGB_Leds|sig_cnt_loop\(12) & !\RGB_Leds|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(12),
	datad => VCC,
	cin => \RGB_Leds|Add1~23\,
	combout => \RGB_Leds|Add1~24_combout\,
	cout => \RGB_Leds|Add1~25\);

-- Location: FF_X38_Y7_N5
\RGB_Leds|sig_cnt_loop[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~24_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(12));

-- Location: LCCOMB_X38_Y7_N6
\RGB_Leds|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~26_combout\ = (\RGB_Leds|sig_cnt_loop\(13) & (!\RGB_Leds|Add1~25\)) # (!\RGB_Leds|sig_cnt_loop\(13) & ((\RGB_Leds|Add1~25\) # (GND)))
-- \RGB_Leds|Add1~27\ = CARRY((!\RGB_Leds|Add1~25\) # (!\RGB_Leds|sig_cnt_loop\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(13),
	datad => VCC,
	cin => \RGB_Leds|Add1~25\,
	combout => \RGB_Leds|Add1~26_combout\,
	cout => \RGB_Leds|Add1~27\);

-- Location: FF_X38_Y7_N7
\RGB_Leds|sig_cnt_loop[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~26_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(13));

-- Location: LCCOMB_X38_Y7_N8
\RGB_Leds|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~28_combout\ = (\RGB_Leds|sig_cnt_loop\(14) & (\RGB_Leds|Add1~27\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(14) & (!\RGB_Leds|Add1~27\ & VCC))
-- \RGB_Leds|Add1~29\ = CARRY((\RGB_Leds|sig_cnt_loop\(14) & !\RGB_Leds|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(14),
	datad => VCC,
	cin => \RGB_Leds|Add1~27\,
	combout => \RGB_Leds|Add1~28_combout\,
	cout => \RGB_Leds|Add1~29\);

-- Location: FF_X38_Y7_N9
\RGB_Leds|sig_cnt_loop[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~28_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(14));

-- Location: LCCOMB_X38_Y7_N10
\RGB_Leds|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~30_combout\ = (\RGB_Leds|sig_cnt_loop\(15) & (!\RGB_Leds|Add1~29\)) # (!\RGB_Leds|sig_cnt_loop\(15) & ((\RGB_Leds|Add1~29\) # (GND)))
-- \RGB_Leds|Add1~31\ = CARRY((!\RGB_Leds|Add1~29\) # (!\RGB_Leds|sig_cnt_loop\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(15),
	datad => VCC,
	cin => \RGB_Leds|Add1~29\,
	combout => \RGB_Leds|Add1~30_combout\,
	cout => \RGB_Leds|Add1~31\);

-- Location: FF_X38_Y7_N11
\RGB_Leds|sig_cnt_loop[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~30_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(15));

-- Location: LCCOMB_X39_Y7_N24
\RGB_Leds|Equal1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~28_combout\ = (!\RGB_Leds|sig_cnt_loop\(13) & (!\RGB_Leds|sig_cnt_loop\(15) & (!\RGB_Leds|sig_cnt_loop\(12) & !\RGB_Leds|sig_cnt_loop\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(13),
	datab => \RGB_Leds|sig_cnt_loop\(15),
	datac => \RGB_Leds|sig_cnt_loop\(12),
	datad => \RGB_Leds|sig_cnt_loop\(14),
	combout => \RGB_Leds|Equal1~28_combout\);

-- Location: LCCOMB_X38_Y8_N2
\RGB_Leds|Equal1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~30_combout\ = (\RGB_Leds|sig_cnt_loop\(6) & (\RGB_Leds|sig_cnt_loop\(5) & (!\RGB_Leds|sig_cnt_loop\(7) & !\RGB_Leds|sig_cnt_loop\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(6),
	datab => \RGB_Leds|sig_cnt_loop\(5),
	datac => \RGB_Leds|sig_cnt_loop\(7),
	datad => \RGB_Leds|sig_cnt_loop\(4),
	combout => \RGB_Leds|Equal1~30_combout\);

-- Location: LCCOMB_X38_Y7_N12
\RGB_Leds|Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~32_combout\ = (\RGB_Leds|sig_cnt_loop\(16) & (\RGB_Leds|Add1~31\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(16) & (!\RGB_Leds|Add1~31\ & VCC))
-- \RGB_Leds|Add1~33\ = CARRY((\RGB_Leds|sig_cnt_loop\(16) & !\RGB_Leds|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(16),
	datad => VCC,
	cin => \RGB_Leds|Add1~31\,
	combout => \RGB_Leds|Add1~32_combout\,
	cout => \RGB_Leds|Add1~33\);

-- Location: FF_X38_Y7_N13
\RGB_Leds|sig_cnt_loop[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~32_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(16));

-- Location: LCCOMB_X38_Y7_N14
\RGB_Leds|Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~34_combout\ = (\RGB_Leds|sig_cnt_loop\(17) & (!\RGB_Leds|Add1~33\)) # (!\RGB_Leds|sig_cnt_loop\(17) & ((\RGB_Leds|Add1~33\) # (GND)))
-- \RGB_Leds|Add1~35\ = CARRY((!\RGB_Leds|Add1~33\) # (!\RGB_Leds|sig_cnt_loop\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(17),
	datad => VCC,
	cin => \RGB_Leds|Add1~33\,
	combout => \RGB_Leds|Add1~34_combout\,
	cout => \RGB_Leds|Add1~35\);

-- Location: FF_X38_Y7_N15
\RGB_Leds|sig_cnt_loop[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~34_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(17));

-- Location: LCCOMB_X38_Y7_N16
\RGB_Leds|Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~36_combout\ = (\RGB_Leds|sig_cnt_loop\(18) & (\RGB_Leds|Add1~35\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(18) & (!\RGB_Leds|Add1~35\ & VCC))
-- \RGB_Leds|Add1~37\ = CARRY((\RGB_Leds|sig_cnt_loop\(18) & !\RGB_Leds|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(18),
	datad => VCC,
	cin => \RGB_Leds|Add1~35\,
	combout => \RGB_Leds|Add1~36_combout\,
	cout => \RGB_Leds|Add1~37\);

-- Location: FF_X38_Y7_N17
\RGB_Leds|sig_cnt_loop[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~36_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(18));

-- Location: LCCOMB_X38_Y7_N18
\RGB_Leds|Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~38_combout\ = (\RGB_Leds|sig_cnt_loop\(19) & (!\RGB_Leds|Add1~37\)) # (!\RGB_Leds|sig_cnt_loop\(19) & ((\RGB_Leds|Add1~37\) # (GND)))
-- \RGB_Leds|Add1~39\ = CARRY((!\RGB_Leds|Add1~37\) # (!\RGB_Leds|sig_cnt_loop\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(19),
	datad => VCC,
	cin => \RGB_Leds|Add1~37\,
	combout => \RGB_Leds|Add1~38_combout\,
	cout => \RGB_Leds|Add1~39\);

-- Location: FF_X38_Y7_N19
\RGB_Leds|sig_cnt_loop[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~38_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(19));

-- Location: LCCOMB_X39_Y7_N6
\RGB_Leds|Equal1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~27_combout\ = (!\RGB_Leds|sig_cnt_loop\(17) & (!\RGB_Leds|sig_cnt_loop\(19) & (!\RGB_Leds|sig_cnt_loop\(18) & !\RGB_Leds|sig_cnt_loop\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(17),
	datab => \RGB_Leds|sig_cnt_loop\(19),
	datac => \RGB_Leds|sig_cnt_loop\(18),
	datad => \RGB_Leds|sig_cnt_loop\(16),
	combout => \RGB_Leds|Equal1~27_combout\);

-- Location: LCCOMB_X39_Y7_N10
\RGB_Leds|Equal1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~31_combout\ = (\RGB_Leds|Equal1~29_combout\ & (\RGB_Leds|Equal1~28_combout\ & (\RGB_Leds|Equal1~30_combout\ & \RGB_Leds|Equal1~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Equal1~29_combout\,
	datab => \RGB_Leds|Equal1~28_combout\,
	datac => \RGB_Leds|Equal1~30_combout\,
	datad => \RGB_Leds|Equal1~27_combout\,
	combout => \RGB_Leds|Equal1~31_combout\);

-- Location: LCCOMB_X38_Y8_N10
\RGB_Leds|Equal1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~26_combout\ = (!\RGB_Leds|sig_cnt_loop\(2) & (!\RGB_Leds|sig_cnt_loop\(0) & (!\RGB_Leds|sig_cnt_loop\(1) & !\RGB_Leds|sig_cnt_loop\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(2),
	datab => \RGB_Leds|sig_cnt_loop\(0),
	datac => \RGB_Leds|sig_cnt_loop\(1),
	datad => \RGB_Leds|sig_cnt_loop\(3),
	combout => \RGB_Leds|Equal1~26_combout\);

-- Location: LCCOMB_X38_Y7_N20
\RGB_Leds|Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~40_combout\ = (\RGB_Leds|sig_cnt_loop\(20) & (\RGB_Leds|Add1~39\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(20) & (!\RGB_Leds|Add1~39\ & VCC))
-- \RGB_Leds|Add1~41\ = CARRY((\RGB_Leds|sig_cnt_loop\(20) & !\RGB_Leds|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(20),
	datad => VCC,
	cin => \RGB_Leds|Add1~39\,
	combout => \RGB_Leds|Add1~40_combout\,
	cout => \RGB_Leds|Add1~41\);

-- Location: FF_X38_Y7_N21
\RGB_Leds|sig_cnt_loop[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~40_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(20));

-- Location: LCCOMB_X38_Y7_N22
\RGB_Leds|Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~42_combout\ = (\RGB_Leds|sig_cnt_loop\(21) & (!\RGB_Leds|Add1~41\)) # (!\RGB_Leds|sig_cnt_loop\(21) & ((\RGB_Leds|Add1~41\) # (GND)))
-- \RGB_Leds|Add1~43\ = CARRY((!\RGB_Leds|Add1~41\) # (!\RGB_Leds|sig_cnt_loop\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(21),
	datad => VCC,
	cin => \RGB_Leds|Add1~41\,
	combout => \RGB_Leds|Add1~42_combout\,
	cout => \RGB_Leds|Add1~43\);

-- Location: FF_X38_Y7_N23
\RGB_Leds|sig_cnt_loop[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~42_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(21));

-- Location: LCCOMB_X38_Y7_N24
\RGB_Leds|Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~44_combout\ = (\RGB_Leds|sig_cnt_loop\(22) & (\RGB_Leds|Add1~43\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(22) & (!\RGB_Leds|Add1~43\ & VCC))
-- \RGB_Leds|Add1~45\ = CARRY((\RGB_Leds|sig_cnt_loop\(22) & !\RGB_Leds|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(22),
	datad => VCC,
	cin => \RGB_Leds|Add1~43\,
	combout => \RGB_Leds|Add1~44_combout\,
	cout => \RGB_Leds|Add1~45\);

-- Location: FF_X38_Y7_N25
\RGB_Leds|sig_cnt_loop[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~44_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(22));

-- Location: LCCOMB_X38_Y7_N26
\RGB_Leds|Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~46_combout\ = (\RGB_Leds|sig_cnt_loop\(23) & (!\RGB_Leds|Add1~45\)) # (!\RGB_Leds|sig_cnt_loop\(23) & ((\RGB_Leds|Add1~45\) # (GND)))
-- \RGB_Leds|Add1~47\ = CARRY((!\RGB_Leds|Add1~45\) # (!\RGB_Leds|sig_cnt_loop\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(23),
	datad => VCC,
	cin => \RGB_Leds|Add1~45\,
	combout => \RGB_Leds|Add1~46_combout\,
	cout => \RGB_Leds|Add1~47\);

-- Location: FF_X38_Y7_N27
\RGB_Leds|sig_cnt_loop[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~46_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(23));

-- Location: LCCOMB_X38_Y7_N28
\RGB_Leds|Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~48_combout\ = (\RGB_Leds|sig_cnt_loop\(24) & (\RGB_Leds|Add1~47\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(24) & (!\RGB_Leds|Add1~47\ & VCC))
-- \RGB_Leds|Add1~49\ = CARRY((\RGB_Leds|sig_cnt_loop\(24) & !\RGB_Leds|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(24),
	datad => VCC,
	cin => \RGB_Leds|Add1~47\,
	combout => \RGB_Leds|Add1~48_combout\,
	cout => \RGB_Leds|Add1~49\);

-- Location: FF_X38_Y7_N29
\RGB_Leds|sig_cnt_loop[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~48_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(24));

-- Location: LCCOMB_X38_Y7_N30
\RGB_Leds|Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~50_combout\ = (\RGB_Leds|sig_cnt_loop\(25) & (!\RGB_Leds|Add1~49\)) # (!\RGB_Leds|sig_cnt_loop\(25) & ((\RGB_Leds|Add1~49\) # (GND)))
-- \RGB_Leds|Add1~51\ = CARRY((!\RGB_Leds|Add1~49\) # (!\RGB_Leds|sig_cnt_loop\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(25),
	datad => VCC,
	cin => \RGB_Leds|Add1~49\,
	combout => \RGB_Leds|Add1~50_combout\,
	cout => \RGB_Leds|Add1~51\);

-- Location: FF_X38_Y7_N31
\RGB_Leds|sig_cnt_loop[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~50_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(25));

-- Location: LCCOMB_X38_Y6_N0
\RGB_Leds|Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~52_combout\ = (\RGB_Leds|sig_cnt_loop\(26) & (\RGB_Leds|Add1~51\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(26) & (!\RGB_Leds|Add1~51\ & VCC))
-- \RGB_Leds|Add1~53\ = CARRY((\RGB_Leds|sig_cnt_loop\(26) & !\RGB_Leds|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(26),
	datad => VCC,
	cin => \RGB_Leds|Add1~51\,
	combout => \RGB_Leds|Add1~52_combout\,
	cout => \RGB_Leds|Add1~53\);

-- Location: FF_X38_Y6_N1
\RGB_Leds|sig_cnt_loop[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~52_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(26));

-- Location: LCCOMB_X38_Y6_N2
\RGB_Leds|Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~54_combout\ = (\RGB_Leds|sig_cnt_loop\(27) & (!\RGB_Leds|Add1~53\)) # (!\RGB_Leds|sig_cnt_loop\(27) & ((\RGB_Leds|Add1~53\) # (GND)))
-- \RGB_Leds|Add1~55\ = CARRY((!\RGB_Leds|Add1~53\) # (!\RGB_Leds|sig_cnt_loop\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(27),
	datad => VCC,
	cin => \RGB_Leds|Add1~53\,
	combout => \RGB_Leds|Add1~54_combout\,
	cout => \RGB_Leds|Add1~55\);

-- Location: FF_X38_Y6_N3
\RGB_Leds|sig_cnt_loop[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~54_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(27));

-- Location: LCCOMB_X38_Y6_N4
\RGB_Leds|Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~56_combout\ = (\RGB_Leds|sig_cnt_loop\(28) & (\RGB_Leds|Add1~55\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(28) & (!\RGB_Leds|Add1~55\ & VCC))
-- \RGB_Leds|Add1~57\ = CARRY((\RGB_Leds|sig_cnt_loop\(28) & !\RGB_Leds|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(28),
	datad => VCC,
	cin => \RGB_Leds|Add1~55\,
	combout => \RGB_Leds|Add1~56_combout\,
	cout => \RGB_Leds|Add1~57\);

-- Location: FF_X38_Y6_N5
\RGB_Leds|sig_cnt_loop[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~56_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(28));

-- Location: LCCOMB_X38_Y6_N6
\RGB_Leds|Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~58_combout\ = (\RGB_Leds|sig_cnt_loop\(29) & (!\RGB_Leds|Add1~57\)) # (!\RGB_Leds|sig_cnt_loop\(29) & ((\RGB_Leds|Add1~57\) # (GND)))
-- \RGB_Leds|Add1~59\ = CARRY((!\RGB_Leds|Add1~57\) # (!\RGB_Leds|sig_cnt_loop\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(29),
	datad => VCC,
	cin => \RGB_Leds|Add1~57\,
	combout => \RGB_Leds|Add1~58_combout\,
	cout => \RGB_Leds|Add1~59\);

-- Location: FF_X38_Y6_N7
\RGB_Leds|sig_cnt_loop[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~58_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(29));

-- Location: LCCOMB_X38_Y6_N8
\RGB_Leds|Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~60_combout\ = (\RGB_Leds|sig_cnt_loop\(30) & (\RGB_Leds|Add1~59\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(30) & (!\RGB_Leds|Add1~59\ & VCC))
-- \RGB_Leds|Add1~61\ = CARRY((\RGB_Leds|sig_cnt_loop\(30) & !\RGB_Leds|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(30),
	datad => VCC,
	cin => \RGB_Leds|Add1~59\,
	combout => \RGB_Leds|Add1~60_combout\,
	cout => \RGB_Leds|Add1~61\);

-- Location: FF_X38_Y6_N9
\RGB_Leds|sig_cnt_loop[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~60_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(30));

-- Location: LCCOMB_X38_Y6_N10
\RGB_Leds|Add1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~62_combout\ = (\RGB_Leds|sig_cnt_loop\(31) & (!\RGB_Leds|Add1~61\)) # (!\RGB_Leds|sig_cnt_loop\(31) & ((\RGB_Leds|Add1~61\) # (GND)))
-- \RGB_Leds|Add1~63\ = CARRY((!\RGB_Leds|Add1~61\) # (!\RGB_Leds|sig_cnt_loop\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(31),
	datad => VCC,
	cin => \RGB_Leds|Add1~61\,
	combout => \RGB_Leds|Add1~62_combout\,
	cout => \RGB_Leds|Add1~63\);

-- Location: FF_X38_Y6_N11
\RGB_Leds|sig_cnt_loop[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~62_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(31));

-- Location: LCCOMB_X38_Y6_N12
\RGB_Leds|Add1~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~64_combout\ = (\RGB_Leds|sig_cnt_loop\(32) & (\RGB_Leds|Add1~63\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(32) & (!\RGB_Leds|Add1~63\ & VCC))
-- \RGB_Leds|Add1~65\ = CARRY((\RGB_Leds|sig_cnt_loop\(32) & !\RGB_Leds|Add1~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(32),
	datad => VCC,
	cin => \RGB_Leds|Add1~63\,
	combout => \RGB_Leds|Add1~64_combout\,
	cout => \RGB_Leds|Add1~65\);

-- Location: FF_X38_Y6_N13
\RGB_Leds|sig_cnt_loop[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~64_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(32));

-- Location: LCCOMB_X38_Y6_N14
\RGB_Leds|Add1~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~66_combout\ = (\RGB_Leds|sig_cnt_loop\(33) & (!\RGB_Leds|Add1~65\)) # (!\RGB_Leds|sig_cnt_loop\(33) & ((\RGB_Leds|Add1~65\) # (GND)))
-- \RGB_Leds|Add1~67\ = CARRY((!\RGB_Leds|Add1~65\) # (!\RGB_Leds|sig_cnt_loop\(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(33),
	datad => VCC,
	cin => \RGB_Leds|Add1~65\,
	combout => \RGB_Leds|Add1~66_combout\,
	cout => \RGB_Leds|Add1~67\);

-- Location: FF_X38_Y6_N15
\RGB_Leds|sig_cnt_loop[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~66_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(33));

-- Location: LCCOMB_X38_Y6_N16
\RGB_Leds|Add1~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~68_combout\ = (\RGB_Leds|sig_cnt_loop\(34) & (\RGB_Leds|Add1~67\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(34) & (!\RGB_Leds|Add1~67\ & VCC))
-- \RGB_Leds|Add1~69\ = CARRY((\RGB_Leds|sig_cnt_loop\(34) & !\RGB_Leds|Add1~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(34),
	datad => VCC,
	cin => \RGB_Leds|Add1~67\,
	combout => \RGB_Leds|Add1~68_combout\,
	cout => \RGB_Leds|Add1~69\);

-- Location: FF_X38_Y6_N17
\RGB_Leds|sig_cnt_loop[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~68_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(34));

-- Location: LCCOMB_X38_Y6_N18
\RGB_Leds|Add1~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~70_combout\ = (\RGB_Leds|sig_cnt_loop\(35) & (!\RGB_Leds|Add1~69\)) # (!\RGB_Leds|sig_cnt_loop\(35) & ((\RGB_Leds|Add1~69\) # (GND)))
-- \RGB_Leds|Add1~71\ = CARRY((!\RGB_Leds|Add1~69\) # (!\RGB_Leds|sig_cnt_loop\(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(35),
	datad => VCC,
	cin => \RGB_Leds|Add1~69\,
	combout => \RGB_Leds|Add1~70_combout\,
	cout => \RGB_Leds|Add1~71\);

-- Location: FF_X38_Y6_N19
\RGB_Leds|sig_cnt_loop[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~70_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(35));

-- Location: LCCOMB_X38_Y6_N20
\RGB_Leds|Add1~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~72_combout\ = (\RGB_Leds|sig_cnt_loop\(36) & (\RGB_Leds|Add1~71\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(36) & (!\RGB_Leds|Add1~71\ & VCC))
-- \RGB_Leds|Add1~73\ = CARRY((\RGB_Leds|sig_cnt_loop\(36) & !\RGB_Leds|Add1~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(36),
	datad => VCC,
	cin => \RGB_Leds|Add1~71\,
	combout => \RGB_Leds|Add1~72_combout\,
	cout => \RGB_Leds|Add1~73\);

-- Location: FF_X38_Y6_N21
\RGB_Leds|sig_cnt_loop[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~72_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(36));

-- Location: LCCOMB_X38_Y6_N22
\RGB_Leds|Add1~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~74_combout\ = (\RGB_Leds|sig_cnt_loop\(37) & (!\RGB_Leds|Add1~73\)) # (!\RGB_Leds|sig_cnt_loop\(37) & ((\RGB_Leds|Add1~73\) # (GND)))
-- \RGB_Leds|Add1~75\ = CARRY((!\RGB_Leds|Add1~73\) # (!\RGB_Leds|sig_cnt_loop\(37)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(37),
	datad => VCC,
	cin => \RGB_Leds|Add1~73\,
	combout => \RGB_Leds|Add1~74_combout\,
	cout => \RGB_Leds|Add1~75\);

-- Location: FF_X38_Y6_N23
\RGB_Leds|sig_cnt_loop[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~74_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(37));

-- Location: LCCOMB_X38_Y6_N24
\RGB_Leds|Add1~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~76_combout\ = (\RGB_Leds|sig_cnt_loop\(38) & (\RGB_Leds|Add1~75\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(38) & (!\RGB_Leds|Add1~75\ & VCC))
-- \RGB_Leds|Add1~77\ = CARRY((\RGB_Leds|sig_cnt_loop\(38) & !\RGB_Leds|Add1~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(38),
	datad => VCC,
	cin => \RGB_Leds|Add1~75\,
	combout => \RGB_Leds|Add1~76_combout\,
	cout => \RGB_Leds|Add1~77\);

-- Location: FF_X38_Y6_N25
\RGB_Leds|sig_cnt_loop[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~76_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(38));

-- Location: LCCOMB_X38_Y6_N26
\RGB_Leds|Add1~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~78_combout\ = (\RGB_Leds|sig_cnt_loop\(39) & (!\RGB_Leds|Add1~77\)) # (!\RGB_Leds|sig_cnt_loop\(39) & ((\RGB_Leds|Add1~77\) # (GND)))
-- \RGB_Leds|Add1~79\ = CARRY((!\RGB_Leds|Add1~77\) # (!\RGB_Leds|sig_cnt_loop\(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(39),
	datad => VCC,
	cin => \RGB_Leds|Add1~77\,
	combout => \RGB_Leds|Add1~78_combout\,
	cout => \RGB_Leds|Add1~79\);

-- Location: FF_X38_Y6_N27
\RGB_Leds|sig_cnt_loop[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~78_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(39));

-- Location: LCCOMB_X38_Y6_N28
\RGB_Leds|Add1~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~80_combout\ = (\RGB_Leds|sig_cnt_loop\(40) & (\RGB_Leds|Add1~79\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(40) & (!\RGB_Leds|Add1~79\ & VCC))
-- \RGB_Leds|Add1~81\ = CARRY((\RGB_Leds|sig_cnt_loop\(40) & !\RGB_Leds|Add1~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(40),
	datad => VCC,
	cin => \RGB_Leds|Add1~79\,
	combout => \RGB_Leds|Add1~80_combout\,
	cout => \RGB_Leds|Add1~81\);

-- Location: FF_X38_Y6_N29
\RGB_Leds|sig_cnt_loop[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~80_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(40));

-- Location: LCCOMB_X38_Y6_N30
\RGB_Leds|Add1~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~82_combout\ = (\RGB_Leds|sig_cnt_loop\(41) & (!\RGB_Leds|Add1~81\)) # (!\RGB_Leds|sig_cnt_loop\(41) & ((\RGB_Leds|Add1~81\) # (GND)))
-- \RGB_Leds|Add1~83\ = CARRY((!\RGB_Leds|Add1~81\) # (!\RGB_Leds|sig_cnt_loop\(41)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(41),
	datad => VCC,
	cin => \RGB_Leds|Add1~81\,
	combout => \RGB_Leds|Add1~82_combout\,
	cout => \RGB_Leds|Add1~83\);

-- Location: FF_X38_Y6_N31
\RGB_Leds|sig_cnt_loop[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~82_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(41));

-- Location: LCCOMB_X38_Y5_N0
\RGB_Leds|Add1~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~84_combout\ = (\RGB_Leds|sig_cnt_loop\(42) & (\RGB_Leds|Add1~83\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(42) & (!\RGB_Leds|Add1~83\ & VCC))
-- \RGB_Leds|Add1~85\ = CARRY((\RGB_Leds|sig_cnt_loop\(42) & !\RGB_Leds|Add1~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(42),
	datad => VCC,
	cin => \RGB_Leds|Add1~83\,
	combout => \RGB_Leds|Add1~84_combout\,
	cout => \RGB_Leds|Add1~85\);

-- Location: FF_X38_Y5_N1
\RGB_Leds|sig_cnt_loop[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~84_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(42));

-- Location: LCCOMB_X38_Y5_N2
\RGB_Leds|Add1~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~86_combout\ = (\RGB_Leds|sig_cnt_loop\(43) & (!\RGB_Leds|Add1~85\)) # (!\RGB_Leds|sig_cnt_loop\(43) & ((\RGB_Leds|Add1~85\) # (GND)))
-- \RGB_Leds|Add1~87\ = CARRY((!\RGB_Leds|Add1~85\) # (!\RGB_Leds|sig_cnt_loop\(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(43),
	datad => VCC,
	cin => \RGB_Leds|Add1~85\,
	combout => \RGB_Leds|Add1~86_combout\,
	cout => \RGB_Leds|Add1~87\);

-- Location: FF_X38_Y5_N3
\RGB_Leds|sig_cnt_loop[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~86_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(43));

-- Location: LCCOMB_X38_Y5_N4
\RGB_Leds|Add1~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~88_combout\ = (\RGB_Leds|sig_cnt_loop\(44) & (\RGB_Leds|Add1~87\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(44) & (!\RGB_Leds|Add1~87\ & VCC))
-- \RGB_Leds|Add1~89\ = CARRY((\RGB_Leds|sig_cnt_loop\(44) & !\RGB_Leds|Add1~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(44),
	datad => VCC,
	cin => \RGB_Leds|Add1~87\,
	combout => \RGB_Leds|Add1~88_combout\,
	cout => \RGB_Leds|Add1~89\);

-- Location: FF_X38_Y5_N5
\RGB_Leds|sig_cnt_loop[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~88_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(44));

-- Location: LCCOMB_X38_Y5_N6
\RGB_Leds|Add1~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~90_combout\ = (\RGB_Leds|sig_cnt_loop\(45) & (!\RGB_Leds|Add1~89\)) # (!\RGB_Leds|sig_cnt_loop\(45) & ((\RGB_Leds|Add1~89\) # (GND)))
-- \RGB_Leds|Add1~91\ = CARRY((!\RGB_Leds|Add1~89\) # (!\RGB_Leds|sig_cnt_loop\(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(45),
	datad => VCC,
	cin => \RGB_Leds|Add1~89\,
	combout => \RGB_Leds|Add1~90_combout\,
	cout => \RGB_Leds|Add1~91\);

-- Location: FF_X38_Y5_N7
\RGB_Leds|sig_cnt_loop[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~90_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(45));

-- Location: LCCOMB_X38_Y5_N8
\RGB_Leds|Add1~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~92_combout\ = (\RGB_Leds|sig_cnt_loop\(46) & (\RGB_Leds|Add1~91\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(46) & (!\RGB_Leds|Add1~91\ & VCC))
-- \RGB_Leds|Add1~93\ = CARRY((\RGB_Leds|sig_cnt_loop\(46) & !\RGB_Leds|Add1~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(46),
	datad => VCC,
	cin => \RGB_Leds|Add1~91\,
	combout => \RGB_Leds|Add1~92_combout\,
	cout => \RGB_Leds|Add1~93\);

-- Location: FF_X38_Y5_N9
\RGB_Leds|sig_cnt_loop[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~92_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(46));

-- Location: LCCOMB_X38_Y5_N10
\RGB_Leds|Add1~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~94_combout\ = (\RGB_Leds|sig_cnt_loop\(47) & (!\RGB_Leds|Add1~93\)) # (!\RGB_Leds|sig_cnt_loop\(47) & ((\RGB_Leds|Add1~93\) # (GND)))
-- \RGB_Leds|Add1~95\ = CARRY((!\RGB_Leds|Add1~93\) # (!\RGB_Leds|sig_cnt_loop\(47)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(47),
	datad => VCC,
	cin => \RGB_Leds|Add1~93\,
	combout => \RGB_Leds|Add1~94_combout\,
	cout => \RGB_Leds|Add1~95\);

-- Location: FF_X38_Y5_N11
\RGB_Leds|sig_cnt_loop[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~94_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(47));

-- Location: LCCOMB_X38_Y5_N12
\RGB_Leds|Add1~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~96_combout\ = (\RGB_Leds|sig_cnt_loop\(48) & (\RGB_Leds|Add1~95\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(48) & (!\RGB_Leds|Add1~95\ & VCC))
-- \RGB_Leds|Add1~97\ = CARRY((\RGB_Leds|sig_cnt_loop\(48) & !\RGB_Leds|Add1~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(48),
	datad => VCC,
	cin => \RGB_Leds|Add1~95\,
	combout => \RGB_Leds|Add1~96_combout\,
	cout => \RGB_Leds|Add1~97\);

-- Location: FF_X38_Y5_N13
\RGB_Leds|sig_cnt_loop[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~96_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(48));

-- Location: LCCOMB_X38_Y5_N14
\RGB_Leds|Add1~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~98_combout\ = (\RGB_Leds|sig_cnt_loop\(49) & (!\RGB_Leds|Add1~97\)) # (!\RGB_Leds|sig_cnt_loop\(49) & ((\RGB_Leds|Add1~97\) # (GND)))
-- \RGB_Leds|Add1~99\ = CARRY((!\RGB_Leds|Add1~97\) # (!\RGB_Leds|sig_cnt_loop\(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(49),
	datad => VCC,
	cin => \RGB_Leds|Add1~97\,
	combout => \RGB_Leds|Add1~98_combout\,
	cout => \RGB_Leds|Add1~99\);

-- Location: FF_X38_Y5_N15
\RGB_Leds|sig_cnt_loop[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~98_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(49));

-- Location: LCCOMB_X38_Y5_N16
\RGB_Leds|Add1~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~100_combout\ = (\RGB_Leds|sig_cnt_loop\(50) & (\RGB_Leds|Add1~99\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(50) & (!\RGB_Leds|Add1~99\ & VCC))
-- \RGB_Leds|Add1~101\ = CARRY((\RGB_Leds|sig_cnt_loop\(50) & !\RGB_Leds|Add1~99\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(50),
	datad => VCC,
	cin => \RGB_Leds|Add1~99\,
	combout => \RGB_Leds|Add1~100_combout\,
	cout => \RGB_Leds|Add1~101\);

-- Location: FF_X38_Y5_N17
\RGB_Leds|sig_cnt_loop[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~100_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(50));

-- Location: LCCOMB_X38_Y5_N18
\RGB_Leds|Add1~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~102_combout\ = (\RGB_Leds|sig_cnt_loop\(51) & (!\RGB_Leds|Add1~101\)) # (!\RGB_Leds|sig_cnt_loop\(51) & ((\RGB_Leds|Add1~101\) # (GND)))
-- \RGB_Leds|Add1~103\ = CARRY((!\RGB_Leds|Add1~101\) # (!\RGB_Leds|sig_cnt_loop\(51)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(51),
	datad => VCC,
	cin => \RGB_Leds|Add1~101\,
	combout => \RGB_Leds|Add1~102_combout\,
	cout => \RGB_Leds|Add1~103\);

-- Location: FF_X38_Y5_N19
\RGB_Leds|sig_cnt_loop[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~102_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(51));

-- Location: LCCOMB_X38_Y5_N20
\RGB_Leds|Add1~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~104_combout\ = (\RGB_Leds|sig_cnt_loop\(52) & (\RGB_Leds|Add1~103\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(52) & (!\RGB_Leds|Add1~103\ & VCC))
-- \RGB_Leds|Add1~105\ = CARRY((\RGB_Leds|sig_cnt_loop\(52) & !\RGB_Leds|Add1~103\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(52),
	datad => VCC,
	cin => \RGB_Leds|Add1~103\,
	combout => \RGB_Leds|Add1~104_combout\,
	cout => \RGB_Leds|Add1~105\);

-- Location: FF_X38_Y5_N21
\RGB_Leds|sig_cnt_loop[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~104_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(52));

-- Location: LCCOMB_X38_Y5_N22
\RGB_Leds|Add1~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~106_combout\ = (\RGB_Leds|sig_cnt_loop\(53) & (!\RGB_Leds|Add1~105\)) # (!\RGB_Leds|sig_cnt_loop\(53) & ((\RGB_Leds|Add1~105\) # (GND)))
-- \RGB_Leds|Add1~107\ = CARRY((!\RGB_Leds|Add1~105\) # (!\RGB_Leds|sig_cnt_loop\(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(53),
	datad => VCC,
	cin => \RGB_Leds|Add1~105\,
	combout => \RGB_Leds|Add1~106_combout\,
	cout => \RGB_Leds|Add1~107\);

-- Location: FF_X38_Y5_N23
\RGB_Leds|sig_cnt_loop[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~106_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(53));

-- Location: LCCOMB_X38_Y5_N24
\RGB_Leds|Add1~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~108_combout\ = (\RGB_Leds|sig_cnt_loop\(54) & (\RGB_Leds|Add1~107\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(54) & (!\RGB_Leds|Add1~107\ & VCC))
-- \RGB_Leds|Add1~109\ = CARRY((\RGB_Leds|sig_cnt_loop\(54) & !\RGB_Leds|Add1~107\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(54),
	datad => VCC,
	cin => \RGB_Leds|Add1~107\,
	combout => \RGB_Leds|Add1~108_combout\,
	cout => \RGB_Leds|Add1~109\);

-- Location: FF_X38_Y5_N25
\RGB_Leds|sig_cnt_loop[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~108_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(54));

-- Location: LCCOMB_X38_Y5_N26
\RGB_Leds|Add1~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~110_combout\ = (\RGB_Leds|sig_cnt_loop\(55) & (!\RGB_Leds|Add1~109\)) # (!\RGB_Leds|sig_cnt_loop\(55) & ((\RGB_Leds|Add1~109\) # (GND)))
-- \RGB_Leds|Add1~111\ = CARRY((!\RGB_Leds|Add1~109\) # (!\RGB_Leds|sig_cnt_loop\(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(55),
	datad => VCC,
	cin => \RGB_Leds|Add1~109\,
	combout => \RGB_Leds|Add1~110_combout\,
	cout => \RGB_Leds|Add1~111\);

-- Location: FF_X38_Y5_N27
\RGB_Leds|sig_cnt_loop[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~110_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(55));

-- Location: LCCOMB_X38_Y5_N28
\RGB_Leds|Add1~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~112_combout\ = (\RGB_Leds|sig_cnt_loop\(56) & (\RGB_Leds|Add1~111\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(56) & (!\RGB_Leds|Add1~111\ & VCC))
-- \RGB_Leds|Add1~113\ = CARRY((\RGB_Leds|sig_cnt_loop\(56) & !\RGB_Leds|Add1~111\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(56),
	datad => VCC,
	cin => \RGB_Leds|Add1~111\,
	combout => \RGB_Leds|Add1~112_combout\,
	cout => \RGB_Leds|Add1~113\);

-- Location: FF_X38_Y5_N29
\RGB_Leds|sig_cnt_loop[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~112_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(56));

-- Location: LCCOMB_X38_Y5_N30
\RGB_Leds|Add1~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~114_combout\ = (\RGB_Leds|sig_cnt_loop\(57) & (!\RGB_Leds|Add1~113\)) # (!\RGB_Leds|sig_cnt_loop\(57) & ((\RGB_Leds|Add1~113\) # (GND)))
-- \RGB_Leds|Add1~115\ = CARRY((!\RGB_Leds|Add1~113\) # (!\RGB_Leds|sig_cnt_loop\(57)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(57),
	datad => VCC,
	cin => \RGB_Leds|Add1~113\,
	combout => \RGB_Leds|Add1~114_combout\,
	cout => \RGB_Leds|Add1~115\);

-- Location: FF_X38_Y5_N31
\RGB_Leds|sig_cnt_loop[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~114_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(57));

-- Location: LCCOMB_X38_Y4_N0
\RGB_Leds|Add1~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~116_combout\ = (\RGB_Leds|sig_cnt_loop\(58) & (\RGB_Leds|Add1~115\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(58) & (!\RGB_Leds|Add1~115\ & VCC))
-- \RGB_Leds|Add1~117\ = CARRY((\RGB_Leds|sig_cnt_loop\(58) & !\RGB_Leds|Add1~115\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(58),
	datad => VCC,
	cin => \RGB_Leds|Add1~115\,
	combout => \RGB_Leds|Add1~116_combout\,
	cout => \RGB_Leds|Add1~117\);

-- Location: FF_X38_Y4_N1
\RGB_Leds|sig_cnt_loop[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~116_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(58));

-- Location: LCCOMB_X38_Y4_N2
\RGB_Leds|Add1~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~118_combout\ = (\RGB_Leds|sig_cnt_loop\(59) & (!\RGB_Leds|Add1~117\)) # (!\RGB_Leds|sig_cnt_loop\(59) & ((\RGB_Leds|Add1~117\) # (GND)))
-- \RGB_Leds|Add1~119\ = CARRY((!\RGB_Leds|Add1~117\) # (!\RGB_Leds|sig_cnt_loop\(59)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(59),
	datad => VCC,
	cin => \RGB_Leds|Add1~117\,
	combout => \RGB_Leds|Add1~118_combout\,
	cout => \RGB_Leds|Add1~119\);

-- Location: FF_X38_Y4_N3
\RGB_Leds|sig_cnt_loop[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~118_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(59));

-- Location: LCCOMB_X38_Y4_N4
\RGB_Leds|Add1~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~120_combout\ = (\RGB_Leds|sig_cnt_loop\(60) & (\RGB_Leds|Add1~119\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(60) & (!\RGB_Leds|Add1~119\ & VCC))
-- \RGB_Leds|Add1~121\ = CARRY((\RGB_Leds|sig_cnt_loop\(60) & !\RGB_Leds|Add1~119\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(60),
	datad => VCC,
	cin => \RGB_Leds|Add1~119\,
	combout => \RGB_Leds|Add1~120_combout\,
	cout => \RGB_Leds|Add1~121\);

-- Location: FF_X38_Y4_N5
\RGB_Leds|sig_cnt_loop[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~120_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(60));

-- Location: LCCOMB_X38_Y4_N6
\RGB_Leds|Add1~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~122_combout\ = (\RGB_Leds|sig_cnt_loop\(61) & (!\RGB_Leds|Add1~121\)) # (!\RGB_Leds|sig_cnt_loop\(61) & ((\RGB_Leds|Add1~121\) # (GND)))
-- \RGB_Leds|Add1~123\ = CARRY((!\RGB_Leds|Add1~121\) # (!\RGB_Leds|sig_cnt_loop\(61)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(61),
	datad => VCC,
	cin => \RGB_Leds|Add1~121\,
	combout => \RGB_Leds|Add1~122_combout\,
	cout => \RGB_Leds|Add1~123\);

-- Location: FF_X38_Y4_N7
\RGB_Leds|sig_cnt_loop[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~122_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(61));

-- Location: LCCOMB_X38_Y4_N8
\RGB_Leds|Add1~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~124_combout\ = (\RGB_Leds|sig_cnt_loop\(62) & (\RGB_Leds|Add1~123\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(62) & (!\RGB_Leds|Add1~123\ & VCC))
-- \RGB_Leds|Add1~125\ = CARRY((\RGB_Leds|sig_cnt_loop\(62) & !\RGB_Leds|Add1~123\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(62),
	datad => VCC,
	cin => \RGB_Leds|Add1~123\,
	combout => \RGB_Leds|Add1~124_combout\,
	cout => \RGB_Leds|Add1~125\);

-- Location: FF_X38_Y4_N9
\RGB_Leds|sig_cnt_loop[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~124_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(62));

-- Location: LCCOMB_X38_Y4_N10
\RGB_Leds|Add1~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~126_combout\ = (\RGB_Leds|sig_cnt_loop\(63) & (!\RGB_Leds|Add1~125\)) # (!\RGB_Leds|sig_cnt_loop\(63) & ((\RGB_Leds|Add1~125\) # (GND)))
-- \RGB_Leds|Add1~127\ = CARRY((!\RGB_Leds|Add1~125\) # (!\RGB_Leds|sig_cnt_loop\(63)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(63),
	datad => VCC,
	cin => \RGB_Leds|Add1~125\,
	combout => \RGB_Leds|Add1~126_combout\,
	cout => \RGB_Leds|Add1~127\);

-- Location: FF_X38_Y4_N11
\RGB_Leds|sig_cnt_loop[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~126_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(63));

-- Location: LCCOMB_X38_Y4_N12
\RGB_Leds|Add1~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~128_combout\ = (\RGB_Leds|sig_cnt_loop\(64) & (\RGB_Leds|Add1~127\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(64) & (!\RGB_Leds|Add1~127\ & VCC))
-- \RGB_Leds|Add1~129\ = CARRY((\RGB_Leds|sig_cnt_loop\(64) & !\RGB_Leds|Add1~127\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(64),
	datad => VCC,
	cin => \RGB_Leds|Add1~127\,
	combout => \RGB_Leds|Add1~128_combout\,
	cout => \RGB_Leds|Add1~129\);

-- Location: FF_X38_Y4_N13
\RGB_Leds|sig_cnt_loop[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~128_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(64));

-- Location: LCCOMB_X38_Y4_N14
\RGB_Leds|Add1~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~130_combout\ = (\RGB_Leds|sig_cnt_loop\(65) & (!\RGB_Leds|Add1~129\)) # (!\RGB_Leds|sig_cnt_loop\(65) & ((\RGB_Leds|Add1~129\) # (GND)))
-- \RGB_Leds|Add1~131\ = CARRY((!\RGB_Leds|Add1~129\) # (!\RGB_Leds|sig_cnt_loop\(65)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(65),
	datad => VCC,
	cin => \RGB_Leds|Add1~129\,
	combout => \RGB_Leds|Add1~130_combout\,
	cout => \RGB_Leds|Add1~131\);

-- Location: FF_X38_Y4_N15
\RGB_Leds|sig_cnt_loop[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~130_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(65));

-- Location: LCCOMB_X38_Y4_N16
\RGB_Leds|Add1~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~132_combout\ = (\RGB_Leds|sig_cnt_loop\(66) & (\RGB_Leds|Add1~131\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(66) & (!\RGB_Leds|Add1~131\ & VCC))
-- \RGB_Leds|Add1~133\ = CARRY((\RGB_Leds|sig_cnt_loop\(66) & !\RGB_Leds|Add1~131\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(66),
	datad => VCC,
	cin => \RGB_Leds|Add1~131\,
	combout => \RGB_Leds|Add1~132_combout\,
	cout => \RGB_Leds|Add1~133\);

-- Location: FF_X38_Y4_N17
\RGB_Leds|sig_cnt_loop[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~132_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(66));

-- Location: LCCOMB_X38_Y4_N18
\RGB_Leds|Add1~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~134_combout\ = (\RGB_Leds|sig_cnt_loop\(67) & (!\RGB_Leds|Add1~133\)) # (!\RGB_Leds|sig_cnt_loop\(67) & ((\RGB_Leds|Add1~133\) # (GND)))
-- \RGB_Leds|Add1~135\ = CARRY((!\RGB_Leds|Add1~133\) # (!\RGB_Leds|sig_cnt_loop\(67)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(67),
	datad => VCC,
	cin => \RGB_Leds|Add1~133\,
	combout => \RGB_Leds|Add1~134_combout\,
	cout => \RGB_Leds|Add1~135\);

-- Location: FF_X38_Y4_N19
\RGB_Leds|sig_cnt_loop[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~134_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(67));

-- Location: LCCOMB_X38_Y4_N20
\RGB_Leds|Add1~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~136_combout\ = (\RGB_Leds|sig_cnt_loop\(68) & (\RGB_Leds|Add1~135\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(68) & (!\RGB_Leds|Add1~135\ & VCC))
-- \RGB_Leds|Add1~137\ = CARRY((\RGB_Leds|sig_cnt_loop\(68) & !\RGB_Leds|Add1~135\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(68),
	datad => VCC,
	cin => \RGB_Leds|Add1~135\,
	combout => \RGB_Leds|Add1~136_combout\,
	cout => \RGB_Leds|Add1~137\);

-- Location: FF_X38_Y4_N21
\RGB_Leds|sig_cnt_loop[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~136_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(68));

-- Location: LCCOMB_X38_Y4_N22
\RGB_Leds|Add1~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~138_combout\ = (\RGB_Leds|sig_cnt_loop\(69) & (!\RGB_Leds|Add1~137\)) # (!\RGB_Leds|sig_cnt_loop\(69) & ((\RGB_Leds|Add1~137\) # (GND)))
-- \RGB_Leds|Add1~139\ = CARRY((!\RGB_Leds|Add1~137\) # (!\RGB_Leds|sig_cnt_loop\(69)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(69),
	datad => VCC,
	cin => \RGB_Leds|Add1~137\,
	combout => \RGB_Leds|Add1~138_combout\,
	cout => \RGB_Leds|Add1~139\);

-- Location: FF_X38_Y4_N23
\RGB_Leds|sig_cnt_loop[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~138_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(69));

-- Location: LCCOMB_X38_Y4_N24
\RGB_Leds|Add1~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~140_combout\ = (\RGB_Leds|sig_cnt_loop\(70) & (\RGB_Leds|Add1~139\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(70) & (!\RGB_Leds|Add1~139\ & VCC))
-- \RGB_Leds|Add1~141\ = CARRY((\RGB_Leds|sig_cnt_loop\(70) & !\RGB_Leds|Add1~139\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(70),
	datad => VCC,
	cin => \RGB_Leds|Add1~139\,
	combout => \RGB_Leds|Add1~140_combout\,
	cout => \RGB_Leds|Add1~141\);

-- Location: FF_X38_Y4_N25
\RGB_Leds|sig_cnt_loop[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~140_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(70));

-- Location: LCCOMB_X38_Y4_N26
\RGB_Leds|Add1~142\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~142_combout\ = (\RGB_Leds|sig_cnt_loop\(71) & (!\RGB_Leds|Add1~141\)) # (!\RGB_Leds|sig_cnt_loop\(71) & ((\RGB_Leds|Add1~141\) # (GND)))
-- \RGB_Leds|Add1~143\ = CARRY((!\RGB_Leds|Add1~141\) # (!\RGB_Leds|sig_cnt_loop\(71)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(71),
	datad => VCC,
	cin => \RGB_Leds|Add1~141\,
	combout => \RGB_Leds|Add1~142_combout\,
	cout => \RGB_Leds|Add1~143\);

-- Location: FF_X38_Y4_N27
\RGB_Leds|sig_cnt_loop[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~142_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(71));

-- Location: LCCOMB_X38_Y4_N28
\RGB_Leds|Add1~144\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~144_combout\ = (\RGB_Leds|sig_cnt_loop\(72) & (\RGB_Leds|Add1~143\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(72) & (!\RGB_Leds|Add1~143\ & VCC))
-- \RGB_Leds|Add1~145\ = CARRY((\RGB_Leds|sig_cnt_loop\(72) & !\RGB_Leds|Add1~143\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(72),
	datad => VCC,
	cin => \RGB_Leds|Add1~143\,
	combout => \RGB_Leds|Add1~144_combout\,
	cout => \RGB_Leds|Add1~145\);

-- Location: FF_X38_Y4_N29
\RGB_Leds|sig_cnt_loop[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~144_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(72));

-- Location: LCCOMB_X38_Y4_N30
\RGB_Leds|Add1~146\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~146_combout\ = (\RGB_Leds|sig_cnt_loop\(73) & (!\RGB_Leds|Add1~145\)) # (!\RGB_Leds|sig_cnt_loop\(73) & ((\RGB_Leds|Add1~145\) # (GND)))
-- \RGB_Leds|Add1~147\ = CARRY((!\RGB_Leds|Add1~145\) # (!\RGB_Leds|sig_cnt_loop\(73)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(73),
	datad => VCC,
	cin => \RGB_Leds|Add1~145\,
	combout => \RGB_Leds|Add1~146_combout\,
	cout => \RGB_Leds|Add1~147\);

-- Location: FF_X38_Y4_N31
\RGB_Leds|sig_cnt_loop[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~146_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(73));

-- Location: LCCOMB_X38_Y3_N0
\RGB_Leds|Add1~148\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~148_combout\ = (\RGB_Leds|sig_cnt_loop\(74) & (\RGB_Leds|Add1~147\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(74) & (!\RGB_Leds|Add1~147\ & VCC))
-- \RGB_Leds|Add1~149\ = CARRY((\RGB_Leds|sig_cnt_loop\(74) & !\RGB_Leds|Add1~147\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(74),
	datad => VCC,
	cin => \RGB_Leds|Add1~147\,
	combout => \RGB_Leds|Add1~148_combout\,
	cout => \RGB_Leds|Add1~149\);

-- Location: FF_X38_Y3_N1
\RGB_Leds|sig_cnt_loop[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~148_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(74));

-- Location: LCCOMB_X38_Y3_N2
\RGB_Leds|Add1~150\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~150_combout\ = (\RGB_Leds|sig_cnt_loop\(75) & (!\RGB_Leds|Add1~149\)) # (!\RGB_Leds|sig_cnt_loop\(75) & ((\RGB_Leds|Add1~149\) # (GND)))
-- \RGB_Leds|Add1~151\ = CARRY((!\RGB_Leds|Add1~149\) # (!\RGB_Leds|sig_cnt_loop\(75)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(75),
	datad => VCC,
	cin => \RGB_Leds|Add1~149\,
	combout => \RGB_Leds|Add1~150_combout\,
	cout => \RGB_Leds|Add1~151\);

-- Location: FF_X38_Y3_N3
\RGB_Leds|sig_cnt_loop[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~150_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(75));

-- Location: LCCOMB_X38_Y3_N4
\RGB_Leds|Add1~152\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~152_combout\ = (\RGB_Leds|sig_cnt_loop\(76) & (\RGB_Leds|Add1~151\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(76) & (!\RGB_Leds|Add1~151\ & VCC))
-- \RGB_Leds|Add1~153\ = CARRY((\RGB_Leds|sig_cnt_loop\(76) & !\RGB_Leds|Add1~151\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(76),
	datad => VCC,
	cin => \RGB_Leds|Add1~151\,
	combout => \RGB_Leds|Add1~152_combout\,
	cout => \RGB_Leds|Add1~153\);

-- Location: FF_X38_Y3_N5
\RGB_Leds|sig_cnt_loop[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~152_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(76));

-- Location: LCCOMB_X38_Y3_N6
\RGB_Leds|Add1~154\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~154_combout\ = (\RGB_Leds|sig_cnt_loop\(77) & (!\RGB_Leds|Add1~153\)) # (!\RGB_Leds|sig_cnt_loop\(77) & ((\RGB_Leds|Add1~153\) # (GND)))
-- \RGB_Leds|Add1~155\ = CARRY((!\RGB_Leds|Add1~153\) # (!\RGB_Leds|sig_cnt_loop\(77)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(77),
	datad => VCC,
	cin => \RGB_Leds|Add1~153\,
	combout => \RGB_Leds|Add1~154_combout\,
	cout => \RGB_Leds|Add1~155\);

-- Location: FF_X38_Y3_N7
\RGB_Leds|sig_cnt_loop[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~154_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(77));

-- Location: LCCOMB_X38_Y3_N8
\RGB_Leds|Add1~156\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~156_combout\ = (\RGB_Leds|sig_cnt_loop\(78) & (\RGB_Leds|Add1~155\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(78) & (!\RGB_Leds|Add1~155\ & VCC))
-- \RGB_Leds|Add1~157\ = CARRY((\RGB_Leds|sig_cnt_loop\(78) & !\RGB_Leds|Add1~155\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(78),
	datad => VCC,
	cin => \RGB_Leds|Add1~155\,
	combout => \RGB_Leds|Add1~156_combout\,
	cout => \RGB_Leds|Add1~157\);

-- Location: FF_X38_Y3_N9
\RGB_Leds|sig_cnt_loop[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~156_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(78));

-- Location: LCCOMB_X38_Y3_N10
\RGB_Leds|Add1~158\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~158_combout\ = (\RGB_Leds|sig_cnt_loop\(79) & (!\RGB_Leds|Add1~157\)) # (!\RGB_Leds|sig_cnt_loop\(79) & ((\RGB_Leds|Add1~157\) # (GND)))
-- \RGB_Leds|Add1~159\ = CARRY((!\RGB_Leds|Add1~157\) # (!\RGB_Leds|sig_cnt_loop\(79)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(79),
	datad => VCC,
	cin => \RGB_Leds|Add1~157\,
	combout => \RGB_Leds|Add1~158_combout\,
	cout => \RGB_Leds|Add1~159\);

-- Location: FF_X38_Y3_N11
\RGB_Leds|sig_cnt_loop[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~158_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(79));

-- Location: LCCOMB_X38_Y3_N12
\RGB_Leds|Add1~160\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~160_combout\ = (\RGB_Leds|sig_cnt_loop\(80) & (\RGB_Leds|Add1~159\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(80) & (!\RGB_Leds|Add1~159\ & VCC))
-- \RGB_Leds|Add1~161\ = CARRY((\RGB_Leds|sig_cnt_loop\(80) & !\RGB_Leds|Add1~159\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(80),
	datad => VCC,
	cin => \RGB_Leds|Add1~159\,
	combout => \RGB_Leds|Add1~160_combout\,
	cout => \RGB_Leds|Add1~161\);

-- Location: FF_X38_Y3_N13
\RGB_Leds|sig_cnt_loop[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~160_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(80));

-- Location: LCCOMB_X38_Y3_N14
\RGB_Leds|Add1~162\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~162_combout\ = (\RGB_Leds|sig_cnt_loop\(81) & (!\RGB_Leds|Add1~161\)) # (!\RGB_Leds|sig_cnt_loop\(81) & ((\RGB_Leds|Add1~161\) # (GND)))
-- \RGB_Leds|Add1~163\ = CARRY((!\RGB_Leds|Add1~161\) # (!\RGB_Leds|sig_cnt_loop\(81)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(81),
	datad => VCC,
	cin => \RGB_Leds|Add1~161\,
	combout => \RGB_Leds|Add1~162_combout\,
	cout => \RGB_Leds|Add1~163\);

-- Location: FF_X38_Y3_N15
\RGB_Leds|sig_cnt_loop[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~162_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(81));

-- Location: LCCOMB_X38_Y3_N16
\RGB_Leds|Add1~164\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~164_combout\ = (\RGB_Leds|sig_cnt_loop\(82) & (\RGB_Leds|Add1~163\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(82) & (!\RGB_Leds|Add1~163\ & VCC))
-- \RGB_Leds|Add1~165\ = CARRY((\RGB_Leds|sig_cnt_loop\(82) & !\RGB_Leds|Add1~163\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(82),
	datad => VCC,
	cin => \RGB_Leds|Add1~163\,
	combout => \RGB_Leds|Add1~164_combout\,
	cout => \RGB_Leds|Add1~165\);

-- Location: FF_X38_Y3_N17
\RGB_Leds|sig_cnt_loop[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~164_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(82));

-- Location: LCCOMB_X38_Y3_N18
\RGB_Leds|Add1~166\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~166_combout\ = (\RGB_Leds|sig_cnt_loop\(83) & (!\RGB_Leds|Add1~165\)) # (!\RGB_Leds|sig_cnt_loop\(83) & ((\RGB_Leds|Add1~165\) # (GND)))
-- \RGB_Leds|Add1~167\ = CARRY((!\RGB_Leds|Add1~165\) # (!\RGB_Leds|sig_cnt_loop\(83)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(83),
	datad => VCC,
	cin => \RGB_Leds|Add1~165\,
	combout => \RGB_Leds|Add1~166_combout\,
	cout => \RGB_Leds|Add1~167\);

-- Location: FF_X38_Y3_N19
\RGB_Leds|sig_cnt_loop[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~166_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(83));

-- Location: LCCOMB_X38_Y3_N20
\RGB_Leds|Add1~168\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~168_combout\ = (\RGB_Leds|sig_cnt_loop\(84) & (\RGB_Leds|Add1~167\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(84) & (!\RGB_Leds|Add1~167\ & VCC))
-- \RGB_Leds|Add1~169\ = CARRY((\RGB_Leds|sig_cnt_loop\(84) & !\RGB_Leds|Add1~167\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(84),
	datad => VCC,
	cin => \RGB_Leds|Add1~167\,
	combout => \RGB_Leds|Add1~168_combout\,
	cout => \RGB_Leds|Add1~169\);

-- Location: FF_X38_Y3_N21
\RGB_Leds|sig_cnt_loop[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~168_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(84));

-- Location: LCCOMB_X38_Y3_N22
\RGB_Leds|Add1~170\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~170_combout\ = (\RGB_Leds|sig_cnt_loop\(85) & (!\RGB_Leds|Add1~169\)) # (!\RGB_Leds|sig_cnt_loop\(85) & ((\RGB_Leds|Add1~169\) # (GND)))
-- \RGB_Leds|Add1~171\ = CARRY((!\RGB_Leds|Add1~169\) # (!\RGB_Leds|sig_cnt_loop\(85)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(85),
	datad => VCC,
	cin => \RGB_Leds|Add1~169\,
	combout => \RGB_Leds|Add1~170_combout\,
	cout => \RGB_Leds|Add1~171\);

-- Location: FF_X38_Y3_N23
\RGB_Leds|sig_cnt_loop[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~170_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(85));

-- Location: LCCOMB_X38_Y3_N24
\RGB_Leds|Add1~172\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~172_combout\ = (\RGB_Leds|sig_cnt_loop\(86) & (\RGB_Leds|Add1~171\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(86) & (!\RGB_Leds|Add1~171\ & VCC))
-- \RGB_Leds|Add1~173\ = CARRY((\RGB_Leds|sig_cnt_loop\(86) & !\RGB_Leds|Add1~171\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(86),
	datad => VCC,
	cin => \RGB_Leds|Add1~171\,
	combout => \RGB_Leds|Add1~172_combout\,
	cout => \RGB_Leds|Add1~173\);

-- Location: FF_X38_Y3_N25
\RGB_Leds|sig_cnt_loop[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~172_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(86));

-- Location: LCCOMB_X38_Y3_N26
\RGB_Leds|Add1~174\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~174_combout\ = (\RGB_Leds|sig_cnt_loop\(87) & (!\RGB_Leds|Add1~173\)) # (!\RGB_Leds|sig_cnt_loop\(87) & ((\RGB_Leds|Add1~173\) # (GND)))
-- \RGB_Leds|Add1~175\ = CARRY((!\RGB_Leds|Add1~173\) # (!\RGB_Leds|sig_cnt_loop\(87)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(87),
	datad => VCC,
	cin => \RGB_Leds|Add1~173\,
	combout => \RGB_Leds|Add1~174_combout\,
	cout => \RGB_Leds|Add1~175\);

-- Location: FF_X38_Y3_N27
\RGB_Leds|sig_cnt_loop[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~174_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(87));

-- Location: LCCOMB_X38_Y3_N28
\RGB_Leds|Add1~176\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~176_combout\ = (\RGB_Leds|sig_cnt_loop\(88) & (\RGB_Leds|Add1~175\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(88) & (!\RGB_Leds|Add1~175\ & VCC))
-- \RGB_Leds|Add1~177\ = CARRY((\RGB_Leds|sig_cnt_loop\(88) & !\RGB_Leds|Add1~175\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(88),
	datad => VCC,
	cin => \RGB_Leds|Add1~175\,
	combout => \RGB_Leds|Add1~176_combout\,
	cout => \RGB_Leds|Add1~177\);

-- Location: FF_X38_Y3_N29
\RGB_Leds|sig_cnt_loop[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~176_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(88));

-- Location: LCCOMB_X38_Y3_N30
\RGB_Leds|Add1~178\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~178_combout\ = (\RGB_Leds|sig_cnt_loop\(89) & (!\RGB_Leds|Add1~177\)) # (!\RGB_Leds|sig_cnt_loop\(89) & ((\RGB_Leds|Add1~177\) # (GND)))
-- \RGB_Leds|Add1~179\ = CARRY((!\RGB_Leds|Add1~177\) # (!\RGB_Leds|sig_cnt_loop\(89)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(89),
	datad => VCC,
	cin => \RGB_Leds|Add1~177\,
	combout => \RGB_Leds|Add1~178_combout\,
	cout => \RGB_Leds|Add1~179\);

-- Location: FF_X38_Y3_N31
\RGB_Leds|sig_cnt_loop[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~178_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(89));

-- Location: LCCOMB_X38_Y2_N0
\RGB_Leds|Add1~180\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~180_combout\ = (\RGB_Leds|sig_cnt_loop\(90) & (\RGB_Leds|Add1~179\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(90) & (!\RGB_Leds|Add1~179\ & VCC))
-- \RGB_Leds|Add1~181\ = CARRY((\RGB_Leds|sig_cnt_loop\(90) & !\RGB_Leds|Add1~179\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(90),
	datad => VCC,
	cin => \RGB_Leds|Add1~179\,
	combout => \RGB_Leds|Add1~180_combout\,
	cout => \RGB_Leds|Add1~181\);

-- Location: FF_X38_Y2_N1
\RGB_Leds|sig_cnt_loop[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~180_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(90));

-- Location: LCCOMB_X38_Y2_N2
\RGB_Leds|Add1~182\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~182_combout\ = (\RGB_Leds|sig_cnt_loop\(91) & (!\RGB_Leds|Add1~181\)) # (!\RGB_Leds|sig_cnt_loop\(91) & ((\RGB_Leds|Add1~181\) # (GND)))
-- \RGB_Leds|Add1~183\ = CARRY((!\RGB_Leds|Add1~181\) # (!\RGB_Leds|sig_cnt_loop\(91)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(91),
	datad => VCC,
	cin => \RGB_Leds|Add1~181\,
	combout => \RGB_Leds|Add1~182_combout\,
	cout => \RGB_Leds|Add1~183\);

-- Location: FF_X38_Y2_N3
\RGB_Leds|sig_cnt_loop[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~182_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(91));

-- Location: LCCOMB_X38_Y2_N28
\RGB_Leds|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~2_combout\ = (!\RGB_Leds|sig_cnt_loop\(88) & (!\RGB_Leds|sig_cnt_loop\(91) & (!\RGB_Leds|sig_cnt_loop\(89) & !\RGB_Leds|sig_cnt_loop\(90))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(88),
	datab => \RGB_Leds|sig_cnt_loop\(91),
	datac => \RGB_Leds|sig_cnt_loop\(89),
	datad => \RGB_Leds|sig_cnt_loop\(90),
	combout => \RGB_Leds|Equal1~2_combout\);

-- Location: LCCOMB_X38_Y2_N4
\RGB_Leds|Add1~184\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~184_combout\ = (\RGB_Leds|sig_cnt_loop\(92) & (\RGB_Leds|Add1~183\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(92) & (!\RGB_Leds|Add1~183\ & VCC))
-- \RGB_Leds|Add1~185\ = CARRY((\RGB_Leds|sig_cnt_loop\(92) & !\RGB_Leds|Add1~183\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(92),
	datad => VCC,
	cin => \RGB_Leds|Add1~183\,
	combout => \RGB_Leds|Add1~184_combout\,
	cout => \RGB_Leds|Add1~185\);

-- Location: FF_X38_Y2_N5
\RGB_Leds|sig_cnt_loop[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~184_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(92));

-- Location: LCCOMB_X38_Y2_N6
\RGB_Leds|Add1~186\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~186_combout\ = (\RGB_Leds|sig_cnt_loop\(93) & (!\RGB_Leds|Add1~185\)) # (!\RGB_Leds|sig_cnt_loop\(93) & ((\RGB_Leds|Add1~185\) # (GND)))
-- \RGB_Leds|Add1~187\ = CARRY((!\RGB_Leds|Add1~185\) # (!\RGB_Leds|sig_cnt_loop\(93)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(93),
	datad => VCC,
	cin => \RGB_Leds|Add1~185\,
	combout => \RGB_Leds|Add1~186_combout\,
	cout => \RGB_Leds|Add1~187\);

-- Location: FF_X38_Y2_N7
\RGB_Leds|sig_cnt_loop[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~186_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(93));

-- Location: LCCOMB_X38_Y2_N8
\RGB_Leds|Add1~188\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~188_combout\ = (\RGB_Leds|sig_cnt_loop\(94) & (\RGB_Leds|Add1~187\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(94) & (!\RGB_Leds|Add1~187\ & VCC))
-- \RGB_Leds|Add1~189\ = CARRY((\RGB_Leds|sig_cnt_loop\(94) & !\RGB_Leds|Add1~187\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(94),
	datad => VCC,
	cin => \RGB_Leds|Add1~187\,
	combout => \RGB_Leds|Add1~188_combout\,
	cout => \RGB_Leds|Add1~189\);

-- Location: FF_X38_Y2_N9
\RGB_Leds|sig_cnt_loop[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~188_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(94));

-- Location: LCCOMB_X38_Y2_N10
\RGB_Leds|Add1~190\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~190_combout\ = (\RGB_Leds|sig_cnt_loop\(95) & (!\RGB_Leds|Add1~189\)) # (!\RGB_Leds|sig_cnt_loop\(95) & ((\RGB_Leds|Add1~189\) # (GND)))
-- \RGB_Leds|Add1~191\ = CARRY((!\RGB_Leds|Add1~189\) # (!\RGB_Leds|sig_cnt_loop\(95)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(95),
	datad => VCC,
	cin => \RGB_Leds|Add1~189\,
	combout => \RGB_Leds|Add1~190_combout\,
	cout => \RGB_Leds|Add1~191\);

-- Location: FF_X38_Y2_N11
\RGB_Leds|sig_cnt_loop[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~190_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(95));

-- Location: LCCOMB_X38_Y2_N12
\RGB_Leds|Add1~192\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~192_combout\ = (\RGB_Leds|sig_cnt_loop\(96) & (\RGB_Leds|Add1~191\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(96) & (!\RGB_Leds|Add1~191\ & VCC))
-- \RGB_Leds|Add1~193\ = CARRY((\RGB_Leds|sig_cnt_loop\(96) & !\RGB_Leds|Add1~191\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(96),
	datad => VCC,
	cin => \RGB_Leds|Add1~191\,
	combout => \RGB_Leds|Add1~192_combout\,
	cout => \RGB_Leds|Add1~193\);

-- Location: FF_X38_Y2_N13
\RGB_Leds|sig_cnt_loop[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~192_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(96));

-- Location: LCCOMB_X38_Y2_N14
\RGB_Leds|Add1~194\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~194_combout\ = (\RGB_Leds|sig_cnt_loop\(97) & (!\RGB_Leds|Add1~193\)) # (!\RGB_Leds|sig_cnt_loop\(97) & ((\RGB_Leds|Add1~193\) # (GND)))
-- \RGB_Leds|Add1~195\ = CARRY((!\RGB_Leds|Add1~193\) # (!\RGB_Leds|sig_cnt_loop\(97)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|sig_cnt_loop\(97),
	datad => VCC,
	cin => \RGB_Leds|Add1~193\,
	combout => \RGB_Leds|Add1~194_combout\,
	cout => \RGB_Leds|Add1~195\);

-- Location: FF_X38_Y2_N15
\RGB_Leds|sig_cnt_loop[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Add1~194_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(97));

-- Location: LCCOMB_X38_Y2_N16
\RGB_Leds|Add1~196\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~196_combout\ = (\RGB_Leds|sig_cnt_loop\(98) & (\RGB_Leds|Add1~195\ $ (GND))) # (!\RGB_Leds|sig_cnt_loop\(98) & (!\RGB_Leds|Add1~195\ & VCC))
-- \RGB_Leds|Add1~197\ = CARRY((\RGB_Leds|sig_cnt_loop\(98) & !\RGB_Leds|Add1~195\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(98),
	datad => VCC,
	cin => \RGB_Leds|Add1~195\,
	combout => \RGB_Leds|Add1~196_combout\,
	cout => \RGB_Leds|Add1~197\);

-- Location: LCCOMB_X38_Y2_N22
\RGB_Leds|sig_cnt_loop~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|sig_cnt_loop~1_combout\ = (!\RGB_Leds|Equal1~32_combout\ & \RGB_Leds|Add1~196_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RGB_Leds|Equal1~32_combout\,
	datad => \RGB_Leds|Add1~196_combout\,
	combout => \RGB_Leds|sig_cnt_loop~1_combout\);

-- Location: FF_X38_Y2_N23
\RGB_Leds|sig_cnt_loop[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|sig_cnt_loop~1_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(98));

-- Location: LCCOMB_X38_Y2_N18
\RGB_Leds|Add1~198\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Add1~198_combout\ = \RGB_Leds|Add1~197\ $ (\RGB_Leds|sig_cnt_loop\(99))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \RGB_Leds|sig_cnt_loop\(99),
	cin => \RGB_Leds|Add1~197\,
	combout => \RGB_Leds|Add1~198_combout\);

-- Location: LCCOMB_X38_Y2_N20
\RGB_Leds|sig_cnt_loop~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|sig_cnt_loop~0_combout\ = (!\RGB_Leds|Equal1~32_combout\ & \RGB_Leds|Add1~198_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RGB_Leds|Equal1~32_combout\,
	datad => \RGB_Leds|Add1~198_combout\,
	combout => \RGB_Leds|sig_cnt_loop~0_combout\);

-- Location: FF_X38_Y2_N21
\RGB_Leds|sig_cnt_loop[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|sig_cnt_loop~0_combout\,
	clrn => \resetn~input_o\,
	ena => \RGB_Leds|state_leds.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_cnt_loop\(99));

-- Location: LCCOMB_X38_Y2_N24
\RGB_Leds|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~0_combout\ = (!\RGB_Leds|sig_cnt_loop\(98) & (!\RGB_Leds|sig_cnt_loop\(99) & (!\RGB_Leds|sig_cnt_loop\(97) & !\RGB_Leds|sig_cnt_loop\(96))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(98),
	datab => \RGB_Leds|sig_cnt_loop\(99),
	datac => \RGB_Leds|sig_cnt_loop\(97),
	datad => \RGB_Leds|sig_cnt_loop\(96),
	combout => \RGB_Leds|Equal1~0_combout\);

-- Location: LCCOMB_X38_Y2_N26
\RGB_Leds|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~1_combout\ = (!\RGB_Leds|sig_cnt_loop\(95) & (!\RGB_Leds|sig_cnt_loop\(94) & (!\RGB_Leds|sig_cnt_loop\(92) & !\RGB_Leds|sig_cnt_loop\(93))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(95),
	datab => \RGB_Leds|sig_cnt_loop\(94),
	datac => \RGB_Leds|sig_cnt_loop\(92),
	datad => \RGB_Leds|sig_cnt_loop\(93),
	combout => \RGB_Leds|Equal1~1_combout\);

-- Location: LCCOMB_X39_Y3_N8
\RGB_Leds|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~3_combout\ = (!\RGB_Leds|sig_cnt_loop\(84) & (!\RGB_Leds|sig_cnt_loop\(86) & (!\RGB_Leds|sig_cnt_loop\(87) & !\RGB_Leds|sig_cnt_loop\(85))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(84),
	datab => \RGB_Leds|sig_cnt_loop\(86),
	datac => \RGB_Leds|sig_cnt_loop\(87),
	datad => \RGB_Leds|sig_cnt_loop\(85),
	combout => \RGB_Leds|Equal1~3_combout\);

-- Location: LCCOMB_X38_Y2_N30
\RGB_Leds|Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~4_combout\ = (\RGB_Leds|Equal1~2_combout\ & (\RGB_Leds|Equal1~0_combout\ & (\RGB_Leds|Equal1~1_combout\ & \RGB_Leds|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Equal1~2_combout\,
	datab => \RGB_Leds|Equal1~0_combout\,
	datac => \RGB_Leds|Equal1~1_combout\,
	datad => \RGB_Leds|Equal1~3_combout\,
	combout => \RGB_Leds|Equal1~4_combout\);

-- Location: LCCOMB_X37_Y5_N12
\RGB_Leds|Equal1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~16_combout\ = (!\RGB_Leds|sig_cnt_loop\(44) & (!\RGB_Leds|sig_cnt_loop\(47) & (!\RGB_Leds|sig_cnt_loop\(46) & !\RGB_Leds|sig_cnt_loop\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(44),
	datab => \RGB_Leds|sig_cnt_loop\(47),
	datac => \RGB_Leds|sig_cnt_loop\(46),
	datad => \RGB_Leds|sig_cnt_loop\(45),
	combout => \RGB_Leds|Equal1~16_combout\);

-- Location: LCCOMB_X39_Y6_N8
\RGB_Leds|Equal1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~18_combout\ = (!\RGB_Leds|sig_cnt_loop\(38) & (!\RGB_Leds|sig_cnt_loop\(36) & (!\RGB_Leds|sig_cnt_loop\(39) & !\RGB_Leds|sig_cnt_loop\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(38),
	datab => \RGB_Leds|sig_cnt_loop\(36),
	datac => \RGB_Leds|sig_cnt_loop\(39),
	datad => \RGB_Leds|sig_cnt_loop\(37),
	combout => \RGB_Leds|Equal1~18_combout\);

-- Location: LCCOMB_X37_Y5_N26
\RGB_Leds|Equal1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~15_combout\ = (!\RGB_Leds|sig_cnt_loop\(51) & (!\RGB_Leds|sig_cnt_loop\(48) & (!\RGB_Leds|sig_cnt_loop\(49) & !\RGB_Leds|sig_cnt_loop\(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(51),
	datab => \RGB_Leds|sig_cnt_loop\(48),
	datac => \RGB_Leds|sig_cnt_loop\(49),
	datad => \RGB_Leds|sig_cnt_loop\(50),
	combout => \RGB_Leds|Equal1~15_combout\);

-- Location: LCCOMB_X37_Y5_N6
\RGB_Leds|Equal1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~17_combout\ = (!\RGB_Leds|sig_cnt_loop\(43) & (!\RGB_Leds|sig_cnt_loop\(42) & (!\RGB_Leds|sig_cnt_loop\(41) & !\RGB_Leds|sig_cnt_loop\(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(43),
	datab => \RGB_Leds|sig_cnt_loop\(42),
	datac => \RGB_Leds|sig_cnt_loop\(41),
	datad => \RGB_Leds|sig_cnt_loop\(40),
	combout => \RGB_Leds|Equal1~17_combout\);

-- Location: LCCOMB_X37_Y5_N16
\RGB_Leds|Equal1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~19_combout\ = (\RGB_Leds|Equal1~16_combout\ & (\RGB_Leds|Equal1~18_combout\ & (\RGB_Leds|Equal1~15_combout\ & \RGB_Leds|Equal1~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Equal1~16_combout\,
	datab => \RGB_Leds|Equal1~18_combout\,
	datac => \RGB_Leds|Equal1~15_combout\,
	datad => \RGB_Leds|Equal1~17_combout\,
	combout => \RGB_Leds|Equal1~19_combout\);

-- Location: LCCOMB_X37_Y4_N6
\RGB_Leds|Equal1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~12_combout\ = (!\RGB_Leds|sig_cnt_loop\(56) & (!\RGB_Leds|sig_cnt_loop\(58) & (!\RGB_Leds|sig_cnt_loop\(57) & !\RGB_Leds|sig_cnt_loop\(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(56),
	datab => \RGB_Leds|sig_cnt_loop\(58),
	datac => \RGB_Leds|sig_cnt_loop\(57),
	datad => \RGB_Leds|sig_cnt_loop\(59),
	combout => \RGB_Leds|Equal1~12_combout\);

-- Location: LCCOMB_X39_Y5_N8
\RGB_Leds|Equal1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~13_combout\ = (!\RGB_Leds|sig_cnt_loop\(54) & (!\RGB_Leds|sig_cnt_loop\(53) & (!\RGB_Leds|sig_cnt_loop\(55) & !\RGB_Leds|sig_cnt_loop\(52))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(54),
	datab => \RGB_Leds|sig_cnt_loop\(53),
	datac => \RGB_Leds|sig_cnt_loop\(55),
	datad => \RGB_Leds|sig_cnt_loop\(52),
	combout => \RGB_Leds|Equal1~13_combout\);

-- Location: LCCOMB_X37_Y4_N4
\RGB_Leds|Equal1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~11_combout\ = (!\RGB_Leds|sig_cnt_loop\(61) & (!\RGB_Leds|sig_cnt_loop\(63) & (!\RGB_Leds|sig_cnt_loop\(62) & !\RGB_Leds|sig_cnt_loop\(60))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(61),
	datab => \RGB_Leds|sig_cnt_loop\(63),
	datac => \RGB_Leds|sig_cnt_loop\(62),
	datad => \RGB_Leds|sig_cnt_loop\(60),
	combout => \RGB_Leds|Equal1~11_combout\);

-- Location: LCCOMB_X37_Y4_N10
\RGB_Leds|Equal1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~10_combout\ = (!\RGB_Leds|sig_cnt_loop\(67) & (!\RGB_Leds|sig_cnt_loop\(64) & (!\RGB_Leds|sig_cnt_loop\(65) & !\RGB_Leds|sig_cnt_loop\(66))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(67),
	datab => \RGB_Leds|sig_cnt_loop\(64),
	datac => \RGB_Leds|sig_cnt_loop\(65),
	datad => \RGB_Leds|sig_cnt_loop\(66),
	combout => \RGB_Leds|Equal1~10_combout\);

-- Location: LCCOMB_X37_Y4_N24
\RGB_Leds|Equal1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~14_combout\ = (\RGB_Leds|Equal1~12_combout\ & (\RGB_Leds|Equal1~13_combout\ & (\RGB_Leds|Equal1~11_combout\ & \RGB_Leds|Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Equal1~12_combout\,
	datab => \RGB_Leds|Equal1~13_combout\,
	datac => \RGB_Leds|Equal1~11_combout\,
	datad => \RGB_Leds|Equal1~10_combout\,
	combout => \RGB_Leds|Equal1~14_combout\);

-- Location: LCCOMB_X39_Y3_N28
\RGB_Leds|Equal1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~6_combout\ = (!\RGB_Leds|sig_cnt_loop\(79) & (!\RGB_Leds|sig_cnt_loop\(77) & (!\RGB_Leds|sig_cnt_loop\(76) & !\RGB_Leds|sig_cnt_loop\(78))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(79),
	datab => \RGB_Leds|sig_cnt_loop\(77),
	datac => \RGB_Leds|sig_cnt_loop\(76),
	datad => \RGB_Leds|sig_cnt_loop\(78),
	combout => \RGB_Leds|Equal1~6_combout\);

-- Location: LCCOMB_X37_Y4_N0
\RGB_Leds|Equal1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~7_combout\ = (!\RGB_Leds|sig_cnt_loop\(75) & (!\RGB_Leds|sig_cnt_loop\(74) & (!\RGB_Leds|sig_cnt_loop\(73) & !\RGB_Leds|sig_cnt_loop\(72))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(75),
	datab => \RGB_Leds|sig_cnt_loop\(74),
	datac => \RGB_Leds|sig_cnt_loop\(73),
	datad => \RGB_Leds|sig_cnt_loop\(72),
	combout => \RGB_Leds|Equal1~7_combout\);

-- Location: LCCOMB_X39_Y3_N2
\RGB_Leds|Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~5_combout\ = (!\RGB_Leds|sig_cnt_loop\(80) & (!\RGB_Leds|sig_cnt_loop\(83) & (!\RGB_Leds|sig_cnt_loop\(82) & !\RGB_Leds|sig_cnt_loop\(81))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(80),
	datab => \RGB_Leds|sig_cnt_loop\(83),
	datac => \RGB_Leds|sig_cnt_loop\(82),
	datad => \RGB_Leds|sig_cnt_loop\(81),
	combout => \RGB_Leds|Equal1~5_combout\);

-- Location: LCCOMB_X39_Y4_N0
\RGB_Leds|Equal1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~8_combout\ = (!\RGB_Leds|sig_cnt_loop\(68) & (!\RGB_Leds|sig_cnt_loop\(70) & (!\RGB_Leds|sig_cnt_loop\(71) & !\RGB_Leds|sig_cnt_loop\(69))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(68),
	datab => \RGB_Leds|sig_cnt_loop\(70),
	datac => \RGB_Leds|sig_cnt_loop\(71),
	datad => \RGB_Leds|sig_cnt_loop\(69),
	combout => \RGB_Leds|Equal1~8_combout\);

-- Location: LCCOMB_X37_Y5_N24
\RGB_Leds|Equal1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~9_combout\ = (\RGB_Leds|Equal1~6_combout\ & (\RGB_Leds|Equal1~7_combout\ & (\RGB_Leds|Equal1~5_combout\ & \RGB_Leds|Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Equal1~6_combout\,
	datab => \RGB_Leds|Equal1~7_combout\,
	datac => \RGB_Leds|Equal1~5_combout\,
	datad => \RGB_Leds|Equal1~8_combout\,
	combout => \RGB_Leds|Equal1~9_combout\);

-- Location: LCCOMB_X37_Y5_N2
\RGB_Leds|Equal1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~20_combout\ = (\RGB_Leds|Equal1~4_combout\ & (\RGB_Leds|Equal1~19_combout\ & (\RGB_Leds|Equal1~14_combout\ & \RGB_Leds|Equal1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Equal1~4_combout\,
	datab => \RGB_Leds|Equal1~19_combout\,
	datac => \RGB_Leds|Equal1~14_combout\,
	datad => \RGB_Leds|Equal1~9_combout\,
	combout => \RGB_Leds|Equal1~20_combout\);

-- Location: LCCOMB_X39_Y6_N28
\RGB_Leds|Equal1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~22_combout\ = (!\RGB_Leds|sig_cnt_loop\(31) & (!\RGB_Leds|sig_cnt_loop\(28) & (!\RGB_Leds|sig_cnt_loop\(29) & !\RGB_Leds|sig_cnt_loop\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(31),
	datab => \RGB_Leds|sig_cnt_loop\(28),
	datac => \RGB_Leds|sig_cnt_loop\(29),
	datad => \RGB_Leds|sig_cnt_loop\(30),
	combout => \RGB_Leds|Equal1~22_combout\);

-- Location: LCCOMB_X39_Y6_N22
\RGB_Leds|Equal1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~23_combout\ = (!\RGB_Leds|sig_cnt_loop\(27) & (!\RGB_Leds|sig_cnt_loop\(24) & (!\RGB_Leds|sig_cnt_loop\(26) & !\RGB_Leds|sig_cnt_loop\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(27),
	datab => \RGB_Leds|sig_cnt_loop\(24),
	datac => \RGB_Leds|sig_cnt_loop\(26),
	datad => \RGB_Leds|sig_cnt_loop\(25),
	combout => \RGB_Leds|Equal1~23_combout\);

-- Location: LCCOMB_X39_Y6_N2
\RGB_Leds|Equal1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~21_combout\ = (!\RGB_Leds|sig_cnt_loop\(33) & (!\RGB_Leds|sig_cnt_loop\(35) & (!\RGB_Leds|sig_cnt_loop\(34) & !\RGB_Leds|sig_cnt_loop\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(33),
	datab => \RGB_Leds|sig_cnt_loop\(35),
	datac => \RGB_Leds|sig_cnt_loop\(34),
	datad => \RGB_Leds|sig_cnt_loop\(32),
	combout => \RGB_Leds|Equal1~21_combout\);

-- Location: LCCOMB_X39_Y7_N12
\RGB_Leds|Equal1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~24_combout\ = (!\RGB_Leds|sig_cnt_loop\(22) & (!\RGB_Leds|sig_cnt_loop\(21) & (!\RGB_Leds|sig_cnt_loop\(23) & !\RGB_Leds|sig_cnt_loop\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt_loop\(22),
	datab => \RGB_Leds|sig_cnt_loop\(21),
	datac => \RGB_Leds|sig_cnt_loop\(23),
	datad => \RGB_Leds|sig_cnt_loop\(20),
	combout => \RGB_Leds|Equal1~24_combout\);

-- Location: LCCOMB_X40_Y7_N24
\RGB_Leds|Equal1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~25_combout\ = (\RGB_Leds|Equal1~22_combout\ & (\RGB_Leds|Equal1~23_combout\ & (\RGB_Leds|Equal1~21_combout\ & \RGB_Leds|Equal1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Equal1~22_combout\,
	datab => \RGB_Leds|Equal1~23_combout\,
	datac => \RGB_Leds|Equal1~21_combout\,
	datad => \RGB_Leds|Equal1~24_combout\,
	combout => \RGB_Leds|Equal1~25_combout\);

-- Location: LCCOMB_X39_Y7_N20
\RGB_Leds|Equal1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal1~32_combout\ = (\RGB_Leds|Equal1~31_combout\ & (\RGB_Leds|Equal1~26_combout\ & (\RGB_Leds|Equal1~20_combout\ & \RGB_Leds|Equal1~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Equal1~31_combout\,
	datab => \RGB_Leds|Equal1~26_combout\,
	datac => \RGB_Leds|Equal1~20_combout\,
	datad => \RGB_Leds|Equal1~25_combout\,
	combout => \RGB_Leds|Equal1~32_combout\);

-- Location: LCCOMB_X39_Y7_N0
\RGB_Leds|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector6~0_combout\ = (!\RGB_Leds|Equal1~32_combout\ & \RGB_Leds|state_leds.s4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RGB_Leds|Equal1~32_combout\,
	datac => \RGB_Leds|state_leds.s4~q\,
	combout => \RGB_Leds|Selector6~0_combout\);

-- Location: FF_X39_Y7_N1
\RGB_Leds|state_leds.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector6~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|state_leds.s5~q\);

-- Location: LCCOMB_X43_Y19_N20
\RGB_Leds|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal4~0_combout\ = (\RGB_Leds|sig_cnt\(2) & (!\RGB_Leds|sig_cnt\(4) & !\RGB_Leds|sig_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(2),
	datac => \RGB_Leds|sig_cnt\(4),
	datad => \RGB_Leds|sig_cnt\(1),
	combout => \RGB_Leds|Equal4~0_combout\);

-- Location: LCCOMB_X43_Y19_N6
\RGB_Leds|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector0~1_combout\ = (\RGB_Leds|state_leds.s1~q\) # ((\RGB_Leds|state_leds.s7~q\ & ((!\RGB_Leds|Equal4~0_combout\) # (!\RGB_Leds|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Equal3~0_combout\,
	datab => \RGB_Leds|state_leds.s1~q\,
	datac => \RGB_Leds|state_leds.s7~q\,
	datad => \RGB_Leds|Equal4~0_combout\,
	combout => \RGB_Leds|Selector0~1_combout\);

-- Location: LCCOMB_X43_Y19_N8
\RGB_Leds|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Equal2~0_combout\ = (\RGB_Leds|sig_cnt\(3) & (!\RGB_Leds|sig_cnt\(4) & (\RGB_Leds|sig_cnt\(2) & !\RGB_Leds|sig_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(3),
	datab => \RGB_Leds|sig_cnt\(4),
	datac => \RGB_Leds|sig_cnt\(2),
	datad => \RGB_Leds|sig_cnt\(5),
	combout => \RGB_Leds|Equal2~0_combout\);

-- Location: LCCOMB_X43_Y19_N0
\RGB_Leds|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector0~0_combout\ = (\RGB_Leds|sig_cnt\(1) & (\RGB_Leds|Equal2~21_combout\ & (\RGB_Leds|Equal2~0_combout\ & \RGB_Leds|Equal2~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|sig_cnt\(1),
	datab => \RGB_Leds|Equal2~21_combout\,
	datac => \RGB_Leds|Equal2~0_combout\,
	datad => \RGB_Leds|Equal2~31_combout\,
	combout => \RGB_Leds|Selector0~0_combout\);

-- Location: LCCOMB_X43_Y19_N16
\RGB_Leds|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector0~2_combout\ = (\RGB_Leds|Selector0~1_combout\) # (((\RGB_Leds|state_leds.s6~q\ & !\RGB_Leds|Selector0~0_combout\)) # (!\RGB_Leds|Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|Selector0~1_combout\,
	datab => \RGB_Leds|state_leds.s6~q\,
	datac => \RGB_Leds|Selector3~0_combout\,
	datad => \RGB_Leds|Selector0~0_combout\,
	combout => \RGB_Leds|Selector0~2_combout\);

-- Location: LCCOMB_X42_Y12_N16
\RGB_Leds|Selector0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|Selector0~3_combout\ = (\RGB_Leds|state_leds.s5~q\) # ((\RGB_Leds|sig_OB_LED_RGB_DIN~q\ & \RGB_Leds|Selector0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RGB_Leds|state_leds.s5~q\,
	datac => \RGB_Leds|sig_OB_LED_RGB_DIN~q\,
	datad => \RGB_Leds|Selector0~2_combout\,
	combout => \RGB_Leds|Selector0~3_combout\);

-- Location: FF_X42_Y12_N17
\RGB_Leds|sig_OB_LED_RGB_DIN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|Selector0~3_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|sig_OB_LED_RGB_DIN~q\);

-- Location: LCCOMB_X43_Y8_N0
\RGB_Leds|OB_LED_RGB_DIN~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|OB_LED_RGB_DIN~feeder_combout\ = \RGB_Leds|sig_OB_LED_RGB_DIN~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RGB_Leds|sig_OB_LED_RGB_DIN~q\,
	combout => \RGB_Leds|OB_LED_RGB_DIN~feeder_combout\);

-- Location: FF_X43_Y8_N1
\RGB_Leds|OB_LED_RGB_DIN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|OB_LED_RGB_DIN~feeder_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|OB_LED_RGB_DIN~q\);

-- Location: LCCOMB_X37_Y14_N6
\DO|sig_green_leds_reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_green_leds_reg[0]~feeder_combout\ = \Simple|nrzl_data~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Simple|nrzl_data~q\,
	combout => \DO|sig_green_leds_reg[0]~feeder_combout\);

-- Location: LCCOMB_X34_Y20_N22
\DO|sig_green_leds_reg[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_green_leds_reg[0]~0_combout\ = (\DO|state_Do.s2~q\ & (\DO|sig_main_clk_cut~q\ & !\DO|sig_main_clk_cut_not~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|state_Do.s2~q\,
	datac => \DO|sig_main_clk_cut~q\,
	datad => \DO|sig_main_clk_cut_not~q\,
	combout => \DO|sig_green_leds_reg[0]~0_combout\);

-- Location: FF_X37_Y14_N7
\DO|sig_green_leds_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_green_leds_reg[0]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_green_leds_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_green_leds_reg\(0));

-- Location: LCCOMB_X37_Y14_N0
\DO|sig_green_leds_out[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_green_leds_out[0]~feeder_combout\ = \DO|sig_green_leds_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_green_leds_reg\(0),
	combout => \DO|sig_green_leds_out[0]~feeder_combout\);

-- Location: LCCOMB_X34_Y20_N24
\DO|sig_green_leds_out[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_green_leds_out[0]~0_combout\ = (\DO|sig_main_clk_cut~q\ & (\resetn~input_o\ & (\DO|state_Do.s4~q\ & !\DO|sig_main_clk_cut_not~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DO|sig_main_clk_cut~q\,
	datab => \resetn~input_o\,
	datac => \DO|state_Do.s4~q\,
	datad => \DO|sig_main_clk_cut_not~q\,
	combout => \DO|sig_green_leds_out[0]~0_combout\);

-- Location: FF_X37_Y14_N1
\DO|sig_green_leds_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_green_leds_out[0]~feeder_combout\,
	ena => \DO|sig_green_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_green_leds_out\(0));

-- Location: LCCOMB_X39_Y12_N6
\DO|green_leds[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|green_leds[0]~feeder_combout\ = \DO|sig_green_leds_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_green_leds_out\(0),
	combout => \DO|green_leds[0]~feeder_combout\);

-- Location: FF_X39_Y12_N7
\DO|green_leds[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|green_leds[0]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|green_leds\(0));

-- Location: LCCOMB_X39_Y12_N16
\RGB_Leds|LED_1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|LED_1~feeder_combout\ = \DO|green_leds\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|green_leds\(0),
	combout => \RGB_Leds|LED_1~feeder_combout\);

-- Location: LCCOMB_X41_Y17_N2
\RGB_Leds|LED_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|LED_1~0_combout\ = (\resetn~input_o\ & (\DO|load_leds~q\ & \RGB_Leds|state_leds.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~input_o\,
	datac => \DO|load_leds~q\,
	datad => \RGB_Leds|state_leds.s1~q\,
	combout => \RGB_Leds|LED_1~0_combout\);

-- Location: FF_X39_Y12_N17
\RGB_Leds|LED_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|LED_1~feeder_combout\,
	ena => \RGB_Leds|LED_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|LED_1~q\);

-- Location: LCCOMB_X37_Y14_N24
\DO|sig_green_leds_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_green_leds_reg[1]~feeder_combout\ = \DO|sig_green_leds_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_green_leds_reg\(0),
	combout => \DO|sig_green_leds_reg[1]~feeder_combout\);

-- Location: FF_X37_Y14_N25
\DO|sig_green_leds_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_green_leds_reg[1]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_green_leds_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_green_leds_reg\(1));

-- Location: LCCOMB_X37_Y14_N2
\DO|sig_green_leds_out[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_green_leds_out[1]~feeder_combout\ = \DO|sig_green_leds_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_green_leds_reg\(1),
	combout => \DO|sig_green_leds_out[1]~feeder_combout\);

-- Location: FF_X37_Y14_N3
\DO|sig_green_leds_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_green_leds_out[1]~feeder_combout\,
	ena => \DO|sig_green_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_green_leds_out\(1));

-- Location: FF_X39_Y12_N25
\DO|green_leds[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \DO|sig_green_leds_out\(1),
	sload => VCC,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|green_leds\(1));

-- Location: LCCOMB_X39_Y12_N26
\RGB_Leds|LED_2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|LED_2~feeder_combout\ = \DO|green_leds\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|green_leds\(1),
	combout => \RGB_Leds|LED_2~feeder_combout\);

-- Location: FF_X39_Y12_N27
\RGB_Leds|LED_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|LED_2~feeder_combout\,
	ena => \RGB_Leds|LED_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|LED_2~q\);

-- Location: LCCOMB_X37_Y14_N10
\DO|sig_green_leds_reg[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_green_leds_reg[2]~feeder_combout\ = \DO|sig_green_leds_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_green_leds_reg\(1),
	combout => \DO|sig_green_leds_reg[2]~feeder_combout\);

-- Location: FF_X37_Y14_N11
\DO|sig_green_leds_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_green_leds_reg[2]~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \DO|sig_green_leds_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_green_leds_reg\(2));

-- Location: LCCOMB_X37_Y14_N20
\DO|sig_green_leds_out[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|sig_green_leds_out[2]~feeder_combout\ = \DO|sig_green_leds_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_green_leds_reg\(2),
	combout => \DO|sig_green_leds_out[2]~feeder_combout\);

-- Location: FF_X37_Y14_N21
\DO|sig_green_leds_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|sig_green_leds_out[2]~feeder_combout\,
	ena => \DO|sig_green_leds_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|sig_green_leds_out\(2));

-- Location: LCCOMB_X39_Y12_N18
\DO|green_leds[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DO|green_leds[2]~feeder_combout\ = \DO|sig_green_leds_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|sig_green_leds_out\(2),
	combout => \DO|green_leds[2]~feeder_combout\);

-- Location: FF_X39_Y12_N19
\DO|green_leds[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \DO|green_leds[2]~feeder_combout\,
	ena => \DO|green_leds[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DO|green_leds\(2));

-- Location: LCCOMB_X39_Y12_N20
\RGB_Leds|LED_3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RGB_Leds|LED_3~feeder_combout\ = \DO|green_leds\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DO|green_leds\(2),
	combout => \RGB_Leds|LED_3~feeder_combout\);

-- Location: FF_X39_Y12_N21
\RGB_Leds|LED_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \RGB_Leds|LED_3~feeder_combout\,
	ena => \RGB_Leds|LED_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RGB_Leds|LED_3~q\);

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

ww_OB_LED_RGB_Din <= \OB_LED_RGB_Din~output_o\;

ww_LED_1 <= \LED_1~output_o\;

ww_LED_2 <= \LED_2~output_o\;

ww_LED_3 <= \LED_3~output_o\;
END structure;


