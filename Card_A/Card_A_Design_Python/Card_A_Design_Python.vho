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

-- DATE "09/11/2023 11:14:45"

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

ENTITY 	Card_A_Design_Python IS
    PORT (
	resetn : IN std_logic;
	sysclk : IN std_logic;
	detected_bit : IN std_logic;
	uart_tx_triger : BUFFER std_logic;
	BiPhase_tx_out : BUFFER std_logic
	);
END Card_A_Design_Python;

-- Design Ports Information
-- uart_tx_triger	=>  Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- BiPhase_tx_out	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sysclk	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- resetn	=>  Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- detected_bit	=>  Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Card_A_Design_Python IS
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
SIGNAL ww_detected_bit : std_logic;
SIGNAL ww_uart_tx_triger : std_logic;
SIGNAL ww_BiPhase_tx_out : std_logic;
SIGNAL \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memory|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \sysclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \uart_tx_triger~output_o\ : std_logic;
SIGNAL \BiPhase_tx_out~output_o\ : std_logic;
SIGNAL \sysclk~input_o\ : std_logic;
SIGNAL \sysclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \tx|baud_clock:cnt_baud[8]~q\ : std_logic;
SIGNAL \tx|Add0~0_combout\ : std_logic;
SIGNAL \tx|cnt_baud~0_combout\ : std_logic;
SIGNAL \tx|baud_clock:cnt_baud[0]~q\ : std_logic;
SIGNAL \tx|Add0~1\ : std_logic;
SIGNAL \tx|Add0~2_combout\ : std_logic;
SIGNAL \tx|Equal0~1_combout\ : std_logic;
SIGNAL \tx|cnt_baud~1_combout\ : std_logic;
SIGNAL \tx|cnt_baud~2_combout\ : std_logic;
SIGNAL \tx|baud_clock:cnt_baud[1]~q\ : std_logic;
SIGNAL \tx|Add0~3\ : std_logic;
SIGNAL \tx|Add0~4_combout\ : std_logic;
SIGNAL \tx|baud_clock:cnt_baud[2]~q\ : std_logic;
SIGNAL \tx|Add0~5\ : std_logic;
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
SIGNAL \tx|cnt_baud~5_combout\ : std_logic;
SIGNAL \tx|baud_clock:cnt_baud[9]~q\ : std_logic;
SIGNAL \tx|Add0~17\ : std_logic;
SIGNAL \tx|Add0~18_combout\ : std_logic;
SIGNAL \tx|cnt_baud~3_combout\ : std_logic;
SIGNAL \tx|baud_clock:cnt_baud[3]~q\ : std_logic;
SIGNAL \tx|Add0~6_combout\ : std_logic;
SIGNAL \tx|Equal0~0_combout\ : std_logic;
SIGNAL \tx|Equal0~2_combout\ : std_logic;
SIGNAL \tx|sig_baud_clk~0_combout\ : std_logic;
SIGNAL \tx|sig_baud_clk~q\ : std_logic;
SIGNAL \tx|signal_A_q~feeder_combout\ : std_logic;
SIGNAL \tx|signal_A_q~q\ : std_logic;
SIGNAL \tx|signal_A_q_not~q\ : std_logic;
SIGNAL \tx|sig_arising_edge~combout\ : std_logic;
SIGNAL \biphase|state_bi.s1~0_combout\ : std_logic;
SIGNAL \biphase|sig_main[0]~39_combout\ : std_logic;
SIGNAL \biphase|sig_main[1]~13_combout\ : std_logic;
SIGNAL \biphase|sig_main[1]~14\ : std_logic;
SIGNAL \biphase|sig_main[2]~15_combout\ : std_logic;
SIGNAL \biphase|sig_main[2]~16\ : std_logic;
SIGNAL \biphase|sig_main[3]~17_combout\ : std_logic;
SIGNAL \biphase|sig_main[3]~18\ : std_logic;
SIGNAL \biphase|sig_main[4]~19_combout\ : std_logic;
SIGNAL \biphase|sig_main[4]~20\ : std_logic;
SIGNAL \biphase|sig_main[5]~21_combout\ : std_logic;
SIGNAL \biphase|sig_main[5]~22\ : std_logic;
SIGNAL \biphase|sig_main[6]~23_combout\ : std_logic;
SIGNAL \biphase|sig_main[6]~24\ : std_logic;
SIGNAL \biphase|sig_main[7]~25_combout\ : std_logic;
SIGNAL \biphase|sig_main[7]~26\ : std_logic;
SIGNAL \biphase|sig_main[8]~27_combout\ : std_logic;
SIGNAL \biphase|sig_main[8]~28\ : std_logic;
SIGNAL \biphase|sig_main[9]~29_combout\ : std_logic;
SIGNAL \biphase|sig_main[9]~30\ : std_logic;
SIGNAL \biphase|sig_main[10]~31_combout\ : std_logic;
SIGNAL \biphase|sig_main[10]~32\ : std_logic;
SIGNAL \biphase|sig_main[11]~33_combout\ : std_logic;
SIGNAL \biphase|sig_main[11]~34\ : std_logic;
SIGNAL \biphase|sig_main[12]~35_combout\ : std_logic;
SIGNAL \biphase|sig_main[12]~36\ : std_logic;
SIGNAL \biphase|sig_main[13]~37_combout\ : std_logic;
SIGNAL \biphase|sig_cut~feeder_combout\ : std_logic;
SIGNAL \biphase|sig_cut~q\ : std_logic;
SIGNAL \biphase|sig_cut_not~feeder_combout\ : std_logic;
SIGNAL \biphase|sig_cut_not~q\ : std_logic;
SIGNAL \biphase|sig_main_rising_edge~combout\ : std_logic;
SIGNAL \biphase|state_bi.s1~q\ : std_logic;
SIGNAL \biphase|state_bi.s2~feeder_combout\ : std_logic;
SIGNAL \biphase|state_bi.s2~q\ : std_logic;
SIGNAL \biphase|state_bi.s3~feeder_combout\ : std_logic;
SIGNAL \biphase|state_bi.s3~q\ : std_logic;
SIGNAL \biphase|state_bi.s4~feeder_combout\ : std_logic;
SIGNAL \biphase|state_bi.s4~q\ : std_logic;
SIGNAL \biphase|state_bi.s5~feeder_combout\ : std_logic;
SIGNAL \biphase|state_bi.s5~q\ : std_logic;
SIGNAL \biphase|state_bi.s6~feeder_combout\ : std_logic;
SIGNAL \biphase|state_bi.s6~q\ : std_logic;
SIGNAL \biphase|state_bi.s7~feeder_combout\ : std_logic;
SIGNAL \biphase|state_bi.s7~q\ : std_logic;
SIGNAL \biphase|state_bi.s0~0_combout\ : std_logic;
SIGNAL \biphase|state_bi.s0~q\ : std_logic;
SIGNAL \biphase|sig_inc~0_combout\ : std_logic;
SIGNAL \biphase|sig_inc~1_combout\ : std_logic;
SIGNAL \biphase|sig_inc~q\ : std_logic;
SIGNAL \biphase|state_mini.s4a~q\ : std_logic;
SIGNAL \biphase|state_mini.s5a~q\ : std_logic;
SIGNAL \biphase|Selector2~0_combout\ : std_logic;
SIGNAL \biphase|state_mini.s0a~q\ : std_logic;
SIGNAL \biphase|Selector3~0_combout\ : std_logic;
SIGNAL \biphase|state_mini.s1a~q\ : std_logic;
SIGNAL \biphase|Selector4~0_combout\ : std_logic;
SIGNAL \biphase|state_mini.s2a~q\ : std_logic;
SIGNAL \biphase|state_mini.s3a~feeder_combout\ : std_logic;
SIGNAL \biphase|state_mini.s3a~q\ : std_logic;
SIGNAL \biphase|sig_read_address_cnt[0]~4_combout\ : std_logic;
SIGNAL \biphase|sig_read_address_cnt[1]~5_combout\ : std_logic;
SIGNAL \biphase|sig_read_address_cnt[1]~6\ : std_logic;
SIGNAL \biphase|sig_read_address_cnt[2]~7_combout\ : std_logic;
SIGNAL \biphase|sig_read_address_cnt[2]~8\ : std_logic;
SIGNAL \biphase|sig_read_address_cnt[3]~9_combout\ : std_logic;
SIGNAL \biphase|sig_read_address_cnt[3]~10\ : std_logic;
SIGNAL \biphase|sig_read_address_cnt[4]~11_combout\ : std_logic;
SIGNAL \biphase|start_strobe_tx~0_combout\ : std_logic;
SIGNAL \biphase|start_strobe_tx~1_combout\ : std_logic;
SIGNAL \biphase|start_strobe_tx~2_combout\ : std_logic;
SIGNAL \biphase|start_strobe_tx~q\ : std_logic;
SIGNAL \tx|Selector11~0_combout\ : std_logic;
SIGNAL \tx|Add1~0_combout\ : std_logic;
SIGNAL \tx|Selector8~0_combout\ : std_logic;
SIGNAL \tx|transmission:sig_cntr[3]~q\ : std_logic;
SIGNAL \tx|Selector3~0_combout\ : std_logic;
SIGNAL \tx|Selector3~1_combout\ : std_logic;
SIGNAL \tx|state_tx.s3~q\ : std_logic;
SIGNAL \tx|Selector4~0_combout\ : std_logic;
SIGNAL \tx|state_tx.s4~q\ : std_logic;
SIGNAL \tx|transmission:sig_cntr[0]~2_combout\ : std_logic;
SIGNAL \tx|transmission:sig_cntr[0]~q\ : std_logic;
SIGNAL \tx|Selector10~0_combout\ : std_logic;
SIGNAL \tx|transmission:sig_cntr[1]~q\ : std_logic;
SIGNAL \tx|Equal3~0_combout\ : std_logic;
SIGNAL \tx|state_tx~24_combout\ : std_logic;
SIGNAL \tx|state_tx.s8~q\ : std_logic;
SIGNAL \tx|Selector0~0_combout\ : std_logic;
SIGNAL \tx|state_tx.s0~q\ : std_logic;
SIGNAL \tx|Selector1~0_combout\ : std_logic;
SIGNAL \tx|state_tx.s1~q\ : std_logic;
SIGNAL \tx|Selector2~0_combout\ : std_logic;
SIGNAL \tx|state_tx.s2~q\ : std_logic;
SIGNAL \tx|transmission:sig_cntr[0]~0_combout\ : std_logic;
SIGNAL \tx|transmission:sig_cntr[0]~1_combout\ : std_logic;
SIGNAL \tx|Selector9~0_combout\ : std_logic;
SIGNAL \tx|transmission:sig_cntr[2]~q\ : std_logic;
SIGNAL \tx|Equal2~0_combout\ : std_logic;
SIGNAL \tx|Selector5~0_combout\ : std_logic;
SIGNAL \tx|state_tx.s5~q\ : std_logic;
SIGNAL \tx|state_tx.s6~feeder_combout\ : std_logic;
SIGNAL \tx|state_tx.s6~q\ : std_logic;
SIGNAL \tx|Selector7~0_combout\ : std_logic;
SIGNAL \tx|state_tx.s7~q\ : std_logic;
SIGNAL \tx|sig_packet[6]~4_combout\ : std_logic;
SIGNAL \tx|Selector17~0_combout\ : std_logic;
SIGNAL \tx|sig_packet[5]~3_combout\ : std_logic;
SIGNAL \tx|Selector18~0_combout\ : std_logic;
SIGNAL \tx|Selector19~0_combout\ : std_logic;
SIGNAL \tx|sig_packet[2]~5_combout\ : std_logic;
SIGNAL \tx|sig_packet[3]~2_combout\ : std_logic;
SIGNAL \tx|Selector20~0_combout\ : std_logic;
SIGNAL \tx|Selector21~0_combout\ : std_logic;
SIGNAL \tx|sig_packet[1]~1_combout\ : std_logic;
SIGNAL \tx|Selector22~0_combout\ : std_logic;
SIGNAL \tx|sig_packet[0]~0_combout\ : std_logic;
SIGNAL \tx|Selector23~0_combout\ : std_logic;
SIGNAL \tx|sig_bit~0_combout\ : std_logic;
SIGNAL \tx|sig_bit~q\ : std_logic;
SIGNAL \biphase|Selector1~0_combout\ : std_logic;
SIGNAL \biphase|sig_read~q\ : std_logic;
SIGNAL \rx|baud_rate_clk:var_cntr[5]~q\ : std_logic;
SIGNAL \rx|baud_rate_clk:var_cntr[1]~q\ : std_logic;
SIGNAL \rx|Add0~0_combout\ : std_logic;
SIGNAL \rx|baud_rate_clk:var_cntr[0]~q\ : std_logic;
SIGNAL \rx|Add0~1\ : std_logic;
SIGNAL \rx|Add0~2_combout\ : std_logic;
SIGNAL \rx|baud_rate_clk:var_cntr[3]~q\ : std_logic;
SIGNAL \rx|Add0~3\ : std_logic;
SIGNAL \rx|Add0~4_combout\ : std_logic;
SIGNAL \rx|var_cntr~0_combout\ : std_logic;
SIGNAL \rx|baud_rate_clk:var_cntr[2]~q\ : std_logic;
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
SIGNAL \rx|signal_A_q~q\ : std_logic;
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
SIGNAL \rx|signal_A_q_not~q\ : std_logic;
SIGNAL \rx|state_rx~16_combout\ : std_logic;
SIGNAL \rx|Selector13~0_combout\ : std_logic;
SIGNAL \rx|state_rx.s2~q\ : std_logic;
SIGNAL \rx|Selector12~0_combout\ : std_logic;
SIGNAL \detected_bit~input_o\ : std_logic;
SIGNAL \rx|sig_bit[1]~feeder_combout\ : std_logic;
SIGNAL \rx|sig_bit[2]~feeder_combout\ : std_logic;
SIGNAL \rx|sig_bouncer_bit~0_combout\ : std_logic;
SIGNAL \rx|sig_bouncer_bit~q\ : std_logic;
SIGNAL \rx|Selector11~0_combout\ : std_logic;
SIGNAL \rx|Selector11~1_combout\ : std_logic;
SIGNAL \rx|state_rx.s0~q\ : std_logic;
SIGNAL \rx|Selector12~1_combout\ : std_logic;
SIGNAL \rx|Selector12~2_combout\ : std_logic;
SIGNAL \rx|state_rx.s1~q\ : std_logic;
SIGNAL \rx|main_rx:var_clk_cntr[5]~0_combout\ : std_logic;
SIGNAL \rx|Equal3~0_combout\ : std_logic;
SIGNAL \rx|sig_data_bit~0_combout\ : std_logic;
SIGNAL \rx|sig_data_bit~1_combout\ : std_logic;
SIGNAL \rx|sig_data_bit~q\ : std_logic;
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
SIGNAL \rx|Selector15~0_combout\ : std_logic;
SIGNAL \rx|state_rx.s4~q\ : std_logic;
SIGNAL \rx|state_rx.s5~q\ : std_logic;
SIGNAL \rx|Selector0~0_combout\ : std_logic;
SIGNAL \rx|sig_wr_ram~q\ : std_logic;
SIGNAL \biphase|sig_cut_rd~feeder_combout\ : std_logic;
SIGNAL \biphase|sig_cut_rd~q\ : std_logic;
SIGNAL \biphase|sig_cut_rd_not~q\ : std_logic;
SIGNAL \biphase|rd~combout\ : std_logic;
SIGNAL \memory|altsyncram_component|auto_generated|rden_b_store~q\ : std_logic;
SIGNAL \memory|altsyncram_component|auto_generated|ram_block1a0~0_combout\ : std_logic;
SIGNAL \rx|sig_detected_byte[7]~0_combout\ : std_logic;
SIGNAL \rx|sig_detected_byte[6]~feeder_combout\ : std_logic;
SIGNAL \rx|sig_detected_byte[3]~feeder_combout\ : std_logic;
SIGNAL \rx|sig_detected_byte[2]~feeder_combout\ : std_logic;
SIGNAL \rx|sig_detected_byte[0]~feeder_combout\ : std_logic;
SIGNAL \rx|detected_byte[7]~0_combout\ : std_logic;
SIGNAL \rx|sig_cnt_address[0]~12_combout\ : std_logic;
SIGNAL \rx|Selector10~0_combout\ : std_logic;
SIGNAL \rx|main_rx:var_trns_cntr[18]~q\ : std_logic;
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
SIGNAL \rx|main_rx:var_trns_cntr[12]~q\ : std_logic;
SIGNAL \rx|Add1~25\ : std_logic;
SIGNAL \rx|Add1~26_combout\ : std_logic;
SIGNAL \rx|main_rx:var_trns_cntr[13]~q\ : std_logic;
SIGNAL \rx|Add1~27\ : std_logic;
SIGNAL \rx|Add1~28_combout\ : std_logic;
SIGNAL \rx|main_rx:var_trns_cntr[14]~q\ : std_logic;
SIGNAL \rx|Add1~29\ : std_logic;
SIGNAL \rx|Add1~30_combout\ : std_logic;
SIGNAL \rx|main_rx:var_trns_cntr[15]~q\ : std_logic;
SIGNAL \rx|Add1~31\ : std_logic;
SIGNAL \rx|Add1~32_combout\ : std_logic;
SIGNAL \rx|main_rx:var_trns_cntr[16]~q\ : std_logic;
SIGNAL \rx|Add1~33\ : std_logic;
SIGNAL \rx|Add1~34_combout\ : std_logic;
SIGNAL \rx|main_rx:var_trns_cntr[17]~q\ : std_logic;
SIGNAL \rx|Add1~35\ : std_logic;
SIGNAL \rx|Add1~36_combout\ : std_logic;
SIGNAL \rx|sig_ram_address[0]~6_combout\ : std_logic;
SIGNAL \rx|sig_ram_address[0]~7_combout\ : std_logic;
SIGNAL \rx|sig_ram_address[0]~2_combout\ : std_logic;
SIGNAL \rx|sig_ram_address[0]~1_combout\ : std_logic;
SIGNAL \rx|sig_ram_address[0]~3_combout\ : std_logic;
SIGNAL \rx|sig_ram_address[0]~4_combout\ : std_logic;
SIGNAL \rx|sig_ram_address[0]~5_combout\ : std_logic;
SIGNAL \rx|sig_ram_address[3]~0_combout\ : std_logic;
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
SIGNAL \biphase|sig_toggle~0_combout\ : std_logic;
SIGNAL \biphase|sig_toggle~1_combout\ : std_logic;
SIGNAL \biphase|sig_toggle~q\ : std_logic;
SIGNAL \rx|Selector5~0_combout\ : std_logic;
SIGNAL \biphase|sig_read_address[0]~feeder_combout\ : std_logic;
SIGNAL \biphase|sig_read_address[0]~0_combout\ : std_logic;
SIGNAL \biphase|sig_read_address[1]~feeder_combout\ : std_logic;
SIGNAL \biphase|sig_read_address[3]~feeder_combout\ : std_logic;
SIGNAL \biphase|sig_read_address[4]~feeder_combout\ : std_logic;
SIGNAL \biphase|sig_read_address[5]~feeder_combout\ : std_logic;
SIGNAL \rx|detected_byte[1]~feeder_combout\ : std_logic;
SIGNAL \rx|detected_byte[3]~feeder_combout\ : std_logic;
SIGNAL \rx|detected_byte[4]~feeder_combout\ : std_logic;
SIGNAL \rx|detected_byte[7]~feeder_combout\ : std_logic;
SIGNAL \biphase|sig_shift_data~7_combout\ : std_logic;
SIGNAL \biphase|sig_shift_data~6_combout\ : std_logic;
SIGNAL \biphase|sig_shift_data~5_combout\ : std_logic;
SIGNAL \biphase|sig_shift_data~4_combout\ : std_logic;
SIGNAL \biphase|sig_shift_data~3_combout\ : std_logic;
SIGNAL \biphase|sig_shift_data~2_combout\ : std_logic;
SIGNAL \biphase|sig_shift_data~1_combout\ : std_logic;
SIGNAL \biphase|sig_shift_data~0_combout\ : std_logic;
SIGNAL \biphase|sig_BiPhase_tx_out~0_combout\ : std_logic;
SIGNAL \biphase|sig_BiPhase_tx_out~q\ : std_logic;
SIGNAL \tx|sig_packet\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \biphase|sig_shift_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \memory|altsyncram_component|auto_generated|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \rx|sig_cnt_address\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \biphase|sig_main\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \rx|sig_ram_address\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \biphase|sig_read_address_cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rx|detected_byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \biphase|sig_read_address\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \rx|sig_detected_byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \rx|sig_bit\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \tx|ALT_INV_state_tx.s7~q\ : std_logic;
SIGNAL \tx|ALT_INV_sig_bit~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_resetn <= resetn;
ww_sysclk <= sysclk;
ww_detected_bit <= detected_bit;
uart_tx_triger <= ww_uart_tx_triger;
BiPhase_tx_out <= ww_BiPhase_tx_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\rx|detected_byte\(7) & \rx|detected_byte\(6) & \rx|detected_byte\(5) & \rx|detected_byte\(4) & \rx|detected_byte\(3) & \rx|detected_byte\(2) & \rx|detected_byte\(1) & \rx|detected_byte\(0));

\memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\rx|sig_ram_address\(5) & \rx|sig_ram_address\(4) & \rx|sig_ram_address\(3) & \rx|sig_ram_address\(2) & \rx|sig_ram_address\(1) & \rx|sig_ram_address\(0));

\memory|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\biphase|sig_read_address\(5) & \biphase|sig_read_address\(4) & \biphase|sig_read_address\(3) & \biphase|sig_read_address\(2) & \biphase|sig_read_address\(1) & 
\biphase|sig_read_address\(0));

\memory|altsyncram_component|auto_generated|q_b\(0) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\memory|altsyncram_component|auto_generated|q_b\(1) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\memory|altsyncram_component|auto_generated|q_b\(2) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\memory|altsyncram_component|auto_generated|q_b\(3) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\memory|altsyncram_component|auto_generated|q_b\(4) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\memory|altsyncram_component|auto_generated|q_b\(5) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\memory|altsyncram_component|auto_generated|q_b\(6) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\memory|altsyncram_component|auto_generated|q_b\(7) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\sysclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sysclk~input_o\);
\tx|ALT_INV_state_tx.s7~q\ <= NOT \tx|state_tx.s7~q\;
\tx|ALT_INV_sig_bit~q\ <= NOT \tx|sig_bit~q\;
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

-- Location: IOOBUF_X29_Y0_N9
\uart_tx_triger~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tx|ALT_INV_sig_bit~q\,
	devoe => ww_devoe,
	o => \uart_tx_triger~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\BiPhase_tx_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \biphase|sig_BiPhase_tx_out~q\,
	devoe => ww_devoe,
	o => \BiPhase_tx_out~output_o\);

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

-- Location: FF_X35_Y1_N17
\tx|baud_clock:cnt_baud[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Add0~16_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|baud_clock:cnt_baud[8]~q\);

-- Location: LCCOMB_X35_Y1_N0
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

-- Location: LCCOMB_X35_Y1_N20
\tx|cnt_baud~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|cnt_baud~0_combout\ = (\tx|Add0~0_combout\ & !\tx|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx|Add0~0_combout\,
	datad => \tx|Equal0~2_combout\,
	combout => \tx|cnt_baud~0_combout\);

-- Location: FF_X35_Y1_N21
\tx|baud_clock:cnt_baud[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|cnt_baud~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|baud_clock:cnt_baud[0]~q\);

-- Location: LCCOMB_X35_Y1_N2
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

-- Location: LCCOMB_X35_Y1_N22
\tx|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Equal0~1_combout\ = (!\tx|Add0~8_combout\ & (!\tx|Add0~12_combout\ & (\tx|Add0~14_combout\ & !\tx|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|Add0~8_combout\,
	datab => \tx|Add0~12_combout\,
	datac => \tx|Add0~14_combout\,
	datad => \tx|Add0~10_combout\,
	combout => \tx|Equal0~1_combout\);

-- Location: LCCOMB_X36_Y1_N22
\tx|cnt_baud~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|cnt_baud~1_combout\ = (\tx|Add0~16_combout\) # (!\tx|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|Equal0~0_combout\,
	datac => \tx|Add0~16_combout\,
	combout => \tx|cnt_baud~1_combout\);

-- Location: LCCOMB_X35_Y1_N30
\tx|cnt_baud~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|cnt_baud~2_combout\ = (\tx|Add0~2_combout\ & (((\tx|cnt_baud~1_combout\) # (!\tx|Equal0~1_combout\)) # (!\tx|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|Add0~2_combout\,
	datab => \tx|Add0~18_combout\,
	datac => \tx|Equal0~1_combout\,
	datad => \tx|cnt_baud~1_combout\,
	combout => \tx|cnt_baud~2_combout\);

-- Location: FF_X35_Y1_N31
\tx|baud_clock:cnt_baud[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|cnt_baud~2_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|baud_clock:cnt_baud[1]~q\);

-- Location: LCCOMB_X35_Y1_N4
\tx|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Add0~4_combout\ = (\tx|baud_clock:cnt_baud[2]~q\ & (\tx|Add0~3\ $ (GND))) # (!\tx|baud_clock:cnt_baud[2]~q\ & (!\tx|Add0~3\ & VCC))
-- \tx|Add0~5\ = CARRY((\tx|baud_clock:cnt_baud[2]~q\ & !\tx|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx|baud_clock:cnt_baud[2]~q\,
	datad => VCC,
	cin => \tx|Add0~3\,
	combout => \tx|Add0~4_combout\,
	cout => \tx|Add0~5\);

-- Location: FF_X35_Y1_N5
\tx|baud_clock:cnt_baud[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Add0~4_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|baud_clock:cnt_baud[2]~q\);

-- Location: LCCOMB_X35_Y1_N6
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

-- Location: LCCOMB_X35_Y1_N8
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

-- Location: FF_X35_Y1_N9
\tx|baud_clock:cnt_baud[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Add0~8_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|baud_clock:cnt_baud[4]~q\);

-- Location: LCCOMB_X35_Y1_N10
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

-- Location: FF_X35_Y1_N11
\tx|baud_clock:cnt_baud[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Add0~10_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|baud_clock:cnt_baud[5]~q\);

-- Location: LCCOMB_X35_Y1_N12
\tx|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Add0~12_combout\ = (\tx|baud_clock:cnt_baud[6]~q\ & (\tx|Add0~11\ $ (GND))) # (!\tx|baud_clock:cnt_baud[6]~q\ & (!\tx|Add0~11\ & VCC))
-- \tx|Add0~13\ = CARRY((\tx|baud_clock:cnt_baud[6]~q\ & !\tx|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx|baud_clock:cnt_baud[6]~q\,
	datad => VCC,
	cin => \tx|Add0~11\,
	combout => \tx|Add0~12_combout\,
	cout => \tx|Add0~13\);

-- Location: FF_X35_Y1_N13
\tx|baud_clock:cnt_baud[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Add0~12_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|baud_clock:cnt_baud[6]~q\);

-- Location: LCCOMB_X35_Y1_N14
\tx|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Add0~14_combout\ = (\tx|baud_clock:cnt_baud[7]~q\ & (!\tx|Add0~13\)) # (!\tx|baud_clock:cnt_baud[7]~q\ & ((\tx|Add0~13\) # (GND)))
-- \tx|Add0~15\ = CARRY((!\tx|Add0~13\) # (!\tx|baud_clock:cnt_baud[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx|baud_clock:cnt_baud[7]~q\,
	datad => VCC,
	cin => \tx|Add0~13\,
	combout => \tx|Add0~14_combout\,
	cout => \tx|Add0~15\);

-- Location: LCCOMB_X35_Y1_N28
\tx|cnt_baud~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|cnt_baud~4_combout\ = (\tx|Add0~14_combout\ & !\tx|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx|Add0~14_combout\,
	datad => \tx|Equal0~2_combout\,
	combout => \tx|cnt_baud~4_combout\);

-- Location: FF_X35_Y1_N29
\tx|baud_clock:cnt_baud[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|cnt_baud~4_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|baud_clock:cnt_baud[7]~q\);

-- Location: LCCOMB_X35_Y1_N16
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

-- Location: LCCOMB_X36_Y1_N18
\tx|cnt_baud~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|cnt_baud~5_combout\ = (\tx|Add0~18_combout\ & (((\tx|Add0~16_combout\) # (!\tx|Equal0~1_combout\)) # (!\tx|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|Equal0~0_combout\,
	datab => \tx|Add0~18_combout\,
	datac => \tx|Add0~16_combout\,
	datad => \tx|Equal0~1_combout\,
	combout => \tx|cnt_baud~5_combout\);

-- Location: FF_X36_Y1_N19
\tx|baud_clock:cnt_baud[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|cnt_baud~5_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|baud_clock:cnt_baud[9]~q\);

-- Location: LCCOMB_X35_Y1_N18
\tx|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Add0~18_combout\ = \tx|Add0~17\ $ (\tx|baud_clock:cnt_baud[9]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \tx|baud_clock:cnt_baud[9]~q\,
	cin => \tx|Add0~17\,
	combout => \tx|Add0~18_combout\);

-- Location: LCCOMB_X35_Y1_N24
\tx|cnt_baud~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|cnt_baud~3_combout\ = (\tx|Add0~6_combout\ & (((\tx|cnt_baud~1_combout\) # (!\tx|Equal0~1_combout\)) # (!\tx|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|Add0~6_combout\,
	datab => \tx|Add0~18_combout\,
	datac => \tx|Equal0~1_combout\,
	datad => \tx|cnt_baud~1_combout\,
	combout => \tx|cnt_baud~3_combout\);

-- Location: FF_X35_Y1_N25
\tx|baud_clock:cnt_baud[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|cnt_baud~3_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|baud_clock:cnt_baud[3]~q\);

-- Location: LCCOMB_X35_Y1_N26
\tx|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Equal0~0_combout\ = (\tx|Add0~6_combout\ & (\tx|Add0~2_combout\ & (!\tx|Add0~4_combout\ & \tx|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|Add0~6_combout\,
	datab => \tx|Add0~2_combout\,
	datac => \tx|Add0~4_combout\,
	datad => \tx|Add0~0_combout\,
	combout => \tx|Equal0~0_combout\);

-- Location: LCCOMB_X36_Y1_N4
\tx|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Equal0~2_combout\ = (\tx|Equal0~0_combout\ & (\tx|Add0~18_combout\ & (!\tx|Add0~16_combout\ & \tx|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|Equal0~0_combout\,
	datab => \tx|Add0~18_combout\,
	datac => \tx|Add0~16_combout\,
	datad => \tx|Equal0~1_combout\,
	combout => \tx|Equal0~2_combout\);

-- Location: LCCOMB_X36_Y1_N6
\tx|sig_baud_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|sig_baud_clk~0_combout\ = \tx|Equal0~2_combout\ $ (\tx|sig_baud_clk~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx|Equal0~2_combout\,
	datac => \tx|sig_baud_clk~q\,
	combout => \tx|sig_baud_clk~0_combout\);

-- Location: FF_X36_Y1_N7
\tx|sig_baud_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|sig_baud_clk~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_baud_clk~q\);

-- Location: LCCOMB_X36_Y1_N8
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

-- Location: FF_X36_Y1_N9
\tx|signal_A_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|signal_A_q~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|signal_A_q~q\);

-- Location: FF_X36_Y1_N11
\tx|signal_A_q_not\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \tx|signal_A_q~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|signal_A_q_not~q\);

-- Location: LCCOMB_X36_Y1_N10
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

-- Location: LCCOMB_X31_Y4_N10
\biphase|state_bi.s1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|state_bi.s1~0_combout\ = !\biphase|state_bi.s0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \biphase|state_bi.s0~q\,
	combout => \biphase|state_bi.s1~0_combout\);

-- Location: LCCOMB_X31_Y1_N0
\biphase|sig_main[0]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_main[0]~39_combout\ = !\biphase|sig_main\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \biphase|sig_main\(0),
	combout => \biphase|sig_main[0]~39_combout\);

-- Location: FF_X31_Y1_N1
\biphase|sig_main[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_main[0]~39_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_main\(0));

-- Location: LCCOMB_X31_Y1_N2
\biphase|sig_main[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_main[1]~13_combout\ = (\biphase|sig_main\(1) & (\biphase|sig_main\(0) $ (VCC))) # (!\biphase|sig_main\(1) & (\biphase|sig_main\(0) & VCC))
-- \biphase|sig_main[1]~14\ = CARRY((\biphase|sig_main\(1) & \biphase|sig_main\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \biphase|sig_main\(1),
	datab => \biphase|sig_main\(0),
	datad => VCC,
	combout => \biphase|sig_main[1]~13_combout\,
	cout => \biphase|sig_main[1]~14\);

-- Location: FF_X31_Y1_N3
\biphase|sig_main[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_main[1]~13_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_main\(1));

-- Location: LCCOMB_X31_Y1_N4
\biphase|sig_main[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_main[2]~15_combout\ = (\biphase|sig_main\(2) & (!\biphase|sig_main[1]~14\)) # (!\biphase|sig_main\(2) & ((\biphase|sig_main[1]~14\) # (GND)))
-- \biphase|sig_main[2]~16\ = CARRY((!\biphase|sig_main[1]~14\) # (!\biphase|sig_main\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \biphase|sig_main\(2),
	datad => VCC,
	cin => \biphase|sig_main[1]~14\,
	combout => \biphase|sig_main[2]~15_combout\,
	cout => \biphase|sig_main[2]~16\);

-- Location: FF_X31_Y1_N5
\biphase|sig_main[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_main[2]~15_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_main\(2));

-- Location: LCCOMB_X31_Y1_N6
\biphase|sig_main[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_main[3]~17_combout\ = (\biphase|sig_main\(3) & (\biphase|sig_main[2]~16\ $ (GND))) # (!\biphase|sig_main\(3) & (!\biphase|sig_main[2]~16\ & VCC))
-- \biphase|sig_main[3]~18\ = CARRY((\biphase|sig_main\(3) & !\biphase|sig_main[2]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \biphase|sig_main\(3),
	datad => VCC,
	cin => \biphase|sig_main[2]~16\,
	combout => \biphase|sig_main[3]~17_combout\,
	cout => \biphase|sig_main[3]~18\);

-- Location: FF_X31_Y1_N7
\biphase|sig_main[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_main[3]~17_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_main\(3));

-- Location: LCCOMB_X31_Y1_N8
\biphase|sig_main[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_main[4]~19_combout\ = (\biphase|sig_main\(4) & (!\biphase|sig_main[3]~18\)) # (!\biphase|sig_main\(4) & ((\biphase|sig_main[3]~18\) # (GND)))
-- \biphase|sig_main[4]~20\ = CARRY((!\biphase|sig_main[3]~18\) # (!\biphase|sig_main\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \biphase|sig_main\(4),
	datad => VCC,
	cin => \biphase|sig_main[3]~18\,
	combout => \biphase|sig_main[4]~19_combout\,
	cout => \biphase|sig_main[4]~20\);

-- Location: FF_X31_Y1_N9
\biphase|sig_main[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_main[4]~19_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_main\(4));

-- Location: LCCOMB_X31_Y1_N10
\biphase|sig_main[5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_main[5]~21_combout\ = (\biphase|sig_main\(5) & (\biphase|sig_main[4]~20\ $ (GND))) # (!\biphase|sig_main\(5) & (!\biphase|sig_main[4]~20\ & VCC))
-- \biphase|sig_main[5]~22\ = CARRY((\biphase|sig_main\(5) & !\biphase|sig_main[4]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \biphase|sig_main\(5),
	datad => VCC,
	cin => \biphase|sig_main[4]~20\,
	combout => \biphase|sig_main[5]~21_combout\,
	cout => \biphase|sig_main[5]~22\);

-- Location: FF_X31_Y1_N11
\biphase|sig_main[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_main[5]~21_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_main\(5));

-- Location: LCCOMB_X31_Y1_N12
\biphase|sig_main[6]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_main[6]~23_combout\ = (\biphase|sig_main\(6) & (!\biphase|sig_main[5]~22\)) # (!\biphase|sig_main\(6) & ((\biphase|sig_main[5]~22\) # (GND)))
-- \biphase|sig_main[6]~24\ = CARRY((!\biphase|sig_main[5]~22\) # (!\biphase|sig_main\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \biphase|sig_main\(6),
	datad => VCC,
	cin => \biphase|sig_main[5]~22\,
	combout => \biphase|sig_main[6]~23_combout\,
	cout => \biphase|sig_main[6]~24\);

-- Location: FF_X31_Y1_N13
\biphase|sig_main[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_main[6]~23_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_main\(6));

-- Location: LCCOMB_X31_Y1_N14
\biphase|sig_main[7]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_main[7]~25_combout\ = (\biphase|sig_main\(7) & (\biphase|sig_main[6]~24\ $ (GND))) # (!\biphase|sig_main\(7) & (!\biphase|sig_main[6]~24\ & VCC))
-- \biphase|sig_main[7]~26\ = CARRY((\biphase|sig_main\(7) & !\biphase|sig_main[6]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \biphase|sig_main\(7),
	datad => VCC,
	cin => \biphase|sig_main[6]~24\,
	combout => \biphase|sig_main[7]~25_combout\,
	cout => \biphase|sig_main[7]~26\);

-- Location: FF_X31_Y1_N15
\biphase|sig_main[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_main[7]~25_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_main\(7));

-- Location: LCCOMB_X31_Y1_N16
\biphase|sig_main[8]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_main[8]~27_combout\ = (\biphase|sig_main\(8) & (!\biphase|sig_main[7]~26\)) # (!\biphase|sig_main\(8) & ((\biphase|sig_main[7]~26\) # (GND)))
-- \biphase|sig_main[8]~28\ = CARRY((!\biphase|sig_main[7]~26\) # (!\biphase|sig_main\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \biphase|sig_main\(8),
	datad => VCC,
	cin => \biphase|sig_main[7]~26\,
	combout => \biphase|sig_main[8]~27_combout\,
	cout => \biphase|sig_main[8]~28\);

-- Location: FF_X31_Y1_N17
\biphase|sig_main[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_main[8]~27_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_main\(8));

-- Location: LCCOMB_X31_Y1_N18
\biphase|sig_main[9]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_main[9]~29_combout\ = (\biphase|sig_main\(9) & (\biphase|sig_main[8]~28\ $ (GND))) # (!\biphase|sig_main\(9) & (!\biphase|sig_main[8]~28\ & VCC))
-- \biphase|sig_main[9]~30\ = CARRY((\biphase|sig_main\(9) & !\biphase|sig_main[8]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \biphase|sig_main\(9),
	datad => VCC,
	cin => \biphase|sig_main[8]~28\,
	combout => \biphase|sig_main[9]~29_combout\,
	cout => \biphase|sig_main[9]~30\);

-- Location: FF_X31_Y1_N19
\biphase|sig_main[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_main[9]~29_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_main\(9));

-- Location: LCCOMB_X31_Y1_N20
\biphase|sig_main[10]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_main[10]~31_combout\ = (\biphase|sig_main\(10) & (!\biphase|sig_main[9]~30\)) # (!\biphase|sig_main\(10) & ((\biphase|sig_main[9]~30\) # (GND)))
-- \biphase|sig_main[10]~32\ = CARRY((!\biphase|sig_main[9]~30\) # (!\biphase|sig_main\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \biphase|sig_main\(10),
	datad => VCC,
	cin => \biphase|sig_main[9]~30\,
	combout => \biphase|sig_main[10]~31_combout\,
	cout => \biphase|sig_main[10]~32\);

-- Location: FF_X31_Y1_N21
\biphase|sig_main[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_main[10]~31_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_main\(10));

-- Location: LCCOMB_X31_Y1_N22
\biphase|sig_main[11]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_main[11]~33_combout\ = (\biphase|sig_main\(11) & (\biphase|sig_main[10]~32\ $ (GND))) # (!\biphase|sig_main\(11) & (!\biphase|sig_main[10]~32\ & VCC))
-- \biphase|sig_main[11]~34\ = CARRY((\biphase|sig_main\(11) & !\biphase|sig_main[10]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \biphase|sig_main\(11),
	datad => VCC,
	cin => \biphase|sig_main[10]~32\,
	combout => \biphase|sig_main[11]~33_combout\,
	cout => \biphase|sig_main[11]~34\);

-- Location: FF_X31_Y1_N23
\biphase|sig_main[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_main[11]~33_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_main\(11));

-- Location: LCCOMB_X31_Y1_N24
\biphase|sig_main[12]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_main[12]~35_combout\ = (\biphase|sig_main\(12) & (!\biphase|sig_main[11]~34\)) # (!\biphase|sig_main\(12) & ((\biphase|sig_main[11]~34\) # (GND)))
-- \biphase|sig_main[12]~36\ = CARRY((!\biphase|sig_main[11]~34\) # (!\biphase|sig_main\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \biphase|sig_main\(12),
	datad => VCC,
	cin => \biphase|sig_main[11]~34\,
	combout => \biphase|sig_main[12]~35_combout\,
	cout => \biphase|sig_main[12]~36\);

-- Location: FF_X31_Y1_N25
\biphase|sig_main[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_main[12]~35_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_main\(12));

-- Location: LCCOMB_X31_Y1_N26
\biphase|sig_main[13]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_main[13]~37_combout\ = \biphase|sig_main\(13) $ (!\biphase|sig_main[12]~36\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \biphase|sig_main\(13),
	cin => \biphase|sig_main[12]~36\,
	combout => \biphase|sig_main[13]~37_combout\);

-- Location: FF_X31_Y1_N27
\biphase|sig_main[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_main[13]~37_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_main\(13));

-- Location: LCCOMB_X32_Y4_N4
\biphase|sig_cut~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_cut~feeder_combout\ = \biphase|sig_main\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \biphase|sig_main\(13),
	combout => \biphase|sig_cut~feeder_combout\);

-- Location: FF_X32_Y4_N5
\biphase|sig_cut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_cut~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_cut~q\);

-- Location: LCCOMB_X32_Y4_N2
\biphase|sig_cut_not~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_cut_not~feeder_combout\ = \biphase|sig_cut~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \biphase|sig_cut~q\,
	combout => \biphase|sig_cut_not~feeder_combout\);

-- Location: FF_X32_Y4_N3
\biphase|sig_cut_not\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_cut_not~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_cut_not~q\);

-- Location: LCCOMB_X32_Y4_N28
\biphase|sig_main_rising_edge\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_main_rising_edge~combout\ = (\biphase|sig_cut~q\ & !\biphase|sig_cut_not~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \biphase|sig_cut~q\,
	datad => \biphase|sig_cut_not~q\,
	combout => \biphase|sig_main_rising_edge~combout\);

-- Location: FF_X31_Y4_N11
\biphase|state_bi.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|state_bi.s1~0_combout\,
	clrn => \resetn~input_o\,
	ena => \biphase|sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|state_bi.s1~q\);

-- Location: LCCOMB_X31_Y4_N12
\biphase|state_bi.s2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|state_bi.s2~feeder_combout\ = \biphase|state_bi.s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \biphase|state_bi.s1~q\,
	combout => \biphase|state_bi.s2~feeder_combout\);

-- Location: FF_X31_Y4_N13
\biphase|state_bi.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|state_bi.s2~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \biphase|sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|state_bi.s2~q\);

-- Location: LCCOMB_X31_Y4_N2
\biphase|state_bi.s3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|state_bi.s3~feeder_combout\ = \biphase|state_bi.s2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \biphase|state_bi.s2~q\,
	combout => \biphase|state_bi.s3~feeder_combout\);

-- Location: FF_X31_Y4_N3
\biphase|state_bi.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|state_bi.s3~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \biphase|sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|state_bi.s3~q\);

-- Location: LCCOMB_X31_Y4_N24
\biphase|state_bi.s4~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|state_bi.s4~feeder_combout\ = \biphase|state_bi.s3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \biphase|state_bi.s3~q\,
	combout => \biphase|state_bi.s4~feeder_combout\);

-- Location: FF_X31_Y4_N25
\biphase|state_bi.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|state_bi.s4~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \biphase|sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|state_bi.s4~q\);

-- Location: LCCOMB_X31_Y4_N6
\biphase|state_bi.s5~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|state_bi.s5~feeder_combout\ = \biphase|state_bi.s4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \biphase|state_bi.s4~q\,
	combout => \biphase|state_bi.s5~feeder_combout\);

-- Location: FF_X31_Y4_N7
\biphase|state_bi.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|state_bi.s5~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \biphase|sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|state_bi.s5~q\);

-- Location: LCCOMB_X31_Y4_N28
\biphase|state_bi.s6~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|state_bi.s6~feeder_combout\ = \biphase|state_bi.s5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \biphase|state_bi.s5~q\,
	combout => \biphase|state_bi.s6~feeder_combout\);

-- Location: FF_X31_Y4_N29
\biphase|state_bi.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|state_bi.s6~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \biphase|sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|state_bi.s6~q\);

-- Location: LCCOMB_X31_Y4_N0
\biphase|state_bi.s7~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|state_bi.s7~feeder_combout\ = \biphase|state_bi.s6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \biphase|state_bi.s6~q\,
	combout => \biphase|state_bi.s7~feeder_combout\);

-- Location: FF_X31_Y4_N1
\biphase|state_bi.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|state_bi.s7~feeder_combout\,
	clrn => \resetn~input_o\,
	ena => \biphase|sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|state_bi.s7~q\);

-- Location: LCCOMB_X31_Y4_N22
\biphase|state_bi.s0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|state_bi.s0~0_combout\ = !\biphase|state_bi.s7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \biphase|state_bi.s7~q\,
	combout => \biphase|state_bi.s0~0_combout\);

-- Location: FF_X31_Y4_N23
\biphase|state_bi.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|state_bi.s0~0_combout\,
	clrn => \resetn~input_o\,
	ena => \biphase|sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|state_bi.s0~q\);

-- Location: LCCOMB_X32_Y4_N26
\biphase|sig_inc~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_inc~0_combout\ = (!\biphase|sig_cut_not~q\ & (\resetn~input_o\ & \biphase|sig_cut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \biphase|sig_cut_not~q\,
	datac => \resetn~input_o\,
	datad => \biphase|sig_cut~q\,
	combout => \biphase|sig_inc~0_combout\);

-- Location: LCCOMB_X31_Y4_N26
\biphase|sig_inc~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_inc~1_combout\ = (\biphase|sig_inc~0_combout\ & ((\biphase|state_bi.s7~q\) # ((\biphase|state_bi.s0~q\ & \biphase|sig_inc~q\)))) # (!\biphase|sig_inc~0_combout\ & (((\biphase|sig_inc~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \biphase|state_bi.s0~q\,
	datab => \biphase|state_bi.s7~q\,
	datac => \biphase|sig_inc~q\,
	datad => \biphase|sig_inc~0_combout\,
	combout => \biphase|sig_inc~1_combout\);

-- Location: FF_X31_Y4_N27
\biphase|sig_inc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_inc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_inc~q\);

-- Location: FF_X35_Y4_N31
\biphase|state_mini.s4a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \biphase|state_mini.s3a~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|state_mini.s4a~q\);

-- Location: FF_X35_Y4_N15
\biphase|state_mini.s5a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \biphase|state_mini.s4a~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|state_mini.s5a~q\);

-- Location: LCCOMB_X35_Y4_N12
\biphase|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|Selector2~0_combout\ = (!\biphase|state_mini.s5a~q\ & ((\biphase|sig_inc~q\) # (\biphase|state_mini.s0a~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \biphase|sig_inc~q\,
	datac => \biphase|state_mini.s0a~q\,
	datad => \biphase|state_mini.s5a~q\,
	combout => \biphase|Selector2~0_combout\);

-- Location: FF_X35_Y4_N13
\biphase|state_mini.s0a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|Selector2~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|state_mini.s0a~q\);

-- Location: LCCOMB_X35_Y4_N26
\biphase|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|Selector3~0_combout\ = (\biphase|sig_inc~q\ & ((\biphase|state_mini.s1a~q\) # (!\biphase|state_mini.s0a~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \biphase|sig_inc~q\,
	datac => \biphase|state_mini.s1a~q\,
	datad => \biphase|state_mini.s0a~q\,
	combout => \biphase|Selector3~0_combout\);

-- Location: FF_X35_Y4_N27
\biphase|state_mini.s1a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|Selector3~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|state_mini.s1a~q\);

-- Location: LCCOMB_X35_Y4_N0
\biphase|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|Selector4~0_combout\ = (!\biphase|sig_inc~q\ & \biphase|state_mini.s1a~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \biphase|sig_inc~q\,
	datad => \biphase|state_mini.s1a~q\,
	combout => \biphase|Selector4~0_combout\);

-- Location: FF_X35_Y4_N1
\biphase|state_mini.s2a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|Selector4~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|state_mini.s2a~q\);

-- Location: LCCOMB_X35_Y4_N8
\biphase|state_mini.s3a~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|state_mini.s3a~feeder_combout\ = \biphase|state_mini.s2a~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \biphase|state_mini.s2a~q\,
	combout => \biphase|state_mini.s3a~feeder_combout\);

-- Location: FF_X35_Y4_N9
\biphase|state_mini.s3a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|state_mini.s3a~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|state_mini.s3a~q\);

-- Location: LCCOMB_X35_Y4_N4
\biphase|sig_read_address_cnt[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_read_address_cnt[0]~4_combout\ = \biphase|state_mini.s3a~q\ $ (\biphase|sig_read_address_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \biphase|state_mini.s3a~q\,
	datac => \biphase|sig_read_address_cnt\(0),
	combout => \biphase|sig_read_address_cnt[0]~4_combout\);

-- Location: FF_X35_Y4_N5
\biphase|sig_read_address_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_read_address_cnt[0]~4_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_read_address_cnt\(0));

-- Location: LCCOMB_X35_Y4_N18
\biphase|sig_read_address_cnt[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_read_address_cnt[1]~5_combout\ = (\biphase|sig_read_address_cnt\(1) & (\biphase|sig_read_address_cnt\(0) $ (VCC))) # (!\biphase|sig_read_address_cnt\(1) & (\biphase|sig_read_address_cnt\(0) & VCC))
-- \biphase|sig_read_address_cnt[1]~6\ = CARRY((\biphase|sig_read_address_cnt\(1) & \biphase|sig_read_address_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \biphase|sig_read_address_cnt\(1),
	datab => \biphase|sig_read_address_cnt\(0),
	datad => VCC,
	combout => \biphase|sig_read_address_cnt[1]~5_combout\,
	cout => \biphase|sig_read_address_cnt[1]~6\);

-- Location: FF_X35_Y4_N19
\biphase|sig_read_address_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_read_address_cnt[1]~5_combout\,
	clrn => \resetn~input_o\,
	ena => \biphase|state_mini.s3a~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_read_address_cnt\(1));

-- Location: LCCOMB_X35_Y4_N20
\biphase|sig_read_address_cnt[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_read_address_cnt[2]~7_combout\ = (\biphase|sig_read_address_cnt\(2) & (!\biphase|sig_read_address_cnt[1]~6\)) # (!\biphase|sig_read_address_cnt\(2) & ((\biphase|sig_read_address_cnt[1]~6\) # (GND)))
-- \biphase|sig_read_address_cnt[2]~8\ = CARRY((!\biphase|sig_read_address_cnt[1]~6\) # (!\biphase|sig_read_address_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \biphase|sig_read_address_cnt\(2),
	datad => VCC,
	cin => \biphase|sig_read_address_cnt[1]~6\,
	combout => \biphase|sig_read_address_cnt[2]~7_combout\,
	cout => \biphase|sig_read_address_cnt[2]~8\);

-- Location: FF_X35_Y4_N21
\biphase|sig_read_address_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_read_address_cnt[2]~7_combout\,
	clrn => \resetn~input_o\,
	ena => \biphase|state_mini.s3a~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_read_address_cnt\(2));

-- Location: LCCOMB_X35_Y4_N22
\biphase|sig_read_address_cnt[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_read_address_cnt[3]~9_combout\ = (\biphase|sig_read_address_cnt\(3) & (\biphase|sig_read_address_cnt[2]~8\ $ (GND))) # (!\biphase|sig_read_address_cnt\(3) & (!\biphase|sig_read_address_cnt[2]~8\ & VCC))
-- \biphase|sig_read_address_cnt[3]~10\ = CARRY((\biphase|sig_read_address_cnt\(3) & !\biphase|sig_read_address_cnt[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \biphase|sig_read_address_cnt\(3),
	datad => VCC,
	cin => \biphase|sig_read_address_cnt[2]~8\,
	combout => \biphase|sig_read_address_cnt[3]~9_combout\,
	cout => \biphase|sig_read_address_cnt[3]~10\);

-- Location: FF_X35_Y4_N23
\biphase|sig_read_address_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_read_address_cnt[3]~9_combout\,
	clrn => \resetn~input_o\,
	ena => \biphase|state_mini.s3a~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_read_address_cnt\(3));

-- Location: LCCOMB_X35_Y4_N24
\biphase|sig_read_address_cnt[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_read_address_cnt[4]~11_combout\ = \biphase|sig_read_address_cnt[3]~10\ $ (\biphase|sig_read_address_cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \biphase|sig_read_address_cnt\(4),
	cin => \biphase|sig_read_address_cnt[3]~10\,
	combout => \biphase|sig_read_address_cnt[4]~11_combout\);

-- Location: FF_X35_Y4_N25
\biphase|sig_read_address_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_read_address_cnt[4]~11_combout\,
	clrn => \resetn~input_o\,
	ena => \biphase|state_mini.s3a~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_read_address_cnt\(4));

-- Location: LCCOMB_X35_Y4_N10
\biphase|start_strobe_tx~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|start_strobe_tx~0_combout\ = (\resetn~input_o\ & (!\biphase|sig_read_address_cnt\(4) & (!\biphase|sig_read_address_cnt\(3) & \biphase|state_mini.s2a~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~input_o\,
	datab => \biphase|sig_read_address_cnt\(4),
	datac => \biphase|sig_read_address_cnt\(3),
	datad => \biphase|state_mini.s2a~q\,
	combout => \biphase|start_strobe_tx~0_combout\);

-- Location: LCCOMB_X35_Y4_N28
\biphase|start_strobe_tx~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|start_strobe_tx~1_combout\ = (\biphase|start_strobe_tx~0_combout\ & (\biphase|sig_read_address_cnt\(1) & (\biphase|sig_read_address_cnt\(0) & \biphase|sig_read_address_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \biphase|start_strobe_tx~0_combout\,
	datab => \biphase|sig_read_address_cnt\(1),
	datac => \biphase|sig_read_address_cnt\(0),
	datad => \biphase|sig_read_address_cnt\(2),
	combout => \biphase|start_strobe_tx~1_combout\);

-- Location: LCCOMB_X35_Y4_N16
\biphase|start_strobe_tx~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|start_strobe_tx~2_combout\ = (\biphase|start_strobe_tx~1_combout\) # ((\biphase|start_strobe_tx~q\ & ((!\biphase|state_mini.s2a~q\) # (!\resetn~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~input_o\,
	datab => \biphase|start_strobe_tx~1_combout\,
	datac => \biphase|start_strobe_tx~q\,
	datad => \biphase|state_mini.s2a~q\,
	combout => \biphase|start_strobe_tx~2_combout\);

-- Location: FF_X35_Y4_N17
\biphase|start_strobe_tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|start_strobe_tx~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|start_strobe_tx~q\);

-- Location: LCCOMB_X36_Y2_N0
\tx|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector11~0_combout\ = (!\tx|transmission:sig_cntr[0]~q\ & !\tx|transmission:sig_cntr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx|transmission:sig_cntr[0]~q\,
	datad => \tx|transmission:sig_cntr[0]~1_combout\,
	combout => \tx|Selector11~0_combout\);

-- Location: LCCOMB_X36_Y2_N8
\tx|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Add1~0_combout\ = \tx|transmission:sig_cntr[3]~q\ $ (((\tx|transmission:sig_cntr[2]~q\ & (\tx|transmission:sig_cntr[1]~q\ & \tx|transmission:sig_cntr[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|transmission:sig_cntr[2]~q\,
	datab => \tx|transmission:sig_cntr[1]~q\,
	datac => \tx|transmission:sig_cntr[3]~q\,
	datad => \tx|transmission:sig_cntr[0]~q\,
	combout => \tx|Add1~0_combout\);

-- Location: LCCOMB_X36_Y2_N26
\tx|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector8~0_combout\ = (!\tx|transmission:sig_cntr[0]~1_combout\ & \tx|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|transmission:sig_cntr[0]~1_combout\,
	datac => \tx|Add1~0_combout\,
	combout => \tx|Selector8~0_combout\);

-- Location: FF_X36_Y2_N27
\tx|transmission:sig_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Selector8~0_combout\,
	clrn => \resetn~input_o\,
	ena => \tx|transmission:sig_cntr[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|transmission:sig_cntr[3]~q\);

-- Location: LCCOMB_X36_Y2_N22
\tx|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector3~0_combout\ = (!\tx|transmission:sig_cntr[2]~q\ & (!\tx|transmission:sig_cntr[1]~q\ & (!\tx|transmission:sig_cntr[3]~q\ & \tx|transmission:sig_cntr[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|transmission:sig_cntr[2]~q\,
	datab => \tx|transmission:sig_cntr[1]~q\,
	datac => \tx|transmission:sig_cntr[3]~q\,
	datad => \tx|transmission:sig_cntr[0]~q\,
	combout => \tx|Selector3~0_combout\);

-- Location: LCCOMB_X36_Y2_N10
\tx|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector3~1_combout\ = (\tx|state_tx.s2~q\ & \tx|Selector3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx|state_tx.s2~q\,
	datac => \tx|Selector3~0_combout\,
	combout => \tx|Selector3~1_combout\);

-- Location: FF_X36_Y2_N11
\tx|state_tx.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Selector3~1_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|state_tx.s3~q\);

-- Location: LCCOMB_X36_Y2_N2
\tx|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector4~0_combout\ = (\tx|state_tx.s3~q\) # ((\tx|state_tx.s4~q\ & !\tx|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|state_tx.s3~q\,
	datac => \tx|state_tx.s4~q\,
	datad => \tx|Equal2~0_combout\,
	combout => \tx|Selector4~0_combout\);

-- Location: FF_X36_Y2_N3
\tx|state_tx.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Selector4~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|state_tx.s4~q\);

-- Location: LCCOMB_X36_Y2_N14
\tx|transmission:sig_cntr[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|transmission:sig_cntr[0]~2_combout\ = (\tx|state_tx.s7~q\ & (((\tx|sig_arising_edge~combout\)))) # (!\tx|state_tx.s7~q\ & ((\tx|state_tx.s2~q\) # ((\tx|state_tx.s4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|state_tx.s7~q\,
	datab => \tx|state_tx.s2~q\,
	datac => \tx|sig_arising_edge~combout\,
	datad => \tx|state_tx.s4~q\,
	combout => \tx|transmission:sig_cntr[0]~2_combout\);

-- Location: FF_X36_Y2_N1
\tx|transmission:sig_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Selector11~0_combout\,
	clrn => \resetn~input_o\,
	ena => \tx|transmission:sig_cntr[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|transmission:sig_cntr[0]~q\);

-- Location: LCCOMB_X36_Y2_N20
\tx|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector10~0_combout\ = (!\tx|transmission:sig_cntr[0]~1_combout\ & (\tx|transmission:sig_cntr[1]~q\ $ (\tx|transmission:sig_cntr[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|transmission:sig_cntr[0]~1_combout\,
	datac => \tx|transmission:sig_cntr[1]~q\,
	datad => \tx|transmission:sig_cntr[0]~q\,
	combout => \tx|Selector10~0_combout\);

-- Location: FF_X36_Y2_N21
\tx|transmission:sig_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Selector10~0_combout\,
	clrn => \resetn~input_o\,
	ena => \tx|transmission:sig_cntr[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|transmission:sig_cntr[1]~q\);

-- Location: LCCOMB_X36_Y2_N24
\tx|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Equal3~0_combout\ = (!\tx|transmission:sig_cntr[2]~q\ & (\tx|transmission:sig_cntr[1]~q\ & (\tx|transmission:sig_cntr[3]~q\ & \tx|transmission:sig_cntr[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|transmission:sig_cntr[2]~q\,
	datab => \tx|transmission:sig_cntr[1]~q\,
	datac => \tx|transmission:sig_cntr[3]~q\,
	datad => \tx|transmission:sig_cntr[0]~q\,
	combout => \tx|Equal3~0_combout\);

-- Location: LCCOMB_X36_Y1_N0
\tx|state_tx~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|state_tx~24_combout\ = (\tx|state_tx.s7~q\ & (!\tx|signal_A_q_not~q\ & (\tx|signal_A_q~q\ & \tx|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|state_tx.s7~q\,
	datab => \tx|signal_A_q_not~q\,
	datac => \tx|signal_A_q~q\,
	datad => \tx|Equal3~0_combout\,
	combout => \tx|state_tx~24_combout\);

-- Location: FF_X36_Y1_N1
\tx|state_tx.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|state_tx~24_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|state_tx.s8~q\);

-- Location: LCCOMB_X36_Y2_N30
\tx|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector0~0_combout\ = (!\tx|state_tx.s8~q\ & ((\biphase|start_strobe_tx~q\) # (\tx|state_tx.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \biphase|start_strobe_tx~q\,
	datac => \tx|state_tx.s0~q\,
	datad => \tx|state_tx.s8~q\,
	combout => \tx|Selector0~0_combout\);

-- Location: FF_X36_Y2_N31
\tx|state_tx.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Selector0~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|state_tx.s0~q\);

-- Location: LCCOMB_X36_Y2_N4
\tx|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector1~0_combout\ = (\biphase|start_strobe_tx~q\ & ((\tx|state_tx.s1~q\) # (!\tx|state_tx.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|state_tx.s0~q\,
	datab => \biphase|start_strobe_tx~q\,
	datac => \tx|state_tx.s1~q\,
	combout => \tx|Selector1~0_combout\);

-- Location: FF_X36_Y2_N5
\tx|state_tx.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Selector1~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|state_tx.s1~q\);

-- Location: LCCOMB_X36_Y2_N16
\tx|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector2~0_combout\ = (\biphase|start_strobe_tx~q\ & (((\tx|state_tx.s2~q\ & !\tx|Selector3~0_combout\)))) # (!\biphase|start_strobe_tx~q\ & ((\tx|state_tx.s1~q\) # ((\tx|state_tx.s2~q\ & !\tx|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \biphase|start_strobe_tx~q\,
	datab => \tx|state_tx.s1~q\,
	datac => \tx|state_tx.s2~q\,
	datad => \tx|Selector3~0_combout\,
	combout => \tx|Selector2~0_combout\);

-- Location: FF_X36_Y2_N17
\tx|state_tx.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Selector2~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|state_tx.s2~q\);

-- Location: LCCOMB_X36_Y2_N18
\tx|transmission:sig_cntr[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|transmission:sig_cntr[0]~0_combout\ = (\tx|state_tx.s2~q\ & (((\tx|Selector3~0_combout\)))) # (!\tx|state_tx.s2~q\ & (\tx|state_tx.s7~q\ & ((\tx|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|state_tx.s7~q\,
	datab => \tx|state_tx.s2~q\,
	datac => \tx|Selector3~0_combout\,
	datad => \tx|Equal3~0_combout\,
	combout => \tx|transmission:sig_cntr[0]~0_combout\);

-- Location: LCCOMB_X36_Y2_N12
\tx|transmission:sig_cntr[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|transmission:sig_cntr[0]~1_combout\ = (\tx|transmission:sig_cntr[0]~0_combout\) # ((!\tx|state_tx.s7~q\ & (!\tx|state_tx.s2~q\ & \tx|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|state_tx.s7~q\,
	datab => \tx|transmission:sig_cntr[0]~0_combout\,
	datac => \tx|state_tx.s2~q\,
	datad => \tx|Equal2~0_combout\,
	combout => \tx|transmission:sig_cntr[0]~1_combout\);

-- Location: LCCOMB_X36_Y2_N6
\tx|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector9~0_combout\ = (!\tx|transmission:sig_cntr[0]~1_combout\ & (\tx|transmission:sig_cntr[2]~q\ $ (((\tx|transmission:sig_cntr[1]~q\ & \tx|transmission:sig_cntr[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|transmission:sig_cntr[0]~1_combout\,
	datab => \tx|transmission:sig_cntr[1]~q\,
	datac => \tx|transmission:sig_cntr[2]~q\,
	datad => \tx|transmission:sig_cntr[0]~q\,
	combout => \tx|Selector9~0_combout\);

-- Location: FF_X36_Y2_N7
\tx|transmission:sig_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Selector9~0_combout\,
	clrn => \resetn~input_o\,
	ena => \tx|transmission:sig_cntr[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|transmission:sig_cntr[2]~q\);

-- Location: LCCOMB_X36_Y2_N28
\tx|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Equal2~0_combout\ = (\tx|transmission:sig_cntr[2]~q\ & (!\tx|transmission:sig_cntr[1]~q\ & (!\tx|transmission:sig_cntr[3]~q\ & !\tx|transmission:sig_cntr[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|transmission:sig_cntr[2]~q\,
	datab => \tx|transmission:sig_cntr[1]~q\,
	datac => \tx|transmission:sig_cntr[3]~q\,
	datad => \tx|transmission:sig_cntr[0]~q\,
	combout => \tx|Equal2~0_combout\);

-- Location: LCCOMB_X36_Y3_N20
\tx|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector5~0_combout\ = (\tx|Equal2~0_combout\ & \tx|state_tx.s4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx|Equal2~0_combout\,
	datad => \tx|state_tx.s4~q\,
	combout => \tx|Selector5~0_combout\);

-- Location: FF_X36_Y3_N21
\tx|state_tx.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Selector5~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|state_tx.s5~q\);

-- Location: LCCOMB_X36_Y1_N24
\tx|state_tx.s6~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|state_tx.s6~feeder_combout\ = \tx|state_tx.s5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|state_tx.s5~q\,
	combout => \tx|state_tx.s6~feeder_combout\);

-- Location: FF_X36_Y1_N25
\tx|state_tx.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|state_tx.s6~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|state_tx.s6~q\);

-- Location: LCCOMB_X36_Y1_N12
\tx|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector7~0_combout\ = (\tx|state_tx.s6~q\) # ((\tx|state_tx.s7~q\ & ((!\tx|Equal3~0_combout\) # (!\tx|sig_arising_edge~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|sig_arising_edge~combout\,
	datab => \tx|state_tx.s6~q\,
	datac => \tx|state_tx.s7~q\,
	datad => \tx|Equal3~0_combout\,
	combout => \tx|Selector7~0_combout\);

-- Location: FF_X36_Y1_N13
\tx|state_tx.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Selector7~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|state_tx.s7~q\);

-- Location: LCCOMB_X36_Y3_N0
\tx|sig_packet[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|sig_packet[6]~4_combout\ = (\tx|sig_arising_edge~combout\) # (\tx|sig_packet\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx|sig_arising_edge~combout\,
	datac => \tx|sig_packet\(6),
	combout => \tx|sig_packet[6]~4_combout\);

-- Location: LCCOMB_X36_Y3_N24
\tx|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector17~0_combout\ = (\tx|sig_packet\(6) & !\tx|state_tx.s5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx|sig_packet\(6),
	datad => \tx|state_tx.s5~q\,
	combout => \tx|Selector17~0_combout\);

-- Location: FF_X36_Y3_N1
\tx|sig_packet[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|sig_packet[6]~4_combout\,
	asdata => \tx|Selector17~0_combout\,
	sload => \tx|ALT_INV_state_tx.s7~q\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_packet\(6));

-- Location: LCCOMB_X36_Y3_N14
\tx|sig_packet[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|sig_packet[5]~3_combout\ = (\tx|sig_arising_edge~combout\ & ((\tx|sig_packet\(6)))) # (!\tx|sig_arising_edge~combout\ & (\tx|sig_packet\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx|sig_arising_edge~combout\,
	datac => \tx|sig_packet\(5),
	datad => \tx|sig_packet\(6),
	combout => \tx|sig_packet[5]~3_combout\);

-- Location: LCCOMB_X36_Y3_N22
\tx|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector18~0_combout\ = (\tx|sig_packet\(5) & !\tx|state_tx.s5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx|sig_packet\(5),
	datad => \tx|state_tx.s5~q\,
	combout => \tx|Selector18~0_combout\);

-- Location: FF_X36_Y3_N15
\tx|sig_packet[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|sig_packet[5]~3_combout\,
	asdata => \tx|Selector18~0_combout\,
	sload => \tx|ALT_INV_state_tx.s7~q\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_packet\(5));

-- Location: LCCOMB_X37_Y3_N18
\tx|Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector19~0_combout\ = (\tx|sig_packet\(5)) # (!\tx|state_tx.s7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|state_tx.s7~q\,
	datad => \tx|sig_packet\(5),
	combout => \tx|Selector19~0_combout\);

-- Location: LCCOMB_X36_Y3_N2
\tx|sig_packet[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|sig_packet[2]~5_combout\ = (\resetn~input_o\ & ((\tx|state_tx.s7~q\ & (\tx|sig_arising_edge~combout\)) # (!\tx|state_tx.s7~q\ & ((\tx|state_tx.s5~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|state_tx.s7~q\,
	datab => \tx|sig_arising_edge~combout\,
	datac => \resetn~input_o\,
	datad => \tx|state_tx.s5~q\,
	combout => \tx|sig_packet[2]~5_combout\);

-- Location: FF_X37_Y3_N19
\tx|sig_packet[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Selector19~0_combout\,
	ena => \tx|sig_packet[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_packet\(4));

-- Location: LCCOMB_X36_Y3_N28
\tx|sig_packet[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|sig_packet[3]~2_combout\ = (\tx|sig_arising_edge~combout\ & ((\tx|sig_packet\(4)))) # (!\tx|sig_arising_edge~combout\ & (\tx|sig_packet\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx|sig_arising_edge~combout\,
	datac => \tx|sig_packet\(3),
	datad => \tx|sig_packet\(4),
	combout => \tx|sig_packet[3]~2_combout\);

-- Location: LCCOMB_X36_Y3_N4
\tx|Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector20~0_combout\ = (\tx|sig_packet\(3) & !\tx|state_tx.s5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx|sig_packet\(3),
	datad => \tx|state_tx.s5~q\,
	combout => \tx|Selector20~0_combout\);

-- Location: FF_X36_Y3_N29
\tx|sig_packet[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|sig_packet[3]~2_combout\,
	asdata => \tx|Selector20~0_combout\,
	sload => \tx|ALT_INV_state_tx.s7~q\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_packet\(3));

-- Location: LCCOMB_X37_Y3_N24
\tx|Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector21~0_combout\ = (\tx|sig_packet\(3)) # (!\tx|state_tx.s7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|state_tx.s7~q\,
	datad => \tx|sig_packet\(3),
	combout => \tx|Selector21~0_combout\);

-- Location: FF_X37_Y3_N25
\tx|sig_packet[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|Selector21~0_combout\,
	ena => \tx|sig_packet[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_packet\(2));

-- Location: LCCOMB_X36_Y3_N10
\tx|sig_packet[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|sig_packet[1]~1_combout\ = (\tx|sig_arising_edge~combout\ & ((\tx|sig_packet\(2)))) # (!\tx|sig_arising_edge~combout\ & (\tx|sig_packet\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx|sig_arising_edge~combout\,
	datac => \tx|sig_packet\(1),
	datad => \tx|sig_packet\(2),
	combout => \tx|sig_packet[1]~1_combout\);

-- Location: LCCOMB_X36_Y3_N8
\tx|Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector22~0_combout\ = (\tx|sig_packet\(1) & !\tx|state_tx.s5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|sig_packet\(1),
	datad => \tx|state_tx.s5~q\,
	combout => \tx|Selector22~0_combout\);

-- Location: FF_X36_Y3_N11
\tx|sig_packet[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|sig_packet[1]~1_combout\,
	asdata => \tx|Selector22~0_combout\,
	sload => \tx|ALT_INV_state_tx.s7~q\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_packet\(1));

-- Location: LCCOMB_X36_Y3_N16
\tx|sig_packet[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|sig_packet[0]~0_combout\ = (\tx|sig_arising_edge~combout\ & ((\tx|sig_packet\(1)))) # (!\tx|sig_arising_edge~combout\ & (\tx|sig_packet\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx|sig_arising_edge~combout\,
	datac => \tx|sig_packet\(0),
	datad => \tx|sig_packet\(1),
	combout => \tx|sig_packet[0]~0_combout\);

-- Location: LCCOMB_X36_Y3_N30
\tx|Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|Selector23~0_combout\ = (\tx|sig_packet\(0) & !\tx|state_tx.s5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx|sig_packet\(0),
	datad => \tx|state_tx.s5~q\,
	combout => \tx|Selector23~0_combout\);

-- Location: FF_X36_Y3_N17
\tx|sig_packet[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|sig_packet[0]~0_combout\,
	asdata => \tx|Selector23~0_combout\,
	sload => \tx|ALT_INV_state_tx.s7~q\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_packet\(0));

-- Location: LCCOMB_X36_Y3_N26
\tx|sig_bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx|sig_bit~0_combout\ = (\tx|state_tx.s7~q\ & ((\tx|sig_arising_edge~combout\ & ((!\tx|sig_packet\(0)))) # (!\tx|sig_arising_edge~combout\ & (\tx|sig_bit~q\)))) # (!\tx|state_tx.s7~q\ & (((\tx|sig_bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|state_tx.s7~q\,
	datab => \tx|sig_arising_edge~combout\,
	datac => \tx|sig_bit~q\,
	datad => \tx|sig_packet\(0),
	combout => \tx|sig_bit~0_combout\);

-- Location: FF_X36_Y3_N27
\tx|sig_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \tx|sig_bit~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|sig_bit~q\);

-- Location: LCCOMB_X31_Y4_N8
\biphase|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|Selector1~0_combout\ = (\biphase|state_bi.s1~q\) # ((\biphase|sig_read~q\ & !\biphase|state_bi.s2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \biphase|state_bi.s1~q\,
	datac => \biphase|sig_read~q\,
	datad => \biphase|state_bi.s2~q\,
	combout => \biphase|Selector1~0_combout\);

-- Location: FF_X31_Y4_N9
\biphase|sig_read\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|Selector1~0_combout\,
	clrn => \resetn~input_o\,
	ena => \biphase|sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_read~q\);

-- Location: FF_X35_Y3_N19
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

-- Location: FF_X35_Y3_N11
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

-- Location: LCCOMB_X35_Y3_N8
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

-- Location: FF_X35_Y3_N9
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

-- Location: LCCOMB_X35_Y3_N10
\rx|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add0~2_combout\ = (\rx|baud_rate_clk:var_cntr[1]~q\ & (!\rx|Add0~1\)) # (!\rx|baud_rate_clk:var_cntr[1]~q\ & ((\rx|Add0~1\) # (GND)))
-- \rx|Add0~3\ = CARRY((!\rx|Add0~1\) # (!\rx|baud_rate_clk:var_cntr[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx|baud_rate_clk:var_cntr[1]~q\,
	datad => VCC,
	cin => \rx|Add0~1\,
	combout => \rx|Add0~2_combout\,
	cout => \rx|Add0~3\);

-- Location: FF_X35_Y3_N15
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

-- Location: LCCOMB_X35_Y3_N12
\rx|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add0~4_combout\ = (\rx|baud_rate_clk:var_cntr[2]~q\ & (\rx|Add0~3\ $ (GND))) # (!\rx|baud_rate_clk:var_cntr[2]~q\ & (!\rx|Add0~3\ & VCC))
-- \rx|Add0~5\ = CARRY((\rx|baud_rate_clk:var_cntr[2]~q\ & !\rx|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx|baud_rate_clk:var_cntr[2]~q\,
	datad => VCC,
	cin => \rx|Add0~3\,
	combout => \rx|Add0~4_combout\,
	cout => \rx|Add0~5\);

-- Location: LCCOMB_X35_Y3_N26
\rx|var_cntr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|var_cntr~0_combout\ = (!\rx|Equal0~1_combout\ & \rx|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|Equal0~1_combout\,
	datad => \rx|Add0~4_combout\,
	combout => \rx|var_cntr~0_combout\);

-- Location: FF_X35_Y3_N27
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

-- Location: LCCOMB_X35_Y3_N14
\rx|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add0~6_combout\ = (\rx|baud_rate_clk:var_cntr[3]~q\ & (!\rx|Add0~5\)) # (!\rx|baud_rate_clk:var_cntr[3]~q\ & ((\rx|Add0~5\) # (GND)))
-- \rx|Add0~7\ = CARRY((!\rx|Add0~5\) # (!\rx|baud_rate_clk:var_cntr[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx|baud_rate_clk:var_cntr[3]~q\,
	datad => VCC,
	cin => \rx|Add0~5\,
	combout => \rx|Add0~6_combout\,
	cout => \rx|Add0~7\);

-- Location: LCCOMB_X35_Y3_N28
\rx|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Equal0~0_combout\ = (!\rx|Add0~2_combout\ & (!\rx|Add0~6_combout\ & (!\rx|Add0~0_combout\ & \rx|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|Add0~2_combout\,
	datab => \rx|Add0~6_combout\,
	datac => \rx|Add0~0_combout\,
	datad => \rx|Add0~4_combout\,
	combout => \rx|Equal0~0_combout\);

-- Location: FF_X35_Y3_N21
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

-- Location: LCCOMB_X35_Y3_N18
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

-- Location: LCCOMB_X35_Y3_N20
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

-- Location: LCCOMB_X35_Y3_N16
\rx|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add0~8_combout\ = (\rx|baud_rate_clk:var_cntr[4]~q\ & (\rx|Add0~7\ $ (GND))) # (!\rx|baud_rate_clk:var_cntr[4]~q\ & (!\rx|Add0~7\ & VCC))
-- \rx|Add0~9\ = CARRY((\rx|baud_rate_clk:var_cntr[4]~q\ & !\rx|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx|baud_rate_clk:var_cntr[4]~q\,
	datad => VCC,
	cin => \rx|Add0~7\,
	combout => \rx|Add0~8_combout\,
	cout => \rx|Add0~9\);

-- Location: LCCOMB_X35_Y3_N30
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

-- Location: FF_X35_Y3_N31
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

-- Location: LCCOMB_X35_Y3_N6
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

-- Location: LCCOMB_X35_Y3_N24
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

-- Location: FF_X35_Y3_N25
\rx|sig_baudx32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|sig_baudx32~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_baudx32~q\);

-- Location: FF_X32_Y2_N27
\rx|signal_A_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \rx|sig_baudx32~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|signal_A_q~q\);

-- Location: LCCOMB_X31_Y2_N20
\rx|main_rx:var_clk_cntr[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|main_rx:var_clk_cntr[0]~0_combout\ = !\rx|main_rx:var_clk_cntr[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx|main_rx:var_clk_cntr[0]~q\,
	combout => \rx|main_rx:var_clk_cntr[0]~0_combout\);

-- Location: FF_X31_Y2_N21
\rx|main_rx:var_clk_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|main_rx:var_clk_cntr[0]~0_combout\,
	clrn => \resetn~input_o\,
	ena => \rx|main_rx:var_clk_cntr[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_clk_cntr[0]~q\);

-- Location: LCCOMB_X31_Y2_N26
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

-- Location: FF_X31_Y2_N27
\rx|main_rx:var_clk_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add2~2_combout\,
	clrn => \resetn~input_o\,
	ena => \rx|main_rx:var_clk_cntr[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_clk_cntr[1]~q\);

-- Location: LCCOMB_X31_Y2_N8
\rx|Add2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add2~1_combout\ = \rx|main_rx:var_clk_cntr[2]~q\ $ (((\rx|main_rx:var_clk_cntr[1]~q\ & \rx|main_rx:var_clk_cntr[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|main_rx:var_clk_cntr[1]~q\,
	datab => \rx|main_rx:var_clk_cntr[0]~q\,
	datac => \rx|main_rx:var_clk_cntr[2]~q\,
	combout => \rx|Add2~1_combout\);

-- Location: FF_X31_Y2_N9
\rx|main_rx:var_clk_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add2~1_combout\,
	clrn => \resetn~input_o\,
	ena => \rx|main_rx:var_clk_cntr[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_clk_cntr[2]~q\);

-- Location: LCCOMB_X31_Y2_N14
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

-- Location: FF_X31_Y2_N15
\rx|main_rx:var_clk_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add2~0_combout\,
	clrn => \resetn~input_o\,
	ena => \rx|main_rx:var_clk_cntr[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_clk_cntr[3]~q\);

-- Location: LCCOMB_X31_Y2_N12
\rx|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Equal2~0_combout\ = (\rx|main_rx:var_clk_cntr[1]~q\ & (\rx|main_rx:var_clk_cntr[2]~q\ & (\rx|main_rx:var_clk_cntr[3]~q\ & \rx|main_rx:var_clk_cntr[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|main_rx:var_clk_cntr[1]~q\,
	datab => \rx|main_rx:var_clk_cntr[2]~q\,
	datac => \rx|main_rx:var_clk_cntr[3]~q\,
	datad => \rx|main_rx:var_clk_cntr[0]~q\,
	combout => \rx|Equal2~0_combout\);

-- Location: LCCOMB_X31_Y2_N30
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

-- Location: FF_X31_Y2_N31
\rx|main_rx:var_clk_cntr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add2~3_combout\,
	clrn => \resetn~input_o\,
	ena => \rx|main_rx:var_clk_cntr[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_clk_cntr[4]~q\);

-- Location: LCCOMB_X31_Y2_N16
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

-- Location: FF_X31_Y2_N17
\rx|main_rx:var_clk_cntr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Selector17~0_combout\,
	clrn => \resetn~input_o\,
	ena => \rx|main_rx:var_clk_cntr[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_clk_cntr[5]~q\);

-- Location: LCCOMB_X31_Y2_N2
\rx|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Equal2~1_combout\ = (!\rx|main_rx:var_clk_cntr[5]~q\ & (\rx|main_rx:var_clk_cntr[4]~q\ & \rx|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx|main_rx:var_clk_cntr[5]~q\,
	datac => \rx|main_rx:var_clk_cntr[4]~q\,
	datad => \rx|Equal2~0_combout\,
	combout => \rx|Equal2~1_combout\);

-- Location: FF_X32_Y2_N29
\rx|signal_A_q_not\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \rx|signal_A_q~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|signal_A_q_not~q\);

-- Location: LCCOMB_X32_Y2_N26
\rx|state_rx~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|state_rx~16_combout\ = (\rx|Equal2~1_combout\ & (\rx|signal_A_q~q\ & !\rx|signal_A_q_not~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|Equal2~1_combout\,
	datac => \rx|signal_A_q~q\,
	datad => \rx|signal_A_q_not~q\,
	combout => \rx|state_rx~16_combout\);

-- Location: LCCOMB_X32_Y2_N18
\rx|Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector13~0_combout\ = (\rx|state_rx~16_combout\ & (!\rx|Selector15~0_combout\ & \rx|state_rx.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx|state_rx~16_combout\,
	datac => \rx|Selector15~0_combout\,
	datad => \rx|state_rx.s1~q\,
	combout => \rx|Selector13~0_combout\);

-- Location: FF_X32_Y2_N19
\rx|state_rx.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Selector13~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|state_rx.s2~q\);

-- Location: LCCOMB_X34_Y2_N4
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

-- Location: IOIBUF_X29_Y0_N22
\detected_bit~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_detected_bit,
	o => \detected_bit~input_o\);

-- Location: FF_X31_Y2_N29
\rx|sig_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \detected_bit~input_o\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_bit\(0));

-- Location: LCCOMB_X31_Y2_N18
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

-- Location: FF_X31_Y2_N19
\rx|sig_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|sig_bit[1]~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_bit\(1));

-- Location: LCCOMB_X31_Y2_N24
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

-- Location: FF_X31_Y2_N25
\rx|sig_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|sig_bit[2]~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_bit\(2));

-- Location: LCCOMB_X31_Y2_N10
\rx|sig_bouncer_bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_bouncer_bit~0_combout\ = (\rx|sig_bit\(2) & ((\rx|sig_bouncer_bit~q\) # ((\rx|sig_bit\(1) & \rx|sig_bit\(0))))) # (!\rx|sig_bit\(2) & (\rx|sig_bouncer_bit~q\ & ((\rx|sig_bit\(1)) # (\rx|sig_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|sig_bit\(2),
	datab => \rx|sig_bit\(1),
	datac => \rx|sig_bouncer_bit~q\,
	datad => \rx|sig_bit\(0),
	combout => \rx|sig_bouncer_bit~0_combout\);

-- Location: FF_X31_Y2_N11
\rx|sig_bouncer_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|sig_bouncer_bit~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_bouncer_bit~q\);

-- Location: LCCOMB_X34_Y2_N8
\rx|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector11~0_combout\ = (\rx|sig_bouncer_bit~q\ & !\rx|state_rx.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx|sig_bouncer_bit~q\,
	datad => \rx|state_rx.s0~q\,
	combout => \rx|Selector11~0_combout\);

-- Location: LCCOMB_X35_Y2_N18
\rx|Selector11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector11~1_combout\ = (!\rx|state_rx.s5~q\ & (!\rx|Selector11~0_combout\ & ((!\rx|state_rx.s2~q\) # (!\rx|sig_data_bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|sig_data_bit~q\,
	datab => \rx|state_rx.s5~q\,
	datac => \rx|state_rx.s2~q\,
	datad => \rx|Selector11~0_combout\,
	combout => \rx|Selector11~1_combout\);

-- Location: FF_X35_Y2_N19
\rx|state_rx.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Selector11~1_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|state_rx.s0~q\);

-- Location: LCCOMB_X34_Y2_N0
\rx|Selector12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector12~1_combout\ = (\rx|state_rx.s1~q\ & (\rx|state_rx~16_combout\)) # (!\rx|state_rx.s1~q\ & (((\rx|sig_bouncer_bit~q\) # (\rx|state_rx.s0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|state_rx~16_combout\,
	datab => \rx|state_rx.s1~q\,
	datac => \rx|sig_bouncer_bit~q\,
	datad => \rx|state_rx.s0~q\,
	combout => \rx|Selector12~1_combout\);

-- Location: LCCOMB_X34_Y2_N12
\rx|Selector12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector12~2_combout\ = (!\rx|Selector12~0_combout\ & (!\rx|Selector12~1_combout\ & !\rx|Selector15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|Selector12~0_combout\,
	datab => \rx|Selector12~1_combout\,
	datac => \rx|Selector15~0_combout\,
	combout => \rx|Selector12~2_combout\);

-- Location: FF_X34_Y2_N13
\rx|state_rx.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Selector12~2_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|state_rx.s1~q\);

-- Location: LCCOMB_X32_Y2_N28
\rx|main_rx:var_clk_cntr[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|main_rx:var_clk_cntr[5]~0_combout\ = (\rx|signal_A_q~q\ & (!\rx|signal_A_q_not~q\ & ((\rx|state_rx.s1~q\) # (\rx|state_rx.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|signal_A_q~q\,
	datab => \rx|state_rx.s1~q\,
	datac => \rx|signal_A_q_not~q\,
	datad => \rx|state_rx.s3~q\,
	combout => \rx|main_rx:var_clk_cntr[5]~0_combout\);

-- Location: LCCOMB_X31_Y2_N4
\rx|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Equal3~0_combout\ = (!\rx|main_rx:var_clk_cntr[5]~q\ & (!\rx|main_rx:var_clk_cntr[4]~q\ & \rx|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx|main_rx:var_clk_cntr[5]~q\,
	datac => \rx|main_rx:var_clk_cntr[4]~q\,
	datad => \rx|Equal2~0_combout\,
	combout => \rx|Equal3~0_combout\);

-- Location: LCCOMB_X31_Y2_N22
\rx|sig_data_bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_data_bit~0_combout\ = (\resetn~input_o\ & (\rx|main_rx:var_clk_cntr[5]~0_combout\ & \rx|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~input_o\,
	datab => \rx|main_rx:var_clk_cntr[5]~0_combout\,
	datac => \rx|Equal3~0_combout\,
	combout => \rx|sig_data_bit~0_combout\);

-- Location: LCCOMB_X31_Y2_N0
\rx|sig_data_bit~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_data_bit~1_combout\ = (\rx|sig_data_bit~0_combout\ & ((\rx|sig_bouncer_bit~q\))) # (!\rx|sig_data_bit~0_combout\ & (\rx|sig_data_bit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|sig_data_bit~0_combout\,
	datac => \rx|sig_data_bit~q\,
	datad => \rx|sig_bouncer_bit~q\,
	combout => \rx|sig_data_bit~1_combout\);

-- Location: FF_X31_Y2_N1
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

-- Location: LCCOMB_X32_Y2_N16
\rx|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector4~0_combout\ = (\rx|state_rx.s3~q\ & (\rx|Equal3~0_combout\ $ (\rx|main_rx:var_bit_cntr[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx|Equal3~0_combout\,
	datac => \rx|main_rx:var_bit_cntr[0]~q\,
	datad => \rx|state_rx.s3~q\,
	combout => \rx|Selector4~0_combout\);

-- Location: LCCOMB_X32_Y2_N4
\rx|main_rx:var_bit_cntr[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|main_rx:var_bit_cntr[3]~0_combout\ = (\rx|Selector11~0_combout\) # ((\rx|state_rx.s3~q\ & (!\rx|signal_A_q_not~q\ & \rx|signal_A_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|state_rx.s3~q\,
	datab => \rx|signal_A_q_not~q\,
	datac => \rx|signal_A_q~q\,
	datad => \rx|Selector11~0_combout\,
	combout => \rx|main_rx:var_bit_cntr[3]~0_combout\);

-- Location: FF_X32_Y2_N17
\rx|main_rx:var_bit_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Selector4~0_combout\,
	clrn => \resetn~input_o\,
	ena => \rx|main_rx:var_bit_cntr[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_bit_cntr[0]~q\);

-- Location: LCCOMB_X32_Y2_N6
\rx|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector3~0_combout\ = (\rx|state_rx.s3~q\ & (\rx|main_rx:var_bit_cntr[1]~q\ $ (((\rx|Equal3~0_combout\ & \rx|main_rx:var_bit_cntr[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|state_rx.s3~q\,
	datab => \rx|Equal3~0_combout\,
	datac => \rx|main_rx:var_bit_cntr[1]~q\,
	datad => \rx|main_rx:var_bit_cntr[0]~q\,
	combout => \rx|Selector3~0_combout\);

-- Location: FF_X32_Y2_N7
\rx|main_rx:var_bit_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Selector3~0_combout\,
	clrn => \resetn~input_o\,
	ena => \rx|main_rx:var_bit_cntr[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_bit_cntr[1]~q\);

-- Location: LCCOMB_X32_Y2_N24
\rx|state_rx~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|state_rx~18_combout\ = (\rx|main_rx:var_bit_cntr[1]~q\ & (\rx|Equal3~0_combout\ & \rx|main_rx:var_bit_cntr[0]~q\)) # (!\rx|main_rx:var_bit_cntr[1]~q\ & (!\rx|Equal3~0_combout\ & !\rx|main_rx:var_bit_cntr[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|main_rx:var_bit_cntr[1]~q\,
	datac => \rx|Equal3~0_combout\,
	datad => \rx|main_rx:var_bit_cntr[0]~q\,
	combout => \rx|state_rx~18_combout\);

-- Location: LCCOMB_X32_Y2_N22
\rx|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add3~0_combout\ = (\rx|main_rx:var_bit_cntr[1]~q\ & \rx|main_rx:var_bit_cntr[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|main_rx:var_bit_cntr[1]~q\,
	datad => \rx|main_rx:var_bit_cntr[0]~q\,
	combout => \rx|Add3~0_combout\);

-- Location: LCCOMB_X32_Y2_N20
\rx|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector2~0_combout\ = (\rx|state_rx.s3~q\ & (\rx|main_rx:var_bit_cntr[2]~q\ $ (((\rx|Add3~0_combout\ & \rx|Equal3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|Add3~0_combout\,
	datab => \rx|Equal3~0_combout\,
	datac => \rx|main_rx:var_bit_cntr[2]~q\,
	datad => \rx|state_rx.s3~q\,
	combout => \rx|Selector2~0_combout\);

-- Location: FF_X32_Y2_N21
\rx|main_rx:var_bit_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Selector2~0_combout\,
	clrn => \resetn~input_o\,
	ena => \rx|main_rx:var_bit_cntr[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_bit_cntr[2]~q\);

-- Location: LCCOMB_X32_Y2_N10
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

-- Location: LCCOMB_X32_Y2_N30
\rx|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector1~0_combout\ = (\rx|state_rx.s3~q\ & ((\rx|Equal3~0_combout\ & ((\rx|Add3~1_combout\))) # (!\rx|Equal3~0_combout\ & (\rx|main_rx:var_bit_cntr[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|state_rx.s3~q\,
	datab => \rx|Equal3~0_combout\,
	datac => \rx|main_rx:var_bit_cntr[3]~q\,
	datad => \rx|Add3~1_combout\,
	combout => \rx|Selector1~0_combout\);

-- Location: FF_X32_Y2_N31
\rx|main_rx:var_bit_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Selector1~0_combout\,
	clrn => \resetn~input_o\,
	ena => \rx|main_rx:var_bit_cntr[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_bit_cntr[3]~q\);

-- Location: LCCOMB_X32_Y2_N8
\rx|state_rx~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|state_rx~17_combout\ = (\rx|main_rx:var_bit_cntr[3]~q\ & (!\rx|main_rx:var_bit_cntr[2]~q\ & ((!\rx|Add3~0_combout\) # (!\rx|Equal3~0_combout\)))) # (!\rx|main_rx:var_bit_cntr[3]~q\ & (\rx|Equal3~0_combout\ & (\rx|Add3~0_combout\ & 
-- \rx|main_rx:var_bit_cntr[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|main_rx:var_bit_cntr[3]~q\,
	datab => \rx|Equal3~0_combout\,
	datac => \rx|Add3~0_combout\,
	datad => \rx|main_rx:var_bit_cntr[2]~q\,
	combout => \rx|state_rx~17_combout\);

-- Location: LCCOMB_X32_Y2_N2
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

-- Location: LCCOMB_X32_Y2_N12
\rx|Selector14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector14~2_combout\ = (\rx|sig_data_bit~q\ & (!\rx|state_rx~19_combout\ & (\rx|state_rx.s3~q\))) # (!\rx|sig_data_bit~q\ & ((\rx|state_rx.s2~q\) # ((!\rx|state_rx~19_combout\ & \rx|state_rx.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|sig_data_bit~q\,
	datab => \rx|state_rx~19_combout\,
	datac => \rx|state_rx.s3~q\,
	datad => \rx|state_rx.s2~q\,
	combout => \rx|Selector14~2_combout\);

-- Location: FF_X32_Y2_N13
\rx|state_rx.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Selector14~2_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|state_rx.s3~q\);

-- Location: LCCOMB_X32_Y2_N14
\rx|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector15~0_combout\ = (\rx|state_rx.s3~q\ & (\rx|state_rx~18_combout\ & (\rx|state_rx~17_combout\ & \rx|state_rx~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|state_rx.s3~q\,
	datab => \rx|state_rx~18_combout\,
	datac => \rx|state_rx~17_combout\,
	datad => \rx|state_rx~16_combout\,
	combout => \rx|Selector15~0_combout\);

-- Location: FF_X34_Y2_N9
\rx|state_rx.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \rx|Selector15~0_combout\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|state_rx.s4~q\);

-- Location: FF_X34_Y2_N5
\rx|state_rx.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \rx|state_rx.s4~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|state_rx.s5~q\);

-- Location: LCCOMB_X35_Y2_N16
\rx|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector0~0_combout\ = (\rx|state_rx.s5~q\) # ((\rx|sig_wr_ram~q\ & \rx|state_rx.s0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx|state_rx.s5~q\,
	datac => \rx|sig_wr_ram~q\,
	datad => \rx|state_rx.s0~q\,
	combout => \rx|Selector0~0_combout\);

-- Location: FF_X35_Y2_N17
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

-- Location: LCCOMB_X32_Y4_N12
\biphase|sig_cut_rd~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_cut_rd~feeder_combout\ = \biphase|sig_read~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \biphase|sig_read~q\,
	combout => \biphase|sig_cut_rd~feeder_combout\);

-- Location: FF_X32_Y4_N13
\biphase|sig_cut_rd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_cut_rd~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_cut_rd~q\);

-- Location: FF_X32_Y4_N7
\biphase|sig_cut_rd_not\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \biphase|sig_cut_rd~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_cut_rd_not~q\);

-- Location: LCCOMB_X32_Y4_N18
\biphase|rd\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|rd~combout\ = (!\biphase|sig_cut_rd_not~q\ & \biphase|sig_cut_rd~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \biphase|sig_cut_rd_not~q\,
	datad => \biphase|sig_cut_rd~q\,
	combout => \biphase|rd~combout\);

-- Location: FF_X32_Y4_N19
\memory|altsyncram_component|auto_generated|rden_b_store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|rd~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory|altsyncram_component|auto_generated|rden_b_store~q\);

-- Location: LCCOMB_X32_Y4_N6
\memory|altsyncram_component|auto_generated|ram_block1a0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memory|altsyncram_component|auto_generated|ram_block1a0~0_combout\ = (\memory|altsyncram_component|auto_generated|rden_b_store~q\) # ((\biphase|sig_cut_rd~q\ & !\biphase|sig_cut_rd_not~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \biphase|sig_cut_rd~q\,
	datac => \biphase|sig_cut_rd_not~q\,
	datad => \memory|altsyncram_component|auto_generated|rden_b_store~q\,
	combout => \memory|altsyncram_component|auto_generated|ram_block1a0~0_combout\);

-- Location: LCCOMB_X32_Y2_N0
\rx|sig_detected_byte[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_detected_byte[7]~0_combout\ = (\rx|state_rx.s3~q\ & (\rx|state_rx~16_combout\ & \resetn~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|state_rx.s3~q\,
	datab => \rx|state_rx~16_combout\,
	datad => \resetn~input_o\,
	combout => \rx|sig_detected_byte[7]~0_combout\);

-- Location: FF_X32_Y3_N11
\rx|sig_detected_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \rx|sig_data_bit~q\,
	sload => VCC,
	ena => \rx|sig_detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_detected_byte\(7));

-- Location: LCCOMB_X32_Y3_N14
\rx|sig_detected_byte[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_detected_byte[6]~feeder_combout\ = \rx|sig_detected_byte\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx|sig_detected_byte\(7),
	combout => \rx|sig_detected_byte[6]~feeder_combout\);

-- Location: FF_X32_Y3_N15
\rx|sig_detected_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|sig_detected_byte[6]~feeder_combout\,
	ena => \rx|sig_detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_detected_byte\(6));

-- Location: FF_X32_Y3_N27
\rx|sig_detected_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \rx|sig_detected_byte\(6),
	sload => VCC,
	ena => \rx|sig_detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_detected_byte\(5));

-- Location: FF_X32_Y3_N7
\rx|sig_detected_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \rx|sig_detected_byte\(5),
	sload => VCC,
	ena => \rx|sig_detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_detected_byte\(4));

-- Location: LCCOMB_X32_Y3_N2
\rx|sig_detected_byte[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_detected_byte[3]~feeder_combout\ = \rx|sig_detected_byte\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx|sig_detected_byte\(4),
	combout => \rx|sig_detected_byte[3]~feeder_combout\);

-- Location: FF_X32_Y3_N3
\rx|sig_detected_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|sig_detected_byte[3]~feeder_combout\,
	ena => \rx|sig_detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_detected_byte\(3));

-- Location: LCCOMB_X32_Y3_N22
\rx|sig_detected_byte[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_detected_byte[2]~feeder_combout\ = \rx|sig_detected_byte\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx|sig_detected_byte\(3),
	combout => \rx|sig_detected_byte[2]~feeder_combout\);

-- Location: FF_X32_Y3_N23
\rx|sig_detected_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|sig_detected_byte[2]~feeder_combout\,
	ena => \rx|sig_detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_detected_byte\(2));

-- Location: FF_X32_Y3_N19
\rx|sig_detected_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \rx|sig_detected_byte\(2),
	sload => VCC,
	ena => \rx|sig_detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_detected_byte\(1));

-- Location: LCCOMB_X32_Y3_N30
\rx|sig_detected_byte[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_detected_byte[0]~feeder_combout\ = \rx|sig_detected_byte\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx|sig_detected_byte\(1),
	combout => \rx|sig_detected_byte[0]~feeder_combout\);

-- Location: FF_X32_Y3_N31
\rx|sig_detected_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|sig_detected_byte[0]~feeder_combout\,
	ena => \rx|sig_detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_detected_byte\(0));

-- Location: LCCOMB_X34_Y3_N6
\rx|detected_byte[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|detected_byte[7]~0_combout\ = (\resetn~input_o\ & \rx|state_rx.s4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~input_o\,
	datad => \rx|state_rx.s4~q\,
	combout => \rx|detected_byte[7]~0_combout\);

-- Location: FF_X32_Y3_N21
\rx|detected_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \rx|sig_detected_byte\(0),
	sload => VCC,
	ena => \rx|detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|detected_byte\(0));

-- Location: LCCOMB_X34_Y3_N8
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

-- Location: FF_X34_Y3_N9
\rx|sig_cnt_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|sig_cnt_address[0]~12_combout\,
	ena => \rx|detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_cnt_address\(0));

-- Location: LCCOMB_X34_Y3_N0
\rx|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector10~0_combout\ = (\rx|state_rx.s2~q\ & \rx|sig_cnt_address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|state_rx.s2~q\,
	datac => \rx|sig_cnt_address\(0),
	combout => \rx|Selector10~0_combout\);

-- Location: FF_X34_Y1_N19
\rx|main_rx:var_trns_cntr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~36_combout\,
	clrn => \resetn~input_o\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[18]~q\);

-- Location: LCCOMB_X34_Y2_N14
\rx|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add1~0_combout\ = \rx|main_rx:var_trns_cntr[0]~q\ $ (VCC)
-- \rx|Add1~1\ = CARRY(\rx|main_rx:var_trns_cntr[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx|main_rx:var_trns_cntr[0]~q\,
	datad => VCC,
	combout => \rx|Add1~0_combout\,
	cout => \rx|Add1~1\);

-- Location: FF_X34_Y2_N15
\rx|main_rx:var_trns_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~0_combout\,
	clrn => \resetn~input_o\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[0]~q\);

-- Location: LCCOMB_X34_Y2_N16
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

-- Location: FF_X34_Y2_N17
\rx|main_rx:var_trns_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~2_combout\,
	clrn => \resetn~input_o\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[1]~q\);

-- Location: LCCOMB_X34_Y2_N18
\rx|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add1~4_combout\ = (\rx|main_rx:var_trns_cntr[2]~q\ & (\rx|Add1~3\ $ (GND))) # (!\rx|main_rx:var_trns_cntr[2]~q\ & (!\rx|Add1~3\ & VCC))
-- \rx|Add1~5\ = CARRY((\rx|main_rx:var_trns_cntr[2]~q\ & !\rx|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx|main_rx:var_trns_cntr[2]~q\,
	datad => VCC,
	cin => \rx|Add1~3\,
	combout => \rx|Add1~4_combout\,
	cout => \rx|Add1~5\);

-- Location: FF_X34_Y2_N19
\rx|main_rx:var_trns_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~4_combout\,
	clrn => \resetn~input_o\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[2]~q\);

-- Location: LCCOMB_X34_Y2_N20
\rx|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add1~6_combout\ = (\rx|main_rx:var_trns_cntr[3]~q\ & (!\rx|Add1~5\)) # (!\rx|main_rx:var_trns_cntr[3]~q\ & ((\rx|Add1~5\) # (GND)))
-- \rx|Add1~7\ = CARRY((!\rx|Add1~5\) # (!\rx|main_rx:var_trns_cntr[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx|main_rx:var_trns_cntr[3]~q\,
	datad => VCC,
	cin => \rx|Add1~5\,
	combout => \rx|Add1~6_combout\,
	cout => \rx|Add1~7\);

-- Location: FF_X34_Y2_N21
\rx|main_rx:var_trns_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~6_combout\,
	clrn => \resetn~input_o\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[3]~q\);

-- Location: LCCOMB_X34_Y2_N22
\rx|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add1~8_combout\ = (\rx|main_rx:var_trns_cntr[4]~q\ & (\rx|Add1~7\ $ (GND))) # (!\rx|main_rx:var_trns_cntr[4]~q\ & (!\rx|Add1~7\ & VCC))
-- \rx|Add1~9\ = CARRY((\rx|main_rx:var_trns_cntr[4]~q\ & !\rx|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx|main_rx:var_trns_cntr[4]~q\,
	datad => VCC,
	cin => \rx|Add1~7\,
	combout => \rx|Add1~8_combout\,
	cout => \rx|Add1~9\);

-- Location: FF_X34_Y2_N23
\rx|main_rx:var_trns_cntr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~8_combout\,
	clrn => \resetn~input_o\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[4]~q\);

-- Location: LCCOMB_X34_Y2_N24
\rx|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add1~10_combout\ = (\rx|main_rx:var_trns_cntr[5]~q\ & (!\rx|Add1~9\)) # (!\rx|main_rx:var_trns_cntr[5]~q\ & ((\rx|Add1~9\) # (GND)))
-- \rx|Add1~11\ = CARRY((!\rx|Add1~9\) # (!\rx|main_rx:var_trns_cntr[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx|main_rx:var_trns_cntr[5]~q\,
	datad => VCC,
	cin => \rx|Add1~9\,
	combout => \rx|Add1~10_combout\,
	cout => \rx|Add1~11\);

-- Location: FF_X34_Y2_N25
\rx|main_rx:var_trns_cntr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~10_combout\,
	clrn => \resetn~input_o\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[5]~q\);

-- Location: LCCOMB_X34_Y2_N26
\rx|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add1~12_combout\ = (\rx|main_rx:var_trns_cntr[6]~q\ & (\rx|Add1~11\ $ (GND))) # (!\rx|main_rx:var_trns_cntr[6]~q\ & (!\rx|Add1~11\ & VCC))
-- \rx|Add1~13\ = CARRY((\rx|main_rx:var_trns_cntr[6]~q\ & !\rx|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx|main_rx:var_trns_cntr[6]~q\,
	datad => VCC,
	cin => \rx|Add1~11\,
	combout => \rx|Add1~12_combout\,
	cout => \rx|Add1~13\);

-- Location: FF_X34_Y2_N27
\rx|main_rx:var_trns_cntr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~12_combout\,
	clrn => \resetn~input_o\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[6]~q\);

-- Location: LCCOMB_X34_Y2_N28
\rx|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add1~14_combout\ = (\rx|main_rx:var_trns_cntr[7]~q\ & (!\rx|Add1~13\)) # (!\rx|main_rx:var_trns_cntr[7]~q\ & ((\rx|Add1~13\) # (GND)))
-- \rx|Add1~15\ = CARRY((!\rx|Add1~13\) # (!\rx|main_rx:var_trns_cntr[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx|main_rx:var_trns_cntr[7]~q\,
	datad => VCC,
	cin => \rx|Add1~13\,
	combout => \rx|Add1~14_combout\,
	cout => \rx|Add1~15\);

-- Location: FF_X34_Y2_N29
\rx|main_rx:var_trns_cntr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~14_combout\,
	clrn => \resetn~input_o\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[7]~q\);

-- Location: LCCOMB_X34_Y2_N30
\rx|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add1~16_combout\ = (\rx|main_rx:var_trns_cntr[8]~q\ & (\rx|Add1~15\ $ (GND))) # (!\rx|main_rx:var_trns_cntr[8]~q\ & (!\rx|Add1~15\ & VCC))
-- \rx|Add1~17\ = CARRY((\rx|main_rx:var_trns_cntr[8]~q\ & !\rx|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx|main_rx:var_trns_cntr[8]~q\,
	datad => VCC,
	cin => \rx|Add1~15\,
	combout => \rx|Add1~16_combout\,
	cout => \rx|Add1~17\);

-- Location: FF_X34_Y2_N31
\rx|main_rx:var_trns_cntr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~16_combout\,
	clrn => \resetn~input_o\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[8]~q\);

-- Location: LCCOMB_X34_Y1_N0
\rx|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add1~18_combout\ = (\rx|main_rx:var_trns_cntr[9]~q\ & (!\rx|Add1~17\)) # (!\rx|main_rx:var_trns_cntr[9]~q\ & ((\rx|Add1~17\) # (GND)))
-- \rx|Add1~19\ = CARRY((!\rx|Add1~17\) # (!\rx|main_rx:var_trns_cntr[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx|main_rx:var_trns_cntr[9]~q\,
	datad => VCC,
	cin => \rx|Add1~17\,
	combout => \rx|Add1~18_combout\,
	cout => \rx|Add1~19\);

-- Location: FF_X34_Y1_N1
\rx|main_rx:var_trns_cntr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~18_combout\,
	clrn => \resetn~input_o\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[9]~q\);

-- Location: LCCOMB_X34_Y1_N2
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

-- Location: FF_X34_Y1_N3
\rx|main_rx:var_trns_cntr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~20_combout\,
	clrn => \resetn~input_o\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[10]~q\);

-- Location: LCCOMB_X34_Y1_N4
\rx|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add1~22_combout\ = (\rx|main_rx:var_trns_cntr[11]~q\ & (!\rx|Add1~21\)) # (!\rx|main_rx:var_trns_cntr[11]~q\ & ((\rx|Add1~21\) # (GND)))
-- \rx|Add1~23\ = CARRY((!\rx|Add1~21\) # (!\rx|main_rx:var_trns_cntr[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx|main_rx:var_trns_cntr[11]~q\,
	datad => VCC,
	cin => \rx|Add1~21\,
	combout => \rx|Add1~22_combout\,
	cout => \rx|Add1~23\);

-- Location: FF_X34_Y1_N5
\rx|main_rx:var_trns_cntr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~22_combout\,
	clrn => \resetn~input_o\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[11]~q\);

-- Location: LCCOMB_X34_Y1_N6
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

-- Location: FF_X34_Y1_N7
\rx|main_rx:var_trns_cntr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~24_combout\,
	clrn => \resetn~input_o\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[12]~q\);

-- Location: LCCOMB_X34_Y1_N8
\rx|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add1~26_combout\ = (\rx|main_rx:var_trns_cntr[13]~q\ & (!\rx|Add1~25\)) # (!\rx|main_rx:var_trns_cntr[13]~q\ & ((\rx|Add1~25\) # (GND)))
-- \rx|Add1~27\ = CARRY((!\rx|Add1~25\) # (!\rx|main_rx:var_trns_cntr[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx|main_rx:var_trns_cntr[13]~q\,
	datad => VCC,
	cin => \rx|Add1~25\,
	combout => \rx|Add1~26_combout\,
	cout => \rx|Add1~27\);

-- Location: FF_X34_Y1_N9
\rx|main_rx:var_trns_cntr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~26_combout\,
	clrn => \resetn~input_o\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[13]~q\);

-- Location: LCCOMB_X34_Y1_N10
\rx|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add1~28_combout\ = (\rx|main_rx:var_trns_cntr[14]~q\ & (\rx|Add1~27\ $ (GND))) # (!\rx|main_rx:var_trns_cntr[14]~q\ & (!\rx|Add1~27\ & VCC))
-- \rx|Add1~29\ = CARRY((\rx|main_rx:var_trns_cntr[14]~q\ & !\rx|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx|main_rx:var_trns_cntr[14]~q\,
	datad => VCC,
	cin => \rx|Add1~27\,
	combout => \rx|Add1~28_combout\,
	cout => \rx|Add1~29\);

-- Location: FF_X34_Y1_N11
\rx|main_rx:var_trns_cntr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~28_combout\,
	clrn => \resetn~input_o\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[14]~q\);

-- Location: LCCOMB_X34_Y1_N12
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

-- Location: FF_X34_Y1_N13
\rx|main_rx:var_trns_cntr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~30_combout\,
	clrn => \resetn~input_o\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[15]~q\);

-- Location: LCCOMB_X34_Y1_N14
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

-- Location: FF_X34_Y1_N15
\rx|main_rx:var_trns_cntr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~32_combout\,
	clrn => \resetn~input_o\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[16]~q\);

-- Location: LCCOMB_X34_Y1_N16
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

-- Location: FF_X34_Y1_N17
\rx|main_rx:var_trns_cntr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|Add1~34_combout\,
	clrn => \resetn~input_o\,
	ena => \rx|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|main_rx:var_trns_cntr[17]~q\);

-- Location: LCCOMB_X34_Y1_N18
\rx|Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Add1~36_combout\ = \rx|Add1~35\ $ (!\rx|main_rx:var_trns_cntr[18]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rx|main_rx:var_trns_cntr[18]~q\,
	cin => \rx|Add1~35\,
	combout => \rx|Add1~36_combout\);

-- Location: LCCOMB_X34_Y1_N24
\rx|sig_ram_address[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_ram_address[0]~6_combout\ = (\rx|Add1~30_combout\ & !\rx|Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx|Add1~30_combout\,
	datac => \rx|Add1~28_combout\,
	combout => \rx|sig_ram_address[0]~6_combout\);

-- Location: LCCOMB_X34_Y1_N26
\rx|sig_ram_address[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_ram_address[0]~7_combout\ = (\rx|Add1~36_combout\ & (\rx|sig_ram_address[0]~6_combout\ & (\rx|Add1~32_combout\ & \rx|Add1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|Add1~36_combout\,
	datab => \rx|sig_ram_address[0]~6_combout\,
	datac => \rx|Add1~32_combout\,
	datad => \rx|Add1~34_combout\,
	combout => \rx|sig_ram_address[0]~7_combout\);

-- Location: LCCOMB_X34_Y2_N2
\rx|sig_ram_address[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_ram_address[0]~2_combout\ = (!\rx|Add1~6_combout\ & (!\rx|Add1~8_combout\ & (!\rx|Add1~4_combout\ & \rx|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|Add1~6_combout\,
	datab => \rx|Add1~8_combout\,
	datac => \rx|Add1~4_combout\,
	datad => \rx|Add1~10_combout\,
	combout => \rx|sig_ram_address[0]~2_combout\);

-- Location: LCCOMB_X34_Y2_N10
\rx|sig_ram_address[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_ram_address[0]~1_combout\ = (!\rx|Add1~0_combout\ & (\rx|sig_bouncer_bit~q\ & (!\rx|Add1~2_combout\ & !\rx|state_rx.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|Add1~0_combout\,
	datab => \rx|sig_bouncer_bit~q\,
	datac => \rx|Add1~2_combout\,
	datad => \rx|state_rx.s0~q\,
	combout => \rx|sig_ram_address[0]~1_combout\);

-- Location: LCCOMB_X34_Y2_N6
\rx|sig_ram_address[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_ram_address[0]~3_combout\ = (\rx|sig_ram_address[0]~2_combout\ & (!\rx|Add1~14_combout\ & (!\rx|Add1~12_combout\ & \rx|sig_ram_address[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|sig_ram_address[0]~2_combout\,
	datab => \rx|Add1~14_combout\,
	datac => \rx|Add1~12_combout\,
	datad => \rx|sig_ram_address[0]~1_combout\,
	combout => \rx|sig_ram_address[0]~3_combout\);

-- Location: LCCOMB_X34_Y1_N28
\rx|sig_ram_address[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_ram_address[0]~4_combout\ = (\rx|Add1~16_combout\ & (!\rx|Add1~18_combout\ & (\rx|sig_ram_address[0]~3_combout\ & !\rx|Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|Add1~16_combout\,
	datab => \rx|Add1~18_combout\,
	datac => \rx|sig_ram_address[0]~3_combout\,
	datad => \rx|Add1~20_combout\,
	combout => \rx|sig_ram_address[0]~4_combout\);

-- Location: LCCOMB_X34_Y1_N30
\rx|sig_ram_address[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_ram_address[0]~5_combout\ = (\rx|Add1~26_combout\ & (\rx|sig_ram_address[0]~4_combout\ & (!\rx|Add1~22_combout\ & !\rx|Add1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|Add1~26_combout\,
	datab => \rx|sig_ram_address[0]~4_combout\,
	datac => \rx|Add1~22_combout\,
	datad => \rx|Add1~24_combout\,
	combout => \rx|sig_ram_address[0]~5_combout\);

-- Location: LCCOMB_X34_Y3_N10
\rx|sig_ram_address[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_ram_address[3]~0_combout\ = (!\rx|sig_data_bit~q\ & \rx|state_rx.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx|sig_data_bit~q\,
	datad => \rx|state_rx.s2~q\,
	combout => \rx|sig_ram_address[3]~0_combout\);

-- Location: LCCOMB_X34_Y1_N20
\rx|sig_ram_address[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|sig_ram_address[0]~8_combout\ = (\resetn~input_o\ & ((\rx|sig_ram_address[3]~0_combout\) # ((\rx|sig_ram_address[0]~7_combout\ & \rx|sig_ram_address[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|sig_ram_address[0]~7_combout\,
	datab => \resetn~input_o\,
	datac => \rx|sig_ram_address[0]~5_combout\,
	datad => \rx|sig_ram_address[3]~0_combout\,
	combout => \rx|sig_ram_address[0]~8_combout\);

-- Location: FF_X34_Y3_N1
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

-- Location: LCCOMB_X34_Y3_N22
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

-- Location: FF_X34_Y3_N23
\rx|sig_cnt_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|sig_cnt_address[1]~4_combout\,
	ena => \rx|detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_cnt_address\(1));

-- Location: LCCOMB_X34_Y3_N18
\rx|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector9~0_combout\ = (\rx|sig_cnt_address\(1) & \rx|state_rx.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx|sig_cnt_address\(1),
	datad => \rx|state_rx.s2~q\,
	combout => \rx|Selector9~0_combout\);

-- Location: FF_X34_Y3_N19
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

-- Location: LCCOMB_X34_Y3_N24
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

-- Location: FF_X34_Y3_N25
\rx|sig_cnt_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|sig_cnt_address[2]~6_combout\,
	ena => \rx|detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_cnt_address\(2));

-- Location: LCCOMB_X34_Y4_N16
\rx|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector8~0_combout\ = (\rx|sig_cnt_address\(2) & \rx|state_rx.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx|sig_cnt_address\(2),
	datac => \rx|state_rx.s2~q\,
	combout => \rx|Selector8~0_combout\);

-- Location: FF_X34_Y4_N17
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

-- Location: LCCOMB_X34_Y3_N26
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

-- Location: FF_X34_Y3_N27
\rx|sig_cnt_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|sig_cnt_address[3]~8_combout\,
	ena => \rx|detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_cnt_address\(3));

-- Location: LCCOMB_X34_Y3_N4
\rx|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector7~0_combout\ = (\rx|sig_cnt_address\(3) & \rx|state_rx.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx|sig_cnt_address\(3),
	datad => \rx|state_rx.s2~q\,
	combout => \rx|Selector7~0_combout\);

-- Location: FF_X34_Y3_N5
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

-- Location: LCCOMB_X34_Y3_N28
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

-- Location: FF_X34_Y3_N29
\rx|sig_cnt_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|sig_cnt_address[4]~10_combout\,
	ena => \rx|detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|sig_cnt_address\(4));

-- Location: LCCOMB_X34_Y4_N10
\rx|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector6~0_combout\ = (\rx|state_rx.s2~q\ & \rx|sig_cnt_address\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx|state_rx.s2~q\,
	datad => \rx|sig_cnt_address\(4),
	combout => \rx|Selector6~0_combout\);

-- Location: FF_X34_Y4_N11
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

-- Location: LCCOMB_X35_Y4_N30
\biphase|sig_toggle~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_toggle~0_combout\ = (!\biphase|sig_read_address_cnt\(3) & (!\biphase|sig_read_address_cnt\(0) & (\biphase|state_mini.s4a~q\ & !\biphase|sig_read_address_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \biphase|sig_read_address_cnt\(3),
	datab => \biphase|sig_read_address_cnt\(0),
	datac => \biphase|state_mini.s4a~q\,
	datad => \biphase|sig_read_address_cnt\(4),
	combout => \biphase|sig_toggle~0_combout\);

-- Location: LCCOMB_X35_Y4_N2
\biphase|sig_toggle~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_toggle~1_combout\ = \biphase|sig_toggle~q\ $ (((\biphase|sig_toggle~0_combout\ & (!\biphase|sig_read_address_cnt\(1) & !\biphase|sig_read_address_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \biphase|sig_toggle~0_combout\,
	datab => \biphase|sig_read_address_cnt\(1),
	datac => \biphase|sig_toggle~q\,
	datad => \biphase|sig_read_address_cnt\(2),
	combout => \biphase|sig_toggle~1_combout\);

-- Location: FF_X35_Y4_N3
\biphase|sig_toggle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_toggle~1_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_toggle~q\);

-- Location: LCCOMB_X34_Y4_N12
\rx|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|Selector5~0_combout\ = (\rx|state_rx.s2~q\ & !\biphase|sig_toggle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx|state_rx.s2~q\,
	datad => \biphase|sig_toggle~q\,
	combout => \rx|Selector5~0_combout\);

-- Location: FF_X34_Y4_N13
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

-- Location: LCCOMB_X34_Y4_N14
\biphase|sig_read_address[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_read_address[0]~feeder_combout\ = \biphase|sig_read_address_cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \biphase|sig_read_address_cnt\(0),
	combout => \biphase|sig_read_address[0]~feeder_combout\);

-- Location: LCCOMB_X35_Y4_N14
\biphase|sig_read_address[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_read_address[0]~0_combout\ = (\biphase|state_mini.s5a~q\ & \resetn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \biphase|state_mini.s5a~q\,
	datad => \resetn~input_o\,
	combout => \biphase|sig_read_address[0]~0_combout\);

-- Location: FF_X34_Y4_N15
\biphase|sig_read_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_read_address[0]~feeder_combout\,
	ena => \biphase|sig_read_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_read_address\(0));

-- Location: LCCOMB_X34_Y4_N24
\biphase|sig_read_address[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_read_address[1]~feeder_combout\ = \biphase|sig_read_address_cnt\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \biphase|sig_read_address_cnt\(1),
	combout => \biphase|sig_read_address[1]~feeder_combout\);

-- Location: FF_X34_Y4_N25
\biphase|sig_read_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_read_address[1]~feeder_combout\,
	ena => \biphase|sig_read_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_read_address\(1));

-- Location: FF_X34_Y4_N19
\biphase|sig_read_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \biphase|sig_read_address_cnt\(2),
	sload => VCC,
	ena => \biphase|sig_read_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_read_address\(2));

-- Location: LCCOMB_X34_Y4_N4
\biphase|sig_read_address[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_read_address[3]~feeder_combout\ = \biphase|sig_read_address_cnt\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \biphase|sig_read_address_cnt\(3),
	combout => \biphase|sig_read_address[3]~feeder_combout\);

-- Location: FF_X34_Y4_N5
\biphase|sig_read_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_read_address[3]~feeder_combout\,
	ena => \biphase|sig_read_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_read_address\(3));

-- Location: LCCOMB_X34_Y4_N22
\biphase|sig_read_address[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_read_address[4]~feeder_combout\ = \biphase|sig_read_address_cnt\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \biphase|sig_read_address_cnt\(4),
	combout => \biphase|sig_read_address[4]~feeder_combout\);

-- Location: FF_X34_Y4_N23
\biphase|sig_read_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_read_address[4]~feeder_combout\,
	ena => \biphase|sig_read_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_read_address\(4));

-- Location: LCCOMB_X34_Y4_N8
\biphase|sig_read_address[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_read_address[5]~feeder_combout\ = \biphase|sig_toggle~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \biphase|sig_toggle~q\,
	combout => \biphase|sig_read_address[5]~feeder_combout\);

-- Location: FF_X34_Y4_N9
\biphase|sig_read_address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_read_address[5]~feeder_combout\,
	ena => \biphase|sig_read_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_read_address\(5));

-- Location: LCCOMB_X32_Y3_N8
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

-- Location: FF_X32_Y3_N9
\rx|detected_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|detected_byte[1]~feeder_combout\,
	ena => \rx|detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|detected_byte\(1));

-- Location: FF_X32_Y3_N13
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
	ena => \rx|detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|detected_byte\(2));

-- Location: LCCOMB_X32_Y3_N0
\rx|detected_byte[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|detected_byte[3]~feeder_combout\ = \rx|sig_detected_byte\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx|sig_detected_byte\(3),
	combout => \rx|detected_byte[3]~feeder_combout\);

-- Location: FF_X32_Y3_N1
\rx|detected_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|detected_byte[3]~feeder_combout\,
	ena => \rx|detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|detected_byte\(3));

-- Location: LCCOMB_X32_Y3_N28
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

-- Location: FF_X32_Y3_N29
\rx|detected_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|detected_byte[4]~feeder_combout\,
	ena => \rx|detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|detected_byte\(4));

-- Location: FF_X32_Y3_N25
\rx|detected_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \rx|sig_detected_byte\(5),
	sload => VCC,
	ena => \rx|detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|detected_byte\(5));

-- Location: FF_X32_Y3_N5
\rx|detected_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \rx|sig_detected_byte\(6),
	sload => VCC,
	ena => \rx|detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|detected_byte\(6));

-- Location: LCCOMB_X32_Y3_N16
\rx|detected_byte[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx|detected_byte[7]~feeder_combout\ = \rx|sig_detected_byte\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx|sig_detected_byte\(7),
	combout => \rx|detected_byte[7]~feeder_combout\);

-- Location: FF_X32_Y3_N17
\rx|detected_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \rx|detected_byte[7]~feeder_combout\,
	ena => \rx|detected_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx|detected_byte\(7));

-- Location: M9K_X33_Y4_N0
\memory|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
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
	portbre => \biphase|rd~combout\,
	clk0 => \sysclk~inputclkctrl_outclk\,
	clk1 => \sysclk~inputclkctrl_outclk\,
	ena0 => \rx|sig_wr_ram~q\,
	ena1 => \memory|altsyncram_component|auto_generated|ram_block1a0~0_combout\,
	portadatain => \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \memory|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X32_Y4_N24
\biphase|sig_shift_data~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_shift_data~7_combout\ = (\biphase|sig_read~q\ & \memory|altsyncram_component|auto_generated|q_b\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \biphase|sig_read~q\,
	datac => \memory|altsyncram_component|auto_generated|q_b\(0),
	combout => \biphase|sig_shift_data~7_combout\);

-- Location: FF_X32_Y4_N25
\biphase|sig_shift_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_shift_data~7_combout\,
	clrn => \resetn~input_o\,
	ena => \biphase|sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_shift_data\(0));

-- Location: LCCOMB_X32_Y4_N10
\biphase|sig_shift_data~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_shift_data~6_combout\ = (\biphase|sig_read~q\ & ((\memory|altsyncram_component|auto_generated|q_b\(1)))) # (!\biphase|sig_read~q\ & (\biphase|sig_shift_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \biphase|sig_read~q\,
	datab => \biphase|sig_shift_data\(0),
	datac => \memory|altsyncram_component|auto_generated|q_b\(1),
	combout => \biphase|sig_shift_data~6_combout\);

-- Location: FF_X32_Y4_N11
\biphase|sig_shift_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_shift_data~6_combout\,
	clrn => \resetn~input_o\,
	ena => \biphase|sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_shift_data\(1));

-- Location: LCCOMB_X32_Y4_N16
\biphase|sig_shift_data~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_shift_data~5_combout\ = (\biphase|sig_read~q\ & ((\memory|altsyncram_component|auto_generated|q_b\(2)))) # (!\biphase|sig_read~q\ & (\biphase|sig_shift_data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \biphase|sig_read~q\,
	datac => \biphase|sig_shift_data\(1),
	datad => \memory|altsyncram_component|auto_generated|q_b\(2),
	combout => \biphase|sig_shift_data~5_combout\);

-- Location: FF_X32_Y4_N17
\biphase|sig_shift_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_shift_data~5_combout\,
	clrn => \resetn~input_o\,
	ena => \biphase|sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_shift_data\(2));

-- Location: LCCOMB_X32_Y4_N14
\biphase|sig_shift_data~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_shift_data~4_combout\ = (\biphase|sig_read~q\ & ((\memory|altsyncram_component|auto_generated|q_b\(3)))) # (!\biphase|sig_read~q\ & (\biphase|sig_shift_data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \biphase|sig_read~q\,
	datab => \biphase|sig_shift_data\(2),
	datac => \memory|altsyncram_component|auto_generated|q_b\(3),
	combout => \biphase|sig_shift_data~4_combout\);

-- Location: FF_X32_Y4_N15
\biphase|sig_shift_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_shift_data~4_combout\,
	clrn => \resetn~input_o\,
	ena => \biphase|sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_shift_data\(3));

-- Location: LCCOMB_X32_Y4_N8
\biphase|sig_shift_data~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_shift_data~3_combout\ = (\biphase|sig_read~q\ & ((\memory|altsyncram_component|auto_generated|q_b\(4)))) # (!\biphase|sig_read~q\ & (\biphase|sig_shift_data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \biphase|sig_read~q\,
	datac => \biphase|sig_shift_data\(3),
	datad => \memory|altsyncram_component|auto_generated|q_b\(4),
	combout => \biphase|sig_shift_data~3_combout\);

-- Location: FF_X32_Y4_N9
\biphase|sig_shift_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_shift_data~3_combout\,
	clrn => \resetn~input_o\,
	ena => \biphase|sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_shift_data\(4));

-- Location: LCCOMB_X32_Y4_N30
\biphase|sig_shift_data~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_shift_data~2_combout\ = (\biphase|sig_read~q\ & (\memory|altsyncram_component|auto_generated|q_b\(5))) # (!\biphase|sig_read~q\ & ((\biphase|sig_shift_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \biphase|sig_read~q\,
	datab => \memory|altsyncram_component|auto_generated|q_b\(5),
	datad => \biphase|sig_shift_data\(4),
	combout => \biphase|sig_shift_data~2_combout\);

-- Location: FF_X32_Y4_N31
\biphase|sig_shift_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_shift_data~2_combout\,
	clrn => \resetn~input_o\,
	ena => \biphase|sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_shift_data\(5));

-- Location: LCCOMB_X32_Y4_N20
\biphase|sig_shift_data~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_shift_data~1_combout\ = (\biphase|sig_read~q\ & ((\memory|altsyncram_component|auto_generated|q_b\(6)))) # (!\biphase|sig_read~q\ & (\biphase|sig_shift_data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \biphase|sig_shift_data\(5),
	datac => \memory|altsyncram_component|auto_generated|q_b\(6),
	datad => \biphase|sig_read~q\,
	combout => \biphase|sig_shift_data~1_combout\);

-- Location: FF_X32_Y4_N21
\biphase|sig_shift_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_shift_data~1_combout\,
	clrn => \resetn~input_o\,
	ena => \biphase|sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_shift_data\(6));

-- Location: LCCOMB_X32_Y4_N0
\biphase|sig_shift_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_shift_data~0_combout\ = (\biphase|sig_read~q\ & ((\memory|altsyncram_component|auto_generated|q_b\(7)))) # (!\biphase|sig_read~q\ & (\biphase|sig_shift_data\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \biphase|sig_read~q\,
	datab => \biphase|sig_shift_data\(6),
	datad => \memory|altsyncram_component|auto_generated|q_b\(7),
	combout => \biphase|sig_shift_data~0_combout\);

-- Location: FF_X32_Y4_N1
\biphase|sig_shift_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_shift_data~0_combout\,
	clrn => \resetn~input_o\,
	ena => \biphase|sig_main_rising_edge~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_shift_data\(7));

-- Location: LCCOMB_X32_Y4_N22
\biphase|sig_BiPhase_tx_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \biphase|sig_BiPhase_tx_out~0_combout\ = \biphase|sig_BiPhase_tx_out~q\ $ (((\biphase|sig_cut~q\ & ((!\biphase|sig_cut_not~q\))) # (!\biphase|sig_cut~q\ & (!\biphase|sig_shift_data\(7) & \biphase|sig_cut_not~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \biphase|sig_cut~q\,
	datab => \biphase|sig_shift_data\(7),
	datac => \biphase|sig_BiPhase_tx_out~q\,
	datad => \biphase|sig_cut_not~q\,
	combout => \biphase|sig_BiPhase_tx_out~0_combout\);

-- Location: FF_X32_Y4_N23
\biphase|sig_BiPhase_tx_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \biphase|sig_BiPhase_tx_out~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \biphase|sig_BiPhase_tx_out~q\);

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

ww_uart_tx_triger <= \uart_tx_triger~output_o\;

ww_BiPhase_tx_out <= \BiPhase_tx_out~output_o\;
END structure;


