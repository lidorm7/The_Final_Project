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

-- DATE "08/16/2023 13:21:20"

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

ENTITY 	BS_Filter IS
    PORT (
	resetn : IN std_logic;
	sysclk : IN std_logic;
	bi_pahse_out : IN std_logic;
	signal_out : BUFFER std_logic
	);
END BS_Filter;

-- Design Ports Information
-- signal_out	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bi_pahse_out	=>  Location: PIN_AB7,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- sysclk	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- resetn	=>  Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF BS_Filter IS
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
SIGNAL ww_bi_pahse_out : std_logic;
SIGNAL ww_signal_out : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \sysclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \signal_out~output_o\ : std_logic;
SIGNAL \sysclk~input_o\ : std_logic;
SIGNAL \sysclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \bi_pahse_out~input_o\ : std_logic;
SIGNAL \sig_filter[0]~feeder_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \sig_filter[2]~feeder_combout\ : std_logic;
SIGNAL \sig_filter[4]~feeder_combout\ : std_logic;
SIGNAL \sig_filter[5]~feeder_combout\ : std_logic;
SIGNAL \sig_filter[6]~feeder_combout\ : std_logic;
SIGNAL \sig_filter[7]~feeder_combout\ : std_logic;
SIGNAL \sig_check_6~0_combout\ : std_logic;
SIGNAL \sig_check_6~q\ : std_logic;
SIGNAL \sig_check_3~0_combout\ : std_logic;
SIGNAL \sig_check_3~q\ : std_logic;
SIGNAL \sig_check_2~0_combout\ : std_logic;
SIGNAL \sig_check_2~q\ : std_logic;
SIGNAL \sig_check_1~0_combout\ : std_logic;
SIGNAL \sig_check_1~q\ : std_logic;
SIGNAL \sig_check_0~0_combout\ : std_logic;
SIGNAL \sig_check_0~q\ : std_logic;
SIGNAL \main_check~0_combout\ : std_logic;
SIGNAL \sig_check_4~0_combout\ : std_logic;
SIGNAL \sig_check_4~q\ : std_logic;
SIGNAL \sig_check_5~0_combout\ : std_logic;
SIGNAL \sig_check_5~q\ : std_logic;
SIGNAL \main_check~1_combout\ : std_logic;
SIGNAL \sig_total_check~q\ : std_logic;
SIGNAL \signal_out~0_combout\ : std_logic;
SIGNAL \signal_out~reg0_q\ : std_logic;
SIGNAL sig_filter : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_resetn <= resetn;
ww_sysclk <= sysclk;
ww_bi_pahse_out <= bi_pahse_out;
signal_out <= ww_signal_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\sysclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sysclk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y44_N16
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

-- Location: IOOBUF_X51_Y0_N9
\signal_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \signal_out~reg0_q\,
	devoe => ww_devoe,
	o => \signal_out~output_o\);

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

-- Location: IOIBUF_X29_Y0_N1
\bi_pahse_out~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bi_pahse_out,
	o => \bi_pahse_out~input_o\);

-- Location: LCCOMB_X40_Y1_N4
\sig_filter[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_filter[0]~feeder_combout\ = \bi_pahse_out~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bi_pahse_out~input_o\,
	combout => \sig_filter[0]~feeder_combout\);

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

-- Location: FF_X40_Y1_N5
\sig_filter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_filter[0]~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_filter(0));

-- Location: FF_X40_Y1_N3
\sig_filter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_filter(0),
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_filter(1));

-- Location: LCCOMB_X40_Y1_N30
\sig_filter[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_filter[2]~feeder_combout\ = sig_filter(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_filter(1),
	combout => \sig_filter[2]~feeder_combout\);

-- Location: FF_X40_Y1_N31
\sig_filter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_filter[2]~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_filter(2));

-- Location: FF_X40_Y1_N17
\sig_filter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	asdata => sig_filter(2),
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_filter(3));

-- Location: LCCOMB_X40_Y1_N18
\sig_filter[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_filter[4]~feeder_combout\ = sig_filter(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_filter(3),
	combout => \sig_filter[4]~feeder_combout\);

-- Location: FF_X40_Y1_N19
\sig_filter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_filter[4]~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_filter(4));

-- Location: LCCOMB_X40_Y1_N12
\sig_filter[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_filter[5]~feeder_combout\ = sig_filter(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_filter(4),
	combout => \sig_filter[5]~feeder_combout\);

-- Location: FF_X40_Y1_N13
\sig_filter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_filter[5]~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_filter(5));

-- Location: LCCOMB_X40_Y1_N6
\sig_filter[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_filter[6]~feeder_combout\ = sig_filter(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_filter(5),
	combout => \sig_filter[6]~feeder_combout\);

-- Location: FF_X40_Y1_N7
\sig_filter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_filter[6]~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_filter(6));

-- Location: LCCOMB_X39_Y1_N10
\sig_filter[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_filter[7]~feeder_combout\ = sig_filter(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sig_filter(6),
	combout => \sig_filter[7]~feeder_combout\);

-- Location: FF_X39_Y1_N11
\sig_filter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_filter[7]~feeder_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sig_filter(7));

-- Location: LCCOMB_X39_Y1_N8
\sig_check_6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_check_6~0_combout\ = sig_filter(7) $ (!sig_filter(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_filter(7),
	datad => sig_filter(6),
	combout => \sig_check_6~0_combout\);

-- Location: FF_X39_Y1_N9
sig_check_6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_check_6~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_check_6~q\);

-- Location: LCCOMB_X40_Y1_N26
\sig_check_3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_check_3~0_combout\ = sig_filter(3) $ (!sig_filter(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_filter(3),
	datad => sig_filter(4),
	combout => \sig_check_3~0_combout\);

-- Location: FF_X40_Y1_N27
sig_check_3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_check_3~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_check_3~q\);

-- Location: LCCOMB_X40_Y1_N8
\sig_check_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_check_2~0_combout\ = sig_filter(2) $ (!sig_filter(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sig_filter(2),
	datad => sig_filter(3),
	combout => \sig_check_2~0_combout\);

-- Location: FF_X40_Y1_N9
sig_check_2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_check_2~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_check_2~q\);

-- Location: LCCOMB_X40_Y1_N22
\sig_check_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_check_1~0_combout\ = sig_filter(2) $ (!sig_filter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sig_filter(2),
	datad => sig_filter(1),
	combout => \sig_check_1~0_combout\);

-- Location: FF_X40_Y1_N23
sig_check_1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_check_1~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_check_1~q\);

-- Location: LCCOMB_X40_Y1_N28
\sig_check_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_check_0~0_combout\ = sig_filter(0) $ (!sig_filter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sig_filter(0),
	datad => sig_filter(1),
	combout => \sig_check_0~0_combout\);

-- Location: FF_X40_Y1_N29
sig_check_0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_check_0~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_check_0~q\);

-- Location: LCCOMB_X40_Y1_N20
\main_check~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \main_check~0_combout\ = (((!\sig_check_0~q\) # (!\sig_check_1~q\)) # (!\sig_check_2~q\)) # (!\sig_check_3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_check_3~q\,
	datab => \sig_check_2~q\,
	datac => \sig_check_1~q\,
	datad => \sig_check_0~q\,
	combout => \main_check~0_combout\);

-- Location: LCCOMB_X40_Y1_N14
\sig_check_4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_check_4~0_combout\ = sig_filter(4) $ (!sig_filter(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sig_filter(4),
	datad => sig_filter(5),
	combout => \sig_check_4~0_combout\);

-- Location: FF_X40_Y1_N15
sig_check_4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_check_4~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_check_4~q\);

-- Location: LCCOMB_X40_Y1_N24
\sig_check_5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sig_check_5~0_combout\ = sig_filter(5) $ (!sig_filter(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sig_filter(5),
	datad => sig_filter(6),
	combout => \sig_check_5~0_combout\);

-- Location: FF_X40_Y1_N25
sig_check_5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \sig_check_5~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_check_5~q\);

-- Location: LCCOMB_X40_Y1_N10
\main_check~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \main_check~1_combout\ = (\sig_check_6~q\ & (!\main_check~0_combout\ & (\sig_check_4~q\ & \sig_check_5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sig_check_6~q\,
	datab => \main_check~0_combout\,
	datac => \sig_check_4~q\,
	datad => \sig_check_5~q\,
	combout => \main_check~1_combout\);

-- Location: FF_X40_Y1_N11
sig_total_check : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \main_check~1_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sig_total_check~q\);

-- Location: LCCOMB_X40_Y1_N0
\signal_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \signal_out~0_combout\ = (\sig_total_check~q\ & (\bi_pahse_out~input_o\)) # (!\sig_total_check~q\ & ((\signal_out~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bi_pahse_out~input_o\,
	datac => \signal_out~reg0_q\,
	datad => \sig_total_check~q\,
	combout => \signal_out~0_combout\);

-- Location: FF_X40_Y1_N1
\signal_out~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \signal_out~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \signal_out~reg0_q\);

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

ww_signal_out <= \signal_out~output_o\;
END structure;


