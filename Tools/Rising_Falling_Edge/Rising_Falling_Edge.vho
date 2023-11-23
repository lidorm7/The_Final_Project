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

-- DATE "04/29/2023 19:55:15"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Rising_Falling_Edge IS
    PORT (
	resetn : IN std_logic;
	sysclk : IN std_logic;
	clk_7 : BUFFER std_logic;
	clk_6 : BUFFER std_logic;
	signal_A_q : BUFFER std_logic;
	signal_A_q_not : BUFFER std_logic;
	signal_A_r : BUFFER std_logic;
	signal_A_f : BUFFER std_logic
	);
END Rising_Falling_Edge;

-- Design Ports Information
-- clk_7	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_6	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_A_q	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_A_q_not	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_A_r	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_A_f	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sysclk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Rising_Falling_Edge IS
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
SIGNAL ww_clk_7 : std_logic;
SIGNAL ww_clk_6 : std_logic;
SIGNAL ww_signal_A_q : std_logic;
SIGNAL ww_signal_A_q_not : std_logic;
SIGNAL ww_signal_A_r : std_logic;
SIGNAL ww_signal_A_f : std_logic;
SIGNAL \resetn~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sysclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_7~output_o\ : std_logic;
SIGNAL \clk_6~output_o\ : std_logic;
SIGNAL \signal_A_q~output_o\ : std_logic;
SIGNAL \signal_A_q_not~output_o\ : std_logic;
SIGNAL \signal_A_r~output_o\ : std_logic;
SIGNAL \signal_A_f~output_o\ : std_logic;
SIGNAL \sysclk~input_o\ : std_logic;
SIGNAL \sysclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sig_counter[0]~21_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \resetn~inputclkctrl_outclk\ : std_logic;
SIGNAL \sig_counter[1]~7_combout\ : std_logic;
SIGNAL \sig_counter[1]~8\ : std_logic;
SIGNAL \sig_counter[2]~9_combout\ : std_logic;
SIGNAL \sig_counter[2]~10\ : std_logic;
SIGNAL \sig_counter[3]~11_combout\ : std_logic;
SIGNAL \sig_counter[3]~12\ : std_logic;
SIGNAL \sig_counter[4]~13_combout\ : std_logic;
SIGNAL \sig_counter[4]~14\ : std_logic;
SIGNAL \sig_counter[5]~15_combout\ : std_logic;
SIGNAL \sig_counter[5]~16\ : std_logic;
SIGNAL \sig_counter[6]~17_combout\ : std_logic;
SIGNAL \sig_counter[6]~18\ : std_logic;
SIGNAL \sig_counter[7]~19_combout\ : std_logic;
SIGNAL \clk_7~reg0feeder_combout\ : std_logic;
SIGNAL \clk_7~reg0_q\ : std_logic;
SIGNAL \clk_6~reg0feeder_combout\ : std_logic;
SIGNAL \clk_6~reg0_q\ : std_logic;
SIGNAL \sig_Aclock_q~feeder_combout\ : std_logic;
SIGNAL \sig_Aclock_q~q\ : std_logic;
SIGNAL \sig_Aclock_q_not~feeder_combout\ : std_logic;
SIGNAL \sig_Aclock_q_not~q\ : std_logic;
SIGNAL \sig_Araising~0_combout\ : std_logic;
SIGNAL \sig_Afaling~0_combout\ : std_logic;
SIGNAL sig_counter : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_sig_Afaling~0_combout\ : std_logic;
SIGNAL \ALT_INV_sig_Aclock_q_not~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_resetn <= resetn;
ww_sysclk <= sysclk;
clk_7 <= ww_clk_7;
clk_6 <= ww_clk_6;
signal_A_q <= ww_signal_A_q;
signal_A_q_not <= ww_signal_A_q_not;
signal_A_r <= ww_signal_A_r;
signal_A_f <= ww_signal_A_f;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\resetn~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \resetn~input_o\);

\sysclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sysclk~input_o\);
\ALT_INV_sig_Afaling~0_combout\ <= NOT \sig_Afaling~0_combout\;
\ALT_INV_sig_Aclock_q_not~q\ <= NOT \sig_Aclock_q_not~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y12_N2
\clk_7~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_7~reg0_q\,
	devoe => ww_devoe,
	o => \clk_7~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\clk_6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_6~reg0_q\,
	devoe => ww_devoe,
	o => \clk_6~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\signal_A_q~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_Aclock_q~q\,
	devoe => ww_devoe,
	o => \signal_A_q~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\signal_A_q_not~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_sig_Aclock_q_not~q\,
	devoe => ww_devoe,
	o => \signal_A_q_not~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\signal_A_r~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sig_Araising~0_combout\,
	devoe => ww_devoe,
	o => \signal_A_r~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\signal_A_f~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_sig_Afaling~0_combout\,
	devoe => ww_devoe,
	o => \signal_A_f~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\sysclk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sysclk,
	o => \sysclk~input_o\);

-- Location: CLKCTRL_G2
\sysclk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: LCCOMB_X1_Y12_N2
\sig_counter[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_counter[0]~21_combout\ = !sig_counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sig_counter(0),
	combout => \sig_counter[0]~21_combout\);

-- Location: IOIBUF_X0_Y16_N15
\resetn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetn,
	o => \resetn~input_o\);

-- Location: CLKCTRL_G4
\resetn~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: FF_X1_Y12_N3
\sig_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_counter[0]~21_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(0));

-- Location: LCCOMB_X1_Y12_N6
\sig_counter[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_counter[1]~7_combout\ = (sig_counter(0) & (sig_counter(1) $ (VCC))) # (!sig_counter(0) & (sig_counter(1) & VCC))
-- \sig_counter[1]~8\ = CARRY((sig_counter(0) & sig_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_counter(0),
	datab => sig_counter(1),
	datad => VCC,
	combout => \sig_counter[1]~7_combout\,
	cout => \sig_counter[1]~8\);

-- Location: FF_X1_Y12_N7
\sig_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_counter[1]~7_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(1));

-- Location: LCCOMB_X1_Y12_N8
\sig_counter[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_counter[2]~9_combout\ = (sig_counter(2) & (!\sig_counter[1]~8\)) # (!sig_counter(2) & ((\sig_counter[1]~8\) # (GND)))
-- \sig_counter[2]~10\ = CARRY((!\sig_counter[1]~8\) # (!sig_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_counter(2),
	datad => VCC,
	cin => \sig_counter[1]~8\,
	combout => \sig_counter[2]~9_combout\,
	cout => \sig_counter[2]~10\);

-- Location: FF_X1_Y12_N9
\sig_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_counter[2]~9_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(2));

-- Location: LCCOMB_X1_Y12_N10
\sig_counter[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_counter[3]~11_combout\ = (sig_counter(3) & (\sig_counter[2]~10\ $ (GND))) # (!sig_counter(3) & (!\sig_counter[2]~10\ & VCC))
-- \sig_counter[3]~12\ = CARRY((sig_counter(3) & !\sig_counter[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_counter(3),
	datad => VCC,
	cin => \sig_counter[2]~10\,
	combout => \sig_counter[3]~11_combout\,
	cout => \sig_counter[3]~12\);

-- Location: FF_X1_Y12_N11
\sig_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_counter[3]~11_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(3));

-- Location: LCCOMB_X1_Y12_N12
\sig_counter[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_counter[4]~13_combout\ = (sig_counter(4) & (!\sig_counter[3]~12\)) # (!sig_counter(4) & ((\sig_counter[3]~12\) # (GND)))
-- \sig_counter[4]~14\ = CARRY((!\sig_counter[3]~12\) # (!sig_counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sig_counter(4),
	datad => VCC,
	cin => \sig_counter[3]~12\,
	combout => \sig_counter[4]~13_combout\,
	cout => \sig_counter[4]~14\);

-- Location: FF_X1_Y12_N13
\sig_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_counter[4]~13_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(4));

-- Location: LCCOMB_X1_Y12_N14
\sig_counter[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_counter[5]~15_combout\ = (sig_counter(5) & (\sig_counter[4]~14\ $ (GND))) # (!sig_counter(5) & (!\sig_counter[4]~14\ & VCC))
-- \sig_counter[5]~16\ = CARRY((sig_counter(5) & !\sig_counter[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_counter(5),
	datad => VCC,
	cin => \sig_counter[4]~14\,
	combout => \sig_counter[5]~15_combout\,
	cout => \sig_counter[5]~16\);

-- Location: FF_X1_Y12_N15
\sig_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_counter[5]~15_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(5));

-- Location: LCCOMB_X1_Y12_N16
\sig_counter[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_counter[6]~17_combout\ = (sig_counter(6) & (!\sig_counter[5]~16\)) # (!sig_counter(6) & ((\sig_counter[5]~16\) # (GND)))
-- \sig_counter[6]~18\ = CARRY((!\sig_counter[5]~16\) # (!sig_counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sig_counter(6),
	datad => VCC,
	cin => \sig_counter[5]~16\,
	combout => \sig_counter[6]~17_combout\,
	cout => \sig_counter[6]~18\);

-- Location: FF_X1_Y12_N17
\sig_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_counter[6]~17_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(6));

-- Location: LCCOMB_X1_Y12_N18
\sig_counter[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_counter[7]~19_combout\ = \sig_counter[6]~18\ $ (!sig_counter(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sig_counter(7),
	cin => \sig_counter[6]~18\,
	combout => \sig_counter[7]~19_combout\);

-- Location: FF_X1_Y12_N19
\sig_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_counter[7]~19_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_counter(7));

-- Location: LCCOMB_X1_Y12_N0
\clk_7~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_7~reg0feeder_combout\ = sig_counter(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_counter(7),
	combout => \clk_7~reg0feeder_combout\);

-- Location: FF_X1_Y12_N1
\clk_7~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \clk_7~reg0feeder_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_7~reg0_q\);

-- Location: LCCOMB_X1_Y12_N26
\clk_6~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6~reg0feeder_combout\ = sig_counter(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_counter(6),
	combout => \clk_6~reg0feeder_combout\);

-- Location: FF_X1_Y12_N27
\clk_6~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \clk_6~reg0feeder_combout\,
	ena => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6~reg0_q\);

-- Location: LCCOMB_X1_Y12_N28
\sig_Aclock_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_Aclock_q~feeder_combout\ = sig_counter(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_counter(7),
	combout => \sig_Aclock_q~feeder_combout\);

-- Location: FF_X1_Y12_N29
sig_Aclock_q : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_Aclock_q~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_Aclock_q~q\);

-- Location: LCCOMB_X1_Y12_N4
\sig_Aclock_q_not~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_Aclock_q_not~feeder_combout\ = \sig_Aclock_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sig_Aclock_q~q\,
	combout => \sig_Aclock_q_not~feeder_combout\);

-- Location: FF_X1_Y12_N5
sig_Aclock_q_not : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_Aclock_q_not~feeder_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_Aclock_q_not~q\);

-- Location: LCCOMB_X1_Y12_N30
\sig_Araising~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_Araising~0_combout\ = (!\sig_Aclock_q_not~q\ & \sig_Aclock_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig_Aclock_q_not~q\,
	datad => \sig_Aclock_q~q\,
	combout => \sig_Araising~0_combout\);

-- Location: LCCOMB_X1_Y12_N24
\sig_Afaling~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sig_Afaling~0_combout\ = (\sig_Aclock_q~q\) # (!\sig_Aclock_q_not~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig_Aclock_q_not~q\,
	datad => \sig_Aclock_q~q\,
	combout => \sig_Afaling~0_combout\);

ww_clk_7 <= \clk_7~output_o\;

ww_clk_6 <= \clk_6~output_o\;

ww_signal_A_q <= \signal_A_q~output_o\;

ww_signal_A_q_not <= \signal_A_q_not~output_o\;

ww_signal_A_r <= \signal_A_r~output_o\;

ww_signal_A_f <= \signal_A_f~output_o\;
END structure;


