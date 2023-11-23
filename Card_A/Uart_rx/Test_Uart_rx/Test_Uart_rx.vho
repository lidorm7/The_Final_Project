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

-- DATE "05/08/2023 12:54:26"

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

ENTITY 	Test_Uart_rx IS
    PORT (
	resetn : IN std_logic;
	sysclk : IN std_logic;
	start_tx : IN std_logic;
	toggle : IN std_logic;
	wr_ram : BUFFER std_logic;
	ram_address : BUFFER std_logic_vector(5 DOWNTO 0);
	detected_byte : BUFFER std_logic_vector(7 DOWNTO 0);
	q_ram : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END Test_Uart_rx;

-- Design Ports Information
-- wr_ram	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_address[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_address[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_address[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_address[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_address[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_address[5]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- detected_byte[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- detected_byte[1]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- detected_byte[2]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- detected_byte[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- detected_byte[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- detected_byte[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- detected_byte[6]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- detected_byte[7]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_ram[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_ram[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_ram[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_ram[3]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_ram[4]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_ram[5]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_ram[6]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_ram[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sysclk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- toggle	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_tx	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Test_Uart_rx IS
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
SIGNAL ww_start_tx : std_logic;
SIGNAL ww_toggle : std_logic;
SIGNAL ww_wr_ram : std_logic;
SIGNAL ww_ram_address : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_detected_byte : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_q_ram : std_logic_vector(7 DOWNTO 0);
SIGNAL \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memory|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \tx|dut|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \tx|dut|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \resetn~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sysclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \wr_ram~output_o\ : std_logic;
SIGNAL \ram_address[0]~output_o\ : std_logic;
SIGNAL \ram_address[1]~output_o\ : std_logic;
SIGNAL \ram_address[2]~output_o\ : std_logic;
SIGNAL \ram_address[3]~output_o\ : std_logic;
SIGNAL \ram_address[4]~output_o\ : std_logic;
SIGNAL \ram_address[5]~output_o\ : std_logic;
SIGNAL \detected_byte[0]~output_o\ : std_logic;
SIGNAL \detected_byte[1]~output_o\ : std_logic;
SIGNAL \detected_byte[2]~output_o\ : std_logic;
SIGNAL \detected_byte[3]~output_o\ : std_logic;
SIGNAL \detected_byte[4]~output_o\ : std_logic;
SIGNAL \detected_byte[5]~output_o\ : std_logic;
SIGNAL \detected_byte[6]~output_o\ : std_logic;
SIGNAL \detected_byte[7]~output_o\ : std_logic;
SIGNAL \q_ram[0]~output_o\ : std_logic;
SIGNAL \q_ram[1]~output_o\ : std_logic;
SIGNAL \q_ram[2]~output_o\ : std_logic;
SIGNAL \q_ram[3]~output_o\ : std_logic;
SIGNAL \q_ram[4]~output_o\ : std_logic;
SIGNAL \q_ram[5]~output_o\ : std_logic;
SIGNAL \q_ram[6]~output_o\ : std_logic;
SIGNAL \q_ram[7]~output_o\ : std_logic;
SIGNAL \sysclk~input_o\ : std_logic;
SIGNAL \sysclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rx|main_rx:var_clk_cntr[0]~1_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \resetn~inputclkctrl_outclk\ : std_logic;
SIGNAL \rx|Selector13~0_combout\ : std_logic;
SIGNAL \rx|state_rx.s2~q\ : std_logic;
SIGNAL \rx|Selector12~0_combout\ : std_logic;
SIGNAL \tx|Selector12~0_combout\ : std_logic;
SIGNAL \tx|Selector3~0_combout\ : std_logic;
SIGNAL \tx|Selector3~1_combout\ : std_logic;
SIGNAL \tx|state_tx.s3~q\ : std_logic;
SIGNAL \tx|sig_address[0]~4_combout\ : std_logic;
SIGNAL \tx|sig_address[1]~5_combout\ : std_logic;
SIGNAL \tx|sig_address[1]~6\ : std_logic;
SIGNAL \tx|sig_address[2]~7_combout\ : std_logic;
SIGNAL \tx|sig_address[2]~8\ : std_logic;
SIGNAL \tx|sig_address[3]~9_combout\ : std_logic;
SIGNAL \tx|Equal4~0_combout\ : std_logic;
SIGNAL \tx|sig_address[3]~10\ : std_logic;
SIGNAL \tx|sig_address[4]~11_combout\ : std_logic;
SIGNAL \tx|Equal4~1_combout\ : std_logic;
SIGNAL \tx|baud_clock:cnt_baud[8]~q\ : std_logic;
SIGNAL \tx|cnt_baud~1_combout\ : std_logic;
SIGNAL \tx|baud_clock:cnt_baud[1]~q\ : std_logic;
SIGNAL \tx|Add0~0_combout\ : std_logic;
SIGNAL \tx|cnt_baud~0_combout\ : std_logic;
SIGNAL \tx|baud_clock:cnt_baud[0]~q\ : std_logic;
SIGNAL \tx|Add0~1\ : std_logic;
SIGNAL \tx|Add0~2_combout\ : std_logic;
SIGNAL \tx|Add0~3\ : std_logic;
SIGNAL \tx|Add0~4_combout\ : std_logic;
SIGNAL \tx|baud_clock:cnt_baud[2]~q\ : std_logic;
SIGNAL \tx|Add0~5\ : std_logic;
SIGNAL \tx|Add0~6_combout\ : std_logic;
SIGNAL \tx|Equal0~0_combout\ : std_logic;
SIGNAL \tx|cnt_baud~2_combout\ : std_logic;
SIGNAL \tx|Equal0~1_combout\ : std_logic;
SIGNAL \tx|cnt_baud~5_combout\ : std_logic;
SIGNAL \tx|baud_clock:cnt_baud[9]~q\ : std_logic;
SIGNAL \tx|Add0~17\ : std_logic;
SIGNAL \tx|Add0~18_combout\ : std_logic;
SIGNAL \tx|cnt_baud~3_combout\ : std_logic;
SIGNAL \tx|baud_clock:cnt_baud[3]~q\ : std_logic;
SIGNAL \tx|Add0~7\ : std_logic;
SIGNAL \tx|Add0~8_combout\ : std_logic;
SIGNAL \tx|baud_clock:cnt_baud[4]~q\ : std_logic;
SIGNAL \tx|Add0~9\ : std_logic;
SIGNAL \tx|Add0~10_combout\ : std_logic;
SIGNAL \tx|baud_clock:cnt_baud[5]~q\ : std_logic;
SIGNAL \tx|Add0~11\ : std_logic;
SIGNAL \tx|Add0~12_combout\ : std_logic;
SIGNAL \tx|baud_clock:cnt_baud[6]~q\ : std_logic;
SIGNAL \tx|Add0~13\ : std_logic;
SIGNAL \tx|Add0~14_combout\ : std_logic;
SIGNAL \tx|cnt_baud~4_combout\ : std_logic;
SIGNAL \tx|baud_clock:cnt_baud[7]~q\ : std_logic;
SIGNAL \tx|Add0~15\ : std_logic;
SIGNAL \tx|Add0~16_combout\ : std_logic;
SIGNAL \tx|Equal0~2_combout\ : std_logic;
SIGNAL \tx|sig_baud_clk~0_combout\ : std_logic;
SIGNAL \tx|sig_baud_clk~q\ : std_logic;
SIGNAL \tx|signal_A_q~feeder_combout\ : std_logic;
SIGNAL \tx|signal_A_q~q\ : std_logic;
SIGNAL \tx|signal_A_q_not~q\ : std_logic;
SIGNAL \tx|state_tx~28_combout\ : std_logic;
SIGNAL \tx|state_tx.s10~q\ : std_logic;
SIGNAL \start_tx~input_o\ : std_logic;
SIGNAL \tx|Selector0~0_combout\ : std_logic;
SIGNAL \tx|state_tx.s0~q\ : std_logic;
SIGNAL \tx|Selector1~0_combout\ : std_logic;
SIGNAL \tx|state_tx.s1~q\ : std_logic;
SIGNAL \tx|Selector2~0_combout\ : std_logic;
SIGNAL \tx|Selector2~1_combout\ : std_logic;
SIGNAL \tx|state_tx.s2~q\ : std_logic;
SIGNAL \tx|sig_arising_edge~combout\ : std_logic;
SIGNAL \tx|state_tx.s4~feeder_combout\ : std_logic;
SIGNAL \tx|state_tx.s4~q\ : std_logic;
SIGNAL \tx|state_tx.s5~q\ : std_logic;
SIGNAL \tx|Selector6~0_combout\ : std_logic;
SIGNAL \tx|state_tx.s6~q\ : std_logic;
SIGNAL \tx|transmission:sig_cntr[2]~2_combout\ : std_logic;
SIGNAL \tx|transmission:sig_cntr[1]~q\ : std_logic;
SIGNAL \tx|Selector11~0_combout\ : std_logic;
SIGNAL \tx|transmission:sig_cntr[2]~q\ : std_logic;
SIGNAL \tx|Add1~0_combout\ : std_logic;
SIGNAL \tx|Selector10~0_combout\ : std_logic;
SIGNAL \tx|transmission:sig_cntr[3]~q\ : std_logic;
SIGNAL \tx|Equal2~0_combout\ : std_logic;
SIGNAL \tx|transmission:sig_cntr[2]~0_combout\ : std_logic;
SIGNAL \tx|transmission:sig_cntr[2]~1_combout\ : std_logic;
SIGNAL \tx|Selector13~0_combout\ : std_logic;
SIGNAL \tx|transmission:sig_cntr[0]~q\ : std_logic;
SIGNAL \tx|Equal3~0_combout\ : std_logic;
SIGNAL \tx|Selector7~0_combout\ : std_logic;
SIGNAL \tx|state_tx.s7~q\ : std_logic;
SIGNAL \tx|state_tx.s8~q\ : std_logic;
SIGNAL \tx|Selector9~0_combout\ : std_logic;
SIGNAL \tx|state_tx.s9~q\ : std_logic;
SIGNAL \tx|sig_byte[7]~feeder_combout\ : std_logic;
SIGNAL \tx|sig_byte[7]~0_combout\ : std_logic;
SIGNAL \tx|sig_byte[5]~feeder_combout\ : std_logic;
SIGNAL \tx|sig_byte[4]~feeder_combout\ : std_logic;
SIGNAL \tx|sig_byte[0]~feeder_combout\ : std_logic;
SIGNAL \tx|Selector22~0_combout\ : std_logic;
SIGNAL \tx|sig_packet[10]~1_combout\ : std_logic;
SIGNAL \tx|sig_byte[1]~feeder_combout\ : std_logic;
SIGNAL \tx|Selector21~0_combout\ : std_logic;
SIGNAL \tx|sig_byte[2]~feeder_combout\ : std_logic;
SIGNAL \tx|Selector20~0_combout\ : std_logic;
SIGNAL \tx|sig_byte[3]~feeder_combout\ : std_logic;
SIGNAL \tx|Selector19~0_combout\ : std_logic;
SIGNAL \tx|Selector18~0_combout\ : std_logic;
SIGNAL \tx|Selector17~0_combout\ : std_logic;
SIGNAL \tx|sig_byte[6]~feeder_combout\ : std_logic;
SIGNAL \tx|Selector16~0_combout\ : std_logic;
SIGNAL \tx|Selector15~0_combout\ : std_logic;
SIGNAL \tx|sig_packet[11]~0_combout\ : std_logic;
SIGNAL \tx|Selector14~0_combout\ : std_logic;
SIGNAL \tx|sig_bit~0_combout\ : std_logic;
SIGNAL \tx|sig_bit~q\ : std_logic;
SIGNAL \rx|sig_bit[0]~0_combout\ : std_logic;
SIGNAL \rx|sig_bit[1]~feeder_combout\ : std_logic;
SIGNAL \rx|sig_bit[2]~feeder_combout\ : std_logic;
SIGNAL \rx|sig_bouncer_bit~0_combout\ : std_logic;
SIGNAL \rx|sig_bouncer_bit~q\ : std_logic;
SIGNAL \rx|Equal3~0_combout\ : std_logic;
SIGNAL \rx|sig_data_bit~0_combout\ : std_logic;
SIGNAL \rx|sig_data_bit~1_combout\ : std_logic;
SIGNAL \rx|sig_data_bit~q\ : std_logic;
SIGNAL \rx|Selector11~0_combout\ : std_logic;
SIGNAL \rx|Selector11~1_combout\ : std_logic;
SIGNAL \rx|state_rx.s0~q\ : std_logic;
SIGNAL \rx|Selector12~1_combout\ : std_logic;
SIGNAL \rx|Selector12~2_combout\ : std_logic;
SIGNAL \rx|state_rx.s1~q\ : std_logic;
SIGNAL \rx|baud_rate_clk:var_cntr[5]~q\ : std_logic;
SIGNAL \rx|baud_rate_clk:var_cntr[1]~q\ : std_logic;
SIGNAL \rx|Add0~0_combout\ : std_logic;
SIGNAL \rx|baud_rate_clk:var_cntr[0]~q\ : std_logic;
SIGNAL \rx|Add0~1\ : std_logic;
SIGNAL \rx|Add0~2_combout\ : std_logic;
SIGNAL \rx|var_cntr~0_combout\ : std_logic;
SIGNAL \rx|baud_rate_clk:var_cntr[2]~q\ : std_logic;
SIGNAL \rx|Add0~3\ : std_logic;
SIGNAL \rx|Add0~4_combout\ : std_logic;
SIGNAL \rx|baud_rate_clk:var_cntr[3]~q\ : std_logic;
SIGNAL \rx|Add0~5\ : std_logic;
SIGNAL \rx|Add0~6_combout\ : std_logic;
SIGNAL \rx|Equal0~0_combout\ : std_logic;
SIGNAL \rx|baud_rate_clk:var_cntr[6]~q\ : std_logic;
SIGNAL \rx|Add0~11\ : std_logic;
SIGNAL \rx|Add0~12_combout\ : std_logic;
SIGNAL \rx|Add0~7\ : std_logic;
SIGNAL \rx|Add0~8_combout\ : std_logic;
SIGNAL \rx|var_cntr~1_combout\ : std_logic;
SIGNAL \rx|baud_rate_clk:var_cntr[4]~q\ : std_logic;
SIGNAL \rx|Add0~9\ : std_logic;
SIGNAL \rx|Add0~10_combout\ : std_logic;
SIGNAL \rx|Equal0~1_combout\ : std_logic;
SIGNAL \rx|sig_baudx32~0_combout\ : std_logic;
SIGNAL \rx|sig_baudx32~q\ : std_logic;
SIGNAL \rx|signal_A_q~feeder_combout\ : std_logic;
SIGNAL \rx|signal_A_q~q\ : std_logic;
SIGNAL \rx|signal_A_q_not~q\ : std_logic;
SIGNAL \rx|Selector4~0_combout\ : std_logic;
SIGNAL \rx|main_rx:var_bit_cntr[3]~0_combout\ : std_logic;
SIGNAL \rx|main_rx:var_bit_cntr[0]~q\ : std_logic;
SIGNAL \rx|Selector3~0_combout\ : std_logic;
SIGNAL \rx|main_rx:var_bit_cntr[1]~q\ : std_logic;
SIGNAL \rx|state_rx~18_combout\ : std_logic;
SIGNAL \rx|Add3~0_combout\ : std_logic;
SIGNAL \rx|Selector2~0_combout\ : std_logic;
SIGNAL \rx|main_rx:var_bit_cntr[2]~q\ : std_logic;
SIGNAL \rx|Add3~1_combout\ : std_logic;
SIGNAL \rx|Selector1~0_combout\ : std_logic;
SIGNAL \rx|main_rx:var_bit_cntr[3]~q\ : std_logic;
SIGNAL \rx|state_rx~17_combout\ : std_logic;
SIGNAL \rx|state_rx~19_combout\ : std_logic;
SIGNAL \rx|Selector14~2_combout\ : std_logic;
SIGNAL \rx|state_rx.s3~q\ : std_logic;
SIGNAL \rx|main_rx:var_clk_cntr[0]~0_combout\ : std_logic;
SIGNAL \rx|main_rx:var_clk_cntr[0]~q\ : std_logic;
SIGNAL \rx|Add2~2_combout\ : std_logic;
SIGNAL \rx|main_rx:var_clk_cntr[1]~q\ : std_logic;
SIGNAL \rx|Add2~1_combout\ : std_logic;
SIGNAL \rx|main_rx:var_clk_cntr[2]~q\ : std_logic;
SIGNAL \rx|Add2~0_combout\ : std_logic;
SIGNAL \rx|main_rx:var_clk_cntr[3]~q\ : std_logic;
SIGNAL \rx|Equal2~0_combout\ : std_logic;
SIGNAL \rx|Add2~3_combout\ : std_logic;
SIGNAL \rx|main_rx:var_clk_cntr[4]~q\ : std_logic;
SIGNAL \rx|Selector17~0_combout\ : std_logic;
SIGNAL \rx|main_rx:var_clk_cntr[5]~q\ : std_logic;
SIGNAL \rx|Equal2~1_combout\ : std_logic;
SIGNAL \rx|state_rx~16_combout\ : std_logic;
SIGNAL \rx|Selector15~0_combout\ : std_logic;
SIGNAL \rx|state_rx.s4~q\ : std_logic;
SIGNAL \rx|state_rx.s5~q\ : std_logic;
SIGNAL \rx|Selector0~0_combout\ : std_logic;
SIGNAL \rx|sig_wr_ram~q\ : std_logic;
SIGNAL \rx|sig_cnt_address[0]~12_combout\ : std_logic;
SIGNAL \rx|detected_byte[0]~0_combout\ : std_logic;
SIGNAL \rx|Selector10~0_combout\ : std_logic;
SIGNAL \rx|sig_ram_address[0]~0_combout\ : std_logic;
SIGNAL \rx|main_rx:var_trns_cntr[12]~q\ : std_logic;
SIGNAL \rx|Add1~0_combout\ : std_logic;
SIGNAL \rx|main_rx:var_trns_cntr[0]~q\ : std_logic;
SIGNAL \rx|Add1~1\ : std_logic;
SIGNAL \rx|Add1~2_combout\ : std_logic;
SIGNAL \rx|main_rx:var_trns_cntr[1]~q\ : std_logic;
SIGNAL \rx|Add1~3\ : std_logic;
SIGNAL \rx|Add1~4_combout\ : std_logic;
SIGNAL \rx|main_rx:var_trns_cntr[2]~q\ : std_logic;
SIGNAL \rx|Add1~5\ : std_logic;
SIGNAL \rx|Add1~6_combout\ : std_logic;
SIGNAL \rx|main_rx:var_trns_cntr[3]~q\ : std_logic;
SIGNAL \rx|Add1~7\ : std_logic;
SIGNAL \rx|Add1~8_combout\ : std_logic;
SIGNAL \rx|main_rx:var_trns_cntr[4]~q\ : std_logic;
SIGNAL \rx|Add1~9\ : std_logic;
SIGNAL \rx|Add1~10_combout\ : std_logic;
SIGNAL \rx|main_rx:var_trns_cntr[5]~q\ : std_logic;
SIGNAL \rx|Add1~11\ : std_logic;
SIGNAL \rx|Add1~12_combout\ : std_logic;
SIGNAL \rx|main_rx:var_trns_cntr[6]~q\ : std_logic;
SIGNAL \rx|Add1~13\ : std_logic;
SIGNAL \rx|Add1~14_combout\ : std_logic;
SIGNAL \rx|main_rx:var_trns_cntr[7]~q\ : std_logic;
SIGNAL \rx|Add1~15\ : std_logic;
SIGNAL \rx|Add1~16_combout\ : std_logic;
SIGNAL \rx|main_rx:var_trns_cntr[8]~q\ : std_logic;
SIGNAL \rx|Add1~17\ : std_logic;
SIGNAL \rx|Add1~18_combout\ : std_logic;
SIGNAL \rx|main_rx:var_trns_cntr[9]~q\ : std_logic;
SIGNAL \rx|Add1~19\ : std_logic;
SIGNAL \rx|Add1~20_combout\ : std_logic;
SIGNAL \rx|main_rx:var_trns_cntr[10]~q\ : std_logic;
SIGNAL \rx|Add1~21\ : std_logic;
SIGNAL \rx|Add1~22_combout\ : std_logic;
SIGNAL \rx|main_rx:var_trns_cntr[11]~q\ : std_logic;
SIGNAL \rx|Add1~23\ : std_logic;
SIGNAL \rx|Add1~24_combout\ : std_logic;
SIGNAL \rx|sig_ram_address[0]~4_combout\ : std_logic;
SIGNAL \rx|sig_ram_address[0]~5_combout\ : std_logic;
SIGNAL \rx|sig_ram_address[0]~1_combout\ : std_logic;
SIGNAL \rx|sig_ram_address[0]~2_combout\ : std_logic;
SIGNAL \rx|sig_ram_address[0]~3_combout\ : std_logic;
SIGNAL \rx|main_rx:var_trns_cntr[13]~q\ : std_logic;
SIGNAL \rx|Add1~25\ : std_logic;
SIGNAL \rx|Add1~26_combout\ : std_logic;
SIGNAL \rx|sig_ram_address[0]~6_combout\ : std_logic;
SIGNAL \rx|main_rx:var_trns_cntr[15]~q\ : std_logic;
SIGNAL \rx|Add1~27\ : std_logic;
SIGNAL \rx|Add1~28_combout\ : std_logic;
SIGNAL \rx|main_rx:var_trns_cntr[14]~q\ : std_logic;
SIGNAL \rx|Add1~29\ : std_logic;
SIGNAL \rx|Add1~30_combout\ : std_logic;
SIGNAL \rx|main_rx:var_trns_cntr[17]~q\ : std_logic;
SIGNAL \rx|Add1~31\ : std_logic;
SIGNAL \rx|Add1~32_combout\ : std_logic;
SIGNAL \rx|main_rx:var_trns_cntr[16]~q\ : std_logic;
SIGNAL \rx|Add1~33\ : std_logic;
SIGNAL \rx|Add1~34_combout\ : std_logic;
SIGNAL \rx|sig_ram_address[0]~7_combout\ : std_logic;
SIGNAL \rx|main_rx:var_trns_cntr[18]~q\ : std_logic;
SIGNAL \rx|Add1~35\ : std_logic;
SIGNAL \rx|Add1~36_combout\ : std_logic;
SIGNAL \rx|sig_ram_address[0]~8_combout\ : std_logic;
SIGNAL \rx|sig_cnt_address[1]~4_combout\ : std_logic;
SIGNAL \rx|Selector9~0_combout\ : std_logic;
SIGNAL \rx|sig_cnt_address[1]~5\ : std_logic;
SIGNAL \rx|sig_cnt_address[2]~6_combout\ : std_logic;
SIGNAL \rx|Selector8~0_combout\ : std_logic;
SIGNAL \rx|sig_cnt_address[2]~7\ : std_logic;
SIGNAL \rx|sig_cnt_address[3]~8_combout\ : std_logic;
SIGNAL \rx|Selector7~0_combout\ : std_logic;
SIGNAL \rx|sig_cnt_address[3]~9\ : std_logic;
SIGNAL \rx|sig_cnt_address[4]~10_combout\ : std_logic;
SIGNAL \rx|Selector6~0_combout\ : std_logic;
SIGNAL \toggle~input_o\ : std_logic;
SIGNAL \rx|Selector5~0_combout\ : std_logic;
SIGNAL \rx|sig_detected_byte[0]~feeder_combout\ : std_logic;
SIGNAL \rx|sig_detected_byte[0]~0_combout\ : std_logic;
SIGNAL \rx|detected_byte[0]~feeder_combout\ : std_logic;
SIGNAL \rx|sig_detected_byte[1]~feeder_combout\ : std_logic;
SIGNAL \rx|detected_byte[1]~feeder_combout\ : std_logic;
SIGNAL \rx|sig_detected_byte[2]~feeder_combout\ : std_logic;
SIGNAL \rx|detected_byte[4]~feeder_combout\ : std_logic;
SIGNAL \rx|sig_detected_byte[5]~feeder_combout\ : std_logic;
SIGNAL \rx|detected_byte[5]~feeder_combout\ : std_logic;
SIGNAL \rx|sig_detected_byte[6]~feeder_combout\ : std_logic;
SIGNAL \rx|detected_byte[6]~feeder_combout\ : std_logic;
SIGNAL \rx|sig_detected_byte[7]~feeder_combout\ : std_logic;
SIGNAL \memory|altsyncram_component|auto_generated|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \rx|sig_cnt_address\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \tx|sig_packet\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \rx|sig_bit\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \tx|sig_address\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \tx|dut|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \rx|sig_ram_address\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \tx|sig_byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \rx|detected_byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \rx|sig_detected_byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \tx|ALT_INV_state_tx.s9~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_resetn <= resetn;
ww_sysclk <= sysclk;
ww_start_tx <= start_tx;
ww_toggle <= toggle;
wr_ram <= ww_wr_ram;
ram_address <= ww_ram_address;
detected_byte <= ww_detected_byte;
q_ram <= ww_q_ram;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\rx|detected_byte\(7) & \rx|detected_byte\(6) & \rx|detected_byte\(5) & \rx|detected_byte\(4) & \rx|detected_byte\(3) & \rx|detected_byte\(2) & \rx|detected_byte\(1) & \rx|detected_byte\(0));

\memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\rx|sig_ram_address\(5) & \rx|sig_ram_address\(4) & \rx|sig_ram_address\(3) & \rx|sig_ram_address\(2) & \rx|sig_ram_address\(1) & \rx|sig_ram_address\(0));

\memory|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\rx|sig_ram_address\(5) & \rx|sig_ram_address\(4) & \rx|sig_ram_address\(3) & \rx|sig_ram_address\(2) & \rx|sig_ram_address\(1) & \rx|sig_ram_address\(0));

\memory|altsyncram_component|auto_generated|q_b\(0) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\memory|altsyncram_component|auto_generated|q_b\(1) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\memory|altsyncram_component|auto_generated|q_b\(2) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\memory|altsyncram_component|auto_generated|q_b\(3) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\memory|altsyncram_component|auto_generated|q_b\(4) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\memory|altsyncram_component|auto_generated|q_b\(5) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\memory|altsyncram_component|auto_generated|q_b\(6) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\memory|altsyncram_component|auto_generated|q_b\(7) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\tx|dut|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\tx|sig_address\(4) & \tx|sig_address\(3) & \tx|sig_address\(2) & \tx|sig_address\(1) & \tx|sig_address\(0));

\tx|dut|altsyncram_component|auto_generated|q_a\(0) <= \tx|dut|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\tx|dut|altsyncram_component|auto_generated|q_a\(1) <= \tx|dut|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\tx|dut|altsyncram_component|auto_generated|q_a\(2) <= \tx|dut|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\tx|dut|altsyncram_component|auto_generated|q_a\(3) <= \tx|dut|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\tx|dut|altsyncram_component|auto_generated|q_a\(4) <= \tx|dut|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\tx|dut|altsyncram_component|auto_generated|q_a\(5) <= \tx|dut|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\tx|dut|altsyncram_component|auto_generated|q_a\(6) <= \tx|dut|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\tx|dut|altsyncram_component|auto_generated|q_a\(7) <= \tx|dut|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\resetn~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \resetn~input_o\);

\sysclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sysclk~input_o\);
\tx|ALT_INV_state_tx.s9~q\ <= NOT \tx|state_tx.s9~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X43_Y38_N24
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

-- Location: IOOBUF_X46_Y54_N30
\wr_ram~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx|sig_wr_ram~q\,
	devoe => ww_devoe,
	o => \wr_ram~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\ram_address[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx|sig_ram_address\(0),
	devoe => ww_devoe,
	o => \ram_address[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\ram_address[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx|sig_ram_address\(1),
	devoe => ww_devoe,
	o => \ram_address[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\ram_address[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx|sig_ram_address\(2),
	devoe => ww_devoe,
	o => \ram_address[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\ram_address[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx|sig_ram_address\(3),
	devoe => ww_devoe,
	o => \ram_address[3]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\ram_address[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx|sig_ram_address\(4),
	devoe => ww_devoe,
	o => \ram_address[4]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\ram_address[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx|sig_ram_address\(5),
	devoe => ww_devoe,
	o => \ram_address[5]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\detected_byte[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx|detected_byte\(0),
	devoe => ww_devoe,
	o => \detected_byte[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\detected_byte[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx|detected_byte\(1),
	devoe => ww_devoe,
	o => \detected_byte[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\detected_byte[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx|detected_byte\(2),
	devoe => ww_devoe,
	o => \detected_byte[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\detected_byte[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx|detected_byte\(3),
	devoe => ww_devoe,
	o => \detected_byte[3]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\detected_byte[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx|detected_byte\(4),
	devoe => ww_devoe,
	o => \detected_byte[4]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\detected_byte[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx|detected_byte\(5),
	devoe => ww_devoe,
	o => \detected_byte[5]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\detected_byte[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx|detected_byte\(6),
	devoe => ww_devoe,
	o => \detected_byte[6]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\detected_byte[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx|detected_byte\(7),
	devoe => ww_devoe,
	o => \detected_byte[7]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\q_ram[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memory|altsyncram_component|auto_generated|q_b\(0),
	devoe => ww_devoe,
	o => \q_ram[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\q_ram[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memory|altsyncram_component|auto_generated|q_b\(1),
	devoe => ww_devoe,
	o => \q_ram[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\q_ram[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memory|altsyncram_component|auto_generated|q_b\(2),
	devoe => ww_devoe,
	o => \q_ram[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\q_ram[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memory|altsyncram_component|auto_generated|q_b\(3),
	devoe => ww_devoe,
	o => \q_ram[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\q_ram[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memory|altsyncram_component|auto_generated|q_b\(4),
	devoe => ww_devoe,
	o => \q_ram[4]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\q_ram[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memory|altsyncram_component|auto_generated|q_b\(5),
	devoe => ww_devoe,
	o => \q_ram[5]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\q_ram[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memory|altsyncram_component|auto_generated|q_b\(6),
	devoe => ww_devoe,
	o => \q_ram[6]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\q_ram[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memory|altsyncram_component|auto_generated|q_b\(7),
	devoe => ww_devoe,
	o => \q_ram[7]~output_o\);

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

-- Location: LCCOMB_X46_Y43_N24
\rx|main_rx:var_clk_cntr[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|main_rx:var_clk_cntr[0]~1_combout\ = !\rx|main_rx:var_clk_cntr[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx|main_rx:var_clk_cntr[0]~q\,
	combout => \rx|main_rx:var_clk_cntr[0]~1_combout\);

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

-- Location: LCCOMB_X51_Y48_N0
\rx|Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector13~0_combout\ = (!\rx|Selector15~0_combout\ & (\rx|state_rx~16_combout\ & \rx|state_rx.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|Selector15~0_combout\,
	datac => \rx|state_rx~16_combout\,
	datad => \rx|state_rx.s1~q\,
	combout => \rx|Selector13~0_combout\);

-- Location: FF_X51_Y48_N1
\rx|state_rx.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Selector13~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|state_rx.s2~q\);

-- Location: LCCOMB_X51_Y48_N24
\rx|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector12~0_combout\ = (\rx|state_rx.s4~q\) # ((\rx|state_rx.s5~q\) # (\rx|state_rx.s2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx|state_rx.s4~q\,
	datac => \rx|state_rx.s5~q\,
	datad => \rx|state_rx.s2~q\,
	combout => \rx|Selector12~0_combout\);

-- Location: LCCOMB_X34_Y35_N10
\tx|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector12~0_combout\ = (!\tx|transmission:sig_cntr[2]~1_combout\ & (\tx|transmission:sig_cntr[1]~q\ $ (\tx|transmission:sig_cntr[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|transmission:sig_cntr[2]~1_combout\,
	datac => \tx|transmission:sig_cntr[1]~q\,
	datad => \tx|transmission:sig_cntr[0]~q\,
	combout => \tx|Selector12~0_combout\);

-- Location: LCCOMB_X34_Y35_N28
\tx|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector3~0_combout\ = (\tx|transmission:sig_cntr[0]~q\ & (!\tx|transmission:sig_cntr[3]~q\ & (!\tx|transmission:sig_cntr[2]~q\ & !\tx|transmission:sig_cntr[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|transmission:sig_cntr[0]~q\,
	datab => \tx|transmission:sig_cntr[3]~q\,
	datac => \tx|transmission:sig_cntr[2]~q\,
	datad => \tx|transmission:sig_cntr[1]~q\,
	combout => \tx|Selector3~0_combout\);

-- Location: LCCOMB_X34_Y37_N0
\tx|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector3~1_combout\ = (\tx|Selector3~0_combout\ & \tx|state_tx.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|Selector3~0_combout\,
	datad => \tx|state_tx.s2~q\,
	combout => \tx|Selector3~1_combout\);

-- Location: FF_X34_Y37_N1
\tx|state_tx.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Selector3~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|state_tx.s3~q\);

-- Location: LCCOMB_X34_Y37_N28
\tx|sig_address[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|sig_address[0]~4_combout\ = \tx|sig_address\(0) $ (\tx|state_tx.s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx|sig_address\(0),
	datad => \tx|state_tx.s3~q\,
	combout => \tx|sig_address[0]~4_combout\);

-- Location: FF_X34_Y37_N29
\tx|sig_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|sig_address[0]~4_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_address\(0));

-- Location: LCCOMB_X34_Y37_N10
\tx|sig_address[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|sig_address[1]~5_combout\ = (\tx|sig_address\(1) & (\tx|sig_address\(0) $ (VCC))) # (!\tx|sig_address\(1) & (\tx|sig_address\(0) & VCC))
-- \tx|sig_address[1]~6\ = CARRY((\tx|sig_address\(1) & \tx|sig_address\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|sig_address\(1),
	datab => \tx|sig_address\(0),
	datad => VCC,
	combout => \tx|sig_address[1]~5_combout\,
	cout => \tx|sig_address[1]~6\);

-- Location: FF_X34_Y37_N11
\tx|sig_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|sig_address[1]~5_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \tx|state_tx.s3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_address\(1));

-- Location: LCCOMB_X34_Y37_N12
\tx|sig_address[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|sig_address[2]~7_combout\ = (\tx|sig_address\(2) & (!\tx|sig_address[1]~6\)) # (!\tx|sig_address\(2) & ((\tx|sig_address[1]~6\) # (GND)))
-- \tx|sig_address[2]~8\ = CARRY((!\tx|sig_address[1]~6\) # (!\tx|sig_address\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx|sig_address\(2),
	datad => VCC,
	cin => \tx|sig_address[1]~6\,
	combout => \tx|sig_address[2]~7_combout\,
	cout => \tx|sig_address[2]~8\);

-- Location: FF_X34_Y37_N13
\tx|sig_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|sig_address[2]~7_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \tx|state_tx.s3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_address\(2));

-- Location: LCCOMB_X34_Y37_N14
\tx|sig_address[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|sig_address[3]~9_combout\ = (\tx|sig_address\(3) & (\tx|sig_address[2]~8\ $ (GND))) # (!\tx|sig_address\(3) & (!\tx|sig_address[2]~8\ & VCC))
-- \tx|sig_address[3]~10\ = CARRY((\tx|sig_address\(3) & !\tx|sig_address[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx|sig_address\(3),
	datad => VCC,
	cin => \tx|sig_address[2]~8\,
	combout => \tx|sig_address[3]~9_combout\,
	cout => \tx|sig_address[3]~10\);

-- Location: FF_X34_Y37_N15
\tx|sig_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|sig_address[3]~9_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \tx|state_tx.s3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_address\(3));

-- Location: LCCOMB_X34_Y37_N22
\tx|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Equal4~0_combout\ = (!\tx|sig_address\(2) & (!\tx|sig_address\(0) & (!\tx|sig_address\(3) & !\tx|sig_address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|sig_address\(2),
	datab => \tx|sig_address\(0),
	datac => \tx|sig_address\(3),
	datad => \tx|sig_address\(1),
	combout => \tx|Equal4~0_combout\);

-- Location: LCCOMB_X34_Y37_N16
\tx|sig_address[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|sig_address[4]~11_combout\ = \tx|sig_address[3]~10\ $ (\tx|sig_address\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \tx|sig_address\(4),
	cin => \tx|sig_address[3]~10\,
	combout => \tx|sig_address[4]~11_combout\);

-- Location: FF_X34_Y37_N17
\tx|sig_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|sig_address[4]~11_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \tx|state_tx.s3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_address\(4));

-- Location: LCCOMB_X34_Y37_N8
\tx|Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Equal4~1_combout\ = (\tx|Equal4~0_combout\ & !\tx|sig_address\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx|Equal4~0_combout\,
	datad => \tx|sig_address\(4),
	combout => \tx|Equal4~1_combout\);

-- Location: FF_X40_Y37_N27
\tx|baud_clock:cnt_baud[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Add0~16_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|baud_clock:cnt_baud[8]~q\);

-- Location: LCCOMB_X41_Y37_N2
\tx|cnt_baud~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|cnt_baud~1_combout\ = (\tx|Add0~2_combout\ & !\tx|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|Add0~2_combout\,
	datac => \tx|Equal0~2_combout\,
	combout => \tx|cnt_baud~1_combout\);

-- Location: FF_X41_Y37_N3
\tx|baud_clock:cnt_baud[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|cnt_baud~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|baud_clock:cnt_baud[1]~q\);

-- Location: LCCOMB_X40_Y37_N10
\tx|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Add0~0_combout\ = \tx|baud_clock:cnt_baud[0]~q\ $ (VCC)
-- \tx|Add0~1\ = CARRY(\tx|baud_clock:cnt_baud[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx|baud_clock:cnt_baud[0]~q\,
	datad => VCC,
	combout => \tx|Add0~0_combout\,
	cout => \tx|Add0~1\);

-- Location: LCCOMB_X41_Y37_N0
\tx|cnt_baud~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|cnt_baud~0_combout\ = (\tx|Add0~0_combout\ & !\tx|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|Add0~0_combout\,
	datac => \tx|Equal0~2_combout\,
	combout => \tx|cnt_baud~0_combout\);

-- Location: FF_X41_Y37_N1
\tx|baud_clock:cnt_baud[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|cnt_baud~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|baud_clock:cnt_baud[0]~q\);

-- Location: LCCOMB_X40_Y37_N12
\tx|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Add0~2_combout\ = (\tx|baud_clock:cnt_baud[1]~q\ & (!\tx|Add0~1\)) # (!\tx|baud_clock:cnt_baud[1]~q\ & ((\tx|Add0~1\) # (GND)))
-- \tx|Add0~3\ = CARRY((!\tx|Add0~1\) # (!\tx|baud_clock:cnt_baud[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx|baud_clock:cnt_baud[1]~q\,
	datad => VCC,
	cin => \tx|Add0~1\,
	combout => \tx|Add0~2_combout\,
	cout => \tx|Add0~3\);

-- Location: LCCOMB_X40_Y37_N14
\tx|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Add0~4_combout\ = (\tx|baud_clock:cnt_baud[2]~q\ & (\tx|Add0~3\ $ (GND))) # (!\tx|baud_clock:cnt_baud[2]~q\ & (!\tx|Add0~3\ & VCC))
-- \tx|Add0~5\ = CARRY((\tx|baud_clock:cnt_baud[2]~q\ & !\tx|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx|baud_clock:cnt_baud[2]~q\,
	datad => VCC,
	cin => \tx|Add0~3\,
	combout => \tx|Add0~4_combout\,
	cout => \tx|Add0~5\);

-- Location: FF_X40_Y37_N15
\tx|baud_clock:cnt_baud[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Add0~4_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|baud_clock:cnt_baud[2]~q\);

-- Location: LCCOMB_X40_Y37_N16
\tx|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Add0~6_combout\ = (\tx|baud_clock:cnt_baud[3]~q\ & (!\tx|Add0~5\)) # (!\tx|baud_clock:cnt_baud[3]~q\ & ((\tx|Add0~5\) # (GND)))
-- \tx|Add0~7\ = CARRY((!\tx|Add0~5\) # (!\tx|baud_clock:cnt_baud[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx|baud_clock:cnt_baud[3]~q\,
	datad => VCC,
	cin => \tx|Add0~5\,
	combout => \tx|Add0~6_combout\,
	cout => \tx|Add0~7\);

-- Location: LCCOMB_X40_Y37_N2
\tx|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Equal0~0_combout\ = (\tx|Add0~2_combout\ & (\tx|Add0~6_combout\ & (!\tx|Add0~4_combout\ & \tx|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|Add0~2_combout\,
	datab => \tx|Add0~6_combout\,
	datac => \tx|Add0~4_combout\,
	datad => \tx|Add0~0_combout\,
	combout => \tx|Equal0~0_combout\);

-- Location: LCCOMB_X40_Y37_N6
\tx|cnt_baud~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|cnt_baud~2_combout\ = (\tx|Add0~16_combout\) # (!\tx|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx|Add0~16_combout\,
	datad => \tx|Equal0~0_combout\,
	combout => \tx|cnt_baud~2_combout\);

-- Location: LCCOMB_X40_Y37_N4
\tx|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Equal0~1_combout\ = (!\tx|Add0~10_combout\ & (\tx|Add0~14_combout\ & (!\tx|Add0~12_combout\ & !\tx|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|Add0~10_combout\,
	datab => \tx|Add0~14_combout\,
	datac => \tx|Add0~12_combout\,
	datad => \tx|Add0~8_combout\,
	combout => \tx|Equal0~1_combout\);

-- Location: LCCOMB_X40_Y37_N30
\tx|cnt_baud~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|cnt_baud~5_combout\ = (\tx|Add0~18_combout\ & ((\tx|Add0~16_combout\) # ((!\tx|Equal0~0_combout\) # (!\tx|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|Add0~16_combout\,
	datab => \tx|Add0~18_combout\,
	datac => \tx|Equal0~1_combout\,
	datad => \tx|Equal0~0_combout\,
	combout => \tx|cnt_baud~5_combout\);

-- Location: FF_X40_Y37_N31
\tx|baud_clock:cnt_baud[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|cnt_baud~5_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|baud_clock:cnt_baud[9]~q\);

-- Location: LCCOMB_X40_Y37_N26
\tx|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Add0~16_combout\ = (\tx|baud_clock:cnt_baud[8]~q\ & (\tx|Add0~15\ $ (GND))) # (!\tx|baud_clock:cnt_baud[8]~q\ & (!\tx|Add0~15\ & VCC))
-- \tx|Add0~17\ = CARRY((\tx|baud_clock:cnt_baud[8]~q\ & !\tx|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx|baud_clock:cnt_baud[8]~q\,
	datad => VCC,
	cin => \tx|Add0~15\,
	combout => \tx|Add0~16_combout\,
	cout => \tx|Add0~17\);

-- Location: LCCOMB_X40_Y37_N28
\tx|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Add0~18_combout\ = \tx|baud_clock:cnt_baud[9]~q\ $ (\tx|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx|baud_clock:cnt_baud[9]~q\,
	cin => \tx|Add0~17\,
	combout => \tx|Add0~18_combout\);

-- Location: LCCOMB_X40_Y37_N8
\tx|cnt_baud~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|cnt_baud~3_combout\ = (\tx|Add0~6_combout\ & ((\tx|cnt_baud~2_combout\) # ((!\tx|Add0~18_combout\) # (!\tx|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|cnt_baud~2_combout\,
	datab => \tx|Add0~6_combout\,
	datac => \tx|Equal0~1_combout\,
	datad => \tx|Add0~18_combout\,
	combout => \tx|cnt_baud~3_combout\);

-- Location: FF_X40_Y37_N9
\tx|baud_clock:cnt_baud[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|cnt_baud~3_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|baud_clock:cnt_baud[3]~q\);

-- Location: LCCOMB_X40_Y37_N18
\tx|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Add0~8_combout\ = (\tx|baud_clock:cnt_baud[4]~q\ & (\tx|Add0~7\ $ (GND))) # (!\tx|baud_clock:cnt_baud[4]~q\ & (!\tx|Add0~7\ & VCC))
-- \tx|Add0~9\ = CARRY((\tx|baud_clock:cnt_baud[4]~q\ & !\tx|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx|baud_clock:cnt_baud[4]~q\,
	datad => VCC,
	cin => \tx|Add0~7\,
	combout => \tx|Add0~8_combout\,
	cout => \tx|Add0~9\);

-- Location: FF_X40_Y37_N19
\tx|baud_clock:cnt_baud[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Add0~8_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|baud_clock:cnt_baud[4]~q\);

-- Location: LCCOMB_X40_Y37_N20
\tx|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Add0~10_combout\ = (\tx|baud_clock:cnt_baud[5]~q\ & (!\tx|Add0~9\)) # (!\tx|baud_clock:cnt_baud[5]~q\ & ((\tx|Add0~9\) # (GND)))
-- \tx|Add0~11\ = CARRY((!\tx|Add0~9\) # (!\tx|baud_clock:cnt_baud[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx|baud_clock:cnt_baud[5]~q\,
	datad => VCC,
	cin => \tx|Add0~9\,
	combout => \tx|Add0~10_combout\,
	cout => \tx|Add0~11\);

-- Location: FF_X40_Y37_N21
\tx|baud_clock:cnt_baud[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Add0~10_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|baud_clock:cnt_baud[5]~q\);

-- Location: LCCOMB_X40_Y37_N22
\tx|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Add0~12_combout\ = (\tx|baud_clock:cnt_baud[6]~q\ & (\tx|Add0~11\ $ (GND))) # (!\tx|baud_clock:cnt_baud[6]~q\ & (!\tx|Add0~11\ & VCC))
-- \tx|Add0~13\ = CARRY((\tx|baud_clock:cnt_baud[6]~q\ & !\tx|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx|baud_clock:cnt_baud[6]~q\,
	datad => VCC,
	cin => \tx|Add0~11\,
	combout => \tx|Add0~12_combout\,
	cout => \tx|Add0~13\);

-- Location: FF_X40_Y37_N23
\tx|baud_clock:cnt_baud[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Add0~12_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|baud_clock:cnt_baud[6]~q\);

-- Location: LCCOMB_X40_Y37_N24
\tx|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Add0~14_combout\ = (\tx|baud_clock:cnt_baud[7]~q\ & (!\tx|Add0~13\)) # (!\tx|baud_clock:cnt_baud[7]~q\ & ((\tx|Add0~13\) # (GND)))
-- \tx|Add0~15\ = CARRY((!\tx|Add0~13\) # (!\tx|baud_clock:cnt_baud[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx|baud_clock:cnt_baud[7]~q\,
	datad => VCC,
	cin => \tx|Add0~13\,
	combout => \tx|Add0~14_combout\,
	cout => \tx|Add0~15\);

-- Location: LCCOMB_X41_Y37_N20
\tx|cnt_baud~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|cnt_baud~4_combout\ = (\tx|Add0~14_combout\ & !\tx|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx|Add0~14_combout\,
	datac => \tx|Equal0~2_combout\,
	combout => \tx|cnt_baud~4_combout\);

-- Location: FF_X41_Y37_N21
\tx|baud_clock:cnt_baud[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|cnt_baud~4_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|baud_clock:cnt_baud[7]~q\);

-- Location: LCCOMB_X40_Y37_N0
\tx|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Equal0~2_combout\ = (!\tx|Add0~16_combout\ & (\tx|Add0~18_combout\ & (\tx|Equal0~1_combout\ & \tx|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|Add0~16_combout\,
	datab => \tx|Add0~18_combout\,
	datac => \tx|Equal0~1_combout\,
	datad => \tx|Equal0~0_combout\,
	combout => \tx|Equal0~2_combout\);

-- Location: LCCOMB_X42_Y37_N10
\tx|sig_baud_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|sig_baud_clk~0_combout\ = \tx|sig_baud_clk~q\ $ (\tx|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx|sig_baud_clk~q\,
	datad => \tx|Equal0~2_combout\,
	combout => \tx|sig_baud_clk~0_combout\);

-- Location: FF_X42_Y37_N11
\tx|sig_baud_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|sig_baud_clk~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_baud_clk~q\);

-- Location: LCCOMB_X42_Y37_N24
\tx|signal_A_q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|signal_A_q~feeder_combout\ = \tx|sig_baud_clk~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|sig_baud_clk~q\,
	combout => \tx|signal_A_q~feeder_combout\);

-- Location: FF_X42_Y37_N25
\tx|signal_A_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|signal_A_q~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|signal_A_q~q\);

-- Location: FF_X34_Y35_N17
\tx|signal_A_q_not\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \tx|signal_A_q~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|signal_A_q_not~q\);

-- Location: LCCOMB_X34_Y35_N30
\tx|state_tx~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|state_tx~28_combout\ = (\tx|Equal3~0_combout\ & (!\tx|signal_A_q_not~q\ & (\tx|signal_A_q~q\ & \tx|state_tx.s9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|Equal3~0_combout\,
	datab => \tx|signal_A_q_not~q\,
	datac => \tx|signal_A_q~q\,
	datad => \tx|state_tx.s9~q\,
	combout => \tx|state_tx~28_combout\);

-- Location: FF_X34_Y35_N31
\tx|state_tx.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|state_tx~28_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|state_tx.s10~q\);

-- Location: IOIBUF_X51_Y54_N22
\start_tx~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_tx,
	o => \start_tx~input_o\);

-- Location: LCCOMB_X34_Y37_N6
\tx|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector0~0_combout\ = (\tx|Equal4~1_combout\ & (!\tx|state_tx.s10~q\ & ((\tx|state_tx.s0~q\) # (\start_tx~input_o\)))) # (!\tx|Equal4~1_combout\ & (((\tx|state_tx.s0~q\) # (\start_tx~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|Equal4~1_combout\,
	datab => \tx|state_tx.s10~q\,
	datac => \tx|state_tx.s0~q\,
	datad => \start_tx~input_o\,
	combout => \tx|Selector0~0_combout\);

-- Location: FF_X34_Y37_N7
\tx|state_tx.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Selector0~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|state_tx.s0~q\);

-- Location: LCCOMB_X34_Y37_N26
\tx|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector1~0_combout\ = (\start_tx~input_o\ & ((\tx|state_tx.s1~q\) # (!\tx|state_tx.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|state_tx.s0~q\,
	datac => \tx|state_tx.s1~q\,
	datad => \start_tx~input_o\,
	combout => \tx|Selector1~0_combout\);

-- Location: FF_X34_Y37_N27
\tx|state_tx.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Selector1~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|state_tx.s1~q\);

-- Location: LCCOMB_X34_Y37_N18
\tx|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector2~0_combout\ = (\tx|state_tx.s1~q\ & (((!\tx|Equal4~1_combout\ & \tx|state_tx.s10~q\)) # (!\start_tx~input_o\))) # (!\tx|state_tx.s1~q\ & (!\tx|Equal4~1_combout\ & (\tx|state_tx.s10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|state_tx.s1~q\,
	datab => \tx|Equal4~1_combout\,
	datac => \tx|state_tx.s10~q\,
	datad => \start_tx~input_o\,
	combout => \tx|Selector2~0_combout\);

-- Location: LCCOMB_X34_Y37_N24
\tx|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector2~1_combout\ = (\tx|Selector2~0_combout\) # ((!\tx|Selector3~0_combout\ & \tx|state_tx.s2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|Selector3~0_combout\,
	datac => \tx|state_tx.s2~q\,
	datad => \tx|Selector2~0_combout\,
	combout => \tx|Selector2~1_combout\);

-- Location: FF_X34_Y37_N25
\tx|state_tx.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Selector2~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|state_tx.s2~q\);

-- Location: LCCOMB_X34_Y35_N16
\tx|sig_arising_edge\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|sig_arising_edge~combout\ = (\tx|signal_A_q~q\ & !\tx|signal_A_q_not~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx|signal_A_q~q\,
	datac => \tx|signal_A_q_not~q\,
	combout => \tx|sig_arising_edge~combout\);

-- Location: LCCOMB_X34_Y37_N20
\tx|state_tx.s4~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|state_tx.s4~feeder_combout\ = \tx|state_tx.s3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|state_tx.s3~q\,
	combout => \tx|state_tx.s4~feeder_combout\);

-- Location: FF_X34_Y37_N21
\tx|state_tx.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|state_tx.s4~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|state_tx.s4~q\);

-- Location: FF_X31_Y38_N25
\tx|state_tx.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \tx|state_tx.s4~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|state_tx.s5~q\);

-- Location: LCCOMB_X32_Y35_N0
\tx|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector6~0_combout\ = (\tx|state_tx.s5~q\) # ((\tx|state_tx.s6~q\ & !\tx|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx|state_tx.s5~q\,
	datac => \tx|state_tx.s6~q\,
	datad => \tx|Equal2~0_combout\,
	combout => \tx|Selector6~0_combout\);

-- Location: FF_X32_Y35_N1
\tx|state_tx.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Selector6~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|state_tx.s6~q\);

-- Location: LCCOMB_X34_Y35_N26
\tx|transmission:sig_cntr[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|transmission:sig_cntr[2]~2_combout\ = (\tx|state_tx.s9~q\ & (((\tx|sig_arising_edge~combout\)))) # (!\tx|state_tx.s9~q\ & ((\tx|state_tx.s2~q\) # ((\tx|state_tx.s6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|state_tx.s2~q\,
	datab => \tx|sig_arising_edge~combout\,
	datac => \tx|state_tx.s6~q\,
	datad => \tx|state_tx.s9~q\,
	combout => \tx|transmission:sig_cntr[2]~2_combout\);

-- Location: FF_X34_Y35_N11
\tx|transmission:sig_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Selector12~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \tx|transmission:sig_cntr[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|transmission:sig_cntr[1]~q\);

-- Location: LCCOMB_X34_Y35_N4
\tx|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector11~0_combout\ = (!\tx|transmission:sig_cntr[2]~1_combout\ & (\tx|transmission:sig_cntr[2]~q\ $ (((\tx|transmission:sig_cntr[1]~q\ & \tx|transmission:sig_cntr[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|transmission:sig_cntr[2]~1_combout\,
	datab => \tx|transmission:sig_cntr[1]~q\,
	datac => \tx|transmission:sig_cntr[2]~q\,
	datad => \tx|transmission:sig_cntr[0]~q\,
	combout => \tx|Selector11~0_combout\);

-- Location: FF_X34_Y35_N5
\tx|transmission:sig_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Selector11~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \tx|transmission:sig_cntr[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|transmission:sig_cntr[2]~q\);

-- Location: LCCOMB_X34_Y35_N12
\tx|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Add1~0_combout\ = \tx|transmission:sig_cntr[3]~q\ $ (((\tx|transmission:sig_cntr[0]~q\ & (\tx|transmission:sig_cntr[2]~q\ & \tx|transmission:sig_cntr[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|transmission:sig_cntr[0]~q\,
	datab => \tx|transmission:sig_cntr[3]~q\,
	datac => \tx|transmission:sig_cntr[2]~q\,
	datad => \tx|transmission:sig_cntr[1]~q\,
	combout => \tx|Add1~0_combout\);

-- Location: LCCOMB_X34_Y35_N24
\tx|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector10~0_combout\ = (!\tx|transmission:sig_cntr[2]~1_combout\ & \tx|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx|transmission:sig_cntr[2]~1_combout\,
	datad => \tx|Add1~0_combout\,
	combout => \tx|Selector10~0_combout\);

-- Location: FF_X34_Y35_N25
\tx|transmission:sig_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Selector10~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \tx|transmission:sig_cntr[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|transmission:sig_cntr[3]~q\);

-- Location: LCCOMB_X34_Y35_N18
\tx|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Equal2~0_combout\ = (!\tx|transmission:sig_cntr[0]~q\ & (!\tx|transmission:sig_cntr[3]~q\ & (\tx|transmission:sig_cntr[2]~q\ & !\tx|transmission:sig_cntr[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|transmission:sig_cntr[0]~q\,
	datab => \tx|transmission:sig_cntr[3]~q\,
	datac => \tx|transmission:sig_cntr[2]~q\,
	datad => \tx|transmission:sig_cntr[1]~q\,
	combout => \tx|Equal2~0_combout\);

-- Location: LCCOMB_X34_Y35_N14
\tx|transmission:sig_cntr[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|transmission:sig_cntr[2]~0_combout\ = (\tx|state_tx.s2~q\ & (((\tx|Selector3~0_combout\)))) # (!\tx|state_tx.s2~q\ & (\tx|state_tx.s9~q\ & (\tx|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|state_tx.s2~q\,
	datab => \tx|state_tx.s9~q\,
	datac => \tx|Equal3~0_combout\,
	datad => \tx|Selector3~0_combout\,
	combout => \tx|transmission:sig_cntr[2]~0_combout\);

-- Location: LCCOMB_X34_Y35_N0
\tx|transmission:sig_cntr[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|transmission:sig_cntr[2]~1_combout\ = (\tx|transmission:sig_cntr[2]~0_combout\) # ((\tx|Equal2~0_combout\ & (!\tx|state_tx.s9~q\ & !\tx|state_tx.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|Equal2~0_combout\,
	datab => \tx|state_tx.s9~q\,
	datac => \tx|transmission:sig_cntr[2]~0_combout\,
	datad => \tx|state_tx.s2~q\,
	combout => \tx|transmission:sig_cntr[2]~1_combout\);

-- Location: LCCOMB_X34_Y35_N6
\tx|Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector13~0_combout\ = (!\tx|transmission:sig_cntr[2]~1_combout\ & !\tx|transmission:sig_cntr[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|transmission:sig_cntr[2]~1_combout\,
	datac => \tx|transmission:sig_cntr[0]~q\,
	combout => \tx|Selector13~0_combout\);

-- Location: FF_X34_Y35_N7
\tx|transmission:sig_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Selector13~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \tx|transmission:sig_cntr[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|transmission:sig_cntr[0]~q\);

-- Location: LCCOMB_X34_Y35_N22
\tx|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Equal3~0_combout\ = (\tx|transmission:sig_cntr[0]~q\ & (\tx|transmission:sig_cntr[3]~q\ & (!\tx|transmission:sig_cntr[2]~q\ & \tx|transmission:sig_cntr[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|transmission:sig_cntr[0]~q\,
	datab => \tx|transmission:sig_cntr[3]~q\,
	datac => \tx|transmission:sig_cntr[2]~q\,
	datad => \tx|transmission:sig_cntr[1]~q\,
	combout => \tx|Equal3~0_combout\);

-- Location: LCCOMB_X32_Y35_N12
\tx|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector7~0_combout\ = (\tx|state_tx.s6~q\ & \tx|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx|state_tx.s6~q\,
	datad => \tx|Equal2~0_combout\,
	combout => \tx|Selector7~0_combout\);

-- Location: FF_X32_Y35_N13
\tx|state_tx.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Selector7~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|state_tx.s7~q\);

-- Location: FF_X34_Y35_N21
\tx|state_tx.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \tx|state_tx.s7~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|state_tx.s8~q\);

-- Location: LCCOMB_X34_Y35_N2
\tx|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector9~0_combout\ = (\tx|state_tx.s8~q\) # ((\tx|state_tx.s9~q\ & ((!\tx|sig_arising_edge~combout\) # (!\tx|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|Equal3~0_combout\,
	datab => \tx|state_tx.s8~q\,
	datac => \tx|state_tx.s9~q\,
	datad => \tx|sig_arising_edge~combout\,
	combout => \tx|Selector9~0_combout\);

-- Location: FF_X34_Y35_N3
\tx|state_tx.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Selector9~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|state_tx.s9~q\);

-- Location: M9K_X33_Y38_N0
\tx|dut|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"002F000BB002E800B9002E000B7002D800B5002D000B3002C800B1002C000AF002B800AD002B000AB002A800A9002A000A70029800A50029000A30028800A1002AC00FE0032800C0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Rom_X_data.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Uart_tx_Rom:tx|Rom_X:dut|altsyncram:altsyncram_component|altsyncram_pt81:auto_generated|ALTSYNCRAM",
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
	portaaddr => \tx|dut|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \tx|dut|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y38_N4
\tx|sig_byte[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|sig_byte[7]~feeder_combout\ = \tx|dut|altsyncram_component|auto_generated|q_a\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|dut|altsyncram_component|auto_generated|q_a\(7),
	combout => \tx|sig_byte[7]~feeder_combout\);

-- Location: LCCOMB_X31_Y38_N24
\tx|sig_byte[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|sig_byte[7]~0_combout\ = (\resetn~input_o\ & \tx|state_tx.s5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~input_o\,
	datac => \tx|state_tx.s5~q\,
	combout => \tx|sig_byte[7]~0_combout\);

-- Location: FF_X30_Y38_N5
\tx|sig_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|sig_byte[7]~feeder_combout\,
	ena => \tx|sig_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_byte\(7));

-- Location: LCCOMB_X30_Y38_N12
\tx|sig_byte[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|sig_byte[5]~feeder_combout\ = \tx|dut|altsyncram_component|auto_generated|q_a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|dut|altsyncram_component|auto_generated|q_a\(5),
	combout => \tx|sig_byte[5]~feeder_combout\);

-- Location: FF_X30_Y38_N13
\tx|sig_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|sig_byte[5]~feeder_combout\,
	ena => \tx|sig_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_byte\(5));

-- Location: LCCOMB_X30_Y38_N8
\tx|sig_byte[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|sig_byte[4]~feeder_combout\ = \tx|dut|altsyncram_component|auto_generated|q_a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx|dut|altsyncram_component|auto_generated|q_a\(4),
	combout => \tx|sig_byte[4]~feeder_combout\);

-- Location: FF_X30_Y38_N9
\tx|sig_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|sig_byte[4]~feeder_combout\,
	ena => \tx|sig_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_byte\(4));

-- Location: LCCOMB_X30_Y38_N6
\tx|sig_byte[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|sig_byte[0]~feeder_combout\ = \tx|dut|altsyncram_component|auto_generated|q_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|dut|altsyncram_component|auto_generated|q_a\(0),
	combout => \tx|sig_byte[0]~feeder_combout\);

-- Location: FF_X30_Y38_N7
\tx|sig_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|sig_byte[0]~feeder_combout\,
	ena => \tx|sig_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_byte\(0));

-- Location: LCCOMB_X30_Y38_N10
\tx|Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector22~0_combout\ = (\tx|sig_byte\(0)) # (\tx|state_tx.s9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|sig_byte\(0),
	datac => \tx|state_tx.s9~q\,
	combout => \tx|Selector22~0_combout\);

-- Location: LCCOMB_X34_Y35_N8
\tx|sig_packet[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|sig_packet[10]~1_combout\ = (\resetn~input_o\ & ((\tx|state_tx.s9~q\ & (\tx|sig_arising_edge~combout\)) # (!\tx|state_tx.s9~q\ & ((\tx|state_tx.s7~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~input_o\,
	datab => \tx|sig_arising_edge~combout\,
	datac => \tx|state_tx.s7~q\,
	datad => \tx|state_tx.s9~q\,
	combout => \tx|sig_packet[10]~1_combout\);

-- Location: FF_X30_Y38_N11
\tx|sig_packet[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Selector22~0_combout\,
	ena => \tx|sig_packet[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_packet\(3));

-- Location: LCCOMB_X30_Y38_N28
\tx|sig_byte[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|sig_byte[1]~feeder_combout\ = \tx|dut|altsyncram_component|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|dut|altsyncram_component|auto_generated|q_a\(1),
	combout => \tx|sig_byte[1]~feeder_combout\);

-- Location: FF_X30_Y38_N29
\tx|sig_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|sig_byte[1]~feeder_combout\,
	ena => \tx|sig_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_byte\(1));

-- Location: LCCOMB_X30_Y38_N22
\tx|Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector21~0_combout\ = (\tx|state_tx.s9~q\ & (\tx|sig_packet\(3))) # (!\tx|state_tx.s9~q\ & ((\tx|sig_byte\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|sig_packet\(3),
	datab => \tx|sig_byte\(1),
	datac => \tx|state_tx.s9~q\,
	combout => \tx|Selector21~0_combout\);

-- Location: FF_X30_Y38_N23
\tx|sig_packet[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Selector21~0_combout\,
	ena => \tx|sig_packet[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_packet\(4));

-- Location: LCCOMB_X30_Y38_N0
\tx|sig_byte[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|sig_byte[2]~feeder_combout\ = \tx|dut|altsyncram_component|auto_generated|q_a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|dut|altsyncram_component|auto_generated|q_a\(2),
	combout => \tx|sig_byte[2]~feeder_combout\);

-- Location: FF_X30_Y38_N1
\tx|sig_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|sig_byte[2]~feeder_combout\,
	ena => \tx|sig_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_byte\(2));

-- Location: LCCOMB_X30_Y38_N26
\tx|Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector20~0_combout\ = (\tx|state_tx.s9~q\ & (\tx|sig_packet\(4))) # (!\tx|state_tx.s9~q\ & ((\tx|sig_byte\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|sig_packet\(4),
	datab => \tx|sig_byte\(2),
	datac => \tx|state_tx.s9~q\,
	combout => \tx|Selector20~0_combout\);

-- Location: FF_X30_Y38_N27
\tx|sig_packet[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Selector20~0_combout\,
	ena => \tx|sig_packet[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_packet\(5));

-- Location: LCCOMB_X30_Y38_N20
\tx|sig_byte[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|sig_byte[3]~feeder_combout\ = \tx|dut|altsyncram_component|auto_generated|q_a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|dut|altsyncram_component|auto_generated|q_a\(3),
	combout => \tx|sig_byte[3]~feeder_combout\);

-- Location: FF_X30_Y38_N21
\tx|sig_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|sig_byte[3]~feeder_combout\,
	ena => \tx|sig_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_byte\(3));

-- Location: LCCOMB_X30_Y38_N14
\tx|Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector19~0_combout\ = (\tx|state_tx.s9~q\ & (\tx|sig_packet\(5))) # (!\tx|state_tx.s9~q\ & ((\tx|sig_byte\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|sig_packet\(5),
	datab => \tx|sig_byte\(3),
	datac => \tx|state_tx.s9~q\,
	combout => \tx|Selector19~0_combout\);

-- Location: FF_X30_Y38_N15
\tx|sig_packet[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Selector19~0_combout\,
	ena => \tx|sig_packet[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_packet\(6));

-- Location: LCCOMB_X30_Y38_N18
\tx|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector18~0_combout\ = (\tx|state_tx.s9~q\ & ((\tx|sig_packet\(6)))) # (!\tx|state_tx.s9~q\ & (\tx|sig_byte\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx|sig_byte\(4),
	datac => \tx|state_tx.s9~q\,
	datad => \tx|sig_packet\(6),
	combout => \tx|Selector18~0_combout\);

-- Location: FF_X30_Y38_N19
\tx|sig_packet[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Selector18~0_combout\,
	ena => \tx|sig_packet[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_packet\(7));

-- Location: LCCOMB_X30_Y38_N30
\tx|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector17~0_combout\ = (\tx|state_tx.s9~q\ & ((\tx|sig_packet\(7)))) # (!\tx|state_tx.s9~q\ & (\tx|sig_byte\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|sig_byte\(5),
	datab => \tx|sig_packet\(7),
	datac => \tx|state_tx.s9~q\,
	combout => \tx|Selector17~0_combout\);

-- Location: FF_X30_Y38_N31
\tx|sig_packet[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Selector17~0_combout\,
	ena => \tx|sig_packet[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_packet\(8));

-- Location: LCCOMB_X30_Y38_N24
\tx|sig_byte[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|sig_byte[6]~feeder_combout\ = \tx|dut|altsyncram_component|auto_generated|q_a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|dut|altsyncram_component|auto_generated|q_a\(6),
	combout => \tx|sig_byte[6]~feeder_combout\);

-- Location: FF_X30_Y38_N25
\tx|sig_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|sig_byte[6]~feeder_combout\,
	ena => \tx|sig_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_byte\(6));

-- Location: LCCOMB_X30_Y38_N2
\tx|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector16~0_combout\ = (\tx|state_tx.s9~q\ & (\tx|sig_packet\(8))) # (!\tx|state_tx.s9~q\ & ((\tx|sig_byte\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|sig_packet\(8),
	datab => \tx|sig_byte\(6),
	datac => \tx|state_tx.s9~q\,
	combout => \tx|Selector16~0_combout\);

-- Location: FF_X30_Y38_N3
\tx|sig_packet[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Selector16~0_combout\,
	ena => \tx|sig_packet[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_packet\(9));

-- Location: LCCOMB_X30_Y38_N16
\tx|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector15~0_combout\ = (\tx|state_tx.s9~q\ & ((\tx|sig_packet\(9)))) # (!\tx|state_tx.s9~q\ & (\tx|sig_byte\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx|sig_byte\(7),
	datac => \tx|state_tx.s9~q\,
	datad => \tx|sig_packet\(9),
	combout => \tx|Selector15~0_combout\);

-- Location: FF_X30_Y38_N17
\tx|sig_packet[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Selector15~0_combout\,
	ena => \tx|sig_packet[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_packet\(10));

-- Location: LCCOMB_X32_Y35_N24
\tx|sig_packet[11]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|sig_packet[11]~0_combout\ = (\tx|sig_arising_edge~combout\ & (\tx|sig_packet\(10))) # (!\tx|sig_arising_edge~combout\ & ((\tx|sig_packet\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx|sig_packet\(10),
	datac => \tx|sig_packet\(11),
	datad => \tx|sig_arising_edge~combout\,
	combout => \tx|sig_packet[11]~0_combout\);

-- Location: LCCOMB_X32_Y35_N30
\tx|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector14~0_combout\ = (\tx|sig_packet\(11) & !\tx|state_tx.s7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx|sig_packet\(11),
	datad => \tx|state_tx.s7~q\,
	combout => \tx|Selector14~0_combout\);

-- Location: FF_X32_Y35_N25
\tx|sig_packet[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|sig_packet[11]~0_combout\,
	asdata => \tx|Selector14~0_combout\,
	sload => \tx|ALT_INV_state_tx.s9~q\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_packet\(11));

-- Location: LCCOMB_X32_Y35_N2
\tx|sig_bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|sig_bit~0_combout\ = (\tx|state_tx.s9~q\ & ((\tx|sig_arising_edge~combout\ & (!\tx|sig_packet\(11))) # (!\tx|sig_arising_edge~combout\ & ((\tx|sig_bit~q\))))) # (!\tx|state_tx.s9~q\ & (((\tx|sig_bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|state_tx.s9~q\,
	datab => \tx|sig_packet\(11),
	datac => \tx|sig_bit~q\,
	datad => \tx|sig_arising_edge~combout\,
	combout => \tx|sig_bit~0_combout\);

-- Location: FF_X32_Y35_N3
\tx|sig_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|sig_bit~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_bit~q\);

-- Location: LCCOMB_X39_Y35_N16
\rx|sig_bit[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_bit[0]~0_combout\ = !\tx|sig_bit~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|sig_bit~q\,
	combout => \rx|sig_bit[0]~0_combout\);

-- Location: FF_X39_Y35_N17
\rx|sig_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|sig_bit[0]~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_bit\(0));

-- Location: LCCOMB_X45_Y45_N6
\rx|sig_bit[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_bit[1]~feeder_combout\ = \rx|sig_bit\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx|sig_bit\(0),
	combout => \rx|sig_bit[1]~feeder_combout\);

-- Location: FF_X45_Y45_N7
\rx|sig_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|sig_bit[1]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_bit\(1));

-- Location: LCCOMB_X45_Y45_N12
\rx|sig_bit[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_bit[2]~feeder_combout\ = \rx|sig_bit\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx|sig_bit\(1),
	combout => \rx|sig_bit[2]~feeder_combout\);

-- Location: FF_X45_Y45_N13
\rx|sig_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|sig_bit[2]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_bit\(2));

-- Location: LCCOMB_X45_Y45_N10
\rx|sig_bouncer_bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_bouncer_bit~0_combout\ = (\rx|sig_bit\(1) & ((\rx|sig_bouncer_bit~q\) # ((\rx|sig_bit\(0) & \rx|sig_bit\(2))))) # (!\rx|sig_bit\(1) & (\rx|sig_bouncer_bit~q\ & ((\rx|sig_bit\(0)) # (\rx|sig_bit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|sig_bit\(1),
	datab => \rx|sig_bit\(0),
	datac => \rx|sig_bouncer_bit~q\,
	datad => \rx|sig_bit\(2),
	combout => \rx|sig_bouncer_bit~0_combout\);

-- Location: FF_X45_Y45_N11
\rx|sig_bouncer_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|sig_bouncer_bit~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_bouncer_bit~q\);

-- Location: LCCOMB_X45_Y45_N24
\rx|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Equal3~0_combout\ = (!\rx|main_rx:var_clk_cntr[5]~q\ & (!\rx|main_rx:var_clk_cntr[4]~q\ & \rx|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|main_rx:var_clk_cntr[5]~q\,
	datac => \rx|main_rx:var_clk_cntr[4]~q\,
	datad => \rx|Equal2~0_combout\,
	combout => \rx|Equal3~0_combout\);

-- Location: LCCOMB_X45_Y45_N2
\rx|sig_data_bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_data_bit~0_combout\ = (\resetn~input_o\ & (\rx|main_rx:var_clk_cntr[0]~0_combout\ & \rx|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~input_o\,
	datac => \rx|main_rx:var_clk_cntr[0]~0_combout\,
	datad => \rx|Equal3~0_combout\,
	combout => \rx|sig_data_bit~0_combout\);

-- Location: LCCOMB_X45_Y45_N8
\rx|sig_data_bit~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_data_bit~1_combout\ = (\rx|sig_data_bit~0_combout\ & ((\rx|sig_bouncer_bit~q\))) # (!\rx|sig_data_bit~0_combout\ & (\rx|sig_data_bit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx|sig_data_bit~0_combout\,
	datac => \rx|sig_data_bit~q\,
	datad => \rx|sig_bouncer_bit~q\,
	combout => \rx|sig_data_bit~1_combout\);

-- Location: FF_X45_Y45_N9
\rx|sig_data_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|sig_data_bit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_data_bit~q\);

-- Location: LCCOMB_X49_Y48_N0
\rx|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector11~0_combout\ = (\rx|sig_bouncer_bit~q\ & !\rx|state_rx.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|sig_bouncer_bit~q\,
	datad => \rx|state_rx.s0~q\,
	combout => \rx|Selector11~0_combout\);

-- Location: LCCOMB_X51_Y48_N8
\rx|Selector11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector11~1_combout\ = (!\rx|state_rx.s5~q\ & (!\rx|Selector11~0_combout\ & ((!\rx|state_rx.s2~q\) # (!\rx|sig_data_bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|state_rx.s5~q\,
	datab => \rx|sig_data_bit~q\,
	datac => \rx|Selector11~0_combout\,
	datad => \rx|state_rx.s2~q\,
	combout => \rx|Selector11~1_combout\);

-- Location: FF_X51_Y48_N9
\rx|state_rx.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Selector11~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|state_rx.s0~q\);

-- Location: LCCOMB_X49_Y48_N4
\rx|Selector12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector12~1_combout\ = (\rx|state_rx.s1~q\ & (((\rx|state_rx~16_combout\)))) # (!\rx|state_rx.s1~q\ & ((\rx|sig_bouncer_bit~q\) # ((\rx|state_rx.s0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|sig_bouncer_bit~q\,
	datab => \rx|state_rx.s1~q\,
	datac => \rx|state_rx~16_combout\,
	datad => \rx|state_rx.s0~q\,
	combout => \rx|Selector12~1_combout\);

-- Location: LCCOMB_X51_Y48_N4
\rx|Selector12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector12~2_combout\ = (!\rx|Selector12~0_combout\ & (!\rx|Selector12~1_combout\ & !\rx|Selector15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx|Selector12~0_combout\,
	datac => \rx|Selector12~1_combout\,
	datad => \rx|Selector15~0_combout\,
	combout => \rx|Selector12~2_combout\);

-- Location: FF_X51_Y48_N5
\rx|state_rx.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Selector12~2_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|state_rx.s1~q\);

-- Location: FF_X46_Y43_N21
\rx|baud_rate_clk:var_cntr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add0~10_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|baud_rate_clk:var_cntr[5]~q\);

-- Location: FF_X46_Y43_N13
\rx|baud_rate_clk:var_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add0~2_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|baud_rate_clk:var_cntr[1]~q\);

-- Location: LCCOMB_X46_Y43_N10
\rx|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add0~0_combout\ = \rx|baud_rate_clk:var_cntr[0]~q\ $ (VCC)
-- \rx|Add0~1\ = CARRY(\rx|baud_rate_clk:var_cntr[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|baud_rate_clk:var_cntr[0]~q\,
	datad => VCC,
	combout => \rx|Add0~0_combout\,
	cout => \rx|Add0~1\);

-- Location: FF_X46_Y43_N11
\rx|baud_rate_clk:var_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add0~0_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|baud_rate_clk:var_cntr[0]~q\);

-- Location: LCCOMB_X46_Y43_N12
\rx|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add0~2_combout\ = (\rx|baud_rate_clk:var_cntr[1]~q\ & (!\rx|Add0~1\)) # (!\rx|baud_rate_clk:var_cntr[1]~q\ & ((\rx|Add0~1\) # (GND)))
-- \rx|Add0~3\ = CARRY((!\rx|Add0~1\) # (!\rx|baud_rate_clk:var_cntr[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx|baud_rate_clk:var_cntr[1]~q\,
	datad => VCC,
	cin => \rx|Add0~1\,
	combout => \rx|Add0~2_combout\,
	cout => \rx|Add0~3\);

-- Location: LCCOMB_X46_Y43_N8
\rx|var_cntr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|var_cntr~0_combout\ = (\rx|Add0~4_combout\ & !\rx|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx|Add0~4_combout\,
	datad => \rx|Equal0~1_combout\,
	combout => \rx|var_cntr~0_combout\);

-- Location: FF_X46_Y43_N9
\rx|baud_rate_clk:var_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|var_cntr~0_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|baud_rate_clk:var_cntr[2]~q\);

-- Location: LCCOMB_X46_Y43_N14
\rx|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add0~4_combout\ = (\rx|baud_rate_clk:var_cntr[2]~q\ & (\rx|Add0~3\ $ (GND))) # (!\rx|baud_rate_clk:var_cntr[2]~q\ & (!\rx|Add0~3\ & VCC))
-- \rx|Add0~5\ = CARRY((\rx|baud_rate_clk:var_cntr[2]~q\ & !\rx|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx|baud_rate_clk:var_cntr[2]~q\,
	datad => VCC,
	cin => \rx|Add0~3\,
	combout => \rx|Add0~4_combout\,
	cout => \rx|Add0~5\);

-- Location: FF_X46_Y43_N17
\rx|baud_rate_clk:var_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add0~6_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|baud_rate_clk:var_cntr[3]~q\);

-- Location: LCCOMB_X46_Y43_N16
\rx|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add0~6_combout\ = (\rx|baud_rate_clk:var_cntr[3]~q\ & (!\rx|Add0~5\)) # (!\rx|baud_rate_clk:var_cntr[3]~q\ & ((\rx|Add0~5\) # (GND)))
-- \rx|Add0~7\ = CARRY((!\rx|Add0~5\) # (!\rx|baud_rate_clk:var_cntr[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx|baud_rate_clk:var_cntr[3]~q\,
	datad => VCC,
	cin => \rx|Add0~5\,
	combout => \rx|Add0~6_combout\,
	cout => \rx|Add0~7\);

-- Location: LCCOMB_X46_Y43_N2
\rx|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Equal0~0_combout\ = (!\rx|Add0~2_combout\ & (!\rx|Add0~0_combout\ & (\rx|Add0~4_combout\ & !\rx|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|Add0~2_combout\,
	datab => \rx|Add0~0_combout\,
	datac => \rx|Add0~4_combout\,
	datad => \rx|Add0~6_combout\,
	combout => \rx|Equal0~0_combout\);

-- Location: FF_X46_Y43_N23
\rx|baud_rate_clk:var_cntr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add0~12_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|baud_rate_clk:var_cntr[6]~q\);

-- Location: LCCOMB_X46_Y43_N20
\rx|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add0~10_combout\ = (\rx|baud_rate_clk:var_cntr[5]~q\ & (!\rx|Add0~9\)) # (!\rx|baud_rate_clk:var_cntr[5]~q\ & ((\rx|Add0~9\) # (GND)))
-- \rx|Add0~11\ = CARRY((!\rx|Add0~9\) # (!\rx|baud_rate_clk:var_cntr[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx|baud_rate_clk:var_cntr[5]~q\,
	datad => VCC,
	cin => \rx|Add0~9\,
	combout => \rx|Add0~10_combout\,
	cout => \rx|Add0~11\);

-- Location: LCCOMB_X46_Y43_N22
\rx|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add0~12_combout\ = \rx|Add0~11\ $ (!\rx|baud_rate_clk:var_cntr[6]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rx|baud_rate_clk:var_cntr[6]~q\,
	cin => \rx|Add0~11\,
	combout => \rx|Add0~12_combout\);

-- Location: LCCOMB_X46_Y43_N18
\rx|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add0~8_combout\ = (\rx|baud_rate_clk:var_cntr[4]~q\ & (\rx|Add0~7\ $ (GND))) # (!\rx|baud_rate_clk:var_cntr[4]~q\ & (!\rx|Add0~7\ & VCC))
-- \rx|Add0~9\ = CARRY((\rx|baud_rate_clk:var_cntr[4]~q\ & !\rx|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx|baud_rate_clk:var_cntr[4]~q\,
	datad => VCC,
	cin => \rx|Add0~7\,
	combout => \rx|Add0~8_combout\,
	cout => \rx|Add0~9\);

-- Location: LCCOMB_X46_Y43_N4
\rx|var_cntr~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|var_cntr~1_combout\ = (\rx|Add0~8_combout\ & ((\rx|Add0~10_combout\) # ((\rx|Add0~12_combout\) # (!\rx|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|Add0~10_combout\,
	datab => \rx|Equal0~0_combout\,
	datac => \rx|Add0~12_combout\,
	datad => \rx|Add0~8_combout\,
	combout => \rx|var_cntr~1_combout\);

-- Location: FF_X46_Y43_N5
\rx|baud_rate_clk:var_cntr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|var_cntr~1_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|baud_rate_clk:var_cntr[4]~q\);

-- Location: LCCOMB_X46_Y43_N6
\rx|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Equal0~1_combout\ = (!\rx|Add0~10_combout\ & (\rx|Equal0~0_combout\ & (!\rx|Add0~12_combout\ & \rx|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|Add0~10_combout\,
	datab => \rx|Equal0~0_combout\,
	datac => \rx|Add0~12_combout\,
	datad => \rx|Add0~8_combout\,
	combout => \rx|Equal0~1_combout\);

-- Location: LCCOMB_X45_Y45_N0
\rx|sig_baudx32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_baudx32~0_combout\ = \rx|sig_baudx32~q\ $ (\rx|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx|sig_baudx32~q\,
	datad => \rx|Equal0~1_combout\,
	combout => \rx|sig_baudx32~0_combout\);

-- Location: FF_X45_Y45_N1
\rx|sig_baudx32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|sig_baudx32~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_baudx32~q\);

-- Location: LCCOMB_X45_Y45_N20
\rx|signal_A_q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|signal_A_q~feeder_combout\ = \rx|sig_baudx32~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx|sig_baudx32~q\,
	combout => \rx|signal_A_q~feeder_combout\);

-- Location: FF_X45_Y45_N21
\rx|signal_A_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|signal_A_q~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|signal_A_q~q\);

-- Location: FF_X45_Y45_N29
\rx|signal_A_q_not\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \rx|signal_A_q~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|signal_A_q_not~q\);

-- Location: LCCOMB_X51_Y48_N28
\rx|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector4~0_combout\ = (\rx|state_rx.s3~q\ & (\rx|Equal3~0_combout\ $ (\rx|main_rx:var_bit_cntr[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|Equal3~0_combout\,
	datac => \rx|main_rx:var_bit_cntr[0]~q\,
	datad => \rx|state_rx.s3~q\,
	combout => \rx|Selector4~0_combout\);

-- Location: LCCOMB_X45_Y45_N18
\rx|main_rx:var_bit_cntr[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|main_rx:var_bit_cntr[3]~0_combout\ = (\rx|Selector11~0_combout\) # ((!\rx|signal_A_q_not~q\ & (\rx|signal_A_q~q\ & \rx|state_rx.s3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|Selector11~0_combout\,
	datab => \rx|signal_A_q_not~q\,
	datac => \rx|signal_A_q~q\,
	datad => \rx|state_rx.s3~q\,
	combout => \rx|main_rx:var_bit_cntr[3]~0_combout\);

-- Location: FF_X51_Y48_N29
\rx|main_rx:var_bit_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Selector4~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \rx|main_rx:var_bit_cntr[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_bit_cntr[0]~q\);

-- Location: LCCOMB_X51_Y48_N10
\rx|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector3~0_combout\ = (\rx|state_rx.s3~q\ & (\rx|main_rx:var_bit_cntr[1]~q\ $ (((\rx|Equal3~0_combout\ & \rx|main_rx:var_bit_cntr[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|Equal3~0_combout\,
	datab => \rx|main_rx:var_bit_cntr[0]~q\,
	datac => \rx|main_rx:var_bit_cntr[1]~q\,
	datad => \rx|state_rx.s3~q\,
	combout => \rx|Selector3~0_combout\);

-- Location: FF_X51_Y48_N11
\rx|main_rx:var_bit_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Selector3~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \rx|main_rx:var_bit_cntr[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_bit_cntr[1]~q\);

-- Location: LCCOMB_X51_Y48_N2
\rx|state_rx~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|state_rx~18_combout\ = (\rx|main_rx:var_bit_cntr[0]~q\ & (\rx|Equal3~0_combout\ & \rx|main_rx:var_bit_cntr[1]~q\)) # (!\rx|main_rx:var_bit_cntr[0]~q\ & (!\rx|Equal3~0_combout\ & !\rx|main_rx:var_bit_cntr[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx|main_rx:var_bit_cntr[0]~q\,
	datac => \rx|Equal3~0_combout\,
	datad => \rx|main_rx:var_bit_cntr[1]~q\,
	combout => \rx|state_rx~18_combout\);

-- Location: LCCOMB_X51_Y48_N30
\rx|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add3~0_combout\ = (\rx|main_rx:var_bit_cntr[0]~q\ & \rx|main_rx:var_bit_cntr[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx|main_rx:var_bit_cntr[0]~q\,
	datad => \rx|main_rx:var_bit_cntr[1]~q\,
	combout => \rx|Add3~0_combout\);

-- Location: LCCOMB_X51_Y48_N20
\rx|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector2~0_combout\ = (\rx|state_rx.s3~q\ & (\rx|main_rx:var_bit_cntr[2]~q\ $ (((\rx|Add3~0_combout\ & \rx|Equal3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|Add3~0_combout\,
	datab => \rx|state_rx.s3~q\,
	datac => \rx|main_rx:var_bit_cntr[2]~q\,
	datad => \rx|Equal3~0_combout\,
	combout => \rx|Selector2~0_combout\);

-- Location: FF_X51_Y48_N21
\rx|main_rx:var_bit_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Selector2~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \rx|main_rx:var_bit_cntr[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_bit_cntr[2]~q\);

-- Location: LCCOMB_X51_Y48_N6
\rx|Add3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add3~1_combout\ = \rx|main_rx:var_bit_cntr[3]~q\ $ (((\rx|main_rx:var_bit_cntr[1]~q\ & (\rx|main_rx:var_bit_cntr[0]~q\ & \rx|main_rx:var_bit_cntr[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|main_rx:var_bit_cntr[1]~q\,
	datab => \rx|main_rx:var_bit_cntr[0]~q\,
	datac => \rx|main_rx:var_bit_cntr[3]~q\,
	datad => \rx|main_rx:var_bit_cntr[2]~q\,
	combout => \rx|Add3~1_combout\);

-- Location: LCCOMB_X51_Y48_N22
\rx|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector1~0_combout\ = (\rx|state_rx.s3~q\ & ((\rx|Equal3~0_combout\ & (\rx|Add3~1_combout\)) # (!\rx|Equal3~0_combout\ & ((\rx|main_rx:var_bit_cntr[3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|Equal3~0_combout\,
	datab => \rx|Add3~1_combout\,
	datac => \rx|main_rx:var_bit_cntr[3]~q\,
	datad => \rx|state_rx.s3~q\,
	combout => \rx|Selector1~0_combout\);

-- Location: FF_X51_Y48_N23
\rx|main_rx:var_bit_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Selector1~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \rx|main_rx:var_bit_cntr[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_bit_cntr[3]~q\);

-- Location: LCCOMB_X51_Y48_N26
\rx|state_rx~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|state_rx~17_combout\ = (\rx|main_rx:var_bit_cntr[3]~q\ & (!\rx|main_rx:var_bit_cntr[2]~q\ & ((!\rx|Equal3~0_combout\) # (!\rx|Add3~0_combout\)))) # (!\rx|main_rx:var_bit_cntr[3]~q\ & (\rx|main_rx:var_bit_cntr[2]~q\ & (\rx|Add3~0_combout\ & 
-- \rx|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|main_rx:var_bit_cntr[3]~q\,
	datab => \rx|main_rx:var_bit_cntr[2]~q\,
	datac => \rx|Add3~0_combout\,
	datad => \rx|Equal3~0_combout\,
	combout => \rx|state_rx~17_combout\);

-- Location: LCCOMB_X51_Y48_N18
\rx|state_rx~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|state_rx~19_combout\ = (\rx|state_rx~18_combout\ & (\rx|state_rx~17_combout\ & \rx|state_rx~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx|state_rx~18_combout\,
	datac => \rx|state_rx~17_combout\,
	datad => \rx|state_rx~16_combout\,
	combout => \rx|state_rx~19_combout\);

-- Location: LCCOMB_X51_Y48_N16
\rx|Selector14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector14~2_combout\ = (\rx|state_rx~19_combout\ & (!\rx|sig_data_bit~q\ & ((\rx|state_rx.s2~q\)))) # (!\rx|state_rx~19_combout\ & ((\rx|state_rx.s3~q\) # ((!\rx|sig_data_bit~q\ & \rx|state_rx.s2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|state_rx~19_combout\,
	datab => \rx|sig_data_bit~q\,
	datac => \rx|state_rx.s3~q\,
	datad => \rx|state_rx.s2~q\,
	combout => \rx|Selector14~2_combout\);

-- Location: FF_X51_Y48_N17
\rx|state_rx.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Selector14~2_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|state_rx.s3~q\);

-- Location: LCCOMB_X45_Y45_N28
\rx|main_rx:var_clk_cntr[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|main_rx:var_clk_cntr[0]~0_combout\ = (\rx|signal_A_q~q\ & (!\rx|signal_A_q_not~q\ & ((\rx|state_rx.s1~q\) # (\rx|state_rx.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|state_rx.s1~q\,
	datab => \rx|signal_A_q~q\,
	datac => \rx|signal_A_q_not~q\,
	datad => \rx|state_rx.s3~q\,
	combout => \rx|main_rx:var_clk_cntr[0]~0_combout\);

-- Location: FF_X46_Y43_N25
\rx|main_rx:var_clk_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|main_rx:var_clk_cntr[0]~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \rx|main_rx:var_clk_cntr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_clk_cntr[0]~q\);

-- Location: LCCOMB_X46_Y43_N30
\rx|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add2~2_combout\ = \rx|main_rx:var_clk_cntr[1]~q\ $ (\rx|main_rx:var_clk_cntr[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx|main_rx:var_clk_cntr[1]~q\,
	datad => \rx|main_rx:var_clk_cntr[0]~q\,
	combout => \rx|Add2~2_combout\);

-- Location: FF_X46_Y43_N31
\rx|main_rx:var_clk_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add2~2_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \rx|main_rx:var_clk_cntr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_clk_cntr[1]~q\);

-- Location: LCCOMB_X46_Y43_N28
\rx|Add2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add2~1_combout\ = \rx|main_rx:var_clk_cntr[2]~q\ $ (((\rx|main_rx:var_clk_cntr[1]~q\ & \rx|main_rx:var_clk_cntr[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|main_rx:var_clk_cntr[1]~q\,
	datac => \rx|main_rx:var_clk_cntr[2]~q\,
	datad => \rx|main_rx:var_clk_cntr[0]~q\,
	combout => \rx|Add2~1_combout\);

-- Location: FF_X46_Y43_N29
\rx|main_rx:var_clk_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add2~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \rx|main_rx:var_clk_cntr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_clk_cntr[2]~q\);

-- Location: LCCOMB_X46_Y43_N26
\rx|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add2~0_combout\ = \rx|main_rx:var_clk_cntr[3]~q\ $ (((\rx|main_rx:var_clk_cntr[1]~q\ & (\rx|main_rx:var_clk_cntr[2]~q\ & \rx|main_rx:var_clk_cntr[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|main_rx:var_clk_cntr[1]~q\,
	datab => \rx|main_rx:var_clk_cntr[2]~q\,
	datac => \rx|main_rx:var_clk_cntr[3]~q\,
	datad => \rx|main_rx:var_clk_cntr[0]~q\,
	combout => \rx|Add2~0_combout\);

-- Location: FF_X46_Y43_N27
\rx|main_rx:var_clk_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add2~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \rx|main_rx:var_clk_cntr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_clk_cntr[3]~q\);

-- Location: LCCOMB_X46_Y43_N0
\rx|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Equal2~0_combout\ = (\rx|main_rx:var_clk_cntr[3]~q\ & (\rx|main_rx:var_clk_cntr[2]~q\ & (\rx|main_rx:var_clk_cntr[1]~q\ & \rx|main_rx:var_clk_cntr[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|main_rx:var_clk_cntr[3]~q\,
	datab => \rx|main_rx:var_clk_cntr[2]~q\,
	datac => \rx|main_rx:var_clk_cntr[1]~q\,
	datad => \rx|main_rx:var_clk_cntr[0]~q\,
	combout => \rx|Equal2~0_combout\);

-- Location: LCCOMB_X45_Y45_N30
\rx|Add2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add2~3_combout\ = \rx|main_rx:var_clk_cntr[4]~q\ $ (\rx|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx|main_rx:var_clk_cntr[4]~q\,
	datad => \rx|Equal2~0_combout\,
	combout => \rx|Add2~3_combout\);

-- Location: FF_X45_Y45_N31
\rx|main_rx:var_clk_cntr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add2~3_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \rx|main_rx:var_clk_cntr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_clk_cntr[4]~q\);

-- Location: LCCOMB_X45_Y45_N16
\rx|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector17~0_combout\ = (\rx|main_rx:var_clk_cntr[5]~q\ & ((!\rx|Equal2~0_combout\) # (!\rx|main_rx:var_clk_cntr[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|main_rx:var_clk_cntr[4]~q\,
	datac => \rx|main_rx:var_clk_cntr[5]~q\,
	datad => \rx|Equal2~0_combout\,
	combout => \rx|Selector17~0_combout\);

-- Location: FF_X45_Y45_N17
\rx|main_rx:var_clk_cntr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Selector17~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \rx|main_rx:var_clk_cntr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_clk_cntr[5]~q\);

-- Location: LCCOMB_X45_Y45_N26
\rx|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Equal2~1_combout\ = (\rx|main_rx:var_clk_cntr[5]~q\ & (!\rx|main_rx:var_clk_cntr[4]~q\ & !\rx|Equal2~0_combout\)) # (!\rx|main_rx:var_clk_cntr[5]~q\ & (\rx|main_rx:var_clk_cntr[4]~q\ & \rx|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|main_rx:var_clk_cntr[5]~q\,
	datac => \rx|main_rx:var_clk_cntr[4]~q\,
	datad => \rx|Equal2~0_combout\,
	combout => \rx|Equal2~1_combout\);

-- Location: LCCOMB_X45_Y45_N14
\rx|state_rx~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|state_rx~16_combout\ = (\rx|Equal2~1_combout\ & (!\rx|signal_A_q_not~q\ & (\rx|signal_A_q~q\ & \rx|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|Equal2~1_combout\,
	datab => \rx|signal_A_q_not~q\,
	datac => \rx|signal_A_q~q\,
	datad => \rx|Equal2~0_combout\,
	combout => \rx|state_rx~16_combout\);

-- Location: LCCOMB_X51_Y48_N12
\rx|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector15~0_combout\ = (\rx|state_rx~16_combout\ & (\rx|state_rx~18_combout\ & (\rx|state_rx~17_combout\ & \rx|state_rx.s3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|state_rx~16_combout\,
	datab => \rx|state_rx~18_combout\,
	datac => \rx|state_rx~17_combout\,
	datad => \rx|state_rx.s3~q\,
	combout => \rx|Selector15~0_combout\);

-- Location: FF_X51_Y48_N13
\rx|state_rx.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Selector15~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|state_rx.s4~q\);

-- Location: FF_X51_Y48_N25
\rx|state_rx.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \rx|state_rx.s4~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|state_rx.s5~q\);

-- Location: LCCOMB_X49_Y48_N8
\rx|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector0~0_combout\ = (\rx|state_rx.s5~q\) # ((\rx|sig_wr_ram~q\ & \rx|state_rx.s0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|state_rx.s5~q\,
	datac => \rx|sig_wr_ram~q\,
	datad => \rx|state_rx.s0~q\,
	combout => \rx|Selector0~0_combout\);

-- Location: FF_X49_Y48_N9
\rx|sig_wr_ram\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Selector0~0_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_wr_ram~q\);

-- Location: LCCOMB_X54_Y52_N28
\rx|sig_cnt_address[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_cnt_address[0]~12_combout\ = !\rx|sig_cnt_address\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx|sig_cnt_address\(0),
	combout => \rx|sig_cnt_address[0]~12_combout\);

-- Location: LCCOMB_X51_Y48_N14
\rx|detected_byte[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|detected_byte[0]~0_combout\ = (\rx|state_rx.s4~q\ & \resetn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx|state_rx.s4~q\,
	datac => \resetn~input_o\,
	combout => \rx|detected_byte[0]~0_combout\);

-- Location: FF_X54_Y52_N29
\rx|sig_cnt_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|sig_cnt_address[0]~12_combout\,
	ena => \rx|detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_cnt_address\(0));

-- Location: LCCOMB_X54_Y52_N16
\rx|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector10~0_combout\ = (\rx|state_rx.s2~q\ & \rx|sig_cnt_address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|state_rx.s2~q\,
	datad => \rx|sig_cnt_address\(0),
	combout => \rx|Selector10~0_combout\);

-- Location: LCCOMB_X50_Y49_N24
\rx|sig_ram_address[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_ram_address[0]~0_combout\ = (!\rx|sig_data_bit~q\ & \rx|state_rx.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx|sig_data_bit~q\,
	datad => \rx|state_rx.s2~q\,
	combout => \rx|sig_ram_address[0]~0_combout\);

-- Location: FF_X49_Y47_N7
\rx|main_rx:var_trns_cntr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~24_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[12]~q\);

-- Location: LCCOMB_X49_Y48_N14
\rx|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add1~0_combout\ = \rx|main_rx:var_trns_cntr[0]~q\ $ (VCC)
-- \rx|Add1~1\ = CARRY(\rx|main_rx:var_trns_cntr[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|main_rx:var_trns_cntr[0]~q\,
	datad => VCC,
	combout => \rx|Add1~0_combout\,
	cout => \rx|Add1~1\);

-- Location: FF_X49_Y48_N15
\rx|main_rx:var_trns_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[0]~q\);

-- Location: LCCOMB_X49_Y48_N16
\rx|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add1~2_combout\ = (\rx|main_rx:var_trns_cntr[1]~q\ & (!\rx|Add1~1\)) # (!\rx|main_rx:var_trns_cntr[1]~q\ & ((\rx|Add1~1\) # (GND)))
-- \rx|Add1~3\ = CARRY((!\rx|Add1~1\) # (!\rx|main_rx:var_trns_cntr[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx|main_rx:var_trns_cntr[1]~q\,
	datad => VCC,
	cin => \rx|Add1~1\,
	combout => \rx|Add1~2_combout\,
	cout => \rx|Add1~3\);

-- Location: FF_X49_Y48_N17
\rx|main_rx:var_trns_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~2_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[1]~q\);

-- Location: LCCOMB_X49_Y48_N18
\rx|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add1~4_combout\ = (\rx|main_rx:var_trns_cntr[2]~q\ & (\rx|Add1~3\ $ (GND))) # (!\rx|main_rx:var_trns_cntr[2]~q\ & (!\rx|Add1~3\ & VCC))
-- \rx|Add1~5\ = CARRY((\rx|main_rx:var_trns_cntr[2]~q\ & !\rx|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx|main_rx:var_trns_cntr[2]~q\,
	datad => VCC,
	cin => \rx|Add1~3\,
	combout => \rx|Add1~4_combout\,
	cout => \rx|Add1~5\);

-- Location: FF_X49_Y48_N19
\rx|main_rx:var_trns_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~4_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[2]~q\);

-- Location: LCCOMB_X49_Y48_N20
\rx|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add1~6_combout\ = (\rx|main_rx:var_trns_cntr[3]~q\ & (!\rx|Add1~5\)) # (!\rx|main_rx:var_trns_cntr[3]~q\ & ((\rx|Add1~5\) # (GND)))
-- \rx|Add1~7\ = CARRY((!\rx|Add1~5\) # (!\rx|main_rx:var_trns_cntr[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx|main_rx:var_trns_cntr[3]~q\,
	datad => VCC,
	cin => \rx|Add1~5\,
	combout => \rx|Add1~6_combout\,
	cout => \rx|Add1~7\);

-- Location: FF_X49_Y48_N21
\rx|main_rx:var_trns_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~6_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[3]~q\);

-- Location: LCCOMB_X49_Y48_N22
\rx|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add1~8_combout\ = (\rx|main_rx:var_trns_cntr[4]~q\ & (\rx|Add1~7\ $ (GND))) # (!\rx|main_rx:var_trns_cntr[4]~q\ & (!\rx|Add1~7\ & VCC))
-- \rx|Add1~9\ = CARRY((\rx|main_rx:var_trns_cntr[4]~q\ & !\rx|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx|main_rx:var_trns_cntr[4]~q\,
	datad => VCC,
	cin => \rx|Add1~7\,
	combout => \rx|Add1~8_combout\,
	cout => \rx|Add1~9\);

-- Location: FF_X49_Y48_N23
\rx|main_rx:var_trns_cntr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~8_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[4]~q\);

-- Location: LCCOMB_X49_Y48_N24
\rx|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add1~10_combout\ = (\rx|main_rx:var_trns_cntr[5]~q\ & (!\rx|Add1~9\)) # (!\rx|main_rx:var_trns_cntr[5]~q\ & ((\rx|Add1~9\) # (GND)))
-- \rx|Add1~11\ = CARRY((!\rx|Add1~9\) # (!\rx|main_rx:var_trns_cntr[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx|main_rx:var_trns_cntr[5]~q\,
	datad => VCC,
	cin => \rx|Add1~9\,
	combout => \rx|Add1~10_combout\,
	cout => \rx|Add1~11\);

-- Location: FF_X49_Y48_N25
\rx|main_rx:var_trns_cntr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~10_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[5]~q\);

-- Location: LCCOMB_X49_Y48_N26
\rx|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add1~12_combout\ = (\rx|main_rx:var_trns_cntr[6]~q\ & (\rx|Add1~11\ $ (GND))) # (!\rx|main_rx:var_trns_cntr[6]~q\ & (!\rx|Add1~11\ & VCC))
-- \rx|Add1~13\ = CARRY((\rx|main_rx:var_trns_cntr[6]~q\ & !\rx|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx|main_rx:var_trns_cntr[6]~q\,
	datad => VCC,
	cin => \rx|Add1~11\,
	combout => \rx|Add1~12_combout\,
	cout => \rx|Add1~13\);

-- Location: FF_X49_Y48_N27
\rx|main_rx:var_trns_cntr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~12_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[6]~q\);

-- Location: LCCOMB_X49_Y48_N28
\rx|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add1~14_combout\ = (\rx|main_rx:var_trns_cntr[7]~q\ & (!\rx|Add1~13\)) # (!\rx|main_rx:var_trns_cntr[7]~q\ & ((\rx|Add1~13\) # (GND)))
-- \rx|Add1~15\ = CARRY((!\rx|Add1~13\) # (!\rx|main_rx:var_trns_cntr[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx|main_rx:var_trns_cntr[7]~q\,
	datad => VCC,
	cin => \rx|Add1~13\,
	combout => \rx|Add1~14_combout\,
	cout => \rx|Add1~15\);

-- Location: FF_X49_Y48_N29
\rx|main_rx:var_trns_cntr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~14_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[7]~q\);

-- Location: LCCOMB_X49_Y48_N30
\rx|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add1~16_combout\ = (\rx|main_rx:var_trns_cntr[8]~q\ & (\rx|Add1~15\ $ (GND))) # (!\rx|main_rx:var_trns_cntr[8]~q\ & (!\rx|Add1~15\ & VCC))
-- \rx|Add1~17\ = CARRY((\rx|main_rx:var_trns_cntr[8]~q\ & !\rx|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx|main_rx:var_trns_cntr[8]~q\,
	datad => VCC,
	cin => \rx|Add1~15\,
	combout => \rx|Add1~16_combout\,
	cout => \rx|Add1~17\);

-- Location: FF_X49_Y48_N31
\rx|main_rx:var_trns_cntr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~16_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[8]~q\);

-- Location: LCCOMB_X49_Y47_N0
\rx|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add1~18_combout\ = (\rx|main_rx:var_trns_cntr[9]~q\ & (!\rx|Add1~17\)) # (!\rx|main_rx:var_trns_cntr[9]~q\ & ((\rx|Add1~17\) # (GND)))
-- \rx|Add1~19\ = CARRY((!\rx|Add1~17\) # (!\rx|main_rx:var_trns_cntr[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx|main_rx:var_trns_cntr[9]~q\,
	datad => VCC,
	cin => \rx|Add1~17\,
	combout => \rx|Add1~18_combout\,
	cout => \rx|Add1~19\);

-- Location: FF_X49_Y47_N1
\rx|main_rx:var_trns_cntr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~18_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[9]~q\);

-- Location: LCCOMB_X49_Y47_N2
\rx|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add1~20_combout\ = (\rx|main_rx:var_trns_cntr[10]~q\ & (\rx|Add1~19\ $ (GND))) # (!\rx|main_rx:var_trns_cntr[10]~q\ & (!\rx|Add1~19\ & VCC))
-- \rx|Add1~21\ = CARRY((\rx|main_rx:var_trns_cntr[10]~q\ & !\rx|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx|main_rx:var_trns_cntr[10]~q\,
	datad => VCC,
	cin => \rx|Add1~19\,
	combout => \rx|Add1~20_combout\,
	cout => \rx|Add1~21\);

-- Location: FF_X49_Y47_N3
\rx|main_rx:var_trns_cntr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~20_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[10]~q\);

-- Location: LCCOMB_X49_Y47_N4
\rx|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add1~22_combout\ = (\rx|main_rx:var_trns_cntr[11]~q\ & (!\rx|Add1~21\)) # (!\rx|main_rx:var_trns_cntr[11]~q\ & ((\rx|Add1~21\) # (GND)))
-- \rx|Add1~23\ = CARRY((!\rx|Add1~21\) # (!\rx|main_rx:var_trns_cntr[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx|main_rx:var_trns_cntr[11]~q\,
	datad => VCC,
	cin => \rx|Add1~21\,
	combout => \rx|Add1~22_combout\,
	cout => \rx|Add1~23\);

-- Location: FF_X49_Y47_N5
\rx|main_rx:var_trns_cntr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~22_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[11]~q\);

-- Location: LCCOMB_X49_Y47_N6
\rx|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add1~24_combout\ = (\rx|main_rx:var_trns_cntr[12]~q\ & (\rx|Add1~23\ $ (GND))) # (!\rx|main_rx:var_trns_cntr[12]~q\ & (!\rx|Add1~23\ & VCC))
-- \rx|Add1~25\ = CARRY((\rx|main_rx:var_trns_cntr[12]~q\ & !\rx|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx|main_rx:var_trns_cntr[12]~q\,
	datad => VCC,
	cin => \rx|Add1~23\,
	combout => \rx|Add1~24_combout\,
	cout => \rx|Add1~25\);

-- Location: LCCOMB_X49_Y48_N6
\rx|sig_ram_address[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_ram_address[0]~4_combout\ = (\rx|sig_bouncer_bit~q\ & (!\rx|Add1~2_combout\ & (!\rx|Add1~0_combout\ & !\rx|state_rx.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|sig_bouncer_bit~q\,
	datab => \rx|Add1~2_combout\,
	datac => \rx|Add1~0_combout\,
	datad => \rx|state_rx.s0~q\,
	combout => \rx|sig_ram_address[0]~4_combout\);

-- Location: LCCOMB_X49_Y47_N30
\rx|sig_ram_address[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_ram_address[0]~5_combout\ = (\resetn~input_o\ & ((\rx|sig_ram_address[0]~0_combout\) # ((!\rx|Add1~24_combout\ & \rx|sig_ram_address[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|Add1~24_combout\,
	datab => \rx|sig_ram_address[0]~4_combout\,
	datac => \resetn~input_o\,
	datad => \rx|sig_ram_address[0]~0_combout\,
	combout => \rx|sig_ram_address[0]~5_combout\);

-- Location: LCCOMB_X49_Y48_N10
\rx|sig_ram_address[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_ram_address[0]~1_combout\ = (\rx|Add1~10_combout\ & (!\rx|Add1~6_combout\ & (!\rx|Add1~8_combout\ & !\rx|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|Add1~10_combout\,
	datab => \rx|Add1~6_combout\,
	datac => \rx|Add1~8_combout\,
	datad => \rx|Add1~4_combout\,
	combout => \rx|sig_ram_address[0]~1_combout\);

-- Location: LCCOMB_X49_Y48_N12
\rx|sig_ram_address[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_ram_address[0]~2_combout\ = (!\rx|Add1~18_combout\ & (!\rx|Add1~14_combout\ & (\rx|Add1~16_combout\ & !\rx|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|Add1~18_combout\,
	datab => \rx|Add1~14_combout\,
	datac => \rx|Add1~16_combout\,
	datad => \rx|Add1~12_combout\,
	combout => \rx|sig_ram_address[0]~2_combout\);

-- Location: LCCOMB_X49_Y47_N28
\rx|sig_ram_address[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_ram_address[0]~3_combout\ = (\rx|sig_ram_address[0]~1_combout\ & (!\rx|Add1~20_combout\ & (!\rx|Add1~22_combout\ & \rx|sig_ram_address[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|sig_ram_address[0]~1_combout\,
	datab => \rx|Add1~20_combout\,
	datac => \rx|Add1~22_combout\,
	datad => \rx|sig_ram_address[0]~2_combout\,
	combout => \rx|sig_ram_address[0]~3_combout\);

-- Location: FF_X49_Y47_N9
\rx|main_rx:var_trns_cntr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~26_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[13]~q\);

-- Location: LCCOMB_X49_Y47_N8
\rx|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add1~26_combout\ = (\rx|main_rx:var_trns_cntr[13]~q\ & (!\rx|Add1~25\)) # (!\rx|main_rx:var_trns_cntr[13]~q\ & ((\rx|Add1~25\) # (GND)))
-- \rx|Add1~27\ = CARRY((!\rx|Add1~25\) # (!\rx|main_rx:var_trns_cntr[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx|main_rx:var_trns_cntr[13]~q\,
	datad => VCC,
	cin => \rx|Add1~25\,
	combout => \rx|Add1~26_combout\,
	cout => \rx|Add1~27\);

-- Location: LCCOMB_X49_Y47_N24
\rx|sig_ram_address[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_ram_address[0]~6_combout\ = (\rx|sig_ram_address[0]~5_combout\ & ((\rx|sig_ram_address[0]~0_combout\) # ((\rx|sig_ram_address[0]~3_combout\ & \rx|Add1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|sig_ram_address[0]~5_combout\,
	datab => \rx|sig_ram_address[0]~3_combout\,
	datac => \rx|Add1~26_combout\,
	datad => \rx|sig_ram_address[0]~0_combout\,
	combout => \rx|sig_ram_address[0]~6_combout\);

-- Location: FF_X49_Y47_N13
\rx|main_rx:var_trns_cntr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~30_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[15]~q\);

-- Location: LCCOMB_X49_Y47_N10
\rx|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add1~28_combout\ = (\rx|main_rx:var_trns_cntr[14]~q\ & (\rx|Add1~27\ $ (GND))) # (!\rx|main_rx:var_trns_cntr[14]~q\ & (!\rx|Add1~27\ & VCC))
-- \rx|Add1~29\ = CARRY((\rx|main_rx:var_trns_cntr[14]~q\ & !\rx|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx|main_rx:var_trns_cntr[14]~q\,
	datad => VCC,
	cin => \rx|Add1~27\,
	combout => \rx|Add1~28_combout\,
	cout => \rx|Add1~29\);

-- Location: FF_X49_Y47_N11
\rx|main_rx:var_trns_cntr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~28_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[14]~q\);

-- Location: LCCOMB_X49_Y47_N12
\rx|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add1~30_combout\ = (\rx|main_rx:var_trns_cntr[15]~q\ & (!\rx|Add1~29\)) # (!\rx|main_rx:var_trns_cntr[15]~q\ & ((\rx|Add1~29\) # (GND)))
-- \rx|Add1~31\ = CARRY((!\rx|Add1~29\) # (!\rx|main_rx:var_trns_cntr[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx|main_rx:var_trns_cntr[15]~q\,
	datad => VCC,
	cin => \rx|Add1~29\,
	combout => \rx|Add1~30_combout\,
	cout => \rx|Add1~31\);

-- Location: FF_X49_Y47_N17
\rx|main_rx:var_trns_cntr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~34_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[17]~q\);

-- Location: LCCOMB_X49_Y47_N14
\rx|Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add1~32_combout\ = (\rx|main_rx:var_trns_cntr[16]~q\ & (\rx|Add1~31\ $ (GND))) # (!\rx|main_rx:var_trns_cntr[16]~q\ & (!\rx|Add1~31\ & VCC))
-- \rx|Add1~33\ = CARRY((\rx|main_rx:var_trns_cntr[16]~q\ & !\rx|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx|main_rx:var_trns_cntr[16]~q\,
	datad => VCC,
	cin => \rx|Add1~31\,
	combout => \rx|Add1~32_combout\,
	cout => \rx|Add1~33\);

-- Location: FF_X49_Y47_N15
\rx|main_rx:var_trns_cntr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~32_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[16]~q\);

-- Location: LCCOMB_X49_Y47_N16
\rx|Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add1~34_combout\ = (\rx|main_rx:var_trns_cntr[17]~q\ & (!\rx|Add1~33\)) # (!\rx|main_rx:var_trns_cntr[17]~q\ & ((\rx|Add1~33\) # (GND)))
-- \rx|Add1~35\ = CARRY((!\rx|Add1~33\) # (!\rx|main_rx:var_trns_cntr[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx|main_rx:var_trns_cntr[17]~q\,
	datad => VCC,
	cin => \rx|Add1~33\,
	combout => \rx|Add1~34_combout\,
	cout => \rx|Add1~35\);

-- Location: LCCOMB_X49_Y47_N26
\rx|sig_ram_address[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_ram_address[0]~7_combout\ = (\rx|Add1~30_combout\ & (\rx|Add1~34_combout\ & (\rx|Add1~32_combout\ & !\rx|Add1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|Add1~30_combout\,
	datab => \rx|Add1~34_combout\,
	datac => \rx|Add1~32_combout\,
	datad => \rx|Add1~28_combout\,
	combout => \rx|sig_ram_address[0]~7_combout\);

-- Location: FF_X49_Y47_N19
\rx|main_rx:var_trns_cntr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~36_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[18]~q\);

-- Location: LCCOMB_X49_Y47_N18
\rx|Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add1~36_combout\ = \rx|main_rx:var_trns_cntr[18]~q\ $ (!\rx|Add1~35\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx|main_rx:var_trns_cntr[18]~q\,
	cin => \rx|Add1~35\,
	combout => \rx|Add1~36_combout\);

-- Location: LCCOMB_X49_Y47_N20
\rx|sig_ram_address[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_ram_address[0]~8_combout\ = (\rx|sig_ram_address[0]~6_combout\ & ((\rx|sig_ram_address[0]~0_combout\) # ((\rx|sig_ram_address[0]~7_combout\ & \rx|Add1~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|sig_ram_address[0]~0_combout\,
	datab => \rx|sig_ram_address[0]~6_combout\,
	datac => \rx|sig_ram_address[0]~7_combout\,
	datad => \rx|Add1~36_combout\,
	combout => \rx|sig_ram_address[0]~8_combout\);

-- Location: FF_X54_Y52_N17
\rx|sig_ram_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Selector10~0_combout\,
	ena => \rx|sig_ram_address[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_ram_address\(0));

-- Location: LCCOMB_X54_Y52_N6
\rx|sig_cnt_address[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_cnt_address[1]~4_combout\ = (\rx|sig_cnt_address\(1) & (\rx|sig_cnt_address\(0) $ (VCC))) # (!\rx|sig_cnt_address\(1) & (\rx|sig_cnt_address\(0) & VCC))
-- \rx|sig_cnt_address[1]~5\ = CARRY((\rx|sig_cnt_address\(1) & \rx|sig_cnt_address\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|sig_cnt_address\(1),
	datab => \rx|sig_cnt_address\(0),
	datad => VCC,
	combout => \rx|sig_cnt_address[1]~4_combout\,
	cout => \rx|sig_cnt_address[1]~5\);

-- Location: FF_X54_Y52_N7
\rx|sig_cnt_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|sig_cnt_address[1]~4_combout\,
	ena => \rx|detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_cnt_address\(1));

-- Location: LCCOMB_X54_Y52_N26
\rx|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector9~0_combout\ = (\rx|state_rx.s2~q\ & \rx|sig_cnt_address\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|state_rx.s2~q\,
	datad => \rx|sig_cnt_address\(1),
	combout => \rx|Selector9~0_combout\);

-- Location: FF_X54_Y52_N27
\rx|sig_ram_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Selector9~0_combout\,
	ena => \rx|sig_ram_address[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_ram_address\(1));

-- Location: LCCOMB_X54_Y52_N8
\rx|sig_cnt_address[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_cnt_address[2]~6_combout\ = (\rx|sig_cnt_address\(2) & (!\rx|sig_cnt_address[1]~5\)) # (!\rx|sig_cnt_address\(2) & ((\rx|sig_cnt_address[1]~5\) # (GND)))
-- \rx|sig_cnt_address[2]~7\ = CARRY((!\rx|sig_cnt_address[1]~5\) # (!\rx|sig_cnt_address\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx|sig_cnt_address\(2),
	datad => VCC,
	cin => \rx|sig_cnt_address[1]~5\,
	combout => \rx|sig_cnt_address[2]~6_combout\,
	cout => \rx|sig_cnt_address[2]~7\);

-- Location: FF_X54_Y52_N9
\rx|sig_cnt_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|sig_cnt_address[2]~6_combout\,
	ena => \rx|detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_cnt_address\(2));

-- Location: LCCOMB_X54_Y52_N20
\rx|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector8~0_combout\ = (\rx|sig_cnt_address\(2) & \rx|state_rx.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx|sig_cnt_address\(2),
	datad => \rx|state_rx.s2~q\,
	combout => \rx|Selector8~0_combout\);

-- Location: FF_X54_Y52_N21
\rx|sig_ram_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Selector8~0_combout\,
	ena => \rx|sig_ram_address[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_ram_address\(2));

-- Location: LCCOMB_X54_Y52_N10
\rx|sig_cnt_address[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_cnt_address[3]~8_combout\ = (\rx|sig_cnt_address\(3) & (\rx|sig_cnt_address[2]~7\ $ (GND))) # (!\rx|sig_cnt_address\(3) & (!\rx|sig_cnt_address[2]~7\ & VCC))
-- \rx|sig_cnt_address[3]~9\ = CARRY((\rx|sig_cnt_address\(3) & !\rx|sig_cnt_address[2]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx|sig_cnt_address\(3),
	datad => VCC,
	cin => \rx|sig_cnt_address[2]~7\,
	combout => \rx|sig_cnt_address[3]~8_combout\,
	cout => \rx|sig_cnt_address[3]~9\);

-- Location: FF_X54_Y52_N11
\rx|sig_cnt_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|sig_cnt_address[3]~8_combout\,
	ena => \rx|detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_cnt_address\(3));

-- Location: LCCOMB_X54_Y52_N30
\rx|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector7~0_combout\ = (\rx|state_rx.s2~q\ & \rx|sig_cnt_address\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|state_rx.s2~q\,
	datad => \rx|sig_cnt_address\(3),
	combout => \rx|Selector7~0_combout\);

-- Location: FF_X54_Y52_N31
\rx|sig_ram_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Selector7~0_combout\,
	ena => \rx|sig_ram_address[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_ram_address\(3));

-- Location: LCCOMB_X54_Y52_N12
\rx|sig_cnt_address[4]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_cnt_address[4]~10_combout\ = \rx|sig_cnt_address[3]~9\ $ (\rx|sig_cnt_address\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rx|sig_cnt_address\(4),
	cin => \rx|sig_cnt_address[3]~9\,
	combout => \rx|sig_cnt_address[4]~10_combout\);

-- Location: FF_X54_Y52_N13
\rx|sig_cnt_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|sig_cnt_address[4]~10_combout\,
	ena => \rx|detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_cnt_address\(4));

-- Location: LCCOMB_X54_Y52_N0
\rx|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector6~0_combout\ = (\rx|state_rx.s2~q\ & \rx|sig_cnt_address\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|state_rx.s2~q\,
	datad => \rx|sig_cnt_address\(4),
	combout => \rx|Selector6~0_combout\);

-- Location: FF_X54_Y52_N1
\rx|sig_ram_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Selector6~0_combout\,
	ena => \rx|sig_ram_address[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_ram_address\(4));

-- Location: IOIBUF_X46_Y54_N1
\toggle~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_toggle,
	o => \toggle~input_o\);

-- Location: LCCOMB_X54_Y52_N2
\rx|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector5~0_combout\ = (!\toggle~input_o\ & \rx|state_rx.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \toggle~input_o\,
	datad => \rx|state_rx.s2~q\,
	combout => \rx|Selector5~0_combout\);

-- Location: FF_X54_Y52_N3
\rx|sig_ram_address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Selector5~0_combout\,
	ena => \rx|sig_ram_address[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_ram_address\(5));

-- Location: LCCOMB_X54_Y51_N0
\rx|sig_detected_byte[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_detected_byte[0]~feeder_combout\ = \rx|sig_data_bit~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx|sig_data_bit~q\,
	combout => \rx|sig_detected_byte[0]~feeder_combout\);

-- Location: LCCOMB_X49_Y48_N2
\rx|sig_detected_byte[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_detected_byte[0]~0_combout\ = (\resetn~input_o\ & (\rx|state_rx~16_combout\ & \rx|state_rx.s3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetn~input_o\,
	datac => \rx|state_rx~16_combout\,
	datad => \rx|state_rx.s3~q\,
	combout => \rx|sig_detected_byte[0]~0_combout\);

-- Location: FF_X54_Y51_N1
\rx|sig_detected_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|sig_detected_byte[0]~feeder_combout\,
	ena => \rx|sig_detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_detected_byte\(0));

-- Location: LCCOMB_X54_Y51_N24
\rx|detected_byte[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|detected_byte[0]~feeder_combout\ = \rx|sig_detected_byte\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx|sig_detected_byte\(0),
	combout => \rx|detected_byte[0]~feeder_combout\);

-- Location: FF_X54_Y51_N25
\rx|detected_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|detected_byte[0]~feeder_combout\,
	ena => \rx|detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|detected_byte\(0));

-- Location: LCCOMB_X54_Y51_N2
\rx|sig_detected_byte[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_detected_byte[1]~feeder_combout\ = \rx|sig_detected_byte\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx|sig_detected_byte\(0),
	combout => \rx|sig_detected_byte[1]~feeder_combout\);

-- Location: FF_X54_Y51_N3
\rx|sig_detected_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|sig_detected_byte[1]~feeder_combout\,
	ena => \rx|sig_detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_detected_byte\(1));

-- Location: LCCOMB_X54_Y51_N10
\rx|detected_byte[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|detected_byte[1]~feeder_combout\ = \rx|sig_detected_byte\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx|sig_detected_byte\(1),
	combout => \rx|detected_byte[1]~feeder_combout\);

-- Location: FF_X54_Y51_N11
\rx|detected_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|detected_byte[1]~feeder_combout\,
	ena => \rx|detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|detected_byte\(1));

-- Location: LCCOMB_X54_Y51_N4
\rx|sig_detected_byte[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_detected_byte[2]~feeder_combout\ = \rx|sig_detected_byte\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx|sig_detected_byte\(1),
	combout => \rx|sig_detected_byte[2]~feeder_combout\);

-- Location: FF_X54_Y51_N5
\rx|sig_detected_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|sig_detected_byte[2]~feeder_combout\,
	ena => \rx|sig_detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_detected_byte\(2));

-- Location: FF_X54_Y51_N29
\rx|detected_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \rx|sig_detected_byte\(2),
	sload => VCC,
	ena => \rx|detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|detected_byte\(2));

-- Location: FF_X54_Y51_N23
\rx|sig_detected_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \rx|sig_detected_byte\(2),
	sload => VCC,
	ena => \rx|sig_detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_detected_byte\(3));

-- Location: FF_X54_Y51_N7
\rx|detected_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \rx|sig_detected_byte\(3),
	sload => VCC,
	ena => \rx|detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|detected_byte\(3));

-- Location: FF_X54_Y51_N17
\rx|sig_detected_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \rx|sig_detected_byte\(3),
	sload => VCC,
	ena => \rx|sig_detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_detected_byte\(4));

-- Location: LCCOMB_X54_Y51_N8
\rx|detected_byte[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|detected_byte[4]~feeder_combout\ = \rx|sig_detected_byte\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx|sig_detected_byte\(4),
	combout => \rx|detected_byte[4]~feeder_combout\);

-- Location: FF_X54_Y51_N9
\rx|detected_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|detected_byte[4]~feeder_combout\,
	ena => \rx|detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|detected_byte\(4));

-- Location: LCCOMB_X54_Y51_N18
\rx|sig_detected_byte[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_detected_byte[5]~feeder_combout\ = \rx|sig_detected_byte\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx|sig_detected_byte\(4),
	combout => \rx|sig_detected_byte[5]~feeder_combout\);

-- Location: FF_X54_Y51_N19
\rx|sig_detected_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|sig_detected_byte[5]~feeder_combout\,
	ena => \rx|sig_detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_detected_byte\(5));

-- Location: LCCOMB_X54_Y51_N26
\rx|detected_byte[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|detected_byte[5]~feeder_combout\ = \rx|sig_detected_byte\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx|sig_detected_byte\(5),
	combout => \rx|detected_byte[5]~feeder_combout\);

-- Location: FF_X54_Y51_N27
\rx|detected_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|detected_byte[5]~feeder_combout\,
	ena => \rx|detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|detected_byte\(5));

-- Location: LCCOMB_X54_Y51_N20
\rx|sig_detected_byte[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_detected_byte[6]~feeder_combout\ = \rx|sig_detected_byte\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx|sig_detected_byte\(5),
	combout => \rx|sig_detected_byte[6]~feeder_combout\);

-- Location: FF_X54_Y51_N21
\rx|sig_detected_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|sig_detected_byte[6]~feeder_combout\,
	ena => \rx|sig_detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_detected_byte\(6));

-- Location: LCCOMB_X54_Y51_N12
\rx|detected_byte[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|detected_byte[6]~feeder_combout\ = \rx|sig_detected_byte\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx|sig_detected_byte\(6),
	combout => \rx|detected_byte[6]~feeder_combout\);

-- Location: FF_X54_Y51_N13
\rx|detected_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|detected_byte[6]~feeder_combout\,
	ena => \rx|detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|detected_byte\(6));

-- Location: LCCOMB_X54_Y51_N30
\rx|sig_detected_byte[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_detected_byte[7]~feeder_combout\ = \rx|sig_detected_byte\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx|sig_detected_byte\(6),
	combout => \rx|sig_detected_byte[7]~feeder_combout\);

-- Location: FF_X54_Y51_N31
\rx|sig_detected_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|sig_detected_byte[7]~feeder_combout\,
	ena => \rx|sig_detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_detected_byte\(7));

-- Location: FF_X54_Y51_N15
\rx|detected_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \rx|sig_detected_byte\(7),
	sload => VCC,
	ena => \rx|detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|detected_byte\(7));

-- Location: M9K_X53_Y51_N0
\memory|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000003F00000003E00000003D00000003C00000003B00000003A0000000390",
	mem_init0 => X"0000003800000003700000003600000003500000003400000003300000003200000003100000003000000002F00000002E00000002D00000002C00000002B00000002A00000002900000002800000002700000002600000002500000002400000002300000002200000002100000002000000001F00000001E00000001D00000001C00000001B00000001A00000001900000001800000001700000001600000001500000001400000001300000001200000001100000001000000000F00000000E00000000D00000000C00000000B00000000A000000009000000008000000007000000006000000005000000004000000003000000002000000001000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Ram2_X_data.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Ram2_X:memory|altsyncram:altsyncram_component|altsyncram_64s1:auto_generated|ALTSYNCRAM",
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
	portawe => \rx|sig_wr_ram~q\,
	portbre => VCC,
	clk0 => \sysclk~inputclkctrl_outclk\,
	clk1 => \sysclk~inputclkctrl_outclk\,
	ena0 => \rx|sig_wr_ram~q\,
	portadatain => \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \memory|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

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

ww_wr_ram <= \wr_ram~output_o\;

ww_ram_address(0) <= \ram_address[0]~output_o\;

ww_ram_address(1) <= \ram_address[1]~output_o\;

ww_ram_address(2) <= \ram_address[2]~output_o\;

ww_ram_address(3) <= \ram_address[3]~output_o\;

ww_ram_address(4) <= \ram_address[4]~output_o\;

ww_ram_address(5) <= \ram_address[5]~output_o\;

ww_detected_byte(0) <= \detected_byte[0]~output_o\;

ww_detected_byte(1) <= \detected_byte[1]~output_o\;

ww_detected_byte(2) <= \detected_byte[2]~output_o\;

ww_detected_byte(3) <= \detected_byte[3]~output_o\;

ww_detected_byte(4) <= \detected_byte[4]~output_o\;

ww_detected_byte(5) <= \detected_byte[5]~output_o\;

ww_detected_byte(6) <= \detected_byte[6]~output_o\;

ww_detected_byte(7) <= \detected_byte[7]~output_o\;

ww_q_ram(0) <= \q_ram[0]~output_o\;

ww_q_ram(1) <= \q_ram[1]~output_o\;

ww_q_ram(2) <= \q_ram[2]~output_o\;

ww_q_ram(3) <= \q_ram[3]~output_o\;

ww_q_ram(4) <= \q_ram[4]~output_o\;

ww_q_ram(5) <= \q_ram[5]~output_o\;

ww_q_ram(6) <= \q_ram[6]~output_o\;

ww_q_ram(7) <= \q_ram[7]~output_o\;
END structure;


