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

-- DATE "09/06/2023 15:59:00"

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

ENTITY 	Uart_rx IS
    PORT (
	resetn : IN std_logic;
	sysclk : IN std_logic;
	toggle : IN std_logic;
	detected_bit : IN std_logic;
	wr_ram : OUT std_logic;
	ram_address : OUT std_logic_vector(5 DOWNTO 0);
	detected_byte : OUT std_logic_vector(7 DOWNTO 0)
	);
END Uart_rx;

-- Design Ports Information
-- wr_ram	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_address[0]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_address[1]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_address[2]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_address[3]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_address[4]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_address[5]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- detected_byte[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- detected_byte[1]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- detected_byte[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- detected_byte[3]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- detected_byte[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- detected_byte[5]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- detected_byte[6]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- detected_byte[7]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sysclk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- toggle	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- detected_bit	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Uart_rx IS
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
SIGNAL ww_toggle : std_logic;
SIGNAL ww_detected_bit : std_logic;
SIGNAL ww_wr_ram : std_logic;
SIGNAL ww_ram_address : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_detected_byte : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \sysclk~input_o\ : std_logic;
SIGNAL \sysclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \baud_rate_clk:var_cntr[5]~q\ : std_logic;
SIGNAL \baud_rate_clk:var_cntr[1]~q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \baud_rate_clk:var_cntr[0]~q\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \var_cntr~0_combout\ : std_logic;
SIGNAL \baud_rate_clk:var_cntr[2]~q\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \baud_rate_clk:var_cntr[3]~q\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \baud_rate_clk:var_cntr[6]~q\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \var_cntr~1_combout\ : std_logic;
SIGNAL \baud_rate_clk:var_cntr[4]~q\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \sig_baudx32~0_combout\ : std_logic;
SIGNAL \resetn~inputclkctrl_outclk\ : std_logic;
SIGNAL \sig_baudx32~q\ : std_logic;
SIGNAL \signal_A_q~q\ : std_logic;
SIGNAL \signal_A_q_not~q\ : std_logic;
SIGNAL \main_rx:var_clk_cntr[0]~0_combout\ : std_logic;
SIGNAL \Add2~3_combout\ : std_logic;
SIGNAL \main_rx:var_clk_cntr[4]~q\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \detected_bit~input_o\ : std_logic;
SIGNAL \sig_bit[0]~feeder_combout\ : std_logic;
SIGNAL \sig_bit[1]~feeder_combout\ : std_logic;
SIGNAL \sig_bit[2]~feeder_combout\ : std_logic;
SIGNAL \sig_bouncer_bit~0_combout\ : std_logic;
SIGNAL \sig_bouncer_bit~q\ : std_logic;
SIGNAL \state_rx~16_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \state_rx.s1~q\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \state_rx.s2~q\ : std_logic;
SIGNAL \sig_data_bit~0_combout\ : std_logic;
SIGNAL \sig_data_bit~1_combout\ : std_logic;
SIGNAL \sig_data_bit~q\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \state_rx.s0~q\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \main_rx:var_bit_cntr[3]~0_combout\ : std_logic;
SIGNAL \main_rx:var_bit_cntr[0]~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \main_rx:var_bit_cntr[1]~q\ : std_logic;
SIGNAL \state_rx~19_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \main_rx:var_bit_cntr[2]~q\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \main_rx:var_bit_cntr[3]~q\ : std_logic;
SIGNAL \state_rx~17_combout\ : std_logic;
SIGNAL \state_rx~20_combout\ : std_logic;
SIGNAL \Selector14~2_combout\ : std_logic;
SIGNAL \state_rx.s3~q\ : std_logic;
SIGNAL \main_rx:var_clk_cntr[4]~0_combout\ : std_logic;
SIGNAL \main_rx:var_clk_cntr[0]~q\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \main_rx:var_clk_cntr[1]~q\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \main_rx:var_clk_cntr[2]~q\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \main_rx:var_clk_cntr[3]~q\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \main_rx:var_clk_cntr[5]~q\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \state_rx~18_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \state_rx.s4~q\ : std_logic;
SIGNAL \state_rx.s5~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \sig_wr_ram~q\ : std_logic;
SIGNAL \sig_cnt_address[0]~12_combout\ : std_logic;
SIGNAL \detected_byte[0]~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \main_rx:var_trns_cntr[18]~q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \main_rx:var_trns_cntr[0]~q\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \main_rx:var_trns_cntr[1]~q\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \main_rx:var_trns_cntr[2]~q\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \main_rx:var_trns_cntr[3]~q\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \main_rx:var_trns_cntr[4]~q\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \main_rx:var_trns_cntr[5]~q\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \main_rx:var_trns_cntr[6]~q\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \main_rx:var_trns_cntr[7]~q\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \main_rx:var_trns_cntr[8]~q\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \main_rx:var_trns_cntr[9]~q\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \main_rx:var_trns_cntr[10]~q\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \main_rx:var_trns_cntr[11]~q\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \main_rx:var_trns_cntr[12]~q\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \main_rx:var_trns_cntr[13]~q\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \main_rx:var_trns_cntr[14]~q\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \main_rx:var_trns_cntr[15]~q\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \main_rx:var_trns_cntr[16]~q\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \main_rx:var_trns_cntr[17]~q\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \sig_ram_address[0]~4_combout\ : std_logic;
SIGNAL \sig_ram_address[0]~0_combout\ : std_logic;
SIGNAL \sig_ram_address[0]~5_combout\ : std_logic;
SIGNAL \sig_ram_address[0]~1_combout\ : std_logic;
SIGNAL \sig_ram_address[0]~2_combout\ : std_logic;
SIGNAL \sig_ram_address[0]~3_combout\ : std_logic;
SIGNAL \sig_ram_address[0]~6_combout\ : std_logic;
SIGNAL \sig_ram_address[0]~7_combout\ : std_logic;
SIGNAL \sig_ram_address[0]~8_combout\ : std_logic;
SIGNAL \sig_cnt_address[1]~4_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \sig_cnt_address[1]~5\ : std_logic;
SIGNAL \sig_cnt_address[2]~6_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \sig_cnt_address[2]~7\ : std_logic;
SIGNAL \sig_cnt_address[3]~8_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \sig_cnt_address[3]~9\ : std_logic;
SIGNAL \sig_cnt_address[4]~10_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \toggle~input_o\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \sig_detected_byte[7]~feeder_combout\ : std_logic;
SIGNAL \sig_detected_byte[0]~0_combout\ : std_logic;
SIGNAL \sig_detected_byte[4]~feeder_combout\ : std_logic;
SIGNAL \sig_detected_byte[3]~feeder_combout\ : std_logic;
SIGNAL \sig_detected_byte[1]~feeder_combout\ : std_logic;
SIGNAL \sig_detected_byte[0]~feeder_combout\ : std_logic;
SIGNAL \detected_byte[0]~reg0feeder_combout\ : std_logic;
SIGNAL \detected_byte[0]~reg0_q\ : std_logic;
SIGNAL \detected_byte[1]~reg0feeder_combout\ : std_logic;
SIGNAL \detected_byte[1]~reg0_q\ : std_logic;
SIGNAL \detected_byte[2]~reg0feeder_combout\ : std_logic;
SIGNAL \detected_byte[2]~reg0_q\ : std_logic;
SIGNAL \detected_byte[3]~reg0_q\ : std_logic;
SIGNAL \detected_byte[4]~reg0feeder_combout\ : std_logic;
SIGNAL \detected_byte[4]~reg0_q\ : std_logic;
SIGNAL \detected_byte[5]~reg0feeder_combout\ : std_logic;
SIGNAL \detected_byte[5]~reg0_q\ : std_logic;
SIGNAL \detected_byte[6]~reg0_q\ : std_logic;
SIGNAL \detected_byte[7]~reg0_q\ : std_logic;
SIGNAL sig_cnt_address : std_logic_vector(4 DOWNTO 0);
SIGNAL sig_ram_address : std_logic_vector(5 DOWNTO 0);
SIGNAL sig_detected_byte : std_logic_vector(7 DOWNTO 0);
SIGNAL sig_bit : std_logic_vector(2 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_resetn <= resetn;
ww_sysclk <= sysclk;
ww_toggle <= toggle;
ww_detected_bit <= detected_bit;
wr_ram <= ww_wr_ram;
ram_address <= ww_ram_address;
detected_byte <= ww_detected_byte;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\resetn~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \resetn~input_o\);

\sysclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sysclk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

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

-- Location: IOOBUF_X26_Y0_N23
\wr_ram~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_wr_ram~q\,
	devoe => ww_devoe,
	o => \wr_ram~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\ram_address[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_ram_address(0),
	devoe => ww_devoe,
	o => \ram_address[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\ram_address[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_ram_address(1),
	devoe => ww_devoe,
	o => \ram_address[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N30
\ram_address[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_ram_address(2),
	devoe => ww_devoe,
	o => \ram_address[2]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\ram_address[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_ram_address(3),
	devoe => ww_devoe,
	o => \ram_address[3]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\ram_address[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_ram_address(4),
	devoe => ww_devoe,
	o => \ram_address[4]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\ram_address[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sig_ram_address(5),
	devoe => ww_devoe,
	o => \ram_address[5]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\detected_byte[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \detected_byte[0]~reg0_q\,
	devoe => ww_devoe,
	o => \detected_byte[0]~output_o\);

-- Location: IOOBUF_X29_Y39_N16
\detected_byte[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \detected_byte[1]~reg0_q\,
	devoe => ww_devoe,
	o => \detected_byte[1]~output_o\);

-- Location: IOOBUF_X31_Y39_N2
\detected_byte[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \detected_byte[2]~reg0_q\,
	devoe => ww_devoe,
	o => \detected_byte[2]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\detected_byte[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \detected_byte[3]~reg0_q\,
	devoe => ww_devoe,
	o => \detected_byte[3]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\detected_byte[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \detected_byte[4]~reg0_q\,
	devoe => ww_devoe,
	o => \detected_byte[4]~output_o\);

-- Location: IOOBUF_X29_Y39_N2
\detected_byte[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \detected_byte[5]~reg0_q\,
	devoe => ww_devoe,
	o => \detected_byte[5]~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\detected_byte[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \detected_byte[6]~reg0_q\,
	devoe => ww_devoe,
	o => \detected_byte[6]~output_o\);

-- Location: IOOBUF_X31_Y39_N30
\detected_byte[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \detected_byte[7]~reg0_q\,
	devoe => ww_devoe,
	o => \detected_byte[7]~output_o\);

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

-- Location: FF_X23_Y17_N21
\baud_rate_clk:var_cntr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_rate_clk:var_cntr[5]~q\);

-- Location: FF_X23_Y17_N13
\baud_rate_clk:var_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_rate_clk:var_cntr[1]~q\);

-- Location: LCCOMB_X23_Y17_N10
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \baud_rate_clk:var_cntr[0]~q\ $ (VCC)
-- \Add0~1\ = CARRY(\baud_rate_clk:var_cntr[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_rate_clk:var_cntr[0]~q\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X23_Y17_N11
\baud_rate_clk:var_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_rate_clk:var_cntr[0]~q\);

-- Location: LCCOMB_X23_Y17_N12
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\baud_rate_clk:var_cntr[1]~q\ & (!\Add0~1\)) # (!\baud_rate_clk:var_cntr[1]~q\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\baud_rate_clk:var_cntr[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_rate_clk:var_cntr[1]~q\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X23_Y17_N30
\var_cntr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \var_cntr~0_combout\ = (\Add0~4_combout\ & !\Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~4_combout\,
	datad => \Equal0~1_combout\,
	combout => \var_cntr~0_combout\);

-- Location: FF_X23_Y17_N31
\baud_rate_clk:var_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \var_cntr~0_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_rate_clk:var_cntr[2]~q\);

-- Location: LCCOMB_X23_Y17_N14
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\baud_rate_clk:var_cntr[2]~q\ & (\Add0~3\ $ (GND))) # (!\baud_rate_clk:var_cntr[2]~q\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\baud_rate_clk:var_cntr[2]~q\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_rate_clk:var_cntr[2]~q\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X23_Y17_N17
\baud_rate_clk:var_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_rate_clk:var_cntr[3]~q\);

-- Location: LCCOMB_X23_Y17_N16
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\baud_rate_clk:var_cntr[3]~q\ & (!\Add0~5\)) # (!\baud_rate_clk:var_cntr[3]~q\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\baud_rate_clk:var_cntr[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_rate_clk:var_cntr[3]~q\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X23_Y17_N24
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Add0~2_combout\ & (!\Add0~0_combout\ & (\Add0~4_combout\ & !\Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~0_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~6_combout\,
	combout => \Equal0~0_combout\);

-- Location: FF_X23_Y17_N23
\baud_rate_clk:var_cntr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_rate_clk:var_cntr[6]~q\);

-- Location: LCCOMB_X23_Y17_N20
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\baud_rate_clk:var_cntr[5]~q\ & (!\Add0~9\)) # (!\baud_rate_clk:var_cntr[5]~q\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\baud_rate_clk:var_cntr[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_rate_clk:var_cntr[5]~q\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X23_Y17_N22
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = \baud_rate_clk:var_cntr[6]~q\ $ (!\Add0~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_rate_clk:var_cntr[6]~q\,
	cin => \Add0~11\,
	combout => \Add0~12_combout\);

-- Location: LCCOMB_X23_Y17_N18
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\baud_rate_clk:var_cntr[4]~q\ & (\Add0~7\ $ (GND))) # (!\baud_rate_clk:var_cntr[4]~q\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\baud_rate_clk:var_cntr[4]~q\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_rate_clk:var_cntr[4]~q\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X23_Y17_N8
\var_cntr~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \var_cntr~1_combout\ = (\Add0~8_combout\ & ((\Add0~10_combout\) # ((\Add0~12_combout\) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Equal0~0_combout\,
	datac => \Add0~12_combout\,
	datad => \Add0~8_combout\,
	combout => \var_cntr~1_combout\);

-- Location: FF_X23_Y17_N9
\baud_rate_clk:var_cntr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \var_cntr~1_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_rate_clk:var_cntr[4]~q\);

-- Location: LCCOMB_X23_Y17_N2
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Add0~10_combout\ & (\Equal0~0_combout\ & (!\Add0~12_combout\ & \Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Equal0~0_combout\,
	datac => \Add0~12_combout\,
	datad => \Add0~8_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X23_Y17_N28
\sig_baudx32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_baudx32~0_combout\ = \sig_baudx32~q\ $ (\Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig_baudx32~q\,
	datad => \Equal0~1_combout\,
	combout => \sig_baudx32~0_combout\);

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

-- Location: FF_X23_Y17_N29
sig_baudx32 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_baudx32~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_baudx32~q\);

-- Location: FF_X23_Y21_N15
signal_A_q : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \sig_baudx32~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \signal_A_q~q\);

-- Location: FF_X23_Y21_N13
signal_A_q_not : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \signal_A_q~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \signal_A_q_not~q\);

-- Location: LCCOMB_X23_Y21_N20
\main_rx:var_clk_cntr[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \main_rx:var_clk_cntr[0]~0_combout\ = !\main_rx:var_clk_cntr[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_rx:var_clk_cntr[0]~q\,
	combout => \main_rx:var_clk_cntr[0]~0_combout\);

-- Location: LCCOMB_X23_Y21_N6
\Add2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~3_combout\ = \main_rx:var_clk_cntr[4]~q\ $ (\Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_rx:var_clk_cntr[4]~q\,
	datad => \Equal2~0_combout\,
	combout => \Add2~3_combout\);

-- Location: FF_X23_Y21_N7
\main_rx:var_clk_cntr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~3_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \main_rx:var_clk_cntr[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_rx:var_clk_cntr[4]~q\);

-- Location: LCCOMB_X23_Y21_N28
\Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\main_rx:var_clk_cntr[5]~q\ & (\Equal2~0_combout\ & !\main_rx:var_clk_cntr[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_rx:var_clk_cntr[5]~q\,
	datac => \Equal2~0_combout\,
	datad => \main_rx:var_clk_cntr[4]~q\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X25_Y22_N18
\Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state_rx.s3~q\ & (\Equal3~0_combout\ $ (\main_rx:var_bit_cntr[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~0_combout\,
	datac => \main_rx:var_bit_cntr[0]~q\,
	datad => \state_rx.s3~q\,
	combout => \Selector4~0_combout\);

-- Location: IOIBUF_X34_Y39_N1
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

-- Location: LCCOMB_X31_Y35_N24
\sig_bit[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_bit[0]~feeder_combout\ = \detected_bit~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \detected_bit~input_o\,
	combout => \sig_bit[0]~feeder_combout\);

-- Location: FF_X31_Y35_N25
\sig_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_bit[0]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_bit(0));

-- Location: LCCOMB_X31_Y34_N12
\sig_bit[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_bit[1]~feeder_combout\ = sig_bit(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_bit(0),
	combout => \sig_bit[1]~feeder_combout\);

-- Location: FF_X31_Y34_N13
\sig_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_bit[1]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_bit(1));

-- Location: LCCOMB_X31_Y34_N10
\sig_bit[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_bit[2]~feeder_combout\ = sig_bit(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_bit(1),
	combout => \sig_bit[2]~feeder_combout\);

-- Location: FF_X31_Y34_N11
\sig_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_bit[2]~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_bit(2));

-- Location: LCCOMB_X31_Y34_N16
\sig_bouncer_bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_bouncer_bit~0_combout\ = (sig_bit(2) & ((\sig_bouncer_bit~q\) # ((sig_bit(0) & sig_bit(1))))) # (!sig_bit(2) & (\sig_bouncer_bit~q\ & ((sig_bit(0)) # (sig_bit(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_bit(2),
	datab => sig_bit(0),
	datac => \sig_bouncer_bit~q\,
	datad => sig_bit(1),
	combout => \sig_bouncer_bit~0_combout\);

-- Location: FF_X31_Y34_N17
sig_bouncer_bit : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_bouncer_bit~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_bouncer_bit~q\);

-- Location: LCCOMB_X23_Y21_N12
\state_rx~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_rx~16_combout\ = (\signal_A_q~q\ & !\signal_A_q_not~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \signal_A_q~q\,
	datac => \signal_A_q_not~q\,
	combout => \state_rx~16_combout\);

-- Location: LCCOMB_X25_Y22_N10
\Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (!\state_rx.s4~q\ & (!\Selector13~0_combout\ & (!\state_rx.s5~q\ & !\state_rx.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_rx.s4~q\,
	datab => \Selector13~0_combout\,
	datac => \state_rx.s5~q\,
	datad => \state_rx.s2~q\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X21_Y22_N2
\Selector15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (!\sig_bouncer_bit~q\ & !\state_rx.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig_bouncer_bit~q\,
	datad => \state_rx.s0~q\,
	combout => \Selector15~1_combout\);

-- Location: LCCOMB_X25_Y22_N30
\Selector12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (\Selector12~0_combout\ & (!\Selector15~0_combout\ & ((\Selector15~1_combout\) # (\state_rx.s1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~0_combout\,
	datab => \Selector15~1_combout\,
	datac => \state_rx.s1~q\,
	datad => \Selector15~0_combout\,
	combout => \Selector12~1_combout\);

-- Location: FF_X25_Y22_N31
\state_rx.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector12~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_rx.s1~q\);

-- Location: LCCOMB_X23_Y21_N2
\Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\state_rx~16_combout\ & (\Equal2~0_combout\ & (\state_rx.s1~q\ & \Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_rx~16_combout\,
	datab => \Equal2~0_combout\,
	datac => \state_rx.s1~q\,
	datad => \Equal2~1_combout\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X25_Y22_N4
\Selector13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\Selector13~0_combout\ & !\Selector15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector13~0_combout\,
	datad => \Selector15~0_combout\,
	combout => \Selector13~1_combout\);

-- Location: FF_X25_Y22_N5
\state_rx.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector13~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_rx.s2~q\);

-- Location: LCCOMB_X23_Y21_N0
\sig_data_bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_data_bit~0_combout\ = (\main_rx:var_clk_cntr[4]~0_combout\ & (\resetn~input_o\ & \Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_rx:var_clk_cntr[4]~0_combout\,
	datac => \resetn~input_o\,
	datad => \Equal3~0_combout\,
	combout => \sig_data_bit~0_combout\);

-- Location: LCCOMB_X21_Y22_N8
\sig_data_bit~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_data_bit~1_combout\ = (\sig_data_bit~0_combout\ & (\sig_bouncer_bit~q\)) # (!\sig_data_bit~0_combout\ & ((\sig_data_bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_data_bit~0_combout\,
	datab => \sig_bouncer_bit~q\,
	datac => \sig_data_bit~q\,
	combout => \sig_data_bit~1_combout\);

-- Location: FF_X21_Y22_N9
sig_data_bit : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_data_bit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_data_bit~q\);

-- Location: LCCOMB_X25_Y22_N8
\Selector11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (!\state_rx.s5~q\ & (!\Selector11~0_combout\ & ((!\sig_data_bit~q\) # (!\state_rx.s2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_rx.s5~q\,
	datab => \state_rx.s2~q\,
	datac => \Selector11~0_combout\,
	datad => \sig_data_bit~q\,
	combout => \Selector11~1_combout\);

-- Location: FF_X25_Y22_N9
\state_rx.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector11~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_rx.s0~q\);

-- Location: LCCOMB_X21_Y22_N0
\Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\sig_bouncer_bit~q\ & !\state_rx.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig_bouncer_bit~q\,
	datad => \state_rx.s0~q\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X23_Y21_N22
\main_rx:var_bit_cntr[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \main_rx:var_bit_cntr[3]~0_combout\ = (\Selector11~0_combout\) # ((\signal_A_q~q\ & (\state_rx.s3~q\ & !\signal_A_q_not~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~0_combout\,
	datab => \signal_A_q~q\,
	datac => \state_rx.s3~q\,
	datad => \signal_A_q_not~q\,
	combout => \main_rx:var_bit_cntr[3]~0_combout\);

-- Location: FF_X25_Y22_N19
\main_rx:var_bit_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \main_rx:var_bit_cntr[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_rx:var_bit_cntr[0]~q\);

-- Location: LCCOMB_X25_Y22_N24
\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state_rx.s3~q\ & (\main_rx:var_bit_cntr[1]~q\ $ (((\Equal3~0_combout\ & \main_rx:var_bit_cntr[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \main_rx:var_bit_cntr[0]~q\,
	datac => \main_rx:var_bit_cntr[1]~q\,
	datad => \state_rx.s3~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X25_Y22_N25
\main_rx:var_bit_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \main_rx:var_bit_cntr[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_rx:var_bit_cntr[1]~q\);

-- Location: LCCOMB_X25_Y22_N26
\state_rx~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_rx~19_combout\ = (\main_rx:var_bit_cntr[1]~q\ & (\Equal3~0_combout\ & \main_rx:var_bit_cntr[0]~q\)) # (!\main_rx:var_bit_cntr[1]~q\ & (!\Equal3~0_combout\ & !\main_rx:var_bit_cntr[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_rx:var_bit_cntr[1]~q\,
	datac => \Equal3~0_combout\,
	datad => \main_rx:var_bit_cntr[0]~q\,
	combout => \state_rx~19_combout\);

-- Location: LCCOMB_X25_Y22_N2
\Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\main_rx:var_bit_cntr[1]~q\ & \main_rx:var_bit_cntr[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_rx:var_bit_cntr[1]~q\,
	datad => \main_rx:var_bit_cntr[0]~q\,
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X25_Y22_N12
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state_rx.s3~q\ & (\main_rx:var_bit_cntr[2]~q\ $ (((\Equal3~0_combout\ & \Add3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Add3~0_combout\,
	datac => \main_rx:var_bit_cntr[2]~q\,
	datad => \state_rx.s3~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X25_Y22_N13
\main_rx:var_bit_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \main_rx:var_bit_cntr[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_rx:var_bit_cntr[2]~q\);

-- Location: LCCOMB_X25_Y22_N16
\Add3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~1_combout\ = \main_rx:var_bit_cntr[3]~q\ $ (((\main_rx:var_bit_cntr[2]~q\ & (\main_rx:var_bit_cntr[1]~q\ & \main_rx:var_bit_cntr[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_rx:var_bit_cntr[2]~q\,
	datab => \main_rx:var_bit_cntr[1]~q\,
	datac => \main_rx:var_bit_cntr[3]~q\,
	datad => \main_rx:var_bit_cntr[0]~q\,
	combout => \Add3~1_combout\);

-- Location: LCCOMB_X25_Y22_N14
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state_rx.s3~q\ & ((\Equal3~0_combout\ & (\Add3~1_combout\)) # (!\Equal3~0_combout\ & ((\main_rx:var_bit_cntr[3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~1_combout\,
	datab => \Equal3~0_combout\,
	datac => \main_rx:var_bit_cntr[3]~q\,
	datad => \state_rx.s3~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X25_Y22_N15
\main_rx:var_bit_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \main_rx:var_bit_cntr[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_rx:var_bit_cntr[3]~q\);

-- Location: LCCOMB_X25_Y22_N0
\state_rx~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_rx~17_combout\ = (\main_rx:var_bit_cntr[2]~q\ & (\Equal3~0_combout\ & (!\main_rx:var_bit_cntr[3]~q\ & \Add3~0_combout\))) # (!\main_rx:var_bit_cntr[2]~q\ & (\main_rx:var_bit_cntr[3]~q\ & ((!\Add3~0_combout\) # (!\Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_rx:var_bit_cntr[2]~q\,
	datab => \Equal3~0_combout\,
	datac => \main_rx:var_bit_cntr[3]~q\,
	datad => \Add3~0_combout\,
	combout => \state_rx~17_combout\);

-- Location: LCCOMB_X25_Y22_N22
\state_rx~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_rx~20_combout\ = (\state_rx~18_combout\ & (\state_rx~19_combout\ & \state_rx~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_rx~18_combout\,
	datac => \state_rx~19_combout\,
	datad => \state_rx~17_combout\,
	combout => \state_rx~20_combout\);

-- Location: LCCOMB_X25_Y22_N6
\Selector14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~2_combout\ = (\state_rx~20_combout\ & (\state_rx.s2~q\ & ((!\sig_data_bit~q\)))) # (!\state_rx~20_combout\ & ((\state_rx.s3~q\) # ((\state_rx.s2~q\ & !\sig_data_bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_rx~20_combout\,
	datab => \state_rx.s2~q\,
	datac => \state_rx.s3~q\,
	datad => \sig_data_bit~q\,
	combout => \Selector14~2_combout\);

-- Location: FF_X25_Y22_N7
\state_rx.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector14~2_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_rx.s3~q\);

-- Location: LCCOMB_X23_Y21_N14
\main_rx:var_clk_cntr[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \main_rx:var_clk_cntr[4]~0_combout\ = (\signal_A_q~q\ & (!\signal_A_q_not~q\ & ((\state_rx.s3~q\) # (\state_rx.s1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_rx.s3~q\,
	datab => \state_rx.s1~q\,
	datac => \signal_A_q~q\,
	datad => \signal_A_q_not~q\,
	combout => \main_rx:var_clk_cntr[4]~0_combout\);

-- Location: FF_X23_Y21_N21
\main_rx:var_clk_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \main_rx:var_clk_cntr[0]~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \main_rx:var_clk_cntr[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_rx:var_clk_cntr[0]~q\);

-- Location: LCCOMB_X23_Y21_N18
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = \main_rx:var_clk_cntr[1]~q\ $ (\main_rx:var_clk_cntr[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_rx:var_clk_cntr[1]~q\,
	datad => \main_rx:var_clk_cntr[0]~q\,
	combout => \Add2~2_combout\);

-- Location: FF_X23_Y21_N19
\main_rx:var_clk_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~2_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \main_rx:var_clk_cntr[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_rx:var_clk_cntr[1]~q\);

-- Location: LCCOMB_X23_Y21_N30
\Add2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = \main_rx:var_clk_cntr[2]~q\ $ (((\main_rx:var_clk_cntr[0]~q\ & \main_rx:var_clk_cntr[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_rx:var_clk_cntr[0]~q\,
	datac => \main_rx:var_clk_cntr[2]~q\,
	datad => \main_rx:var_clk_cntr[1]~q\,
	combout => \Add2~1_combout\);

-- Location: FF_X23_Y21_N31
\main_rx:var_clk_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \main_rx:var_clk_cntr[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_rx:var_clk_cntr[2]~q\);

-- Location: LCCOMB_X23_Y21_N8
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \main_rx:var_clk_cntr[3]~q\ $ (((\main_rx:var_clk_cntr[2]~q\ & (\main_rx:var_clk_cntr[0]~q\ & \main_rx:var_clk_cntr[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_rx:var_clk_cntr[2]~q\,
	datab => \main_rx:var_clk_cntr[0]~q\,
	datac => \main_rx:var_clk_cntr[3]~q\,
	datad => \main_rx:var_clk_cntr[1]~q\,
	combout => \Add2~0_combout\);

-- Location: FF_X23_Y21_N9
\main_rx:var_clk_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add2~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \main_rx:var_clk_cntr[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_rx:var_clk_cntr[3]~q\);

-- Location: LCCOMB_X23_Y21_N16
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\main_rx:var_clk_cntr[2]~q\ & (\main_rx:var_clk_cntr[0]~q\ & (\main_rx:var_clk_cntr[3]~q\ & \main_rx:var_clk_cntr[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_rx:var_clk_cntr[2]~q\,
	datab => \main_rx:var_clk_cntr[0]~q\,
	datac => \main_rx:var_clk_cntr[3]~q\,
	datad => \main_rx:var_clk_cntr[1]~q\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X23_Y21_N26
\Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\main_rx:var_clk_cntr[5]~q\ & ((!\main_rx:var_clk_cntr[4]~q\) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~0_combout\,
	datac => \main_rx:var_clk_cntr[5]~q\,
	datad => \main_rx:var_clk_cntr[4]~q\,
	combout => \Selector17~0_combout\);

-- Location: FF_X23_Y21_N27
\main_rx:var_clk_cntr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector17~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \main_rx:var_clk_cntr[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_rx:var_clk_cntr[5]~q\);

-- Location: LCCOMB_X23_Y21_N4
\Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\main_rx:var_clk_cntr[5]~q\ & (!\Equal2~0_combout\ & !\main_rx:var_clk_cntr[4]~q\)) # (!\main_rx:var_clk_cntr[5]~q\ & (\Equal2~0_combout\ & \main_rx:var_clk_cntr[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_rx:var_clk_cntr[5]~q\,
	datac => \Equal2~0_combout\,
	datad => \main_rx:var_clk_cntr[4]~q\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X23_Y21_N10
\state_rx~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_rx~18_combout\ = (!\signal_A_q_not~q\ & (\Equal2~1_combout\ & (\signal_A_q~q\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_A_q_not~q\,
	datab => \Equal2~1_combout\,
	datac => \signal_A_q~q\,
	datad => \Equal2~0_combout\,
	combout => \state_rx~18_combout\);

-- Location: LCCOMB_X25_Y22_N28
\Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\state_rx~18_combout\ & (\state_rx~17_combout\ & (\state_rx~19_combout\ & \state_rx.s3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_rx~18_combout\,
	datab => \state_rx~17_combout\,
	datac => \state_rx~19_combout\,
	datad => \state_rx.s3~q\,
	combout => \Selector15~0_combout\);

-- Location: FF_X25_Y22_N29
\state_rx.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector15~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_rx.s4~q\);

-- Location: FF_X25_Y22_N11
\state_rx.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_rx.s4~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_rx.s5~q\);

-- Location: LCCOMB_X23_Y17_N0
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state_rx.s5~q\) # ((\sig_wr_ram~q\ & \state_rx.s0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_rx.s5~q\,
	datac => \sig_wr_ram~q\,
	datad => \state_rx.s0~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X23_Y17_N1
sig_wr_ram : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_wr_ram~q\);

-- Location: LCCOMB_X31_Y2_N28
\sig_cnt_address[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt_address[0]~12_combout\ = !sig_cnt_address(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sig_cnt_address(0),
	combout => \sig_cnt_address[0]~12_combout\);

-- Location: LCCOMB_X23_Y17_N26
\detected_byte[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \detected_byte[0]~0_combout\ = (\state_rx.s4~q\ & \resetn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_rx.s4~q\,
	datad => \resetn~input_o\,
	combout => \detected_byte[0]~0_combout\);

-- Location: FF_X31_Y2_N29
\sig_cnt_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt_address[0]~12_combout\,
	ena => \detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_address(0));

-- Location: LCCOMB_X31_Y2_N16
\Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\state_rx.s2~q\ & sig_cnt_address(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_rx.s2~q\,
	datad => sig_cnt_address(0),
	combout => \Selector10~0_combout\);

-- Location: FF_X21_Y21_N19
\main_rx:var_trns_cntr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~36_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_rx:var_trns_cntr[18]~q\);

-- Location: LCCOMB_X21_Y22_N14
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \main_rx:var_trns_cntr[0]~q\ $ (VCC)
-- \Add1~1\ = CARRY(\main_rx:var_trns_cntr[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_rx:var_trns_cntr[0]~q\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: FF_X21_Y22_N15
\main_rx:var_trns_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_rx:var_trns_cntr[0]~q\);

-- Location: LCCOMB_X21_Y22_N16
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\main_rx:var_trns_cntr[1]~q\ & (!\Add1~1\)) # (!\main_rx:var_trns_cntr[1]~q\ & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!\main_rx:var_trns_cntr[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_rx:var_trns_cntr[1]~q\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X21_Y22_N17
\main_rx:var_trns_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~2_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_rx:var_trns_cntr[1]~q\);

-- Location: LCCOMB_X21_Y22_N18
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\main_rx:var_trns_cntr[2]~q\ & (\Add1~3\ $ (GND))) # (!\main_rx:var_trns_cntr[2]~q\ & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((\main_rx:var_trns_cntr[2]~q\ & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_rx:var_trns_cntr[2]~q\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: FF_X21_Y22_N19
\main_rx:var_trns_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~4_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_rx:var_trns_cntr[2]~q\);

-- Location: LCCOMB_X21_Y22_N20
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\main_rx:var_trns_cntr[3]~q\ & (!\Add1~5\)) # (!\main_rx:var_trns_cntr[3]~q\ & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!\main_rx:var_trns_cntr[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_rx:var_trns_cntr[3]~q\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: FF_X21_Y22_N21
\main_rx:var_trns_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~6_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_rx:var_trns_cntr[3]~q\);

-- Location: LCCOMB_X21_Y22_N22
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\main_rx:var_trns_cntr[4]~q\ & (\Add1~7\ $ (GND))) # (!\main_rx:var_trns_cntr[4]~q\ & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((\main_rx:var_trns_cntr[4]~q\ & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_rx:var_trns_cntr[4]~q\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X21_Y22_N23
\main_rx:var_trns_cntr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~8_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_rx:var_trns_cntr[4]~q\);

-- Location: LCCOMB_X21_Y22_N24
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\main_rx:var_trns_cntr[5]~q\ & (!\Add1~9\)) # (!\main_rx:var_trns_cntr[5]~q\ & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!\main_rx:var_trns_cntr[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_rx:var_trns_cntr[5]~q\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: FF_X21_Y22_N25
\main_rx:var_trns_cntr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~10_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_rx:var_trns_cntr[5]~q\);

-- Location: LCCOMB_X21_Y22_N26
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\main_rx:var_trns_cntr[6]~q\ & (\Add1~11\ $ (GND))) # (!\main_rx:var_trns_cntr[6]~q\ & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((\main_rx:var_trns_cntr[6]~q\ & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_rx:var_trns_cntr[6]~q\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X21_Y22_N27
\main_rx:var_trns_cntr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~12_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_rx:var_trns_cntr[6]~q\);

-- Location: LCCOMB_X21_Y22_N28
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\main_rx:var_trns_cntr[7]~q\ & (!\Add1~13\)) # (!\main_rx:var_trns_cntr[7]~q\ & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!\main_rx:var_trns_cntr[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_rx:var_trns_cntr[7]~q\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: FF_X21_Y22_N29
\main_rx:var_trns_cntr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~14_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_rx:var_trns_cntr[7]~q\);

-- Location: LCCOMB_X21_Y22_N30
\Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (\main_rx:var_trns_cntr[8]~q\ & (\Add1~15\ $ (GND))) # (!\main_rx:var_trns_cntr[8]~q\ & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((\main_rx:var_trns_cntr[8]~q\ & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_rx:var_trns_cntr[8]~q\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: FF_X21_Y22_N31
\main_rx:var_trns_cntr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~16_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_rx:var_trns_cntr[8]~q\);

-- Location: LCCOMB_X21_Y21_N0
\Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\main_rx:var_trns_cntr[9]~q\ & (!\Add1~17\)) # (!\main_rx:var_trns_cntr[9]~q\ & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!\main_rx:var_trns_cntr[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_rx:var_trns_cntr[9]~q\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: FF_X21_Y21_N1
\main_rx:var_trns_cntr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~18_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_rx:var_trns_cntr[9]~q\);

-- Location: LCCOMB_X21_Y21_N2
\Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (\main_rx:var_trns_cntr[10]~q\ & (\Add1~19\ $ (GND))) # (!\main_rx:var_trns_cntr[10]~q\ & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((\main_rx:var_trns_cntr[10]~q\ & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_rx:var_trns_cntr[10]~q\,
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: FF_X21_Y21_N3
\main_rx:var_trns_cntr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~20_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_rx:var_trns_cntr[10]~q\);

-- Location: LCCOMB_X21_Y21_N4
\Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\main_rx:var_trns_cntr[11]~q\ & (!\Add1~21\)) # (!\main_rx:var_trns_cntr[11]~q\ & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!\main_rx:var_trns_cntr[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_rx:var_trns_cntr[11]~q\,
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: FF_X21_Y21_N5
\main_rx:var_trns_cntr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~22_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_rx:var_trns_cntr[11]~q\);

-- Location: LCCOMB_X21_Y21_N6
\Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (\main_rx:var_trns_cntr[12]~q\ & (\Add1~23\ $ (GND))) # (!\main_rx:var_trns_cntr[12]~q\ & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((\main_rx:var_trns_cntr[12]~q\ & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_rx:var_trns_cntr[12]~q\,
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: FF_X21_Y21_N7
\main_rx:var_trns_cntr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~24_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_rx:var_trns_cntr[12]~q\);

-- Location: LCCOMB_X21_Y21_N8
\Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\main_rx:var_trns_cntr[13]~q\ & (!\Add1~25\)) # (!\main_rx:var_trns_cntr[13]~q\ & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!\main_rx:var_trns_cntr[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_rx:var_trns_cntr[13]~q\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: FF_X21_Y21_N9
\main_rx:var_trns_cntr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~26_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_rx:var_trns_cntr[13]~q\);

-- Location: LCCOMB_X21_Y21_N10
\Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (\main_rx:var_trns_cntr[14]~q\ & (\Add1~27\ $ (GND))) # (!\main_rx:var_trns_cntr[14]~q\ & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((\main_rx:var_trns_cntr[14]~q\ & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_rx:var_trns_cntr[14]~q\,
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: FF_X21_Y21_N11
\main_rx:var_trns_cntr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~28_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_rx:var_trns_cntr[14]~q\);

-- Location: LCCOMB_X21_Y21_N12
\Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\main_rx:var_trns_cntr[15]~q\ & (!\Add1~29\)) # (!\main_rx:var_trns_cntr[15]~q\ & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!\main_rx:var_trns_cntr[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_rx:var_trns_cntr[15]~q\,
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: FF_X21_Y21_N13
\main_rx:var_trns_cntr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~30_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_rx:var_trns_cntr[15]~q\);

-- Location: LCCOMB_X21_Y21_N14
\Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (\main_rx:var_trns_cntr[16]~q\ & (\Add1~31\ $ (GND))) # (!\main_rx:var_trns_cntr[16]~q\ & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((\main_rx:var_trns_cntr[16]~q\ & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_rx:var_trns_cntr[16]~q\,
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: FF_X21_Y21_N15
\main_rx:var_trns_cntr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~32_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_rx:var_trns_cntr[16]~q\);

-- Location: LCCOMB_X21_Y21_N16
\Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\main_rx:var_trns_cntr[17]~q\ & (!\Add1~33\)) # (!\main_rx:var_trns_cntr[17]~q\ & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!\main_rx:var_trns_cntr[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_rx:var_trns_cntr[17]~q\,
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: FF_X21_Y21_N17
\main_rx:var_trns_cntr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add1~34_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_rx:var_trns_cntr[17]~q\);

-- Location: LCCOMB_X21_Y21_N18
\Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = \Add1~35\ $ (!\main_rx:var_trns_cntr[18]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \main_rx:var_trns_cntr[18]~q\,
	cin => \Add1~35\,
	combout => \Add1~36_combout\);

-- Location: LCCOMB_X21_Y22_N6
\sig_ram_address[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_ram_address[0]~4_combout\ = (!\Add1~0_combout\ & (!\Add1~2_combout\ & (\sig_bouncer_bit~q\ & !\state_rx.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Add1~2_combout\,
	datac => \sig_bouncer_bit~q\,
	datad => \state_rx.s0~q\,
	combout => \sig_ram_address[0]~4_combout\);

-- Location: LCCOMB_X25_Y22_N20
\sig_ram_address[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_ram_address[0]~0_combout\ = (\state_rx.s2~q\ & !\sig_data_bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_rx.s2~q\,
	datad => \sig_data_bit~q\,
	combout => \sig_ram_address[0]~0_combout\);

-- Location: LCCOMB_X21_Y21_N30
\sig_ram_address[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_ram_address[0]~5_combout\ = (\resetn~input_o\ & ((\sig_ram_address[0]~0_combout\) # ((!\Add1~24_combout\ & \sig_ram_address[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~input_o\,
	datab => \Add1~24_combout\,
	datac => \sig_ram_address[0]~4_combout\,
	datad => \sig_ram_address[0]~0_combout\,
	combout => \sig_ram_address[0]~5_combout\);

-- Location: LCCOMB_X21_Y22_N10
\sig_ram_address[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_ram_address[0]~1_combout\ = (!\Add1~6_combout\ & (\Add1~10_combout\ & (!\Add1~8_combout\ & !\Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Add1~10_combout\,
	datac => \Add1~8_combout\,
	datad => \Add1~4_combout\,
	combout => \sig_ram_address[0]~1_combout\);

-- Location: LCCOMB_X21_Y22_N12
\sig_ram_address[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_ram_address[0]~2_combout\ = (!\Add1~12_combout\ & (!\Add1~18_combout\ & (\Add1~16_combout\ & !\Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \Add1~18_combout\,
	datac => \Add1~16_combout\,
	datad => \Add1~14_combout\,
	combout => \sig_ram_address[0]~2_combout\);

-- Location: LCCOMB_X21_Y21_N20
\sig_ram_address[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_ram_address[0]~3_combout\ = (\sig_ram_address[0]~1_combout\ & (!\Add1~20_combout\ & (!\Add1~22_combout\ & \sig_ram_address[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_ram_address[0]~1_combout\,
	datab => \Add1~20_combout\,
	datac => \Add1~22_combout\,
	datad => \sig_ram_address[0]~2_combout\,
	combout => \sig_ram_address[0]~3_combout\);

-- Location: LCCOMB_X21_Y21_N24
\sig_ram_address[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_ram_address[0]~6_combout\ = (\sig_ram_address[0]~5_combout\ & ((\sig_ram_address[0]~0_combout\) # ((\sig_ram_address[0]~3_combout\ & \Add1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_ram_address[0]~5_combout\,
	datab => \sig_ram_address[0]~3_combout\,
	datac => \Add1~26_combout\,
	datad => \sig_ram_address[0]~0_combout\,
	combout => \sig_ram_address[0]~6_combout\);

-- Location: LCCOMB_X21_Y21_N26
\sig_ram_address[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_ram_address[0]~7_combout\ = (!\Add1~28_combout\ & (\Add1~34_combout\ & (\Add1~32_combout\ & \Add1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~28_combout\,
	datab => \Add1~34_combout\,
	datac => \Add1~32_combout\,
	datad => \Add1~30_combout\,
	combout => \sig_ram_address[0]~7_combout\);

-- Location: LCCOMB_X21_Y21_N28
\sig_ram_address[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_ram_address[0]~8_combout\ = (\sig_ram_address[0]~6_combout\ & ((\sig_ram_address[0]~0_combout\) # ((\Add1~36_combout\ & \sig_ram_address[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~36_combout\,
	datab => \sig_ram_address[0]~6_combout\,
	datac => \sig_ram_address[0]~7_combout\,
	datad => \sig_ram_address[0]~0_combout\,
	combout => \sig_ram_address[0]~8_combout\);

-- Location: FF_X31_Y2_N17
\sig_ram_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector10~0_combout\,
	ena => \sig_ram_address[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_ram_address(0));

-- Location: LCCOMB_X31_Y2_N6
\sig_cnt_address[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt_address[1]~4_combout\ = (sig_cnt_address(1) & (sig_cnt_address(0) $ (VCC))) # (!sig_cnt_address(1) & (sig_cnt_address(0) & VCC))
-- \sig_cnt_address[1]~5\ = CARRY((sig_cnt_address(1) & sig_cnt_address(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_address(1),
	datab => sig_cnt_address(0),
	datad => VCC,
	combout => \sig_cnt_address[1]~4_combout\,
	cout => \sig_cnt_address[1]~5\);

-- Location: FF_X31_Y2_N7
\sig_cnt_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt_address[1]~4_combout\,
	ena => \detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_address(1));

-- Location: LCCOMB_X31_Y2_N26
\Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\state_rx.s2~q\ & sig_cnt_address(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_rx.s2~q\,
	datad => sig_cnt_address(1),
	combout => \Selector9~0_combout\);

-- Location: FF_X31_Y2_N27
\sig_ram_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	ena => \sig_ram_address[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_ram_address(1));

-- Location: LCCOMB_X31_Y2_N8
\sig_cnt_address[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt_address[2]~6_combout\ = (sig_cnt_address(2) & (!\sig_cnt_address[1]~5\)) # (!sig_cnt_address(2) & ((\sig_cnt_address[1]~5\) # (GND)))
-- \sig_cnt_address[2]~7\ = CARRY((!\sig_cnt_address[1]~5\) # (!sig_cnt_address(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_cnt_address(2),
	datad => VCC,
	cin => \sig_cnt_address[1]~5\,
	combout => \sig_cnt_address[2]~6_combout\,
	cout => \sig_cnt_address[2]~7\);

-- Location: FF_X31_Y2_N9
\sig_cnt_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt_address[2]~6_combout\,
	ena => \detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_address(2));

-- Location: LCCOMB_X31_Y2_N4
\Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\state_rx.s2~q\ & sig_cnt_address(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_rx.s2~q\,
	datac => sig_cnt_address(2),
	combout => \Selector8~0_combout\);

-- Location: FF_X31_Y2_N5
\sig_ram_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	ena => \sig_ram_address[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_ram_address(2));

-- Location: LCCOMB_X31_Y2_N10
\sig_cnt_address[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt_address[3]~8_combout\ = (sig_cnt_address(3) & (\sig_cnt_address[2]~7\ $ (GND))) # (!sig_cnt_address(3) & (!\sig_cnt_address[2]~7\ & VCC))
-- \sig_cnt_address[3]~9\ = CARRY((sig_cnt_address(3) & !\sig_cnt_address[2]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_cnt_address(3),
	datad => VCC,
	cin => \sig_cnt_address[2]~7\,
	combout => \sig_cnt_address[3]~8_combout\,
	cout => \sig_cnt_address[3]~9\);

-- Location: FF_X31_Y2_N11
\sig_cnt_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt_address[3]~8_combout\,
	ena => \detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_address(3));

-- Location: LCCOMB_X31_Y2_N22
\Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\state_rx.s2~q\ & sig_cnt_address(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_rx.s2~q\,
	datad => sig_cnt_address(3),
	combout => \Selector7~0_combout\);

-- Location: FF_X31_Y2_N23
\sig_ram_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	ena => \sig_ram_address[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_ram_address(3));

-- Location: LCCOMB_X31_Y2_N12
\sig_cnt_address[4]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_cnt_address[4]~10_combout\ = \sig_cnt_address[3]~9\ $ (sig_cnt_address(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sig_cnt_address(4),
	cin => \sig_cnt_address[3]~9\,
	combout => \sig_cnt_address[4]~10_combout\);

-- Location: FF_X31_Y2_N13
\sig_cnt_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_cnt_address[4]~10_combout\,
	ena => \detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_cnt_address(4));

-- Location: LCCOMB_X31_Y2_N24
\Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\state_rx.s2~q\ & sig_cnt_address(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_rx.s2~q\,
	datad => sig_cnt_address(4),
	combout => \Selector6~0_combout\);

-- Location: FF_X31_Y2_N25
\sig_ram_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	ena => \sig_ram_address[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_ram_address(4));

-- Location: IOIBUF_X31_Y0_N29
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

-- Location: LCCOMB_X31_Y2_N2
\Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!\toggle~input_o\ & \state_rx.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \toggle~input_o\,
	datac => \state_rx.s2~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X31_Y2_N3
\sig_ram_address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	ena => \sig_ram_address[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_ram_address(5));

-- Location: LCCOMB_X26_Y35_N30
\sig_detected_byte[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_detected_byte[7]~feeder_combout\ = \sig_data_bit~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sig_data_bit~q\,
	combout => \sig_detected_byte[7]~feeder_combout\);

-- Location: LCCOMB_X23_Y21_N24
\sig_detected_byte[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_detected_byte[0]~0_combout\ = (\resetn~input_o\ & (\state_rx.s3~q\ & \state_rx~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetn~input_o\,
	datac => \state_rx.s3~q\,
	datad => \state_rx~18_combout\,
	combout => \sig_detected_byte[0]~0_combout\);

-- Location: FF_X26_Y35_N31
\sig_detected_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_detected_byte[7]~feeder_combout\,
	ena => \sig_detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_detected_byte(7));

-- Location: FF_X26_Y35_N5
\sig_detected_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_detected_byte(7),
	sload => VCC,
	ena => \sig_detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_detected_byte(6));

-- Location: FF_X26_Y35_N19
\sig_detected_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_detected_byte(6),
	sload => VCC,
	ena => \sig_detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_detected_byte(5));

-- Location: LCCOMB_X26_Y35_N16
\sig_detected_byte[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_detected_byte[4]~feeder_combout\ = sig_detected_byte(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_detected_byte(5),
	combout => \sig_detected_byte[4]~feeder_combout\);

-- Location: FF_X26_Y35_N17
\sig_detected_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_detected_byte[4]~feeder_combout\,
	ena => \sig_detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_detected_byte(4));

-- Location: LCCOMB_X26_Y35_N22
\sig_detected_byte[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_detected_byte[3]~feeder_combout\ = sig_detected_byte(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_detected_byte(4),
	combout => \sig_detected_byte[3]~feeder_combout\);

-- Location: FF_X26_Y35_N23
\sig_detected_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_detected_byte[3]~feeder_combout\,
	ena => \sig_detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_detected_byte(3));

-- Location: FF_X26_Y35_N13
\sig_detected_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_detected_byte(3),
	sload => VCC,
	ena => \sig_detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_detected_byte(2));

-- Location: LCCOMB_X26_Y35_N10
\sig_detected_byte[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_detected_byte[1]~feeder_combout\ = sig_detected_byte(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_detected_byte(2),
	combout => \sig_detected_byte[1]~feeder_combout\);

-- Location: FF_X26_Y35_N11
\sig_detected_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_detected_byte[1]~feeder_combout\,
	ena => \sig_detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_detected_byte(1));

-- Location: LCCOMB_X26_Y35_N24
\sig_detected_byte[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_detected_byte[0]~feeder_combout\ = sig_detected_byte(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_detected_byte(1),
	combout => \sig_detected_byte[0]~feeder_combout\);

-- Location: FF_X26_Y35_N25
\sig_detected_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_detected_byte[0]~feeder_combout\,
	ena => \sig_detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_detected_byte(0));

-- Location: LCCOMB_X26_Y35_N0
\detected_byte[0]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \detected_byte[0]~reg0feeder_combout\ = sig_detected_byte(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_detected_byte(0),
	combout => \detected_byte[0]~reg0feeder_combout\);

-- Location: FF_X26_Y35_N1
\detected_byte[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \detected_byte[0]~reg0feeder_combout\,
	ena => \detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detected_byte[0]~reg0_q\);

-- Location: LCCOMB_X26_Y35_N2
\detected_byte[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \detected_byte[1]~reg0feeder_combout\ = sig_detected_byte(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_detected_byte(1),
	combout => \detected_byte[1]~reg0feeder_combout\);

-- Location: FF_X26_Y35_N3
\detected_byte[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \detected_byte[1]~reg0feeder_combout\,
	ena => \detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detected_byte[1]~reg0_q\);

-- Location: LCCOMB_X26_Y35_N28
\detected_byte[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \detected_byte[2]~reg0feeder_combout\ = sig_detected_byte(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_detected_byte(2),
	combout => \detected_byte[2]~reg0feeder_combout\);

-- Location: FF_X26_Y35_N29
\detected_byte[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \detected_byte[2]~reg0feeder_combout\,
	ena => \detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detected_byte[2]~reg0_q\);

-- Location: FF_X26_Y35_N7
\detected_byte[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_detected_byte(3),
	sload => VCC,
	ena => \detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detected_byte[3]~reg0_q\);

-- Location: LCCOMB_X26_Y35_N8
\detected_byte[4]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \detected_byte[4]~reg0feeder_combout\ = sig_detected_byte(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_detected_byte(4),
	combout => \detected_byte[4]~reg0feeder_combout\);

-- Location: FF_X26_Y35_N9
\detected_byte[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \detected_byte[4]~reg0feeder_combout\,
	ena => \detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detected_byte[4]~reg0_q\);

-- Location: LCCOMB_X26_Y35_N26
\detected_byte[5]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \detected_byte[5]~reg0feeder_combout\ = sig_detected_byte(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_detected_byte(5),
	combout => \detected_byte[5]~reg0feeder_combout\);

-- Location: FF_X26_Y35_N27
\detected_byte[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \detected_byte[5]~reg0feeder_combout\,
	ena => \detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detected_byte[5]~reg0_q\);

-- Location: FF_X26_Y35_N21
\detected_byte[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_detected_byte(6),
	sload => VCC,
	ena => \detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detected_byte[6]~reg0_q\);

-- Location: FF_X26_Y35_N15
\detected_byte[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_detected_byte(7),
	sload => VCC,
	ena => \detected_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detected_byte[7]~reg0_q\);

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
END structure;


