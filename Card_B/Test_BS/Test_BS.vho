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

-- DATE "05/30/2023 18:31:09"

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

ENTITY 	Test_BS IS
    PORT (
	resetn : IN std_logic;
	sysclk : IN std_logic;
	main_clk : BUFFER std_logic;
	nrzl_data : BUFFER std_logic;
	main_rising_edge : BUFFER std_logic;
	q_data_bit : BUFFER std_logic;
	rd_rising_edge : BUFFER std_logic
	);
END Test_BS;

-- Design Ports Information
-- main_clk	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nrzl_data	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- main_rising_edge	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_data_bit	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd_rising_edge	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sysclk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Test_BS IS
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
SIGNAL ww_main_rising_edge : std_logic;
SIGNAL ww_q_data_bit : std_logic;
SIGNAL ww_rd_rising_edge : std_logic;
SIGNAL \card_a|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \card_a|memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \card_a|memory|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \card_a|memory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \card_a|tx|dut|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \card_a|tx|dut|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \resetn~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sysclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \main_clk~output_o\ : std_logic;
SIGNAL \nrzl_data~output_o\ : std_logic;
SIGNAL \main_rising_edge~output_o\ : std_logic;
SIGNAL \q_data_bit~output_o\ : std_logic;
SIGNAL \rd_rising_edge~output_o\ : std_logic;
SIGNAL \sysclk~input_o\ : std_logic;
SIGNAL \sysclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \simplebs|cnt_clk[0]~14_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \resetn~inputclkctrl_outclk\ : std_logic;
SIGNAL \card_a|biphase|sig_main[0]~39_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_main[1]~13_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_main[1]~14\ : std_logic;
SIGNAL \card_a|biphase|sig_main[2]~15_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_main[2]~16\ : std_logic;
SIGNAL \card_a|biphase|sig_main[3]~17_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_main[3]~18\ : std_logic;
SIGNAL \card_a|biphase|sig_main[4]~19_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_main[4]~20\ : std_logic;
SIGNAL \card_a|biphase|sig_main[5]~21_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_main[5]~22\ : std_logic;
SIGNAL \card_a|biphase|sig_main[6]~23_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_main[6]~24\ : std_logic;
SIGNAL \card_a|biphase|sig_main[7]~25_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_main[7]~26\ : std_logic;
SIGNAL \card_a|biphase|sig_main[8]~27_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_main[8]~28\ : std_logic;
SIGNAL \card_a|biphase|sig_main[9]~29_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_main[9]~30\ : std_logic;
SIGNAL \card_a|biphase|sig_main[10]~31_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_main[10]~32\ : std_logic;
SIGNAL \card_a|biphase|sig_main[11]~33_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_main[11]~34\ : std_logic;
SIGNAL \card_a|biphase|sig_main[12]~35_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_main[12]~36\ : std_logic;
SIGNAL \card_a|biphase|sig_main[13]~37_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_cut~feeder_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_cut~q\ : std_logic;
SIGNAL \card_a|biphase|sig_cut_not~q\ : std_logic;
SIGNAL \card_a|biphase|main_rising_edge~combout\ : std_logic;
SIGNAL \card_a|biphase|state_bi.s3~q\ : std_logic;
SIGNAL \card_a|biphase|state_bi.s4~feeder_combout\ : std_logic;
SIGNAL \card_a|biphase|state_bi.s4~q\ : std_logic;
SIGNAL \card_a|biphase|state_bi.s5~q\ : std_logic;
SIGNAL \card_a|biphase|state_bi.s6~q\ : std_logic;
SIGNAL \card_a|biphase|state_bi.s7~q\ : std_logic;
SIGNAL \card_a|biphase|state_bi.s0~0_combout\ : std_logic;
SIGNAL \card_a|biphase|state_bi.s0~q\ : std_logic;
SIGNAL \card_a|biphase|state_bi.s1~0_combout\ : std_logic;
SIGNAL \card_a|biphase|state_bi.s1~q\ : std_logic;
SIGNAL \card_a|biphase|state_bi.s2~feeder_combout\ : std_logic;
SIGNAL \card_a|biphase|state_bi.s2~q\ : std_logic;
SIGNAL \card_a|biphase|Selector1~0_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_read~q\ : std_logic;
SIGNAL \card_a|rx|main_rx:var_clk_cntr[0]~0_combout\ : std_logic;
SIGNAL \card_a|rx|Selector17~0_combout\ : std_logic;
SIGNAL \card_a|rx|main_rx:var_clk_cntr[5]~q\ : std_logic;
SIGNAL \card_a|rx|Equal2~1_combout\ : std_logic;
SIGNAL \card_a|rx|baud_rate_clk:var_cntr[6]~q\ : std_logic;
SIGNAL \card_a|rx|Add0~0_combout\ : std_logic;
SIGNAL \card_a|rx|baud_rate_clk:var_cntr[0]~q\ : std_logic;
SIGNAL \card_a|rx|Add0~1\ : std_logic;
SIGNAL \card_a|rx|Add0~2_combout\ : std_logic;
SIGNAL \card_a|rx|baud_rate_clk:var_cntr[1]~q\ : std_logic;
SIGNAL \card_a|rx|Add0~3\ : std_logic;
SIGNAL \card_a|rx|Add0~4_combout\ : std_logic;
SIGNAL \card_a|rx|var_cntr~0_combout\ : std_logic;
SIGNAL \card_a|rx|baud_rate_clk:var_cntr[2]~q\ : std_logic;
SIGNAL \card_a|rx|Add0~5\ : std_logic;
SIGNAL \card_a|rx|Add0~6_combout\ : std_logic;
SIGNAL \card_a|rx|baud_rate_clk:var_cntr[3]~q\ : std_logic;
SIGNAL \card_a|rx|Add0~7\ : std_logic;
SIGNAL \card_a|rx|Add0~8_combout\ : std_logic;
SIGNAL \card_a|rx|Equal0~0_combout\ : std_logic;
SIGNAL \card_a|rx|var_cntr~1_combout\ : std_logic;
SIGNAL \card_a|rx|baud_rate_clk:var_cntr[4]~q\ : std_logic;
SIGNAL \card_a|rx|Add0~9\ : std_logic;
SIGNAL \card_a|rx|Add0~10_combout\ : std_logic;
SIGNAL \card_a|rx|baud_rate_clk:var_cntr[5]~q\ : std_logic;
SIGNAL \card_a|rx|Add0~11\ : std_logic;
SIGNAL \card_a|rx|Add0~12_combout\ : std_logic;
SIGNAL \card_a|rx|Equal0~1_combout\ : std_logic;
SIGNAL \card_a|rx|sig_baudx32~0_combout\ : std_logic;
SIGNAL \card_a|rx|sig_baudx32~q\ : std_logic;
SIGNAL \card_a|rx|signal_A_q~q\ : std_logic;
SIGNAL \card_a|rx|signal_A_q_not~q\ : std_logic;
SIGNAL \card_a|rx|state_rx~16_combout\ : std_logic;
SIGNAL \card_a|rx|sig_data_bit~0_combout\ : std_logic;
SIGNAL \card_a|tx|baud_clock:cnt_baud[8]~q\ : std_logic;
SIGNAL \card_a|tx|Equal0~1_combout\ : std_logic;
SIGNAL \card_a|tx|Add0~0_combout\ : std_logic;
SIGNAL \card_a|tx|cnt_baud~0_combout\ : std_logic;
SIGNAL \card_a|tx|cnt_baud~1_combout\ : std_logic;
SIGNAL \card_a|tx|baud_clock:cnt_baud[0]~q\ : std_logic;
SIGNAL \card_a|tx|Add0~1\ : std_logic;
SIGNAL \card_a|tx|Add0~2_combout\ : std_logic;
SIGNAL \card_a|tx|cnt_baud~2_combout\ : std_logic;
SIGNAL \card_a|tx|baud_clock:cnt_baud[1]~q\ : std_logic;
SIGNAL \card_a|tx|Add0~3\ : std_logic;
SIGNAL \card_a|tx|Add0~4_combout\ : std_logic;
SIGNAL \card_a|tx|baud_clock:cnt_baud[2]~q\ : std_logic;
SIGNAL \card_a|tx|Add0~5\ : std_logic;
SIGNAL \card_a|tx|Add0~7\ : std_logic;
SIGNAL \card_a|tx|Add0~8_combout\ : std_logic;
SIGNAL \card_a|tx|baud_clock:cnt_baud[4]~q\ : std_logic;
SIGNAL \card_a|tx|Add0~9\ : std_logic;
SIGNAL \card_a|tx|Add0~10_combout\ : std_logic;
SIGNAL \card_a|tx|baud_clock:cnt_baud[5]~q\ : std_logic;
SIGNAL \card_a|tx|Add0~11\ : std_logic;
SIGNAL \card_a|tx|Add0~12_combout\ : std_logic;
SIGNAL \card_a|tx|baud_clock:cnt_baud[6]~q\ : std_logic;
SIGNAL \card_a|tx|Add0~13\ : std_logic;
SIGNAL \card_a|tx|Add0~14_combout\ : std_logic;
SIGNAL \card_a|tx|cnt_baud~4_combout\ : std_logic;
SIGNAL \card_a|tx|baud_clock:cnt_baud[7]~q\ : std_logic;
SIGNAL \card_a|tx|Add0~15\ : std_logic;
SIGNAL \card_a|tx|Add0~16_combout\ : std_logic;
SIGNAL \card_a|tx|cnt_baud~5_combout\ : std_logic;
SIGNAL \card_a|tx|baud_clock:cnt_baud[9]~q\ : std_logic;
SIGNAL \card_a|tx|Add0~17\ : std_logic;
SIGNAL \card_a|tx|Add0~18_combout\ : std_logic;
SIGNAL \card_a|tx|cnt_baud~3_combout\ : std_logic;
SIGNAL \card_a|tx|baud_clock:cnt_baud[3]~q\ : std_logic;
SIGNAL \card_a|tx|Add0~6_combout\ : std_logic;
SIGNAL \card_a|tx|Equal0~0_combout\ : std_logic;
SIGNAL \card_a|tx|Equal0~2_combout\ : std_logic;
SIGNAL \card_a|tx|sig_baud_clk~0_combout\ : std_logic;
SIGNAL \card_a|tx|sig_baud_clk~q\ : std_logic;
SIGNAL \card_a|tx|signal_A_q~feeder_combout\ : std_logic;
SIGNAL \card_a|tx|signal_A_q~q\ : std_logic;
SIGNAL \card_a|tx|signal_A_q_not~q\ : std_logic;
SIGNAL \card_a|tx|sig_arising_edge~combout\ : std_logic;
SIGNAL \card_a|tx|Selector12~0_combout\ : std_logic;
SIGNAL \card_a|tx|state_tx.s4~feeder_combout\ : std_logic;
SIGNAL \card_a|tx|state_tx.s4~q\ : std_logic;
SIGNAL \card_a|tx|state_tx.s5~q\ : std_logic;
SIGNAL \card_a|tx|Selector6~0_combout\ : std_logic;
SIGNAL \card_a|tx|state_tx.s6~q\ : std_logic;
SIGNAL \card_a|tx|Add1~0_combout\ : std_logic;
SIGNAL \card_a|tx|Selector10~0_combout\ : std_logic;
SIGNAL \card_a|tx|transmission:sig_cntr[3]~q\ : std_logic;
SIGNAL \card_a|tx|Equal3~0_combout\ : std_logic;
SIGNAL \card_a|tx|Selector7~0_combout\ : std_logic;
SIGNAL \card_a|tx|state_tx.s7~q\ : std_logic;
SIGNAL \card_a|tx|state_tx.s8~feeder_combout\ : std_logic;
SIGNAL \card_a|tx|state_tx.s8~q\ : std_logic;
SIGNAL \card_a|tx|Selector9~0_combout\ : std_logic;
SIGNAL \card_a|tx|state_tx.s9~q\ : std_logic;
SIGNAL \card_a|tx|state_tx~28_combout\ : std_logic;
SIGNAL \card_a|tx|state_tx.s10~q\ : std_logic;
SIGNAL \card_a|tx|sig_address[1]~5_combout\ : std_logic;
SIGNAL \card_a|tx|sig_address[1]~6\ : std_logic;
SIGNAL \card_a|tx|sig_address[2]~7_combout\ : std_logic;
SIGNAL \card_a|tx|sig_address[2]~8\ : std_logic;
SIGNAL \card_a|tx|sig_address[3]~9_combout\ : std_logic;
SIGNAL \card_a|tx|Equal4~0_combout\ : std_logic;
SIGNAL \card_a|tx|sig_address[3]~10\ : std_logic;
SIGNAL \card_a|tx|sig_address[4]~11_combout\ : std_logic;
SIGNAL \card_a|tx|Equal4~1_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_inc~0_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_inc~1_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_inc~q\ : std_logic;
SIGNAL \card_a|biphase|state_mini.s3a~feeder_combout\ : std_logic;
SIGNAL \card_a|biphase|state_mini.s3a~q\ : std_logic;
SIGNAL \card_a|biphase|state_mini.s4a~q\ : std_logic;
SIGNAL \card_a|biphase|state_mini.s5a~q\ : std_logic;
SIGNAL \card_a|biphase|Selector2~0_combout\ : std_logic;
SIGNAL \card_a|biphase|state_mini.s0a~q\ : std_logic;
SIGNAL \card_a|biphase|Selector3~0_combout\ : std_logic;
SIGNAL \card_a|biphase|state_mini.s1a~q\ : std_logic;
SIGNAL \card_a|biphase|Selector4~0_combout\ : std_logic;
SIGNAL \card_a|biphase|state_mini.s2a~q\ : std_logic;
SIGNAL \card_a|biphase|sig_read_address_cnt[0]~4_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_read_address_cnt[1]~5_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_read_address_cnt[1]~6\ : std_logic;
SIGNAL \card_a|biphase|sig_read_address_cnt[2]~7_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_read_address_cnt[2]~8\ : std_logic;
SIGNAL \card_a|biphase|sig_read_address_cnt[3]~9_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_read_address_cnt[3]~10\ : std_logic;
SIGNAL \card_a|biphase|sig_read_address_cnt[4]~11_combout\ : std_logic;
SIGNAL \card_a|biphase|start_strobe_tx~0_combout\ : std_logic;
SIGNAL \card_a|biphase|start_strobe_tx~1_combout\ : std_logic;
SIGNAL \card_a|biphase|start_strobe_tx~2_combout\ : std_logic;
SIGNAL \card_a|biphase|start_strobe_tx~q\ : std_logic;
SIGNAL \card_a|tx|Selector0~0_combout\ : std_logic;
SIGNAL \card_a|tx|state_tx.s0~q\ : std_logic;
SIGNAL \card_a|tx|Selector1~0_combout\ : std_logic;
SIGNAL \card_a|tx|state_tx.s1~q\ : std_logic;
SIGNAL \card_a|tx|Selector2~0_combout\ : std_logic;
SIGNAL \card_a|tx|Selector2~1_combout\ : std_logic;
SIGNAL \card_a|tx|state_tx.s2~q\ : std_logic;
SIGNAL \card_a|tx|transmission:sig_cntr[1]~2_combout\ : std_logic;
SIGNAL \card_a|tx|transmission:sig_cntr[1]~q\ : std_logic;
SIGNAL \card_a|tx|Equal2~0_combout\ : std_logic;
SIGNAL \card_a|tx|transmission:sig_cntr[1]~0_combout\ : std_logic;
SIGNAL \card_a|tx|transmission:sig_cntr[1]~1_combout\ : std_logic;
SIGNAL \card_a|tx|Selector13~0_combout\ : std_logic;
SIGNAL \card_a|tx|transmission:sig_cntr[0]~q\ : std_logic;
SIGNAL \card_a|tx|Selector11~0_combout\ : std_logic;
SIGNAL \card_a|tx|transmission:sig_cntr[2]~q\ : std_logic;
SIGNAL \card_a|tx|Selector3~0_combout\ : std_logic;
SIGNAL \card_a|tx|Selector3~1_combout\ : std_logic;
SIGNAL \card_a|tx|state_tx.s3~q\ : std_logic;
SIGNAL \card_a|tx|sig_address[0]~4_combout\ : std_logic;
SIGNAL \card_a|tx|sig_byte[7]~0_combout\ : std_logic;
SIGNAL \card_a|tx|sig_byte[5]~feeder_combout\ : std_logic;
SIGNAL \card_a|tx|sig_byte[3]~feeder_combout\ : std_logic;
SIGNAL \card_a|tx|sig_byte[0]~feeder_combout\ : std_logic;
SIGNAL \card_a|tx|Selector22~0_combout\ : std_logic;
SIGNAL \card_a|tx|sig_packet[10]~1_combout\ : std_logic;
SIGNAL \card_a|tx|Selector21~0_combout\ : std_logic;
SIGNAL \card_a|tx|Selector20~0_combout\ : std_logic;
SIGNAL \card_a|tx|Selector19~0_combout\ : std_logic;
SIGNAL \card_a|tx|sig_byte[4]~feeder_combout\ : std_logic;
SIGNAL \card_a|tx|Selector18~0_combout\ : std_logic;
SIGNAL \card_a|tx|Selector17~0_combout\ : std_logic;
SIGNAL \card_a|tx|Selector16~0_combout\ : std_logic;
SIGNAL \card_a|tx|Selector15~0_combout\ : std_logic;
SIGNAL \card_a|tx|sig_packet[11]~0_combout\ : std_logic;
SIGNAL \card_a|tx|Selector14~0_combout\ : std_logic;
SIGNAL \card_a|tx|sig_bit~0_combout\ : std_logic;
SIGNAL \card_a|tx|sig_bit~q\ : std_logic;
SIGNAL \card_a|rx|sig_bit[0]~0_combout\ : std_logic;
SIGNAL \card_a|rx|sig_bit[1]~feeder_combout\ : std_logic;
SIGNAL \card_a|rx|sig_bit[2]~feeder_combout\ : std_logic;
SIGNAL \card_a|rx|sig_bouncer_bit~0_combout\ : std_logic;
SIGNAL \card_a|rx|sig_bouncer_bit~q\ : std_logic;
SIGNAL \card_a|rx|sig_data_bit~1_combout\ : std_logic;
SIGNAL \card_a|rx|sig_data_bit~q\ : std_logic;
SIGNAL \card_a|rx|Selector14~2_combout\ : std_logic;
SIGNAL \card_a|rx|state_rx.s3~q\ : std_logic;
SIGNAL \card_a|rx|Selector13~0_combout\ : std_logic;
SIGNAL \card_a|rx|state_rx.s2~q\ : std_logic;
SIGNAL \card_a|rx|Selector11~0_combout\ : std_logic;
SIGNAL \card_a|rx|Selector11~1_combout\ : std_logic;
SIGNAL \card_a|rx|state_rx.s0~q\ : std_logic;
SIGNAL \card_a|rx|Selector12~1_combout\ : std_logic;
SIGNAL \card_a|rx|Selector12~0_combout\ : std_logic;
SIGNAL \card_a|rx|Selector12~2_combout\ : std_logic;
SIGNAL \card_a|rx|state_rx.s1~q\ : std_logic;
SIGNAL \card_a|rx|main_rx:var_clk_cntr[4]~0_combout\ : std_logic;
SIGNAL \card_a|rx|main_rx:var_clk_cntr[0]~q\ : std_logic;
SIGNAL \card_a|rx|Add2~2_combout\ : std_logic;
SIGNAL \card_a|rx|main_rx:var_clk_cntr[1]~q\ : std_logic;
SIGNAL \card_a|rx|Add2~1_combout\ : std_logic;
SIGNAL \card_a|rx|main_rx:var_clk_cntr[2]~q\ : std_logic;
SIGNAL \card_a|rx|Add2~0_combout\ : std_logic;
SIGNAL \card_a|rx|main_rx:var_clk_cntr[3]~q\ : std_logic;
SIGNAL \card_a|rx|Equal2~0_combout\ : std_logic;
SIGNAL \card_a|rx|Add2~3_combout\ : std_logic;
SIGNAL \card_a|rx|main_rx:var_clk_cntr[4]~q\ : std_logic;
SIGNAL \card_a|rx|Equal3~0_combout\ : std_logic;
SIGNAL \card_a|rx|Selector4~0_combout\ : std_logic;
SIGNAL \card_a|rx|main_rx:var_bit_cntr[2]~0_combout\ : std_logic;
SIGNAL \card_a|rx|main_rx:var_bit_cntr[0]~q\ : std_logic;
SIGNAL \card_a|rx|Selector3~0_combout\ : std_logic;
SIGNAL \card_a|rx|main_rx:var_bit_cntr[1]~q\ : std_logic;
SIGNAL \card_a|rx|state_rx~17_combout\ : std_logic;
SIGNAL \card_a|rx|Add3~0_combout\ : std_logic;
SIGNAL \card_a|rx|Selector2~0_combout\ : std_logic;
SIGNAL \card_a|rx|main_rx:var_bit_cntr[2]~q\ : std_logic;
SIGNAL \card_a|rx|var_bit_cntr~3_combout\ : std_logic;
SIGNAL \card_a|rx|Selector1~0_combout\ : std_logic;
SIGNAL \card_a|rx|main_rx:var_bit_cntr[3]~q\ : std_logic;
SIGNAL \card_a|rx|var_bit_cntr~2_combout\ : std_logic;
SIGNAL \card_a|rx|state_rx~18_combout\ : std_logic;
SIGNAL \card_a|rx|Selector15~0_combout\ : std_logic;
SIGNAL \card_a|rx|state_rx.s4~q\ : std_logic;
SIGNAL \card_a|rx|state_rx.s5~q\ : std_logic;
SIGNAL \card_a|rx|Selector0~0_combout\ : std_logic;
SIGNAL \card_a|rx|sig_wr_ram~q\ : std_logic;
SIGNAL \card_a|biphase|sig_cut_rd~q\ : std_logic;
SIGNAL \card_a|biphase|sig_cut_rd_not~q\ : std_logic;
SIGNAL \card_a|biphase|rd~combout\ : std_logic;
SIGNAL \card_a|memory|altsyncram_component|auto_generated|rden_b_store~q\ : std_logic;
SIGNAL \card_a|memory|altsyncram_component|auto_generated|ram_block1a0~0_combout\ : std_logic;
SIGNAL \card_a|rx|sig_detected_byte[0]~feeder_combout\ : std_logic;
SIGNAL \card_a|rx|sig_detected_byte[7]~0_combout\ : std_logic;
SIGNAL \card_a|rx|detected_byte[0]~feeder_combout\ : std_logic;
SIGNAL \card_a|rx|detected_byte[7]~0_combout\ : std_logic;
SIGNAL \card_a|rx|sig_cnt_address[0]~12_combout\ : std_logic;
SIGNAL \card_a|rx|Selector10~0_combout\ : std_logic;
SIGNAL \card_a|rx|main_rx:var_trns_cntr[14]~q\ : std_logic;
SIGNAL \card_a|rx|Add1~0_combout\ : std_logic;
SIGNAL \card_a|rx|main_rx:var_trns_cntr[0]~q\ : std_logic;
SIGNAL \card_a|rx|Add1~1\ : std_logic;
SIGNAL \card_a|rx|Add1~2_combout\ : std_logic;
SIGNAL \card_a|rx|main_rx:var_trns_cntr[1]~q\ : std_logic;
SIGNAL \card_a|rx|Add1~3\ : std_logic;
SIGNAL \card_a|rx|Add1~4_combout\ : std_logic;
SIGNAL \card_a|rx|main_rx:var_trns_cntr[2]~q\ : std_logic;
SIGNAL \card_a|rx|Add1~5\ : std_logic;
SIGNAL \card_a|rx|Add1~6_combout\ : std_logic;
SIGNAL \card_a|rx|main_rx:var_trns_cntr[3]~q\ : std_logic;
SIGNAL \card_a|rx|Add1~7\ : std_logic;
SIGNAL \card_a|rx|Add1~8_combout\ : std_logic;
SIGNAL \card_a|rx|main_rx:var_trns_cntr[4]~q\ : std_logic;
SIGNAL \card_a|rx|Add1~9\ : std_logic;
SIGNAL \card_a|rx|Add1~10_combout\ : std_logic;
SIGNAL \card_a|rx|main_rx:var_trns_cntr[5]~q\ : std_logic;
SIGNAL \card_a|rx|Add1~11\ : std_logic;
SIGNAL \card_a|rx|Add1~12_combout\ : std_logic;
SIGNAL \card_a|rx|main_rx:var_trns_cntr[6]~q\ : std_logic;
SIGNAL \card_a|rx|Add1~13\ : std_logic;
SIGNAL \card_a|rx|Add1~14_combout\ : std_logic;
SIGNAL \card_a|rx|main_rx:var_trns_cntr[7]~q\ : std_logic;
SIGNAL \card_a|rx|Add1~15\ : std_logic;
SIGNAL \card_a|rx|Add1~16_combout\ : std_logic;
SIGNAL \card_a|rx|main_rx:var_trns_cntr[8]~q\ : std_logic;
SIGNAL \card_a|rx|Add1~17\ : std_logic;
SIGNAL \card_a|rx|Add1~18_combout\ : std_logic;
SIGNAL \card_a|rx|main_rx:var_trns_cntr[9]~q\ : std_logic;
SIGNAL \card_a|rx|Add1~19\ : std_logic;
SIGNAL \card_a|rx|Add1~20_combout\ : std_logic;
SIGNAL \card_a|rx|main_rx:var_trns_cntr[10]~q\ : std_logic;
SIGNAL \card_a|rx|Add1~21\ : std_logic;
SIGNAL \card_a|rx|Add1~22_combout\ : std_logic;
SIGNAL \card_a|rx|main_rx:var_trns_cntr[11]~q\ : std_logic;
SIGNAL \card_a|rx|Add1~23\ : std_logic;
SIGNAL \card_a|rx|Add1~24_combout\ : std_logic;
SIGNAL \card_a|rx|main_rx:var_trns_cntr[12]~q\ : std_logic;
SIGNAL \card_a|rx|Add1~25\ : std_logic;
SIGNAL \card_a|rx|Add1~26_combout\ : std_logic;
SIGNAL \card_a|rx|main_rx:var_trns_cntr[13]~q\ : std_logic;
SIGNAL \card_a|rx|Add1~27\ : std_logic;
SIGNAL \card_a|rx|Add1~28_combout\ : std_logic;
SIGNAL \card_a|rx|main_rx:var_trns_cntr[18]~q\ : std_logic;
SIGNAL \card_a|rx|Add1~29\ : std_logic;
SIGNAL \card_a|rx|Add1~30_combout\ : std_logic;
SIGNAL \card_a|rx|main_rx:var_trns_cntr[15]~q\ : std_logic;
SIGNAL \card_a|rx|Add1~31\ : std_logic;
SIGNAL \card_a|rx|Add1~32_combout\ : std_logic;
SIGNAL \card_a|rx|main_rx:var_trns_cntr[16]~q\ : std_logic;
SIGNAL \card_a|rx|Add1~33\ : std_logic;
SIGNAL \card_a|rx|Add1~34_combout\ : std_logic;
SIGNAL \card_a|rx|main_rx:var_trns_cntr[17]~q\ : std_logic;
SIGNAL \card_a|rx|Add1~35\ : std_logic;
SIGNAL \card_a|rx|Add1~36_combout\ : std_logic;
SIGNAL \card_a|rx|sig_ram_address[0]~6_combout\ : std_logic;
SIGNAL \card_a|rx|sig_ram_address[0]~5_combout\ : std_logic;
SIGNAL \card_a|rx|sig_ram_address[0]~4_combout\ : std_logic;
SIGNAL \card_a|rx|sig_ram_address[0]~3_combout\ : std_logic;
SIGNAL \card_a|rx|sig_ram_address[0]~7_combout\ : std_logic;
SIGNAL \card_a|rx|sig_ram_address[0]~1_combout\ : std_logic;
SIGNAL \card_a|rx|sig_ram_address[0]~2_combout\ : std_logic;
SIGNAL \card_a|rx|sig_ram_address[3]~0_combout\ : std_logic;
SIGNAL \card_a|rx|sig_ram_address[0]~8_combout\ : std_logic;
SIGNAL \card_a|rx|sig_cnt_address[1]~4_combout\ : std_logic;
SIGNAL \card_a|rx|Selector9~0_combout\ : std_logic;
SIGNAL \card_a|rx|sig_cnt_address[1]~5\ : std_logic;
SIGNAL \card_a|rx|sig_cnt_address[2]~6_combout\ : std_logic;
SIGNAL \card_a|rx|Selector8~0_combout\ : std_logic;
SIGNAL \card_a|rx|sig_cnt_address[2]~7\ : std_logic;
SIGNAL \card_a|rx|sig_cnt_address[3]~8_combout\ : std_logic;
SIGNAL \card_a|rx|Selector7~0_combout\ : std_logic;
SIGNAL \card_a|rx|sig_cnt_address[3]~9\ : std_logic;
SIGNAL \card_a|rx|sig_cnt_address[4]~10_combout\ : std_logic;
SIGNAL \card_a|rx|Selector6~0_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_toggle~0_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_toggle~1_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_toggle~q\ : std_logic;
SIGNAL \card_a|rx|Selector5~0_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_read_address[0]~feeder_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_read_address[0]~0_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_read_address[1]~feeder_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_read_address[2]~feeder_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_read_address[5]~feeder_combout\ : std_logic;
SIGNAL \card_a|rx|sig_detected_byte[1]~feeder_combout\ : std_logic;
SIGNAL \card_a|rx|detected_byte[1]~feeder_combout\ : std_logic;
SIGNAL \card_a|rx|sig_detected_byte[2]~feeder_combout\ : std_logic;
SIGNAL \card_a|rx|detected_byte[5]~feeder_combout\ : std_logic;
SIGNAL \card_a|rx|sig_detected_byte[6]~feeder_combout\ : std_logic;
SIGNAL \card_a|rx|detected_byte[6]~feeder_combout\ : std_logic;
SIGNAL \card_a|rx|sig_detected_byte[7]~feeder_combout\ : std_logic;
SIGNAL \card_a|rx|detected_byte[7]~feeder_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_shift_data~7_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_shift_data~6_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_shift_data~5_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_shift_data~4_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_shift_data~3_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_shift_data~2_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_shift_data~1_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_shift_data~0_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_BiPhase_tx_out~0_combout\ : std_logic;
SIGNAL \card_a|biphase|sig_BiPhase_tx_out~q\ : std_logic;
SIGNAL \bsfilter|sig_filter[2]~feeder_combout\ : std_logic;
SIGNAL \bsfilter|sig_filter[3]~feeder_combout\ : std_logic;
SIGNAL \bsfilter|sig_filter[5]~feeder_combout\ : std_logic;
SIGNAL \bsfilter|sig_filter[6]~feeder_combout\ : std_logic;
SIGNAL \bsfilter|sig_check_5~0_combout\ : std_logic;
SIGNAL \bsfilter|sig_check_5~q\ : std_logic;
SIGNAL \bsfilter|sig_check_4~0_combout\ : std_logic;
SIGNAL \bsfilter|sig_check_4~q\ : std_logic;
SIGNAL \bsfilter|sig_filter[7]~feeder_combout\ : std_logic;
SIGNAL \bsfilter|sig_check_6~0_combout\ : std_logic;
SIGNAL \bsfilter|sig_check_6~q\ : std_logic;
SIGNAL \bsfilter|sig_check_0~0_combout\ : std_logic;
SIGNAL \bsfilter|sig_check_0~q\ : std_logic;
SIGNAL \bsfilter|sig_check_3~0_combout\ : std_logic;
SIGNAL \bsfilter|sig_check_3~q\ : std_logic;
SIGNAL \bsfilter|sig_check_2~0_combout\ : std_logic;
SIGNAL \bsfilter|sig_check_2~q\ : std_logic;
SIGNAL \bsfilter|sig_check_1~0_combout\ : std_logic;
SIGNAL \bsfilter|sig_check_1~q\ : std_logic;
SIGNAL \bsfilter|main_check~0_combout\ : std_logic;
SIGNAL \bsfilter|main_check~1_combout\ : std_logic;
SIGNAL \bsfilter|sig_total_check~q\ : std_logic;
SIGNAL \bsfilter|signal_out~0_combout\ : std_logic;
SIGNAL \bsfilter|signal_out~q\ : std_logic;
SIGNAL \simplebs|sig_bi_phase_filterd_cut~feeder_combout\ : std_logic;
SIGNAL \simplebs|sig_bi_phase_filterd_cut~q\ : std_logic;
SIGNAL \simplebs|sig_bi_phase_filterd_cut_not~q\ : std_logic;
SIGNAL \simplebs|cnt_clk[5]~25\ : std_logic;
SIGNAL \simplebs|cnt_clk[6]~26_combout\ : std_logic;
SIGNAL \simplebs|cnt_clk[6]~27\ : std_logic;
SIGNAL \simplebs|cnt_clk[7]~28_combout\ : std_logic;
SIGNAL \simplebs|cnt_clk[7]~29\ : std_logic;
SIGNAL \simplebs|cnt_clk[8]~30_combout\ : std_logic;
SIGNAL \simplebs|cnt_clk[8]~31\ : std_logic;
SIGNAL \simplebs|cnt_clk[9]~32_combout\ : std_logic;
SIGNAL \simplebs|cnt_clk[9]~33\ : std_logic;
SIGNAL \simplebs|cnt_clk[10]~34_combout\ : std_logic;
SIGNAL \simplebs|cnt_clk[10]~35\ : std_logic;
SIGNAL \simplebs|cnt_clk[11]~36_combout\ : std_logic;
SIGNAL \simplebs|cnt_clk[11]~37\ : std_logic;
SIGNAL \simplebs|cnt_clk[12]~38_combout\ : std_logic;
SIGNAL \simplebs|sig_enable~0_combout\ : std_logic;
SIGNAL \simplebs|sig_enable~1_combout\ : std_logic;
SIGNAL \simplebs|sig_enable~q\ : std_logic;
SIGNAL \simplebs|clk_00~0_combout\ : std_logic;
SIGNAL \simplebs|cnt_clk[0]~15\ : std_logic;
SIGNAL \simplebs|cnt_clk[1]~16_combout\ : std_logic;
SIGNAL \simplebs|cnt_clk[1]~17\ : std_logic;
SIGNAL \simplebs|cnt_clk[2]~18_combout\ : std_logic;
SIGNAL \simplebs|cnt_clk[2]~19\ : std_logic;
SIGNAL \simplebs|cnt_clk[3]~20_combout\ : std_logic;
SIGNAL \simplebs|cnt_clk[3]~21\ : std_logic;
SIGNAL \simplebs|cnt_clk[4]~22_combout\ : std_logic;
SIGNAL \simplebs|cnt_clk[4]~23\ : std_logic;
SIGNAL \simplebs|cnt_clk[5]~24_combout\ : std_logic;
SIGNAL \simplebs|Equal0~1_combout\ : std_logic;
SIGNAL \simplebs|Equal0~2_combout\ : std_logic;
SIGNAL \simplebs|Equal0~0_combout\ : std_logic;
SIGNAL \simplebs|cnt_clk[12]~39\ : std_logic;
SIGNAL \simplebs|cnt_clk[13]~40_combout\ : std_logic;
SIGNAL \simplebs|Equal0~3_combout\ : std_logic;
SIGNAL \simplebs|sig_00_clk~0_combout\ : std_logic;
SIGNAL \simplebs|sig_00_clk~q\ : std_logic;
SIGNAL \simplebs|sig_00_cut~0_combout\ : std_logic;
SIGNAL \simplebs|sig_00_cut~q\ : std_logic;
SIGNAL \simplebs|sig_00_cut_not~q\ : std_logic;
SIGNAL \simplebs|Equal0~4_combout\ : std_logic;
SIGNAL \simplebs|sig_90_clk~0_combout\ : std_logic;
SIGNAL \simplebs|sig_90_clk~q\ : std_logic;
SIGNAL \simplebs|sig_90_cut~q\ : std_logic;
SIGNAL \simplebs|sig_90_cut_not~q\ : std_logic;
SIGNAL \simplebs|sig_ff_B~0_combout\ : std_logic;
SIGNAL \simplebs|sig_ff_B~1_combout\ : std_logic;
SIGNAL \simplebs|sig_ff_B~q\ : std_logic;
SIGNAL \simplebs|sig_ff_A~0_combout\ : std_logic;
SIGNAL \simplebs|sig_ff_A~1_combout\ : std_logic;
SIGNAL \simplebs|sig_ff_A~q\ : std_logic;
SIGNAL \simplebs|nrzl_data~0_combout\ : std_logic;
SIGNAL \simplebs|nrzl_data~1_combout\ : std_logic;
SIGNAL \simplebs|nrzl_data~q\ : std_logic;
SIGNAL \card_a|rx|sig_cnt_address\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \card_a|tx|sig_packet\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \simplebs|cnt_clk\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \card_a|biphase|sig_main\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \card_a|memory|altsyncram_component|auto_generated|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \card_a|biphase|sig_read_address_cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \card_a|rx|detected_byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \card_a|tx|sig_address\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \card_a|biphase|sig_shift_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \card_a|tx|dut|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \card_a|rx|sig_ram_address\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \card_a|biphase|sig_read_address\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \card_a|rx|sig_detected_byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \card_a|tx|sig_byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \card_a|rx|sig_bit\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \bsfilter|sig_filter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \simplebs|ALT_INV_sig_00_clk~q\ : std_logic;
SIGNAL \card_a|tx|ALT_INV_state_tx.s9~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_resetn <= resetn;
ww_sysclk <= sysclk;
main_clk <= ww_main_clk;
nrzl_data <= ww_nrzl_data;
main_rising_edge <= ww_main_rising_edge;
q_data_bit <= ww_q_data_bit;
rd_rising_edge <= ww_rd_rising_edge;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\card_a|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\card_a|rx|detected_byte\(7) & \card_a|rx|detected_byte\(6) & \card_a|rx|detected_byte\(5) & \card_a|rx|detected_byte\(4) & \card_a|rx|detected_byte\(3) & \card_a|rx|detected_byte\(2) & \card_a|rx|detected_byte\(1) & 
\card_a|rx|detected_byte\(0));

\card_a|memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\card_a|rx|sig_ram_address\(5) & \card_a|rx|sig_ram_address\(4) & \card_a|rx|sig_ram_address\(3) & \card_a|rx|sig_ram_address\(2) & \card_a|rx|sig_ram_address\(1)
& \card_a|rx|sig_ram_address\(0));

\card_a|memory|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\card_a|biphase|sig_read_address\(5) & \card_a|biphase|sig_read_address\(4) & \card_a|biphase|sig_read_address\(3) & \card_a|biphase|sig_read_address\(2) & 
\card_a|biphase|sig_read_address\(1) & \card_a|biphase|sig_read_address\(0));

\card_a|memory|altsyncram_component|auto_generated|q_b\(0) <= \card_a|memory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\card_a|memory|altsyncram_component|auto_generated|q_b\(1) <= \card_a|memory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\card_a|memory|altsyncram_component|auto_generated|q_b\(2) <= \card_a|memory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\card_a|memory|altsyncram_component|auto_generated|q_b\(3) <= \card_a|memory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\card_a|memory|altsyncram_component|auto_generated|q_b\(4) <= \card_a|memory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\card_a|memory|altsyncram_component|auto_generated|q_b\(5) <= \card_a|memory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\card_a|memory|altsyncram_component|auto_generated|q_b\(6) <= \card_a|memory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\card_a|memory|altsyncram_component|auto_generated|q_b\(7) <= \card_a|memory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\card_a|tx|dut|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\card_a|tx|sig_address\(4) & \card_a|tx|sig_address\(3) & \card_a|tx|sig_address\(2) & \card_a|tx|sig_address\(1) & \card_a|tx|sig_address\(0));

\card_a|tx|dut|altsyncram_component|auto_generated|q_a\(0) <= \card_a|tx|dut|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\card_a|tx|dut|altsyncram_component|auto_generated|q_a\(1) <= \card_a|tx|dut|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\card_a|tx|dut|altsyncram_component|auto_generated|q_a\(2) <= \card_a|tx|dut|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\card_a|tx|dut|altsyncram_component|auto_generated|q_a\(3) <= \card_a|tx|dut|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\card_a|tx|dut|altsyncram_component|auto_generated|q_a\(4) <= \card_a|tx|dut|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\card_a|tx|dut|altsyncram_component|auto_generated|q_a\(5) <= \card_a|tx|dut|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\card_a|tx|dut|altsyncram_component|auto_generated|q_a\(6) <= \card_a|tx|dut|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\card_a|tx|dut|altsyncram_component|auto_generated|q_a\(7) <= \card_a|tx|dut|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\resetn~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \resetn~input_o\);

\sysclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sysclk~input_o\);
\simplebs|ALT_INV_sig_00_clk~q\ <= NOT \simplebs|sig_00_clk~q\;
\card_a|tx|ALT_INV_state_tx.s9~q\ <= NOT \card_a|tx|state_tx.s9~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N16
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

-- Location: IOOBUF_X58_Y54_N23
\main_clk~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \simplebs|ALT_INV_sig_00_clk~q\,
	devoe => ww_devoe,
	o => \main_clk~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\nrzl_data~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \simplebs|nrzl_data~q\,
	devoe => ww_devoe,
	o => \nrzl_data~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\main_rising_edge~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \card_a|biphase|main_rising_edge~combout\,
	devoe => ww_devoe,
	o => \main_rising_edge~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\q_data_bit~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \card_a|biphase|sig_shift_data\(7),
	devoe => ww_devoe,
	o => \q_data_bit~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\rd_rising_edge~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \card_a|biphase|rd~combout\,
	devoe => ww_devoe,
	o => \rd_rising_edge~output_o\);

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

-- Location: LCCOMB_X55_Y49_N2
\simplebs|cnt_clk[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \simplebs|cnt_clk[0]~14_combout\ = \simplebs|cnt_clk\(0) $ (VCC)
-- \simplebs|cnt_clk[0]~15\ = CARRY(\simplebs|cnt_clk\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \simplebs|cnt_clk\(0),
	datad => VCC,
	combout => \simplebs|cnt_clk[0]~14_combout\,
	cout => \simplebs|cnt_clk[0]~15\);

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

-- Location: LCCOMB_X47_Y40_N28
\card_a|biphase|sig_main[0]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_main[0]~39_combout\ = !\card_a|biphase|sig_main\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_a|biphase|sig_main\(0),
	combout => \card_a|biphase|sig_main[0]~39_combout\);

-- Location: FF_X47_Y40_N29
\card_a|biphase|sig_main[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_main[0]~39_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_main\(0));

-- Location: LCCOMB_X47_Y40_N0
\card_a|biphase|sig_main[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_main[1]~13_combout\ = (\card_a|biphase|sig_main\(0) & (\card_a|biphase|sig_main\(1) $ (VCC))) # (!\card_a|biphase|sig_main\(0) & (\card_a|biphase|sig_main\(1) & VCC))
-- \card_a|biphase|sig_main[1]~14\ = CARRY((\card_a|biphase|sig_main\(0) & \card_a|biphase|sig_main\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|biphase|sig_main\(0),
	datab => \card_a|biphase|sig_main\(1),
	datad => VCC,
	combout => \card_a|biphase|sig_main[1]~13_combout\,
	cout => \card_a|biphase|sig_main[1]~14\);

-- Location: FF_X47_Y40_N1
\card_a|biphase|sig_main[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_main[1]~13_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_main\(1));

-- Location: LCCOMB_X47_Y40_N2
\card_a|biphase|sig_main[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_main[2]~15_combout\ = (\card_a|biphase|sig_main\(2) & (!\card_a|biphase|sig_main[1]~14\)) # (!\card_a|biphase|sig_main\(2) & ((\card_a|biphase|sig_main[1]~14\) # (GND)))
-- \card_a|biphase|sig_main[2]~16\ = CARRY((!\card_a|biphase|sig_main[1]~14\) # (!\card_a|biphase|sig_main\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \card_a|biphase|sig_main\(2),
	datad => VCC,
	cin => \card_a|biphase|sig_main[1]~14\,
	combout => \card_a|biphase|sig_main[2]~15_combout\,
	cout => \card_a|biphase|sig_main[2]~16\);

-- Location: FF_X47_Y40_N3
\card_a|biphase|sig_main[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_main[2]~15_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_main\(2));

-- Location: LCCOMB_X47_Y40_N4
\card_a|biphase|sig_main[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_main[3]~17_combout\ = (\card_a|biphase|sig_main\(3) & (\card_a|biphase|sig_main[2]~16\ $ (GND))) # (!\card_a|biphase|sig_main\(3) & (!\card_a|biphase|sig_main[2]~16\ & VCC))
-- \card_a|biphase|sig_main[3]~18\ = CARRY((\card_a|biphase|sig_main\(3) & !\card_a|biphase|sig_main[2]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \card_a|biphase|sig_main\(3),
	datad => VCC,
	cin => \card_a|biphase|sig_main[2]~16\,
	combout => \card_a|biphase|sig_main[3]~17_combout\,
	cout => \card_a|biphase|sig_main[3]~18\);

-- Location: FF_X47_Y40_N5
\card_a|biphase|sig_main[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_main[3]~17_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_main\(3));

-- Location: LCCOMB_X47_Y40_N6
\card_a|biphase|sig_main[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_main[4]~19_combout\ = (\card_a|biphase|sig_main\(4) & (!\card_a|biphase|sig_main[3]~18\)) # (!\card_a|biphase|sig_main\(4) & ((\card_a|biphase|sig_main[3]~18\) # (GND)))
-- \card_a|biphase|sig_main[4]~20\ = CARRY((!\card_a|biphase|sig_main[3]~18\) # (!\card_a|biphase|sig_main\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|biphase|sig_main\(4),
	datad => VCC,
	cin => \card_a|biphase|sig_main[3]~18\,
	combout => \card_a|biphase|sig_main[4]~19_combout\,
	cout => \card_a|biphase|sig_main[4]~20\);

-- Location: FF_X47_Y40_N7
\card_a|biphase|sig_main[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_main[4]~19_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_main\(4));

-- Location: LCCOMB_X47_Y40_N8
\card_a|biphase|sig_main[5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_main[5]~21_combout\ = (\card_a|biphase|sig_main\(5) & (\card_a|biphase|sig_main[4]~20\ $ (GND))) # (!\card_a|biphase|sig_main\(5) & (!\card_a|biphase|sig_main[4]~20\ & VCC))
-- \card_a|biphase|sig_main[5]~22\ = CARRY((\card_a|biphase|sig_main\(5) & !\card_a|biphase|sig_main[4]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \card_a|biphase|sig_main\(5),
	datad => VCC,
	cin => \card_a|biphase|sig_main[4]~20\,
	combout => \card_a|biphase|sig_main[5]~21_combout\,
	cout => \card_a|biphase|sig_main[5]~22\);

-- Location: FF_X47_Y40_N9
\card_a|biphase|sig_main[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_main[5]~21_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_main\(5));

-- Location: LCCOMB_X47_Y40_N10
\card_a|biphase|sig_main[6]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_main[6]~23_combout\ = (\card_a|biphase|sig_main\(6) & (!\card_a|biphase|sig_main[5]~22\)) # (!\card_a|biphase|sig_main\(6) & ((\card_a|biphase|sig_main[5]~22\) # (GND)))
-- \card_a|biphase|sig_main[6]~24\ = CARRY((!\card_a|biphase|sig_main[5]~22\) # (!\card_a|biphase|sig_main\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|biphase|sig_main\(6),
	datad => VCC,
	cin => \card_a|biphase|sig_main[5]~22\,
	combout => \card_a|biphase|sig_main[6]~23_combout\,
	cout => \card_a|biphase|sig_main[6]~24\);

-- Location: FF_X47_Y40_N11
\card_a|biphase|sig_main[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_main[6]~23_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_main\(6));

-- Location: LCCOMB_X47_Y40_N12
\card_a|biphase|sig_main[7]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_main[7]~25_combout\ = (\card_a|biphase|sig_main\(7) & (\card_a|biphase|sig_main[6]~24\ $ (GND))) # (!\card_a|biphase|sig_main\(7) & (!\card_a|biphase|sig_main[6]~24\ & VCC))
-- \card_a|biphase|sig_main[7]~26\ = CARRY((\card_a|biphase|sig_main\(7) & !\card_a|biphase|sig_main[6]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|biphase|sig_main\(7),
	datad => VCC,
	cin => \card_a|biphase|sig_main[6]~24\,
	combout => \card_a|biphase|sig_main[7]~25_combout\,
	cout => \card_a|biphase|sig_main[7]~26\);

-- Location: FF_X47_Y40_N13
\card_a|biphase|sig_main[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_main[7]~25_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_main\(7));

-- Location: LCCOMB_X47_Y40_N14
\card_a|biphase|sig_main[8]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_main[8]~27_combout\ = (\card_a|biphase|sig_main\(8) & (!\card_a|biphase|sig_main[7]~26\)) # (!\card_a|biphase|sig_main\(8) & ((\card_a|biphase|sig_main[7]~26\) # (GND)))
-- \card_a|biphase|sig_main[8]~28\ = CARRY((!\card_a|biphase|sig_main[7]~26\) # (!\card_a|biphase|sig_main\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \card_a|biphase|sig_main\(8),
	datad => VCC,
	cin => \card_a|biphase|sig_main[7]~26\,
	combout => \card_a|biphase|sig_main[8]~27_combout\,
	cout => \card_a|biphase|sig_main[8]~28\);

-- Location: FF_X47_Y40_N15
\card_a|biphase|sig_main[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_main[8]~27_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_main\(8));

-- Location: LCCOMB_X47_Y40_N16
\card_a|biphase|sig_main[9]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_main[9]~29_combout\ = (\card_a|biphase|sig_main\(9) & (\card_a|biphase|sig_main[8]~28\ $ (GND))) # (!\card_a|biphase|sig_main\(9) & (!\card_a|biphase|sig_main[8]~28\ & VCC))
-- \card_a|biphase|sig_main[9]~30\ = CARRY((\card_a|biphase|sig_main\(9) & !\card_a|biphase|sig_main[8]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \card_a|biphase|sig_main\(9),
	datad => VCC,
	cin => \card_a|biphase|sig_main[8]~28\,
	combout => \card_a|biphase|sig_main[9]~29_combout\,
	cout => \card_a|biphase|sig_main[9]~30\);

-- Location: FF_X47_Y40_N17
\card_a|biphase|sig_main[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_main[9]~29_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_main\(9));

-- Location: LCCOMB_X47_Y40_N18
\card_a|biphase|sig_main[10]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_main[10]~31_combout\ = (\card_a|biphase|sig_main\(10) & (!\card_a|biphase|sig_main[9]~30\)) # (!\card_a|biphase|sig_main\(10) & ((\card_a|biphase|sig_main[9]~30\) # (GND)))
-- \card_a|biphase|sig_main[10]~32\ = CARRY((!\card_a|biphase|sig_main[9]~30\) # (!\card_a|biphase|sig_main\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \card_a|biphase|sig_main\(10),
	datad => VCC,
	cin => \card_a|biphase|sig_main[9]~30\,
	combout => \card_a|biphase|sig_main[10]~31_combout\,
	cout => \card_a|biphase|sig_main[10]~32\);

-- Location: FF_X47_Y40_N19
\card_a|biphase|sig_main[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_main[10]~31_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_main\(10));

-- Location: LCCOMB_X47_Y40_N20
\card_a|biphase|sig_main[11]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_main[11]~33_combout\ = (\card_a|biphase|sig_main\(11) & (\card_a|biphase|sig_main[10]~32\ $ (GND))) # (!\card_a|biphase|sig_main\(11) & (!\card_a|biphase|sig_main[10]~32\ & VCC))
-- \card_a|biphase|sig_main[11]~34\ = CARRY((\card_a|biphase|sig_main\(11) & !\card_a|biphase|sig_main[10]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \card_a|biphase|sig_main\(11),
	datad => VCC,
	cin => \card_a|biphase|sig_main[10]~32\,
	combout => \card_a|biphase|sig_main[11]~33_combout\,
	cout => \card_a|biphase|sig_main[11]~34\);

-- Location: FF_X47_Y40_N21
\card_a|biphase|sig_main[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_main[11]~33_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_main\(11));

-- Location: LCCOMB_X47_Y40_N22
\card_a|biphase|sig_main[12]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_main[12]~35_combout\ = (\card_a|biphase|sig_main\(12) & (!\card_a|biphase|sig_main[11]~34\)) # (!\card_a|biphase|sig_main\(12) & ((\card_a|biphase|sig_main[11]~34\) # (GND)))
-- \card_a|biphase|sig_main[12]~36\ = CARRY((!\card_a|biphase|sig_main[11]~34\) # (!\card_a|biphase|sig_main\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|biphase|sig_main\(12),
	datad => VCC,
	cin => \card_a|biphase|sig_main[11]~34\,
	combout => \card_a|biphase|sig_main[12]~35_combout\,
	cout => \card_a|biphase|sig_main[12]~36\);

-- Location: FF_X47_Y40_N23
\card_a|biphase|sig_main[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_main[12]~35_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_main\(12));

-- Location: LCCOMB_X47_Y40_N24
\card_a|biphase|sig_main[13]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_main[13]~37_combout\ = \card_a|biphase|sig_main[12]~36\ $ (!\card_a|biphase|sig_main\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \card_a|biphase|sig_main\(13),
	cin => \card_a|biphase|sig_main[12]~36\,
	combout => \card_a|biphase|sig_main[13]~37_combout\);

-- Location: FF_X47_Y40_N25
\card_a|biphase|sig_main[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_main[13]~37_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_main\(13));

-- Location: LCCOMB_X47_Y40_N26
\card_a|biphase|sig_cut~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_cut~feeder_combout\ = \card_a|biphase|sig_main\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \card_a|biphase|sig_main\(13),
	combout => \card_a|biphase|sig_cut~feeder_combout\);

-- Location: FF_X47_Y40_N27
\card_a|biphase|sig_cut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_cut~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_cut~q\);

-- Location: FF_X47_Y39_N17
\card_a|biphase|sig_cut_not\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \card_a|biphase|sig_cut~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_cut_not~q\);

-- Location: LCCOMB_X47_Y39_N18
\card_a|biphase|main_rising_edge\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|main_rising_edge~combout\ = (!\card_a|biphase|sig_cut_not~q\ & \card_a|biphase|sig_cut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_a|biphase|sig_cut_not~q\,
	datac => \card_a|biphase|sig_cut~q\,
	combout => \card_a|biphase|main_rising_edge~combout\);

-- Location: FF_X51_Y39_N1
\card_a|biphase|state_bi.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \card_a|biphase|state_bi.s2~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \card_a|biphase|main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|state_bi.s3~q\);

-- Location: LCCOMB_X51_Y39_N28
\card_a|biphase|state_bi.s4~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|state_bi.s4~feeder_combout\ = \card_a|biphase|state_bi.s3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \card_a|biphase|state_bi.s3~q\,
	combout => \card_a|biphase|state_bi.s4~feeder_combout\);

-- Location: FF_X51_Y39_N29
\card_a|biphase|state_bi.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|state_bi.s4~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|biphase|main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|state_bi.s4~q\);

-- Location: FF_X47_Y39_N15
\card_a|biphase|state_bi.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \card_a|biphase|state_bi.s4~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \card_a|biphase|main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|state_bi.s5~q\);

-- Location: FF_X47_Y39_N27
\card_a|biphase|state_bi.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \card_a|biphase|state_bi.s5~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \card_a|biphase|main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|state_bi.s6~q\);

-- Location: FF_X47_Y39_N25
\card_a|biphase|state_bi.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \card_a|biphase|state_bi.s6~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \card_a|biphase|main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|state_bi.s7~q\);

-- Location: LCCOMB_X47_Y39_N22
\card_a|biphase|state_bi.s0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|state_bi.s0~0_combout\ = !\card_a|biphase|state_bi.s7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \card_a|biphase|state_bi.s7~q\,
	combout => \card_a|biphase|state_bi.s0~0_combout\);

-- Location: FF_X47_Y39_N23
\card_a|biphase|state_bi.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|state_bi.s0~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|biphase|main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|state_bi.s0~q\);

-- Location: LCCOMB_X51_Y39_N20
\card_a|biphase|state_bi.s1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|state_bi.s1~0_combout\ = !\card_a|biphase|state_bi.s0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_a|biphase|state_bi.s0~q\,
	combout => \card_a|biphase|state_bi.s1~0_combout\);

-- Location: FF_X51_Y39_N21
\card_a|biphase|state_bi.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|state_bi.s1~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|biphase|main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|state_bi.s1~q\);

-- Location: LCCOMB_X51_Y39_N12
\card_a|biphase|state_bi.s2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|state_bi.s2~feeder_combout\ = \card_a|biphase|state_bi.s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \card_a|biphase|state_bi.s1~q\,
	combout => \card_a|biphase|state_bi.s2~feeder_combout\);

-- Location: FF_X51_Y39_N13
\card_a|biphase|state_bi.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|state_bi.s2~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|biphase|main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|state_bi.s2~q\);

-- Location: LCCOMB_X51_Y39_N8
\card_a|biphase|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|Selector1~0_combout\ = (\card_a|biphase|state_bi.s1~q\) # ((!\card_a|biphase|state_bi.s2~q\ & \card_a|biphase|sig_read~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_a|biphase|state_bi.s2~q\,
	datac => \card_a|biphase|sig_read~q\,
	datad => \card_a|biphase|state_bi.s1~q\,
	combout => \card_a|biphase|Selector1~0_combout\);

-- Location: FF_X51_Y39_N9
\card_a|biphase|sig_read\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|Selector1~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|biphase|main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_read~q\);

-- Location: LCCOMB_X41_Y34_N24
\card_a|rx|main_rx:var_clk_cntr[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|main_rx:var_clk_cntr[0]~0_combout\ = !\card_a|rx|main_rx:var_clk_cntr[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_a|rx|main_rx:var_clk_cntr[0]~q\,
	combout => \card_a|rx|main_rx:var_clk_cntr[0]~0_combout\);

-- Location: LCCOMB_X41_Y34_N20
\card_a|rx|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Selector17~0_combout\ = (\card_a|rx|main_rx:var_clk_cntr[5]~q\ & ((!\card_a|rx|Equal2~0_combout\) # (!\card_a|rx|main_rx:var_clk_cntr[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|main_rx:var_clk_cntr[4]~q\,
	datac => \card_a|rx|main_rx:var_clk_cntr[5]~q\,
	datad => \card_a|rx|Equal2~0_combout\,
	combout => \card_a|rx|Selector17~0_combout\);

-- Location: FF_X41_Y34_N21
\card_a|rx|main_rx:var_clk_cntr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Selector17~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|rx|main_rx:var_clk_cntr[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|main_rx:var_clk_cntr[5]~q\);

-- Location: LCCOMB_X41_Y32_N30
\card_a|rx|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Equal2~1_combout\ = (\card_a|rx|main_rx:var_clk_cntr[4]~q\ & (!\card_a|rx|main_rx:var_clk_cntr[5]~q\ & \card_a|rx|Equal2~0_combout\)) # (!\card_a|rx|main_rx:var_clk_cntr[4]~q\ & (\card_a|rx|main_rx:var_clk_cntr[5]~q\ & 
-- !\card_a|rx|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_a|rx|main_rx:var_clk_cntr[4]~q\,
	datac => \card_a|rx|main_rx:var_clk_cntr[5]~q\,
	datad => \card_a|rx|Equal2~0_combout\,
	combout => \card_a|rx|Equal2~1_combout\);

-- Location: FF_X41_Y32_N21
\card_a|rx|baud_rate_clk:var_cntr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Add0~12_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|baud_rate_clk:var_cntr[6]~q\);

-- Location: LCCOMB_X41_Y32_N8
\card_a|rx|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Add0~0_combout\ = \card_a|rx|baud_rate_clk:var_cntr[0]~q\ $ (VCC)
-- \card_a|rx|Add0~1\ = CARRY(\card_a|rx|baud_rate_clk:var_cntr[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|baud_rate_clk:var_cntr[0]~q\,
	datad => VCC,
	combout => \card_a|rx|Add0~0_combout\,
	cout => \card_a|rx|Add0~1\);

-- Location: FF_X41_Y32_N9
\card_a|rx|baud_rate_clk:var_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Add0~0_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|baud_rate_clk:var_cntr[0]~q\);

-- Location: LCCOMB_X41_Y32_N10
\card_a|rx|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Add0~2_combout\ = (\card_a|rx|baud_rate_clk:var_cntr[1]~q\ & (!\card_a|rx|Add0~1\)) # (!\card_a|rx|baud_rate_clk:var_cntr[1]~q\ & ((\card_a|rx|Add0~1\) # (GND)))
-- \card_a|rx|Add0~3\ = CARRY((!\card_a|rx|Add0~1\) # (!\card_a|rx|baud_rate_clk:var_cntr[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \card_a|rx|baud_rate_clk:var_cntr[1]~q\,
	datad => VCC,
	cin => \card_a|rx|Add0~1\,
	combout => \card_a|rx|Add0~2_combout\,
	cout => \card_a|rx|Add0~3\);

-- Location: FF_X41_Y32_N11
\card_a|rx|baud_rate_clk:var_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Add0~2_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|baud_rate_clk:var_cntr[1]~q\);

-- Location: LCCOMB_X41_Y32_N12
\card_a|rx|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Add0~4_combout\ = (\card_a|rx|baud_rate_clk:var_cntr[2]~q\ & (\card_a|rx|Add0~3\ $ (GND))) # (!\card_a|rx|baud_rate_clk:var_cntr[2]~q\ & (!\card_a|rx|Add0~3\ & VCC))
-- \card_a|rx|Add0~5\ = CARRY((\card_a|rx|baud_rate_clk:var_cntr[2]~q\ & !\card_a|rx|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|baud_rate_clk:var_cntr[2]~q\,
	datad => VCC,
	cin => \card_a|rx|Add0~3\,
	combout => \card_a|rx|Add0~4_combout\,
	cout => \card_a|rx|Add0~5\);

-- Location: LCCOMB_X41_Y32_N26
\card_a|rx|var_cntr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|var_cntr~0_combout\ = (!\card_a|rx|Equal0~1_combout\ & \card_a|rx|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_a|rx|Equal0~1_combout\,
	datad => \card_a|rx|Add0~4_combout\,
	combout => \card_a|rx|var_cntr~0_combout\);

-- Location: FF_X41_Y32_N27
\card_a|rx|baud_rate_clk:var_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|var_cntr~0_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|baud_rate_clk:var_cntr[2]~q\);

-- Location: LCCOMB_X41_Y32_N14
\card_a|rx|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Add0~6_combout\ = (\card_a|rx|baud_rate_clk:var_cntr[3]~q\ & (!\card_a|rx|Add0~5\)) # (!\card_a|rx|baud_rate_clk:var_cntr[3]~q\ & ((\card_a|rx|Add0~5\) # (GND)))
-- \card_a|rx|Add0~7\ = CARRY((!\card_a|rx|Add0~5\) # (!\card_a|rx|baud_rate_clk:var_cntr[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|baud_rate_clk:var_cntr[3]~q\,
	datad => VCC,
	cin => \card_a|rx|Add0~5\,
	combout => \card_a|rx|Add0~6_combout\,
	cout => \card_a|rx|Add0~7\);

-- Location: FF_X41_Y32_N15
\card_a|rx|baud_rate_clk:var_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Add0~6_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|baud_rate_clk:var_cntr[3]~q\);

-- Location: LCCOMB_X41_Y32_N16
\card_a|rx|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Add0~8_combout\ = (\card_a|rx|baud_rate_clk:var_cntr[4]~q\ & (\card_a|rx|Add0~7\ $ (GND))) # (!\card_a|rx|baud_rate_clk:var_cntr[4]~q\ & (!\card_a|rx|Add0~7\ & VCC))
-- \card_a|rx|Add0~9\ = CARRY((\card_a|rx|baud_rate_clk:var_cntr[4]~q\ & !\card_a|rx|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|baud_rate_clk:var_cntr[4]~q\,
	datad => VCC,
	cin => \card_a|rx|Add0~7\,
	combout => \card_a|rx|Add0~8_combout\,
	cout => \card_a|rx|Add0~9\);

-- Location: LCCOMB_X41_Y32_N2
\card_a|rx|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Equal0~0_combout\ = (!\card_a|rx|Add0~2_combout\ & (!\card_a|rx|Add0~6_combout\ & (!\card_a|rx|Add0~0_combout\ & \card_a|rx|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|Add0~2_combout\,
	datab => \card_a|rx|Add0~6_combout\,
	datac => \card_a|rx|Add0~0_combout\,
	datad => \card_a|rx|Add0~4_combout\,
	combout => \card_a|rx|Equal0~0_combout\);

-- Location: LCCOMB_X41_Y32_N6
\card_a|rx|var_cntr~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|var_cntr~1_combout\ = (\card_a|rx|Add0~8_combout\ & ((\card_a|rx|Add0~12_combout\) # ((\card_a|rx|Add0~10_combout\) # (!\card_a|rx|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|Add0~12_combout\,
	datab => \card_a|rx|Add0~8_combout\,
	datac => \card_a|rx|Add0~10_combout\,
	datad => \card_a|rx|Equal0~0_combout\,
	combout => \card_a|rx|var_cntr~1_combout\);

-- Location: FF_X41_Y32_N7
\card_a|rx|baud_rate_clk:var_cntr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|var_cntr~1_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|baud_rate_clk:var_cntr[4]~q\);

-- Location: LCCOMB_X41_Y32_N18
\card_a|rx|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Add0~10_combout\ = (\card_a|rx|baud_rate_clk:var_cntr[5]~q\ & (!\card_a|rx|Add0~9\)) # (!\card_a|rx|baud_rate_clk:var_cntr[5]~q\ & ((\card_a|rx|Add0~9\) # (GND)))
-- \card_a|rx|Add0~11\ = CARRY((!\card_a|rx|Add0~9\) # (!\card_a|rx|baud_rate_clk:var_cntr[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \card_a|rx|baud_rate_clk:var_cntr[5]~q\,
	datad => VCC,
	cin => \card_a|rx|Add0~9\,
	combout => \card_a|rx|Add0~10_combout\,
	cout => \card_a|rx|Add0~11\);

-- Location: FF_X41_Y32_N19
\card_a|rx|baud_rate_clk:var_cntr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Add0~10_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|baud_rate_clk:var_cntr[5]~q\);

-- Location: LCCOMB_X41_Y32_N20
\card_a|rx|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Add0~12_combout\ = \card_a|rx|Add0~11\ $ (!\card_a|rx|baud_rate_clk:var_cntr[6]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \card_a|rx|baud_rate_clk:var_cntr[6]~q\,
	cin => \card_a|rx|Add0~11\,
	combout => \card_a|rx|Add0~12_combout\);

-- Location: LCCOMB_X41_Y32_N22
\card_a|rx|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Equal0~1_combout\ = (!\card_a|rx|Add0~12_combout\ & (\card_a|rx|Add0~8_combout\ & (!\card_a|rx|Add0~10_combout\ & \card_a|rx|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|Add0~12_combout\,
	datab => \card_a|rx|Add0~8_combout\,
	datac => \card_a|rx|Add0~10_combout\,
	datad => \card_a|rx|Equal0~0_combout\,
	combout => \card_a|rx|Equal0~1_combout\);

-- Location: LCCOMB_X41_Y32_N4
\card_a|rx|sig_baudx32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|sig_baudx32~0_combout\ = \card_a|rx|Equal0~1_combout\ $ (\card_a|rx|sig_baudx32~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|Equal0~1_combout\,
	datac => \card_a|rx|sig_baudx32~q\,
	combout => \card_a|rx|sig_baudx32~0_combout\);

-- Location: FF_X41_Y32_N5
\card_a|rx|sig_baudx32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|sig_baudx32~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|sig_baudx32~q\);

-- Location: FF_X41_Y32_N13
\card_a|rx|signal_A_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \card_a|rx|sig_baudx32~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|signal_A_q~q\);

-- Location: FF_X41_Y32_N1
\card_a|rx|signal_A_q_not\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \card_a|rx|signal_A_q~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|signal_A_q_not~q\);

-- Location: LCCOMB_X41_Y32_N28
\card_a|rx|state_rx~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|state_rx~16_combout\ = (\card_a|rx|Equal2~1_combout\ & (!\card_a|rx|signal_A_q_not~q\ & (\card_a|rx|signal_A_q~q\ & \card_a|rx|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|Equal2~1_combout\,
	datab => \card_a|rx|signal_A_q_not~q\,
	datac => \card_a|rx|signal_A_q~q\,
	datad => \card_a|rx|Equal2~0_combout\,
	combout => \card_a|rx|state_rx~16_combout\);

-- Location: LCCOMB_X41_Y35_N22
\card_a|rx|sig_data_bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|sig_data_bit~0_combout\ = (\card_a|rx|main_rx:var_clk_cntr[4]~0_combout\ & (\resetn~input_o\ & \card_a|rx|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_a|rx|main_rx:var_clk_cntr[4]~0_combout\,
	datac => \resetn~input_o\,
	datad => \card_a|rx|Equal3~0_combout\,
	combout => \card_a|rx|sig_data_bit~0_combout\);

-- Location: FF_X55_Y40_N23
\card_a|tx|baud_clock:cnt_baud[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|Add0~16_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|baud_clock:cnt_baud[8]~q\);

-- Location: LCCOMB_X55_Y40_N30
\card_a|tx|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Equal0~1_combout\ = (!\card_a|tx|Add0~10_combout\ & (!\card_a|tx|Add0~12_combout\ & (!\card_a|tx|Add0~8_combout\ & \card_a|tx|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|Add0~10_combout\,
	datab => \card_a|tx|Add0~12_combout\,
	datac => \card_a|tx|Add0~8_combout\,
	datad => \card_a|tx|Add0~14_combout\,
	combout => \card_a|tx|Equal0~1_combout\);

-- Location: LCCOMB_X55_Y40_N6
\card_a|tx|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Add0~0_combout\ = \card_a|tx|baud_clock:cnt_baud[0]~q\ $ (VCC)
-- \card_a|tx|Add0~1\ = CARRY(\card_a|tx|baud_clock:cnt_baud[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_a|tx|baud_clock:cnt_baud[0]~q\,
	datad => VCC,
	combout => \card_a|tx|Add0~0_combout\,
	cout => \card_a|tx|Add0~1\);

-- Location: LCCOMB_X56_Y40_N22
\card_a|tx|cnt_baud~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|cnt_baud~0_combout\ = (\card_a|tx|Add0~16_combout\) # (!\card_a|tx|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|Equal0~0_combout\,
	datad => \card_a|tx|Add0~16_combout\,
	combout => \card_a|tx|cnt_baud~0_combout\);

-- Location: LCCOMB_X55_Y40_N0
\card_a|tx|cnt_baud~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|cnt_baud~1_combout\ = (\card_a|tx|Add0~0_combout\ & (((\card_a|tx|cnt_baud~0_combout\) # (!\card_a|tx|Equal0~1_combout\)) # (!\card_a|tx|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|Add0~0_combout\,
	datab => \card_a|tx|Add0~18_combout\,
	datac => \card_a|tx|Equal0~1_combout\,
	datad => \card_a|tx|cnt_baud~0_combout\,
	combout => \card_a|tx|cnt_baud~1_combout\);

-- Location: FF_X55_Y40_N1
\card_a|tx|baud_clock:cnt_baud[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|cnt_baud~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|baud_clock:cnt_baud[0]~q\);

-- Location: LCCOMB_X55_Y40_N8
\card_a|tx|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Add0~2_combout\ = (\card_a|tx|baud_clock:cnt_baud[1]~q\ & (!\card_a|tx|Add0~1\)) # (!\card_a|tx|baud_clock:cnt_baud[1]~q\ & ((\card_a|tx|Add0~1\) # (GND)))
-- \card_a|tx|Add0~3\ = CARRY((!\card_a|tx|Add0~1\) # (!\card_a|tx|baud_clock:cnt_baud[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|baud_clock:cnt_baud[1]~q\,
	datad => VCC,
	cin => \card_a|tx|Add0~1\,
	combout => \card_a|tx|Add0~2_combout\,
	cout => \card_a|tx|Add0~3\);

-- Location: LCCOMB_X55_Y40_N26
\card_a|tx|cnt_baud~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|cnt_baud~2_combout\ = (\card_a|tx|Add0~2_combout\ & (((\card_a|tx|cnt_baud~0_combout\) # (!\card_a|tx|Add0~18_combout\)) # (!\card_a|tx|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|Equal0~1_combout\,
	datab => \card_a|tx|Add0~18_combout\,
	datac => \card_a|tx|Add0~2_combout\,
	datad => \card_a|tx|cnt_baud~0_combout\,
	combout => \card_a|tx|cnt_baud~2_combout\);

-- Location: FF_X55_Y40_N27
\card_a|tx|baud_clock:cnt_baud[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|cnt_baud~2_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|baud_clock:cnt_baud[1]~q\);

-- Location: LCCOMB_X55_Y40_N10
\card_a|tx|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Add0~4_combout\ = (\card_a|tx|baud_clock:cnt_baud[2]~q\ & (\card_a|tx|Add0~3\ $ (GND))) # (!\card_a|tx|baud_clock:cnt_baud[2]~q\ & (!\card_a|tx|Add0~3\ & VCC))
-- \card_a|tx|Add0~5\ = CARRY((\card_a|tx|baud_clock:cnt_baud[2]~q\ & !\card_a|tx|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|baud_clock:cnt_baud[2]~q\,
	datad => VCC,
	cin => \card_a|tx|Add0~3\,
	combout => \card_a|tx|Add0~4_combout\,
	cout => \card_a|tx|Add0~5\);

-- Location: FF_X55_Y40_N11
\card_a|tx|baud_clock:cnt_baud[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|Add0~4_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|baud_clock:cnt_baud[2]~q\);

-- Location: LCCOMB_X55_Y40_N12
\card_a|tx|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Add0~6_combout\ = (\card_a|tx|baud_clock:cnt_baud[3]~q\ & (!\card_a|tx|Add0~5\)) # (!\card_a|tx|baud_clock:cnt_baud[3]~q\ & ((\card_a|tx|Add0~5\) # (GND)))
-- \card_a|tx|Add0~7\ = CARRY((!\card_a|tx|Add0~5\) # (!\card_a|tx|baud_clock:cnt_baud[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \card_a|tx|baud_clock:cnt_baud[3]~q\,
	datad => VCC,
	cin => \card_a|tx|Add0~5\,
	combout => \card_a|tx|Add0~6_combout\,
	cout => \card_a|tx|Add0~7\);

-- Location: LCCOMB_X55_Y40_N14
\card_a|tx|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Add0~8_combout\ = (\card_a|tx|baud_clock:cnt_baud[4]~q\ & (\card_a|tx|Add0~7\ $ (GND))) # (!\card_a|tx|baud_clock:cnt_baud[4]~q\ & (!\card_a|tx|Add0~7\ & VCC))
-- \card_a|tx|Add0~9\ = CARRY((\card_a|tx|baud_clock:cnt_baud[4]~q\ & !\card_a|tx|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|baud_clock:cnt_baud[4]~q\,
	datad => VCC,
	cin => \card_a|tx|Add0~7\,
	combout => \card_a|tx|Add0~8_combout\,
	cout => \card_a|tx|Add0~9\);

-- Location: FF_X55_Y40_N15
\card_a|tx|baud_clock:cnt_baud[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|Add0~8_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|baud_clock:cnt_baud[4]~q\);

-- Location: LCCOMB_X55_Y40_N16
\card_a|tx|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Add0~10_combout\ = (\card_a|tx|baud_clock:cnt_baud[5]~q\ & (!\card_a|tx|Add0~9\)) # (!\card_a|tx|baud_clock:cnt_baud[5]~q\ & ((\card_a|tx|Add0~9\) # (GND)))
-- \card_a|tx|Add0~11\ = CARRY((!\card_a|tx|Add0~9\) # (!\card_a|tx|baud_clock:cnt_baud[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \card_a|tx|baud_clock:cnt_baud[5]~q\,
	datad => VCC,
	cin => \card_a|tx|Add0~9\,
	combout => \card_a|tx|Add0~10_combout\,
	cout => \card_a|tx|Add0~11\);

-- Location: FF_X55_Y40_N17
\card_a|tx|baud_clock:cnt_baud[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|Add0~10_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|baud_clock:cnt_baud[5]~q\);

-- Location: LCCOMB_X55_Y40_N18
\card_a|tx|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Add0~12_combout\ = (\card_a|tx|baud_clock:cnt_baud[6]~q\ & (\card_a|tx|Add0~11\ $ (GND))) # (!\card_a|tx|baud_clock:cnt_baud[6]~q\ & (!\card_a|tx|Add0~11\ & VCC))
-- \card_a|tx|Add0~13\ = CARRY((\card_a|tx|baud_clock:cnt_baud[6]~q\ & !\card_a|tx|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|baud_clock:cnt_baud[6]~q\,
	datad => VCC,
	cin => \card_a|tx|Add0~11\,
	combout => \card_a|tx|Add0~12_combout\,
	cout => \card_a|tx|Add0~13\);

-- Location: FF_X55_Y40_N19
\card_a|tx|baud_clock:cnt_baud[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|Add0~12_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|baud_clock:cnt_baud[6]~q\);

-- Location: LCCOMB_X55_Y40_N20
\card_a|tx|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Add0~14_combout\ = (\card_a|tx|baud_clock:cnt_baud[7]~q\ & (!\card_a|tx|Add0~13\)) # (!\card_a|tx|baud_clock:cnt_baud[7]~q\ & ((\card_a|tx|Add0~13\) # (GND)))
-- \card_a|tx|Add0~15\ = CARRY((!\card_a|tx|Add0~13\) # (!\card_a|tx|baud_clock:cnt_baud[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \card_a|tx|baud_clock:cnt_baud[7]~q\,
	datad => VCC,
	cin => \card_a|tx|Add0~13\,
	combout => \card_a|tx|Add0~14_combout\,
	cout => \card_a|tx|Add0~15\);

-- Location: LCCOMB_X55_Y40_N28
\card_a|tx|cnt_baud~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|cnt_baud~4_combout\ = (\card_a|tx|Add0~14_combout\ & (((\card_a|tx|cnt_baud~0_combout\) # (!\card_a|tx|Equal0~1_combout\)) # (!\card_a|tx|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|Add0~14_combout\,
	datab => \card_a|tx|Add0~18_combout\,
	datac => \card_a|tx|Equal0~1_combout\,
	datad => \card_a|tx|cnt_baud~0_combout\,
	combout => \card_a|tx|cnt_baud~4_combout\);

-- Location: FF_X55_Y40_N29
\card_a|tx|baud_clock:cnt_baud[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|cnt_baud~4_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|baud_clock:cnt_baud[7]~q\);

-- Location: LCCOMB_X55_Y40_N22
\card_a|tx|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Add0~16_combout\ = (\card_a|tx|baud_clock:cnt_baud[8]~q\ & (\card_a|tx|Add0~15\ $ (GND))) # (!\card_a|tx|baud_clock:cnt_baud[8]~q\ & (!\card_a|tx|Add0~15\ & VCC))
-- \card_a|tx|Add0~17\ = CARRY((\card_a|tx|baud_clock:cnt_baud[8]~q\ & !\card_a|tx|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|baud_clock:cnt_baud[8]~q\,
	datad => VCC,
	cin => \card_a|tx|Add0~15\,
	combout => \card_a|tx|Add0~16_combout\,
	cout => \card_a|tx|Add0~17\);

-- Location: LCCOMB_X56_Y40_N18
\card_a|tx|cnt_baud~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|cnt_baud~5_combout\ = (\card_a|tx|Add0~18_combout\ & (((\card_a|tx|Add0~16_combout\) # (!\card_a|tx|Equal0~1_combout\)) # (!\card_a|tx|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|Equal0~0_combout\,
	datab => \card_a|tx|Add0~18_combout\,
	datac => \card_a|tx|Add0~16_combout\,
	datad => \card_a|tx|Equal0~1_combout\,
	combout => \card_a|tx|cnt_baud~5_combout\);

-- Location: FF_X56_Y40_N19
\card_a|tx|baud_clock:cnt_baud[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|cnt_baud~5_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|baud_clock:cnt_baud[9]~q\);

-- Location: LCCOMB_X55_Y40_N24
\card_a|tx|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Add0~18_combout\ = \card_a|tx|Add0~17\ $ (\card_a|tx|baud_clock:cnt_baud[9]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \card_a|tx|baud_clock:cnt_baud[9]~q\,
	cin => \card_a|tx|Add0~17\,
	combout => \card_a|tx|Add0~18_combout\);

-- Location: LCCOMB_X55_Y40_N4
\card_a|tx|cnt_baud~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|cnt_baud~3_combout\ = (\card_a|tx|Add0~6_combout\ & (((\card_a|tx|cnt_baud~0_combout\) # (!\card_a|tx|Equal0~1_combout\)) # (!\card_a|tx|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|Add0~6_combout\,
	datab => \card_a|tx|Add0~18_combout\,
	datac => \card_a|tx|Equal0~1_combout\,
	datad => \card_a|tx|cnt_baud~0_combout\,
	combout => \card_a|tx|cnt_baud~3_combout\);

-- Location: FF_X55_Y40_N5
\card_a|tx|baud_clock:cnt_baud[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|cnt_baud~3_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|baud_clock:cnt_baud[3]~q\);

-- Location: LCCOMB_X55_Y40_N2
\card_a|tx|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Equal0~0_combout\ = (\card_a|tx|Add0~6_combout\ & (!\card_a|tx|Add0~4_combout\ & (\card_a|tx|Add0~2_combout\ & \card_a|tx|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|Add0~6_combout\,
	datab => \card_a|tx|Add0~4_combout\,
	datac => \card_a|tx|Add0~2_combout\,
	datad => \card_a|tx|Add0~0_combout\,
	combout => \card_a|tx|Equal0~0_combout\);

-- Location: LCCOMB_X56_Y40_N12
\card_a|tx|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Equal0~2_combout\ = (\card_a|tx|Equal0~0_combout\ & (\card_a|tx|Add0~18_combout\ & (!\card_a|tx|Add0~16_combout\ & \card_a|tx|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|Equal0~0_combout\,
	datab => \card_a|tx|Add0~18_combout\,
	datac => \card_a|tx|Add0~16_combout\,
	datad => \card_a|tx|Equal0~1_combout\,
	combout => \card_a|tx|Equal0~2_combout\);

-- Location: LCCOMB_X56_Y40_N8
\card_a|tx|sig_baud_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|sig_baud_clk~0_combout\ = \card_a|tx|sig_baud_clk~q\ $ (\card_a|tx|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_a|tx|sig_baud_clk~q\,
	datad => \card_a|tx|Equal0~2_combout\,
	combout => \card_a|tx|sig_baud_clk~0_combout\);

-- Location: FF_X56_Y40_N9
\card_a|tx|sig_baud_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|sig_baud_clk~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|sig_baud_clk~q\);

-- Location: LCCOMB_X49_Y36_N16
\card_a|tx|signal_A_q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|signal_A_q~feeder_combout\ = \card_a|tx|sig_baud_clk~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \card_a|tx|sig_baud_clk~q\,
	combout => \card_a|tx|signal_A_q~feeder_combout\);

-- Location: FF_X49_Y36_N17
\card_a|tx|signal_A_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|signal_A_q~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|signal_A_q~q\);

-- Location: FF_X40_Y34_N1
\card_a|tx|signal_A_q_not\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \card_a|tx|signal_A_q~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|signal_A_q_not~q\);

-- Location: LCCOMB_X40_Y34_N0
\card_a|tx|sig_arising_edge\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|sig_arising_edge~combout\ = (\card_a|tx|signal_A_q~q\ & !\card_a|tx|signal_A_q_not~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_a|tx|signal_A_q~q\,
	datac => \card_a|tx|signal_A_q_not~q\,
	combout => \card_a|tx|sig_arising_edge~combout\);

-- Location: LCCOMB_X40_Y34_N24
\card_a|tx|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Selector12~0_combout\ = (!\card_a|tx|transmission:sig_cntr[1]~1_combout\ & (\card_a|tx|transmission:sig_cntr[1]~q\ $ (\card_a|tx|transmission:sig_cntr[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_a|tx|transmission:sig_cntr[1]~1_combout\,
	datac => \card_a|tx|transmission:sig_cntr[1]~q\,
	datad => \card_a|tx|transmission:sig_cntr[0]~q\,
	combout => \card_a|tx|Selector12~0_combout\);

-- Location: LCCOMB_X36_Y34_N0
\card_a|tx|state_tx.s4~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|state_tx.s4~feeder_combout\ = \card_a|tx|state_tx.s3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \card_a|tx|state_tx.s3~q\,
	combout => \card_a|tx|state_tx.s4~feeder_combout\);

-- Location: FF_X36_Y34_N1
\card_a|tx|state_tx.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|state_tx.s4~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|state_tx.s4~q\);

-- Location: FF_X36_Y34_N29
\card_a|tx|state_tx.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \card_a|tx|state_tx.s4~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|state_tx.s5~q\);

-- Location: LCCOMB_X36_Y34_N26
\card_a|tx|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Selector6~0_combout\ = (\card_a|tx|state_tx.s5~q\) # ((\card_a|tx|state_tx.s6~q\ & !\card_a|tx|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_a|tx|state_tx.s5~q\,
	datac => \card_a|tx|state_tx.s6~q\,
	datad => \card_a|tx|Equal2~0_combout\,
	combout => \card_a|tx|Selector6~0_combout\);

-- Location: FF_X36_Y34_N27
\card_a|tx|state_tx.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|Selector6~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|state_tx.s6~q\);

-- Location: LCCOMB_X40_Y34_N2
\card_a|tx|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Add1~0_combout\ = \card_a|tx|transmission:sig_cntr[3]~q\ $ (((\card_a|tx|transmission:sig_cntr[2]~q\ & (\card_a|tx|transmission:sig_cntr[1]~q\ & \card_a|tx|transmission:sig_cntr[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|transmission:sig_cntr[2]~q\,
	datab => \card_a|tx|transmission:sig_cntr[1]~q\,
	datac => \card_a|tx|transmission:sig_cntr[3]~q\,
	datad => \card_a|tx|transmission:sig_cntr[0]~q\,
	combout => \card_a|tx|Add1~0_combout\);

-- Location: LCCOMB_X40_Y34_N30
\card_a|tx|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Selector10~0_combout\ = (!\card_a|tx|transmission:sig_cntr[1]~1_combout\ & \card_a|tx|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_a|tx|transmission:sig_cntr[1]~1_combout\,
	datad => \card_a|tx|Add1~0_combout\,
	combout => \card_a|tx|Selector10~0_combout\);

-- Location: FF_X40_Y34_N31
\card_a|tx|transmission:sig_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|Selector10~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|tx|transmission:sig_cntr[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|transmission:sig_cntr[3]~q\);

-- Location: LCCOMB_X40_Y34_N4
\card_a|tx|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Equal3~0_combout\ = (!\card_a|tx|transmission:sig_cntr[2]~q\ & (\card_a|tx|transmission:sig_cntr[1]~q\ & (\card_a|tx|transmission:sig_cntr[3]~q\ & \card_a|tx|transmission:sig_cntr[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|transmission:sig_cntr[2]~q\,
	datab => \card_a|tx|transmission:sig_cntr[1]~q\,
	datac => \card_a|tx|transmission:sig_cntr[3]~q\,
	datad => \card_a|tx|transmission:sig_cntr[0]~q\,
	combout => \card_a|tx|Equal3~0_combout\);

-- Location: LCCOMB_X36_Y34_N16
\card_a|tx|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Selector7~0_combout\ = (\card_a|tx|state_tx.s6~q\ & \card_a|tx|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_a|tx|state_tx.s6~q\,
	datad => \card_a|tx|Equal2~0_combout\,
	combout => \card_a|tx|Selector7~0_combout\);

-- Location: FF_X36_Y34_N17
\card_a|tx|state_tx.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|Selector7~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|state_tx.s7~q\);

-- Location: LCCOMB_X37_Y34_N6
\card_a|tx|state_tx.s8~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|state_tx.s8~feeder_combout\ = \card_a|tx|state_tx.s7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_a|tx|state_tx.s7~q\,
	combout => \card_a|tx|state_tx.s8~feeder_combout\);

-- Location: FF_X37_Y34_N7
\card_a|tx|state_tx.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|state_tx.s8~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|state_tx.s8~q\);

-- Location: LCCOMB_X40_Y34_N10
\card_a|tx|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Selector9~0_combout\ = (\card_a|tx|state_tx.s8~q\) # ((\card_a|tx|state_tx.s9~q\ & ((!\card_a|tx|Equal3~0_combout\) # (!\card_a|tx|sig_arising_edge~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|sig_arising_edge~combout\,
	datab => \card_a|tx|Equal3~0_combout\,
	datac => \card_a|tx|state_tx.s9~q\,
	datad => \card_a|tx|state_tx.s8~q\,
	combout => \card_a|tx|Selector9~0_combout\);

-- Location: FF_X40_Y34_N11
\card_a|tx|state_tx.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|Selector9~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|state_tx.s9~q\);

-- Location: LCCOMB_X40_Y34_N28
\card_a|tx|state_tx~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|state_tx~28_combout\ = (\card_a|tx|state_tx.s9~q\ & (\card_a|tx|Equal3~0_combout\ & (\card_a|tx|signal_A_q~q\ & !\card_a|tx|signal_A_q_not~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|state_tx.s9~q\,
	datab => \card_a|tx|Equal3~0_combout\,
	datac => \card_a|tx|signal_A_q~q\,
	datad => \card_a|tx|signal_A_q_not~q\,
	combout => \card_a|tx|state_tx~28_combout\);

-- Location: FF_X40_Y34_N29
\card_a|tx|state_tx.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|state_tx~28_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|state_tx.s10~q\);

-- Location: LCCOMB_X36_Y34_N2
\card_a|tx|sig_address[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|sig_address[1]~5_combout\ = (\card_a|tx|sig_address\(1) & (\card_a|tx|sig_address\(0) $ (VCC))) # (!\card_a|tx|sig_address\(1) & (\card_a|tx|sig_address\(0) & VCC))
-- \card_a|tx|sig_address[1]~6\ = CARRY((\card_a|tx|sig_address\(1) & \card_a|tx|sig_address\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|sig_address\(1),
	datab => \card_a|tx|sig_address\(0),
	datad => VCC,
	combout => \card_a|tx|sig_address[1]~5_combout\,
	cout => \card_a|tx|sig_address[1]~6\);

-- Location: FF_X36_Y34_N3
\card_a|tx|sig_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|sig_address[1]~5_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|tx|state_tx.s3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|sig_address\(1));

-- Location: LCCOMB_X36_Y34_N4
\card_a|tx|sig_address[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|sig_address[2]~7_combout\ = (\card_a|tx|sig_address\(2) & (!\card_a|tx|sig_address[1]~6\)) # (!\card_a|tx|sig_address\(2) & ((\card_a|tx|sig_address[1]~6\) # (GND)))
-- \card_a|tx|sig_address[2]~8\ = CARRY((!\card_a|tx|sig_address[1]~6\) # (!\card_a|tx|sig_address\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \card_a|tx|sig_address\(2),
	datad => VCC,
	cin => \card_a|tx|sig_address[1]~6\,
	combout => \card_a|tx|sig_address[2]~7_combout\,
	cout => \card_a|tx|sig_address[2]~8\);

-- Location: FF_X36_Y34_N5
\card_a|tx|sig_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|sig_address[2]~7_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|tx|state_tx.s3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|sig_address\(2));

-- Location: LCCOMB_X36_Y34_N6
\card_a|tx|sig_address[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|sig_address[3]~9_combout\ = (\card_a|tx|sig_address\(3) & (\card_a|tx|sig_address[2]~8\ $ (GND))) # (!\card_a|tx|sig_address\(3) & (!\card_a|tx|sig_address[2]~8\ & VCC))
-- \card_a|tx|sig_address[3]~10\ = CARRY((\card_a|tx|sig_address\(3) & !\card_a|tx|sig_address[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|sig_address\(3),
	datad => VCC,
	cin => \card_a|tx|sig_address[2]~8\,
	combout => \card_a|tx|sig_address[3]~9_combout\,
	cout => \card_a|tx|sig_address[3]~10\);

-- Location: FF_X36_Y34_N7
\card_a|tx|sig_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|sig_address[3]~9_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|tx|state_tx.s3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|sig_address\(3));

-- Location: LCCOMB_X36_Y34_N18
\card_a|tx|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Equal4~0_combout\ = (!\card_a|tx|sig_address\(3) & (!\card_a|tx|sig_address\(1) & (!\card_a|tx|sig_address\(2) & !\card_a|tx|sig_address\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|sig_address\(3),
	datab => \card_a|tx|sig_address\(1),
	datac => \card_a|tx|sig_address\(2),
	datad => \card_a|tx|sig_address\(0),
	combout => \card_a|tx|Equal4~0_combout\);

-- Location: LCCOMB_X36_Y34_N8
\card_a|tx|sig_address[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|sig_address[4]~11_combout\ = \card_a|tx|sig_address[3]~10\ $ (\card_a|tx|sig_address\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \card_a|tx|sig_address\(4),
	cin => \card_a|tx|sig_address[3]~10\,
	combout => \card_a|tx|sig_address[4]~11_combout\);

-- Location: FF_X36_Y34_N9
\card_a|tx|sig_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|sig_address[4]~11_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|tx|state_tx.s3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|sig_address\(4));

-- Location: LCCOMB_X36_Y34_N20
\card_a|tx|Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Equal4~1_combout\ = (\card_a|tx|Equal4~0_combout\ & !\card_a|tx|sig_address\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_a|tx|Equal4~0_combout\,
	datad => \card_a|tx|sig_address\(4),
	combout => \card_a|tx|Equal4~1_combout\);

-- Location: LCCOMB_X47_Y39_N24
\card_a|biphase|sig_inc~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_inc~0_combout\ = (\resetn~input_o\ & (\card_a|biphase|sig_cut~q\ & !\card_a|biphase|sig_cut_not~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~input_o\,
	datab => \card_a|biphase|sig_cut~q\,
	datad => \card_a|biphase|sig_cut_not~q\,
	combout => \card_a|biphase|sig_inc~0_combout\);

-- Location: LCCOMB_X47_Y39_N12
\card_a|biphase|sig_inc~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_inc~1_combout\ = (\card_a|biphase|sig_inc~0_combout\ & ((\card_a|biphase|state_bi.s7~q\) # ((\card_a|biphase|state_bi.s0~q\ & \card_a|biphase|sig_inc~q\)))) # (!\card_a|biphase|sig_inc~0_combout\ & (((\card_a|biphase|sig_inc~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|biphase|state_bi.s0~q\,
	datab => \card_a|biphase|sig_inc~0_combout\,
	datac => \card_a|biphase|sig_inc~q\,
	datad => \card_a|biphase|state_bi.s7~q\,
	combout => \card_a|biphase|sig_inc~1_combout\);

-- Location: FF_X47_Y39_N13
\card_a|biphase|sig_inc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_inc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_inc~q\);

-- Location: LCCOMB_X50_Y36_N8
\card_a|biphase|state_mini.s3a~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|state_mini.s3a~feeder_combout\ = \card_a|biphase|state_mini.s2a~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \card_a|biphase|state_mini.s2a~q\,
	combout => \card_a|biphase|state_mini.s3a~feeder_combout\);

-- Location: FF_X50_Y36_N9
\card_a|biphase|state_mini.s3a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|state_mini.s3a~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|state_mini.s3a~q\);

-- Location: FF_X50_Y36_N31
\card_a|biphase|state_mini.s4a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \card_a|biphase|state_mini.s3a~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|state_mini.s4a~q\);

-- Location: FF_X50_Y36_N29
\card_a|biphase|state_mini.s5a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \card_a|biphase|state_mini.s4a~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|state_mini.s5a~q\);

-- Location: LCCOMB_X50_Y36_N14
\card_a|biphase|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|Selector2~0_combout\ = (!\card_a|biphase|state_mini.s5a~q\ & ((\card_a|biphase|sig_inc~q\) # (\card_a|biphase|state_mini.s0a~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_a|biphase|sig_inc~q\,
	datac => \card_a|biphase|state_mini.s0a~q\,
	datad => \card_a|biphase|state_mini.s5a~q\,
	combout => \card_a|biphase|Selector2~0_combout\);

-- Location: FF_X50_Y36_N15
\card_a|biphase|state_mini.s0a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|Selector2~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|state_mini.s0a~q\);

-- Location: LCCOMB_X50_Y36_N4
\card_a|biphase|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|Selector3~0_combout\ = (\card_a|biphase|sig_inc~q\ & ((\card_a|biphase|state_mini.s1a~q\) # (!\card_a|biphase|state_mini.s0a~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_a|biphase|state_mini.s0a~q\,
	datac => \card_a|biphase|state_mini.s1a~q\,
	datad => \card_a|biphase|sig_inc~q\,
	combout => \card_a|biphase|Selector3~0_combout\);

-- Location: FF_X50_Y36_N5
\card_a|biphase|state_mini.s1a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|Selector3~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|state_mini.s1a~q\);

-- Location: LCCOMB_X50_Y36_N10
\card_a|biphase|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|Selector4~0_combout\ = (!\card_a|biphase|sig_inc~q\ & \card_a|biphase|state_mini.s1a~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_a|biphase|sig_inc~q\,
	datac => \card_a|biphase|state_mini.s1a~q\,
	combout => \card_a|biphase|Selector4~0_combout\);

-- Location: FF_X50_Y36_N11
\card_a|biphase|state_mini.s2a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|Selector4~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|state_mini.s2a~q\);

-- Location: LCCOMB_X50_Y36_N26
\card_a|biphase|sig_read_address_cnt[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_read_address_cnt[0]~4_combout\ = \card_a|biphase|state_mini.s3a~q\ $ (\card_a|biphase|sig_read_address_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_a|biphase|state_mini.s3a~q\,
	datac => \card_a|biphase|sig_read_address_cnt\(0),
	combout => \card_a|biphase|sig_read_address_cnt[0]~4_combout\);

-- Location: FF_X50_Y36_N27
\card_a|biphase|sig_read_address_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_read_address_cnt[0]~4_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_read_address_cnt\(0));

-- Location: LCCOMB_X50_Y36_N18
\card_a|biphase|sig_read_address_cnt[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_read_address_cnt[1]~5_combout\ = (\card_a|biphase|sig_read_address_cnt\(0) & (\card_a|biphase|sig_read_address_cnt\(1) $ (VCC))) # (!\card_a|biphase|sig_read_address_cnt\(0) & (\card_a|biphase|sig_read_address_cnt\(1) & VCC))
-- \card_a|biphase|sig_read_address_cnt[1]~6\ = CARRY((\card_a|biphase|sig_read_address_cnt\(0) & \card_a|biphase|sig_read_address_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|biphase|sig_read_address_cnt\(0),
	datab => \card_a|biphase|sig_read_address_cnt\(1),
	datad => VCC,
	combout => \card_a|biphase|sig_read_address_cnt[1]~5_combout\,
	cout => \card_a|biphase|sig_read_address_cnt[1]~6\);

-- Location: FF_X50_Y36_N19
\card_a|biphase|sig_read_address_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_read_address_cnt[1]~5_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|biphase|state_mini.s3a~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_read_address_cnt\(1));

-- Location: LCCOMB_X50_Y36_N20
\card_a|biphase|sig_read_address_cnt[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_read_address_cnt[2]~7_combout\ = (\card_a|biphase|sig_read_address_cnt\(2) & (!\card_a|biphase|sig_read_address_cnt[1]~6\)) # (!\card_a|biphase|sig_read_address_cnt\(2) & ((\card_a|biphase|sig_read_address_cnt[1]~6\) # (GND)))
-- \card_a|biphase|sig_read_address_cnt[2]~8\ = CARRY((!\card_a|biphase|sig_read_address_cnt[1]~6\) # (!\card_a|biphase|sig_read_address_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \card_a|biphase|sig_read_address_cnt\(2),
	datad => VCC,
	cin => \card_a|biphase|sig_read_address_cnt[1]~6\,
	combout => \card_a|biphase|sig_read_address_cnt[2]~7_combout\,
	cout => \card_a|biphase|sig_read_address_cnt[2]~8\);

-- Location: FF_X50_Y36_N21
\card_a|biphase|sig_read_address_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_read_address_cnt[2]~7_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|biphase|state_mini.s3a~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_read_address_cnt\(2));

-- Location: LCCOMB_X50_Y36_N22
\card_a|biphase|sig_read_address_cnt[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_read_address_cnt[3]~9_combout\ = (\card_a|biphase|sig_read_address_cnt\(3) & (\card_a|biphase|sig_read_address_cnt[2]~8\ $ (GND))) # (!\card_a|biphase|sig_read_address_cnt\(3) & (!\card_a|biphase|sig_read_address_cnt[2]~8\ & VCC))
-- \card_a|biphase|sig_read_address_cnt[3]~10\ = CARRY((\card_a|biphase|sig_read_address_cnt\(3) & !\card_a|biphase|sig_read_address_cnt[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|biphase|sig_read_address_cnt\(3),
	datad => VCC,
	cin => \card_a|biphase|sig_read_address_cnt[2]~8\,
	combout => \card_a|biphase|sig_read_address_cnt[3]~9_combout\,
	cout => \card_a|biphase|sig_read_address_cnt[3]~10\);

-- Location: FF_X50_Y36_N23
\card_a|biphase|sig_read_address_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_read_address_cnt[3]~9_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|biphase|state_mini.s3a~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_read_address_cnt\(3));

-- Location: LCCOMB_X50_Y36_N24
\card_a|biphase|sig_read_address_cnt[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_read_address_cnt[4]~11_combout\ = \card_a|biphase|sig_read_address_cnt[3]~10\ $ (\card_a|biphase|sig_read_address_cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \card_a|biphase|sig_read_address_cnt\(4),
	cin => \card_a|biphase|sig_read_address_cnt[3]~10\,
	combout => \card_a|biphase|sig_read_address_cnt[4]~11_combout\);

-- Location: FF_X50_Y36_N25
\card_a|biphase|sig_read_address_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_read_address_cnt[4]~11_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|biphase|state_mini.s3a~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_read_address_cnt\(4));

-- Location: LCCOMB_X50_Y36_N2
\card_a|biphase|start_strobe_tx~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|start_strobe_tx~0_combout\ = (\card_a|biphase|state_mini.s2a~q\ & (\resetn~input_o\ & (!\card_a|biphase|sig_read_address_cnt\(3) & !\card_a|biphase|sig_read_address_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|biphase|state_mini.s2a~q\,
	datab => \resetn~input_o\,
	datac => \card_a|biphase|sig_read_address_cnt\(3),
	datad => \card_a|biphase|sig_read_address_cnt\(4),
	combout => \card_a|biphase|start_strobe_tx~0_combout\);

-- Location: LCCOMB_X50_Y36_N12
\card_a|biphase|start_strobe_tx~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|start_strobe_tx~1_combout\ = (\card_a|biphase|start_strobe_tx~0_combout\ & (\card_a|biphase|sig_read_address_cnt\(1) & (\card_a|biphase|sig_read_address_cnt\(0) & \card_a|biphase|sig_read_address_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|biphase|start_strobe_tx~0_combout\,
	datab => \card_a|biphase|sig_read_address_cnt\(1),
	datac => \card_a|biphase|sig_read_address_cnt\(0),
	datad => \card_a|biphase|sig_read_address_cnt\(2),
	combout => \card_a|biphase|start_strobe_tx~1_combout\);

-- Location: LCCOMB_X50_Y36_N0
\card_a|biphase|start_strobe_tx~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|start_strobe_tx~2_combout\ = (\card_a|biphase|start_strobe_tx~1_combout\) # ((\card_a|biphase|start_strobe_tx~q\ & ((!\resetn~input_o\) # (!\card_a|biphase|state_mini.s2a~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|biphase|state_mini.s2a~q\,
	datab => \resetn~input_o\,
	datac => \card_a|biphase|start_strobe_tx~q\,
	datad => \card_a|biphase|start_strobe_tx~1_combout\,
	combout => \card_a|biphase|start_strobe_tx~2_combout\);

-- Location: FF_X50_Y36_N1
\card_a|biphase|start_strobe_tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|start_strobe_tx~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|start_strobe_tx~q\);

-- Location: LCCOMB_X36_Y34_N10
\card_a|tx|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Selector0~0_combout\ = (\card_a|tx|state_tx.s10~q\ & (!\card_a|tx|Equal4~1_combout\ & ((\card_a|tx|state_tx.s0~q\) # (\card_a|biphase|start_strobe_tx~q\)))) # (!\card_a|tx|state_tx.s10~q\ & (((\card_a|tx|state_tx.s0~q\) # 
-- (\card_a|biphase|start_strobe_tx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|state_tx.s10~q\,
	datab => \card_a|tx|Equal4~1_combout\,
	datac => \card_a|tx|state_tx.s0~q\,
	datad => \card_a|biphase|start_strobe_tx~q\,
	combout => \card_a|tx|Selector0~0_combout\);

-- Location: FF_X36_Y34_N11
\card_a|tx|state_tx.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|Selector0~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|state_tx.s0~q\);

-- Location: LCCOMB_X36_Y34_N30
\card_a|tx|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Selector1~0_combout\ = (\card_a|biphase|start_strobe_tx~q\ & ((\card_a|tx|state_tx.s1~q\) # (!\card_a|tx|state_tx.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|state_tx.s0~q\,
	datac => \card_a|tx|state_tx.s1~q\,
	datad => \card_a|biphase|start_strobe_tx~q\,
	combout => \card_a|tx|Selector1~0_combout\);

-- Location: FF_X36_Y34_N31
\card_a|tx|state_tx.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|Selector1~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|state_tx.s1~q\);

-- Location: LCCOMB_X36_Y34_N22
\card_a|tx|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Selector2~0_combout\ = (\card_a|tx|state_tx.s10~q\ & (((\card_a|tx|state_tx.s1~q\ & !\card_a|biphase|start_strobe_tx~q\)) # (!\card_a|tx|Equal4~1_combout\))) # (!\card_a|tx|state_tx.s10~q\ & (((\card_a|tx|state_tx.s1~q\ & 
-- !\card_a|biphase|start_strobe_tx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|state_tx.s10~q\,
	datab => \card_a|tx|Equal4~1_combout\,
	datac => \card_a|tx|state_tx.s1~q\,
	datad => \card_a|biphase|start_strobe_tx~q\,
	combout => \card_a|tx|Selector2~0_combout\);

-- Location: LCCOMB_X40_Y34_N18
\card_a|tx|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Selector2~1_combout\ = (\card_a|tx|Selector2~0_combout\) # ((\card_a|tx|state_tx.s2~q\ & !\card_a|tx|Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_a|tx|Selector2~0_combout\,
	datac => \card_a|tx|state_tx.s2~q\,
	datad => \card_a|tx|Selector3~0_combout\,
	combout => \card_a|tx|Selector2~1_combout\);

-- Location: FF_X40_Y34_N19
\card_a|tx|state_tx.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|Selector2~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|state_tx.s2~q\);

-- Location: LCCOMB_X40_Y34_N8
\card_a|tx|transmission:sig_cntr[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|transmission:sig_cntr[1]~2_combout\ = (\card_a|tx|state_tx.s9~q\ & (((\card_a|tx|sig_arising_edge~combout\)))) # (!\card_a|tx|state_tx.s9~q\ & ((\card_a|tx|state_tx.s6~q\) # ((\card_a|tx|state_tx.s2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|state_tx.s6~q\,
	datab => \card_a|tx|state_tx.s2~q\,
	datac => \card_a|tx|sig_arising_edge~combout\,
	datad => \card_a|tx|state_tx.s9~q\,
	combout => \card_a|tx|transmission:sig_cntr[1]~2_combout\);

-- Location: FF_X40_Y34_N25
\card_a|tx|transmission:sig_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|Selector12~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|tx|transmission:sig_cntr[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|transmission:sig_cntr[1]~q\);

-- Location: LCCOMB_X40_Y34_N6
\card_a|tx|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Equal2~0_combout\ = (\card_a|tx|transmission:sig_cntr[2]~q\ & (!\card_a|tx|transmission:sig_cntr[1]~q\ & (!\card_a|tx|transmission:sig_cntr[3]~q\ & !\card_a|tx|transmission:sig_cntr[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|transmission:sig_cntr[2]~q\,
	datab => \card_a|tx|transmission:sig_cntr[1]~q\,
	datac => \card_a|tx|transmission:sig_cntr[3]~q\,
	datad => \card_a|tx|transmission:sig_cntr[0]~q\,
	combout => \card_a|tx|Equal2~0_combout\);

-- Location: LCCOMB_X40_Y34_N20
\card_a|tx|transmission:sig_cntr[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|transmission:sig_cntr[1]~0_combout\ = (\card_a|tx|state_tx.s2~q\ & (((\card_a|tx|Selector3~0_combout\)))) # (!\card_a|tx|state_tx.s2~q\ & (\card_a|tx|state_tx.s9~q\ & ((\card_a|tx|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|state_tx.s9~q\,
	datab => \card_a|tx|Selector3~0_combout\,
	datac => \card_a|tx|Equal3~0_combout\,
	datad => \card_a|tx|state_tx.s2~q\,
	combout => \card_a|tx|transmission:sig_cntr[1]~0_combout\);

-- Location: LCCOMB_X40_Y34_N14
\card_a|tx|transmission:sig_cntr[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|transmission:sig_cntr[1]~1_combout\ = (\card_a|tx|transmission:sig_cntr[1]~0_combout\) # ((\card_a|tx|Equal2~0_combout\ & (!\card_a|tx|state_tx.s2~q\ & !\card_a|tx|state_tx.s9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|Equal2~0_combout\,
	datab => \card_a|tx|state_tx.s2~q\,
	datac => \card_a|tx|transmission:sig_cntr[1]~0_combout\,
	datad => \card_a|tx|state_tx.s9~q\,
	combout => \card_a|tx|transmission:sig_cntr[1]~1_combout\);

-- Location: LCCOMB_X40_Y34_N12
\card_a|tx|Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Selector13~0_combout\ = (!\card_a|tx|transmission:sig_cntr[1]~1_combout\ & !\card_a|tx|transmission:sig_cntr[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_a|tx|transmission:sig_cntr[1]~1_combout\,
	datac => \card_a|tx|transmission:sig_cntr[0]~q\,
	combout => \card_a|tx|Selector13~0_combout\);

-- Location: FF_X40_Y34_N13
\card_a|tx|transmission:sig_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|Selector13~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|tx|transmission:sig_cntr[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|transmission:sig_cntr[0]~q\);

-- Location: LCCOMB_X40_Y34_N26
\card_a|tx|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Selector11~0_combout\ = (!\card_a|tx|transmission:sig_cntr[1]~1_combout\ & (\card_a|tx|transmission:sig_cntr[2]~q\ $ (((\card_a|tx|transmission:sig_cntr[0]~q\ & \card_a|tx|transmission:sig_cntr[1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|transmission:sig_cntr[0]~q\,
	datab => \card_a|tx|transmission:sig_cntr[1]~1_combout\,
	datac => \card_a|tx|transmission:sig_cntr[2]~q\,
	datad => \card_a|tx|transmission:sig_cntr[1]~q\,
	combout => \card_a|tx|Selector11~0_combout\);

-- Location: FF_X40_Y34_N27
\card_a|tx|transmission:sig_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|Selector11~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|tx|transmission:sig_cntr[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|transmission:sig_cntr[2]~q\);

-- Location: LCCOMB_X40_Y34_N16
\card_a|tx|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Selector3~0_combout\ = (!\card_a|tx|transmission:sig_cntr[2]~q\ & (!\card_a|tx|transmission:sig_cntr[1]~q\ & (!\card_a|tx|transmission:sig_cntr[3]~q\ & \card_a|tx|transmission:sig_cntr[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|transmission:sig_cntr[2]~q\,
	datab => \card_a|tx|transmission:sig_cntr[1]~q\,
	datac => \card_a|tx|transmission:sig_cntr[3]~q\,
	datad => \card_a|tx|transmission:sig_cntr[0]~q\,
	combout => \card_a|tx|Selector3~0_combout\);

-- Location: LCCOMB_X40_Y34_N22
\card_a|tx|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Selector3~1_combout\ = (\card_a|tx|Selector3~0_combout\ & \card_a|tx|state_tx.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_a|tx|Selector3~0_combout\,
	datad => \card_a|tx|state_tx.s2~q\,
	combout => \card_a|tx|Selector3~1_combout\);

-- Location: FF_X40_Y34_N23
\card_a|tx|state_tx.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|Selector3~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|state_tx.s3~q\);

-- Location: LCCOMB_X36_Y34_N24
\card_a|tx|sig_address[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|sig_address[0]~4_combout\ = \card_a|tx|sig_address\(0) $ (\card_a|tx|state_tx.s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_a|tx|sig_address\(0),
	datad => \card_a|tx|state_tx.s3~q\,
	combout => \card_a|tx|sig_address[0]~4_combout\);

-- Location: FF_X36_Y34_N25
\card_a|tx|sig_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|sig_address[0]~4_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|sig_address\(0));

-- Location: M9K_X33_Y34_N0
\card_a|tx|dut|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"002F000BB002E800B9002E000B7002D800B5002D000B3002C800B1002C000AF002B800AD002B000AB002A800A9002A000A70029800A50029000A30028800A1002AC00FE0032800C0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Rom_X_data.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Card_A_Design:card_a|Uart_tx_Rom:tx|Rom_X:dut|altsyncram:altsyncram_component|altsyncram_pt81:auto_generated|ALTSYNCRAM",
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
	portaaddr => \card_a|tx|dut|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \card_a|tx|dut|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X36_Y34_N28
\card_a|tx|sig_byte[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|sig_byte[7]~0_combout\ = (\card_a|tx|state_tx.s5~q\ & \resetn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_a|tx|state_tx.s5~q\,
	datad => \resetn~input_o\,
	combout => \card_a|tx|sig_byte[7]~0_combout\);

-- Location: FF_X32_Y34_N5
\card_a|tx|sig_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \card_a|tx|dut|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \card_a|tx|sig_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|sig_byte\(7));

-- Location: FF_X32_Y34_N1
\card_a|tx|sig_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \card_a|tx|dut|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \card_a|tx|sig_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|sig_byte\(6));

-- Location: LCCOMB_X32_Y34_N12
\card_a|tx|sig_byte[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|sig_byte[5]~feeder_combout\ = \card_a|tx|dut|altsyncram_component|auto_generated|q_a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \card_a|tx|dut|altsyncram_component|auto_generated|q_a\(5),
	combout => \card_a|tx|sig_byte[5]~feeder_combout\);

-- Location: FF_X32_Y34_N13
\card_a|tx|sig_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|sig_byte[5]~feeder_combout\,
	ena => \card_a|tx|sig_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|sig_byte\(5));

-- Location: LCCOMB_X32_Y34_N20
\card_a|tx|sig_byte[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|sig_byte[3]~feeder_combout\ = \card_a|tx|dut|altsyncram_component|auto_generated|q_a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \card_a|tx|dut|altsyncram_component|auto_generated|q_a\(3),
	combout => \card_a|tx|sig_byte[3]~feeder_combout\);

-- Location: FF_X32_Y34_N21
\card_a|tx|sig_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|sig_byte[3]~feeder_combout\,
	ena => \card_a|tx|sig_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|sig_byte\(3));

-- Location: FF_X32_Y34_N25
\card_a|tx|sig_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \card_a|tx|dut|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	ena => \card_a|tx|sig_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|sig_byte\(2));

-- Location: LCCOMB_X32_Y34_N30
\card_a|tx|sig_byte[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|sig_byte[0]~feeder_combout\ = \card_a|tx|dut|altsyncram_component|auto_generated|q_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \card_a|tx|dut|altsyncram_component|auto_generated|q_a\(0),
	combout => \card_a|tx|sig_byte[0]~feeder_combout\);

-- Location: FF_X32_Y34_N31
\card_a|tx|sig_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|sig_byte[0]~feeder_combout\,
	ena => \card_a|tx|sig_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|sig_byte\(0));

-- Location: LCCOMB_X32_Y34_N10
\card_a|tx|Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Selector22~0_combout\ = (\card_a|tx|sig_byte\(0)) # (\card_a|tx|state_tx.s9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_a|tx|sig_byte\(0),
	datad => \card_a|tx|state_tx.s9~q\,
	combout => \card_a|tx|Selector22~0_combout\);

-- Location: LCCOMB_X37_Y34_N0
\card_a|tx|sig_packet[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|sig_packet[10]~1_combout\ = (\resetn~input_o\ & ((\card_a|tx|state_tx.s9~q\ & (\card_a|tx|sig_arising_edge~combout\)) # (!\card_a|tx|state_tx.s9~q\ & ((\card_a|tx|state_tx.s7~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|sig_arising_edge~combout\,
	datab => \resetn~input_o\,
	datac => \card_a|tx|state_tx.s7~q\,
	datad => \card_a|tx|state_tx.s9~q\,
	combout => \card_a|tx|sig_packet[10]~1_combout\);

-- Location: FF_X32_Y34_N11
\card_a|tx|sig_packet[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|Selector22~0_combout\,
	ena => \card_a|tx|sig_packet[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|sig_packet\(3));

-- Location: FF_X32_Y34_N29
\card_a|tx|sig_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \card_a|tx|dut|altsyncram_component|auto_generated|q_a\(1),
	sload => VCC,
	ena => \card_a|tx|sig_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|sig_byte\(1));

-- Location: LCCOMB_X32_Y34_N14
\card_a|tx|Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Selector21~0_combout\ = (\card_a|tx|state_tx.s9~q\ & (\card_a|tx|sig_packet\(3))) # (!\card_a|tx|state_tx.s9~q\ & ((\card_a|tx|sig_byte\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|sig_packet\(3),
	datab => \card_a|tx|sig_byte\(1),
	datad => \card_a|tx|state_tx.s9~q\,
	combout => \card_a|tx|Selector21~0_combout\);

-- Location: FF_X32_Y34_N15
\card_a|tx|sig_packet[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|Selector21~0_combout\,
	ena => \card_a|tx|sig_packet[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|sig_packet\(4));

-- Location: LCCOMB_X32_Y34_N2
\card_a|tx|Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Selector20~0_combout\ = (\card_a|tx|state_tx.s9~q\ & ((\card_a|tx|sig_packet\(4)))) # (!\card_a|tx|state_tx.s9~q\ & (\card_a|tx|sig_byte\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_a|tx|sig_byte\(2),
	datac => \card_a|tx|sig_packet\(4),
	datad => \card_a|tx|state_tx.s9~q\,
	combout => \card_a|tx|Selector20~0_combout\);

-- Location: FF_X32_Y34_N3
\card_a|tx|sig_packet[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|Selector20~0_combout\,
	ena => \card_a|tx|sig_packet[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|sig_packet\(5));

-- Location: LCCOMB_X32_Y34_N6
\card_a|tx|Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Selector19~0_combout\ = (\card_a|tx|state_tx.s9~q\ & ((\card_a|tx|sig_packet\(5)))) # (!\card_a|tx|state_tx.s9~q\ & (\card_a|tx|sig_byte\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|sig_byte\(3),
	datab => \card_a|tx|sig_packet\(5),
	datad => \card_a|tx|state_tx.s9~q\,
	combout => \card_a|tx|Selector19~0_combout\);

-- Location: FF_X32_Y34_N7
\card_a|tx|sig_packet[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|Selector19~0_combout\,
	ena => \card_a|tx|sig_packet[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|sig_packet\(6));

-- Location: LCCOMB_X32_Y34_N16
\card_a|tx|sig_byte[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|sig_byte[4]~feeder_combout\ = \card_a|tx|dut|altsyncram_component|auto_generated|q_a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \card_a|tx|dut|altsyncram_component|auto_generated|q_a\(4),
	combout => \card_a|tx|sig_byte[4]~feeder_combout\);

-- Location: FF_X32_Y34_N17
\card_a|tx|sig_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|sig_byte[4]~feeder_combout\,
	ena => \card_a|tx|sig_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|sig_byte\(4));

-- Location: LCCOMB_X32_Y34_N18
\card_a|tx|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Selector18~0_combout\ = (\card_a|tx|state_tx.s9~q\ & (\card_a|tx|sig_packet\(6))) # (!\card_a|tx|state_tx.s9~q\ & ((\card_a|tx|sig_byte\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|sig_packet\(6),
	datab => \card_a|tx|sig_byte\(4),
	datad => \card_a|tx|state_tx.s9~q\,
	combout => \card_a|tx|Selector18~0_combout\);

-- Location: FF_X32_Y34_N19
\card_a|tx|sig_packet[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|Selector18~0_combout\,
	ena => \card_a|tx|sig_packet[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|sig_packet\(7));

-- Location: LCCOMB_X32_Y34_N22
\card_a|tx|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Selector17~0_combout\ = (\card_a|tx|state_tx.s9~q\ & ((\card_a|tx|sig_packet\(7)))) # (!\card_a|tx|state_tx.s9~q\ & (\card_a|tx|sig_byte\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|sig_byte\(5),
	datab => \card_a|tx|sig_packet\(7),
	datad => \card_a|tx|state_tx.s9~q\,
	combout => \card_a|tx|Selector17~0_combout\);

-- Location: FF_X32_Y34_N23
\card_a|tx|sig_packet[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|Selector17~0_combout\,
	ena => \card_a|tx|sig_packet[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|sig_packet\(8));

-- Location: LCCOMB_X32_Y34_N26
\card_a|tx|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Selector16~0_combout\ = (\card_a|tx|state_tx.s9~q\ & ((\card_a|tx|sig_packet\(8)))) # (!\card_a|tx|state_tx.s9~q\ & (\card_a|tx|sig_byte\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_a|tx|sig_byte\(6),
	datac => \card_a|tx|sig_packet\(8),
	datad => \card_a|tx|state_tx.s9~q\,
	combout => \card_a|tx|Selector16~0_combout\);

-- Location: FF_X32_Y34_N27
\card_a|tx|sig_packet[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|Selector16~0_combout\,
	ena => \card_a|tx|sig_packet[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|sig_packet\(9));

-- Location: LCCOMB_X32_Y34_N8
\card_a|tx|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Selector15~0_combout\ = (\card_a|tx|state_tx.s9~q\ & ((\card_a|tx|sig_packet\(9)))) # (!\card_a|tx|state_tx.s9~q\ & (\card_a|tx|sig_byte\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_a|tx|sig_byte\(7),
	datac => \card_a|tx|sig_packet\(9),
	datad => \card_a|tx|state_tx.s9~q\,
	combout => \card_a|tx|Selector15~0_combout\);

-- Location: FF_X32_Y34_N9
\card_a|tx|sig_packet[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|Selector15~0_combout\,
	ena => \card_a|tx|sig_packet[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|sig_packet\(10));

-- Location: LCCOMB_X37_Y34_N24
\card_a|tx|sig_packet[11]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|sig_packet[11]~0_combout\ = (\card_a|tx|sig_arising_edge~combout\ & (\card_a|tx|sig_packet\(10))) # (!\card_a|tx|sig_arising_edge~combout\ & ((\card_a|tx|sig_packet\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|sig_packet\(10),
	datac => \card_a|tx|sig_packet\(11),
	datad => \card_a|tx|sig_arising_edge~combout\,
	combout => \card_a|tx|sig_packet[11]~0_combout\);

-- Location: LCCOMB_X37_Y34_N4
\card_a|tx|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|Selector14~0_combout\ = (!\card_a|tx|state_tx.s7~q\ & \card_a|tx|sig_packet\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_a|tx|state_tx.s7~q\,
	datad => \card_a|tx|sig_packet\(11),
	combout => \card_a|tx|Selector14~0_combout\);

-- Location: FF_X37_Y34_N25
\card_a|tx|sig_packet[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|sig_packet[11]~0_combout\,
	asdata => \card_a|tx|Selector14~0_combout\,
	sload => \card_a|tx|ALT_INV_state_tx.s9~q\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|sig_packet\(11));

-- Location: LCCOMB_X37_Y34_N2
\card_a|tx|sig_bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|tx|sig_bit~0_combout\ = (\card_a|tx|sig_arising_edge~combout\ & ((\card_a|tx|state_tx.s9~q\ & (!\card_a|tx|sig_packet\(11))) # (!\card_a|tx|state_tx.s9~q\ & ((\card_a|tx|sig_bit~q\))))) # (!\card_a|tx|sig_arising_edge~combout\ & 
-- (((\card_a|tx|sig_bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|tx|sig_arising_edge~combout\,
	datab => \card_a|tx|sig_packet\(11),
	datac => \card_a|tx|sig_bit~q\,
	datad => \card_a|tx|state_tx.s9~q\,
	combout => \card_a|tx|sig_bit~0_combout\);

-- Location: FF_X37_Y34_N3
\card_a|tx|sig_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|tx|sig_bit~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|tx|sig_bit~q\);

-- Location: LCCOMB_X38_Y34_N24
\card_a|rx|sig_bit[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|sig_bit[0]~0_combout\ = !\card_a|tx|sig_bit~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \card_a|tx|sig_bit~q\,
	combout => \card_a|rx|sig_bit[0]~0_combout\);

-- Location: FF_X38_Y34_N25
\card_a|rx|sig_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|sig_bit[0]~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|sig_bit\(0));

-- Location: LCCOMB_X46_Y36_N10
\card_a|rx|sig_bit[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|sig_bit[1]~feeder_combout\ = \card_a|rx|sig_bit\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \card_a|rx|sig_bit\(0),
	combout => \card_a|rx|sig_bit[1]~feeder_combout\);

-- Location: FF_X46_Y36_N11
\card_a|rx|sig_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|sig_bit[1]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|sig_bit\(1));

-- Location: LCCOMB_X46_Y36_N0
\card_a|rx|sig_bit[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|sig_bit[2]~feeder_combout\ = \card_a|rx|sig_bit\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \card_a|rx|sig_bit\(1),
	combout => \card_a|rx|sig_bit[2]~feeder_combout\);

-- Location: FF_X46_Y36_N1
\card_a|rx|sig_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|sig_bit[2]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|sig_bit\(2));

-- Location: LCCOMB_X46_Y36_N2
\card_a|rx|sig_bouncer_bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|sig_bouncer_bit~0_combout\ = (\card_a|rx|sig_bit\(1) & ((\card_a|rx|sig_bouncer_bit~q\) # ((\card_a|rx|sig_bit\(0) & \card_a|rx|sig_bit\(2))))) # (!\card_a|rx|sig_bit\(1) & (\card_a|rx|sig_bouncer_bit~q\ & ((\card_a|rx|sig_bit\(0)) # 
-- (\card_a|rx|sig_bit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|sig_bit\(1),
	datab => \card_a|rx|sig_bit\(0),
	datac => \card_a|rx|sig_bouncer_bit~q\,
	datad => \card_a|rx|sig_bit\(2),
	combout => \card_a|rx|sig_bouncer_bit~0_combout\);

-- Location: FF_X46_Y36_N3
\card_a|rx|sig_bouncer_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|sig_bouncer_bit~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|sig_bouncer_bit~q\);

-- Location: LCCOMB_X41_Y35_N20
\card_a|rx|sig_data_bit~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|sig_data_bit~1_combout\ = (\card_a|rx|sig_data_bit~0_combout\ & ((\card_a|rx|sig_bouncer_bit~q\))) # (!\card_a|rx|sig_data_bit~0_combout\ & (\card_a|rx|sig_data_bit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|sig_data_bit~0_combout\,
	datac => \card_a|rx|sig_data_bit~q\,
	datad => \card_a|rx|sig_bouncer_bit~q\,
	combout => \card_a|rx|sig_data_bit~1_combout\);

-- Location: FF_X41_Y35_N21
\card_a|rx|sig_data_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|sig_data_bit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|sig_data_bit~q\);

-- Location: LCCOMB_X41_Y35_N16
\card_a|rx|Selector14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Selector14~2_combout\ = (\card_a|rx|state_rx.s2~q\ & (((\card_a|rx|state_rx.s3~q\ & !\card_a|rx|state_rx~18_combout\)) # (!\card_a|rx|sig_data_bit~q\))) # (!\card_a|rx|state_rx.s2~q\ & (((\card_a|rx|state_rx.s3~q\ & 
-- !\card_a|rx|state_rx~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|state_rx.s2~q\,
	datab => \card_a|rx|sig_data_bit~q\,
	datac => \card_a|rx|state_rx.s3~q\,
	datad => \card_a|rx|state_rx~18_combout\,
	combout => \card_a|rx|Selector14~2_combout\);

-- Location: FF_X41_Y35_N17
\card_a|rx|state_rx.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Selector14~2_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|state_rx.s3~q\);

-- Location: LCCOMB_X41_Y35_N10
\card_a|rx|Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Selector13~0_combout\ = (\card_a|rx|state_rx~16_combout\ & (\card_a|rx|state_rx.s1~q\ & ((!\card_a|rx|state_rx~18_combout\) # (!\card_a|rx|state_rx.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|state_rx~16_combout\,
	datab => \card_a|rx|state_rx.s3~q\,
	datac => \card_a|rx|state_rx.s1~q\,
	datad => \card_a|rx|state_rx~18_combout\,
	combout => \card_a|rx|Selector13~0_combout\);

-- Location: FF_X41_Y35_N11
\card_a|rx|state_rx.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Selector13~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|state_rx.s2~q\);

-- Location: LCCOMB_X41_Y35_N6
\card_a|rx|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Selector11~0_combout\ = (!\card_a|rx|state_rx.s0~q\ & \card_a|rx|sig_bouncer_bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_a|rx|state_rx.s0~q\,
	datad => \card_a|rx|sig_bouncer_bit~q\,
	combout => \card_a|rx|Selector11~0_combout\);

-- Location: LCCOMB_X41_Y35_N28
\card_a|rx|Selector11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Selector11~1_combout\ = (!\card_a|rx|Selector11~0_combout\ & (!\card_a|rx|state_rx.s5~q\ & ((!\card_a|rx|sig_data_bit~q\) # (!\card_a|rx|state_rx.s2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|state_rx.s2~q\,
	datab => \card_a|rx|sig_data_bit~q\,
	datac => \card_a|rx|Selector11~0_combout\,
	datad => \card_a|rx|state_rx.s5~q\,
	combout => \card_a|rx|Selector11~1_combout\);

-- Location: FF_X41_Y35_N29
\card_a|rx|state_rx.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Selector11~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|state_rx.s0~q\);

-- Location: LCCOMB_X41_Y35_N26
\card_a|rx|Selector12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Selector12~1_combout\ = (\card_a|rx|state_rx.s1~q\ & (((\card_a|rx|state_rx~16_combout\)))) # (!\card_a|rx|state_rx.s1~q\ & ((\card_a|rx|state_rx.s0~q\) # ((\card_a|rx|sig_bouncer_bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|state_rx.s1~q\,
	datab => \card_a|rx|state_rx.s0~q\,
	datac => \card_a|rx|state_rx~16_combout\,
	datad => \card_a|rx|sig_bouncer_bit~q\,
	combout => \card_a|rx|Selector12~1_combout\);

-- Location: LCCOMB_X41_Y35_N24
\card_a|rx|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Selector12~0_combout\ = (\card_a|rx|state_rx.s5~q\) # ((\card_a|rx|state_rx.s4~q\) # (\card_a|rx|state_rx.s2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_a|rx|state_rx.s5~q\,
	datac => \card_a|rx|state_rx.s4~q\,
	datad => \card_a|rx|state_rx.s2~q\,
	combout => \card_a|rx|Selector12~0_combout\);

-- Location: LCCOMB_X41_Y35_N4
\card_a|rx|Selector12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Selector12~2_combout\ = (!\card_a|rx|Selector12~1_combout\ & (!\card_a|rx|Selector12~0_combout\ & ((!\card_a|rx|state_rx~18_combout\) # (!\card_a|rx|state_rx.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|Selector12~1_combout\,
	datab => \card_a|rx|state_rx.s3~q\,
	datac => \card_a|rx|Selector12~0_combout\,
	datad => \card_a|rx|state_rx~18_combout\,
	combout => \card_a|rx|Selector12~2_combout\);

-- Location: FF_X41_Y35_N5
\card_a|rx|state_rx.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Selector12~2_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|state_rx.s1~q\);

-- Location: LCCOMB_X41_Y32_N0
\card_a|rx|main_rx:var_clk_cntr[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|main_rx:var_clk_cntr[4]~0_combout\ = (\card_a|rx|signal_A_q~q\ & (!\card_a|rx|signal_A_q_not~q\ & ((\card_a|rx|state_rx.s1~q\) # (\card_a|rx|state_rx.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|state_rx.s1~q\,
	datab => \card_a|rx|signal_A_q~q\,
	datac => \card_a|rx|signal_A_q_not~q\,
	datad => \card_a|rx|state_rx.s3~q\,
	combout => \card_a|rx|main_rx:var_clk_cntr[4]~0_combout\);

-- Location: FF_X41_Y34_N25
\card_a|rx|main_rx:var_clk_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|main_rx:var_clk_cntr[0]~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|rx|main_rx:var_clk_cntr[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|main_rx:var_clk_cntr[0]~q\);

-- Location: LCCOMB_X41_Y34_N6
\card_a|rx|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Add2~2_combout\ = \card_a|rx|main_rx:var_clk_cntr[1]~q\ $ (\card_a|rx|main_rx:var_clk_cntr[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_a|rx|main_rx:var_clk_cntr[1]~q\,
	datad => \card_a|rx|main_rx:var_clk_cntr[0]~q\,
	combout => \card_a|rx|Add2~2_combout\);

-- Location: FF_X41_Y34_N7
\card_a|rx|main_rx:var_clk_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Add2~2_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|rx|main_rx:var_clk_cntr[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|main_rx:var_clk_cntr[1]~q\);

-- Location: LCCOMB_X41_Y34_N4
\card_a|rx|Add2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Add2~1_combout\ = \card_a|rx|main_rx:var_clk_cntr[2]~q\ $ (((\card_a|rx|main_rx:var_clk_cntr[0]~q\ & \card_a|rx|main_rx:var_clk_cntr[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_a|rx|main_rx:var_clk_cntr[0]~q\,
	datac => \card_a|rx|main_rx:var_clk_cntr[2]~q\,
	datad => \card_a|rx|main_rx:var_clk_cntr[1]~q\,
	combout => \card_a|rx|Add2~1_combout\);

-- Location: FF_X41_Y34_N5
\card_a|rx|main_rx:var_clk_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Add2~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|rx|main_rx:var_clk_cntr[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|main_rx:var_clk_cntr[2]~q\);

-- Location: LCCOMB_X41_Y34_N18
\card_a|rx|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Add2~0_combout\ = \card_a|rx|main_rx:var_clk_cntr[3]~q\ $ (((\card_a|rx|main_rx:var_clk_cntr[1]~q\ & (\card_a|rx|main_rx:var_clk_cntr[2]~q\ & \card_a|rx|main_rx:var_clk_cntr[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|main_rx:var_clk_cntr[1]~q\,
	datab => \card_a|rx|main_rx:var_clk_cntr[2]~q\,
	datac => \card_a|rx|main_rx:var_clk_cntr[3]~q\,
	datad => \card_a|rx|main_rx:var_clk_cntr[0]~q\,
	combout => \card_a|rx|Add2~0_combout\);

-- Location: FF_X41_Y34_N19
\card_a|rx|main_rx:var_clk_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Add2~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|rx|main_rx:var_clk_cntr[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|main_rx:var_clk_cntr[3]~q\);

-- Location: LCCOMB_X41_Y34_N16
\card_a|rx|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Equal2~0_combout\ = (\card_a|rx|main_rx:var_clk_cntr[1]~q\ & (\card_a|rx|main_rx:var_clk_cntr[0]~q\ & (\card_a|rx|main_rx:var_clk_cntr[2]~q\ & \card_a|rx|main_rx:var_clk_cntr[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|main_rx:var_clk_cntr[1]~q\,
	datab => \card_a|rx|main_rx:var_clk_cntr[0]~q\,
	datac => \card_a|rx|main_rx:var_clk_cntr[2]~q\,
	datad => \card_a|rx|main_rx:var_clk_cntr[3]~q\,
	combout => \card_a|rx|Equal2~0_combout\);

-- Location: LCCOMB_X41_Y34_N10
\card_a|rx|Add2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Add2~3_combout\ = \card_a|rx|main_rx:var_clk_cntr[4]~q\ $ (\card_a|rx|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_a|rx|main_rx:var_clk_cntr[4]~q\,
	datad => \card_a|rx|Equal2~0_combout\,
	combout => \card_a|rx|Add2~3_combout\);

-- Location: FF_X41_Y34_N11
\card_a|rx|main_rx:var_clk_cntr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Add2~3_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|rx|main_rx:var_clk_cntr[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|main_rx:var_clk_cntr[4]~q\);

-- Location: LCCOMB_X41_Y34_N0
\card_a|rx|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Equal3~0_combout\ = (!\card_a|rx|main_rx:var_clk_cntr[4]~q\ & (!\card_a|rx|main_rx:var_clk_cntr[5]~q\ & \card_a|rx|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|main_rx:var_clk_cntr[4]~q\,
	datab => \card_a|rx|main_rx:var_clk_cntr[5]~q\,
	datad => \card_a|rx|Equal2~0_combout\,
	combout => \card_a|rx|Equal3~0_combout\);

-- Location: LCCOMB_X41_Y34_N28
\card_a|rx|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Selector4~0_combout\ = (\card_a|rx|state_rx.s3~q\ & (\card_a|rx|Equal3~0_combout\ $ (\card_a|rx|main_rx:var_bit_cntr[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_a|rx|Equal3~0_combout\,
	datac => \card_a|rx|main_rx:var_bit_cntr[0]~q\,
	datad => \card_a|rx|state_rx.s3~q\,
	combout => \card_a|rx|Selector4~0_combout\);

-- Location: LCCOMB_X41_Y32_N24
\card_a|rx|main_rx:var_bit_cntr[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|main_rx:var_bit_cntr[2]~0_combout\ = (\card_a|rx|Selector11~0_combout\) # ((\card_a|rx|signal_A_q~q\ & (!\card_a|rx|signal_A_q_not~q\ & \card_a|rx|state_rx.s3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|signal_A_q~q\,
	datab => \card_a|rx|signal_A_q_not~q\,
	datac => \card_a|rx|Selector11~0_combout\,
	datad => \card_a|rx|state_rx.s3~q\,
	combout => \card_a|rx|main_rx:var_bit_cntr[2]~0_combout\);

-- Location: FF_X41_Y34_N29
\card_a|rx|main_rx:var_bit_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Selector4~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|rx|main_rx:var_bit_cntr[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|main_rx:var_bit_cntr[0]~q\);

-- Location: LCCOMB_X41_Y34_N26
\card_a|rx|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Selector3~0_combout\ = (\card_a|rx|state_rx.s3~q\ & (\card_a|rx|main_rx:var_bit_cntr[1]~q\ $ (((\card_a|rx|main_rx:var_bit_cntr[0]~q\ & \card_a|rx|Equal3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|state_rx.s3~q\,
	datab => \card_a|rx|main_rx:var_bit_cntr[0]~q\,
	datac => \card_a|rx|main_rx:var_bit_cntr[1]~q\,
	datad => \card_a|rx|Equal3~0_combout\,
	combout => \card_a|rx|Selector3~0_combout\);

-- Location: FF_X41_Y34_N27
\card_a|rx|main_rx:var_bit_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Selector3~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|rx|main_rx:var_bit_cntr[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|main_rx:var_bit_cntr[1]~q\);

-- Location: LCCOMB_X41_Y34_N12
\card_a|rx|state_rx~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|state_rx~17_combout\ = (\card_a|rx|main_rx:var_bit_cntr[0]~q\ & (\card_a|rx|main_rx:var_bit_cntr[1]~q\ & \card_a|rx|Equal3~0_combout\)) # (!\card_a|rx|main_rx:var_bit_cntr[0]~q\ & (!\card_a|rx|main_rx:var_bit_cntr[1]~q\ & 
-- !\card_a|rx|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_a|rx|main_rx:var_bit_cntr[0]~q\,
	datac => \card_a|rx|main_rx:var_bit_cntr[1]~q\,
	datad => \card_a|rx|Equal3~0_combout\,
	combout => \card_a|rx|state_rx~17_combout\);

-- Location: LCCOMB_X41_Y34_N22
\card_a|rx|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Add3~0_combout\ = (\card_a|rx|main_rx:var_bit_cntr[1]~q\ & \card_a|rx|main_rx:var_bit_cntr[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_a|rx|main_rx:var_bit_cntr[1]~q\,
	datad => \card_a|rx|main_rx:var_bit_cntr[0]~q\,
	combout => \card_a|rx|Add3~0_combout\);

-- Location: LCCOMB_X41_Y34_N8
\card_a|rx|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Selector2~0_combout\ = (\card_a|rx|state_rx.s3~q\ & (\card_a|rx|main_rx:var_bit_cntr[2]~q\ $ (((\card_a|rx|Add3~0_combout\ & \card_a|rx|Equal3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|Add3~0_combout\,
	datab => \card_a|rx|Equal3~0_combout\,
	datac => \card_a|rx|main_rx:var_bit_cntr[2]~q\,
	datad => \card_a|rx|state_rx.s3~q\,
	combout => \card_a|rx|Selector2~0_combout\);

-- Location: FF_X41_Y34_N9
\card_a|rx|main_rx:var_bit_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Selector2~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|rx|main_rx:var_bit_cntr[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|main_rx:var_bit_cntr[2]~q\);

-- Location: LCCOMB_X41_Y34_N14
\card_a|rx|var_bit_cntr~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|var_bit_cntr~3_combout\ = \card_a|rx|main_rx:var_bit_cntr[2]~q\ $ (((\card_a|rx|main_rx:var_bit_cntr[1]~q\ & (\card_a|rx|main_rx:var_bit_cntr[0]~q\ & \card_a|rx|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|main_rx:var_bit_cntr[1]~q\,
	datab => \card_a|rx|main_rx:var_bit_cntr[0]~q\,
	datac => \card_a|rx|main_rx:var_bit_cntr[2]~q\,
	datad => \card_a|rx|Equal3~0_combout\,
	combout => \card_a|rx|var_bit_cntr~3_combout\);

-- Location: LCCOMB_X41_Y34_N30
\card_a|rx|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Selector1~0_combout\ = (\card_a|rx|var_bit_cntr~2_combout\ & \card_a|rx|state_rx.s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_a|rx|var_bit_cntr~2_combout\,
	datad => \card_a|rx|state_rx.s3~q\,
	combout => \card_a|rx|Selector1~0_combout\);

-- Location: FF_X41_Y34_N31
\card_a|rx|main_rx:var_bit_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Selector1~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|rx|main_rx:var_bit_cntr[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|main_rx:var_bit_cntr[3]~q\);

-- Location: LCCOMB_X41_Y34_N2
\card_a|rx|var_bit_cntr~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|var_bit_cntr~2_combout\ = \card_a|rx|main_rx:var_bit_cntr[3]~q\ $ (((\card_a|rx|main_rx:var_bit_cntr[2]~q\ & (\card_a|rx|Add3~0_combout\ & \card_a|rx|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|main_rx:var_bit_cntr[3]~q\,
	datab => \card_a|rx|main_rx:var_bit_cntr[2]~q\,
	datac => \card_a|rx|Add3~0_combout\,
	datad => \card_a|rx|Equal3~0_combout\,
	combout => \card_a|rx|var_bit_cntr~2_combout\);

-- Location: LCCOMB_X42_Y34_N0
\card_a|rx|state_rx~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|state_rx~18_combout\ = (\card_a|rx|state_rx~17_combout\ & (!\card_a|rx|var_bit_cntr~3_combout\ & (\card_a|rx|state_rx~16_combout\ & \card_a|rx|var_bit_cntr~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|state_rx~17_combout\,
	datab => \card_a|rx|var_bit_cntr~3_combout\,
	datac => \card_a|rx|state_rx~16_combout\,
	datad => \card_a|rx|var_bit_cntr~2_combout\,
	combout => \card_a|rx|state_rx~18_combout\);

-- Location: LCCOMB_X41_Y35_N30
\card_a|rx|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Selector15~0_combout\ = (\card_a|rx|state_rx~18_combout\ & \card_a|rx|state_rx.s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|state_rx~18_combout\,
	datad => \card_a|rx|state_rx.s3~q\,
	combout => \card_a|rx|Selector15~0_combout\);

-- Location: FF_X41_Y35_N31
\card_a|rx|state_rx.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Selector15~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|state_rx.s4~q\);

-- Location: FF_X41_Y35_N3
\card_a|rx|state_rx.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \card_a|rx|state_rx.s4~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|state_rx.s5~q\);

-- Location: LCCOMB_X41_Y35_N0
\card_a|rx|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Selector0~0_combout\ = (\card_a|rx|state_rx.s5~q\) # ((\card_a|rx|sig_wr_ram~q\ & \card_a|rx|state_rx.s0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_a|rx|state_rx.s5~q\,
	datac => \card_a|rx|sig_wr_ram~q\,
	datad => \card_a|rx|state_rx.s0~q\,
	combout => \card_a|rx|Selector0~0_combout\);

-- Location: FF_X41_Y35_N1
\card_a|rx|sig_wr_ram\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Selector0~0_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|sig_wr_ram~q\);

-- Location: FF_X51_Y39_N23
\card_a|biphase|sig_cut_rd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \card_a|biphase|sig_read~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_cut_rd~q\);

-- Location: FF_X51_Y39_N11
\card_a|biphase|sig_cut_rd_not\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \card_a|biphase|sig_cut_rd~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_cut_rd_not~q\);

-- Location: LCCOMB_X51_Y39_N18
\card_a|biphase|rd\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|rd~combout\ = (!\card_a|biphase|sig_cut_rd_not~q\ & \card_a|biphase|sig_cut_rd~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|biphase|sig_cut_rd_not~q\,
	datac => \card_a|biphase|sig_cut_rd~q\,
	combout => \card_a|biphase|rd~combout\);

-- Location: FF_X51_Y39_N19
\card_a|memory|altsyncram_component|auto_generated|rden_b_store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|rd~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|memory|altsyncram_component|auto_generated|rden_b_store~q\);

-- Location: LCCOMB_X51_Y39_N10
\card_a|memory|altsyncram_component|auto_generated|ram_block1a0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|memory|altsyncram_component|auto_generated|ram_block1a0~0_combout\ = (\card_a|memory|altsyncram_component|auto_generated|rden_b_store~q\) # ((\card_a|biphase|sig_cut_rd~q\ & !\card_a|biphase|sig_cut_rd_not~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|biphase|sig_cut_rd~q\,
	datac => \card_a|biphase|sig_cut_rd_not~q\,
	datad => \card_a|memory|altsyncram_component|auto_generated|rden_b_store~q\,
	combout => \card_a|memory|altsyncram_component|auto_generated|ram_block1a0~0_combout\);

-- Location: LCCOMB_X49_Y35_N0
\card_a|rx|sig_detected_byte[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|sig_detected_byte[0]~feeder_combout\ = \card_a|rx|sig_data_bit~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \card_a|rx|sig_data_bit~q\,
	combout => \card_a|rx|sig_detected_byte[0]~feeder_combout\);

-- Location: LCCOMB_X41_Y35_N18
\card_a|rx|sig_detected_byte[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|sig_detected_byte[7]~0_combout\ = (\card_a|rx|state_rx~16_combout\ & (\resetn~input_o\ & \card_a|rx|state_rx.s3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|state_rx~16_combout\,
	datac => \resetn~input_o\,
	datad => \card_a|rx|state_rx.s3~q\,
	combout => \card_a|rx|sig_detected_byte[7]~0_combout\);

-- Location: FF_X49_Y35_N1
\card_a|rx|sig_detected_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|sig_detected_byte[0]~feeder_combout\,
	ena => \card_a|rx|sig_detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|sig_detected_byte\(0));

-- Location: LCCOMB_X54_Y36_N20
\card_a|rx|detected_byte[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|detected_byte[0]~feeder_combout\ = \card_a|rx|sig_detected_byte\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \card_a|rx|sig_detected_byte\(0),
	combout => \card_a|rx|detected_byte[0]~feeder_combout\);

-- Location: LCCOMB_X41_Y35_N8
\card_a|rx|detected_byte[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|detected_byte[7]~0_combout\ = (\card_a|rx|state_rx.s4~q\ & \resetn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|state_rx.s4~q\,
	datac => \resetn~input_o\,
	combout => \card_a|rx|detected_byte[7]~0_combout\);

-- Location: FF_X54_Y36_N21
\card_a|rx|detected_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|detected_byte[0]~feeder_combout\,
	ena => \card_a|rx|detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|detected_byte\(0));

-- Location: LCCOMB_X50_Y35_N20
\card_a|rx|sig_cnt_address[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|sig_cnt_address[0]~12_combout\ = !\card_a|rx|sig_cnt_address\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_a|rx|sig_cnt_address\(0),
	combout => \card_a|rx|sig_cnt_address[0]~12_combout\);

-- Location: FF_X50_Y35_N21
\card_a|rx|sig_cnt_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|sig_cnt_address[0]~12_combout\,
	ena => \card_a|rx|detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|sig_cnt_address\(0));

-- Location: LCCOMB_X50_Y35_N0
\card_a|rx|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Selector10~0_combout\ = (\card_a|rx|state_rx.s2~q\ & \card_a|rx|sig_cnt_address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|state_rx.s2~q\,
	datad => \card_a|rx|sig_cnt_address\(0),
	combout => \card_a|rx|Selector10~0_combout\);

-- Location: FF_X46_Y35_N11
\card_a|rx|main_rx:var_trns_cntr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Add1~28_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|main_rx:var_trns_cntr[14]~q\);

-- Location: LCCOMB_X46_Y36_N14
\card_a|rx|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Add1~0_combout\ = \card_a|rx|main_rx:var_trns_cntr[0]~q\ $ (VCC)
-- \card_a|rx|Add1~1\ = CARRY(\card_a|rx|main_rx:var_trns_cntr[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|main_rx:var_trns_cntr[0]~q\,
	datad => VCC,
	combout => \card_a|rx|Add1~0_combout\,
	cout => \card_a|rx|Add1~1\);

-- Location: FF_X46_Y36_N15
\card_a|rx|main_rx:var_trns_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Add1~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|main_rx:var_trns_cntr[0]~q\);

-- Location: LCCOMB_X46_Y36_N16
\card_a|rx|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Add1~2_combout\ = (\card_a|rx|main_rx:var_trns_cntr[1]~q\ & (!\card_a|rx|Add1~1\)) # (!\card_a|rx|main_rx:var_trns_cntr[1]~q\ & ((\card_a|rx|Add1~1\) # (GND)))
-- \card_a|rx|Add1~3\ = CARRY((!\card_a|rx|Add1~1\) # (!\card_a|rx|main_rx:var_trns_cntr[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \card_a|rx|main_rx:var_trns_cntr[1]~q\,
	datad => VCC,
	cin => \card_a|rx|Add1~1\,
	combout => \card_a|rx|Add1~2_combout\,
	cout => \card_a|rx|Add1~3\);

-- Location: FF_X46_Y36_N17
\card_a|rx|main_rx:var_trns_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Add1~2_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|main_rx:var_trns_cntr[1]~q\);

-- Location: LCCOMB_X46_Y36_N18
\card_a|rx|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Add1~4_combout\ = (\card_a|rx|main_rx:var_trns_cntr[2]~q\ & (\card_a|rx|Add1~3\ $ (GND))) # (!\card_a|rx|main_rx:var_trns_cntr[2]~q\ & (!\card_a|rx|Add1~3\ & VCC))
-- \card_a|rx|Add1~5\ = CARRY((\card_a|rx|main_rx:var_trns_cntr[2]~q\ & !\card_a|rx|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \card_a|rx|main_rx:var_trns_cntr[2]~q\,
	datad => VCC,
	cin => \card_a|rx|Add1~3\,
	combout => \card_a|rx|Add1~4_combout\,
	cout => \card_a|rx|Add1~5\);

-- Location: FF_X46_Y36_N19
\card_a|rx|main_rx:var_trns_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Add1~4_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|main_rx:var_trns_cntr[2]~q\);

-- Location: LCCOMB_X46_Y36_N20
\card_a|rx|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Add1~6_combout\ = (\card_a|rx|main_rx:var_trns_cntr[3]~q\ & (!\card_a|rx|Add1~5\)) # (!\card_a|rx|main_rx:var_trns_cntr[3]~q\ & ((\card_a|rx|Add1~5\) # (GND)))
-- \card_a|rx|Add1~7\ = CARRY((!\card_a|rx|Add1~5\) # (!\card_a|rx|main_rx:var_trns_cntr[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|main_rx:var_trns_cntr[3]~q\,
	datad => VCC,
	cin => \card_a|rx|Add1~5\,
	combout => \card_a|rx|Add1~6_combout\,
	cout => \card_a|rx|Add1~7\);

-- Location: FF_X46_Y36_N21
\card_a|rx|main_rx:var_trns_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Add1~6_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|main_rx:var_trns_cntr[3]~q\);

-- Location: LCCOMB_X46_Y36_N22
\card_a|rx|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Add1~8_combout\ = (\card_a|rx|main_rx:var_trns_cntr[4]~q\ & (\card_a|rx|Add1~7\ $ (GND))) # (!\card_a|rx|main_rx:var_trns_cntr[4]~q\ & (!\card_a|rx|Add1~7\ & VCC))
-- \card_a|rx|Add1~9\ = CARRY((\card_a|rx|main_rx:var_trns_cntr[4]~q\ & !\card_a|rx|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \card_a|rx|main_rx:var_trns_cntr[4]~q\,
	datad => VCC,
	cin => \card_a|rx|Add1~7\,
	combout => \card_a|rx|Add1~8_combout\,
	cout => \card_a|rx|Add1~9\);

-- Location: FF_X46_Y36_N23
\card_a|rx|main_rx:var_trns_cntr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Add1~8_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|main_rx:var_trns_cntr[4]~q\);

-- Location: LCCOMB_X46_Y36_N24
\card_a|rx|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Add1~10_combout\ = (\card_a|rx|main_rx:var_trns_cntr[5]~q\ & (!\card_a|rx|Add1~9\)) # (!\card_a|rx|main_rx:var_trns_cntr[5]~q\ & ((\card_a|rx|Add1~9\) # (GND)))
-- \card_a|rx|Add1~11\ = CARRY((!\card_a|rx|Add1~9\) # (!\card_a|rx|main_rx:var_trns_cntr[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|main_rx:var_trns_cntr[5]~q\,
	datad => VCC,
	cin => \card_a|rx|Add1~9\,
	combout => \card_a|rx|Add1~10_combout\,
	cout => \card_a|rx|Add1~11\);

-- Location: FF_X46_Y36_N25
\card_a|rx|main_rx:var_trns_cntr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Add1~10_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|main_rx:var_trns_cntr[5]~q\);

-- Location: LCCOMB_X46_Y36_N26
\card_a|rx|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Add1~12_combout\ = (\card_a|rx|main_rx:var_trns_cntr[6]~q\ & (\card_a|rx|Add1~11\ $ (GND))) # (!\card_a|rx|main_rx:var_trns_cntr[6]~q\ & (!\card_a|rx|Add1~11\ & VCC))
-- \card_a|rx|Add1~13\ = CARRY((\card_a|rx|main_rx:var_trns_cntr[6]~q\ & !\card_a|rx|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|main_rx:var_trns_cntr[6]~q\,
	datad => VCC,
	cin => \card_a|rx|Add1~11\,
	combout => \card_a|rx|Add1~12_combout\,
	cout => \card_a|rx|Add1~13\);

-- Location: FF_X46_Y36_N27
\card_a|rx|main_rx:var_trns_cntr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Add1~12_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|main_rx:var_trns_cntr[6]~q\);

-- Location: LCCOMB_X46_Y36_N28
\card_a|rx|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Add1~14_combout\ = (\card_a|rx|main_rx:var_trns_cntr[7]~q\ & (!\card_a|rx|Add1~13\)) # (!\card_a|rx|main_rx:var_trns_cntr[7]~q\ & ((\card_a|rx|Add1~13\) # (GND)))
-- \card_a|rx|Add1~15\ = CARRY((!\card_a|rx|Add1~13\) # (!\card_a|rx|main_rx:var_trns_cntr[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|main_rx:var_trns_cntr[7]~q\,
	datad => VCC,
	cin => \card_a|rx|Add1~13\,
	combout => \card_a|rx|Add1~14_combout\,
	cout => \card_a|rx|Add1~15\);

-- Location: FF_X46_Y36_N29
\card_a|rx|main_rx:var_trns_cntr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Add1~14_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|main_rx:var_trns_cntr[7]~q\);

-- Location: LCCOMB_X46_Y36_N30
\card_a|rx|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Add1~16_combout\ = (\card_a|rx|main_rx:var_trns_cntr[8]~q\ & (\card_a|rx|Add1~15\ $ (GND))) # (!\card_a|rx|main_rx:var_trns_cntr[8]~q\ & (!\card_a|rx|Add1~15\ & VCC))
-- \card_a|rx|Add1~17\ = CARRY((\card_a|rx|main_rx:var_trns_cntr[8]~q\ & !\card_a|rx|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \card_a|rx|main_rx:var_trns_cntr[8]~q\,
	datad => VCC,
	cin => \card_a|rx|Add1~15\,
	combout => \card_a|rx|Add1~16_combout\,
	cout => \card_a|rx|Add1~17\);

-- Location: FF_X46_Y36_N31
\card_a|rx|main_rx:var_trns_cntr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Add1~16_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|main_rx:var_trns_cntr[8]~q\);

-- Location: LCCOMB_X46_Y35_N0
\card_a|rx|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Add1~18_combout\ = (\card_a|rx|main_rx:var_trns_cntr[9]~q\ & (!\card_a|rx|Add1~17\)) # (!\card_a|rx|main_rx:var_trns_cntr[9]~q\ & ((\card_a|rx|Add1~17\) # (GND)))
-- \card_a|rx|Add1~19\ = CARRY((!\card_a|rx|Add1~17\) # (!\card_a|rx|main_rx:var_trns_cntr[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \card_a|rx|main_rx:var_trns_cntr[9]~q\,
	datad => VCC,
	cin => \card_a|rx|Add1~17\,
	combout => \card_a|rx|Add1~18_combout\,
	cout => \card_a|rx|Add1~19\);

-- Location: FF_X46_Y35_N1
\card_a|rx|main_rx:var_trns_cntr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Add1~18_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|main_rx:var_trns_cntr[9]~q\);

-- Location: LCCOMB_X46_Y35_N2
\card_a|rx|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Add1~20_combout\ = (\card_a|rx|main_rx:var_trns_cntr[10]~q\ & (\card_a|rx|Add1~19\ $ (GND))) # (!\card_a|rx|main_rx:var_trns_cntr[10]~q\ & (!\card_a|rx|Add1~19\ & VCC))
-- \card_a|rx|Add1~21\ = CARRY((\card_a|rx|main_rx:var_trns_cntr[10]~q\ & !\card_a|rx|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \card_a|rx|main_rx:var_trns_cntr[10]~q\,
	datad => VCC,
	cin => \card_a|rx|Add1~19\,
	combout => \card_a|rx|Add1~20_combout\,
	cout => \card_a|rx|Add1~21\);

-- Location: FF_X46_Y35_N3
\card_a|rx|main_rx:var_trns_cntr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Add1~20_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|main_rx:var_trns_cntr[10]~q\);

-- Location: LCCOMB_X46_Y35_N4
\card_a|rx|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Add1~22_combout\ = (\card_a|rx|main_rx:var_trns_cntr[11]~q\ & (!\card_a|rx|Add1~21\)) # (!\card_a|rx|main_rx:var_trns_cntr[11]~q\ & ((\card_a|rx|Add1~21\) # (GND)))
-- \card_a|rx|Add1~23\ = CARRY((!\card_a|rx|Add1~21\) # (!\card_a|rx|main_rx:var_trns_cntr[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \card_a|rx|main_rx:var_trns_cntr[11]~q\,
	datad => VCC,
	cin => \card_a|rx|Add1~21\,
	combout => \card_a|rx|Add1~22_combout\,
	cout => \card_a|rx|Add1~23\);

-- Location: FF_X46_Y35_N5
\card_a|rx|main_rx:var_trns_cntr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Add1~22_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|main_rx:var_trns_cntr[11]~q\);

-- Location: LCCOMB_X46_Y35_N6
\card_a|rx|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Add1~24_combout\ = (\card_a|rx|main_rx:var_trns_cntr[12]~q\ & (\card_a|rx|Add1~23\ $ (GND))) # (!\card_a|rx|main_rx:var_trns_cntr[12]~q\ & (!\card_a|rx|Add1~23\ & VCC))
-- \card_a|rx|Add1~25\ = CARRY((\card_a|rx|main_rx:var_trns_cntr[12]~q\ & !\card_a|rx|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|main_rx:var_trns_cntr[12]~q\,
	datad => VCC,
	cin => \card_a|rx|Add1~23\,
	combout => \card_a|rx|Add1~24_combout\,
	cout => \card_a|rx|Add1~25\);

-- Location: FF_X46_Y35_N7
\card_a|rx|main_rx:var_trns_cntr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Add1~24_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|main_rx:var_trns_cntr[12]~q\);

-- Location: LCCOMB_X46_Y35_N8
\card_a|rx|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Add1~26_combout\ = (\card_a|rx|main_rx:var_trns_cntr[13]~q\ & (!\card_a|rx|Add1~25\)) # (!\card_a|rx|main_rx:var_trns_cntr[13]~q\ & ((\card_a|rx|Add1~25\) # (GND)))
-- \card_a|rx|Add1~27\ = CARRY((!\card_a|rx|Add1~25\) # (!\card_a|rx|main_rx:var_trns_cntr[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|main_rx:var_trns_cntr[13]~q\,
	datad => VCC,
	cin => \card_a|rx|Add1~25\,
	combout => \card_a|rx|Add1~26_combout\,
	cout => \card_a|rx|Add1~27\);

-- Location: FF_X46_Y35_N9
\card_a|rx|main_rx:var_trns_cntr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Add1~26_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|main_rx:var_trns_cntr[13]~q\);

-- Location: LCCOMB_X46_Y35_N10
\card_a|rx|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Add1~28_combout\ = (\card_a|rx|main_rx:var_trns_cntr[14]~q\ & (\card_a|rx|Add1~27\ $ (GND))) # (!\card_a|rx|main_rx:var_trns_cntr[14]~q\ & (!\card_a|rx|Add1~27\ & VCC))
-- \card_a|rx|Add1~29\ = CARRY((\card_a|rx|main_rx:var_trns_cntr[14]~q\ & !\card_a|rx|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \card_a|rx|main_rx:var_trns_cntr[14]~q\,
	datad => VCC,
	cin => \card_a|rx|Add1~27\,
	combout => \card_a|rx|Add1~28_combout\,
	cout => \card_a|rx|Add1~29\);

-- Location: FF_X46_Y35_N19
\card_a|rx|main_rx:var_trns_cntr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Add1~36_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|main_rx:var_trns_cntr[18]~q\);

-- Location: LCCOMB_X46_Y35_N12
\card_a|rx|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Add1~30_combout\ = (\card_a|rx|main_rx:var_trns_cntr[15]~q\ & (!\card_a|rx|Add1~29\)) # (!\card_a|rx|main_rx:var_trns_cntr[15]~q\ & ((\card_a|rx|Add1~29\) # (GND)))
-- \card_a|rx|Add1~31\ = CARRY((!\card_a|rx|Add1~29\) # (!\card_a|rx|main_rx:var_trns_cntr[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \card_a|rx|main_rx:var_trns_cntr[15]~q\,
	datad => VCC,
	cin => \card_a|rx|Add1~29\,
	combout => \card_a|rx|Add1~30_combout\,
	cout => \card_a|rx|Add1~31\);

-- Location: FF_X46_Y35_N13
\card_a|rx|main_rx:var_trns_cntr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Add1~30_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|main_rx:var_trns_cntr[15]~q\);

-- Location: LCCOMB_X46_Y35_N14
\card_a|rx|Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Add1~32_combout\ = (\card_a|rx|main_rx:var_trns_cntr[16]~q\ & (\card_a|rx|Add1~31\ $ (GND))) # (!\card_a|rx|main_rx:var_trns_cntr[16]~q\ & (!\card_a|rx|Add1~31\ & VCC))
-- \card_a|rx|Add1~33\ = CARRY((\card_a|rx|main_rx:var_trns_cntr[16]~q\ & !\card_a|rx|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \card_a|rx|main_rx:var_trns_cntr[16]~q\,
	datad => VCC,
	cin => \card_a|rx|Add1~31\,
	combout => \card_a|rx|Add1~32_combout\,
	cout => \card_a|rx|Add1~33\);

-- Location: FF_X46_Y35_N15
\card_a|rx|main_rx:var_trns_cntr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Add1~32_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|main_rx:var_trns_cntr[16]~q\);

-- Location: LCCOMB_X46_Y35_N16
\card_a|rx|Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Add1~34_combout\ = (\card_a|rx|main_rx:var_trns_cntr[17]~q\ & (!\card_a|rx|Add1~33\)) # (!\card_a|rx|main_rx:var_trns_cntr[17]~q\ & ((\card_a|rx|Add1~33\) # (GND)))
-- \card_a|rx|Add1~35\ = CARRY((!\card_a|rx|Add1~33\) # (!\card_a|rx|main_rx:var_trns_cntr[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \card_a|rx|main_rx:var_trns_cntr[17]~q\,
	datad => VCC,
	cin => \card_a|rx|Add1~33\,
	combout => \card_a|rx|Add1~34_combout\,
	cout => \card_a|rx|Add1~35\);

-- Location: FF_X46_Y35_N17
\card_a|rx|main_rx:var_trns_cntr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Add1~34_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|main_rx:var_trns_cntr[17]~q\);

-- Location: LCCOMB_X46_Y35_N18
\card_a|rx|Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Add1~36_combout\ = \card_a|rx|main_rx:var_trns_cntr[18]~q\ $ (!\card_a|rx|Add1~35\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|main_rx:var_trns_cntr[18]~q\,
	cin => \card_a|rx|Add1~35\,
	combout => \card_a|rx|Add1~36_combout\);

-- Location: LCCOMB_X46_Y35_N26
\card_a|rx|sig_ram_address[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|sig_ram_address[0]~6_combout\ = (!\card_a|rx|Add1~28_combout\ & (\card_a|rx|Add1~36_combout\ & (\card_a|rx|Add1~26_combout\ & \card_a|rx|Add1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|Add1~28_combout\,
	datab => \card_a|rx|Add1~36_combout\,
	datac => \card_a|rx|Add1~26_combout\,
	datad => \card_a|rx|Add1~30_combout\,
	combout => \card_a|rx|sig_ram_address[0]~6_combout\);

-- Location: LCCOMB_X46_Y35_N24
\card_a|rx|sig_ram_address[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|sig_ram_address[0]~5_combout\ = (\card_a|rx|Add1~34_combout\ & \card_a|rx|Add1~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|Add1~34_combout\,
	datad => \card_a|rx|Add1~32_combout\,
	combout => \card_a|rx|sig_ram_address[0]~5_combout\);

-- Location: LCCOMB_X46_Y36_N6
\card_a|rx|sig_ram_address[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|sig_ram_address[0]~4_combout\ = (!\card_a|rx|Add1~4_combout\ & (!\card_a|rx|Add1~6_combout\ & (!\card_a|rx|Add1~8_combout\ & \card_a|rx|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|Add1~4_combout\,
	datab => \card_a|rx|Add1~6_combout\,
	datac => \card_a|rx|Add1~8_combout\,
	datad => \card_a|rx|Add1~10_combout\,
	combout => \card_a|rx|sig_ram_address[0]~4_combout\);

-- Location: LCCOMB_X46_Y36_N4
\card_a|rx|sig_ram_address[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|sig_ram_address[0]~3_combout\ = (!\card_a|rx|Add1~2_combout\ & (!\card_a|rx|state_rx.s0~q\ & (!\card_a|rx|Add1~0_combout\ & \card_a|rx|sig_bouncer_bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|Add1~2_combout\,
	datab => \card_a|rx|state_rx.s0~q\,
	datac => \card_a|rx|Add1~0_combout\,
	datad => \card_a|rx|sig_bouncer_bit~q\,
	combout => \card_a|rx|sig_ram_address[0]~3_combout\);

-- Location: LCCOMB_X46_Y35_N20
\card_a|rx|sig_ram_address[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|sig_ram_address[0]~7_combout\ = (\card_a|rx|sig_ram_address[0]~6_combout\ & (\card_a|rx|sig_ram_address[0]~5_combout\ & (\card_a|rx|sig_ram_address[0]~4_combout\ & \card_a|rx|sig_ram_address[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|sig_ram_address[0]~6_combout\,
	datab => \card_a|rx|sig_ram_address[0]~5_combout\,
	datac => \card_a|rx|sig_ram_address[0]~4_combout\,
	datad => \card_a|rx|sig_ram_address[0]~3_combout\,
	combout => \card_a|rx|sig_ram_address[0]~7_combout\);

-- Location: LCCOMB_X46_Y36_N8
\card_a|rx|sig_ram_address[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|sig_ram_address[0]~1_combout\ = (!\card_a|rx|Add1~18_combout\ & (!\card_a|rx|Add1~14_combout\ & (\card_a|rx|Add1~16_combout\ & !\card_a|rx|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|Add1~18_combout\,
	datab => \card_a|rx|Add1~14_combout\,
	datac => \card_a|rx|Add1~16_combout\,
	datad => \card_a|rx|Add1~12_combout\,
	combout => \card_a|rx|sig_ram_address[0]~1_combout\);

-- Location: LCCOMB_X46_Y35_N22
\card_a|rx|sig_ram_address[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|sig_ram_address[0]~2_combout\ = (!\card_a|rx|Add1~22_combout\ & (!\card_a|rx|Add1~24_combout\ & (!\card_a|rx|Add1~20_combout\ & \card_a|rx|sig_ram_address[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|Add1~22_combout\,
	datab => \card_a|rx|Add1~24_combout\,
	datac => \card_a|rx|Add1~20_combout\,
	datad => \card_a|rx|sig_ram_address[0]~1_combout\,
	combout => \card_a|rx|sig_ram_address[0]~2_combout\);

-- Location: LCCOMB_X46_Y35_N28
\card_a|rx|sig_ram_address[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|sig_ram_address[3]~0_combout\ = (!\card_a|rx|sig_data_bit~q\ & \card_a|rx|state_rx.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_a|rx|sig_data_bit~q\,
	datad => \card_a|rx|state_rx.s2~q\,
	combout => \card_a|rx|sig_ram_address[3]~0_combout\);

-- Location: LCCOMB_X46_Y35_N30
\card_a|rx|sig_ram_address[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|sig_ram_address[0]~8_combout\ = (\resetn~input_o\ & ((\card_a|rx|sig_ram_address[3]~0_combout\) # ((\card_a|rx|sig_ram_address[0]~7_combout\ & \card_a|rx|sig_ram_address[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~input_o\,
	datab => \card_a|rx|sig_ram_address[0]~7_combout\,
	datac => \card_a|rx|sig_ram_address[0]~2_combout\,
	datad => \card_a|rx|sig_ram_address[3]~0_combout\,
	combout => \card_a|rx|sig_ram_address[0]~8_combout\);

-- Location: FF_X50_Y35_N1
\card_a|rx|sig_ram_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Selector10~0_combout\,
	ena => \card_a|rx|sig_ram_address[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|sig_ram_address\(0));

-- Location: LCCOMB_X50_Y35_N22
\card_a|rx|sig_cnt_address[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|sig_cnt_address[1]~4_combout\ = (\card_a|rx|sig_cnt_address\(1) & (\card_a|rx|sig_cnt_address\(0) $ (VCC))) # (!\card_a|rx|sig_cnt_address\(1) & (\card_a|rx|sig_cnt_address\(0) & VCC))
-- \card_a|rx|sig_cnt_address[1]~5\ = CARRY((\card_a|rx|sig_cnt_address\(1) & \card_a|rx|sig_cnt_address\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|sig_cnt_address\(1),
	datab => \card_a|rx|sig_cnt_address\(0),
	datad => VCC,
	combout => \card_a|rx|sig_cnt_address[1]~4_combout\,
	cout => \card_a|rx|sig_cnt_address[1]~5\);

-- Location: FF_X50_Y35_N23
\card_a|rx|sig_cnt_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|sig_cnt_address[1]~4_combout\,
	ena => \card_a|rx|detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|sig_cnt_address\(1));

-- Location: LCCOMB_X50_Y35_N10
\card_a|rx|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Selector9~0_combout\ = (\card_a|rx|sig_cnt_address\(1) & \card_a|rx|state_rx.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_a|rx|sig_cnt_address\(1),
	datad => \card_a|rx|state_rx.s2~q\,
	combout => \card_a|rx|Selector9~0_combout\);

-- Location: FF_X50_Y35_N11
\card_a|rx|sig_ram_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Selector9~0_combout\,
	ena => \card_a|rx|sig_ram_address[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|sig_ram_address\(1));

-- Location: LCCOMB_X50_Y35_N24
\card_a|rx|sig_cnt_address[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|sig_cnt_address[2]~6_combout\ = (\card_a|rx|sig_cnt_address\(2) & (!\card_a|rx|sig_cnt_address[1]~5\)) # (!\card_a|rx|sig_cnt_address\(2) & ((\card_a|rx|sig_cnt_address[1]~5\) # (GND)))
-- \card_a|rx|sig_cnt_address[2]~7\ = CARRY((!\card_a|rx|sig_cnt_address[1]~5\) # (!\card_a|rx|sig_cnt_address\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \card_a|rx|sig_cnt_address\(2),
	datad => VCC,
	cin => \card_a|rx|sig_cnt_address[1]~5\,
	combout => \card_a|rx|sig_cnt_address[2]~6_combout\,
	cout => \card_a|rx|sig_cnt_address[2]~7\);

-- Location: FF_X50_Y35_N25
\card_a|rx|sig_cnt_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|sig_cnt_address[2]~6_combout\,
	ena => \card_a|rx|detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|sig_cnt_address\(2));

-- Location: LCCOMB_X50_Y35_N4
\card_a|rx|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Selector8~0_combout\ = (\card_a|rx|state_rx.s2~q\ & \card_a|rx|sig_cnt_address\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|state_rx.s2~q\,
	datad => \card_a|rx|sig_cnt_address\(2),
	combout => \card_a|rx|Selector8~0_combout\);

-- Location: FF_X50_Y35_N5
\card_a|rx|sig_ram_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Selector8~0_combout\,
	ena => \card_a|rx|sig_ram_address[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|sig_ram_address\(2));

-- Location: LCCOMB_X50_Y35_N26
\card_a|rx|sig_cnt_address[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|sig_cnt_address[3]~8_combout\ = (\card_a|rx|sig_cnt_address\(3) & (\card_a|rx|sig_cnt_address[2]~7\ $ (GND))) # (!\card_a|rx|sig_cnt_address\(3) & (!\card_a|rx|sig_cnt_address[2]~7\ & VCC))
-- \card_a|rx|sig_cnt_address[3]~9\ = CARRY((\card_a|rx|sig_cnt_address\(3) & !\card_a|rx|sig_cnt_address[2]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|sig_cnt_address\(3),
	datad => VCC,
	cin => \card_a|rx|sig_cnt_address[2]~7\,
	combout => \card_a|rx|sig_cnt_address[3]~8_combout\,
	cout => \card_a|rx|sig_cnt_address[3]~9\);

-- Location: FF_X50_Y35_N27
\card_a|rx|sig_cnt_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|sig_cnt_address[3]~8_combout\,
	ena => \card_a|rx|detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|sig_cnt_address\(3));

-- Location: LCCOMB_X50_Y35_N14
\card_a|rx|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Selector7~0_combout\ = (\card_a|rx|sig_cnt_address\(3) & \card_a|rx|state_rx.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_a|rx|sig_cnt_address\(3),
	datad => \card_a|rx|state_rx.s2~q\,
	combout => \card_a|rx|Selector7~0_combout\);

-- Location: FF_X50_Y35_N15
\card_a|rx|sig_ram_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Selector7~0_combout\,
	ena => \card_a|rx|sig_ram_address[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|sig_ram_address\(3));

-- Location: LCCOMB_X50_Y35_N28
\card_a|rx|sig_cnt_address[4]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|sig_cnt_address[4]~10_combout\ = \card_a|rx|sig_cnt_address[3]~9\ $ (\card_a|rx|sig_cnt_address\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \card_a|rx|sig_cnt_address\(4),
	cin => \card_a|rx|sig_cnt_address[3]~9\,
	combout => \card_a|rx|sig_cnt_address[4]~10_combout\);

-- Location: FF_X50_Y35_N29
\card_a|rx|sig_cnt_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|sig_cnt_address[4]~10_combout\,
	ena => \card_a|rx|detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|sig_cnt_address\(4));

-- Location: LCCOMB_X50_Y35_N16
\card_a|rx|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Selector6~0_combout\ = (\card_a|rx|state_rx.s2~q\ & \card_a|rx|sig_cnt_address\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|state_rx.s2~q\,
	datad => \card_a|rx|sig_cnt_address\(4),
	combout => \card_a|rx|Selector6~0_combout\);

-- Location: FF_X50_Y35_N17
\card_a|rx|sig_ram_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Selector6~0_combout\,
	ena => \card_a|rx|sig_ram_address[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|sig_ram_address\(4));

-- Location: LCCOMB_X50_Y36_N30
\card_a|biphase|sig_toggle~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_toggle~0_combout\ = (!\card_a|biphase|sig_read_address_cnt\(0) & (!\card_a|biphase|sig_read_address_cnt\(4) & (\card_a|biphase|state_mini.s4a~q\ & !\card_a|biphase|sig_read_address_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|biphase|sig_read_address_cnt\(0),
	datab => \card_a|biphase|sig_read_address_cnt\(4),
	datac => \card_a|biphase|state_mini.s4a~q\,
	datad => \card_a|biphase|sig_read_address_cnt\(3),
	combout => \card_a|biphase|sig_toggle~0_combout\);

-- Location: LCCOMB_X50_Y36_N16
\card_a|biphase|sig_toggle~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_toggle~1_combout\ = \card_a|biphase|sig_toggle~q\ $ (((\card_a|biphase|sig_toggle~0_combout\ & (!\card_a|biphase|sig_read_address_cnt\(1) & !\card_a|biphase|sig_read_address_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|biphase|sig_toggle~0_combout\,
	datab => \card_a|biphase|sig_read_address_cnt\(1),
	datac => \card_a|biphase|sig_toggle~q\,
	datad => \card_a|biphase|sig_read_address_cnt\(2),
	combout => \card_a|biphase|sig_toggle~1_combout\);

-- Location: FF_X50_Y36_N17
\card_a|biphase|sig_toggle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_toggle~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_toggle~q\);

-- Location: LCCOMB_X50_Y35_N18
\card_a|rx|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|Selector5~0_combout\ = (\card_a|rx|state_rx.s2~q\ & !\card_a|biphase|sig_toggle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|rx|state_rx.s2~q\,
	datac => \card_a|biphase|sig_toggle~q\,
	combout => \card_a|rx|Selector5~0_combout\);

-- Location: FF_X50_Y35_N19
\card_a|rx|sig_ram_address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|Selector5~0_combout\,
	ena => \card_a|rx|sig_ram_address[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|sig_ram_address\(5));

-- Location: LCCOMB_X52_Y36_N16
\card_a|biphase|sig_read_address[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_read_address[0]~feeder_combout\ = \card_a|biphase|sig_read_address_cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \card_a|biphase|sig_read_address_cnt\(0),
	combout => \card_a|biphase|sig_read_address[0]~feeder_combout\);

-- Location: LCCOMB_X50_Y36_N28
\card_a|biphase|sig_read_address[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_read_address[0]~0_combout\ = (\resetn~input_o\ & \card_a|biphase|state_mini.s5a~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetn~input_o\,
	datac => \card_a|biphase|state_mini.s5a~q\,
	combout => \card_a|biphase|sig_read_address[0]~0_combout\);

-- Location: FF_X52_Y36_N17
\card_a|biphase|sig_read_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_read_address[0]~feeder_combout\,
	ena => \card_a|biphase|sig_read_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_read_address\(0));

-- Location: LCCOMB_X52_Y36_N10
\card_a|biphase|sig_read_address[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_read_address[1]~feeder_combout\ = \card_a|biphase|sig_read_address_cnt\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \card_a|biphase|sig_read_address_cnt\(1),
	combout => \card_a|biphase|sig_read_address[1]~feeder_combout\);

-- Location: FF_X52_Y36_N11
\card_a|biphase|sig_read_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_read_address[1]~feeder_combout\,
	ena => \card_a|biphase|sig_read_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_read_address\(1));

-- Location: LCCOMB_X52_Y36_N4
\card_a|biphase|sig_read_address[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_read_address[2]~feeder_combout\ = \card_a|biphase|sig_read_address_cnt\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \card_a|biphase|sig_read_address_cnt\(2),
	combout => \card_a|biphase|sig_read_address[2]~feeder_combout\);

-- Location: FF_X52_Y36_N5
\card_a|biphase|sig_read_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_read_address[2]~feeder_combout\,
	ena => \card_a|biphase|sig_read_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_read_address\(2));

-- Location: FF_X52_Y36_N23
\card_a|biphase|sig_read_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \card_a|biphase|sig_read_address_cnt\(3),
	sload => VCC,
	ena => \card_a|biphase|sig_read_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_read_address\(3));

-- Location: FF_X52_Y36_N1
\card_a|biphase|sig_read_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \card_a|biphase|sig_read_address_cnt\(4),
	sload => VCC,
	ena => \card_a|biphase|sig_read_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_read_address\(4));

-- Location: LCCOMB_X52_Y36_N26
\card_a|biphase|sig_read_address[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_read_address[5]~feeder_combout\ = \card_a|biphase|sig_toggle~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \card_a|biphase|sig_toggle~q\,
	combout => \card_a|biphase|sig_read_address[5]~feeder_combout\);

-- Location: FF_X52_Y36_N27
\card_a|biphase|sig_read_address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_read_address[5]~feeder_combout\,
	ena => \card_a|biphase|sig_read_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_read_address\(5));

-- Location: LCCOMB_X54_Y36_N18
\card_a|rx|sig_detected_byte[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|sig_detected_byte[1]~feeder_combout\ = \card_a|rx|sig_detected_byte\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \card_a|rx|sig_detected_byte\(0),
	combout => \card_a|rx|sig_detected_byte[1]~feeder_combout\);

-- Location: FF_X54_Y36_N19
\card_a|rx|sig_detected_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|sig_detected_byte[1]~feeder_combout\,
	ena => \card_a|rx|sig_detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|sig_detected_byte\(1));

-- Location: LCCOMB_X54_Y36_N8
\card_a|rx|detected_byte[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|detected_byte[1]~feeder_combout\ = \card_a|rx|sig_detected_byte\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \card_a|rx|sig_detected_byte\(1),
	combout => \card_a|rx|detected_byte[1]~feeder_combout\);

-- Location: FF_X54_Y36_N9
\card_a|rx|detected_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|detected_byte[1]~feeder_combout\,
	ena => \card_a|rx|detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|detected_byte\(1));

-- Location: LCCOMB_X54_Y36_N30
\card_a|rx|sig_detected_byte[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|sig_detected_byte[2]~feeder_combout\ = \card_a|rx|sig_detected_byte\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \card_a|rx|sig_detected_byte\(1),
	combout => \card_a|rx|sig_detected_byte[2]~feeder_combout\);

-- Location: FF_X54_Y36_N31
\card_a|rx|sig_detected_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|sig_detected_byte[2]~feeder_combout\,
	ena => \card_a|rx|sig_detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|sig_detected_byte\(2));

-- Location: FF_X54_Y36_N5
\card_a|rx|detected_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \card_a|rx|sig_detected_byte\(2),
	sload => VCC,
	ena => \card_a|rx|detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|detected_byte\(2));

-- Location: FF_X54_Y36_N27
\card_a|rx|sig_detected_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \card_a|rx|sig_detected_byte\(2),
	sload => VCC,
	ena => \card_a|rx|sig_detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|sig_detected_byte\(3));

-- Location: FF_X54_Y36_N17
\card_a|rx|detected_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \card_a|rx|sig_detected_byte\(3),
	sload => VCC,
	ena => \card_a|rx|detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|detected_byte\(3));

-- Location: FF_X54_Y36_N23
\card_a|rx|sig_detected_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \card_a|rx|sig_detected_byte\(3),
	sload => VCC,
	ena => \card_a|rx|sig_detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|sig_detected_byte\(4));

-- Location: FF_X54_Y36_N29
\card_a|rx|detected_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \card_a|rx|sig_detected_byte\(4),
	sload => VCC,
	ena => \card_a|rx|detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|detected_byte\(4));

-- Location: FF_X54_Y36_N3
\card_a|rx|sig_detected_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \card_a|rx|sig_detected_byte\(4),
	sload => VCC,
	ena => \card_a|rx|sig_detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|sig_detected_byte\(5));

-- Location: LCCOMB_X54_Y36_N24
\card_a|rx|detected_byte[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|detected_byte[5]~feeder_combout\ = \card_a|rx|sig_detected_byte\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \card_a|rx|sig_detected_byte\(5),
	combout => \card_a|rx|detected_byte[5]~feeder_combout\);

-- Location: FF_X54_Y36_N25
\card_a|rx|detected_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|detected_byte[5]~feeder_combout\,
	ena => \card_a|rx|detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|detected_byte\(5));

-- Location: LCCOMB_X54_Y36_N6
\card_a|rx|sig_detected_byte[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|sig_detected_byte[6]~feeder_combout\ = \card_a|rx|sig_detected_byte\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \card_a|rx|sig_detected_byte\(5),
	combout => \card_a|rx|sig_detected_byte[6]~feeder_combout\);

-- Location: FF_X54_Y36_N7
\card_a|rx|sig_detected_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|sig_detected_byte[6]~feeder_combout\,
	ena => \card_a|rx|sig_detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|sig_detected_byte\(6));

-- Location: LCCOMB_X54_Y36_N12
\card_a|rx|detected_byte[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|detected_byte[6]~feeder_combout\ = \card_a|rx|sig_detected_byte\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \card_a|rx|sig_detected_byte\(6),
	combout => \card_a|rx|detected_byte[6]~feeder_combout\);

-- Location: FF_X54_Y36_N13
\card_a|rx|detected_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|detected_byte[6]~feeder_combout\,
	ena => \card_a|rx|detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|detected_byte\(6));

-- Location: LCCOMB_X54_Y36_N10
\card_a|rx|sig_detected_byte[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|sig_detected_byte[7]~feeder_combout\ = \card_a|rx|sig_detected_byte\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \card_a|rx|sig_detected_byte\(6),
	combout => \card_a|rx|sig_detected_byte[7]~feeder_combout\);

-- Location: FF_X54_Y36_N11
\card_a|rx|sig_detected_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|sig_detected_byte[7]~feeder_combout\,
	ena => \card_a|rx|sig_detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|sig_detected_byte\(7));

-- Location: LCCOMB_X54_Y36_N0
\card_a|rx|detected_byte[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|rx|detected_byte[7]~feeder_combout\ = \card_a|rx|sig_detected_byte\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \card_a|rx|sig_detected_byte\(7),
	combout => \card_a|rx|detected_byte[7]~feeder_combout\);

-- Location: FF_X54_Y36_N1
\card_a|rx|detected_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|rx|detected_byte[7]~feeder_combout\,
	ena => \card_a|rx|detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|rx|detected_byte\(7));

-- Location: M9K_X53_Y36_N0
\card_a|memory|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000003F00000003E00000003D00000003C00000003B00000003A0000000390",
	mem_init0 => X"0000003800000003700000003600000003500000003400000003300000003200000003100000003000000002F00000002E00000002D00000002C00000002B00000002A00000002900000002800000002700000002600000002500000002400000002300000002200000002100000002000000001F00000001E00000001D00000001C00000001B00000001A00000001900000001800000001700000001600000001500000001400000001300000001200000001100000001000000000F00000000E00000000D00000000C00000000B00000000A000000009000000008000000007000000006000000005000000004000000003000000002000000001000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Ram2_X_data.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Card_A_Design:card_a|Ram2_X:memory|altsyncram:altsyncram_component|altsyncram_64s1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \card_a|rx|sig_wr_ram~q\,
	portbre => \card_a|biphase|rd~combout\,
	clk0 => \sysclk~inputclkctrl_outclk\,
	clk1 => \sysclk~inputclkctrl_outclk\,
	ena0 => \card_a|rx|sig_wr_ram~q\,
	ena1 => \card_a|memory|altsyncram_component|auto_generated|ram_block1a0~0_combout\,
	portadatain => \card_a|memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \card_a|memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \card_a|memory|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \card_a|memory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X51_Y39_N16
\card_a|biphase|sig_shift_data~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_shift_data~7_combout\ = (\card_a|biphase|sig_read~q\ & \card_a|memory|altsyncram_component|auto_generated|q_b\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_a|biphase|sig_read~q\,
	datad => \card_a|memory|altsyncram_component|auto_generated|q_b\(0),
	combout => \card_a|biphase|sig_shift_data~7_combout\);

-- Location: FF_X51_Y39_N17
\card_a|biphase|sig_shift_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_shift_data~7_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|biphase|main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_shift_data\(0));

-- Location: LCCOMB_X51_Y39_N2
\card_a|biphase|sig_shift_data~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_shift_data~6_combout\ = (\card_a|biphase|sig_read~q\ & ((\card_a|memory|altsyncram_component|auto_generated|q_b\(1)))) # (!\card_a|biphase|sig_read~q\ & (\card_a|biphase|sig_shift_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_a|biphase|sig_shift_data\(0),
	datac => \card_a|biphase|sig_read~q\,
	datad => \card_a|memory|altsyncram_component|auto_generated|q_b\(1),
	combout => \card_a|biphase|sig_shift_data~6_combout\);

-- Location: FF_X51_Y39_N3
\card_a|biphase|sig_shift_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_shift_data~6_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|biphase|main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_shift_data\(1));

-- Location: LCCOMB_X51_Y39_N24
\card_a|biphase|sig_shift_data~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_shift_data~5_combout\ = (\card_a|biphase|sig_read~q\ & ((\card_a|memory|altsyncram_component|auto_generated|q_b\(2)))) # (!\card_a|biphase|sig_read~q\ & (\card_a|biphase|sig_shift_data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_a|biphase|sig_shift_data\(1),
	datac => \card_a|biphase|sig_read~q\,
	datad => \card_a|memory|altsyncram_component|auto_generated|q_b\(2),
	combout => \card_a|biphase|sig_shift_data~5_combout\);

-- Location: FF_X51_Y39_N25
\card_a|biphase|sig_shift_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_shift_data~5_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|biphase|main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_shift_data\(2));

-- Location: LCCOMB_X51_Y39_N4
\card_a|biphase|sig_shift_data~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_shift_data~4_combout\ = (\card_a|biphase|sig_read~q\ & ((\card_a|memory|altsyncram_component|auto_generated|q_b\(3)))) # (!\card_a|biphase|sig_read~q\ & (\card_a|biphase|sig_shift_data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_a|biphase|sig_shift_data\(2),
	datac => \card_a|biphase|sig_read~q\,
	datad => \card_a|memory|altsyncram_component|auto_generated|q_b\(3),
	combout => \card_a|biphase|sig_shift_data~4_combout\);

-- Location: FF_X51_Y39_N5
\card_a|biphase|sig_shift_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_shift_data~4_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|biphase|main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_shift_data\(3));

-- Location: LCCOMB_X51_Y39_N26
\card_a|biphase|sig_shift_data~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_shift_data~3_combout\ = (\card_a|biphase|sig_read~q\ & ((\card_a|memory|altsyncram_component|auto_generated|q_b\(4)))) # (!\card_a|biphase|sig_read~q\ & (\card_a|biphase|sig_shift_data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|biphase|sig_shift_data\(3),
	datac => \card_a|biphase|sig_read~q\,
	datad => \card_a|memory|altsyncram_component|auto_generated|q_b\(4),
	combout => \card_a|biphase|sig_shift_data~3_combout\);

-- Location: FF_X51_Y39_N27
\card_a|biphase|sig_shift_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_shift_data~3_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|biphase|main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_shift_data\(4));

-- Location: LCCOMB_X51_Y39_N30
\card_a|biphase|sig_shift_data~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_shift_data~2_combout\ = (\card_a|biphase|sig_read~q\ & ((\card_a|memory|altsyncram_component|auto_generated|q_b\(5)))) # (!\card_a|biphase|sig_read~q\ & (\card_a|biphase|sig_shift_data\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|biphase|sig_shift_data\(4),
	datab => \card_a|biphase|sig_read~q\,
	datac => \card_a|memory|altsyncram_component|auto_generated|q_b\(5),
	combout => \card_a|biphase|sig_shift_data~2_combout\);

-- Location: FF_X51_Y39_N31
\card_a|biphase|sig_shift_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_shift_data~2_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|biphase|main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_shift_data\(5));

-- Location: LCCOMB_X51_Y39_N6
\card_a|biphase|sig_shift_data~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_shift_data~1_combout\ = (\card_a|biphase|sig_read~q\ & ((\card_a|memory|altsyncram_component|auto_generated|q_b\(6)))) # (!\card_a|biphase|sig_read~q\ & (\card_a|biphase|sig_shift_data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|biphase|sig_shift_data\(5),
	datab => \card_a|biphase|sig_read~q\,
	datac => \card_a|memory|altsyncram_component|auto_generated|q_b\(6),
	combout => \card_a|biphase|sig_shift_data~1_combout\);

-- Location: FF_X51_Y39_N7
\card_a|biphase|sig_shift_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_shift_data~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|biphase|main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_shift_data\(6));

-- Location: LCCOMB_X51_Y39_N14
\card_a|biphase|sig_shift_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_shift_data~0_combout\ = (\card_a|biphase|sig_read~q\ & ((\card_a|memory|altsyncram_component|auto_generated|q_b\(7)))) # (!\card_a|biphase|sig_read~q\ & (\card_a|biphase|sig_shift_data\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|biphase|sig_shift_data\(6),
	datac => \card_a|biphase|sig_read~q\,
	datad => \card_a|memory|altsyncram_component|auto_generated|q_b\(7),
	combout => \card_a|biphase|sig_shift_data~0_combout\);

-- Location: FF_X51_Y39_N15
\card_a|biphase|sig_shift_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_shift_data~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \card_a|biphase|main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_shift_data\(7));

-- Location: LCCOMB_X47_Y39_N28
\card_a|biphase|sig_BiPhase_tx_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \card_a|biphase|sig_BiPhase_tx_out~0_combout\ = \card_a|biphase|sig_BiPhase_tx_out~q\ $ (((\card_a|biphase|sig_cut~q\ & ((!\card_a|biphase|sig_cut_not~q\))) # (!\card_a|biphase|sig_cut~q\ & (!\card_a|biphase|sig_shift_data\(7) & 
-- \card_a|biphase|sig_cut_not~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_a|biphase|sig_shift_data\(7),
	datab => \card_a|biphase|sig_cut~q\,
	datac => \card_a|biphase|sig_BiPhase_tx_out~q\,
	datad => \card_a|biphase|sig_cut_not~q\,
	combout => \card_a|biphase|sig_BiPhase_tx_out~0_combout\);

-- Location: FF_X47_Y39_N29
\card_a|biphase|sig_BiPhase_tx_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \card_a|biphase|sig_BiPhase_tx_out~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \card_a|biphase|sig_BiPhase_tx_out~q\);

-- Location: FF_X47_Y40_N31
\bsfilter|sig_filter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \card_a|biphase|sig_BiPhase_tx_out~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bsfilter|sig_filter\(0));

-- Location: FF_X46_Y40_N3
\bsfilter|sig_filter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \bsfilter|sig_filter\(0),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bsfilter|sig_filter\(1));

-- Location: LCCOMB_X46_Y40_N20
\bsfilter|sig_filter[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bsfilter|sig_filter[2]~feeder_combout\ = \bsfilter|sig_filter\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bsfilter|sig_filter\(1),
	combout => \bsfilter|sig_filter[2]~feeder_combout\);

-- Location: FF_X46_Y40_N21
\bsfilter|sig_filter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \bsfilter|sig_filter[2]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bsfilter|sig_filter\(2));

-- Location: LCCOMB_X46_Y40_N30
\bsfilter|sig_filter[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bsfilter|sig_filter[3]~feeder_combout\ = \bsfilter|sig_filter\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bsfilter|sig_filter\(2),
	combout => \bsfilter|sig_filter[3]~feeder_combout\);

-- Location: FF_X46_Y40_N31
\bsfilter|sig_filter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \bsfilter|sig_filter[3]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bsfilter|sig_filter\(3));

-- Location: FF_X46_Y40_N25
\bsfilter|sig_filter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \bsfilter|sig_filter\(3),
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bsfilter|sig_filter\(4));

-- Location: LCCOMB_X46_Y40_N18
\bsfilter|sig_filter[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bsfilter|sig_filter[5]~feeder_combout\ = \bsfilter|sig_filter\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bsfilter|sig_filter\(4),
	combout => \bsfilter|sig_filter[5]~feeder_combout\);

-- Location: FF_X46_Y40_N19
\bsfilter|sig_filter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \bsfilter|sig_filter[5]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bsfilter|sig_filter\(5));

-- Location: LCCOMB_X46_Y40_N28
\bsfilter|sig_filter[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bsfilter|sig_filter[6]~feeder_combout\ = \bsfilter|sig_filter\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bsfilter|sig_filter\(5),
	combout => \bsfilter|sig_filter[6]~feeder_combout\);

-- Location: FF_X46_Y40_N29
\bsfilter|sig_filter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \bsfilter|sig_filter[6]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bsfilter|sig_filter\(6));

-- Location: LCCOMB_X46_Y40_N6
\bsfilter|sig_check_5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bsfilter|sig_check_5~0_combout\ = \bsfilter|sig_filter\(6) $ (!\bsfilter|sig_filter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bsfilter|sig_filter\(6),
	datad => \bsfilter|sig_filter\(5),
	combout => \bsfilter|sig_check_5~0_combout\);

-- Location: FF_X46_Y40_N7
\bsfilter|sig_check_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \bsfilter|sig_check_5~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bsfilter|sig_check_5~q\);

-- Location: LCCOMB_X46_Y40_N4
\bsfilter|sig_check_4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bsfilter|sig_check_4~0_combout\ = \bsfilter|sig_filter\(5) $ (!\bsfilter|sig_filter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bsfilter|sig_filter\(5),
	datad => \bsfilter|sig_filter\(4),
	combout => \bsfilter|sig_check_4~0_combout\);

-- Location: FF_X46_Y40_N5
\bsfilter|sig_check_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \bsfilter|sig_check_4~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bsfilter|sig_check_4~q\);

-- Location: LCCOMB_X46_Y40_N22
\bsfilter|sig_filter[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bsfilter|sig_filter[7]~feeder_combout\ = \bsfilter|sig_filter\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bsfilter|sig_filter\(6),
	combout => \bsfilter|sig_filter[7]~feeder_combout\);

-- Location: FF_X46_Y40_N23
\bsfilter|sig_filter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \bsfilter|sig_filter[7]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bsfilter|sig_filter\(7));

-- Location: LCCOMB_X46_Y40_N8
\bsfilter|sig_check_6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bsfilter|sig_check_6~0_combout\ = \bsfilter|sig_filter\(6) $ (!\bsfilter|sig_filter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bsfilter|sig_filter\(6),
	datac => \bsfilter|sig_filter\(7),
	combout => \bsfilter|sig_check_6~0_combout\);

-- Location: FF_X46_Y40_N9
\bsfilter|sig_check_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \bsfilter|sig_check_6~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bsfilter|sig_check_6~q\);

-- Location: LCCOMB_X46_Y40_N26
\bsfilter|sig_check_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bsfilter|sig_check_0~0_combout\ = \bsfilter|sig_filter\(1) $ (!\bsfilter|sig_filter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bsfilter|sig_filter\(1),
	datac => \bsfilter|sig_filter\(0),
	combout => \bsfilter|sig_check_0~0_combout\);

-- Location: FF_X46_Y40_N27
\bsfilter|sig_check_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \bsfilter|sig_check_0~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bsfilter|sig_check_0~q\);

-- Location: LCCOMB_X46_Y40_N0
\bsfilter|sig_check_3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bsfilter|sig_check_3~0_combout\ = \bsfilter|sig_filter\(3) $ (!\bsfilter|sig_filter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bsfilter|sig_filter\(3),
	datad => \bsfilter|sig_filter\(4),
	combout => \bsfilter|sig_check_3~0_combout\);

-- Location: FF_X46_Y40_N1
\bsfilter|sig_check_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \bsfilter|sig_check_3~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bsfilter|sig_check_3~q\);

-- Location: LCCOMB_X46_Y40_N14
\bsfilter|sig_check_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bsfilter|sig_check_2~0_combout\ = \bsfilter|sig_filter\(3) $ (!\bsfilter|sig_filter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bsfilter|sig_filter\(3),
	datad => \bsfilter|sig_filter\(2),
	combout => \bsfilter|sig_check_2~0_combout\);

-- Location: FF_X46_Y40_N15
\bsfilter|sig_check_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \bsfilter|sig_check_2~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bsfilter|sig_check_2~q\);

-- Location: LCCOMB_X46_Y40_N12
\bsfilter|sig_check_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bsfilter|sig_check_1~0_combout\ = \bsfilter|sig_filter\(2) $ (!\bsfilter|sig_filter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bsfilter|sig_filter\(2),
	datad => \bsfilter|sig_filter\(1),
	combout => \bsfilter|sig_check_1~0_combout\);

-- Location: FF_X46_Y40_N13
\bsfilter|sig_check_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \bsfilter|sig_check_1~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bsfilter|sig_check_1~q\);

-- Location: LCCOMB_X46_Y40_N10
\bsfilter|main_check~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bsfilter|main_check~0_combout\ = (((!\bsfilter|sig_check_1~q\) # (!\bsfilter|sig_check_2~q\)) # (!\bsfilter|sig_check_3~q\)) # (!\bsfilter|sig_check_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bsfilter|sig_check_0~q\,
	datab => \bsfilter|sig_check_3~q\,
	datac => \bsfilter|sig_check_2~q\,
	datad => \bsfilter|sig_check_1~q\,
	combout => \bsfilter|main_check~0_combout\);

-- Location: LCCOMB_X46_Y40_N16
\bsfilter|main_check~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bsfilter|main_check~1_combout\ = (\bsfilter|sig_check_5~q\ & (\bsfilter|sig_check_4~q\ & (\bsfilter|sig_check_6~q\ & !\bsfilter|main_check~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bsfilter|sig_check_5~q\,
	datab => \bsfilter|sig_check_4~q\,
	datac => \bsfilter|sig_check_6~q\,
	datad => \bsfilter|main_check~0_combout\,
	combout => \bsfilter|main_check~1_combout\);

-- Location: FF_X46_Y40_N17
\bsfilter|sig_total_check\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \bsfilter|main_check~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bsfilter|sig_total_check~q\);

-- Location: LCCOMB_X49_Y43_N16
\bsfilter|signal_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bsfilter|signal_out~0_combout\ = (\bsfilter|sig_total_check~q\ & ((\card_a|biphase|sig_BiPhase_tx_out~q\))) # (!\bsfilter|sig_total_check~q\ & (\bsfilter|signal_out~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bsfilter|sig_total_check~q\,
	datac => \bsfilter|signal_out~q\,
	datad => \card_a|biphase|sig_BiPhase_tx_out~q\,
	combout => \bsfilter|signal_out~0_combout\);

-- Location: FF_X49_Y43_N17
\bsfilter|signal_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \bsfilter|signal_out~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bsfilter|signal_out~q\);

-- Location: LCCOMB_X54_Y50_N4
\simplebs|sig_bi_phase_filterd_cut~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \simplebs|sig_bi_phase_filterd_cut~feeder_combout\ = \bsfilter|signal_out~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bsfilter|signal_out~q\,
	combout => \simplebs|sig_bi_phase_filterd_cut~feeder_combout\);

-- Location: FF_X54_Y50_N5
\simplebs|sig_bi_phase_filterd_cut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \simplebs|sig_bi_phase_filterd_cut~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simplebs|sig_bi_phase_filterd_cut~q\);

-- Location: FF_X54_Y50_N19
\simplebs|sig_bi_phase_filterd_cut_not\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \simplebs|sig_bi_phase_filterd_cut~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simplebs|sig_bi_phase_filterd_cut_not~q\);

-- Location: LCCOMB_X55_Y49_N12
\simplebs|cnt_clk[5]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \simplebs|cnt_clk[5]~24_combout\ = (\simplebs|cnt_clk\(5) & (!\simplebs|cnt_clk[4]~23\)) # (!\simplebs|cnt_clk\(5) & ((\simplebs|cnt_clk[4]~23\) # (GND)))
-- \simplebs|cnt_clk[5]~25\ = CARRY((!\simplebs|cnt_clk[4]~23\) # (!\simplebs|cnt_clk\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simplebs|cnt_clk\(5),
	datad => VCC,
	cin => \simplebs|cnt_clk[4]~23\,
	combout => \simplebs|cnt_clk[5]~24_combout\,
	cout => \simplebs|cnt_clk[5]~25\);

-- Location: LCCOMB_X55_Y49_N14
\simplebs|cnt_clk[6]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \simplebs|cnt_clk[6]~26_combout\ = (\simplebs|cnt_clk\(6) & (\simplebs|cnt_clk[5]~25\ $ (GND))) # (!\simplebs|cnt_clk\(6) & (!\simplebs|cnt_clk[5]~25\ & VCC))
-- \simplebs|cnt_clk[6]~27\ = CARRY((\simplebs|cnt_clk\(6) & !\simplebs|cnt_clk[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \simplebs|cnt_clk\(6),
	datad => VCC,
	cin => \simplebs|cnt_clk[5]~25\,
	combout => \simplebs|cnt_clk[6]~26_combout\,
	cout => \simplebs|cnt_clk[6]~27\);

-- Location: FF_X55_Y49_N15
\simplebs|cnt_clk[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \simplebs|cnt_clk[6]~26_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \simplebs|clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simplebs|cnt_clk\(6));

-- Location: LCCOMB_X55_Y49_N16
\simplebs|cnt_clk[7]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \simplebs|cnt_clk[7]~28_combout\ = (\simplebs|cnt_clk\(7) & (!\simplebs|cnt_clk[6]~27\)) # (!\simplebs|cnt_clk\(7) & ((\simplebs|cnt_clk[6]~27\) # (GND)))
-- \simplebs|cnt_clk[7]~29\ = CARRY((!\simplebs|cnt_clk[6]~27\) # (!\simplebs|cnt_clk\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \simplebs|cnt_clk\(7),
	datad => VCC,
	cin => \simplebs|cnt_clk[6]~27\,
	combout => \simplebs|cnt_clk[7]~28_combout\,
	cout => \simplebs|cnt_clk[7]~29\);

-- Location: FF_X55_Y49_N17
\simplebs|cnt_clk[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \simplebs|cnt_clk[7]~28_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \simplebs|clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simplebs|cnt_clk\(7));

-- Location: LCCOMB_X55_Y49_N18
\simplebs|cnt_clk[8]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \simplebs|cnt_clk[8]~30_combout\ = (\simplebs|cnt_clk\(8) & (\simplebs|cnt_clk[7]~29\ $ (GND))) # (!\simplebs|cnt_clk\(8) & (!\simplebs|cnt_clk[7]~29\ & VCC))
-- \simplebs|cnt_clk[8]~31\ = CARRY((\simplebs|cnt_clk\(8) & !\simplebs|cnt_clk[7]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \simplebs|cnt_clk\(8),
	datad => VCC,
	cin => \simplebs|cnt_clk[7]~29\,
	combout => \simplebs|cnt_clk[8]~30_combout\,
	cout => \simplebs|cnt_clk[8]~31\);

-- Location: FF_X55_Y49_N19
\simplebs|cnt_clk[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \simplebs|cnt_clk[8]~30_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \simplebs|clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simplebs|cnt_clk\(8));

-- Location: LCCOMB_X55_Y49_N20
\simplebs|cnt_clk[9]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \simplebs|cnt_clk[9]~32_combout\ = (\simplebs|cnt_clk\(9) & (!\simplebs|cnt_clk[8]~31\)) # (!\simplebs|cnt_clk\(9) & ((\simplebs|cnt_clk[8]~31\) # (GND)))
-- \simplebs|cnt_clk[9]~33\ = CARRY((!\simplebs|cnt_clk[8]~31\) # (!\simplebs|cnt_clk\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \simplebs|cnt_clk\(9),
	datad => VCC,
	cin => \simplebs|cnt_clk[8]~31\,
	combout => \simplebs|cnt_clk[9]~32_combout\,
	cout => \simplebs|cnt_clk[9]~33\);

-- Location: FF_X55_Y49_N21
\simplebs|cnt_clk[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \simplebs|cnt_clk[9]~32_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \simplebs|clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simplebs|cnt_clk\(9));

-- Location: LCCOMB_X55_Y49_N22
\simplebs|cnt_clk[10]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \simplebs|cnt_clk[10]~34_combout\ = (\simplebs|cnt_clk\(10) & (\simplebs|cnt_clk[9]~33\ $ (GND))) # (!\simplebs|cnt_clk\(10) & (!\simplebs|cnt_clk[9]~33\ & VCC))
-- \simplebs|cnt_clk[10]~35\ = CARRY((\simplebs|cnt_clk\(10) & !\simplebs|cnt_clk[9]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simplebs|cnt_clk\(10),
	datad => VCC,
	cin => \simplebs|cnt_clk[9]~33\,
	combout => \simplebs|cnt_clk[10]~34_combout\,
	cout => \simplebs|cnt_clk[10]~35\);

-- Location: FF_X55_Y49_N23
\simplebs|cnt_clk[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \simplebs|cnt_clk[10]~34_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \simplebs|clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simplebs|cnt_clk\(10));

-- Location: LCCOMB_X55_Y49_N24
\simplebs|cnt_clk[11]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \simplebs|cnt_clk[11]~36_combout\ = (\simplebs|cnt_clk\(11) & (!\simplebs|cnt_clk[10]~35\)) # (!\simplebs|cnt_clk\(11) & ((\simplebs|cnt_clk[10]~35\) # (GND)))
-- \simplebs|cnt_clk[11]~37\ = CARRY((!\simplebs|cnt_clk[10]~35\) # (!\simplebs|cnt_clk\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \simplebs|cnt_clk\(11),
	datad => VCC,
	cin => \simplebs|cnt_clk[10]~35\,
	combout => \simplebs|cnt_clk[11]~36_combout\,
	cout => \simplebs|cnt_clk[11]~37\);

-- Location: FF_X55_Y49_N25
\simplebs|cnt_clk[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \simplebs|cnt_clk[11]~36_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \simplebs|clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simplebs|cnt_clk\(11));

-- Location: LCCOMB_X55_Y49_N26
\simplebs|cnt_clk[12]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \simplebs|cnt_clk[12]~38_combout\ = (\simplebs|cnt_clk\(12) & (\simplebs|cnt_clk[11]~37\ $ (GND))) # (!\simplebs|cnt_clk\(12) & (!\simplebs|cnt_clk[11]~37\ & VCC))
-- \simplebs|cnt_clk[12]~39\ = CARRY((\simplebs|cnt_clk\(12) & !\simplebs|cnt_clk[11]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simplebs|cnt_clk\(12),
	datad => VCC,
	cin => \simplebs|cnt_clk[11]~37\,
	combout => \simplebs|cnt_clk[12]~38_combout\,
	cout => \simplebs|cnt_clk[12]~39\);

-- Location: FF_X55_Y49_N27
\simplebs|cnt_clk[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \simplebs|cnt_clk[12]~38_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \simplebs|clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simplebs|cnt_clk\(12));

-- Location: LCCOMB_X54_Y50_N0
\simplebs|sig_enable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \simplebs|sig_enable~0_combout\ = (\simplebs|sig_enable~q\ & (\simplebs|sig_bi_phase_filterd_cut_not~q\ $ (!\simplebs|sig_bi_phase_filterd_cut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \simplebs|sig_bi_phase_filterd_cut_not~q\,
	datac => \simplebs|sig_bi_phase_filterd_cut~q\,
	datad => \simplebs|sig_enable~q\,
	combout => \simplebs|sig_enable~0_combout\);

-- Location: LCCOMB_X54_Y50_N30
\simplebs|sig_enable~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \simplebs|sig_enable~1_combout\ = (\simplebs|sig_enable~0_combout\) # ((\simplebs|Equal0~3_combout\ & (\simplebs|cnt_clk\(12) & !\simplebs|sig_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \simplebs|Equal0~3_combout\,
	datab => \simplebs|cnt_clk\(12),
	datac => \simplebs|sig_enable~q\,
	datad => \simplebs|sig_enable~0_combout\,
	combout => \simplebs|sig_enable~1_combout\);

-- Location: FF_X54_Y50_N31
\simplebs|sig_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \simplebs|sig_enable~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simplebs|sig_enable~q\);

-- Location: LCCOMB_X54_Y50_N18
\simplebs|clk_00~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \simplebs|clk_00~0_combout\ = (\simplebs|sig_enable~q\ & (\simplebs|sig_bi_phase_filterd_cut~q\ $ (\simplebs|sig_bi_phase_filterd_cut_not~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \simplebs|sig_bi_phase_filterd_cut~q\,
	datac => \simplebs|sig_bi_phase_filterd_cut_not~q\,
	datad => \simplebs|sig_enable~q\,
	combout => \simplebs|clk_00~0_combout\);

-- Location: FF_X55_Y49_N3
\simplebs|cnt_clk[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \simplebs|cnt_clk[0]~14_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \simplebs|clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simplebs|cnt_clk\(0));

-- Location: LCCOMB_X55_Y49_N4
\simplebs|cnt_clk[1]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \simplebs|cnt_clk[1]~16_combout\ = (\simplebs|cnt_clk\(1) & (!\simplebs|cnt_clk[0]~15\)) # (!\simplebs|cnt_clk\(1) & ((\simplebs|cnt_clk[0]~15\) # (GND)))
-- \simplebs|cnt_clk[1]~17\ = CARRY((!\simplebs|cnt_clk[0]~15\) # (!\simplebs|cnt_clk\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \simplebs|cnt_clk\(1),
	datad => VCC,
	cin => \simplebs|cnt_clk[0]~15\,
	combout => \simplebs|cnt_clk[1]~16_combout\,
	cout => \simplebs|cnt_clk[1]~17\);

-- Location: FF_X55_Y49_N5
\simplebs|cnt_clk[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \simplebs|cnt_clk[1]~16_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \simplebs|clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simplebs|cnt_clk\(1));

-- Location: LCCOMB_X55_Y49_N6
\simplebs|cnt_clk[2]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \simplebs|cnt_clk[2]~18_combout\ = (\simplebs|cnt_clk\(2) & (\simplebs|cnt_clk[1]~17\ $ (GND))) # (!\simplebs|cnt_clk\(2) & (!\simplebs|cnt_clk[1]~17\ & VCC))
-- \simplebs|cnt_clk[2]~19\ = CARRY((\simplebs|cnt_clk\(2) & !\simplebs|cnt_clk[1]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simplebs|cnt_clk\(2),
	datad => VCC,
	cin => \simplebs|cnt_clk[1]~17\,
	combout => \simplebs|cnt_clk[2]~18_combout\,
	cout => \simplebs|cnt_clk[2]~19\);

-- Location: FF_X55_Y49_N7
\simplebs|cnt_clk[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \simplebs|cnt_clk[2]~18_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \simplebs|clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simplebs|cnt_clk\(2));

-- Location: LCCOMB_X55_Y49_N8
\simplebs|cnt_clk[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \simplebs|cnt_clk[3]~20_combout\ = (\simplebs|cnt_clk\(3) & (!\simplebs|cnt_clk[2]~19\)) # (!\simplebs|cnt_clk\(3) & ((\simplebs|cnt_clk[2]~19\) # (GND)))
-- \simplebs|cnt_clk[3]~21\ = CARRY((!\simplebs|cnt_clk[2]~19\) # (!\simplebs|cnt_clk\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \simplebs|cnt_clk\(3),
	datad => VCC,
	cin => \simplebs|cnt_clk[2]~19\,
	combout => \simplebs|cnt_clk[3]~20_combout\,
	cout => \simplebs|cnt_clk[3]~21\);

-- Location: FF_X55_Y49_N9
\simplebs|cnt_clk[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \simplebs|cnt_clk[3]~20_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \simplebs|clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simplebs|cnt_clk\(3));

-- Location: LCCOMB_X55_Y49_N10
\simplebs|cnt_clk[4]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \simplebs|cnt_clk[4]~22_combout\ = (\simplebs|cnt_clk\(4) & (\simplebs|cnt_clk[3]~21\ $ (GND))) # (!\simplebs|cnt_clk\(4) & (!\simplebs|cnt_clk[3]~21\ & VCC))
-- \simplebs|cnt_clk[4]~23\ = CARRY((\simplebs|cnt_clk\(4) & !\simplebs|cnt_clk[3]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \simplebs|cnt_clk\(4),
	datad => VCC,
	cin => \simplebs|cnt_clk[3]~21\,
	combout => \simplebs|cnt_clk[4]~22_combout\,
	cout => \simplebs|cnt_clk[4]~23\);

-- Location: FF_X55_Y49_N11
\simplebs|cnt_clk[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \simplebs|cnt_clk[4]~22_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \simplebs|clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simplebs|cnt_clk\(4));

-- Location: FF_X55_Y49_N13
\simplebs|cnt_clk[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \simplebs|cnt_clk[5]~24_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \simplebs|clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simplebs|cnt_clk\(5));

-- Location: LCCOMB_X55_Y49_N30
\simplebs|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \simplebs|Equal0~1_combout\ = (!\simplebs|cnt_clk\(5) & (!\simplebs|cnt_clk\(7) & (!\simplebs|cnt_clk\(6) & !\simplebs|cnt_clk\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \simplebs|cnt_clk\(5),
	datab => \simplebs|cnt_clk\(7),
	datac => \simplebs|cnt_clk\(6),
	datad => \simplebs|cnt_clk\(4),
	combout => \simplebs|Equal0~1_combout\);

-- Location: LCCOMB_X54_Y49_N0
\simplebs|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \simplebs|Equal0~2_combout\ = (!\simplebs|cnt_clk\(8) & (!\simplebs|cnt_clk\(11) & (!\simplebs|cnt_clk\(9) & !\simplebs|cnt_clk\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \simplebs|cnt_clk\(8),
	datab => \simplebs|cnt_clk\(11),
	datac => \simplebs|cnt_clk\(9),
	datad => \simplebs|cnt_clk\(10),
	combout => \simplebs|Equal0~2_combout\);

-- Location: LCCOMB_X55_Y49_N0
\simplebs|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \simplebs|Equal0~0_combout\ = (!\simplebs|cnt_clk\(2) & (!\simplebs|cnt_clk\(3) & (!\simplebs|cnt_clk\(1) & !\simplebs|cnt_clk\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \simplebs|cnt_clk\(2),
	datab => \simplebs|cnt_clk\(3),
	datac => \simplebs|cnt_clk\(1),
	datad => \simplebs|cnt_clk\(0),
	combout => \simplebs|Equal0~0_combout\);

-- Location: LCCOMB_X55_Y49_N28
\simplebs|cnt_clk[13]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \simplebs|cnt_clk[13]~40_combout\ = \simplebs|cnt_clk[12]~39\ $ (\simplebs|cnt_clk\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \simplebs|cnt_clk\(13),
	cin => \simplebs|cnt_clk[12]~39\,
	combout => \simplebs|cnt_clk[13]~40_combout\);

-- Location: FF_X55_Y49_N29
\simplebs|cnt_clk[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \simplebs|cnt_clk[13]~40_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \simplebs|clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simplebs|cnt_clk\(13));

-- Location: LCCOMB_X54_Y50_N10
\simplebs|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \simplebs|Equal0~3_combout\ = (\simplebs|Equal0~1_combout\ & (\simplebs|Equal0~2_combout\ & (\simplebs|Equal0~0_combout\ & \simplebs|cnt_clk\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \simplebs|Equal0~1_combout\,
	datab => \simplebs|Equal0~2_combout\,
	datac => \simplebs|Equal0~0_combout\,
	datad => \simplebs|cnt_clk\(13),
	combout => \simplebs|Equal0~3_combout\);

-- Location: LCCOMB_X54_Y50_N24
\simplebs|sig_00_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \simplebs|sig_00_clk~0_combout\ = (!\simplebs|clk_00~0_combout\ & ((\simplebs|sig_00_clk~q\) # ((\simplebs|Equal0~3_combout\ & !\simplebs|cnt_clk\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \simplebs|Equal0~3_combout\,
	datab => \simplebs|cnt_clk\(12),
	datac => \simplebs|sig_00_clk~q\,
	datad => \simplebs|clk_00~0_combout\,
	combout => \simplebs|sig_00_clk~0_combout\);

-- Location: FF_X54_Y50_N25
\simplebs|sig_00_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \simplebs|sig_00_clk~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simplebs|sig_00_clk~q\);

-- Location: LCCOMB_X54_Y50_N22
\simplebs|sig_00_cut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \simplebs|sig_00_cut~0_combout\ = !\simplebs|sig_00_clk~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \simplebs|sig_00_clk~q\,
	combout => \simplebs|sig_00_cut~0_combout\);

-- Location: FF_X54_Y50_N23
\simplebs|sig_00_cut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \simplebs|sig_00_cut~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simplebs|sig_00_cut~q\);

-- Location: FF_X54_Y50_N29
\simplebs|sig_00_cut_not\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \simplebs|sig_00_cut~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simplebs|sig_00_cut_not~q\);

-- Location: LCCOMB_X54_Y50_N16
\simplebs|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \simplebs|Equal0~4_combout\ = (\simplebs|Equal0~0_combout\ & (\simplebs|Equal0~2_combout\ & \simplebs|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \simplebs|Equal0~0_combout\,
	datab => \simplebs|Equal0~2_combout\,
	datad => \simplebs|Equal0~1_combout\,
	combout => \simplebs|Equal0~4_combout\);

-- Location: LCCOMB_X54_Y50_N12
\simplebs|sig_90_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \simplebs|sig_90_clk~0_combout\ = (\simplebs|cnt_clk\(12) & ((\simplebs|Equal0~4_combout\ & (!\simplebs|cnt_clk\(13))) # (!\simplebs|Equal0~4_combout\ & ((\simplebs|sig_90_clk~q\))))) # (!\simplebs|cnt_clk\(12) & (((\simplebs|sig_90_clk~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \simplebs|cnt_clk\(13),
	datab => \simplebs|cnt_clk\(12),
	datac => \simplebs|sig_90_clk~q\,
	datad => \simplebs|Equal0~4_combout\,
	combout => \simplebs|sig_90_clk~0_combout\);

-- Location: FF_X54_Y50_N13
\simplebs|sig_90_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \simplebs|sig_90_clk~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simplebs|sig_90_clk~q\);

-- Location: FF_X54_Y50_N17
\simplebs|sig_90_cut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \simplebs|sig_90_clk~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simplebs|sig_90_cut~q\);

-- Location: FF_X54_Y50_N15
\simplebs|sig_90_cut_not\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \simplebs|sig_90_cut~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simplebs|sig_90_cut_not~q\);

-- Location: LCCOMB_X54_Y50_N20
\simplebs|sig_ff_B~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \simplebs|sig_ff_B~0_combout\ = (!\simplebs|sig_90_cut~q\ & (\simplebs|sig_90_cut_not~q\ & \simplebs|sig_00_clk~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \simplebs|sig_90_cut~q\,
	datac => \simplebs|sig_90_cut_not~q\,
	datad => \simplebs|sig_00_clk~q\,
	combout => \simplebs|sig_ff_B~0_combout\);

-- Location: LCCOMB_X54_Y50_N2
\simplebs|sig_ff_B~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \simplebs|sig_ff_B~1_combout\ = (\simplebs|sig_ff_B~0_combout\ & (\bsfilter|signal_out~q\)) # (!\simplebs|sig_ff_B~0_combout\ & ((\simplebs|sig_ff_B~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bsfilter|signal_out~q\,
	datac => \simplebs|sig_ff_B~q\,
	datad => \simplebs|sig_ff_B~0_combout\,
	combout => \simplebs|sig_ff_B~1_combout\);

-- Location: FF_X54_Y50_N3
\simplebs|sig_ff_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \simplebs|sig_ff_B~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simplebs|sig_ff_B~q\);

-- Location: LCCOMB_X54_Y50_N14
\simplebs|sig_ff_A~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \simplebs|sig_ff_A~0_combout\ = (\simplebs|sig_90_cut~q\ & (!\simplebs|sig_90_cut_not~q\ & !\simplebs|sig_00_clk~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \simplebs|sig_90_cut~q\,
	datac => \simplebs|sig_90_cut_not~q\,
	datad => \simplebs|sig_00_clk~q\,
	combout => \simplebs|sig_ff_A~0_combout\);

-- Location: LCCOMB_X54_Y50_N8
\simplebs|sig_ff_A~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \simplebs|sig_ff_A~1_combout\ = (\simplebs|sig_ff_A~0_combout\ & (\bsfilter|signal_out~q\)) # (!\simplebs|sig_ff_A~0_combout\ & ((\simplebs|sig_ff_A~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bsfilter|signal_out~q\,
	datac => \simplebs|sig_ff_A~q\,
	datad => \simplebs|sig_ff_A~0_combout\,
	combout => \simplebs|sig_ff_A~1_combout\);

-- Location: FF_X54_Y50_N9
\simplebs|sig_ff_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \simplebs|sig_ff_A~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simplebs|sig_ff_A~q\);

-- Location: LCCOMB_X54_Y50_N28
\simplebs|nrzl_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \simplebs|nrzl_data~0_combout\ = (\simplebs|sig_00_cut~q\ & (!\simplebs|sig_00_cut_not~q\ & (\simplebs|sig_ff_B~q\ $ (!\simplebs|sig_ff_A~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \simplebs|sig_00_cut~q\,
	datab => \simplebs|sig_ff_B~q\,
	datac => \simplebs|sig_00_cut_not~q\,
	datad => \simplebs|sig_ff_A~q\,
	combout => \simplebs|nrzl_data~0_combout\);

-- Location: LCCOMB_X54_Y50_N26
\simplebs|nrzl_data~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \simplebs|nrzl_data~1_combout\ = (\simplebs|nrzl_data~0_combout\) # ((\simplebs|nrzl_data~q\ & ((\simplebs|sig_00_cut_not~q\) # (!\simplebs|sig_00_cut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \simplebs|sig_00_cut~q\,
	datab => \simplebs|sig_00_cut_not~q\,
	datac => \simplebs|nrzl_data~q\,
	datad => \simplebs|nrzl_data~0_combout\,
	combout => \simplebs|nrzl_data~1_combout\);

-- Location: FF_X54_Y50_N27
\simplebs|nrzl_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \simplebs|nrzl_data~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \simplebs|nrzl_data~q\);

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

ww_main_clk <= \main_clk~output_o\;

ww_nrzl_data <= \nrzl_data~output_o\;

ww_main_rising_edge <= \main_rising_edge~output_o\;

ww_q_data_bit <= \q_data_bit~output_o\;

ww_rd_rising_edge <= \rd_rising_edge~output_o\;
END structure;


