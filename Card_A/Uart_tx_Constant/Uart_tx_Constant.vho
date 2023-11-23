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

-- DATE "09/02/2023 17:55:17"

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

ENTITY 	Uart_tx_Constant IS
    PORT (
	resetn : IN std_logic;
	sysclk : IN std_logic;
	start_triger : IN std_logic;
	uart_tx_triger : BUFFER std_logic
	);
END Uart_tx_Constant;

-- Design Ports Information
-- uart_tx_triger	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sysclk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_triger	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Uart_tx_Constant IS
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
SIGNAL ww_start_triger : std_logic;
SIGNAL ww_uart_tx_triger : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \sysclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \uart_tx_triger~output_o\ : std_logic;
SIGNAL \sysclk~input_o\ : std_logic;
SIGNAL \sysclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \baud_clock:cnt_baud[8]~q\ : std_logic;
SIGNAL \baud_clock:cnt_baud[5]~q\ : std_logic;
SIGNAL \cnt_baud~5_combout\ : std_logic;
SIGNAL \baud_clock:cnt_baud[9]~q\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \cnt_baud~1_combout\ : std_logic;
SIGNAL \cnt_baud~2_combout\ : std_logic;
SIGNAL \baud_clock:cnt_baud[1]~q\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \baud_clock:cnt_baud[2]~q\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \cnt_baud~3_combout\ : std_logic;
SIGNAL \baud_clock:cnt_baud[3]~q\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \baud_clock:cnt_baud[4]~q\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \baud_clock:cnt_baud[6]~q\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \cnt_baud~0_combout\ : std_logic;
SIGNAL \baud_clock:cnt_baud[0]~q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \cnt_baud~4_combout\ : std_logic;
SIGNAL \baud_clock:cnt_baud[7]~q\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \sig_baud_clk~0_combout\ : std_logic;
SIGNAL \sig_baud_clk~q\ : std_logic;
SIGNAL \signal_A_q~q\ : std_logic;
SIGNAL \signal_A_q_not~q\ : std_logic;
SIGNAL \sig_arising_edge~combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \transmission:sig_cntr[3]~2_combout\ : std_logic;
SIGNAL \transmission:sig_cntr[1]~q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \transmission:sig_cntr[2]~q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \transmission:sig_cntr[3]~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \state_tx~24_combout\ : std_logic;
SIGNAL \state_tx.s8~q\ : std_logic;
SIGNAL \start_triger~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state_tx.s0~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state_tx.s1~q\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \state_tx.s2~q\ : std_logic;
SIGNAL \transmission:sig_cntr[3]~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \transmission:sig_cntr[3]~1_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \transmission:sig_cntr[0]~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \state_tx.s3~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \state_tx.s4~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \state_tx.s5~q\ : std_logic;
SIGNAL \state_tx.s6~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \state_tx.s7~q\ : std_logic;
SIGNAL \sig_packet[6]~4_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \sig_packet[5]~3_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \sig_packet[2]~5_combout\ : std_logic;
SIGNAL \sig_packet[3]~2_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \sig_packet[1]~1_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \sig_packet[0]~0_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \sig_bit~0_combout\ : std_logic;
SIGNAL \sig_bit~q\ : std_logic;
SIGNAL sig_packet : std_logic_vector(11 DOWNTO 0);
SIGNAL \ALT_INV_sig_bit~q\ : std_logic;
SIGNAL \ALT_INV_state_tx.s7~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_resetn <= resetn;
ww_sysclk <= sysclk;
ww_start_triger <= start_triger;
uart_tx_triger <= ww_uart_tx_triger;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\sysclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sysclk~input_o\);
\ALT_INV_sig_bit~q\ <= NOT \sig_bit~q\;
\ALT_INV_state_tx.s7~q\ <= NOT \state_tx.s7~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N8
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
	i => \ALT_INV_sig_bit~q\,
	devoe => ww_devoe,
	o => \uart_tx_triger~output_o\);

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

-- Location: FF_X37_Y4_N23
\baud_clock:cnt_baud[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_clock:cnt_baud[8]~q\);

-- Location: FF_X37_Y4_N17
\baud_clock:cnt_baud[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_clock:cnt_baud[5]~q\);

-- Location: LCCOMB_X37_Y4_N30
\cnt_baud~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_baud~5_combout\ = (\Add0~18_combout\ & (((\Add0~16_combout\) # (!\Equal0~1_combout\)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Add0~16_combout\,
	datad => \Add0~18_combout\,
	combout => \cnt_baud~5_combout\);

-- Location: FF_X37_Y4_N31
\baud_clock:cnt_baud[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \cnt_baud~5_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_clock:cnt_baud[9]~q\);

-- Location: LCCOMB_X37_Y4_N22
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\baud_clock:cnt_baud[8]~q\ & (\Add0~15\ $ (GND))) # (!\baud_clock:cnt_baud[8]~q\ & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((\baud_clock:cnt_baud[8]~q\ & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_clock:cnt_baud[8]~q\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X37_Y4_N24
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \baud_clock:cnt_baud[9]~q\ $ (\Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_clock:cnt_baud[9]~q\,
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X37_Y4_N6
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \baud_clock:cnt_baud[0]~q\ $ (VCC)
-- \Add0~1\ = CARRY(\baud_clock:cnt_baud[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \baud_clock:cnt_baud[0]~q\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X37_Y4_N8
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\baud_clock:cnt_baud[1]~q\ & (!\Add0~1\)) # (!\baud_clock:cnt_baud[1]~q\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\baud_clock:cnt_baud[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_clock:cnt_baud[1]~q\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X38_Y4_N18
\cnt_baud~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_baud~1_combout\ = (\Add0~16_combout\) # (!\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~16_combout\,
	datac => \Equal0~0_combout\,
	combout => \cnt_baud~1_combout\);

-- Location: LCCOMB_X37_Y4_N26
\cnt_baud~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_baud~2_combout\ = (\Add0~2_combout\ & (((\cnt_baud~1_combout\) # (!\Add0~18_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Add0~18_combout\,
	datac => \Add0~2_combout\,
	datad => \cnt_baud~1_combout\,
	combout => \cnt_baud~2_combout\);

-- Location: FF_X37_Y4_N27
\baud_clock:cnt_baud[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \cnt_baud~2_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_clock:cnt_baud[1]~q\);

-- Location: LCCOMB_X37_Y4_N10
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\baud_clock:cnt_baud[2]~q\ & (\Add0~3\ $ (GND))) # (!\baud_clock:cnt_baud[2]~q\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\baud_clock:cnt_baud[2]~q\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_clock:cnt_baud[2]~q\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X37_Y4_N11
\baud_clock:cnt_baud[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_clock:cnt_baud[2]~q\);

-- Location: LCCOMB_X37_Y4_N12
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\baud_clock:cnt_baud[3]~q\ & (!\Add0~5\)) # (!\baud_clock:cnt_baud[3]~q\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\baud_clock:cnt_baud[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_clock:cnt_baud[3]~q\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X38_Y4_N28
\cnt_baud~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_baud~3_combout\ = (\Add0~6_combout\ & (((\cnt_baud~1_combout\) # (!\Equal0~1_combout\)) # (!\Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Equal0~1_combout\,
	datac => \Add0~6_combout\,
	datad => \cnt_baud~1_combout\,
	combout => \cnt_baud~3_combout\);

-- Location: FF_X38_Y4_N29
\baud_clock:cnt_baud[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \cnt_baud~3_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_clock:cnt_baud[3]~q\);

-- Location: LCCOMB_X37_Y4_N14
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\baud_clock:cnt_baud[4]~q\ & (\Add0~7\ $ (GND))) # (!\baud_clock:cnt_baud[4]~q\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\baud_clock:cnt_baud[4]~q\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_clock:cnt_baud[4]~q\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X37_Y4_N15
\baud_clock:cnt_baud[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_clock:cnt_baud[4]~q\);

-- Location: LCCOMB_X37_Y4_N16
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\baud_clock:cnt_baud[5]~q\ & (!\Add0~9\)) # (!\baud_clock:cnt_baud[5]~q\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\baud_clock:cnt_baud[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_clock:cnt_baud[5]~q\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X37_Y4_N19
\baud_clock:cnt_baud[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_clock:cnt_baud[6]~q\);

-- Location: LCCOMB_X37_Y4_N18
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\baud_clock:cnt_baud[6]~q\ & (\Add0~11\ $ (GND))) # (!\baud_clock:cnt_baud[6]~q\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\baud_clock:cnt_baud[6]~q\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_clock:cnt_baud[6]~q\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X37_Y4_N20
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\baud_clock:cnt_baud[7]~q\ & (!\Add0~13\)) # (!\baud_clock:cnt_baud[7]~q\ & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!\baud_clock:cnt_baud[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_clock:cnt_baud[7]~q\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X37_Y4_N28
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Add0~10_combout\ & (!\Add0~12_combout\ & (!\Add0~8_combout\ & \Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add0~12_combout\,
	datac => \Add0~8_combout\,
	datad => \Add0~14_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X37_Y4_N0
\cnt_baud~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_baud~0_combout\ = (\Add0~0_combout\ & (((!\Equal0~2_combout\) # (!\Equal0~0_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \cnt_baud~0_combout\);

-- Location: FF_X37_Y4_N1
\baud_clock:cnt_baud[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \cnt_baud~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_clock:cnt_baud[0]~q\);

-- Location: LCCOMB_X37_Y4_N4
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\Add0~0_combout\ & (!\Add0~4_combout\ & (\Add0~2_combout\ & \Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add0~4_combout\,
	datac => \Add0~2_combout\,
	datad => \Add0~6_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X37_Y4_N2
\cnt_baud~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_baud~4_combout\ = (\Add0~14_combout\ & (((!\Equal0~2_combout\) # (!\Equal0~1_combout\)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Add0~14_combout\,
	datad => \Equal0~2_combout\,
	combout => \cnt_baud~4_combout\);

-- Location: FF_X37_Y4_N3
\baud_clock:cnt_baud[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \cnt_baud~4_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_clock:cnt_baud[7]~q\);

-- Location: LCCOMB_X38_Y4_N22
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Add0~16_combout\ & \Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~16_combout\,
	datad => \Add0~18_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X38_Y4_N14
\sig_baud_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_baud_clk~0_combout\ = \sig_baud_clk~q\ $ (((\Equal0~2_combout\ & (\Equal0~0_combout\ & \Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \sig_baud_clk~q\,
	datad => \Equal0~1_combout\,
	combout => \sig_baud_clk~0_combout\);

-- Location: FF_X38_Y4_N15
sig_baud_clk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_baud_clk~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_baud_clk~q\);

-- Location: FF_X38_Y4_N27
signal_A_q : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \sig_baud_clk~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \signal_A_q~q\);

-- Location: FF_X38_Y4_N21
signal_A_q_not : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \signal_A_q~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \signal_A_q_not~q\);

-- Location: LCCOMB_X38_Y4_N20
sig_arising_edge : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_arising_edge~combout\ = (\signal_A_q~q\ & !\signal_A_q_not~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_A_q~q\,
	datac => \signal_A_q_not~q\,
	combout => \sig_arising_edge~combout\);

-- Location: LCCOMB_X40_Y4_N4
\Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (!\transmission:sig_cntr[3]~1_combout\ & (\transmission:sig_cntr[0]~q\ $ (\transmission:sig_cntr[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmission:sig_cntr[3]~1_combout\,
	datab => \transmission:sig_cntr[0]~q\,
	datac => \transmission:sig_cntr[1]~q\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X39_Y4_N2
\transmission:sig_cntr[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \transmission:sig_cntr[3]~2_combout\ = (\state_tx.s7~q\ & (((\sig_arising_edge~combout\)))) # (!\state_tx.s7~q\ & ((\state_tx.s4~q\) # ((\state_tx.s2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_tx.s4~q\,
	datab => \sig_arising_edge~combout\,
	datac => \state_tx.s7~q\,
	datad => \state_tx.s2~q\,
	combout => \transmission:sig_cntr[3]~2_combout\);

-- Location: FF_X40_Y4_N5
\transmission:sig_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector10~0_combout\,
	clrn => \resetn~input_o\,
	ena => \transmission:sig_cntr[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmission:sig_cntr[1]~q\);

-- Location: LCCOMB_X40_Y4_N30
\Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (!\transmission:sig_cntr[3]~1_combout\ & (\transmission:sig_cntr[2]~q\ $ (((\transmission:sig_cntr[1]~q\ & \transmission:sig_cntr[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmission:sig_cntr[3]~1_combout\,
	datab => \transmission:sig_cntr[1]~q\,
	datac => \transmission:sig_cntr[2]~q\,
	datad => \transmission:sig_cntr[0]~q\,
	combout => \Selector9~0_combout\);

-- Location: FF_X40_Y4_N31
\transmission:sig_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	clrn => \resetn~input_o\,
	ena => \transmission:sig_cntr[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmission:sig_cntr[2]~q\);

-- Location: LCCOMB_X40_Y4_N16
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \transmission:sig_cntr[3]~q\ $ (((\transmission:sig_cntr[2]~q\ & (\transmission:sig_cntr[0]~q\ & \transmission:sig_cntr[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmission:sig_cntr[2]~q\,
	datab => \transmission:sig_cntr[0]~q\,
	datac => \transmission:sig_cntr[1]~q\,
	datad => \transmission:sig_cntr[3]~q\,
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X40_Y4_N18
\Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\Add1~0_combout\ & !\transmission:sig_cntr[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~0_combout\,
	datac => \transmission:sig_cntr[3]~1_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X40_Y4_N19
\transmission:sig_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	clrn => \resetn~input_o\,
	ena => \transmission:sig_cntr[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmission:sig_cntr[3]~q\);

-- Location: LCCOMB_X40_Y4_N10
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\transmission:sig_cntr[2]~q\) # (((\transmission:sig_cntr[1]~q\) # (\transmission:sig_cntr[3]~q\)) # (!\transmission:sig_cntr[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmission:sig_cntr[2]~q\,
	datab => \transmission:sig_cntr[0]~q\,
	datac => \transmission:sig_cntr[1]~q\,
	datad => \transmission:sig_cntr[3]~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X40_Y4_N24
\Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\transmission:sig_cntr[2]~q\ & (\transmission:sig_cntr[0]~q\ & (\transmission:sig_cntr[1]~q\ & \transmission:sig_cntr[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmission:sig_cntr[2]~q\,
	datab => \transmission:sig_cntr[0]~q\,
	datac => \transmission:sig_cntr[1]~q\,
	datad => \transmission:sig_cntr[3]~q\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X39_Y4_N14
\state_tx~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_tx~24_combout\ = (\signal_A_q~q\ & (!\signal_A_q_not~q\ & (\state_tx.s7~q\ & \Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_A_q~q\,
	datab => \signal_A_q_not~q\,
	datac => \state_tx.s7~q\,
	datad => \Equal3~0_combout\,
	combout => \state_tx~24_combout\);

-- Location: FF_X39_Y4_N15
\state_tx.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \state_tx~24_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_tx.s8~q\);

-- Location: IOIBUF_X78_Y44_N23
\start_triger~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_triger,
	o => \start_triger~input_o\);

-- Location: LCCOMB_X40_Y4_N14
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\state_tx.s8~q\ & ((\state_tx.s0~q\) # (\start_triger~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_tx.s8~q\,
	datac => \state_tx.s0~q\,
	datad => \start_triger~input_o\,
	combout => \Selector0~0_combout\);

-- Location: FF_X40_Y4_N15
\state_tx.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_tx.s0~q\);

-- Location: LCCOMB_X40_Y4_N28
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\start_triger~input_o\ & ((\state_tx.s1~q\) # (!\state_tx.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_tx.s0~q\,
	datac => \state_tx.s1~q\,
	datad => \start_triger~input_o\,
	combout => \Selector1~0_combout\);

-- Location: FF_X40_Y4_N29
\state_tx.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_tx.s1~q\);

-- Location: LCCOMB_X40_Y4_N6
\Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\ & ((\state_tx.s2~q\) # ((\state_tx.s1~q\ & !\start_triger~input_o\)))) # (!\Selector2~0_combout\ & (\state_tx.s1~q\ & ((!\start_triger~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \state_tx.s1~q\,
	datac => \state_tx.s2~q\,
	datad => \start_triger~input_o\,
	combout => \Selector2~1_combout\);

-- Location: FF_X40_Y4_N7
\state_tx.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector2~1_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_tx.s2~q\);

-- Location: LCCOMB_X40_Y4_N20
\transmission:sig_cntr[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \transmission:sig_cntr[3]~0_combout\ = (\Selector3~1_combout\) # ((!\state_tx.s2~q\ & (\state_tx.s7~q\ & \Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_tx.s2~q\,
	datab => \state_tx.s7~q\,
	datac => \Selector3~1_combout\,
	datad => \Equal3~0_combout\,
	combout => \transmission:sig_cntr[3]~0_combout\);

-- Location: LCCOMB_X40_Y4_N12
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\transmission:sig_cntr[2]~q\ & (!\transmission:sig_cntr[0]~q\ & (!\transmission:sig_cntr[1]~q\ & !\transmission:sig_cntr[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmission:sig_cntr[2]~q\,
	datab => \transmission:sig_cntr[0]~q\,
	datac => \transmission:sig_cntr[1]~q\,
	datad => \transmission:sig_cntr[3]~q\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X40_Y4_N22
\transmission:sig_cntr[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \transmission:sig_cntr[3]~1_combout\ = (\transmission:sig_cntr[3]~0_combout\) # ((!\state_tx.s2~q\ & (!\state_tx.s7~q\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_tx.s2~q\,
	datab => \transmission:sig_cntr[3]~0_combout\,
	datac => \state_tx.s7~q\,
	datad => \Equal2~0_combout\,
	combout => \transmission:sig_cntr[3]~1_combout\);

-- Location: LCCOMB_X40_Y4_N0
\Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (!\transmission:sig_cntr[3]~1_combout\ & !\transmission:sig_cntr[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmission:sig_cntr[3]~1_combout\,
	datac => \transmission:sig_cntr[0]~q\,
	combout => \Selector11~0_combout\);

-- Location: FF_X40_Y4_N1
\transmission:sig_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector11~0_combout\,
	clrn => \resetn~input_o\,
	ena => \transmission:sig_cntr[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmission:sig_cntr[0]~q\);

-- Location: LCCOMB_X40_Y4_N8
\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\transmission:sig_cntr[2]~q\ & (!\transmission:sig_cntr[3]~q\ & (\transmission:sig_cntr[0]~q\ $ (\transmission:sig_cntr[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmission:sig_cntr[2]~q\,
	datab => \transmission:sig_cntr[0]~q\,
	datac => \transmission:sig_cntr[1]~q\,
	datad => \transmission:sig_cntr[3]~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X40_Y4_N26
\Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\transmission:sig_cntr[0]~q\ & (\Selector3~0_combout\ & \state_tx.s2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmission:sig_cntr[0]~q\,
	datac => \Selector3~0_combout\,
	datad => \state_tx.s2~q\,
	combout => \Selector3~1_combout\);

-- Location: FF_X40_Y4_N27
\state_tx.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector3~1_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_tx.s3~q\);

-- Location: LCCOMB_X40_Y4_N2
\Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state_tx.s3~q\) # ((\state_tx.s4~q\ & !\Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_tx.s3~q\,
	datac => \state_tx.s4~q\,
	datad => \Equal2~0_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X40_Y4_N3
\state_tx.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_tx.s4~q\);

-- Location: LCCOMB_X39_Y4_N20
\Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\state_tx.s4~q\ & \Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_tx.s4~q\,
	datac => \Equal2~0_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X39_Y4_N21
\state_tx.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_tx.s5~q\);

-- Location: FF_X38_Y4_N9
\state_tx.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \state_tx.s5~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_tx.s6~q\);

-- Location: LCCOMB_X39_Y4_N18
\Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\state_tx.s6~q\) # ((\state_tx.s7~q\ & ((!\Equal3~0_combout\) # (!\sig_arising_edge~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_tx.s6~q\,
	datab => \sig_arising_edge~combout\,
	datac => \state_tx.s7~q\,
	datad => \Equal3~0_combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X39_Y4_N19
\state_tx.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_tx.s7~q\);

-- Location: LCCOMB_X39_Y4_N16
\sig_packet[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_packet[6]~4_combout\ = (sig_packet(6)) # (\sig_arising_edge~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sig_packet(6),
	datad => \sig_arising_edge~combout\,
	combout => \sig_packet[6]~4_combout\);

-- Location: LCCOMB_X39_Y4_N26
\Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (sig_packet(6) & !\state_tx.s5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_packet(6),
	datad => \state_tx.s5~q\,
	combout => \Selector17~0_combout\);

-- Location: FF_X39_Y4_N17
\sig_packet[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_packet[6]~4_combout\,
	asdata => \Selector17~0_combout\,
	sload => \ALT_INV_state_tx.s7~q\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_packet(6));

-- Location: LCCOMB_X39_Y4_N6
\sig_packet[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_packet[5]~3_combout\ = (\sig_arising_edge~combout\ & ((sig_packet(6)))) # (!\sig_arising_edge~combout\ & (sig_packet(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_arising_edge~combout\,
	datac => sig_packet(5),
	datad => sig_packet(6),
	combout => \sig_packet[5]~3_combout\);

-- Location: LCCOMB_X39_Y4_N0
\Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (sig_packet(5) & !\state_tx.s5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_packet(5),
	datad => \state_tx.s5~q\,
	combout => \Selector18~0_combout\);

-- Location: FF_X39_Y4_N7
\sig_packet[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_packet[5]~3_combout\,
	asdata => \Selector18~0_combout\,
	sload => \ALT_INV_state_tx.s7~q\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_packet(5));

-- Location: LCCOMB_X38_Y4_N12
\Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (sig_packet(5)) # (!\state_tx.s7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_packet(5),
	datad => \state_tx.s7~q\,
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X38_Y4_N16
\sig_packet[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_packet[2]~5_combout\ = (\resetn~input_o\ & ((\state_tx.s7~q\ & ((\sig_arising_edge~combout\))) # (!\state_tx.s7~q\ & (\state_tx.s5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_tx.s5~q\,
	datab => \sig_arising_edge~combout\,
	datac => \resetn~input_o\,
	datad => \state_tx.s7~q\,
	combout => \sig_packet[2]~5_combout\);

-- Location: FF_X38_Y4_N13
\sig_packet[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	ena => \sig_packet[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_packet(4));

-- Location: LCCOMB_X39_Y4_N4
\sig_packet[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_packet[3]~2_combout\ = (\sig_arising_edge~combout\ & ((sig_packet(4)))) # (!\sig_arising_edge~combout\ & (sig_packet(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_arising_edge~combout\,
	datac => sig_packet(3),
	datad => sig_packet(4),
	combout => \sig_packet[3]~2_combout\);

-- Location: LCCOMB_X39_Y4_N28
\Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (!\state_tx.s5~q\ & sig_packet(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_tx.s5~q\,
	datac => sig_packet(3),
	combout => \Selector20~0_combout\);

-- Location: FF_X39_Y4_N5
\sig_packet[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_packet[3]~2_combout\,
	asdata => \Selector20~0_combout\,
	sload => \ALT_INV_state_tx.s7~q\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_packet(3));

-- Location: LCCOMB_X38_Y4_N10
\Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (sig_packet(3)) # (!\state_tx.s7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_packet(3),
	datad => \state_tx.s7~q\,
	combout => \Selector21~0_combout\);

-- Location: FF_X38_Y4_N11
\sig_packet[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \Selector21~0_combout\,
	ena => \sig_packet[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_packet(2));

-- Location: LCCOMB_X39_Y4_N10
\sig_packet[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_packet[1]~1_combout\ = (\sig_arising_edge~combout\ & (sig_packet(2))) # (!\sig_arising_edge~combout\ & ((sig_packet(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_packet(2),
	datac => sig_packet(1),
	datad => \sig_arising_edge~combout\,
	combout => \sig_packet[1]~1_combout\);

-- Location: LCCOMB_X39_Y4_N8
\Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (sig_packet(1) & !\state_tx.s5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_packet(1),
	datad => \state_tx.s5~q\,
	combout => \Selector22~0_combout\);

-- Location: FF_X39_Y4_N11
\sig_packet[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_packet[1]~1_combout\,
	asdata => \Selector22~0_combout\,
	sload => \ALT_INV_state_tx.s7~q\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_packet(1));

-- Location: LCCOMB_X39_Y4_N24
\sig_packet[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_packet[0]~0_combout\ = (\sig_arising_edge~combout\ & ((sig_packet(1)))) # (!\sig_arising_edge~combout\ & (sig_packet(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_arising_edge~combout\,
	datac => sig_packet(0),
	datad => sig_packet(1),
	combout => \sig_packet[0]~0_combout\);

-- Location: LCCOMB_X39_Y4_N30
\Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (!\state_tx.s5~q\ & sig_packet(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_tx.s5~q\,
	datad => sig_packet(0),
	combout => \Selector23~0_combout\);

-- Location: FF_X39_Y4_N25
\sig_packet[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_packet[0]~0_combout\,
	asdata => \Selector23~0_combout\,
	sload => \ALT_INV_state_tx.s7~q\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_packet(0));

-- Location: LCCOMB_X38_Y4_N24
\sig_bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_bit~0_combout\ = (\sig_arising_edge~combout\ & ((\state_tx.s7~q\ & ((!sig_packet(0)))) # (!\state_tx.s7~q\ & (\sig_bit~q\)))) # (!\sig_arising_edge~combout\ & (((\sig_bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_arising_edge~combout\,
	datab => \state_tx.s7~q\,
	datac => \sig_bit~q\,
	datad => sig_packet(0),
	combout => \sig_bit~0_combout\);

-- Location: FF_X38_Y4_N25
sig_bit : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_bit~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_bit~q\);

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
END structure;


