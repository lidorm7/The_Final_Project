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

-- DATE "02/27/2024 22:16:25"

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

ENTITY 	Simple_BS IS
    PORT (
	resetn : IN std_logic;
	sysclk : IN std_logic;
	bi_phase_filtered : IN std_logic;
	main_clk : OUT std_logic;
	nrzl_data : OUT std_logic
	);
END Simple_BS;

-- Design Ports Information
-- main_clk	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nrzl_data	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sysclk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bi_phase_filtered	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Simple_BS IS
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
SIGNAL ww_bi_phase_filtered : std_logic;
SIGNAL ww_main_clk : std_logic;
SIGNAL ww_nrzl_data : std_logic;
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
SIGNAL \sysclk~input_o\ : std_logic;
SIGNAL \sysclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \cnt_clk[0]~14_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \resetn~inputclkctrl_outclk\ : std_logic;
SIGNAL \bi_phase_filtered~input_o\ : std_logic;
SIGNAL \sig_bi_phase_filterd_cut~q\ : std_logic;
SIGNAL \sig_bi_phase_filterd_cut_not~q\ : std_logic;
SIGNAL \sig_enable~0_combout\ : std_logic;
SIGNAL \cnt_clk[12]~39\ : std_logic;
SIGNAL \cnt_clk[13]~40_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \sig_enable~1_combout\ : std_logic;
SIGNAL \sig_enable~q\ : std_logic;
SIGNAL \clk_00~0_combout\ : std_logic;
SIGNAL \cnt_clk[0]~15\ : std_logic;
SIGNAL \cnt_clk[1]~16_combout\ : std_logic;
SIGNAL \cnt_clk[1]~17\ : std_logic;
SIGNAL \cnt_clk[2]~18_combout\ : std_logic;
SIGNAL \cnt_clk[2]~19\ : std_logic;
SIGNAL \cnt_clk[3]~20_combout\ : std_logic;
SIGNAL \cnt_clk[3]~21\ : std_logic;
SIGNAL \cnt_clk[4]~22_combout\ : std_logic;
SIGNAL \cnt_clk[4]~23\ : std_logic;
SIGNAL \cnt_clk[5]~24_combout\ : std_logic;
SIGNAL \cnt_clk[5]~25\ : std_logic;
SIGNAL \cnt_clk[6]~26_combout\ : std_logic;
SIGNAL \cnt_clk[6]~27\ : std_logic;
SIGNAL \cnt_clk[7]~28_combout\ : std_logic;
SIGNAL \cnt_clk[7]~29\ : std_logic;
SIGNAL \cnt_clk[8]~30_combout\ : std_logic;
SIGNAL \cnt_clk[8]~31\ : std_logic;
SIGNAL \cnt_clk[9]~32_combout\ : std_logic;
SIGNAL \cnt_clk[9]~33\ : std_logic;
SIGNAL \cnt_clk[10]~34_combout\ : std_logic;
SIGNAL \cnt_clk[10]~35\ : std_logic;
SIGNAL \cnt_clk[11]~36_combout\ : std_logic;
SIGNAL \cnt_clk[11]~37\ : std_logic;
SIGNAL \cnt_clk[12]~38_combout\ : std_logic;
SIGNAL \sig_00_clk~0_combout\ : std_logic;
SIGNAL \sig_00_clk~q\ : std_logic;
SIGNAL \sig_00_cut~0_combout\ : std_logic;
SIGNAL \sig_00_cut~q\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \sig_90_clk~0_combout\ : std_logic;
SIGNAL \sig_90_clk~q\ : std_logic;
SIGNAL \sig_90_cut~q\ : std_logic;
SIGNAL \sig_90_cut_not~q\ : std_logic;
SIGNAL \sig_ff_B~0_combout\ : std_logic;
SIGNAL \sig_ff_B~1_combout\ : std_logic;
SIGNAL \sig_ff_B~q\ : std_logic;
SIGNAL \sig_00_cut_not~q\ : std_logic;
SIGNAL \sig_ff_A~0_combout\ : std_logic;
SIGNAL \sig_ff_A~1_combout\ : std_logic;
SIGNAL \sig_ff_A~q\ : std_logic;
SIGNAL \nrzl_data~0_combout\ : std_logic;
SIGNAL \nrzl_data~1_combout\ : std_logic;
SIGNAL \nrzl_data~reg0_q\ : std_logic;
SIGNAL cnt_clk : std_logic_vector(13 DOWNTO 0);
SIGNAL \ALT_INV_sig_00_clk~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_resetn <= resetn;
ww_sysclk <= sysclk;
ww_bi_phase_filtered <= bi_phase_filtered;
main_clk <= ww_main_clk;
nrzl_data <= ww_nrzl_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\resetn~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \resetn~input_o\);

\sysclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sysclk~input_o\);
\ALT_INV_sig_00_clk~q\ <= NOT \sig_00_clk~q\;
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

-- Location: IOOBUF_X78_Y29_N9
\main_clk~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_sig_00_clk~q\,
	devoe => ww_devoe,
	o => \main_clk~output_o\);

-- Location: IOOBUF_X78_Y29_N23
\nrzl_data~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \nrzl_data~reg0_q\,
	devoe => ww_devoe,
	o => \nrzl_data~output_o\);

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

-- Location: LCCOMB_X76_Y32_N2
\cnt_clk[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_clk[0]~14_combout\ = cnt_clk(0) $ (VCC)
-- \cnt_clk[0]~15\ = CARRY(cnt_clk(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt_clk(0),
	datad => VCC,
	combout => \cnt_clk[0]~14_combout\,
	cout => \cnt_clk[0]~15\);

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

-- Location: IOIBUF_X78_Y29_N1
\bi_phase_filtered~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bi_phase_filtered,
	o => \bi_phase_filtered~input_o\);

-- Location: FF_X77_Y32_N23
sig_bi_phase_filterd_cut : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \bi_phase_filtered~input_o\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_bi_phase_filterd_cut~q\);

-- Location: FF_X77_Y32_N29
sig_bi_phase_filterd_cut_not : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \sig_bi_phase_filterd_cut~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_bi_phase_filterd_cut_not~q\);

-- Location: LCCOMB_X77_Y32_N24
\sig_enable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_enable~0_combout\ = (\sig_enable~q\ & (\sig_bi_phase_filterd_cut_not~q\ $ (!\sig_bi_phase_filterd_cut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_bi_phase_filterd_cut_not~q\,
	datab => \sig_enable~q\,
	datac => \sig_bi_phase_filterd_cut~q\,
	combout => \sig_enable~0_combout\);

-- Location: LCCOMB_X76_Y32_N26
\cnt_clk[12]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_clk[12]~38_combout\ = (cnt_clk(12) & (\cnt_clk[11]~37\ $ (GND))) # (!cnt_clk(12) & (!\cnt_clk[11]~37\ & VCC))
-- \cnt_clk[12]~39\ = CARRY((cnt_clk(12) & !\cnt_clk[11]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_clk(12),
	datad => VCC,
	cin => \cnt_clk[11]~37\,
	combout => \cnt_clk[12]~38_combout\,
	cout => \cnt_clk[12]~39\);

-- Location: LCCOMB_X76_Y32_N28
\cnt_clk[13]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_clk[13]~40_combout\ = \cnt_clk[12]~39\ $ (cnt_clk(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt_clk(13),
	cin => \cnt_clk[12]~39\,
	combout => \cnt_clk[13]~40_combout\);

-- Location: FF_X76_Y32_N29
\cnt_clk[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \cnt_clk[13]~40_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_clk(13));

-- Location: LCCOMB_X76_Y32_N30
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!cnt_clk(8) & (!cnt_clk(11) & (!cnt_clk(10) & !cnt_clk(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_clk(8),
	datab => cnt_clk(11),
	datac => cnt_clk(10),
	datad => cnt_clk(9),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X76_Y32_N0
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!cnt_clk(5) & (!cnt_clk(7) & (!cnt_clk(6) & !cnt_clk(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_clk(5),
	datab => cnt_clk(7),
	datac => cnt_clk(6),
	datad => cnt_clk(4),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X77_Y32_N18
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!cnt_clk(3) & (!cnt_clk(2) & (!cnt_clk(1) & !cnt_clk(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_clk(3),
	datab => cnt_clk(2),
	datac => cnt_clk(1),
	datad => cnt_clk(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X77_Y32_N20
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (cnt_clk(13) & (\Equal0~2_combout\ & (\Equal0~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_clk(13),
	datab => \Equal0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X77_Y32_N4
\sig_enable~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_enable~1_combout\ = (\sig_enable~0_combout\) # ((cnt_clk(12) & (!\sig_enable~q\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_clk(12),
	datab => \sig_enable~0_combout\,
	datac => \sig_enable~q\,
	datad => \Equal0~3_combout\,
	combout => \sig_enable~1_combout\);

-- Location: FF_X77_Y32_N5
sig_enable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_enable~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_enable~q\);

-- Location: LCCOMB_X77_Y32_N28
\clk_00~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_00~0_combout\ = (\sig_enable~q\ & (\sig_bi_phase_filterd_cut~q\ $ (\sig_bi_phase_filterd_cut_not~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_bi_phase_filterd_cut~q\,
	datab => \sig_enable~q\,
	datac => \sig_bi_phase_filterd_cut_not~q\,
	combout => \clk_00~0_combout\);

-- Location: FF_X76_Y32_N3
\cnt_clk[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \cnt_clk[0]~14_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_clk(0));

-- Location: LCCOMB_X76_Y32_N4
\cnt_clk[1]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_clk[1]~16_combout\ = (cnt_clk(1) & (!\cnt_clk[0]~15\)) # (!cnt_clk(1) & ((\cnt_clk[0]~15\) # (GND)))
-- \cnt_clk[1]~17\ = CARRY((!\cnt_clk[0]~15\) # (!cnt_clk(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_clk(1),
	datad => VCC,
	cin => \cnt_clk[0]~15\,
	combout => \cnt_clk[1]~16_combout\,
	cout => \cnt_clk[1]~17\);

-- Location: FF_X76_Y32_N5
\cnt_clk[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \cnt_clk[1]~16_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_clk(1));

-- Location: LCCOMB_X76_Y32_N6
\cnt_clk[2]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_clk[2]~18_combout\ = (cnt_clk(2) & (\cnt_clk[1]~17\ $ (GND))) # (!cnt_clk(2) & (!\cnt_clk[1]~17\ & VCC))
-- \cnt_clk[2]~19\ = CARRY((cnt_clk(2) & !\cnt_clk[1]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_clk(2),
	datad => VCC,
	cin => \cnt_clk[1]~17\,
	combout => \cnt_clk[2]~18_combout\,
	cout => \cnt_clk[2]~19\);

-- Location: FF_X76_Y32_N7
\cnt_clk[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \cnt_clk[2]~18_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_clk(2));

-- Location: LCCOMB_X76_Y32_N8
\cnt_clk[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_clk[3]~20_combout\ = (cnt_clk(3) & (!\cnt_clk[2]~19\)) # (!cnt_clk(3) & ((\cnt_clk[2]~19\) # (GND)))
-- \cnt_clk[3]~21\ = CARRY((!\cnt_clk[2]~19\) # (!cnt_clk(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_clk(3),
	datad => VCC,
	cin => \cnt_clk[2]~19\,
	combout => \cnt_clk[3]~20_combout\,
	cout => \cnt_clk[3]~21\);

-- Location: FF_X76_Y32_N9
\cnt_clk[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \cnt_clk[3]~20_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_clk(3));

-- Location: LCCOMB_X76_Y32_N10
\cnt_clk[4]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_clk[4]~22_combout\ = (cnt_clk(4) & (\cnt_clk[3]~21\ $ (GND))) # (!cnt_clk(4) & (!\cnt_clk[3]~21\ & VCC))
-- \cnt_clk[4]~23\ = CARRY((cnt_clk(4) & !\cnt_clk[3]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_clk(4),
	datad => VCC,
	cin => \cnt_clk[3]~21\,
	combout => \cnt_clk[4]~22_combout\,
	cout => \cnt_clk[4]~23\);

-- Location: FF_X76_Y32_N11
\cnt_clk[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \cnt_clk[4]~22_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_clk(4));

-- Location: LCCOMB_X76_Y32_N12
\cnt_clk[5]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_clk[5]~24_combout\ = (cnt_clk(5) & (!\cnt_clk[4]~23\)) # (!cnt_clk(5) & ((\cnt_clk[4]~23\) # (GND)))
-- \cnt_clk[5]~25\ = CARRY((!\cnt_clk[4]~23\) # (!cnt_clk(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_clk(5),
	datad => VCC,
	cin => \cnt_clk[4]~23\,
	combout => \cnt_clk[5]~24_combout\,
	cout => \cnt_clk[5]~25\);

-- Location: FF_X76_Y32_N13
\cnt_clk[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \cnt_clk[5]~24_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_clk(5));

-- Location: LCCOMB_X76_Y32_N14
\cnt_clk[6]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_clk[6]~26_combout\ = (cnt_clk(6) & (\cnt_clk[5]~25\ $ (GND))) # (!cnt_clk(6) & (!\cnt_clk[5]~25\ & VCC))
-- \cnt_clk[6]~27\ = CARRY((cnt_clk(6) & !\cnt_clk[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_clk(6),
	datad => VCC,
	cin => \cnt_clk[5]~25\,
	combout => \cnt_clk[6]~26_combout\,
	cout => \cnt_clk[6]~27\);

-- Location: FF_X76_Y32_N15
\cnt_clk[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \cnt_clk[6]~26_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_clk(6));

-- Location: LCCOMB_X76_Y32_N16
\cnt_clk[7]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_clk[7]~28_combout\ = (cnt_clk(7) & (!\cnt_clk[6]~27\)) # (!cnt_clk(7) & ((\cnt_clk[6]~27\) # (GND)))
-- \cnt_clk[7]~29\ = CARRY((!\cnt_clk[6]~27\) # (!cnt_clk(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_clk(7),
	datad => VCC,
	cin => \cnt_clk[6]~27\,
	combout => \cnt_clk[7]~28_combout\,
	cout => \cnt_clk[7]~29\);

-- Location: FF_X76_Y32_N17
\cnt_clk[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \cnt_clk[7]~28_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_clk(7));

-- Location: LCCOMB_X76_Y32_N18
\cnt_clk[8]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_clk[8]~30_combout\ = (cnt_clk(8) & (\cnt_clk[7]~29\ $ (GND))) # (!cnt_clk(8) & (!\cnt_clk[7]~29\ & VCC))
-- \cnt_clk[8]~31\ = CARRY((cnt_clk(8) & !\cnt_clk[7]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_clk(8),
	datad => VCC,
	cin => \cnt_clk[7]~29\,
	combout => \cnt_clk[8]~30_combout\,
	cout => \cnt_clk[8]~31\);

-- Location: FF_X76_Y32_N19
\cnt_clk[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \cnt_clk[8]~30_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_clk(8));

-- Location: LCCOMB_X76_Y32_N20
\cnt_clk[9]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_clk[9]~32_combout\ = (cnt_clk(9) & (!\cnt_clk[8]~31\)) # (!cnt_clk(9) & ((\cnt_clk[8]~31\) # (GND)))
-- \cnt_clk[9]~33\ = CARRY((!\cnt_clk[8]~31\) # (!cnt_clk(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_clk(9),
	datad => VCC,
	cin => \cnt_clk[8]~31\,
	combout => \cnt_clk[9]~32_combout\,
	cout => \cnt_clk[9]~33\);

-- Location: FF_X76_Y32_N21
\cnt_clk[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \cnt_clk[9]~32_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_clk(9));

-- Location: LCCOMB_X76_Y32_N22
\cnt_clk[10]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_clk[10]~34_combout\ = (cnt_clk(10) & (\cnt_clk[9]~33\ $ (GND))) # (!cnt_clk(10) & (!\cnt_clk[9]~33\ & VCC))
-- \cnt_clk[10]~35\ = CARRY((cnt_clk(10) & !\cnt_clk[9]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_clk(10),
	datad => VCC,
	cin => \cnt_clk[9]~33\,
	combout => \cnt_clk[10]~34_combout\,
	cout => \cnt_clk[10]~35\);

-- Location: FF_X76_Y32_N23
\cnt_clk[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \cnt_clk[10]~34_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_clk(10));

-- Location: LCCOMB_X76_Y32_N24
\cnt_clk[11]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt_clk[11]~36_combout\ = (cnt_clk(11) & (!\cnt_clk[10]~35\)) # (!cnt_clk(11) & ((\cnt_clk[10]~35\) # (GND)))
-- \cnt_clk[11]~37\ = CARRY((!\cnt_clk[10]~35\) # (!cnt_clk(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_clk(11),
	datad => VCC,
	cin => \cnt_clk[10]~35\,
	combout => \cnt_clk[11]~36_combout\,
	cout => \cnt_clk[11]~37\);

-- Location: FF_X76_Y32_N25
\cnt_clk[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \cnt_clk[11]~36_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_clk(11));

-- Location: FF_X76_Y32_N27
\cnt_clk[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \cnt_clk[12]~38_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	sclr => \clk_00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_clk(12));

-- Location: LCCOMB_X77_Y32_N14
\sig_00_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_00_clk~0_combout\ = (!\clk_00~0_combout\ & ((\sig_00_clk~q\) # ((!cnt_clk(12) & \Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_clk(12),
	datab => \Equal0~3_combout\,
	datac => \sig_00_clk~q\,
	datad => \clk_00~0_combout\,
	combout => \sig_00_clk~0_combout\);

-- Location: FF_X77_Y32_N15
sig_00_clk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_00_clk~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_00_clk~q\);

-- Location: LCCOMB_X77_Y32_N26
\sig_00_cut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_00_cut~0_combout\ = !\sig_00_clk~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sig_00_clk~q\,
	combout => \sig_00_cut~0_combout\);

-- Location: FF_X77_Y32_N27
sig_00_cut : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_00_cut~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_00_cut~q\);

-- Location: LCCOMB_X77_Y32_N16
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X77_Y32_N30
\sig_90_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_90_clk~0_combout\ = (cnt_clk(12) & ((\Equal0~4_combout\ & (!cnt_clk(13))) # (!\Equal0~4_combout\ & ((\sig_90_clk~q\))))) # (!cnt_clk(12) & (((\sig_90_clk~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_clk(12),
	datab => cnt_clk(13),
	datac => \sig_90_clk~q\,
	datad => \Equal0~4_combout\,
	combout => \sig_90_clk~0_combout\);

-- Location: FF_X77_Y32_N31
sig_90_clk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_90_clk~0_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_90_clk~q\);

-- Location: FF_X77_Y32_N17
sig_90_cut : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \sig_90_clk~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_90_cut~q\);

-- Location: FF_X77_Y32_N11
sig_90_cut_not : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \sig_90_cut~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_90_cut_not~q\);

-- Location: LCCOMB_X77_Y32_N0
\sig_ff_B~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_ff_B~0_combout\ = (\sig_00_clk~q\ & (!\sig_90_cut~q\ & \sig_90_cut_not~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sig_00_clk~q\,
	datac => \sig_90_cut~q\,
	datad => \sig_90_cut_not~q\,
	combout => \sig_ff_B~0_combout\);

-- Location: LCCOMB_X77_Y32_N8
\sig_ff_B~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_ff_B~1_combout\ = (\sig_ff_B~0_combout\ & (\bi_phase_filtered~input_o\)) # (!\sig_ff_B~0_combout\ & ((\sig_ff_B~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bi_phase_filtered~input_o\,
	datac => \sig_ff_B~q\,
	datad => \sig_ff_B~0_combout\,
	combout => \sig_ff_B~1_combout\);

-- Location: FF_X77_Y32_N9
sig_ff_B : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_ff_B~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_ff_B~q\);

-- Location: FF_X77_Y32_N3
sig_00_cut_not : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => \sig_00_cut~q\,
	clrn => \resetn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_00_cut_not~q\);

-- Location: LCCOMB_X77_Y32_N10
\sig_ff_A~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_ff_A~0_combout\ = (\sig_90_cut~q\ & (!\sig_00_clk~q\ & !\sig_90_cut_not~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_90_cut~q\,
	datab => \sig_00_clk~q\,
	datac => \sig_90_cut_not~q\,
	combout => \sig_ff_A~0_combout\);

-- Location: LCCOMB_X77_Y32_N6
\sig_ff_A~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_ff_A~1_combout\ = (\sig_ff_A~0_combout\ & (\bi_phase_filtered~input_o\)) # (!\sig_ff_A~0_combout\ & ((\sig_ff_A~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_ff_A~0_combout\,
	datab => \bi_phase_filtered~input_o\,
	datac => \sig_ff_A~q\,
	combout => \sig_ff_A~1_combout\);

-- Location: FF_X77_Y32_N7
sig_ff_A : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_ff_A~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_ff_A~q\);

-- Location: LCCOMB_X77_Y32_N2
\nrzl_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \nrzl_data~0_combout\ = (\sig_00_cut~q\ & (!\sig_00_cut_not~q\ & (\sig_ff_B~q\ $ (!\sig_ff_A~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_00_cut~q\,
	datab => \sig_ff_B~q\,
	datac => \sig_00_cut_not~q\,
	datad => \sig_ff_A~q\,
	combout => \nrzl_data~0_combout\);

-- Location: LCCOMB_X77_Y32_N12
\nrzl_data~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \nrzl_data~1_combout\ = (\nrzl_data~0_combout\) # ((\nrzl_data~reg0_q\ & ((\sig_00_cut_not~q\) # (!\sig_00_cut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_00_cut~q\,
	datab => \nrzl_data~0_combout\,
	datac => \nrzl_data~reg0_q\,
	datad => \sig_00_cut_not~q\,
	combout => \nrzl_data~1_combout\);

-- Location: FF_X77_Y32_N13
\nrzl_data~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \nrzl_data~1_combout\,
	clrn => \resetn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nrzl_data~reg0_q\);

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
END structure;


